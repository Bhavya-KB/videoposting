import 'package:application/videos/view/video_list.dart';
import 'package:flutter/material.dart';




class VideoTile extends StatelessWidget {
  final String img;
  final String name;
  final String videoimg;

  const VideoTile({
    super.key,
    required this.img,
    required this.name,
    required this.videoimg,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => video_list(
                          name: name,
                          img: img,
                         videoimg: videoimg,
                        )))),
            leading: img != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          data.Videolist.values.elementAt(index).elementAt(0)),
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(
                      right: 8.0,
                    ),
                    child: Icon(Icons.account_circle,
                        size: 30, color: Colors.grey),
                  ),
            minVerticalPadding: 0,
            horizontalTitleGap: 5,
            trailing: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            title: Text(
              data.Videolist.values.elementAt(index).elementAt(1),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}



