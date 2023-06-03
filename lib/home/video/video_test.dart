import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

import '../../common/common.dart';
import 'controller/video_test_controller.dart';

class VideoPlayerWithSubtitle extends StatefulWidget {
  const VideoPlayerWithSubtitle({super.key});

  @override
  _VideoPlayerWithSubtitleState1 createState() =>
      _VideoPlayerWithSubtitleState1();
}

class _VideoPlayerWithSubtitleState1 extends State<VideoPlayerWithSubtitle> {
  final VideoTestController _controller = Get.put(VideoTestController());
  GlobalKey key = GlobalKey();

  ///视频组件的高度
  var height;

  var imgHeight = 0.0;

  @override
  void initState() {
    super.initState();

    ///根据后台数据算出视频组件的高度
    height = Get.width *
        _controller.data.video!.height! /
        _controller.data.video!.width!;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var renderBox = key.currentContext!.findRenderObject() as RenderBox;
      imgHeight = renderBox.size.height;
      setState(() {});
    });
  }

  @override
  void dispose() {
    ///销毁处理
    _controller.videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: AnnotatedRegion(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: [
              ///顶部图片
              _topImg(),

              ///顶部文字
              _topText(),

              ///播放器
              _video(),

              ///字幕和底部按钮
              _text(),

              ///底部图片
              _bottom(),
            ],
          ),
        ));
  }

  ///顶部图片
  Widget _topImg() => Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Image.asset(
            'assets/images/top.png',
            width: Get.width,
            key: key,
          ),
        ),
      );

  ///顶部文字
  Widget _topText() => Positioned(
        bottom: Get.height / 2 + height / 2,
        child: Container(
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          width: Get.width,
          height: Get.height / 2 - height / 2 - imgHeight,
          child: FittedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 45),

                ///渐变色特殊字体单词
                Text(
                  '${_controller.data.words![0].wordsStr}',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                                colors: [
                                  CommonColor.colorPurpleStart,
                                  CommonColor.colorPurpleEnd,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.5, 0.8])
                            .createShader(const Rect.fromLTWH(0, 0, 100, 0))),
                ),

                ///读音
                Text('/ ${_controller.data.words![0].phonetic} /',
                    style: CommonTextStyle.greyW500S20),
                const SizedBox(height: 5),

                ///单词具体含义
                Text('${_controller.data.words![0].chineseExplain}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: CommonColor.colorHintText, fontSize: 14)),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      );

  ///播放器
  Widget _video() => Align(
        alignment: Alignment.center,
        child: Container(
          width: Get.width,
          height: height,
          color: Colors.black,
          child: Stack(
            children: [
              VideoPlayer(_controller.videoPlayerController),

              ///头像
              Positioned(
                top: 40,
                right: 10,
                child: ClipOval(
                  child: Image.network(
                    _controller.data.user!.smallAvatar!,
                    width: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      );

  ///字幕和底部按钮
  Widget _text() => Positioned(
        top: height / 2 + Get.height / 2 + 15,
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          width: Get.width,
          // height: Get.height / 2 - height / 2 - imgHeight,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ///英文字幕
              Obx(() {
                ///按照空格拆分成单词进行处理
                List<String> list = _controller.subtitlesTop.value
                    .trim()
                    .split(' ')
                    .where((element) {
                  return element.isNotEmpty;
                }).toList();
                List<TextSpan> span = [];
                for (int i = 0; i < list.length; i++) {
                  if (list[i] ==
                          _controller.data.highlightWords![0].subWords![0] ||
                      list[i] ==
                          _controller.data.highlightWords![0].subWords![1]) {
                    span.add(TextSpan(
                        text: '${list[i]} ',
                        style: const TextStyle(
                            color: Color(0xff7231EB),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)));
                  } else {
                    ///判断是否有标点
                    if (isPunctuation(list[i])) {
                      ///判断含有高亮单词，并且多了一个标点
                      if ((list[i].contains(_controller
                                  .data.highlightWords![0].subWords![0]) &&
                              list[i].length - 1 ==
                                  _controller.data.highlightWords![0]
                                      .subWords![0].length) ||
                          (list[i].contains(_controller
                                  .data.highlightWords![0].subWords![1]) &&
                              list[i].length - 1 ==
                                  _controller.data.highlightWords![0]
                                      .subWords![1].length)) {
                        span.add(TextSpan(
                            text: list[i].substring(0, list[i].length - 2),
                            style: CommonTextStyle.purpleW500S20));
                        span.add(_item(list[i].substring(list[i].length - 1)));
                      } else {
                        span.add(_item('${list[i]} '));
                      }
                    } else {
                      span.add(_item('${list[i]} '));
                    }
                  }
                }
                return Text.rich(
                  TextSpan(children: span),
                  textAlign: TextAlign.center,
                );
              }),

              ///汉语字幕
              Obx(() {
                return Text(_controller.subtitlesBottom.value,
                    textAlign: TextAlign.center,
                    style: CommonTextStyle.greyW500S20);
              }),
            ],
          ),
        ),
      );

  ///底部图片
  Widget _bottom() => Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Image.asset(
            'assets/images/bottom.png',
            width: Get.width,
          ),
        ),
      );

  ///判断是否有标点
  bool isPunctuation(String character) {
    var regex = RegExp(r'[^\w\s]'); // 匹配非单词字符和空格
    return regex.hasMatch(character);
  }

  ///富文本的item提取
  TextSpan _item(String s) {
    return TextSpan(text: s, style: CommonTextStyle.greyW500S20);
  }
}
