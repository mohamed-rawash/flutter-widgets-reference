import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePik extends StatefulWidget {
  const ImagePik({Key? key}) : super(key: key);

  @override
  _ImagePikState createState() => _ImagePikState();
}

class _ImagePikState extends State<ImagePik> {

  final ImagePicker _picker = ImagePicker();
  File? file;
  List<XFile>? multiImage ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image And Video Piker")
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: () async {

              final imgPiked = await _picker.pickImage(source: ImageSource.camera);
              if(imgPiked != null) {
                file = File(imgPiked.path);
              } else {
                if (kDebugMode) {
                  print("Image Is Not Exist");
                }
              }
            }, child: const Text("Chose From Camera"),),
            ElevatedButton(onPressed: () async{
              final imgPiked = await _picker.pickImage(source: ImageSource.gallery);
              if(imgPiked != null) {
                file = File(imgPiked.path);
              } else {
                if (kDebugMode) {
                  print("Image Is Not Exist");
                }
              }
            }, child: const Text("Chose From Gallery"),),
            ElevatedButton(onPressed: () async {
              final imgPiked = await _picker.pickVideo(source: ImageSource.camera);
              if(imgPiked != null) {
                file = File(imgPiked.path);
              } else {
                if (kDebugMode) {
                  print("Image Is Not Exist");
                }
              }
            }, child: const Text("Chose Video From Camera"),),
            ElevatedButton(onPressed: ()async{
              final imgPiked = await _picker.pickVideo(source: ImageSource.gallery);
              if(imgPiked != null) {
                file = File(imgPiked.path);
              } else {
                if (kDebugMode) {
                  print("Image Is Not Exist");
                }
              }
            }, child: const Text("Chose Video From Gallery"),),
            ElevatedButton(onPressed: ()async{
              multiImage = await _picker.pickMultiImage();
            }, child: const Text("Chose Multi Image From Gallery"),),
          ],
        ),
      ),
    );
  }
}
