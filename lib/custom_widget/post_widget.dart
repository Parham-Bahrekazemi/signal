import 'package:flutter/material.dart';

Widget getBlogPost({
  required String imgName,
  required String content,
  required String contentBuy,
  required String contentSell,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          child: Image(
            image: AssetImage('assets/images/$imgName'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          content,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              contentSell,
              textDirection: TextDirection.rtl,
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.sell, color: Colors.red),
            const SizedBox(
              width: 20,
            ),
            Text(
              contentBuy,
              textDirection: TextDirection.rtl,
              style: const TextStyle(color: Colors.green),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.paid,
              // size: 25,
              color: Colors.green,
            ),
          ],
        ),
        const SizedBox(
          width: 200,
          child: Divider(
            thickness: 1,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
