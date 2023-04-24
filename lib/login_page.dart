import 'package:flutter/material.dart';
import 'blog_page.dart';
import 'reset_password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // void _navigateToBlogPage(BuildContext context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (BuildContext context) => const BlogScreen(),
  //     ),
  //   );
  // }

  // void _navigateToResetPassword(BuildContext context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //         builder: (BuildContext context) => const ResetPassword()),
  //   );
  // }

  void _navigateToAnyPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'ورود به اپلیکیشن سیگنال vip',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage('assets/images/w.png'),
                ),
                OutlinedButton(
                  onPressed: () {
                    _navigateToAnyPage(context, BlogScreen());
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    minimumSize: const Size(200, 40),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(200, 43),
                  ),
                  onPressed: () {},
                  child: const Text('ثبت نام'),
                ),
                TextButton(
                  onPressed: () {
                    _navigateToAnyPage(
                      context,
                      const ResetPassword(),
                    );
                  },
                  child: const Text(
                    'فراموشی رمز عبور',
                    style: TextStyle(color: Colors.grey),
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
