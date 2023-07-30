import 'package:bank_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final statusBarHeight = MediaQuery.of(context).padding.top;

    int gridCount() {
      // 197
      if (width > 163) {
        return (width ~/ 163).toInt();
      }
      return 1;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:statusBarHeight),
              Row(
                children: [
                  Image.asset(
                    "lib/Pictures/logo_complete.png"
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "lib/Icons/scanner.svg"
                  ),
              
                ],
              ),
          
              // Space + Balance 
              const SizedBox(height: 33),
              Text(
                "Your Balance",
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,                                          
                ),                                
              ),
              const SizedBox(height: 8,),
              Text(
                "\$ 49,250.00",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,                                          
                ),                                
              ),
          
              // Space + Money Transfer
              const SizedBox(height: 20),
              
              Container(
                height: 75,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: borderColor
                  ),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 38, right: 38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [                  
                      // Money Send
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Logo + Text
                          SvgPicture.asset("lib/Icons/money_send.svg"),
                          const SizedBox(height: 8,),
                          Text(
                            "Send",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,                                          
                            ),                                
                          ),
                        ],
                      ),
                
                      const Spacer(),
                
                      // Money Receive
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Logo + Text
                          SvgPicture.asset("lib/Icons/money_request.svg"),
                          const SizedBox(height: 8,),
                          Text(
                            "Request",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,                                          
                            ),                                
                          ),
                        ],
                      ),
                
                      const Spacer(),
                
                      // Money History
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Logo + Text
                          SvgPicture.asset("lib/Icons/money_receipt.svg"),
                          const SizedBox(height: 8,),
                          Text(
                            "History",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,                                          
                            ),                                
                          ),
                        ],
                      ),                  
                    ],                  
                  ),
                ),
              ),
          
              // Space + Let's Connect
              const SizedBox(height: 20),
          
              Stack(              
                children: [
                  // Background Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(                  
                      child: Image.asset(
                        "lib/Pictures/background_connect.png",
                        fit: BoxFit.cover,
                          width: double.infinity,
                          height: 133,                  
                        ),
                    ),
                  ),
                  
                  // Text                
                  Padding(
                    padding: const EdgeInsets.all(26),
                    child: SizedBox(
                      width: 252,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Let's connect",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF7443FF),                                          
                            ),                                
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "Connect account with marketplace for automatic payment and get \$25 bonus",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,                                          
                            ),                                
                          ),
                        ],
                      ),
                    ),
                  ),
              
                  // Icons
                  
                  Positioned(
                    right: 10,
                    top: 10,
                    child: SvgPicture.asset("lib/Icons/close_square.svg"),                                     
                  ),
              
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: SvgPicture.asset("lib/Icons/arrow_right.svg"),                                     
                  )
                  
                ],
              ),
          
              // Space + Pocket
              const SizedBox(height: 32),
              Row(
                children: [
                  SvgPicture.asset(
                    "lib/Icons/wallet.svg",
                    color: accentColor,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "My Pocket",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,                                          
                    ),                                                  
                  ),
                  const Spacer(),
                  Text(
                    "Create",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: accentColor,                                          
                    ),                                                  
                  ),
                ],
              ),
          
              //const SizedBox(height: 32),      
              
              MasonryGridView.count(  
                shrinkWrap: true,                                          
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: gridCount(),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,                          
                itemCount: 4,
                itemBuilder: (context, index) {
                  return pocket();                                          
                }
              ),              
              // View More
              const SizedBox(height:  20),
              Center(
                child: Text(
                  "View more",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: accentColor,                                          
                  ),                                                  
                ),
              ),
              
              // Currency
              const SizedBox(height:  33),
              Row(
                children: [
                  SvgPicture.asset("lib/Icons/coin.svg"),
                  const SizedBox(width: 8,),
                  Text(
                    "Currency",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,                                          
                    ),                                                  
                  ),
                ],
              ),
                
              // Currency Table
              const SizedBox(height: 20,),
              Container(
                //height: 215,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: borderColor
                  ),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
                    child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Currency",
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,                                          
                            ),                                                  
                          ),
                          const Spacer(),
                          Text(
                            "Price",
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,                                          
                            ),                                                  
                          ),
                          const Spacer(),
                          Text(
                            "Rates",
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,                                          
                            ),                                                  
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      currencyTile("USD", 1.00, 1.00),
                      const SizedBox(height: 12),
                      currencyTile("EURO", 1.00, 0.92),
                      const SizedBox(height: 12),
                      currencyTile("POND", 1.00, 0.79),
                      const SizedBox(height: 12),
                      currencyTile("JPY", 1.00, 1.4),                                            
                
                      const SizedBox(height: 20),
                      Text(
                        "Updated 1 hour ago",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: accentColor,                                          
                        ),                                                  
                      ),
                    ],
                  ),
                ),
              ) 
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,                                                                        
                            ),
        selectedItemColor: accentColor,
        items: <BottomNavigationBarItem>[          
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "lib/Icons/home.svg",
                colorFilter: const ColorFilter.mode(accentColor, BlendMode.srcIn),
              ) ,
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "lib/Icons/wallet.svg",
                colorFilter: const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
              ) ,
            label: 'Pocket',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "lib/Icons/notification.svg",
                colorFilter: const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
              ) ,
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "lib/Icons/account.svg",
                colorFilter: const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
              ) ,
            label: 'Profile',
          ),
        ],              
      )
    ); 
  }

  Widget currencyTile(currency, price, rate){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currency,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black54,                                          
          ),                                                  
        ),
        const Spacer(),
        Text(
          price.toString(),
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black54,                                          
          ),                                                  
        ),
        const Spacer(),
        Text(
          rate.toString(),
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black54,                                          
          ),                                                  
        ),
      ],
    );
  }

  Widget pocket(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: borderColor
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,                    
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(                  
                  child: Image.asset(
                    "lib/Pictures/credit_card_background_1.png",
                    fit: BoxFit.cover,
                      width: double.infinity,
                      height: 133,                  
                    ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                //right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Biancaliza",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: accentColor,                                          
                      ),
                    ),
                    const SizedBox(height: 5),
                    Image.asset("lib/Pictures/credit_card_number.png"),
                    const SizedBox(height: 15),
                    Image.asset("lib/Pictures/chip.png"),                                                                                                                     
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,                
              children: [
              Text(
                  "Saving Balance",
                  style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,                                          
                  ),
                  
                ),
                const SizedBox(height: 8),
                Text(
                  "\$ 1,000.00",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: accentColor,                                          
                  ),
                  
                ),     
              ],
            ),
          )
        ],
      ),
    );
  }
}