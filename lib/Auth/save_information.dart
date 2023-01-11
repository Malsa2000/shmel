import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Widget/text_field.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';

class SaveInformation extends StatefulWidget {
  const SaveInformation({Key? key}) : super(key: key);

  @override
  State<SaveInformation> createState() => _SaveInformationState();
}

class _SaveInformationState extends State<SaveInformation> {
  late TextEditingController _nameController , _nationalityController ,
      _rangeMarriedController,
      _idNumberController , _phoneNmberController;

  String? nameErorr , dateErorr , addressErorr , idNumberErorr , phoneErorr ,emailErorr;
  String? _typeOfServise  =  "زيارة";
  String? _typeOfParent = "الوالد الحاضن";
  String? _person  = "الوالد" ;
  String? _typeOfLeave = "خلع" ;
  String?_studyLearing  ="متوسط";
  String? _currentState ="مطلق";
  String? _reason ="انفصال";

  bool click = true ;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _nationalityController = TextEditingController();
    _idNumberController = TextEditingController();
    _phoneNmberController = TextEditingController();
    _rangeMarriedController = TextEditingController();

  }
  @override
  void dispose() {
    _nameController.dispose();
    _nationalityController.dispose();
    _idNumberController.dispose();
    _phoneNmberController.dispose();
    _rangeMarriedController.dispose();

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

          //name
          SizedBox(height: 10.h,),
          context.text(text: "الاسم", size: 12, color: (0xFF757575)  ,align: TextAlign.start),
          SizedBox(height: 11.h,),
          text_field(controller: _nameController ,keybord: TextInputType.text, errorText1: nameErorr,),

          //Birthday
          SizedBox(height: 10.h,),
          context.text(text: "الجنسية", size: 12, color: (0xFF757575) ,align: TextAlign.start),
          SizedBox(height: 11.h,),
          text_field(controller: _nationalityController ,keybord: TextInputType.text, errorText1: dateErorr,),

          //id
          SizedBox(height: 10.h,),
          context.text(text: "رقم الهوية ", size: 12, color: (0xFF757575) ,align: TextAlign.start),
          SizedBox(height: 11.h,),
          text_field(controller: _idNumberController ,keybord: TextInputType.number, errorText1: idNumberErorr,),


          //phone Number
          SizedBox(height: 10.h,),
          context.text(text: "رقم الجوال", size: 12, color: (0xFF757575) ,align: TextAlign.start),
          SizedBox(height: 11.h,),
          text_field(controller: _phoneNmberController ,keybord: TextInputType.number, errorText1: phoneErorr,),


          //type of servise
          SizedBox(height: 16.h,),
          context.text(text: "نوع الخدمة", size: 14, color:context.greenColor ,align: TextAlign.start),
          SizedBox(height: 1.h,),
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
                    title: context.text(text: "زيارة", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "زيارة",
                    groupValue: _typeOfServise,
                    onChanged: (String? value){
                      setState(() {
                        _typeOfServise = value;
                        click = true;

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
                      title: context.text(text: "رؤية", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "رؤية",
                      groupValue: _typeOfServise,
                      onChanged: (String? value){
                        setState(() {
                          _typeOfServise = value;
                          click = true;
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
                      title: context.text(text:"نقل حضانة", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "نقل حضانة",
                      groupValue: _typeOfServise,
                      onChanged: (String? value){
                        setState(() {
                        _typeOfServise = value;
                        click = true;
                        });
                      })),

                SizedBox(width: 10.w,)
            ],),


          //address
          SizedBox(height: 16.h,),
          context.text(text: "الاستمارة خاصة ب", size: 14, color: context.greenColor ,align: TextAlign.start),
          SizedBox(height: 1.h,),
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
                    title: context.text(text: "الوالد الحاضن", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "الوالد الحاضن",
                    groupValue: _typeOfParent,
                    onChanged: (String? value){
                      setState(() {
                        _typeOfParent = value;
                        click = true;

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
                      title: context.text(text: "الوالد الغير حاضن", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "الوالد الغير حاضن",
                      groupValue: _typeOfParent,
                      onChanged: (String? value){
                        setState(() {
                          _typeOfParent = value;
                          click = true;
                        });
                      })),
              SizedBox(width: 30.w,)

            ],),

          //Person who Charge
          SizedBox(height: 16.h,),
          context.text(text: "الحاضن", size: 14, color: context.greenColor ,align: TextAlign.start),
          SizedBox(height: 1.h,),
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
                    title: context.text(text: "االوالد", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "الوالد",
                    groupValue: _person,
                    onChanged: (String? value){
                      setState(() {
                        _person = value;
                        click = true;

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
                      title: context.text(text: "الوالدة", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "الوالدة",
                      groupValue: _person,
                      onChanged: (String? value){
                        setState(() {
                          _person = value;
                          click = true;
                        });
                      })),
              Expanded(
                  child:
                  RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: Colors.black,
                      contentPadding: EdgeInsets.zero,
                      title: context.text(text: "أخرى", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "أخرى",
                      groupValue: _person,
                      onChanged: (String? value){
                        setState(() {
                          _person = value;
                          click = true;
                        });
                      })),
              SizedBox(width: 90,)

            ],),

          //Person who Charge
          SizedBox(height: 16.h,),
          context.text(text: "سبب الحضانة", size: 14, color: context.greenColor ,align: TextAlign.start),
          SizedBox(height: 1.h,),
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
                    title: context.text(text: "طلاق", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "طلاق",
                    groupValue: _reason,
                    onChanged: (String? value){
                      setState(() {
                        _reason = value;
                        click = true;

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
                      title: context.text(text: "انفصال", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "انفصال",
                      groupValue: _reason,
                      onChanged: (String? value){
                        setState(() {
                          _reason = value;
                          click = true;
                        });
                      })),
              SizedBox(width: 90,)

            ],),


          SizedBox(height: 16.h,),
          context.text(text: "نوع الطلاق", size: 14, color: context.greenColor ,align: TextAlign.start),
          SizedBox(height: 1.h,),
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
                    title: context.text(text: "طلاق رجعي", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "طلاق رجعي",
                    groupValue: _typeOfLeave,
                    onChanged: (String? value){
                      setState(() {
                        _typeOfLeave = value;
                        click = true;

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
                      title: context.text(text: "طلاق بائن", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "طلاق بائن",
                      groupValue: _typeOfLeave,
                      onChanged: (String? value){
                        setState(() {
                          _typeOfLeave = value;
                          click = true;
                        });
                      })),
              Expanded(
                  child:
                  RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: Colors.black,
                      contentPadding: EdgeInsets.zero,
                      title: context.text(text: "خلع", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "خلع",
                      groupValue: _typeOfLeave,
                      onChanged: (String? value){
                        setState(() {
                          _typeOfLeave = value;
                          click = true;
                        });
                      })),
              Expanded(
                  child:
                  RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: Colors.black,
                      contentPadding: EdgeInsets.zero,
                      title: context.text(text: "فسخ", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "فسخ",
                      groupValue: _typeOfLeave,
                      onChanged: (String? value){
                        setState(() {
                          _typeOfLeave = value;
                          click = true;
                        });
                      })),


            ],),

          //range married
          SizedBox(height: 10.h,),
          context.text(text: "فترة الزواج (محل القضية)", size: 14, color: context.greenColor ,align: TextAlign.start),
          SizedBox(height: 11.h,),
          text_field(controller: _rangeMarriedController ,keybord: TextInputType.text, errorText1: phoneErorr,),

          SizedBox(height: 16.h,),
          context.text(text: "المستوى العلمي", size: 14, color: context.greenColor ,align: TextAlign.start),
          SizedBox(height: 1.h,),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    contentPadding: EdgeInsets.zero,
                    activeColor: Colors.black,
                    title: context.text(text: "أُمي", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "أُمي",
                    groupValue: _studyLearing,
                    onChanged: (String? value){
                      setState(() {
                        _studyLearing = value;
                        click = true;

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
                      title: context.text(text: "ابتدائي", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "ابتدائي",
                      groupValue: _studyLearing,
                      onChanged: (String? value){
                        setState(() {
                          _studyLearing = value;
                          click = true;
                        });
                      })),
              Expanded(
                  child:
                  RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: Colors.black,
                      contentPadding: EdgeInsets.zero,
                      title: context.text(text: "متوسط", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "متوسط",
                      groupValue: _studyLearing,
                      onChanged: (String? value){
                        setState(() {
                          _studyLearing = value;
                          click = true;
                        });
                      })),
              SizedBox(width: 40,)
            ],),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    contentPadding: EdgeInsets.zero,
                    activeColor: Colors.black,
                    title: context.text(text: "ثانوي", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "ثانوي",
                    groupValue: _studyLearing,
                    onChanged: (String? value){
                      setState(() {
                        _studyLearing = value;
                        click = true;

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
                      title: context.text(text: "جامعي", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "جامعي",
                      groupValue: _studyLearing,
                      onChanged: (String? value){
                        setState(() {
                          _studyLearing = value;
                          click = true;
                        });
                      })),
              Expanded(
                  child:
                  RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: Colors.black,
                      contentPadding: EdgeInsets.zero,
                      title: context.text(text: "فوق جامعي", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "فوق جامعي",
                      groupValue: _studyLearing,
                      onChanged: (String? value){
                        setState(() {
                          _studyLearing = value;
                          click = true;
                        });
                      })),
              SizedBox(width: 40,)
            ],),


          SizedBox(height: 16.h,),
          context.text(text: "الحالة الاجتماعية الحالية", size: 14, color: context.greenColor ,align: TextAlign.start),
          SizedBox(height: 1.h,),
          Row(
            children: [
              Expanded(
                child: RadioListTile(

                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    contentPadding: EdgeInsets.zero,
                    activeColor: Colors.black,
                    title: context.text(text: "مطلق", size: 14,
                        color: click == true ?(0xFF707070) : (0xFF00000),
                        align: TextAlign.start ,wieght: FontWeight.w300),
                    value: "مطلق",
                    groupValue: _currentState,
                    onChanged: (String? value){
                      setState(() {
                        _currentState = value;
                        click = true;

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
                      title: context.text(text: "متزوج", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "متزوج",
                      groupValue: _currentState,
                      onChanged: (String? value){
                        setState(() {
                          _currentState = value;
                          click = true;
                        });
                      })),
              Expanded(
                  child:
                  RadioListTile(
                      visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity,
                      ),
                      activeColor: Colors.black,
                      contentPadding: EdgeInsets.zero,
                      title: context.text(text: "أخرى", size: 14,
                          color: click == true ?(0xFF707070) : (0xFF00000),                          align: TextAlign.start ,wieght: FontWeight.w300),
                      value: "أخرى",
                      groupValue: _currentState,
                      onChanged: (String? value){
                        setState(() {
                          _currentState = value;
                          click = true;
                        });
                      })),
              SizedBox(width: 40,)
            ],),


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
          SizedBox(height: 29.h,)
        ],),
    );
  }
  void performUpdate(){
    if(checkData()){
      updateInformation();
    }
  }
  bool checkData(){
    checkTextFiled1();
    if(_nameController.text.isNotEmpty && _rangeMarriedController.text.isNotEmpty
        && _phoneNmberController.text.isNotEmpty && _nationalityController.text.isNotEmpty && _idNumberController.text.isNotEmpty){
      return true;
    }
    checkTextFiled1();
    context.snackBar(massage: "enter the value", error: true);
    return false;
  }
  void checkTextFiled1() {
    setState(() {
      nameErorr = _nameController.text.isEmpty ? ' اسم المتخدم مطلوب ' : null;
      addressErorr = _rangeMarriedController.text.isEmpty ? ' مطلوب': null;
      idNumberErorr = _idNumberController.text.isEmpty ? 'رقم الهوية مطلوب': null;
      phoneErorr = _phoneNmberController.text.isEmpty ? 'رقم الهاتف مطلوب': null;
      dateErorr = _nationalityController.text.isEmpty ? 'تاريخ الميلاد مطلوب': null;

    });
  }
  void updateInformation(){
    Navigator.pushReplacementNamed(context, "/update_information2");
  }}


