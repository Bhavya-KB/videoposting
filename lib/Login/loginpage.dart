import 'package:application/Login/otppage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromARGB(255, 46, 9, 129),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              // alignment: Alignment.center,
              //  decoration: BoxDecoration(
              // gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     colors: [
              //       Color.fromARGB(255, 238, 145, 7),
              //       Color.fromARGB(255, 142, 131, 240),
              //       Color.fromARGB(255, 230, 98, 127),
              //     ]),
              // shape: BoxShape.circle,
              // color: Colors.white,
              // ),

              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.2,
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
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Column(children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage('assets/image1.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Container(
                    alignment: Alignment.center,
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.rectangle,
                    //   color: Colors.red,
                    // ),
                    child: TextField(
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.red),
                        //   borderRadius: BorderRadius.all(Radius.circular(12)),
                        // ),
                        hintText: 'Enter Mobile Number',
                        hintStyle: GoogleFonts.abhayaLibre(color: Colors.white),

                        labelText: "Mobile Number",
                        labelStyle: GoogleFonts.aBeeZee(
                          color: Color.fromARGB(255, 216, 125, 7),
                        ),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Container(
                    alignment: Alignment.center,
                    // decoration: BoxDecoration(
                    //   shape: BoxShape.rectangle,
                    //   color: Colors.purple,
                    // ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Otp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 216, 125, 7),
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                      ),
                      child: Text(
                        "Next",
                        style: GoogleFonts.alice(
                          fontSize: 18,
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
