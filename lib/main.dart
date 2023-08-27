import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/app_colors.dart';
import 'package:login_page/card_meetings.dart';
import 'package:login_page/side.dart';
import 'api_data.dart';
import 'package:login_page/My_Model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  _MyScreenState createState() => _MyScreenState();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext c, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Main Page ',
        home: MyScreen(),
      ),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<String> titles = [
    'الرئيسية',
    'الأخبار',
    'أخبار هامة',
    'ترتيب الأخبار',
    'العروض',
    'الديوانيات'
  ];
  List<String> iconPaths = [
    'assets/images/chart-square.svg',
    'assets/images/vuesax-linear-document-text.svg',
    'assets/images/vuesax-linear-danger.svg',
    'assets/images/vuesax-linear-task-square.svg',
    'assets/images/vuesax-linear-receipt-disscount.svg',
    'assets/images/vuesax-linear-calendar.svg'
  ];
  int selectedIndex = 0;
  List<Widget>? futureData;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<List<Widget>?> getData() async {
    var data = await MeetingsAPI().getData();
    return futureData = data?.map((e) => CardMeetings(data: e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fillColor,
      body: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(80.w, 80.h, 16.w, 16.h),
                child: Container(
                  width: 1464.w,
                  height: 92.h,
                  decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: AppColors.shadowColor.withOpacity(.2),
                            blurRadius: 8,
                            offset: const Offset(0, 4))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(16.r)),
                      color: Colors.white),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 40.w,
                            ),
                            SizedBox(
                              width: 128.w,
                              height: 56.h,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28.0.r),
                                      ),
                                      side: const BorderSide(
                                          color: AppColors.primaryColor)),
                                  child: Text(
                                    'تسجيل الخروج',
                                    style: TextStyle(
                                        fontSize: 16.0.sp,
                                        color: AppColors.primaryColor),
                                  )),
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.language,
                                size: 24.r,
                              ),
                              color: AppColors.primaryColor,
                            ),
                            Text(
                              'العربية',
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16.sp),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Text(
                              ' 40 C الأربعاء 12 يوليو  ',
                              style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 16.sp),
                            ),
                            const Spacer(),
                            RichText(
                              text: TextSpan(
                                  text: ' أهلًا ',
                                  style: TextStyle(
                                      color: AppColors.darkGreyColor,
                                      fontSize: 24.sp),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'إبراهيم',
                                        style: TextStyle(
                                            color: AppColors.primaryColor,
                                            fontSize: 24.sp))
                                  ]),
                            ),
                            SizedBox(
                              width: 24.sp,
                            )
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(1305, 0, 0, 0),
                            //
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.w, 0.h, 16.w, 16.h),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: AppColors.shadowColor.withOpacity(.2),
                            blurRadius: 8,
                            offset: const Offset(0, 4))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(16.r)),
                      color: Colors.white),
                  width: 1464.w,
                  height: 808.h,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(40.w, 32.h, 0.w, 0.h),
                              child: SizedBox(
                                width: 128.w,
                                height: 56.h,
                                child: ElevatedButton.icon(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(28.r)),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              AppColors.primaryColor)),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 24.r,
                                  ),
                                  label: Text(
                                    'إضافة',
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(1127.w, 32.h, 0, 0),
                              child: Text(
                                'الديوانيات',
                                style: TextStyle(
                                    fontSize: 32.sp,
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: SizedBox(
                            width: 1384.w,
                            child: const Divider(
                              color: AppColors.darkGreyColor,
                            ),
                          ),
                        ),
                        Expanded(
                          child: FutureBuilder(
                            future: getData(),
                            builder: (context, snapShot) {
                              if (snapShot.hasData) {
                                return GridView.count(
                                  crossAxisCount: 3,
                                  childAspectRatio: 2.4,
                                  children: futureData ?? [],
                                );
                              } else if (snapShot.hasError) {
                                return Text('${snapShot.error}');
                              }
                              return const CircularProgressIndicator();
                            },
                          ),
                          // child: CardMeetings(data: ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.w, 80.h, 80.w, 80.h),
            child: Container(
              width: 280.w,
              height: 930.h,
              decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppColors.shadowColor.withOpacity(.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo and Name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'جمعية ضاحية\nجابر العلي',
                        style: TextStyle(
                            fontSize: 22.sp, color: AppColors.primaryColor),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.w, 24.h, 24.w, 0.h),
                        child: Container(
                          width: 65.w,
                          height: 65.h,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/gaber_alaly-logo 3.png',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),

                  Center(
                    child: SizedBox(
                      width: 232.w,
                      child: const Divider(
                        color: AppColors.darkGreyColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            height: 16.h,
                          ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: iconPaths.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            selectedIndex = index;
                            setState(() {});
                          },
                          child: SideNavItem(
                            isSelected: selectedIndex == index ? true : false,
                            iconPath: iconPaths[
                                index], //'assets/images/chart-square.svg'
                            title: titles[index], // 'الرئيسية'
                          ),
                        );
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
