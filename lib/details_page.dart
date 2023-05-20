import 'package:bootcamp_final_task/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232832),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 211,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8) ),
                    child: Image(
                      image: AssetImage('asset/images/banner_gotg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 211,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 21, top: 183),
                  child: SizedBox(
                    width: 154,
                    height: 187,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      child: Image(
                        image: AssetImage('asset/images/banner_gotg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 188, top: 225),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Guardians of the Galaxy \nVol. 3",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              )
                          ),),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text("2023",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xffA7A7A7)
                              )
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Genre: Action, Adventure",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xffA7A7A7)
                              )
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star,
                              color: Color(0xffFFA235),),

                            Text("8.3 / 10",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.white
                                  )
                              ),),
                            SizedBox(
                              width: 100,
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffF5C518),
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 25,
            ),

            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 10),
                    child: Text("Storyline",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Color(0xffF5C518),
                            fontSize: 20,
                            fontWeight: FontWeight.bold

                        ),
                      ),),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text("After stealing a mysterious orb in the far reaches of outer space, Peter Quill from Earth is now the main target of a manhunt led by the villain known as Ronan the Accuser. To help fight Ronan and his team and save the galaxy from his power, Quill creates a team of space heroes known as the 'Guardians of the Galaxy' to save the galaxy.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                          )
                      ),),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 10),
                    child: Text("Cast",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Color(0xffF5C518),
                            fontSize: 20,
                            fontWeight: FontWeight.bold

                        ),
                      ),),
                  ),

                  SizedBox(
                    height: 220,
                    width: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              width: 120,
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                child: Image.network(
                                  'https://m.media-amazon.com/images/M/MV5BZjdkYjg1NzMtOTY2YS00ZWI1LWEwZWYtOTU1YTM2ODA2ZWY5XkEyXkFqcGdeQXVyMTM1MjAxMDc3._V1_Ratio0.7273_AL_.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ) ,
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("Chris Pratt",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )
                                ),),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              width: 120,
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                child: Image.network(
                                  'https://m.media-amazon.com/images/M/MV5BMjExNzA4MDYxN15BMl5BanBnXkFtZTcwOTI1MDAxOQ@@._V1_Ratio0.7273_AL_.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ) ,
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("Vin Diesel",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )
                                ),),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              width: 120,
                              margin: EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                child: Image.network(
                                  'https://m.media-amazon.com/images/M/MV5BMjM0OTIyMzY1M15BMl5BanBnXkFtZTgwMTg0OTE0NzE@._V1_Ratio0.7273_AL_.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ) ,
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("Bradley Cooper",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )
                                ),),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              width: 120,
                              margin: EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child:
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                child: Image.network(
                                  'https://m.media-amazon.com/images/M/MV5BNTZkYzU0ZGUtZTk1MC00MzJjLWFmMzItY2M0ODY1ZmI2OGQ0XkEyXkFqcGdeQXVyMjI0MjgwNjc@._V1_Ratio1.7727_AL_.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ) ,
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Text("Drax",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                    )
                                ),),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),

                  SizedBox(
                    height: 100,
                  )
                  
                ],
              ),
            ),

          ],
        ),


      ),
    );
  }
}
