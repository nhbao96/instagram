import 'package:flutter/material.dart';
import 'package:instagram/common/bases/base_widget.dart';
import 'package:instagram/components/avatar_widget.dart';
import 'package:instagram/components/image_post_widget.dart';

import '../../data/models/image_post_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Image.asset(
                            "assets/images/camera-icon.png",
                            width: 24,
                          ),
                          flex: 1),
                      Expanded(
                        child: Container(),
                        flex: 3,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/igtv-icon.png",
                                width: 24),
                            Image.asset("assets/images/message-icon.png",
                                width: 24)
                          ],
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  Center(
                    child: Image.asset("assets/images/instagram-logo.png",
                        width: 105, alignment: Alignment.center),
                  )
                ],
              ),
            )
          ],
        ),
        child: _HomeContainer(),
        providers: []);
  }
}

class _HomeContainer extends StatefulWidget {
  const _HomeContainer({Key? key}) : super(key: key);

  @override
  State<_HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<_HomeContainer> {
  late ImagePostModel imagePostModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagePostModel = ImagePostModel(
        name: "hoangbao_",
        avatarImg: "assets/images/account-img-test2.png",
        address: "district 7",
        images: [
          "assets/images/account-img-test.png",
          "assets/images/account-img-test2.png",
          "assets/images/account-img-test3.png",
          "assets/images/account-img-test4.png"
        ],
        favoImg: "assets/images/account-img-test3.png",
        favoDescription: "lorem ipsum.....",
         caption: "joshua_l The game in Japan was amazing and I want to share some photos");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
              constraints: BoxConstraints(minHeight: 80, maxHeight: 100),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AvatarWidget(
                      "assets/images/account-img-test.png", "baonh1", 62, 81),
                  AvatarWidget("assets/images/account-img-test2.png",
                      "baonh2", 62, 81),
                  AvatarWidget("assets/images/account-img-test3.png",
                      "baonh3", 62, 81),
                  AvatarWidget("assets/images/account-img-test4.png",
                      "baonh4", 62, 81),
                  AvatarWidget("assets/images/account-img-test5.png",
                      "baonh5", 62, 81),
                  AvatarWidget(
                      "assets/images/account-img-test.png", "baonh6", 62, 81),
                  AvatarWidget("assets/images/account-img-test2.png",
                      "baonh7", 62, 81),
                ],
              ),
            ),
            Flexible(
                child: Container(
                  constraints: BoxConstraints(minHeight: 350, maxHeight: 400),
              child: ImagePostWidget(context, imagePostModel),
            )),
          ],
        )
      ],
    ));
  }
}
