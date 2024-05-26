import "dart:ui";

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:xpns/utils/palette.dart";

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        title: Text(
          'XPNS',
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white.withAlpha(100),
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(52, 63, 86, .2),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ],
                  color: kPrimaryColor,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(52, 63, 86, .2),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/imgs/eth.png",
                        scale: 65,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "0.011",
                      style: GoogleFonts.oswald(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      " ETH",
                      style: GoogleFonts.oswald(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(52, 63, 86, .2),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ],
                      color: kRedAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.remove,
                          color: Colors.red,
                        ),
                        Text(
                          " Withdraw",
                          style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 55,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(52, 63, 86, .2),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ],
                      color: kGreenAccent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.green,
                        ),
                        Text(
                          " Deposit",
                          style: GoogleFonts.lato(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
