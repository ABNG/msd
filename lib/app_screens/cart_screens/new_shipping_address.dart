import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_msd_app/constants/constant.dart';
import 'package:flutter_msd_app/reusable_widget/reusable_appbar.dart';
import 'package:flutter_msd_app/reusable_widget/reusable_material_button.dart';
import 'package:flutter_msd_app/utils/SizeConfig.dart';

class ShippingAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ReusableAppBar(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Add a Shipping Address",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 22.0,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ReusableColumn(
                    title: "ADDRESS LINE 1",
                  ),
                  ReusableColumn(
                    title: "CITY / TOWN",
                  ),
                  ReusableColumn(
                    title: "CONTACT NUMBER",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ADDRESS LABEL",
                        style: gridStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      ReusableContainer(
                        icon: Icons.home,
                        iconColor: Colors.black,
                        title: "HOME",
                        titleColor: Colors.black,
                        showDecoration: 2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ReusableContainer(
                        icon: Icons.work,
                        iconColor: Colors.white,
                        title: "WORK",
                        titleColor: Colors.white,
                        showDecoration: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.05),
              child: ReusableMaterialButton(
                title: "SAVE ADDRESS",
                pressMe: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableColumn extends StatelessWidget {
  final String title;

  ReusableColumn({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: textStyle.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300],
                blurRadius: 2,
                spreadRadius: 3,
              )
            ],
          ),
          child: TextField(
            cursorColor: Colors.grey[300],
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class ReusableContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final Color titleColor;
  final int showDecoration;

  ReusableContainer(
      {this.icon,
      this.iconColor,
      this.title,
      this.titleColor,
      this.showDecoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: SizeConfig.screenHeight * 0.05,
      decoration: showDecoration == 2 ? kBoxDecoration2 : kBoxDecoration3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
