// ignore: file_names
import 'package:doctor_consultancy_ui/docInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:page_transition/page_transition.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),

      body: SingleChildScrollView(
        child: Column(
        
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
        
                child: Container(
                  margin:const EdgeInsets.all(20),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
                  child:const Icon(Icons.arrow_back)),
              ),
        
              Container(
                margin:const EdgeInsets.all(20),
                width: 40,
                height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
                child:const Icon(IonIcons.filter))
            ],),
        
           const Padding(
              padding:   EdgeInsets.only(left: 20.0, bottom: 10),
              child: Row(
                children: [
                  Text('12 June ', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold,color: Colors.black54),),
                  Text('- 11:45',textAlign: TextAlign.end,  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.black54),)
                ],
              ),
            ),
        
           const Padding(
              padding:   EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Our exploration of the medical insights and the innovation is sure to inspire', style: TextStyle(color: Colors.black54,fontSize: 18),),
            ),
           const SizedBox(height: 20,),
            DoctorCard(image: 'assets/1.jpg', name: 'Dr. Ramzy', date: 'May 14, 2024', succ: '80%', rating: '4.0', reviews: '34', time: '20-30 mins',),
            DoctorCard(image: 'assets/3.jpeg', name: 'Dr. Strange', date: 'May 14, 2024', succ: '89%', rating: '4.5', reviews: '55', time: '10-15 mins',),
            DoctorCard(image: 'assets/4.jpeg', name: 'Dr. Kalirao', date: 'May 14, 2024', succ: '85%', rating: '4.3', reviews: '13', time: '30-40 mins',),
            DoctorCard(image: 'assets/5.jpeg', name: 'Dr. Suez', date: 'May 14, 2024', succ: '90%', rating: '4.8', reviews: '77', time: '50-55 mins',),
            DoctorCard(image: 'assets/sus.jpeg', name: 'Dr. Susan', date: 'May 14, 2024', succ: '91%', rating: '4.2', reviews: '35', time: '5-10 mins',),
        
         
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key, required this.image, required this.name, required this.date, required this.succ, required this.rating, required this.reviews, required this.time,
  });
  final String image;
  final String name;
  final String date;
  final String succ;
  final String rating;
  final String reviews;
  final String time;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, PageTransition(child: DocInfo(name: name, image: image, succ: succ, rating: rating, reviews: reviews, date: date), type: PageTransitionType.fade));
      },
      child: Container(
        padding:const EdgeInsets.all(15),
        margin:const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: double.infinity,
        height: 230,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black12), borderRadius: BorderRadius.circular(40)),
                  child:  Center(child: Text(' ${time}', style: TextStyle(color: Colors.black54, fontSize: 15),),),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(image, height: 80,width: 80,fit: BoxFit.cover,),
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, ),),
                    Text('Orthopedic', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),)
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color:  Colors.black12)),
                  child: Center(child: Icon(AntDesign.message_twotone, size: 35,),),
                )
              ],
            )
      
          ],
        ),
      ),
    );
  }
}