import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lowproject/main.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/homepage/homepage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Simulate some loading or initialization process
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the main screen or another page with a gradual transition
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(
              milliseconds: 800), // Duration of the transition animation
          pageBuilder: (_, __, ___) => mainPage(), //drawerSlide
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grencolor,
      body: Stack(
        children: [
          Container(
            color: grencolor.withOpacity(0.5),
            child: Image.asset(
              'asset/splash.png',
              height: double.infinity,
              width: 430,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: grencolor.withOpacity(0.85),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 250),
            child: Container(
              width: 186,
              height: 186,
              constraints: const BoxConstraints
                  .expand(), // Make the container cover the entire screen
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'asset/قوانين-3.png',
                  ), // Replace with your image asset path
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'دليل القوانين العراقية',
                style: GoogleFonts.alexandria(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width < 391 ? 28 : 34,
                  // fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width > 391 ? 160 : 145),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Guide to Iraqi Laws',
                // textAlign: TextAlign.justify,
                style: GoogleFonts.alexandria(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: MediaQuery.of(context).size.width < 391 ? 18 : 24,
                  //  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 293,
                    height: 25,
                    child: Text(
                      'جميع الحقوق التطبيق محفوظة ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.alexandria(
                        color: Colors.white,
                        fontSize:
                            MediaQuery.of(context).size.width < 391 ? 14 : 16,
                        // fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2024',
                          style: GoogleFonts.alexandria(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width < 391
                                ? 13
                                : 18,
                            //  fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.width > 391
                                  ? 10
                                  : 5),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width > 391
                                        ? 6
                                        : 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width > 391
                                      ? 16
                                      : 13,
                                  height:
                                      MediaQuery.of(context).size.width > 391
                                          ? 14
                                          : 12,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                right: 0,
                                bottom: 0,
                                child: Center(
                                  child: Text(
                                    'c',
                                    style: TextStyle(
                                      color: Color(0xFF095A17),
                                      fontSize:
                                          MediaQuery.of(context).size.width >
                                                  391
                                              ? 20
                                              : 15,
                                      fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                // Use FractionalOffset to center the Positioned widget
                                // Adjust the values as needed
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width < 391 ? 2 : 5,
                        ),
                        Text(
                          'لـ دليل القوانين العراقية',
                          style: GoogleFonts.alexandria(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width < 391
                                ? 12
                                : 14,
                            //  fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*
 Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'جميع حقوق التطبيق محفوظة \nل دليل القوانين العراق 2024',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Alexandria',
                  fontSize: 17,
                  color: Color.fromARGB(255, 205, 206, 205),
                ),
              ),
            ),
          ),
 */