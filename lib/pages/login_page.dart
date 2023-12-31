import 'package:abc_project/palatte.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'Pondit',
                      style: kHeading,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.maxFinite,
                  height: 530,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/img.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: Icons.email,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: Icons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                'Forgot Password?',
                                style: kBodyText,
                                //textAlign: TextAlign.right,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                RoundedButton(buttonText: 'Login'),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.white, width: 1))),
                                  child: Text('Create New Account', style: kBodyText),
                                ),
                                SizedBox(
                                  height: 50,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),


                )

              ],
            ),
          ),
        ),
      )
    ]);
  }
}
