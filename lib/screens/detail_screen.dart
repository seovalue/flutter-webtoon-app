import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/webtoon.dart';

class DetailScreen extends StatelessWidget {
  final WebtoonModel webtoonModel;

  const DetailScreen({super.key, required this.webtoonModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          webtoonModel.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 2, // shadow
      ),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: webtoonModel.id,
              child: Container(
                width: 250,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        offset: Offset(10, 10),
                        color: Colors.black.withOpacity(.5))
                  ],
                ),
                child: Image.network(webtoonModel.thumb),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
