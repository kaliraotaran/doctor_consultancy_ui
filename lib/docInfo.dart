

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DocInfo extends StatelessWidget {
  const DocInfo({super.key, required this.name, required this.image, required this.succ, required this.rating, required this.reviews, required this.date});
  final String name;
  final String image;
  final String succ;
  final String rating;
  final String reviews;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),

      body: Column(children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(13),
              width: 50,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.white),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(date, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 17),),
            ),
          ],
        ),
       const SizedBox(height: 30,),
         SizedBox(
          height: 180,
          width: 180,
          child: Center(
            child: ClipRRect(
              
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(image, fit: BoxFit.fill,),
            ),
          ),
        ),
     const   SizedBox(height: 20,),
        Center(child: Text(name, style:const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),),
        const Center(child: Text('Orthopedic', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black54),),),
       const SizedBox(height: 40,),
         
          
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(succ, style:const TextStyle(fontWeight: FontWeight.w400, fontSize: 23),),
              const  Text('Succeed',style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black54 ), )
              ],
            ),
            Column(
              children: [
                Text(rating, style:const TextStyle(fontWeight: FontWeight.w400, fontSize: 23),),
               const Text('Rating',style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black54 ), )
              ],
            ),
            Column(
              children: [
                Text(reviews, style:const TextStyle(fontWeight: FontWeight.w400, fontSize: 23),),
               const Text('Reviews',style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black54 ), )
              ],
            )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.all(20).copyWith(top: 190),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.black),
            child: Center(child: Text('Book Appointment', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),),),
          ),
        )
      ],),
    );
  }
}