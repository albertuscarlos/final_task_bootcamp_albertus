import 'package:bootcamp_final_task/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232832),
      body: SafeArea(
        child: SizedBox(
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image(
                  image: AssetImage('asset/images/netflix_se.png'),
                  fit: BoxFit.cover,
                ),
                ),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 390,
                    ),

                    SizedBox(
                      width: 200,
                      child: Image.asset('asset/images/imdb_logo.png'),
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    SizedBox(
                      child: Text("Your guide to movie, tv and \n celebrity information",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xffF5C518),
                        ),
                      ),
                      ),
                    ),

                    SizedBox(
                      height: 70,
                    ),

                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginPage()));
                        },
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF5C518),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
