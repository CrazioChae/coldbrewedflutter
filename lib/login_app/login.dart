import 'package:flutter/material.dart';
import 'package:flutter_app/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: buildButton(),
    );
  }

  Widget buildButton() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/glogo.png',
                  width: 50,
                  height: 50,
                ),
                Text(
                  'Login with Google',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(
                    'images/glogo.png',
                    width: 50,
                    height: 50,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MyButton(
            button_image: Image.asset('images/glogo.png'),
            button_text: Text(
              'Login with Google',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            ),
            button_color: Colors.white,
            button_radius: 4,
            button_onPressed: () {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/flogo.png',
                  width: 50,
                  height: 50,
                ),
                Text(
                  'Login with Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(
                    'images/flogo.png',
                    width: 50,
                    height: 50,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.email,
                  size: 35,
                  color: Colors.white,
                ),
                Text(
                  'Login with Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(
                    'images/glogo.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
