import 'package:bank_app/main.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Image.asset(
          'assets/images/logo_complete.png',
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/scanner.svg'),
            onPressed: () {},
          ),
          // const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Space + Balance
              Text(
                "Your Balance",
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
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
                    color: borderColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
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
                          SvgPicture.asset("assets/icons/money_send.svg"),
                          const SizedBox(
                            height: 8,
                          ),
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
                          SvgPicture.asset("assets/icons/money_request.svg"),
                          const SizedBox(
                            height: 8,
                          ),
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
                          SvgPicture.asset("assets/icons/money_receipt.svg"),
                          const SizedBox(
                            height: 8,
                          ),
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
                        "assets/images/background_connect.png",
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
                    top: 10,
                    bottom: 10,
                    right: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/close_square.svg"),
                        SvgPicture.asset("assets/icons/arrow_right.svg"),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   right: 10,
                  //   top: 10,
                  //   child: SvgPicture.asset("assets/icons/close_square.svg"),
                  // ),

                  // Positioned(
                  //   right: 10,
                  //   bottom: 10,
                  //   child: SvgPicture.asset("assets/icons/arrow_right.svg"),
                  // )
                ],
              ),

              // Space + Pocket
              const SizedBox(height: 32),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/wallet.svg",
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

              GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 20),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridCount(),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: .94,
                ),
                itemCount: 4, // Number of items
                itemBuilder: (context, index) {
                  return pocket();
                },
              ),
              // View More
              const SizedBox(height: 20),
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
              const SizedBox(height: 33),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/coin.svg"),
                  const SizedBox(
                    width: 8,
                  ),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                //height: 215,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: borderColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Currency",
                              "USD",
                              "EURO",
                              "POUND",
                              "JPY"
                            ].map((item) {
                              return SizedBox(
                                height: 27,
                                child: text(label: item, heading: 'Currency'),
                              );
                            }).toList(), // Convert to List
                          ),
                          Column(
                            children: ["Price", "9.9", "1.4", "1.0", ".98"]
                                .map((item) {
                              return SizedBox(
                                  height: 27,
                                  child: text(label: item, heading: 'Price'));
                            }).toList(), // Convert to List
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: ["Rates", "1.0", "9.2", ".79", "1.4"]
                                .map((item) {
                              return text(label: item, heading: 'Rates');
                            }).toList(), // Convert to List
                          ),
                        ],
                      ),
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
              "assets/icons/home.svg",
              colorFilter: const ColorFilter.mode(accentColor, BlendMode.srcIn),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/wallet.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
            ),
            label: 'Pocket',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/notification.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/account.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget text({required String label, required String heading}) {
    return SizedBox(
      height: 27,
      child: Text(
        label,
        style: GoogleFonts.montserrat(
          fontSize: label == heading ? 14 : 12,
          fontWeight: FontWeight.w400,
          color: label == heading ? Colors.black : Colors.black54,
        ),
      ),
    );
  }

  Widget pocket() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: borderColor),
        borderRadius: BorderRadius.circular(8),
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
                    "assets/images/credit_card_background_1.png",
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
                    Image.asset("assets/images/credit_card_number.png"),
                    const SizedBox(height: 15),
                    Image.asset("assets/images/chip.png"),
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
