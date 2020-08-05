import 'package:flutter/material.dart';
import 'package:flutter_msd_app/app_screens/SignUp_Screen.dart';
import 'package:flutter_msd_app/app_screens/tab_screen.dart';
import 'package:flutter_msd_app/reusable_widget/reusable_textfield.dart';
import 'package:flutter_msd_app/utils/SizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/main_image.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: SizeConfig.screenHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FlutterLogo(
                  size: 120.0,
                ),
                ReusableTextField(
                  text: "E-MAIL",
                  icon: Icons.person_outline,
                  main: true,
                  isLogin: true,
                ),
                ReusableTextField(
                  text: "PASSWORD",
                  icon: Icons.lock_open,
                  main: true,
                  isLogin: true,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.03),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: OutlineButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignUpScreen(),
                              )),
                          highlightedBorderColor: Colors.black,
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 4.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: RaisedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      TabScreen())),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Text(
                  "Or Login With",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.03,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton.icon(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          icon: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red.shade600,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.shade600,
                                    blurRadius: 0.5,
                                    spreadRadius: 2,
                                  )
                                ]),
                            child: Icon(
                              FontAwesomeIcons.googlePlusG,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                          label: Text(
                            "SIGN IN WITH GMAIL",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.redAccent,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: RaisedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.apple,
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          label: Text(
                            "SIGN IN WITH APPLE",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
