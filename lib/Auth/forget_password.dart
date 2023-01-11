import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

 late TextEditingController _emailController ;
  String? emailText ;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },
        icon:const Icon(Icons.arrow_back_ios ,color: Colors.black,size: 16,),),
          title:const Text( "استرجاع كلمة المرور" ,style: TextStyle(fontSize: 17 ,color: Colors.black),)),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        children: [
        const  SizedBox(height: 15,),
          context.text(text: "هل نسيت كلمة المرور؟",
              size: 16, color: context.blackColor ,
              wieght: FontWeight.w500 ,align: TextAlign.start),
          const SizedBox(height: 12,),
          context.text(text: "الرجاء إدخال الايميل الخاص بك وسنرسل لك كود",
              size: 14, color: context.blackColor ,
              wieght: FontWeight.w400 ,align: TextAlign.start),

          const SizedBox(height: 27),
          context.text(text: "الايميل",
              size: 14, color: context.greenColor ,
              wieght: FontWeight.w400 ,align: TextAlign.start),
          const SizedBox(height: 12),

          Container(
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
            child: TextField(
              controller: _emailController ,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)
                ),
                constraints: BoxConstraints(minHeight: 42 ,maxHeight: 42),
                hintText: "أدخل الايميل الالكتروني الخاص بك",
                hintStyle: TextStyle(fontSize: 12 ,color: Colors.grey)
              ),
            ),
          ),
          const SizedBox(height: 32),
          Center(child:
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(context.greenColor),
                minimumSize: Size(175.w , 40.h),
                maximumSize: Size(175.w , 40.h),
                elevation: 2,
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),),
              onPressed: (){
                resetNewPass();
              },
              child: context.text(
                  text: "التالي", size: 15, color: context.wihteColor))),

        ],),
    );
  }
  void resetNewPass(){
    if(checkDate()){
      reset();
    }
  }
  bool checkDate(){
    if(_emailController.text.isNotEmpty){
      return true;
    }
    emailText = _emailController.text.isEmpty ? 'هذا الحقل مطلوب!' : null;
    return false;
  }
  reset(){
    Navigator.pushNamed(context, "/enter_pass_code");
 }
}
