import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/lastNewsPage/allLastNewsPage/meddenAllLastNewsPage.dart';
import 'package:lowproject/view/lastNewsPage/allLastNewsPage/topAllLastNewsPage.dart';
import 'package:vibration/vibration.dart';

import '../../../controller/Controller.dart';
import '../../../controller/TypeFontController.dart';
import '../../../controller/sizeFontController.dart';

class allLastNewsPart extends StatelessWidget {
  allLastNewsPart({super.key});
  @override
  Widget build(BuildContext context) {
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());
    HomeController homeController = Get.put(HomeController());
    final arguments = Get.arguments;
    final title = arguments[0] as String;
    final subtitle = arguments[1] as String;
    final imageurl = arguments[2] as String;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Column(
            children: [
              Text(
                'أخر الأخبار',
                style: fontController.typeselected(
                    //  fontFamily: 'Alexandria',
                    fontSize: 20 + sizeFontController.addorNotAdd,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: fontController.typeselected(
                  //  fontFamily: 'Alexandria',
                  color: Colors.white,
                  fontSize: 13 + sizeFontController.addorNotAdd,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Vibration.vibrate(duration: 100);
              Get.back();
              homeController.changehover();
            },
            icon: const Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        leading: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            topAllLastNewsPage(imageurl: imageurl),
            meddenAllLastNewsPage(title: title, subtitle: subtitle),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (MediaQuery.of(context).size.height > 750) {
                      return Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width > 391
                                ? 280
                                : 180,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height > 840 &&
                                    MediaQuery.of(context).size.height < 850
                                ? 40
                                : 0,
                          ),
                        ],
                      );
                    } else if (MediaQuery.of(context).size.height < 750) {
                      return SizedBox(
                        height:
                            MediaQuery.of(context).size.width < 650 ? 45 : 80,
                      );
                    }
                    return Container();
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 22, right: 22),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width > 391 ? 35 : 25,
                  ),
                  child: Text(
                    'شارك المقال لتنفع به غيرك',
                    style: fontController.typeselected(
                        fontSize: MediaQuery.of(context).size.width < 391
                            ? 12 + sizeFontController.addorNotAdd
                            : 11 + sizeFontController.addorNotAdd,
                        color: Color(0xFF524F4F),
                        fontWeight: FontWeight.bold
                        //fontFamily: 'Alexandria',
                        ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cardBottomAllLastNewsPart(
                      colors: Color(0xFF888888),
                      imagesUrl:
                          '''<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.51207 13.9332C6.45478 13.9332 5.51349 13.7891 4.68821 13.5007C3.86293 13.2157 3.16525 12.7964 2.59517 12.2429C2.02509 11.6927 1.59091 11.0199 1.29261 10.2244C0.994318 9.42898 0.84517 8.52415 0.84517 7.50994C0.84517 6.509 0.994318 5.60085 1.29261 4.78551C1.59422 3.97017 2.03338 3.27083 2.61009 2.6875C3.18679 2.10085 3.8911 1.65009 4.72301 1.33523C5.55824 1.02036 6.50947 0.862926 7.5767 0.862926C8.56439 0.862926 9.44602 1.0071 10.2216 1.29545C11.0005 1.58381 11.66 1.99479 12.2003 2.52841C12.7438 3.05871 13.1565 3.6901 13.4382 4.42259C13.7232 5.15175 13.8641 5.95881 13.8608 6.84375C13.8641 7.4536 13.8111 8.01373 13.7017 8.52415C13.5923 9.03456 13.42 9.48035 13.1847 9.86151C12.9527 10.2393 12.6477 10.5393 12.2699 10.7614C11.892 10.9801 11.4347 11.1044 10.8977 11.1342C10.5133 11.1641 10.2017 11.1359 9.96307 11.0497C9.72443 10.9635 9.54214 10.8359 9.41619 10.6669C9.29356 10.4946 9.21402 10.294 9.17756 10.0653H9.1179C9.03835 10.2642 8.88258 10.4448 8.65057 10.6072C8.41856 10.7663 8.13518 10.8906 7.80043 10.9801C7.46899 11.0663 7.116 11.0978 6.74148 11.0746C6.35038 11.0514 5.97917 10.9602 5.62784 10.8011C5.27983 10.642 4.96993 10.4117 4.69815 10.1101C4.42969 9.80848 4.21757 9.43561 4.06179 8.99148C3.90933 8.54735 3.83144 8.03362 3.82812 7.45028C3.83144 6.87358 3.91264 6.37145 4.07173 5.94389C4.23414 5.51633 4.44792 5.15672 4.71307 4.86506C4.98153 4.57339 5.27983 4.3447 5.60795 4.17898C5.93608 4.01326 6.26586 3.9072 6.5973 3.8608C6.97183 3.80445 7.32647 3.80445 7.66122 3.8608C7.99598 3.91714 8.2777 4.00829 8.50639 4.13423C8.7384 4.26018 8.88258 4.39607 8.93892 4.5419H9.00852V3.98508H10.5646V8.83736C10.5679 9.06605 10.6193 9.24337 10.7188 9.36932C10.8182 9.49527 10.9524 9.55824 11.1214 9.55824C11.3501 9.55824 11.5407 9.45715 11.6932 9.25497C11.849 9.05279 11.965 8.7429 12.0412 8.32528C12.1207 7.90767 12.1605 7.37571 12.1605 6.7294C12.1605 6.1063 12.0777 5.55942 11.9119 5.08878C11.7495 4.61482 11.5208 4.21212 11.2259 3.88068C10.9342 3.54593 10.5945 3.27415 10.2067 3.06534C9.81889 2.85653 9.39796 2.70407 8.94389 2.60795C8.49313 2.51184 8.02912 2.46378 7.55185 2.46378C6.72656 2.46378 6.00568 2.58973 5.3892 2.84162C4.77273 3.0902 4.259 3.43987 3.84801 3.89062C3.43703 4.34138 3.12879 4.87003 2.9233 5.47656C2.72112 6.07978 2.61837 6.73769 2.61506 7.45028C2.61837 8.2358 2.72775 8.93182 2.94318 9.53835C3.16193 10.1416 3.48343 10.6487 3.90767 11.0597C4.33191 11.4706 4.85559 11.7822 5.47869 11.9943C6.1018 12.2064 6.81771 12.3125 7.62642 12.3125C8.00758 12.3125 8.38044 12.2843 8.74503 12.228C9.10961 12.175 9.43939 12.1087 9.73438 12.0291C10.0294 11.9529 10.2663 11.8783 10.4453 11.8054L10.9375 13.2472C10.7287 13.3665 10.4453 13.4775 10.0874 13.5803C9.73272 13.6863 9.33168 13.7708 8.88423 13.8338C8.4401 13.9001 7.98272 13.9332 7.51207 13.9332ZM7.28338 9.43892C7.68774 9.43892 8.00923 9.36103 8.24787 9.20526C8.48982 9.04948 8.66217 8.81913 8.76492 8.5142C8.87098 8.20597 8.92069 7.82647 8.91406 7.37571C8.91075 6.97798 8.85938 6.64157 8.75994 6.36648C8.66383 6.08807 8.49645 5.8776 8.25781 5.73509C8.02249 5.58925 7.69437 5.51634 7.27344 5.51634C6.90554 5.51634 6.59233 5.59422 6.33381 5.75C6.0786 5.90578 5.88305 6.12453 5.74716 6.40625C5.61458 6.68466 5.54664 7.01278 5.54332 7.39062C5.54664 7.74195 5.60298 8.07505 5.71236 8.38991C5.82173 8.70147 6.00237 8.95502 6.25426 9.15057C6.50616 9.3428 6.8492 9.43892 7.28338 9.43892Z" fill="white"/>
</svg>''',
                    ),
                    cardBottomAllLastNewsPart(
                      colors: Color(0xFF3FBB50),
                      imagesUrl:
                          '''<svg width="13" height="14" viewBox="0 0 13 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.106 2.03451C9.88389 0.723241 8.25866 0.000737017 6.52715 0C2.9594 0 0.0557011 3.11188 0.0542733 6.93688C0.0537974 8.15955 0.351869 9.35307 0.918275 10.4051L0 14L3.43136 13.0353C4.37677 13.588 5.44122 13.8792 6.52455 13.8797H6.52722C10.0946 13.8797 12.9986 10.7674 13 6.94242C13.0007 5.08876 12.328 3.34577 11.106 2.03451ZM6.52722 12.708H6.52501C5.55966 12.7076 4.61279 12.4297 3.78679 11.9043L3.59032 11.7793L1.55413 12.3518L2.09764 10.2241L1.9697 10.0059C1.43117 9.08788 1.14672 8.02678 1.14714 6.93732C1.14832 3.75813 3.56179 1.17167 6.52935 1.17167C7.96631 1.17225 9.31712 1.77281 10.3329 2.86269C11.3486 3.95257 11.9077 5.40128 11.9071 6.94196C11.9059 10.1214 9.49249 12.708 6.52722 12.708ZM9.47823 8.3896C9.31648 8.30284 8.52133 7.88348 8.37307 7.82563C8.22483 7.76778 8.11702 7.73887 8.00918 7.91241C7.90138 8.08593 7.59142 8.47638 7.49705 8.59205C7.40273 8.70774 7.30839 8.72222 7.14664 8.63544C6.98492 8.54868 6.46379 8.36565 5.84602 7.7751C5.36525 7.3155 5.04063 6.74781 4.94629 6.57429C4.85195 6.40075 4.93626 6.30692 5.01722 6.22052C5.08997 6.14285 5.17895 6.01807 5.25982 5.91683C5.34068 5.81561 5.36763 5.74331 5.42153 5.62764C5.47545 5.51194 5.4485 5.41071 5.40806 5.32395C5.36763 5.23719 5.04419 4.38399 4.9094 4.03693C4.77813 3.69892 4.64478 3.74465 4.54551 3.73936C4.45127 3.73433 4.34335 3.73326 4.23554 3.73326C4.12772 3.73326 3.9525 3.77665 3.80424 3.95017C3.656 4.12371 3.23821 4.54307 3.23821 5.39625C3.23821 6.24943 3.81773 7.07368 3.8986 7.18938C3.97946 7.30507 5.03905 9.05594 6.66146 9.80677C7.04733 9.98535 7.3486 10.092 7.58347 10.1719C7.97093 10.3038 8.32351 10.2852 8.60219 10.2406C8.91292 10.1908 9.55906 9.82125 9.69386 9.41634C9.82863 9.01143 9.82863 8.66437 9.7882 8.59207C9.74778 8.51977 9.63996 8.47638 9.47823 8.3896Z" fill="white"/>
</svg>
''',
                    ),
                    cardBottomAllLastNewsPart(
                      colors: Color(0xFF0077B5),
                      imagesUrl:
                          '''<svg width="13" height="11" viewBox="0 0 13 11" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M0.696023 11V3.36364H3.44034V11H0.696023ZM2.06818 2.56818C1.69697 2.56818 1.37879 2.44555 1.11364 2.20028C0.848485 1.95502 0.715909 1.66004 0.715909 1.31534C0.715909 0.970644 0.848485 0.675663 1.11364 0.430397C1.37879 0.185132 1.69697 0.0625 2.06818 0.0625C2.44271 0.0625 2.76089 0.185132 3.02273 0.430397C3.28788 0.675663 3.42045 0.970644 3.42045 1.31534C3.42045 1.66004 3.28788 1.95502 3.02273 2.20028C2.76089 2.44555 2.44271 2.56818 2.06818 2.56818ZM7.58292 6.70455V11H4.8386V3.36364H7.44371V4.81534H7.52326C7.68898 4.33144 7.98065 3.95194 8.39826 3.67685C8.81919 3.40175 9.30972 3.2642 9.86985 3.2642C10.4101 3.2642 10.8791 3.38849 11.2768 3.63707C11.6779 3.88234 11.9877 4.22041 12.2065 4.65128C12.4286 5.08215 12.5379 5.57434 12.5346 6.12784V11H9.79031V6.70455C9.79362 6.3267 9.6975 6.03007 9.50195 5.81463C9.30972 5.5992 9.04125 5.49148 8.69656 5.49148C8.47118 5.49148 8.27397 5.54119 8.10494 5.64062C7.93922 5.73674 7.81161 5.87595 7.72212 6.05824C7.63263 6.23722 7.58623 6.45265 7.58292 6.70455Z" fill="white"/>
</svg>
''',
                    ),
                    cardBottomAllLastNewsPart(
                      colors: Color(0xFFE41E25),
                      imagesUrl:
                          '''<svg width="14" height="13" viewBox="0 0 14 13" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_4661_57)">
<path d="M0 6.50065C0.0364036 4.65577 0.737874 3.11511 2.10581 1.87999C3.47375 0.644865 5.10491 0.0169017 7.0007 0C9.0421 0.0338034 10.7153 0.681268 12.0188 1.94239C13.3223 3.20352 13.9832 4.72337 14.0014 6.50065C13.965 8.32863 13.2635 9.86539 11.8956 11.1096C10.5277 12.3525 8.89649 12.9831 7.0007 13C6.34403 13 5.68877 12.9064 5.0321 12.7205C5.15952 12.5346 5.28693 12.3226 5.41434 12.086C5.55996 11.7987 5.74197 11.2565 5.9618 10.4608C6.0164 10.2411 6.09901 9.94469 6.20822 9.57156C6.33563 9.77438 6.55406 9.9603 6.86489 10.1306C7.68537 10.4855 8.55066 10.4517 9.46215 10.0292C10.41 9.52085 11.0667 8.73427 11.4307 7.66817C11.7584 6.55135 11.7178 5.51385 11.3075 4.55826C10.8973 3.60136 10.1636 2.91229 9.10651 2.48845C7.77638 2.13351 6.48125 2.17122 5.22392 2.60286C3.9666 3.0345 3.09151 3.77558 2.59866 4.82478C2.47125 5.21352 2.39424 5.59966 2.36624 5.9806C2.33823 6.36154 2.35224 6.73337 2.40684 7.09741C2.46145 7.46145 2.59866 7.78778 2.81708 8.07511C3.0355 8.36244 3.32813 8.58346 3.69217 8.73557C3.78318 8.76938 3.85599 8.76938 3.91059 8.73557C3.9834 8.70177 4.05621 8.56656 4.12901 8.32993C4.20182 8.09331 4.22982 7.93209 4.21162 7.84758C4.19342 7.81378 4.15702 7.75398 4.10241 7.66947C3.72017 7.09351 3.59136 6.48895 3.72017 5.85449C3.84758 5.22002 4.13041 4.68177 4.56726 4.24232C5.24212 3.68327 6.0304 3.37904 6.93209 3.32833C7.83378 3.27763 8.60526 3.50645 9.24232 4.0135C9.58816 4.38534 9.81218 4.83388 9.91159 5.35914C10.011 5.88439 10.0124 6.38754 9.91159 6.86989C9.81078 7.35224 9.63296 7.80468 9.37814 8.22852C8.92169 8.88899 8.38404 9.22702 7.76518 9.24392C7.40114 9.22702 7.10431 9.09571 6.87609 8.84999C6.64786 8.60426 6.57926 8.32083 6.67167 7.9997C6.70807 7.81378 6.81728 7.44975 6.9993 6.90759C7.18132 6.36544 7.28213 5.9598 7.30033 5.68937C7.24573 5.0458 6.92649 4.71557 6.34263 4.69867C5.88619 4.74937 5.55016 4.94049 5.33033 5.26943C5.11051 5.59836 4.9929 5.9767 4.9747 6.39924C5.0293 6.89069 5.11191 7.22872 5.22112 7.41464C5.0209 8.17652 4.86549 8.78628 4.75628 9.24263C4.71987 9.36094 4.61906 9.72497 4.45525 10.3347C4.29143 10.9445 4.20042 11.4099 4.18222 11.7311V12.4422C2.88849 11.8832 1.86639 11.0758 1.12011 10.0175C0.373837 8.9592 0 7.78648 0 6.50065Z" fill="white"/>
</g>
<defs>
<clipPath id="clip0_4661_57">
<rect width="14" height="13" fill="white"/>
</clipPath>
</defs>
</svg>
''',
                    ),
                    cardBottomAllLastNewsPart(
                      colors: Color(0xFF1F84CF),
                      imagesUrl:
                          '''<svg width="14" height="11" viewBox="0 0 14 11" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M10.2024 3.50411C10.6318 3.09541 11.0581 2.14176 9.26904 3.29976C7.59781 4.39459 5.91526 5.47366 4.22163 6.53682C3.96372 6.64783 3.68491 6.70807 3.40193 6.71392C3.11896 6.71978 2.83766 6.67112 2.57493 6.57088C1.50151 6.26435 0.248411 5.85565 0.248411 5.85565C0.248411 5.85565 -0.607215 5.34403 0.857461 4.79909C0.857461 4.79909 7.04986 2.38018 9.19748 1.52797C10.0204 1.18738 12.8121 0.0974984 12.8121 0.0974984C12.8121 0.0974984 14.101 -0.380064 13.9936 0.778673C13.9579 1.2555 13.6716 2.92585 13.3854 4.73097C12.9552 7.28611 12.4901 10.0804 12.4901 10.0804C12.4901 10.0804 12.4185 10.8638 11.8102 11C11.1591 10.9895 10.53 10.7739 10.0212 10.3869C9.87809 10.2848 7.33688 8.75138 6.4058 8.00209C6.31109 7.94102 6.23415 7.85814 6.18213 7.76115C6.1301 7.66417 6.1047 7.55624 6.10827 7.4474C6.11184 7.33856 6.14427 7.23235 6.20255 7.13865C6.26083 7.04495 6.34305 6.9668 6.44159 6.91147C7.71861 5.79932 8.97247 4.66331 10.2024 3.50411Z" fill="white"/>
</svg>
''',
                    ),
                    cardBottomAllLastNewsPart(
                      colors: Color(0xFF00ACEE),
                      imagesUrl:
                          '''<svg width="12" height="10" viewBox="0 0 12 10" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12 1.19807C11.549 1.39836 11.0721 1.53076 10.584 1.59116C11.0989 1.27627 11.4848 0.780889 11.67 0.196914C11.1861 0.491771 10.6565 0.699516 10.104 0.811118C9.73473 0.401181 9.24298 0.128305 8.70589 0.0352871C8.16879 -0.057731 7.61673 0.0343701 7.13627 0.297146C6.65582 0.559921 6.27416 0.978508 6.05114 1.48726C5.82813 1.99601 5.77638 2.56614 5.904 3.10824C4.92566 3.05759 3.96866 2.79681 3.09519 2.34286C2.22172 1.88891 1.45131 1.25193 0.834 0.473306C0.617483 0.860358 0.503712 1.29869 0.504 1.74471C0.503232 2.15892 0.60253 2.56689 0.793053 2.93231C0.983576 3.29773 1.25941 3.60926 1.596 3.83915C1.20479 3.82825 0.821931 3.72079 0.48 3.5259V3.55661C0.482932 4.13697 0.681597 4.69847 1.04239 5.14615C1.40318 5.59383 1.90395 5.9002 2.46 6.01343C2.24595 6.08011 2.02373 6.11527 1.8 6.11785C1.64513 6.11599 1.49065 6.10162 1.338 6.07485C1.49635 6.57408 1.80277 7.01037 2.21464 7.32301C2.62652 7.63565 3.12335 7.80909 3.636 7.81919C2.77032 8.51648 1.70153 8.89703 0.6 8.90019C0.399441 8.90086 0.199041 8.88856 0 8.86334C1.12466 9.60668 2.43529 10.0013 3.774 9.99962C4.69782 10.0094 5.61428 9.83072 6.46987 9.47391C7.32546 9.11709 8.10301 8.58933 8.75712 7.92145C9.41123 7.25358 9.92878 6.45897 10.2795 5.58404C10.6303 4.70912 10.8072 3.77142 10.8 2.82571C10.8 2.72129 10.8 2.61074 10.8 2.50018C11.2708 2.14075 11.6769 1.70013 12 1.19807Z" fill="white"/>
</svg>
''',
                    ),
                    cardBottomAllLastNewsPart(
                      colors: Color(0xFF3B5999),
                      imagesUrl:
                          '''<svg width="6" height="12" viewBox="0 0 6 12" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.91434 1.99201H6V0.0840179C5.47435 0.0272262 4.94619 -0.000812568 4.41771 1.79184e-05C2.84697 1.79184e-05 1.77286 0.996016 1.77286 2.82001V4.39201H0V6.52801H1.77286V12H3.89798V6.52801H5.66506L5.9307 4.39201H3.89798V3.03001C3.89798 2.40001 4.05967 1.99201 4.91434 1.99201Z" fill="white"/>
</svg>
''',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class cardBottomAllLastNewsPart extends StatelessWidget {
  cardBottomAllLastNewsPart({
    super.key,
    required this.colors,
    required this.imagesUrl,
  });
  var colors;
  var imagesUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Container(
        width: MediaQuery.of(context).size.width > 391 ? 50 : 45,
        height: MediaQuery.of(context).size.width > 391 ? 18 : 16,
        decoration: ShapeDecoration(
          color: colors,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        ),
        child: Center(
          child: SvgPicture.string(imagesUrl),
        ),
      ),
    );
  }
}

                 /* child: Image.asset(
                    'asset/enlarge_Captu222re.png',
                    width: MediaQuery.of(context).size.width < 391 ? 340 : 389,
                    height: 34,
                  ),*/