import 'package:flutter/material.dart';
import 'package:flutter_test_app/config/app_icons.dart';
import 'package:flutter_test_app/config/app_routes.dart';
import 'package:flutter_test_app/config/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    AppStrings.helloWelcome,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    AppStrings.loginToContinue,
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppStrings.username,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(.5),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(.5),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        print('Clicked');
                      },
                      child: Text(AppStrings.forgotPassword),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                      },
                      child: Text(AppStrings.login),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Text(
                    AppStrings.orSignInWith,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Google is clicked');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.icGoogle,
                            width: 22,
                            height: 22,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(AppStrings.loginWithGoogle),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Facebook is clicked');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.icFacebook,
                            width: 22,
                            height: 22,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(AppStrings.loginWithFacebook),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        AppStrings.dontHaveAccount,
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,
                        ),
                        child: Text(
                          AppStrings.signup,
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
