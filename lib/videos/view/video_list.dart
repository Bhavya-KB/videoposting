import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:application/videos/model/video_tile.dart';

class video_list extends StatefulWidget {
  const video_list({
    super.key,
  });

  @override
  State<video_list> createState() => _video_listState();
}

class _video_listState extends State<video_list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 1.0,
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //     stops: [
              //       0.3,
              //       0.2,
              //       // 0.8,
              //     ],
              //     colors: [
              //       Color.fromARGB(255, 216, 125, 7),
              //       Color.fromARGB(255, 14, 13, 17),
              //       // Colors.yellow,
              //     ],
              //   ),
              // ),
              child: Container(
                child: Column(children: [
                  //container of image
                  // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.4,
                    alignment: Alignment.topCenter,
                    // decoration: BoxDecoration(
                    //     shape: BoxShape.rectangle, color: Colors.orange),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 3),
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
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: sampleVideos.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.asset(
                            sampleVideos[index].img,
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.5,
                          ),
                          title: Text(sampleVideos[index].title),
                          subtitle: Text(sampleVideos[index].description),
                          onTap: () {


                          },
                        );
                      },
                    ),
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.3,
                  //   height: MediaQuery.of(context).size.height * 0.1,
                  //   alignment: Alignment.center,
                  //   decoration: BoxDecoration(
                  //       shape: BoxShape.rectangle, color: Colors.green),
                  // ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
