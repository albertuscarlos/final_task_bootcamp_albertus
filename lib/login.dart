import 'package:bootcamp_final_task/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232832),
        body:
        Form(
          key: formKey,
          child: Container(
              margin: EdgeInsets.all(32),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: double.infinity,
                    height: 32,
                    ),

                  Row(
                    children: [

                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GetStartedPage()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 80),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xffF5C518),
                            size: 30,
                          ),
                        ),
                      ),

                      Center(
                        child: SizedBox(
                          width: 100,
                          child: Image(
                            image: AssetImage('asset/images/imdb.png'),
                          ),
                        )
                      ),
                    ],
                  ),

                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                  Text("Welcome to\nIMDb",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 30,
                    margin: EdgeInsets.only(top: 7),
                    decoration: BoxDecoration(
                        color: Color(0xffF5C518),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),

                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),

                  //Form Input Email
                  TextFormField(
                    controller: emailController,
                    maxLength: 30,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Color(0xffF5C518),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      counterStyle: TextStyle(
                        color: Color(0xffF5C518)
                      ),
                      hintText: "Email",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Color(0xffF5C518),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Color(0xffF5C518),
                        ),
                      ),
                    ),
                    validator: (emailValue) {
                      if (emailValue?.isEmpty ?? true) {
                        return "Email cannot be empty!";
                      }
                      return null;
                    },
                  ),

                  SizedBox(
                      width: double.infinity,
                      height: 15,
                    ),

                  //Form Input Password
                  TextFormField(
                    controller: passwordController,
                    maxLength: 30,
                    cursorColor: Color(0xffF5C518),
                    obscureText: isObscurePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      counterStyle: TextStyle(
                          color: Color(0xffF5C518)
                      ),
                      hintText: "IMDb password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Color(0xffF5C518),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Color(0xffF5C518),
                        ),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isObscurePassword = !isObscurePassword;
                          });
                        },
                        child: Icon(isObscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                        ),
                      ),
                      suffixIconColor: Color(0xffF5C518),
                    ),
                    validator: (emailValue) {
                      if (emailValue?.isEmpty ?? true) {
                        return "Password cannot be empty!";
                      }
                      return null;
                    },
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        if(!formKey.currentState!.validate()) {
                          return;
                        } else {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MainPage()));
                        }
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.roboto(
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
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
    ),
        ),
    );
  }
}