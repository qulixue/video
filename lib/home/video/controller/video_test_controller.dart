import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../entry/video_entry.dart';

class VideoTestController extends GetxController {
  late VideoEntry data;

  ///视频链接
  var url = '';

  ///视频控制器
  late VideoPlayerController videoPlayerController;

  ///字幕
  var subtitlesTop = ''.obs;

  ///字幕
  var subtitlesBottom = ''.obs;

  var sListTop = <Lines>[];
  var sListBottom = <Lines>[];

  ///当前时间
  late Duration _position;

  ///当前展示的字幕index
  int index = 0;

  @override
  void onInit() {
    data = VideoEntry.fromJson(json);
    url = data.video!.url!;

    ///英文字母
    sListTop = data.subtitles![0].lines!;

    ///中文字幕
    sListBottom = data.subtitles![1].lines!;

    videoPlayerController = VideoPlayerController.network(url)

      ///循环播放
      ..setLooping(true)
      ..addListener(() {
        ///获取当前播放时间，和数据中的字幕展示时间做比对，控制字幕
        _position = videoPlayerController.value.position;
        if (sListTop[index].startMilli! <= _position.inMilliseconds &&
            sListTop[index].endMilli! >= _position.inMilliseconds) {
          subtitlesTop.value = sListTop[index].words!;
          subtitlesBottom.value = sListBottom[index].words!;
        } else {
          subtitlesTop.value = '';
          subtitlesBottom.value = '';
        }

        if (_position.inMilliseconds >
            sListTop[sListTop.length - 1].endMilli!) {
          index = 0;
        } else if (_position.inMilliseconds > sListTop[index].endMilli!) {
          index++;
        }
      })
      ..initialize().then((value) {
        ///初始化之后，自动播放
        videoPlayerController.play();
      });
    super.onInit();
  }

  ///原始数据
  static var json = {
    "id": 2067454986108947,
    "text": null,
    "type": 1,
    "typeString": "短视频",
    "status": 4,
    "statusString": "正常显示",
    "video": {
      "id": 2067454986108948,
      "url": "https://cdn.100935.com/video/oztXqE.mp4",
      "fileName": "oztXqE.mp4",
      "width": 1440,
      "height": 1080,
      "langString": "English",
      "langType": 2
    },
    "subtitles": [
      {
        "id": 2067454986108949,
        "vttUrl": "https://cdn.100935.com/sub/RpESEtzTYh.vtt",
        "url": "https://cdn.100935.com/sub/TjDyvWei_en.srt",
        "langString": "English",
        "langType": 2,
        "fileName": "TjDyvWei_en.srt",
        "vttFileName": "RpESEtzTYh.vtt",
        "lines": [
          {
            "id": 2067454986108954,
            "words":
                "Five seven, well ok five six and a half is not enough to teach happiness?",
            "position": 1,
            "startString": "00:00:02,000",
            "endString": "00:00:07,220",
            "startMilli": 2000,
            "endMilli": 7220,
            "status": 4,
            "statusString": "未知",
            "langType": 2,
            "langString": "English",
            "createTime": "2023-05-29 15:43:54"
          },
          {
            "id": 2067454986108955,
            "words": "Just not enough.",
            "position": 2,
            "startString": "00:00:11,320",
            "endString": "00:00:12,660",
            "startMilli": 11320,
            "endMilli": 12660,
            "status": 4,
            "statusString": "未知",
            "langType": 2,
            "langString": "English",
            "createTime": "2023-05-29 15:43:54"
          },
          {
            "id": 2067454986108956,
            "words": "because we have got enough people on the panel today",
            "position": 3,
            "startString": "00:00:16,800",
            "endString": "00:00:19,780",
            "startMilli": 16800,
            "endMilli": 19780,
            "status": 4,
            "statusString": "未知",
            "langType": 2,
            "langString": "English",
            "createTime": "2023-05-29 15:43:54"
          }
        ]
      },
      {
        "id": 2067454986108950,
        "vttUrl": "https://cdn.100935.com/sub/gAAMeYcuIj.vtt",
        "url": "https://cdn.100935.com/sub/laVRpUQ2_zh.srt",
        "langString": "简体中文",
        "langType": 1,
        "fileName": "laVRpUQ2_zh.srt",
        "vttFileName": "gAAMeYcuIj.vtt",
        "lines": [
          {
            "id": 2067454986108951,
            "words": "1米70...是1米69不够格传授快乐吗",
            "position": 1,
            "startString": "00:00:02,000",
            "endString": "00:00:07,220",
            "startMilli": 2000,
            "endMilli": 7220,
            "status": 4,
            "statusString": "未知",
            "langType": 1,
            "langString": "简体中文",
            "createTime": "2023-05-29 15:43:54"
          },
          {
            "id": 2067454986108952,
            "words": "并不够",
            "position": 2,
            "startString": "00:00:11,320",
            "endString": "00:00:12,660",
            "startMilli": 11320,
            "endMilli": 12660,
            "status": 4,
            "statusString": "未知",
            "langType": 1,
            "langString": "简体中文",
            "createTime": "2023-05-29 15:43:54"
          },
          {
            "id": 2067454986108953,
            "words": "因为今天我们来了足够多的人",
            "position": 3,
            "startString": "00:00:16,800",
            "endString": "00:00:19,780",
            "startMilli": 16800,
            "endMilli": 19780,
            "status": 4,
            "statusString": "未知",
            "langType": 1,
            "langString": "简体中文",
            "createTime": "2023-05-29 15:43:54"
          }
        ]
      }
    ],
    "words": [
      {
        "id": 3107488299355964,
        "statusString": "正常显示",
        "status": 4,
        "wordsStr": "enough",
        "chineseExplain": "n. 充足, 够, 很多\na. 充足的, 足够\nadv. 足够\ninterj. 够了",
        "shortChineseExplain": "足够的；足够地",
        "type": 1,
        "typeString": "单词",
        "pos": "r:70/d:30",
        "phonetic": "i'nʌf",
        "langType": 2,
        "langString": "English",
        "lemmaId": 3107488299355964,
        "createTime": "2023-05-01 18:11:03",
        "classCount": 0
      }
    ],
    "highlightWords": [
      {
        "word": "enough",
        "subWords": ["enough", "enoughs"]
      }
    ],
    "social": {"liked": false, "likeCount": 0},
    "langType": 2,
    "langString": "English",
    "createTime": "2023-05-29 15:43:54",
    "updateTime": "2023-05-29 15:43:54",
    "user": {
      "name": "卧蚕阿姨",
      "smallAvatar":
          "https://cdn.100935.com/img/UwcpRanN.jpg?image_process=resize,fill,l_360",
      "mediumAvatar":
          "https://cdn.100935.com/img/UwcpRanN.jpg?image_process=resize,fill,l_1080",
      "avatar": "https://cdn.100935.com/img/UwcpRanN.jpg",
      "id": 1225244111299026
    }
  };
}
