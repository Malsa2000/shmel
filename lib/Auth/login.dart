import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Widget/text_field.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {

  late TextEditingController _passwordController, _emailController;

  String? passwordErorr ,emailErorr;
  bool _obsecure = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

           padding: EdgeInsets.symmetric(horizontal: 21.w),
        children: [
        SizedBox(height: 187.h,),
        Center(
          child: Image(
              height:39.h ,
              width: 96.w,
              image: const AssetImage("images/logo.png")),
        ),
        SizedBox(height: 29.h,),
        Center(child: context.text(text: "تسجيل الدخول", size: 18, color: context.greenColor),),
          SizedBox(height: 44.h,),

        //email
        context.text(text: "الايميل", size: 14, color: context.greenColor,align: TextAlign.right),
        SizedBox(height: 11.h,),
      TextField(
        keyboardType:TextInputType.text,
        controller: _emailController,
        decoration: InputDecoration(
          hintText: "ادخل الايميل الالكتروني الخاص بك",
          hintStyle: TextStyle(
              color: Color(context.greyColor) , fontSize: 12 ),
          errorText:emailErorr,
          constraints: BoxConstraints(maxHeight: emailErorr== null? 42.h : 75.h ,maxWidth: 341.w),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: Color(context.greyColor)),
            borderRadius: BorderRadius.circular(7.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.r),
            borderSide: BorderSide(color: Color(context.greenColor), width: 1.0),
          ),
        ),
        enabled: true,

      ),

        //email
        SizedBox(height: 24.h,),
        context.text(text: "كلمة المرور", size: 14, color: context.greenColor ,align: TextAlign.right),
        SizedBox(height: 11.h,),
          TextField(
            obscureText: _obsecure,
            keyboardType:TextInputType.number,
            controller: _passwordController,
            decoration: InputDecoration(
              suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye ),onPressed: (){
                setState(() {
                  _obsecure = !_obsecure;
                  Icon(Icons.visibility_off );

                });
              },),
              hintText: "ادخل كلمة المرور",
              hintStyle: TextStyle(
                  color: Color(context.greyColor) , fontSize: 12 ),

              errorText:emailErorr,
              constraints: BoxConstraints(maxHeight: passwordErorr== null? 42.h : 75.h ,maxWidth: 341.w),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.r),
                borderSide: BorderSide(color: Colors.red, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: Color(context.greyColor)),
                borderRadius: BorderRadius.circular(7.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.r),
                borderSide: BorderSide(color: Color(context.greenColor), width: 1.0),
              ),
            ),
            enabled: true,

          ),

        Row(children: [
          TextButton(
              onPressed: (){Navigator.pushNamed(context, "/forget_password");},
              child:context.text(text: "نسيت كلمة المرور", size: 10, color: context.greenColor ,align: TextAlign.center) )
        ],),
      const  SizedBox(height: 23,),
        Center(child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(context.greenColor),
                minimumSize: Size(175.w , 40.h),
                maximumSize: Size(175.w , 40.h),
                elevation: 2,
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),

              ),
              onPressed: (){
                performLogin();
              },
              child: context.text(
                  text: "تسجيل دخول", size: 15, color: context.wihteColor)),)

      ],),
    );
  }

  performLogin(){
    if(checkdate()){
      login();
    }
  }

  bool checkdate(){
    setState(() {
      passwordErorr = _passwordController.text.isEmpty ? 'كلمة السر خطا حاول مرة اخرى' : null;
      emailErorr = _emailController.text.isEmpty ? 'ادخل ايميل المستخدم': null;
    });
    if(_emailController.text.isNotEmpty && _passwordController.text.isNotEmpty){
      return true;
    }
    setState(() {
      passwordErorr = _passwordController.text.isEmpty ? 'كلمة السر خطا حاول مرة اخرى' : null;
      emailErorr = _emailController.text.isEmpty ? 'ادخل ايميل المستخدم': null;
    });
    return false;
  }

  void login(){
    Navigator.pushReplacementNamed(context, "/bot");
  }
}
