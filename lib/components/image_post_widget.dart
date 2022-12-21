import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import '../data/models/image_post_model.dart';

Widget ImagePostWidget(BuildContext context, ImagePostModel model) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 32,
            height: 32,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(model.avatarImg), fit: BoxFit.fill)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(model.address, style: TextStyle(fontSize: 14))
            ],
          )
        ],
      ),
      CarouselSlider(
        items: model.images
            .map(
              (p) => Image.asset(
                p,
                width: MediaQuery.of(context).size.width,
                height: 375,
                fit: BoxFit.cover,
              ),
            )
            .toList(),
        options: CarouselOptions(
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          initialPage: 0,
          onPageChanged: (index, reason) {},
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/save-icon.png",
                  width: 23,
                ),
                Image.asset("assets/images/like-icon.png", width: 23),
                Image.asset("assets/images/message-icon.png", width: 23)
              ],
            ),
            flex: 1,
          ),
          Flexible(child: Image.asset("assets/images/save-icon.png"), flex: 2)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 17,
            height: 17,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(model.favoImg), fit: BoxFit.fill)),
          ),
          Text(model.favoDescription, style: TextStyle(fontSize: 13,color: CupertinoColors.black),)
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(model.name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
          ),
          Container(
              width: MediaQuery.of(context).size.width*0.7,
              child: Text(model.caption, style: TextStyle(fontSize: 13),maxLines: 5, overflow: TextOverflow.ellipsis))
        ],
      )
    ],
  );
}
