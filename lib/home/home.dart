import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_6_2/routes/routes.dart';

import 'video/controller/video_test_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetConnect connect = GetConnect();
  @override
  void initState() {

    ///初始化iOS端的网络权限
    connect.get('https://www.baidu.com/');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.toNamed(Routes.video);
          },
          child: const Text('video笔试题'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    connect.dispose();
    super.dispose();
  }
}

