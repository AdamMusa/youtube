import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_helper.dart';


void main() => runApp(
  GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: HomeHelper()
  )
);

