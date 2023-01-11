import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Widget/text_field.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';
class ConectWithUs extends StatefulWidget {
  const ConectWithUs({Key? key}) : super(key: key);

  @override
  State<ConectWithUs> createState() => _ConectWithUsState();
}

class _ConectWithUsState extends State<ConectWithUs> {
  late TextEditingController _titleController , _bodyController ;
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _bodyController = TextEditingController();
  }
  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(preferredSize:const Size.fromHeight(80.0),
        child:
        AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: (){
            Navigator.pop(context);
          },),
          title:const Text("تواصل معنا "),
          centerTitle: true,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)
              ,bottomRight: Radius.circular(20))),
          backgroundColor: Color(context.greenColor) ,),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22),
        children: [
        SizedBox(height: 23.h,),
        context.text(text: "عنوان الرسالة", size: 15, color: context.blackColor ,align: TextAlign.start),
          SizedBox(height: 18.h,),
          Container(
           decoration: const BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(10)),
             boxShadow: [
               BoxShadow(
                   offset: Offset(0, 1),
                   color: Colors.black12,
                   blurRadius: 5)
             ],
           ),
               child: TextField(
                 keyboardType: TextInputType.text,
                 decoration: InputDecoration(hintText: "أدخل عنوان الرسالة" ,
                 constraints:const BoxConstraints(minWidth: 344 ,minHeight: 24 ,maxHeight: 42),
                     enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                     focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                 hintStyle: TextStyle(fontSize: 10 ,color: Color(context.greyColor))
                 ),
               ),

         ),


          SizedBox(height: 23.h,),
          context.text(text: "رسالتك", size: 15, color: context.blackColor ,align: TextAlign.start),
          SizedBox(height: 18.h,),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10)
              ],
            ),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "أدخل عنوان الرسالة" ,
                  constraints:const BoxConstraints(minWidth: 344 ,minHeight: 122 ,maxHeight: 122),
                  enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                  hintStyle: TextStyle(fontSize: 10 ,color: Color(context.greyColor))
              ),
            ),

          ),

          SizedBox(height: 27.h,),
          Row(children: [
          const  Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(context.greenColor),
                  minimumSize: Size(111.w , 36.h),
                  maximumSize: Size(111.w , 36.h),
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                onPressed: (){
                },
                child: context.text(
                    text: "ارسال", size: 15, color: context.wihteColor))

          ],)

        ],),

    );
  }
}
