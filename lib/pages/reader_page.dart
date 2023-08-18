import 'package:book_app/services/constants/colors.dart';
import 'package:book_app/services/constants/fonts.dart';
import 'package:book_app/services/constants/strings.dart';
import 'package:flutter/material.dart';

class ReaderPage extends StatelessWidget {
  const ReaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            const Center(
              child: Text(
                Customstrings.chapterOne,
                style: TextStyle(
                  fontFamily: CustomFonts.playFairDisplay,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: height * 0.3,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: CustomColors.black),
              ),
              child: const Text(
                textAlign: TextAlign.center,
                Customstrings.readerPageFirstText,
                style: TextStyle(
                  fontFamily: CustomFonts.inter,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 12,
                  color: CustomColors.black,
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  Customstrings.readerPageSecondText,
                  style: TextStyle(
                    fontFamily: CustomFonts.inter,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    height: 1.4,
                  ),
                )
              ],
            ),
            const Text(
              Customstrings.bb,
              style: TextStyle(
                fontFamily: CustomFonts.inter,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                height: 1.4,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              Customstrings.aa,
              style: TextStyle(
                fontFamily: CustomFonts.inter,
                fontWeight: FontWeight.w500,
                fontSize: 17,
                height: 1.4,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Customstrings.footerText,
                    style: TextStyle(
                      fontFamily: CustomFonts.inter,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    Customstrings.percentage,
                    style: TextStyle(
                      fontFamily: CustomFonts.inter,
                      fontWeight: FontWeight.w400,
                      color: CustomColors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
