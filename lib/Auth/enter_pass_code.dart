import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';

class EnterPassCode extends StatefulWidget {
  const EnterPassCode({Key? key}) : super(key: key);

  @override
  State<EnterPassCode> createState() => _EnterPassCodeState();
}

class _EnterPassCodeState extends State<EnterPassCode> {

  // late TextEditingController _number1 , number2 ,number3, number4 ,number5;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _number1 = TextEditingController();
  //   number2 = TextEditingController();
  //   number3 = TextEditingController();
  //   number4 = TextEditingController();
  //   number5 = TextEditingController();
  // }
  // @override
  // void dispose() {
  //   _number1.dispose();
  //   number2.dispose();
  //   number3.dispose();
  //   number4.dispose();
  //   number5.dispose();
  //
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },
        icon:const Icon(Icons.arrow_back_ios ,color: Colors.black,size: 16,),),
          title:const Text( "استرجاع كلمة المرور" ,style: TextStyle(fontSize: 17 ,color: Colors.black),)),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        children: [
         const SizedBox(height: 150,),
          context.text(text: "تحقق",
              size: 18, color: context.blackColor ,
              wieght: FontWeight.bold ,align: TextAlign.start),
          context.text(text: "سيتم ارسال كود التحقق لك على الايميل الخاص بك",
              size: 13, color: (0xFF747474) ,align: TextAlign.start, wieght: FontWeight.w400),
         const SizedBox(height: 12,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               contaner(),
               contaner(),
               contaner(),
               contaner(),
               contaner(),
             ],),
         const SizedBox(height: 23,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
            context.text(text: "أرسل الكود مرة أخرى", size: 14, color:context.greyColor),
            const SizedBox(width: 20,),

            context.text(text: "00:48", size: 14, color: context.greenColor)

          ],),
          const SizedBox(height: 23,),
          Center(child:  ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(context.greenColor),
                minimumSize: Size(175.w , 40.h),
                maximumSize: Size(175.w , 40.h),
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              onPressed: (){
                verify();
              },
              child: context.text(
                  text: "تحقق", size: 15, color: context.wihteColor)),)

        ],
      ),
    );
  }
  void verify(){
    Navigator.pushReplacementNamed(context, '/reset_new_pass');

  }
}

class contaner extends StatelessWidget {

 final TextEditingController? controller;
  const contaner({
    Key? key,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 50.w,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFB8B8B8) ,width: 1),
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: const TextField(
        // maxLength: 1,
       // controller: controller,
        keyboardType: TextInputType.number,
        decoration:  InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)
            ),
            constraints: BoxConstraints(minHeight: 42 ,maxHeight: 42),
        ),
      ),
    );
  }
}
