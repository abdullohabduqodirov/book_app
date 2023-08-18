import 'package:book_app/services/constants/colors.dart';
import 'package:book_app/services/constants/fonts.dart';
import 'package:book_app/services/constants/icons.dart';
import 'package:book_app/services/constants/images.dart';
import 'package:book_app/services/constants/strings.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(0.2, 1.1),
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  height: height * 0.55,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/img_background.png'),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            splashRadius: 10,
                            onPressed: () => debugPrint('OnPressed aaa'),
                            icon: Image.asset('assets/icons/ic_arrow_back.png'),
                          ),
                          SizedBox(
                            width: width * 0.13,
                          ),
                          Text(
                            Customstrings.appBarTitle,
                            style: CustomFonts.playFairDisplayTextsStyle(
                                22, FontWeight.w500),
                          )
                        ],
                      ),
                      const Text(
                        Customstrings.authorName,
                        style: TextStyle(
                          fontFamily: CustomFonts.inter,
                          color: CustomColors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: CustomImages.book,
                            width: width * 0.7,
                            height: height * 0.36,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.07,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                    color: CustomColors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1, 1),
                        blurRadius: 40,
                        spreadRadius: 15,
                        color: CustomColors.black.withOpacity(0.2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 25,
                        width: 55,
                        decoration: const BoxDecoration(
                          color: CustomColors.orangeAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(11),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.star,
                              color: CustomColors.yellow,
                              size: 20,
                            ),
                            Text(
                              Customstrings.bookRating,
                              style: CustomFonts.centerWidgetItemsTextStyle(
                                  FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: CustomColors.blueGrey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(11),
                          ),
                        ),
                        child: Text(Customstrings.fantasy,
                            style: CustomFonts.centerWidgetItemsTextStyle()),
                      ),
                      Row(
                        children: [
                          Text(
                            Customstrings.pageCount,
                            style: CustomFonts.centerWidgetItemsTextStyle(
                                FontWeight.bold),
                          ),
                          Text(
                            Customstrings.pages,
                            style: CustomFonts.centerWidgetItemsTextStyle(
                                FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.45,
              width: width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: height * 0.45,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                Customstrings.synopsis,
                                style: CustomFonts.playFairDisplayTextsStyle(
                                    24, FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                Customstrings.fistText,
                                style: TextStyle(
                                  height: 1.5,
                                  fontFamily: CustomFonts.inter,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                Customstrings.secondText,
                                style: TextStyle(
                                  height: 1.5,
                                  fontFamily: CustomFonts.inter,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 200,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Stack(
              alignment: FractionalOffset(0.4, 0.5),
              children: [
                Image(
                  image: CustomIcons.ellipse,
                  width: 90,
                ),
                Image(
                  image: CustomIcons.bookMark,
                  width: 25,
                )
              ],
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/reader_page'),
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: Size(width * 0.75, height * 0.07),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  backgroundColor: CustomColors.purpleAccent),
              child: const Text(
                Customstrings.buyNow,
                style: TextStyle(
                  fontFamily: CustomFonts.inter,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: CustomColors.white,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.02,
            )
          ],
        ),
      ),
    );
  }
}
