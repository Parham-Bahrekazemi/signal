import 'package:flutter/material.dart';
import 'custom_widget/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Widget> blogWidget = <Widget>[
    getBlogPost(
      imgName: 'a.png',
      content: 'سیگنال خرید : AlchemyPay برای 18 آبان ',
      contentBuy: 'خرید روی : 18,230',
      contentSell: 'فروش روی : 18,890',
    ),
    getBlogPost(
      imgName: 'c.png',
      content: 'سیگنال خرید : Cosmos برای 18 آبان ',
      contentBuy: 'خرید روی : 18,230',
      contentSell: 'فروش روی : 18,890',
    ),
    getBlogPost(
      imgName: 'r.png',
      content: 'سیگنال خرید : Ripple برای 18 آبان ',
      contentBuy: 'خرید روی : 18,230',
      contentSell: 'فروش روی : 18,890',
    ),
    getBlogPost(
      imgName: 's.png',
      content: 'سیگنال خرید : SafeMoon برای 18 آبان ',
      contentBuy: 'خرید روی : 18,230',
      contentSell: 'فروش روی : 18,890',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'vip اخبار و سیگنال های ',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ...blogWidget,
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: const Text(
                    'خروج از حساب',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
