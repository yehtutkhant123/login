import 'package:flutter/material.dart';
import 'package:login/button/buttons.dart';
import 'package:login/titlebar/titlebar.dart';

class Mainframe extends StatelessWidget {
  const Mainframe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Examples',
      home: Scaffold(
          body: Column(
        children: <Widget>[
          Section(
            components: <Widget>[
              Titlebar(
                title: 'Carify',
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Events made easy for charities.",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlineButtonComponent(
                    onPressed: () {},
                    child: Text(
                      'Login with Google',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 25,
                        fontFamily: "Poppins",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    bgColor: Colors.grey[300],
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    outlineHeight: 1,
                    outlineColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlineButtonComponent(
                    onPressed: () {},
                    child: Text(
                      'Login with Facebook',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 25,
                        fontFamily: "Poppins",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    bgColor: Colors.blue[500],
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    outlineHeight: 1,
                    outlineColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: Text(
                    "copyright 2019",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<Widget> components;
  const Section({Key key, this.title, this.components}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title ?? "",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ...components,
          ],
        ),
      ),
    );
  }
}
