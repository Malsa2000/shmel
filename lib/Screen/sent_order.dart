import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';
import 'package:shamel/models/order_type.dart';
class SentOrder extends StatefulWidget {
   SentOrder({Key? key}) : super(key: key);

  @override
  State<SentOrder> createState() => _SentOrderState();
}

class _SentOrderState extends State<SentOrder> {
  List<OrderType> _order = <OrderType>[
    OrderType(id: 1, name: "order 1"),
    OrderType(id: 2, name: "order 2"),
    OrderType(id: 3, name: "order 3"),
  ];

   int? _id ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(preferredSize:const Size.fromHeight(80.0),
        child: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: (){
            Navigator.pop(context);
          },),
          title:const Text("ارسال الطلب "),
          centerTitle: true,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)
              ,bottomRight: Radius.circular(20))),
          backgroundColor: Color(context.greenColor) ,),),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        children: [
       const SizedBox(height: 30,),
        context.text(text: "نوع الطلب", size: 14, color: context.blackColor , align: TextAlign.start),

        Container(
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
          child: DropdownButton<int>(
              icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
              isExpanded: true,
              hint: const Text("نوع الطلب  "),
              style: GoogleFonts.elMessiri(fontSize: 13 ,fontWeight: FontWeight.w300 ,color:Color( context.greenColor)),
              value: _id ,
              onChanged: (int? vlaue) {
                setState(() => _id = vlaue
                );},
              items: _order.map((OrderType) =>
                  DropdownMenuItem<int>(
                    child: Text(OrderType.name),
                    value: OrderType.id,
                  ))
                  .toList()),

        ),


          const SizedBox(height: 20,),
          context.text(text: "ملاحظات", size: 14, color: context.blackColor
              , align: TextAlign.start),
          const TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              constraints: BoxConstraints(minHeight: 122 ,minWidth: 344 ,maxHeight: 122 ),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))
                  ,borderSide: BorderSide(color: Color(0xFF707070))),
            hintText: "....اكتب ملاحظاتك " ,
              hintStyle: TextStyle(fontSize: 10 ,color: Color(0xFFA4A4A4)),

          ),),

          Padding(
            padding: EdgeInsets.only(top: 28.h),
            child: Row(children: [
              const  Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(context.greenColor),
                    minimumSize: Size(111.w , 42.h),
                    maximumSize: Size(111.w , 42.h),
                    elevation: 2,
                    alignment: AlignmentDirectional.center,
                  ),
                  onPressed: (){},
                  child: context.text(
                      text: "ارسال", size: 14, color: context.wihteColor
                      ,wieght: FontWeight.w400 ,align: TextAlign.center)),

            ],),
          )

        ],),


    );
  }
}
