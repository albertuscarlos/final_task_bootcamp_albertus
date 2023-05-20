import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232832),
      body: SafeArea(
        child: Column(
              children: [
                Container(
                  height: 100,
                  color: Color(0xff2B303A),
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row (mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Image(
                                image: AssetImage('asset/images/imdb.png'),
                              ),
                            ),

                            Icon(
                              Icons.person,
                              color: Color(0xffA9A9A9),
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),

          Expanded(
            child: ListView(
                children: [
                  SizedBox(
                    height: 475,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        //Movie 1
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
                          },
                          child: Container(
                            width: 200,
                            height: 400,
                            margin: EdgeInsets.all((20)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Color(0xff2B303A),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black45,
                                      blurRadius: 0,
                                      offset: Offset(1, 1,)
                                  )
                                ]
                            ),
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 300,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18)
                                          ),
                                          child:
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18) ),
                                            child: Image.network(
                                              'https://m.media-amazon.com/images/M/MV5BMDgxOTdjMzYtZGQxMS00ZTAzLWI4Y2UtMTQzN2VlYjYyZWRiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ) ,
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
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

                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text("Guardians of the Galaxy Vol. 3",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                fontWeight: FontWeight.bold
                                              )
                                          ),),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2023",
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      color: Color(0xffA7A7A7)
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                      ),
                        ),

                        //Movie 2
                        Container(
                          width: 200,
                          height: 400,
                          margin: EdgeInsets.all((20)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xff2B303A),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 0,
                                    offset: Offset(1, 1,)
                                )
                              ]
                          ),
                          child: Column (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 300,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(18)
                                        ),
                                        child:
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18) ),
                                          child: Image.network(
                                            'https://m.media-amazon.com/images/M/MV5BMmZiN2VmMjktZDE5OC00ZWRmLWFlMmEtYWViMTY4NjM3ZmNkXkEyXkFqcGdeQXVyMTI2MTc2ODM3._V1_Ratio0.6716_AL_.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ) ,
                                      ),
                                    ],
                                  ),

                                ],
                              ),

                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.star,
                                            color: Color(0xffFFA235),),

                                          Text("6.8 / 10",
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

                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text("Evil Dead Rise",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),),
                                    ),

                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("2023",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    color: Color(0xffA7A7A7)
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                        //Movie 3
                        Container(
                          width: 200,
                          height: 400,
                          margin: EdgeInsets.all((20)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xff2B303A),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 0,
                                    offset: Offset(1, 1,)
                                )
                              ]
                          ),
                          child: Column (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 300,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(18)
                                        ),
                                        child:
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18) ),
                                          child: Image.network(
                                            'https://m.media-amazon.com/images/M/MV5BNzg3OTEzMTgtYWU0OC00YTI0LWIxOTAtNmRkNTc0Nzg2YWU1XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_Ratio0.7910_AL_.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ) ,
                                      ),
                                    ],
                                  ),

                                ],
                              ),

                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.star,
                                            color: Color(0xffFFA235),),

                                          Text("7.5 / 10",
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

                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text("A Man Called Otto",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),),
                                    ),

                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("2022",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    color: Color(0xffA7A7A7)
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 10),
                    child: Text("Most Popular Movies",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xffF5C518),
                          fontSize: 20,
                          fontWeight: FontWeight.bold

                        ),
                      ),),
                  ),

                  SizedBox(
                    height: 350,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [

                        //Movie 1
                        Container(
                          height: 200,
                          margin: EdgeInsets.all((20)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xff2B303A),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 0,
                                    offset: Offset(1, 1,)
                                )
                              ]
                          ),
                          child: Column (
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 125,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18)
                                          ),
                                          child:
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18) ),
                                            child: Image.network(
                                              'https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_Ratio0.6716_AL_.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ) ,
                                        ),


                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 200,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text("The Shawshank \nRedemption",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                )
                                            ),),
                                        ),

                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("1994",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Color(0xffA7A7A7)
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(
                                          height: 70,
                                        ),


                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star,
                                                color: Color(0xffFFA235),),

                                              Text("9.2 / 10",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Colors.white
                                                    )
                                                ),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),

                            ],
                          ),
                        ),

                        //Movie 2
                        Container(
                          height: 200,
                          margin: EdgeInsets.all((20)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xff2B303A),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 0,
                                    offset: Offset(1, 1,)
                                )
                              ]
                          ),
                          child: Column (
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 125,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18)
                                          ),
                                          child:
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18) ),
                                            child: Image.network(
                                              'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_Ratio0.6716_AL_.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ) ,
                                        ),


                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 200,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text("The Dark Knight",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                )
                                            ),),
                                        ),

                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("2000",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Color(0xffA7A7A7)
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(
                                          height: 70,
                                        ),


                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star,
                                                color: Color(0xffFFA235),),

                                              Text("9.0 / 10",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Colors.white
                                                    )
                                                ),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),

                            ],
                          ),
                        ),

                        //Movie 3
                        Container(
                          height: 200,
                          margin: EdgeInsets.all((20)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xff2B303A),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 0,
                                    offset: Offset(1, 1,)
                                )
                              ]
                          ),
                          child: Column (
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 125,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18)
                                          ),
                                          child:
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18) ),
                                            child: Image.network(
                                              'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ) ,
                                        ),


                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 200,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text("12 Angry Men",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                )
                                            ),),
                                        ),

                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("1957",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Color(0xffA7A7A7)
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(
                                          height: 70,
                                        ),


                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star,
                                                color: Color(0xffFFA235),),

                                              Text("9.0 / 10",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Colors.white
                                                    )
                                                ),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),

                            ],
                          ),
                        ),

                        //Movie 4
                        Container(
                          height: 200,
                          margin: EdgeInsets.all((20)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Color(0xff2B303A),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 0,
                                    offset: Offset(1, 1,)
                                )
                              ]
                          ),
                          child: Column (
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 125,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18)
                                          ),
                                          child:
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18) ),
                                            child: Image.network(
                                              'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ) ,
                                        ),


                                      ],
                                    ),
                                  ),

                                  Container(
                                    height: 200,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text("Schindler's List",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                )
                                            ),),
                                        ),

                                        Container(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("1993",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Color(0xffA7A7A7)
                                                    )
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        SizedBox(
                                          height: 70,
                                        ),


                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star,
                                                color: Color(0xffFFA235),),

                                              Text("8.9 / 10",
                                                style: GoogleFonts.poppins(
                                                    textStyle: TextStyle(
                                                        color: Colors.white
                                                    )
                                                ),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),

              ],
            ),
      ),
    );
  }
}
