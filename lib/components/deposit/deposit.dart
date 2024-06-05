import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:xpns/utils/palette.dart";

class DepositScreen extends StatefulWidget {
  static const String id = 'DepositScreen';

  const DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  final TextEditingController addressController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        toolbarHeight: kToolbarHeight * 1.2,
        backgroundColor: Colors.greenAccent.shade100,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Deposit Details",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(
          16,
          0,
          16,
          16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Enter following details to complete the transaction",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 12),
            Container(
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
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: TextField(
                      controller: addressController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Address',
                        labelStyle: GoogleFonts.montserrat(
                          color: kTextGrey,
                        ),
                        hintText: "Enter the Address",
                        hintStyle: GoogleFonts.montserrat(
                          color: kTextGrey.withOpacity(0.4),
                        ),
                        prefixIcon: const Icon(
                          CupertinoIcons.number,
                          color: kTextGrey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: TextField(
                      controller: amountController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Amount',
                        labelStyle: GoogleFonts.montserrat(
                          color: kTextGrey,
                        ),
                        hintText: "Enter the Amount",
                        hintStyle: GoogleFonts.montserrat(
                          color: kTextGrey.withOpacity(0.4),
                        ),
                        prefixIcon: const Icon(
                          Icons.money_rounded,
                          color: kTextGrey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Message',
                        labelStyle: GoogleFonts.montserrat(
                          color: kTextGrey,
                        ),
                        hintText: "Enter your message",
                        hintStyle: GoogleFonts.montserrat(
                          color: kTextGrey.withOpacity(0.4),
                        ),
                        prefixIcon: const Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: kTextGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(52, 63, 86, .2),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    )
                  ],
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade300,
                      Colors.green.shade400,
                      Colors.green.shade300,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Deposit",
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
