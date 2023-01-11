import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamel/Auth/login.dart';
import 'package:shamel/Auth/save_information.dart';
import 'package:shamel/Auth/update_information.dart';
import 'package:shamel/Auth/update_information2.dart';
import 'package:shamel/Auth/update_information3.dart';
import 'package:shamel/Screen/advice.dart';
import 'package:shamel/app/bot.dart';
import 'package:shamel/Auth/enter_pass_code.dart';
import 'package:shamel/Auth/forget_password.dart';
import 'package:shamel/app/lunch_screen.dart';
import 'package:shamel/app/on_bording.dart';
import 'package:shamel/Screen/child.dart';
import 'package:shamel/Screen/contect_with_us.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shamel/Screen/more.dart';
import 'package:shamel/Auth/reset_new_pass.dart';
import 'package:shamel/Screen/sent_order.dart';
import 'package:shamel/Screen/who_us.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(390, 815),
         minTextAdapt: true,
    builder: (context ,child) {
      return MaterialApp(

        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          Locale("ar"),
          Locale("en"),

        ],
        locale: Locale("ar"),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
                  elevation: 0,
                  iconTheme:  IconThemeData(
                      color: Colors.white),

        )),
        initialRoute: '/lunch_screen',
        routes: {
          '/on_bording': (context) => const  OnBording(),
          '/lunch_screen': (context) => const LunchScreen(),
          '/save_information': (context) =>const SaveInformation(),
          '/update_information2': (context) =>const UpdateInformation2(),
          '/update_information3': (context) =>const UpdateInformation3(),
          '/login' :(context) => const Login(),
          '/home' :(context) => const UpdateInformation(),
          '/bot' :(context) => const BottomNavigationBarW(),
          '/child' :(context) => const Child(),
          '/more' :(context) => const More(),
          '/who_us' :(context) => const WhoUs(),
          '/advice' :(context) => const Advice(),
          '/sent_order' :(context) =>  SentOrder(),
          '/update_information' :(context) => const UpdateInformation(),
          '/conect_with_us' :(context) =>const ConectWithUs(),
          '/forget_password' :(context) =>const ForgetPassword(),
          '/enter_pass_code' :(context) =>const EnterPassCode(),
          '/reset_new_pass' :(context) =>const ResetNewPassword(),





        },
      );
    });
        }
}
