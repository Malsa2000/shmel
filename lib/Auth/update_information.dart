import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Widget/text_field.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';

class UpdateInformation extends StatefulWidget {
  const UpdateInformation({Key? key}) : super(key: key);

  @override
  State<UpdateInformation> createState() => _UpdateInformationState();
}

class _UpdateInformationState extends State<UpdateInformation> {

  late TextEditingController _nameController , _dateOfBirthController , _addressController,
      _idNumberController , _phoneNmberController, _emailController;

  String? nameErorr , dateErorr , addressErorr , idNumberErorr , phoneErorr ,emailErorr;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _dateOfBirthController = TextEditingController();
    _idNumberController = TextEditingController();
    _phoneNmberController = TextEditingController();
    _emailController = TextEditingController();
    _addressController = TextEditingController();

  }
  @override
  void dispose() {
    _nameController.dispose();
    _dateOfBirthController.dispose();
    _idNumberController.dispose();
    _phoneNmberController.dispose();
    _emailController.dispose();
    _addressController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(preferredSize:const Size.fromHeight(80.0),
        child:
        AppBar(
          leading: IconButton(icon:const Icon(Icons.arrow_back_ios), onPressed: (){
            Navigator.pop(context);
          },),
          title: context.text(text: "تعديل المعلومات الشخصية", size: 20, color: context.wihteColor),
          centerTitle: true,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)
              ,bottomRight: Radius.circular(20))),
          backgroundColor: Color(context.greenColor) ,),),
      body: ListView(
        padding: EdgeInsets.only(top: 16 ,left: 22 ,right: 22),

        children: [
        Center(
          child: Stack(
            children: [
              const CircleAvatar(radius: 40,
                  backgroundColor: Colors.transparent,
                  backgroundImage:AssetImage("images/user.png")) ,
              Positioned(
                 left: 55,
                  top: 50,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Color(context.greenColor),
                    child:  IconButton(onPressed: (){},icon:
                    const Icon(Icons.edit ,size: 9,),color: Colors.white,),
                  )),

            ],
          ),
        ),
      const SizedBox(height: 18,),
        context.text(text: "الاسم", size: 12, color: (0xFF707070) ,align: TextAlign.start),
        const SizedBox(height: 11,),
        text_field(controller: _nameController ,keybord: TextInputType.text, errorText1: nameErorr, hint: "عبد الله ",),

          const SizedBox(height: 18,),
          context.text(text: "تاريخ الميلاد", size: 12, color: (0xFF707070) ,align: TextAlign.start),
          const SizedBox(height: 11,),
          text_field(controller: _dateOfBirthController ,keybord: TextInputType.text, errorText1: dateErorr, hint: "عبد الله ",),

          const SizedBox(height: 18,),
          context.text(text: "رقم الهوية", size: 12, color: (0xFF707070) ,align: TextAlign.start),
          const SizedBox(height: 11,),
          text_field(controller: _idNumberController ,keybord: TextInputType.number, errorText1: idNumberErorr, hint: "عبد الله ",),

          const SizedBox(height: 18,),
          context.text(text: "رقم الجوال", size: 12, color: (0xFF707070) ,align: TextAlign.start),
          const SizedBox(height: 11,),
          text_field(controller: _phoneNmberController ,keybord: TextInputType.number, errorText1: phoneErorr, hint: "عبد الله ",),


          const SizedBox(height: 18,),
          context.text(text: "الايميل", size: 12, color: (0xFF707070) ,align: TextAlign.start),
          const SizedBox(height: 11,),
          text_field(controller: _emailController ,keybord: TextInputType.emailAddress, errorText1: emailErorr, hint: "عبد الله ",),

          const SizedBox(height: 18,),
          context.text(text: "العنوان", size: 12, color: (0xFF707070) ,align: TextAlign.start),
          const SizedBox(height: 11,),
          text_field(controller: _addressController ,keybord: TextInputType.text, errorText1: addressErorr, hint: "عبد الله ",),

          const SizedBox(height: 24,),
         Center(child:  ElevatedButton(
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
                   text: "تعديل", size: 15, color: context.wihteColor)),)


        ],)
    );
  }
  void performUpdate(){
    if(checkData()){
      updateInformation();
    }
  }
  bool checkData(){
    if(_nameController.text.isNotEmpty && _emailController.text.isNotEmpty && _addressController.text.isNotEmpty
        && _phoneNmberController.text.isNotEmpty && _dateOfBirthController.text.isNotEmpty && _idNumberController.text.isNotEmpty){
      return true;
    }
    checkTextFiled1();
    context.snackBar(massage: "enter the value", error: true);
    return false;
  }
  void checkTextFiled1() {
    setState(() {
      nameErorr = _nameController.text.isEmpty ? ' اسم المتخدم مطلوب ' : null;
      emailErorr = _emailController.text.isEmpty ? 'ايميل المستخدم مطلوب': null;
      addressErorr = _addressController.text.isEmpty ? 'العنوان مطلوب': null;
      idNumberErorr = _idNumberController.text.isEmpty ? 'رقم الهوية مطلوب': null;
      phoneErorr = _phoneNmberController.text.isEmpty ? 'رقم الهاتف مطلوب': null;
      dateErorr = _dateOfBirthController.text.isEmpty ? 'تاريخ الميلاد مطلوب': null;

    });
  }
  void updateInformation(){
    Navigator.pushReplacementNamed(context, "/bot");
  }
}
