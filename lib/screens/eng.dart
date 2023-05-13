import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refugees_help/screens/job_screen.dart';
import 'package:url_launcher/url_launcher.dart';
class eng extends StatelessWidget {
  const eng({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMark = false;
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xFF2B2A2D),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),

        ),
      ),
      height: 550,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 250,
                            width: 250,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.withOpacity(0.1)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset("images/2.jpg",
                                fit: BoxFit.cover,
                              ),
                            )
                        ),
                        SizedBox(width: 10,),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(isMark ? Icons.bookmark :
                        Icons.bookmark_outline_rounded,
                          color: isMark ? Theme
                              .of(context)
                              .primaryColor : Colors.white,),
                        Icon(Icons.more_horiz_outlined, color: Colors.white,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),

            Container(
              width: 200,
              height: 50,

              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("تفاصيل الشغل ", style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70
                  ),),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 100,),
                  Text('مواعيد العمل دوام كامل', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                  SizedBox(width: 10,),
                  Icon(Icons.access_time, color: Colors.yellow,),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('المرتب 15 الف شهريا', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    SizedBox(width: 10,),
                    Icon(Icons.monetization_on_outlined, color: Colors.yellow,),

                  ]
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 200,
              height: 50,

              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(': المتطلبات', style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70
                  ),)

                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('  العمل في التنفيذ بمجال المقاولات  -', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('عدد سنوات خبرة في نفس المجال المطلوب -',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('  يجب ارفاق سابقة خبرة تؤيد العمل السابق -', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),)
              ],
            ),

            SizedBox(height: 10,),
            Container(
              width: 200,
              height: 50,

              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('.. تواصل معنا', style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70
                  ),)

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 25),
              height: 45,
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 0,
                      primary: Theme
                          .of(context)
                          .primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  onPressed: () {
                    whatsapp();
                  },
                  child: Icon(FontAwesomeIcons.whatsapp,size: 40,)
                /*Text('Apply Now', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),*/
                //envelope
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              height: 45,
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      elevation: 0,
                      primary: Theme
                          .of(context)
                          .primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  onPressed: () {
                    email();
                  },
                  child: Icon(FontAwesomeIcons.envelope,size: 40,)
                /*Text('Apply Now', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),*/
                //envelope
              ),
            ),
          ],
        ),
      ),
    );
  }

  /* calling()async{
    const url= 'tel:+201025027368';
    if( await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not lanch $url';
    }
  }*/
  whatsapp() async {
    await launch('https://wa.me/+201025027368?text=hello');
  }
  email(){
    launch('mailto:rahmaKh871@gmail.com?subject=TestEmail&body=I am typing this test email%20plugin');

  }
}