import 'package:flutter/material.dart';
import 'package:flutter_app/models/webtoon.dart';
import 'package:flutter_app/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final WebtoonModel webtoonModel;

  const Webtoon({super.key, required this.webtoonModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(webtoonModel: webtoonModel),
            ));
      },
      child: Column(children: [
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
        SizedBox(
          height: 10,
        ),
        Text(
          webtoonModel.title,
          style: const TextStyle(fontSize: 22),
        )
      ]),
    );
  }
}
