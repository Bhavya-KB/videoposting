//old //

// import 'package:flutter/material.dart';

// import 'package:application/videos/model/video_tile.dart';
// import 'package:application/controller/videodatas.dart';

// Data data = Data();

// class video_list extends StatefulWidget {
//   const video_list({
//     super.key,
//   });

//   @override
//   State<video_list> createState() => _video_listState();
// }

// class _video_listState extends State<video_list> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(

//             // decoration: BoxDecoration(
//             //   gradient: LinearGradient(
//             //     begin: Alignment.topLeft,
//             //     end: Alignment.bottomRight,
//             //     stops: [
//             //       0.3,
//             //       0.2,
//             //       // 0.8,
//             //     ],
//             //     colors: [
//             //       Color.fromARGB(255, 216, 125, 7),
//             //       Color.fromARGB(255, 14, 13, 17),
//             //       // Colors.yellow,
//             //     ],
//             //   ),
//             // ),
//             // child: Container(
//             //   child: Column(children: [
//             //     SizedBox(height: MediaQuery.of(context).size.height * 0.01),

//             // decoration: BoxDecoration(
//             //     shape: BoxShape.rectangle, color: Colors.orange),
//             // child: TextField(
//             //   decoration: InputDecoration(
//             //     focusedBorder: OutlineInputBorder(
//             //         borderSide: BorderSide(color: Colors.white, width: 3),
//             //         borderRadius: BorderRadius.circular(30.0)),
//             //     hintText: 'search',
//             //     hintStyle: GoogleFonts.aBeeZee(color: Colors.black),
//             //     suffixIcon: IconButton(
//             //       onPressed: () {},
//             //       icon: Icon(
//             //         Icons.clear,
//             //       ),
//             //     ),
//             //     prefixIcon: IconButton(
//             //       onPressed: () {},
//             //       icon: Icon(
//             //         Icons.search,
//             //       ),
//             //     ),
//             //     border: OutlineInputBorder(
//             //       borderRadius: BorderRadius.circular(35.0),
//             //     ),
//             //   ),
//             // ),

// //old videos list//
//             // Expanded(
//             //   child: ListView.builder(
//             //     itemCount: sampleVideos.length,

//             //     itemBuilder: (BuildContext context, int index) {
//             //       return ListTile(

//             //         contentPadding: EdgeInsets.all(12),
//             //         leading: Image.asset(

//             //           sampleVideos[index].img,
//             //           width: MediaQuery.of(context).size.width * 0.4,
//             //           height: MediaQuery.of(context).size.height * 0.5,
//             //         ),

//             //         title: Text(sampleVideos[index].title),

//             //         subtitle: Text(sampleVideos[index].description),
//             //         trailing: Text(sampleVideos[index].time),
//             //         onTap: () {},
//             //       );

//             //     },
//             //   ),

//             // ),

// // appBar: AppBar(
// //   title: TextField(

// //   ),

// //  ),
//         body:Column(

//             ListView.builder(
//           itemBuilder: (context, index) => VideoTile(
//             img: data.Videolist.values.elementAt(index).elementAt(0),
//             name: data.Videolist.values.elementAt(index).elementAt(1),
//             description: data.Videolist.values.elementAt(index).elementAt(2),
//             time: data.Videolist.values.elementAt(index).elementAt(3),
//           ),
//           itemCount: data.Videolist.length,
//         ),
//       ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:application/videos/model/video_tile.dart';
import 'package:application/controller/videodatas.dart';

Data data = Data();

class video_list extends StatefulWidget {
  final String name;
  final String img;
  final String videoimg;

  const video_list({
    super.key,
    required this.name,
    required this.img,
    required this.videoimg,
  });

  @override
  State<video_list> createState() => _video_listState();
}

class _video_listState extends State<video_list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.width * 0.3,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(30.0)),
                  hintText: 'search',
                  hintStyle: GoogleFonts.aBeeZee(color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.clear,
                    ),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(37.0),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.width * 1.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle, color: Colors.purple),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.red),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(widget.img),
                      ),
                      title: Text(
                        widget.name,
                        style: GoogleFonts.aclonica(color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.yellow,
                      image: DecorationImage(
                          image: AssetImage(widget.videoimg), fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 14, 196, 38)),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.width * 1.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(255, 201, 8, 56)),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 54, 152, 244)),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(widget.img),
                      ),
                      title: Text(
                        widget.name,
                        style: GoogleFonts.aclonica(color: Colors.black),
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(255, 255, 59, 190),
                      image: DecorationImage(
                          image: AssetImage(widget.videoimg), fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.width * 0.2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 224, 105, 105)),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Icon(
                          Icons.chat_bubble_outline,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.width * 1.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(255, 155, 84, 3)),
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.width * 0.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromARGB(255, 131, 4, 114)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(widget.img),
                    ),
                    title: Text(
                      widget.name,
                      style: GoogleFonts.aclonica(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.width * 0.6,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color.fromARGB(255, 145, 231, 94),
                    image: DecorationImage(
                      image: AssetImage(widget.videoimg),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: MediaQuery.of(context).size.width * 0.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromARGB(255, 127, 97, 233)),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
