import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';
import 'package:shamel/Widget/text_field.dart';

class UpdateInformation2 extends StatefulWidget {
  const UpdateInformation2({Key? key}) : super(key: key);

  @override
  State<UpdateInformation2> createState() => _UpdateInformation2State();
}

class _UpdateInformation2State extends State<UpdateInformation2> {

  String? _currentlyJob = "لا أعمل";
  String? _currentlyHome = "مع الوالدين";
  String? _homeType = "شقة";
  String? timeFrom  ,timeto;


  int colorSelect = (0xFF707070);

  late TextEditingController _workDaysController , _monthComeController ,
      _workPlaceController
  ,_addressController ,_cityController ,_areaColtroller , _addressHomeController ,
  _phoneNumberController , _homePhoneController ,
      _workPhoneController, _emailController;

  String? _workDay , _monthIncome ,_workPlace ,_address ,_city, _area ,_addressHome ,_phoneNumber ,_homePhone ,
      _workPhone ,_email;

  @override
  void initState() {
    super.initState();
    _workDaysController = TextEditingController();
    _monthComeController = TextEditingController();
    _workPlaceController = TextEditingController();
    _addressController = TextEditingController();
    _cityController = TextEditingController();
    _areaColtroller = TextEditingController();
    _addressHomeController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _homePhoneController = TextEditingController();
    _workPhoneController = TextEditingController();
    _emailController = TextEditingController();

  }
  @override
  void dispose() {
    _workDaysController.dispose();
    _monthComeController.dispose();
    _workPlaceController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _areaColtroller.dispose();
    _addressHomeController.dispose();
    _phoneNumberController.dispose();
    _homePhoneController.dispose();
    _workPhoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
     padding: EdgeInsets.symmetric(horizontal: 22.w),
      children: [
        const  SizedBox(height: 46,),
        Center(
          child: Image(
              height:36.h ,
              width: 88.w,
              image: const AssetImage("images/logo.png")),
        ),
        SizedBox(height: 13.h,),
        context.text(text: "تحديث البيانات", size: 18, color: context.greenColor),
        SizedBox(height: 28.h,),
        context.text(text: "نرجو منك تحديث بياناتك في حال طرأ تغير عليها*", size: 13, color: context.blackColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 10.h,),

        context.text(text: "معلومات العمل", size: 15, color: context.blackColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 10.h,),
        context.text(text: "العمل الحالي ", size: 14, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                title: context.text(text: "موظف حكومي", size: 14, color: (0xFF707070),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                activeColor: Colors.black,
                contentPadding: EdgeInsets.zero,

                value: "موظف حكومي",
                groupValue: _currentlyJob,
                onChanged: (String? value){
                  setState(() {
                    _currentlyJob = value;
                  });
                }),
          ),
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                title: context.text(text: "موظف قطاع خاص", size: 14,
                    color: (0xFF707070),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                activeColor: Colors.black,
                contentPadding: EdgeInsets.zero,
                value: "موظف قطاع خاص",
                groupValue: _currentlyJob,
                onChanged: (String? value){
                  setState(() {
                    _currentlyJob = value;
                  });
                }),
          ),
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                title: context.text(text:"لا أعمل", size: 14, color: (0xFF707070),
    align: TextAlign.start ,wieght: FontWeight.w300),
    activeColor: Colors.black,
    contentPadding: EdgeInsets.zero,
                value: "لا أعمل",
                groupValue: _currentlyJob,
                onChanged: (String? value){
                  setState(() {
                    _currentlyJob = value;
                  });
                }),
          ),

        ],),
        Row(children: [
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                title: context.text(text: "أعمال حرة", size: 14, color: (0xFF707070),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                activeColor: Colors.black,
                contentPadding: EdgeInsets.zero,
                value: "أعمال حرة",
                groupValue: _currentlyJob,
                onChanged: (String? value){
                  setState(() {
                    _currentlyJob = value;
                  });
                }),
          ),
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                title: context.text(text: "أخرى", size: 14, color: (0xFF707070),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                activeColor: Colors.black,
                contentPadding: EdgeInsets.zero,
                value: "أخرى",
                groupValue: _currentlyJob,
                onChanged: (String? value){
                  setState(() {
                    _currentlyJob = value;
                  });
                }),
          ),
          SizedBox(width: 120.w,)
        ],),

        SizedBox(height: 10.h,),
        context.text(text: "أيام العمل ", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _workDaysController
            ,keybord: TextInputType.text ,errorText1: _workDay),


        SizedBox(height: 10.h,),
        context.text(text: "أوقات الدوام ", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        Row(children: [
          context.text(text: "من ", size: 12, color: context.blackColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),

          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  color: Color(context.greyColor) , fontSize: 12 ),
              errorText: timeFrom,
              hintText: "10:00ص",
              suffixIcon: IconButton(onPressed: (){
                showDailalogCalender(context);
              },
                  icon:const Icon(Icons.calendar_month_sharp ,color: Colors.transparent,)),
              constraints: BoxConstraints(maxHeight: timeFrom== null? 42.h : 75.h ,maxWidth: 73.w),
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
          SizedBox(width: 40.w,),

          context.text(text: "الى ", size: 12, color: context.blackColor
              ,align: TextAlign.start ,wieght: FontWeight.w300),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  color: Color(context.greyColor) , fontSize: 12 ),
              errorText: timeto,
              hintText: "05:00م",
              suffixIcon: IconButton(onPressed: (){
                showDailalogCalender(context);
              },
                  icon:const Icon(Icons.calendar_month_sharp ,color: Colors.transparent,)),
              constraints: BoxConstraints(maxHeight: timeto== null? 42.h : 75.h ,maxWidth: 73.w),
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

        ],),


        SizedBox(height: 10.h,),
        context.text(text: "الدخل الشهري ", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _monthComeController ,keybord: TextInputType.number,
        errorText1: _email),


        SizedBox(height: 10.h,),
        context.text(text: "جهة العمل", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _workPlaceController
            ,keybord: TextInputType.text ,errorText1: _workPlace),

        SizedBox(height: 10.h,),
        context.text(text: "عنوان مقر العمل", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _addressController
            ,keybord: TextInputType.text ,errorText1: _addressHome),

        SizedBox(height: 10.h,),
        context.text(text: ":معلومات السكن", size: 15, color: context.blackColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),

        SizedBox(height: 10.h,),
        context.text(text: " السكن", size: 14, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300 ),
        Row(children: [
          Expanded(
            child: RadioListTile(
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              contentPadding: EdgeInsets.zero,
                activeColor: Colors.black,
                title: context.text(text: "مستقل", size: 14, color: (colorSelect),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                value: "مستقل",
                groupValue: _currentlyHome,
                onChanged: (String? value){
                  setState(() {
                    _currentlyHome = value;
                    colorSelect = (0xFF161616);

                  });
                }),
          ),
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                contentPadding: EdgeInsets.zero,
                activeColor: Colors.black,
                title: context.text(text: "مع الزوج", size: 14, color: (colorSelect),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                value: "مع الزوج",
                groupValue: _currentlyHome,
                onChanged: (String? value){
                  setState(() {
                    _currentlyHome = value;
                    colorSelect = (0xFF161616);

                  });
                }),
          ),
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                contentPadding: EdgeInsets.zero,
                activeColor: Colors.black,
                title: context.text(text:"مع الوالدين", size: 14, color: (colorSelect),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                value: "مع الوالدين",
                groupValue: _currentlyHome,
                onChanged: (String? value){
                  setState(() {
                    _currentlyHome = value;
                    colorSelect = (0xFF161616);
                  });
                }),
          ),
        ],),
        Row(children: [
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                contentPadding: EdgeInsets.zero,
                activeColor: Colors.black,
                title: context.text(text: "مع الاخوة", size: 14, color: (colorSelect),
                    align: TextAlign.start ,wieght: FontWeight.w300),
              value: "مع الاخوة",
              groupValue: _currentlyHome,
              onChanged: (String? value){
                setState(() {
                  _currentlyHome = value;
                  colorSelect = (0xFF161616);

                });
              }),),
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
              activeColor: Colors.black,
                contentPadding: EdgeInsets.zero,
                title: context.text(text: "أخرى", size: 14, color: (colorSelect),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                value: "أخرى",
                groupValue: _currentlyHome,
                onChanged: (String? value){
                  setState(() {
                    _currentlyHome = value;
                    colorSelect = (0xFF161616);
                  });
                }),
          ),
          SizedBox(width: 110.w,)
        ],),


        SizedBox(height: 10.h,),
        context.text(text: " نوع السكن", size: 14, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Expanded(
            child: RadioListTile(
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                contentPadding: EdgeInsets.zero,
                activeColor: Colors.black,
                title: context.text(text: "شقة", size: 14, color: (colorSelect),
                    align: TextAlign.start ,wieght: FontWeight.w300),
                value: "شقة",
                groupValue: _homeType,
                onChanged: (String? value){
                  setState(() {
                    _homeType = value;
                    colorSelect = (0xFF161616);

                  });
                }),
          ),
            Expanded(
              child:
          RadioListTile(
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              activeColor: Colors.black,
              contentPadding: EdgeInsets.zero,
              title: context.text(text: "فيلا", size: 14, color: (colorSelect),
                  align: TextAlign.start ,wieght: FontWeight.w300),
            value: "فيلا",
            groupValue: _homeType,
            onChanged: (String? value){
              setState(() {
                _homeType = value;
                colorSelect = (0xFF161616);

              });
            })),
            Expanded(
              child:
          RadioListTile(
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              contentPadding: EdgeInsets.zero,
              activeColor: Colors.black,
              title: context.text(text:"شعبي", size: 13, color: (colorSelect) ,
              align: TextAlign.start ,wieght: FontWeight.w300),
              value: "شعبي",
              groupValue: _homeType,
              onChanged: (String? value){
                setState(() {
                  _homeType = value;
                  colorSelect = (0xFF161616);
                });
              })),
            Expanded(
              child:
          RadioListTile(
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              contentPadding: EdgeInsets.zero,
              activeColor: Colors.black,
              title: context.text(text:"أخرى", size: 14, color: (colorSelect),
                  align: TextAlign.start ,wieght: FontWeight.w300),
              value: "أخرى",
              groupValue: _homeType,
              onChanged: (String? value){
                setState(() {
                  _homeType = value;
                  colorSelect = (0xFF161616);
                });
              })),
            SizedBox(width: 10.w,)

        ],),


        SizedBox(height: 10.h,),
        context.text(text: "المدينة (محل السكن)", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _cityController ,keybord: TextInputType.text ,
            errorText1: _city),

        SizedBox(height: 10.h,),
        context.text(text: "الحي", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _areaColtroller ,keybord: TextInputType.text ,
            errorText1: _area),

        SizedBox(height: 10.h,),
        context.text(text: "العنوان", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _addressHomeController ,keybord: TextInputType.text
            ,errorText1: _address),


        SizedBox(height: 10.h,),
        context.text(text: ":معلومات التواصل", size: 14, color: context.blackColor
            ,align: TextAlign.start ,wieght: FontWeight.w300 ),

        SizedBox(height: 10.h,),
        context.text(text: "رقم الجوال", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _phoneNumberController ,keybord: TextInputType.number
            ,errorText1: _phoneNumber),

        SizedBox(height: 10.h,),
        context.text(text: "هاتف المنزل", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _homePhoneController ,keybord: TextInputType.number
            ,errorText1: _homePhone),

        SizedBox(height: 10.h,),
        context.text(text: "هاتف العمل", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _workPhoneController ,keybord: TextInputType.number
            ,errorText1: _workPhone),

        SizedBox(height: 10.h,),
        context.text(text: "الايميل", size: 12, color: context.greenColor
            ,align: TextAlign.start ,wieght: FontWeight.w300),
        SizedBox(height: 11.h,),
        text_field(controller: _emailController ,keybord: TextInputType.emailAddress
            ,errorText1: _email),

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
                text: "التالي", size: 15, color: context.wihteColor))),
        SizedBox(height: 29.h,),

      ],
     ),
    );
  }
  showDailalogCalender(BuildContext context){

  }
  void performUpdate(){
    if(checkData()){
      updateInformation();
    }
  }
  bool checkData(){
    checkTextFiled1();
    if(_workDaysController.text.isNotEmpty && _monthComeController.text.isNotEmpty &&
    _workPlaceController.text.isNotEmpty &&
    _addressController.text.isNotEmpty && _cityController.text.isNotEmpty &&
        _areaColtroller.text.isNotEmpty &&_addressHomeController.text.isNotEmpty &&
    _phoneNumberController.text.isNotEmpty && _homePhoneController.text.isNotEmpty &&
    _workPhoneController.text.isNotEmpty && _emailController.text.isNotEmpty){
      return true;
    }
    checkTextFiled1();
    context.snackBar(massage: "enter the value", error: true);
    return false;
  }
  void checkTextFiled1() {
    setState(() {
      _workDay = _workDaysController.text.isEmpty ? ' عدد الايام مطلوب ' : null;
      _monthIncome = _monthComeController.text.isEmpty ? ' الدخل الشهري مطلوب': null;
      _workPlace = _workPlaceController.text.isEmpty ? 'مكان العمل مطلوب': null;
      _address = _addressController.text.isEmpty ? 'عنوان المستخدم مطلوب': null;
      _city = _cityController.text.isEmpty ? 'الرجاء ادخال المدينة ': null;

      _area = _areaColtroller.text.isEmpty ? ' اسم الحي مطلوب' : null;
      _addressHome = _addressHomeController.text.isEmpty ? ' عنوان السكن مطلوب': null;
      _phoneNumber = _phoneNumberController.text.isEmpty ? 'رقم الهاتف مطلوب': null;
      _homePhone = _homePhoneController.text.isEmpty ? 'رقم المنزل مطلوب': null;
      _email = _emailController.text.isEmpty ? 'الرجاء ادخال الايميل': null;
    });
  }
  void updateInformation(){
    Navigator.pushReplacementNamed(context, "/update_information3");
  }}
