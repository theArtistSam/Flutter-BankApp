import 'package:bank_app/Pages/homeScreen.dart';
import 'package:bank_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Company Logo + Translate
                SizedBox(height:statusBarHeight),
                Row(
                  children: [
                    SvgPicture.asset(
                      "lib/Icons/logo_black.svg"
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      "lib/Icons/translate.svg"
                    ),
                
                  ],
                ),
                
                const SizedBox(height: 12),
                // Text and Textfields
                Text(
                  "Welcome",
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Colors.black  
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Enjoy all the features that make it easy for you to manage your finances",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black  
                  ),
                ),
                const SizedBox(height: 32),
                
                // Email Text Field
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: borderColor,
                      width: 1.5
            
                    ),
                    borderRadius: BorderRadius.circular(8)                
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,   
                        contentPadding: const EdgeInsets.only(left: 10, right: 10),                                              
                        counter: const Offstage(),
                        hintText: "Email / Username",
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),                             
                    ),
                  ),
                ),
            
                const SizedBox(height: 30),
                
                // Password TextField
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: borderColor,
                      width: 1.5
            
                    ),
                    borderRadius: BorderRadius.circular(8)                
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,   
                        contentPadding: const EdgeInsets.only(left: 10, right: 10),                                              
                        counter: const Offstage(),
                        hintText: "Password",
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),                             
                    ),
                  ),
                ),
            
                const SizedBox(height: 16),
                
                // Checkbox + Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (isChecked){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),  
                    ),
                    
                    //const SizedBox(width: 5),
                    
                    Text(
                      "Remember me",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black  
                      ),
                    ),

                    const Spacer(),
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black  
                      ),
                    ),
                  ],

                ),
            
                const SizedBox(height: 33),
                
                // Login Butttons
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Container(
                    height: 53,
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: BorderRadius.circular(7)
                            
                    ),
                    child: Center(
                      child: Text(
                          "Login",
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,                                          
                          ),
                          textAlign: TextAlign.center,                  
                        ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 16,),
            
                Center(
                  child: Text(
                    "Other",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black  
                    ),
                  ),
                ),
            
                const SizedBox(height: 16,),
            
                Container(
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: borderColor
                  
                    ),
                    borderRadius: BorderRadius.circular(7)
            
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Image.asset("lib/Pictures/google.png"),
                      const SizedBox(width: 10),
                      Text(
                          "Login with Gmail",
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,                                          
                          ),
                          textAlign: TextAlign.center,                  
                      ),
                    ],
                  ),
                ),
                
                // No account?
                //const SizedBox(height: 129),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,                                          
                      ),
                      textAlign: TextAlign.center,                  
                    ),
                      
                    Text(
                      "Register",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: accentColor,                                          
                      ),                                    
                    ),
                  ],
                ),
                
                const SizedBox(height: 25)
              ],
            ),
            )
          ],          
        ),
      ),
    );
  }
}