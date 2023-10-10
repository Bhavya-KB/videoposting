import 'package:flutter/material.dart';

// video_data.dart
class Video {
  final String img;
  final String title;
  final String description;
  final String videoUrl;

  Video({
    required this.img,
    required this.title,
    required this.description,
    required this.videoUrl,
  });
}

List<Video> sampleVideos = [
  Video(
    img: "assets/bunny.jpg",
    title: "Big Buck Bunny",
    description: "Description for Video 1",
    videoUrl:
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  ),
  Video(
    img: "assets/Elephants_Dream.jpg",
    title: "Elephant Dream",
    description: "Description for Video 2",
    videoUrl:
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  ),
  Video(
    img: "assets/tearsofsteel.jpg",
    title: "Tears of Steel",
    description: "Description for Video 3",
    videoUrl:
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  ),
  
];
