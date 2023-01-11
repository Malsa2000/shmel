import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';
class ResetNewPassword extends StatefulWidget {
  const ResetNewPassword({Key? key}) : super(key: key);

  @override
  State<ResetNewPassword> createState() => _ResetNewPasswordState();
}

class _ResetNewPasswordState extends State<ResetNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title:const Text( "اعادة تعيين كلمة السر" ,style: TextStyle(fontSize: 17 ,color: Colors.black),)),
      body: ListView(
        padding: EdgeInsets.only(top: 22 ,right: 22 ,left: 22),
        children: [

        context.text(text: "أدخل كلمة السر الجديدة", size: 14, color: context.greenColor ,
        align: TextAlign.start ,wieght: FontWeight.normal),
         const contaner_reset(),
        const  SizedBox(height: 23,),
          context.text(text: "أدخل كلمة السر الجديدة مرة أخرى", size: 14, color: context.greenColor ,
              align: TextAlign.start ,wieght: FontWeight.normal),
          const  contaner_reset(),
          const  SizedBox(height: 32,),
          Center(child:
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(context.greenColor),
                minimumSize: Size(190.w , 40.h),
                maximumSize: Size(190.w , 40.h),
                elevation: 2,
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),),
              onPressed: (){
                loginAgine();
              },
              child: context.text(
                  text: "إعادة تسجيل الدخول", size: 15, color: context.wihteColor))),


        ],
      ),
    );
  }
  loginAgine(){
    Navigator.pushReplacementNamed(context, '/login');
  }
}

class contaner_reset extends StatelessWidget {
  const contaner_reset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow:const [
          BoxShadow(
              offset: Offset(0, 1),
              color: Colors.black12,
              blurRadius: 5)
        ],
      ),
      child: const TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration:  InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          constraints: BoxConstraints(minHeight: 42 ,maxHeight: 42),
        ),
      ),
    );
  }
}
