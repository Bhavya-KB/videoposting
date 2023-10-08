import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _Otp();
}

class _Otp extends State<Otp> {
  OutlineInputBorder myinputborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: Colors.white, width: 3),
    );
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: Color.fromARGB(255, 216, 125, 7), width: 3),
    );
  }

  Widget buildOtpTextField() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.1,
      alignment: Alignment.center,
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textInputAction: TextInputAction.next,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, color: Colors.white),
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: myinputborder(),
          focusedBorder: myfocusborder(),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color.fromARGB(255, 216, 125, 7),
        //   leading: GestureDetector(
        //     onTap: () => {Navigator.pop(context)},
        //     child: Icon(
        //       Icons.arrow_back,
        //       color: Colors.grey,
        //     ),
        //   ),
        // ),

        body: SingleChildScrollView(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.3,
                    0.2,
                    // 0.8,
                  ],
                  colors: [
                    Color.fromARGB(255, 216, 125, 7),
                    Color.fromARGB(255, 14, 13, 17),
                    // Colors.yellow,
                  ],
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 1.0,
                // decoration: BoxDecoration(
                //   shape: BoxShape.rectangle,
                //   color: Colors.blue,
                // ),

                child: Column(children: [
                  //container of image
                  // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.3,
                  //   height: MediaQuery.of(context).size.height * 0.1,
                  //   alignment: Alignment.center,
                  //   child: Image(
                  //     image: AssetImage('assets/image1.jpg'),
                  //   ),
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1),
                        Text(
                          "Enter verification code",
                          style: GoogleFonts.alice(
                              color: Colors.white, fontSize: 22),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildOtpTextField(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      buildOtpTextField(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      buildOtpTextField(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      buildOtpTextField(),
                    ],
                  ),

                  // Container(
                  //   width: MediaQuery.of(context).size.width * 1.0,
                  //   height: MediaQuery.of(context).size.height * 0.1,
                  //   alignment: Alignment.center,
                  //   // decoration: BoxDecoration(
                  //   //   shape: BoxShape.rectangle,
                  //   //   color: Colors.red,
                  //   // ),
                  //   child: TextField(

                  //     decoration: InputDecoration(
                  //       // border: OutlineInputBorder(
                  //       //   borderSide: BorderSide(color: Colors.red),
                  //       //   borderRadius: BorderRadius.all(Radius.circular(12)),
                  //       // ),

                  //       hintText: ' * ',
                  //      counterText: '',
                  //       hintStyle: GoogleFonts.abhayaLibre(color: Colors.white),

                  //       labelText: "OTP",
                  //       labelStyle: GoogleFonts.aBeeZee(
                  //         color: Color.fromARGB(255, 216, 125, 7),
                  //       ),
                  //       enabledBorder: myinputborder(),
                  //       focusedBorder: myfocusborder(),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Container(
                    // width: MediaQuery.of(context).size.width * 0.3,
                    // height: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.center,
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.rectangle,
                    //   color: Colors.purple,
                    // ),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 216, 125, 7),
                        padding:
                            EdgeInsets.symmetric(horizontal: 37, vertical: 14),
                      ),
                      child: Text(
                        "Get Started ",
                        style: GoogleFonts.actor(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
