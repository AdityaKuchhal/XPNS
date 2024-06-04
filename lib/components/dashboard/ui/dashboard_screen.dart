import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:xpns/components/deposit/deposit.dart";
import "package:xpns/components/withdraw/withdraw.dart";
import "package:xpns/utils/palette.dart";

class DashboardScreen extends StatefulWidget {
  static const String id = 'DashboardScreen';
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   flexibleSpace: ClipRRect(
      //     child: BackdropFilter(
      //       filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      //       child: Container(
      //         color: Colors.transparent,
      //       ),
      //     ),
      //   ),
      //   title: Text(
      //     'XPNS',
      //     style: GoogleFonts.lato(
      //       fontSize: 25,
      //       fontWeight: FontWeight.w600,
      //       color: Colors.black,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white.withAlpha(100),
      //   elevation: 0,
      // ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                12,
                kToolbarHeight,
                12,
                0,
              ),
              child: Text(
                'XPNS',
                style: GoogleFonts.lato(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                12,
                10,
                12,
                30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome, User!',
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey[200],
                    child: Image.asset(
                      "assets/imgs/profile.png",
                      fit: BoxFit.cover,
                      width: 30,
                    ),
                  )
                ],
              ),
            ),
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
                      width: 55,
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
                        scale: 75,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Text(
                      "10.15",
                      style: GoogleFonts.oswald(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      " ETH",
                      style: GoogleFonts.oswald(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
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
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, WithdrawScreen.id);
                    },
                    child: Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(4),
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
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, DepositScreen.id);
                    },
                    child: Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
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
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Transactions",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(52, 63, 86, .2),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/imgs/eth.png",
                              width: 25,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "2.01 ETH",
                              style: GoogleFonts.oswald(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "0xBC3CeF3a50aA407cf23D100886FA43959252a31D",
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "XYZ Purchase",
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
