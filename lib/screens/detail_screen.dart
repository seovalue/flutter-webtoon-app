import 'package:flutter/material.dart';
import 'package:flutter_app/models/webtoon.dart';
import 'package:flutter_app/models/webtoon_detail_model.dart';
import 'package:flutter_app/models/webtoon_episode_model.dart';
import 'package:flutter_app/services/api_service.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/episode_widget.dart';

class DetailScreen extends StatefulWidget {
  final WebtoonModel webtoonModel;

  const DetailScreen({super.key, required this.webtoonModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> webtoonEpisodes;

  @override
  void initState() {
    super.initState();
    // initialize 한 이후에는 접근할 수 있다.
    webtoon = ApiService().getToonById(widget.webtoonModel.id);
    webtoonEpisodes =
        ApiService().getLatestEpisodesById(widget.webtoonModel.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.webtoonModel.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 2, // shadow
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: widget.webtoonModel.id,
                  child: Container(
                    width: 250,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(.5)),
                      ],
                    ),
                    child: Image.network(widget.webtoonModel.thumb),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            FutureBuilder(
              future: webtoon,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.data!.about,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('${snapshot.data!.genre} / ${snapshot.data!.age}')
                    ],
                  );
                }
                return const Text('...');
              },
            ),
            const SizedBox(
              height: 15,
            ),
            FutureBuilder(
                future: webtoonEpisodes,
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    // episodes가 있을 때
                    return Column(
                      children: [
                        for (var ep in snapshot.data!)
                          Episode(webtoonId: widget.webtoonModel.id, ep: ep)
                      ],
                    );
                  }
                  return Container();
                }))
          ]),
        ),
      ),
    );
  }
}
