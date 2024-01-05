import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lowproject/controller/Controller.dart';
import 'package:lowproject/view/applicationLastVertion/applicationLastVertion.dart';
import 'package:lowproject/view/color.dart';
import 'package:lowproject/view/setting/conectMe/conectMePage.dart';
import 'package:lowproject/view/setting/fontPage/fontPageHome.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibration/vibration.dart';
import '../../controller/TypeFontController.dart';
import '../../controller/sizeFontController.dart';

class settingPage extends StatelessWidget {
  settingPage({super.key});
  var list = [
    '''<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M29.5428 15.7314C29.5428 18.463 28.7328 21.1333 27.2152 23.4046C25.6976 25.6758 23.5405 27.4461 21.0168 28.4914C18.4931 29.5368 15.7161 29.8103 13.037 29.2774C10.3578 28.7445 7.89687 27.4291 5.96531 25.4975C4.03375 23.5659 2.71835 21.105 2.18543 18.4258C1.65252 15.7467 1.92603 12.9697 2.97138 10.446C4.01673 7.92228 5.78697 5.76524 8.05824 4.24762C10.3295 2.73001 12.9998 1.91998 15.7314 1.91998C17.5452 1.91998 19.3412 2.27722 21.0168 2.97131C22.6925 3.6654 24.2151 4.68274 25.4976 5.96524C26.7801 7.24775 27.7974 8.77031 28.4915 10.446C29.1856 12.1217 29.5428 13.9176 29.5428 15.7314Z" stroke="#F6FFFA" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M33.0001 32.9999L25.4907 25.4906" stroke="#F6FFFA" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''',
    '''<svg width="34" height="34" viewBox="0 0 34 34" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M32.9947 11.2713C32.9947 11.2713 32.9947 11.2713 32.9947 11.186C31.7945 7.90605 29.6168 5.07419 26.7561 3.07354C23.8954 1.07289 20.4898 0 17 0C13.5102 0 10.1046 1.07289 7.24391 3.07354C4.38321 5.07419 2.20546 7.90605 1.00526 11.186C1.00526 11.186 1.00526 11.186 1.00526 11.2713C-0.335087 14.9726 -0.335087 19.0274 1.00526 22.7287C1.00526 22.7287 1.00526 22.7287 1.00526 22.814C2.20546 26.0939 4.38321 28.9258 7.24391 30.9265C10.1046 32.9271 13.5102 34 17 34C20.4898 34 23.8954 32.9271 26.7561 30.9265C29.6168 28.9258 31.7945 26.0939 32.9947 22.814C32.9947 22.814 32.9947 22.814 32.9947 22.7287C34.3351 19.0274 34.3351 14.9726 32.9947 11.2713ZM3.78177 20.4099C3.19109 18.1751 3.19109 15.8249 3.78177 13.5901H6.95006C6.67757 15.8552 6.67757 18.1448 6.95006 20.4099H3.78177ZM5.17854 23.8199H7.56327C7.96309 25.3405 8.53456 26.8105 9.26665 28.2017C7.59615 27.0626 6.19971 25.5659 5.17854 23.8199ZM7.56327 10.1801H5.17854C6.18502 8.43947 7.5636 6.94315 9.21555 5.79832C8.50108 7.1917 7.94678 8.66169 7.56327 10.1801ZM15.2626 30.1283C13.1704 28.5916 11.701 26.3522 11.1233 23.8199H15.2626V30.1283ZM15.2626 20.4099H10.3909C10.073 18.1478 10.073 15.8522 10.3909 13.5901H15.2626V20.4099ZM15.2626 10.1801H11.1233C11.701 7.64782 13.1704 5.40843 15.2626 3.8717V10.1801ZM28.7533 10.1801H26.3686C25.9688 8.65954 25.3973 7.18948 24.6652 5.79832C26.3357 6.93736 27.7322 8.43411 28.7533 10.1801ZM18.6693 3.8717C20.7615 5.40843 22.2308 7.64782 22.8085 10.1801H18.6693V3.8717ZM18.6693 30.1283V23.8199H22.8085C22.2308 26.3522 20.7615 28.5916 18.6693 30.1283ZM23.541 20.4099H18.6693V13.5901H23.541C23.8588 15.8522 23.8588 18.1478 23.541 20.4099ZM24.7163 28.2017C25.4484 26.8105 26.0199 25.3405 26.4197 23.8199H28.8044C27.7833 25.5659 26.3868 27.0626 24.7163 28.2017ZM30.1501 20.4099H26.9818C27.1203 19.2786 27.1886 18.1398 27.1862 17C27.1881 15.8602 27.1198 14.7214 26.9818 13.5901H30.1501C30.7408 15.8249 30.7408 18.1751 30.1501 20.4099Z" fill="white"/>
</svg>''',
    '''<svg width="38" height="38" viewBox="0 0 38 38" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M17.651 25.251C17.5693 25.3413 17.4932 25.4365 17.423 25.536C17.3511 25.6419 17.2936 25.7569 17.252 25.878C17.1972 25.9857 17.1588 26.101 17.138 26.22C17.1287 26.3465 17.1287 26.4735 17.138 26.6C17.1316 26.8492 17.1836 27.0965 17.29 27.322C17.3753 27.5578 17.5115 27.7719 17.6888 27.9492C17.8661 28.1265 18.0802 28.2627 18.316 28.348C18.5434 28.4485 18.7894 28.5004 19.038 28.5004C19.2867 28.5004 19.5326 28.4485 19.76 28.348C19.9958 28.2627 20.2099 28.1265 20.3872 27.9492C20.5645 27.7719 20.7007 27.5578 20.786 27.322C20.8704 27.091 20.9091 26.8458 20.9 26.6C20.9015 26.3499 20.8535 26.1021 20.759 25.8706C20.6644 25.6391 20.5251 25.4285 20.349 25.251C20.1724 25.0729 19.9622 24.9316 19.7307 24.8351C19.4992 24.7386 19.2508 24.689 19 24.689C18.7492 24.689 18.5008 24.7386 18.2693 24.8351C18.0378 24.9316 17.8276 25.0729 17.651 25.251ZM19 0C15.2422 0 11.5687 1.11433 8.44417 3.20208C5.31964 5.28982 2.88436 8.25722 1.4463 11.729C0.0082324 15.2008 -0.368031 19.0211 0.365088 22.7067C1.09821 26.3923 2.90778 29.7778 5.56498 32.435C8.22218 35.0922 11.6077 36.9018 15.2933 37.6349C18.9789 38.368 22.7992 37.9918 26.271 36.5537C29.7428 35.1156 32.7102 32.6804 34.7979 29.5558C36.8857 26.4313 38 22.7578 38 19C38 16.5049 37.5086 14.0342 36.5537 11.729C35.5989 9.42383 34.1993 7.32928 32.435 5.56497C30.6707 3.80066 28.5762 2.40113 26.271 1.44629C23.9658 0.491449 21.4951 0 19 0ZM19 34.2C15.9937 34.2 13.055 33.3085 10.5553 31.6383C8.05571 29.9681 6.10749 27.5942 4.95704 24.8168C3.80659 22.0393 3.50558 18.9831 4.09207 16.0346C4.67857 13.0861 6.12623 10.3777 8.25198 8.25198C10.3777 6.12622 13.0861 4.67856 16.0346 4.09206C18.9831 3.50557 22.0394 3.80658 24.8168 4.95703C27.5942 6.10748 29.9681 8.0557 31.6383 10.5553C33.3085 13.055 34.2 15.9937 34.2 19C34.2 23.0313 32.5986 26.8975 29.748 29.748C26.8975 32.5986 23.0313 34.2 19 34.2ZM19 9.5C17.9988 9.49936 17.0151 9.76243 16.1479 10.2627C15.2807 10.763 14.5606 11.483 14.06 12.35C13.9225 12.5663 13.8302 12.8081 13.7886 13.0609C13.747 13.3138 13.757 13.5724 13.818 13.8213C13.879 14.0702 13.9896 14.3042 14.1434 14.5092C14.2971 14.7142 14.4907 14.886 14.7126 15.0143C14.9345 15.1425 15.18 15.2245 15.4343 15.2554C15.6887 15.2863 15.9467 15.2655 16.1928 15.1941C16.4389 15.1227 16.668 15.0022 16.8664 14.84C17.0647 14.6777 17.2282 14.4771 17.347 14.25C17.5144 13.96 17.7554 13.7195 18.0457 13.5527C18.336 13.3858 18.6652 13.2987 19 13.3C19.5039 13.3 19.9872 13.5002 20.3435 13.8565C20.6998 14.2128 20.9 14.6961 20.9 15.2C20.9 15.7039 20.6998 16.1872 20.3435 16.5435C19.9872 16.8998 19.5039 17.1 19 17.1C18.4961 17.1 18.0128 17.3002 17.6565 17.6565C17.3002 18.0128 17.1 18.4961 17.1 19V20.9C17.1 21.4039 17.3002 21.8872 17.6565 22.2435C18.0128 22.5998 18.4961 22.8 19 22.8C19.5039 22.8 19.9872 22.5998 20.3435 22.2435C20.6998 21.8872 20.9 21.4039 20.9 20.9V20.558C22.1566 20.102 23.213 19.2189 23.8845 18.063C24.556 16.9072 24.7998 15.5521 24.5735 14.2346C24.3471 12.9171 23.6649 11.7211 22.6461 10.8557C21.6273 9.99022 20.3367 9.51037 19 9.5Z" fill="white"/>
</svg>
''',
    '''<svg width="34" height="34" viewBox="0 0 34 34" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M33.4262 14.0237L18.1223 0.422875C17.812 0.150315 17.413 0 17 0C16.587 0 16.188 0.150315 15.8777 0.422875L0.573784 14.0237C0.313678 14.2538 0.130256 14.5579 0.0481779 14.8953C-0.0338998 15.2327 -0.0106972 15.5871 0.114666 15.9109C0.237979 16.2304 0.454932 16.5052 0.73711 16.6993C1.01929 16.8935 1.35353 16.9979 1.69607 16.9989H3.39651V32.2999C3.39651 32.7508 3.57566 33.1832 3.89456 33.5021C4.21345 33.8209 4.64596 34 5.09694 34H28.9031C29.354 34 29.7866 33.8209 30.1054 33.5021C30.4243 33.1832 30.6035 32.7508 30.6035 32.2999V16.9989H32.3039C32.6465 16.9979 32.9807 16.8935 33.2629 16.6993C33.5451 16.5052 33.762 16.2304 33.8853 15.9109C34.0107 15.5871 34.0339 15.2327 33.9518 14.8953C33.8697 14.5579 33.6863 14.2538 33.4262 14.0237ZM18.7004 30.5998H15.2996V25.4995C15.2996 25.0486 15.4787 24.6161 15.7976 24.2973C16.1165 23.9785 16.549 23.7994 17 23.7994C17.451 23.7994 17.8835 23.9785 18.2024 24.2973C18.5213 24.6161 18.7004 25.0486 18.7004 25.4995V30.5998ZM27.2026 30.5998H22.1013V25.4995C22.1013 24.1468 21.5639 22.8495 20.6072 21.893C19.6505 20.9365 18.353 20.3991 17 20.3991C15.647 20.3991 14.3495 20.9365 13.3928 21.893C12.4361 22.8495 11.8987 24.1468 11.8987 25.4995V30.5998H6.79738V16.9989H27.2026V30.5998ZM6.16822 13.5987L17 3.9761L27.8318 13.5987H6.16822Z" fill="white"/>
</svg>
''',
    '''<svg width="34" height="30" viewBox="0 0 34 30" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M16.9616 21.0306C16.6577 21.0306 16.3606 21.1183 16.108 21.2826C15.8553 21.4468 15.6584 21.6803 15.5421 21.9534C15.4258 22.2266 15.3954 22.5271 15.4546 22.8171C15.5139 23.1071 15.6603 23.3735 15.8751 23.5825C16.09 23.7916 16.3638 23.9339 16.6618 23.9916C16.9599 24.0493 17.2688 24.0197 17.5495 23.9066C17.8303 23.7934 18.0702 23.6018 18.2391 23.356C18.4079 23.1102 18.498 22.8211 18.498 22.5255C18.498 22.129 18.3361 21.7488 18.048 21.4685C17.7598 21.1881 17.369 21.0306 16.9616 21.0306ZM33.3554 23.2281L20.987 2.30004C20.5873 1.60271 20.0034 1.02187 19.2957 0.617526C18.588 0.213183 17.7822 0 16.9616 0C16.1409 0 15.3351 0.213183 14.6274 0.617526C13.9197 1.02187 13.3359 1.60271 12.9361 2.30004L0.644565 23.2281C0.230949 23.9068 0.00869763 24.6796 0.000250134 25.4686C-0.00819736 26.2576 0.197458 27.0348 0.596452 27.7217C0.995447 28.4086 1.57366 28.981 2.27271 29.3809C2.97175 29.7809 3.76689 29.9944 4.57785 29.9998H29.3453C30.1627 30.0076 30.9676 29.8038 31.6774 29.4092C32.3872 29.0146 32.9764 28.4434 33.3845 27.7542C33.7926 27.0651 34.005 26.2827 33.9999 25.4873C33.9948 24.6919 33.7723 23.9122 33.3554 23.2281ZM30.6973 26.2178C30.5627 26.4509 30.3662 26.6446 30.1284 26.7787C29.8905 26.9128 29.6201 26.9824 29.3453 26.9802H4.57785C4.303 26.9824 4.03257 26.9128 3.79475 26.7787C3.55694 26.6446 3.36046 26.4509 3.22578 26.2178C3.09093 25.9905 3.01994 25.7328 3.01994 25.4704C3.01994 25.208 3.09093 24.9502 3.22578 24.7229L15.5173 3.7949C15.6462 3.55004 15.8421 3.34454 16.0834 3.20105C16.3247 3.05756 16.602 2.98163 16.8847 2.98163C17.1675 2.98163 17.4448 3.05756 17.6861 3.20105C17.9273 3.34454 18.1232 3.55004 18.2522 3.7949L30.6205 24.7229C30.7729 24.9469 30.8605 25.2067 30.874 25.475C30.8876 25.7434 30.8265 26.0103 30.6973 26.2477V26.2178ZM16.9616 9.07175C16.5541 9.07175 16.1633 9.22924 15.8751 9.50958C15.587 9.78992 15.4251 10.1701 15.4251 10.5666V16.546C15.4251 16.9425 15.587 17.3227 15.8751 17.6031C16.1633 17.8834 16.5541 18.0409 16.9616 18.0409C17.369 18.0409 17.7598 17.8834 18.048 17.6031C18.3361 17.3227 18.498 16.9425 18.498 16.546V10.5666C18.498 10.1701 18.3361 9.78992 18.048 9.50958C17.7598 9.22924 17.369 9.07175 16.9616 9.07175Z" fill="white"/>
</svg>
''',
    '''<svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M6 32.0023H14.48C14.7432 32.0038 15.0041 31.9534 15.2478 31.8539C15.4915 31.7544 15.7131 31.6078 15.9 31.4225L29.74 17.5665L35.42 12.0081C35.6075 11.8222 35.7562 11.6011 35.8578 11.3575C35.9593 11.1138 36.0116 10.8525 36.0116 10.5885C36.0116 10.3246 35.9593 10.0632 35.8578 9.8196C35.7562 9.57595 35.6075 9.35481 35.42 9.16894L26.94 0.591425C26.7541 0.404023 26.5329 0.255277 26.2892 0.153769C26.0454 0.0522613 25.784 0 25.52 0C25.256 0 24.9946 0.0522613 24.7508 0.153769C24.5071 0.255277 24.2859 0.404023 24.1 0.591425L18.46 6.24978L4.58 20.1058C4.39464 20.2926 4.24799 20.5142 4.14846 20.7578C4.04893 21.0014 3.99848 21.2622 4 21.5254V30.0029C4 30.5332 4.21071 31.0417 4.58579 31.4167C4.96086 31.7917 5.46957 32.0023 6 32.0023ZM25.52 4.8302L31.18 10.4886L28.34 13.3277L22.68 7.66937L25.52 4.8302ZM8 22.3451L19.86 10.4886L25.52 16.1469L13.66 28.0035H8V22.3451ZM38 36.0012H2C1.46957 36.0012 0.960859 36.2118 0.585786 36.5868C0.210714 36.9617 0 37.4703 0 38.0006C0 38.5309 0.210714 39.0394 0.585786 39.4144C0.960859 39.7893 1.46957 40 2 40H38C38.5304 40 39.0391 39.7893 39.4142 39.4144C39.7893 39.0394 40 38.5309 40 38.0006C40 37.4703 39.7893 36.9617 39.4142 36.5868C39.0391 36.2118 38.5304 36.0012 38 36.0012Z" fill="white"/>
</svg>''',
  ];
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    FontController fontController = Get.put(FontController());
    SizeFontController sizeFontController = Get.put(SizeFontController());

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: grencolor,
        title: Center(
          child: Text(
            'الأعدادات',
            style: fontController.typeselected(
                //  fontFamily: 'Alexandria',
                fontSize: 20 + sizeFontController.addorNotAdd,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Vibration.vibrate(duration: 100);
              homeController.changescreen(6);
            },
            icon: const Icon(
              Icons.chevron_right_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            cardSettingPart(
              image: list[5],
              title: 'تغيير الخط',
              subtitle: 'تغيير نمط وحجم الخط',
              function: () {
                Vibration.vibrate(duration: 100);
                Get.to(fontPageHome());
              },
              sizesearch: false,
            ),
            cardSettingPart(
              image: list[1],
              title: 'تغيير اللغة',
              subtitle: 'تغيير لغة التطبيق',
              function: () {
                Vibration.vibrate(duration: 100);
              },
              sizesearch: false,
            ),
            cardSettingPart(
              image: list[2],
              title: 'الدعم الفني',
              subtitle: 'طلب مساعدة من أدارة التطبيق',
              function: () {
                Vibration.vibrate(duration: 100);
              },
              sizesearch: false,
            ),
            cardSettingPart(
              image: list[3],
              title: 'من نحن',
              subtitle: 'نبذة تعريفية عن التطبيق',
              function: () {
                Vibration.vibrate(duration: 100);
              },
              sizesearch: false,
            ),
            cardSettingPart(
              image: list[4],
              title: 'الشروط والأحكام',
              subtitle: 'شروط وأحكام التطبيق',
              function: () {
                Vibration.vibrate(duration: 100);
                Get.to(applicationLastVertion());
              },
              sizesearch: false,
            ),
            cardSettingPart(
              image: list[0],
              title: 'تابعنا على',
              subtitle: 'تابعنا على مواقع التواصل الأجتماعي',
              function: () {
                Vibration.vibrate(duration: 100);
                Get.to(conectMePage());
              },
              sizesearch: true,
            ),
          ],
        ),
      ),
    );
  }
}

class cardSettingPart extends StatelessWidget {
  cardSettingPart({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.function,
    required this.sizesearch,
  });
  var image;
  String title;
  String subtitle;
  bool sizesearch;
  var function;
  @override
  Widget build(BuildContext context) {
    SizeFontController sizeFontController = Get.put(SizeFontController());
    FontController fontController = Get.put(FontController());
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: function,
        child: Container(
          width: 389,
          height: 69,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: grencolor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Text(
                          title,
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: 21 + sizeFontController.addorNotAdd,
                            //  fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          subtitle,
                          style: fontController.typeselected(
                            color: Colors.white,
                            fontSize: 12.5 + sizeFontController.addorNotAdd,
                            fontWeight: FontWeight.w500,
                            //  fontFamily: 'Alexandria',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 75,
                    height: 69,
                    decoration: BoxDecoration(
                        color: Colors.green[700],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: SvgPicture.string(
                        image,
                        width: 35,
                        height: 35,
                      ),
                      /* child: Padding(
                        padding: EdgeInsets.all(sizesearch == true ? 18 : 0),
                        child: SvgPicture.asset(
                          image,
                        ),
                      ),*/
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
