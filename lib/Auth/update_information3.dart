import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';
import 'package:shamel/Widget/text_field.dart';
import 'package:table_calendar/table_calendar.dart';
class UpdateInformation3 extends StatefulWidget {
  const UpdateInformation3({Key? key}) : super(key: key);

  @override
  State<UpdateInformation3> createState() => _UpdateInformation3State();
}

class _UpdateInformation3State extends State<UpdateInformation3> {
  late TextEditingController _nameController , _phoneNumberController ,
      _scondNamePhoneController, _Controller ,
      _nationalityController , _idNumberController ,
      _dayOfBirthController , _cityController ,
      _areaController , _addressController ,
      _scondPhoneNumberController , _homePhoneController ,
      _emailController ;

  String? Birthday ;
  DateTime? _selectedDay;
  DateTime? _focusedDay;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController() ;
    _phoneNumberController = TextEditingController() ;
    _scondNamePhoneController = TextEditingController() ;
    _Controller  = TextEditingController() ;
    _nationalityController = TextEditingController() ;
    _idNumberController = TextEditingController() ;
    _dayOfBirthController  = TextEditingController() ;
    _cityController  = TextEditingController() ;
    _areaController  = TextEditingController() ;
    _addressController  = TextEditingController() ;
    _scondPhoneNumberController  = TextEditingController() ;
    _homePhoneController  = TextEditingController() ;
    _emailController  = TextEditingController() ;
  }
  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _scondNamePhoneController.dispose();
    _Controller.dispose();
    _nationalityController.dispose();
    _idNumberController.dispose();
    _dayOfBirthController.dispose();
    _cityController.dispose();
    _areaController.dispose();
    _addressController.dispose();
    _scondPhoneNumberController.dispose();
    _homePhoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        children: [
          const  SizedBox(height: 46),
          Center(
            child: Image(
                height:36.h ,
                width: 88.w,
                image: const AssetImage("images/logo.png")),
          ),
          SizedBox(height: 13.h,),
          context.text(text: "تحديث البيانات", size: 18, color: context.greenColor),
          SizedBox(height: 28.h,),
          context.text(text: "*نرجو منك تحديث بياناتك في حال طرأ تغير عليها", size: 13, color: context.blackColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),

          SizedBox(height: 10.h,),
          Row(children: [
            context.text(text: "معلومات الوكيل:  ", size: 15, color: context.blackColor
                ,align: TextAlign.start ,wieght: FontWeight.w300),

            context.text(text: "*ان وجد", size: 13, color: context.blackColor
                ,align: TextAlign.start ,wieght: FontWeight.w300),
          ],),
          SizedBox(height: 10.h,),

          context.text(text: "الاسم", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _nameController ,keybord: TextInputType.text),


          SizedBox(height: 10.h,),
          context.text(text: "رقم الجوال", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _phoneNumberController ,keybord: TextInputType.number),

          SizedBox(height: 10.h,),
          context.text(text: ":معلومات الاتصال بشخص بديل في حالة عدم الرد", size: 15, color: context.blackColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 10.h,),

          context.text(text: "الاسم", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _scondNamePhoneController ,keybord: TextInputType.text),


          SizedBox(height: 10.h,),
          context.text(text: "صلة القرابة بالمحضون", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _Controller ,keybord: TextInputType.text),

     //nationality
          SizedBox(height: 10.h,),
          context.text(text: "الجنسية", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _nationalityController ,keybord: TextInputType.text),

          //Id Number
          SizedBox(height: 10.h,),
          context.text(text: "رقم الهوية", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _idNumberController ,keybord: TextInputType.number),

          //day of birth
          SizedBox(height: 10.h,),
          context.text(text: "تاريخ الميلاد", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          TextField(
            keyboardType: TextInputType.text,
            controller: _dayOfBirthController,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  color: Color(context.greyColor) , fontSize: 12 ),
              errorText: Birthday,
              suffixIcon: IconButton(onPressed: (){
                showDailalogCalender(context);
              },
                  icon:const Icon(Icons.calendar_month_sharp ,color: Colors.black,)),
              constraints: BoxConstraints(maxHeight: Birthday== null? 42.h : 75.h ,maxWidth: 341.w),
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


          //city
          SizedBox(height: 10.h,),
          context.text(text: "المدينة (محل السكن)", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _cityController ,keybord: TextInputType.text),

          //الحي
          SizedBox(height: 10.h,),
          context.text(text: "الحي", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _areaController ,keybord: TextInputType.text),

         //address
          SizedBox(height: 10.h,),
          context.text(text: "العنوان", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _addressController ,keybord: TextInputType.text),

          //phone number
          SizedBox(height: 10.h,),
          context.text(text: "رقم الجوال", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _scondPhoneNumberController ,keybord: TextInputType.number),

          //phone number home
          SizedBox(height: 10.h,),
          context.text(text: "هاتف المنزل", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _homePhoneController ,keybord: TextInputType.number),

          //email
          SizedBox(height: 10.h,),
          context.text(text: "الايميل", size: 12, color: context.greenColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          SizedBox(height: 11.h,),
          text_field(controller: _emailController ,keybord: TextInputType.emailAddress),


          SizedBox(height: 24.h,),
          Center(child:
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(context.greenColor),
                minimumSize: Size(175.w , 40.h),
                maximumSize: Size(175.w , 40.h),
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              onPressed: (){
                performUpdate();
              },
              child: context.text(
                  text: "تحديث", size: 15, color: context.wihteColor))),
          SizedBox(height: 29.h,),

        ],
      ),
    );
  }

  Future showDailalogCalender(BuildContext context){
    return showDialog(context: context, builder: (context)=>
        AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      content: Container(
       child:   TableCalendar(
         onPageChanged: (focusedDay) {
           _focusedDay = focusedDay;
         },
         selectedDayPredicate: (day) {
           return isSameDay(_selectedDay, day);
         },
         onDaySelected: (selectedDay, focusedDay) {
           setState(() {
             _selectedDay = selectedDay;
             _focusedDay = focusedDay; // update `_focusedDay` here as well
           });
         },
         calendarStyle:const CalendarStyle(markerSize: 40,
             selectedDecoration:BoxDecoration(color: Color(0xFF4F7F71),
             ) ,
             todayDecoration: BoxDecoration(color: Color(0xFF4F7F71),
                 borderRadius: BorderRadius.all(Radius.circular(10))),
             cellMargin: EdgeInsets.symmetric(horizontal: 7)
         ),
         firstDay: DateTime.utc(2010, 10, 16),
         lastDay: DateTime.utc(2030, 3, 14),
         focusedDay: DateTime.now(),
         daysOfWeekHeight: 30.0,
         rowHeight: 40.0,
       ),


      ),
    ));


  }
  void performUpdate(){
    if(checkData()){
      updateInformation();
    }
  }
  bool checkData(){
    if(_emailController.text.isNotEmpty &&
    _nameController.text.isNotEmpty && _phoneNumberController.text.isNotEmpty &&
    _scondNamePhoneController.text.isNotEmpty && _Controller.text.isNotEmpty &&
    _nationalityController.text.isNotEmpty && _idNumberController.text.isNotEmpty &&
    _dayOfBirthController.text.isNotEmpty && _cityController.text.isNotEmpty &&
    _areaController.text.isNotEmpty && _addressController.text.isNotEmpty &&
    _scondPhoneNumberController.text.isNotEmpty && _homePhoneController.text.isNotEmpty){
      return true;
    }
    context.snackBar(massage: "الرجاء ادخال القيم", error: true);
    return false;
  }
  void updateInformation(){
    context.snackBar(massage: " تم حفظ التغيرات بنجاح !");
    Navigator.pushReplacementNamed(context, "/bot");
  }}


