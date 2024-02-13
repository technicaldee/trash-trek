import 'package:flutter/material.dart';
import 'package:trash_trek/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assetsDoneMenu),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  child: Image.asset(Assets.assetsGoldenStar),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  child: Image.asset(Assets.assetsGoldenStar),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  child: Image.asset(Assets.assetsBlackStar),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 0,
              ),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width - 16,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(Assets.assetsSunBack),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'COMPLETE',
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 7,
                          child: SvgPicture.asset(Assets.assetsCompleteSmiley)),
                      Text(
                        'YOU SCORE',
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, right: 16, bottom: 0, left: 16),
              height: MediaQuery.of(context).size.height / 15,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(Assets.assetsLineBack),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          Assets.assetsScoreIcon,
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          '32',
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        SizedBox()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              height: MediaQuery.of(context).size.height/12,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(Assets.assetsBlueButton),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Repeat',
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),

              height: MediaQuery.of(context).size.height/12,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(Assets.assetsAshButton),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Exit',
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
