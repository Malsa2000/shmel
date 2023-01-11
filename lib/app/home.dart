import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shamel/Controlleelper/controller_helper.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
    body: ListView(
      children: [
        SizedBox(height: 16.h,),
        Row(children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/sent_order');
            },
            child: Container(
              margin: EdgeInsets.only(right: 21.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
                boxShadow:const [
                  BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 5)
                ],
              ),
              alignment: Alignment.center,
              height: 99.h,
              width: 109.w,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(height: 48.h,
                      width: 50.w,
                      image: AssetImage("images/home2.png")),
                  SizedBox(height: 10,),
                  context.text(text: "ارسال طلب", size: 14, color: context.greenColor ,wieght: FontWeight.w500)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/advice");

            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
                boxShadow:const [
                  BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 5)
                ],
              ),
              alignment: Alignment.center,
              height: 99.h,
              width: 109.w,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(height: 48.h,
                      width: 50.w,
                      image: AssetImage("images/home3.png")),
                  SizedBox(height: 10,),
                  context.text(text: "نصائح وارشادات", size: 14, color: context.greenColor ,wieght: FontWeight.w500)
                ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/child");
            },
            child: Container(
              margin: EdgeInsets.only(left: 21.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
                boxShadow:const [
                  BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 5)
                ],
              ),
              alignment: Alignment.center,
              height: 99.h,
              width: 109.w,
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(height: 48.h,
                      width: 50.w,
                      image: AssetImage("images/home1.png")),
                  SizedBox(height: 10,),
                  context.text(text: "الأبناء", size: 14, color: context.greenColor ,wieght: FontWeight.w500)
                ],),
            ),
          ),
        ],),
        SizedBox(height: 22.h,),
       Container(
         margin: EdgeInsets.symmetric(horizontal: 21.w),
         padding:  EdgeInsets.all(10),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10.r),
           border: Border.all(color: Color(context.greenColor) ,width: 1),
           color: Colors.white,
           boxShadow:const [
             BoxShadow(
                 offset: Offset(0, 1),
                 color: Colors.black12,
                 blurRadius: 5)
           ],
         ),
         child: Column(
           mainAxisAlignment:MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           context.text(text: "الزيارة القادمة للجمعية",
               size: 14, color: context.blackColor ),
           const  SizedBox(height: 7,),

             Row(children: [
             Icon(Icons.alarm ,size: 20, color: Color(context.greenColor),),
             context.text(text: "10:30 AM",
                 size: 13, color: context.blackColor),
           ],),
             const SizedBox(height: 5,),
           Row(children: [
             Icon(Icons.calendar_month_sharp ,size: 20, color: Color(context.greenColor),),
             context.text(text: "4 جمادي الاول 1443",
                 size: 13, color: context.blackColor),
           ],),
             const  SizedBox(height: 5,),
             Row(children: [
             Icon(Icons.location_on_outlined ,size: 20, color: Color(context.greenColor),),
             context.text(text: "الرياض جمعية شمل",
                 size: 13, color: context.blackColor),
           ],),

         ],),
       ),
        SizedBox(height: 29.h,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            children: [
              context.text(text: "الاشعارات ", size: 16, color: context.blackColor),
              Spacer(),
              TextButton(onPressed: (){}, child: context.text(text: "المزيد ", size: 13, color: context.blackColor),
              ),
            const  Icon(Icons.arrow_back_ios ,size: 15 ,color: Colors.black, )
            ],
          ),
          ListView.builder(
              physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder:( context ,index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Icon(Icons.notifications_none_sharp ,color: Colors.black, size: 22,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                context.text(text: "لقد حان موعد زيارتك لأطفالك", size: 13, color: context.blackColor,wieght: FontWeight.w400),
                context.text(text: "مبادرة شمل", size: 14, color: context.blackColor ,wieght: FontWeight.w500),
               const SizedBox(height: 20,)
              ],)

            ],);


            //   ListTile(
            //   style: ListTileStyle.list,
            //   focusColor: Colors.grey,
            //   leading: const Icon(Icons.notifications_none_sharp ,color: Colors.black,),
            //   subtitle:context.text(text: "مبادرة شمل", size: 14, color: context.blackColor ,wieght: FontWeight.w500),
            // title: context.text(text: "لقد حان موعد زيارتك لأطفالك", size: 13, color: context.blackColor,wieght: FontWeight.w400),
            // );
          })  
            
        ],),),
      const SizedBox(height: 35,),
        Row(children: [
          const  Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(context.greenColor),
                minimumSize: Size(155.w , 42.h),
                maximumSize: Size(155.w , 42.h),
                elevation: 2,
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.symmetric(horizontal: 21),
              ),
              onPressed: (){showDailalog(context);},
              child: context.text(
                  text: "تحضير لزيارة الجمعية", size: 14, color: context.wihteColor ,wieght: FontWeight.w400)),
          const SizedBox(width: 21,)

        ],)


      ],
    ),
    );
  }

  Future showDailalog(BuildContext context){
    return showDialog(context: context, builder: (context)=> AlertDialog(
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.transparent,
      content: Container(
        height: 50.h,
        width : 260.w,
          margin: EdgeInsets.only(top: 490.h),
          padding: EdgeInsets.all(12),
         alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))

          ),
          child: SizedBox(
            height: 42.h,
            width: 240.w,
            child: context.text(text: "سيتم ارسال اشعار للجمعية باقتراب وصولك", size: 13,
                color: context.blackColor ,wieght: FontWeight.w400),

          )

      ),
    ));


  }

}
