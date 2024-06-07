
import 'package:doctor_consultancy_ui/SchedulePage.dart';
import 'package:page_transition/page_transition.dart';
 import 'package:flutter/material.dart';
 import 'package:icons_plus/icons_plus.dart';
 import 'package:lottie/lottie.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Align(
            alignment: Alignment.topRight,
             child: Container(
                margin:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: 180,
                height: 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child:const Row(
                  children: [
                    SizedBox(width: 4,),
                    Icon(IonIcons.reader, color: Colors.grey,),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 2,),
                          Text('Taran Kalirao', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                          Text('Patient', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),)
                      ],
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/1.jpg'),
                    )
                  ],
                ),
              ),
           ),
          const SizedBox(height: 20,),
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:const Color.fromARGB(255, 99, 95, 138)
            ),
            child: Stack(
              children: [
                  
                 ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: LottieBuilder.asset('assets/2.json', fit: BoxFit.cover,height: 350, width: double.infinity,)) ,
                 
                 Padding(
                  padding:const EdgeInsets.all(8.0).copyWith(right: 20),
                  child:  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          SizedBox(height: 20,),
                          
                          Text('Medical Insights', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                          
                          Text('& Innovations', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                           
                          Text('Our exploration the medical insights and innovations is sure to inform', style: TextStyle(fontWeight: FontWeight.w300, color: Color.fromARGB(255, 184, 183, 183), fontSize: 15)),
                            
                    
                    ],
                  ),
                ),
              ],
            ),
           ),
        
         const SizedBox(height: 30,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Containers(icon:IonIcons.chatbox_ellipses , text1: 'Patient', text2: 'Consults',),
              Containers(icon:IonIcons.location , text1: 'Locate', text2: 'Pharmacy',)

            ],
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, ),
            child:InkWell(
            onTap: (){
              Navigator.push(context, PageTransition(child:const SchedulePage(), type: PageTransitionType.fade));
            },
              child:const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Schedule', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
               ],),
            ),
          )
          ],
        ),
      ),
    );
  }
}

class Containers extends StatelessWidget {
  const Containers({
    super.key, required this.icon, required this.text1, required this.text2,
  });
  final IconData icon;
  final String text1;
  final String text2;
  


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 20),
      width: 150,
      height: 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:const EdgeInsets.only(bottom: 28.0),
            child: Icon(icon, size: 28,),
          ),
          Text(text1, style:const TextStyle(fontSize: 15),),
          Text(text2, style: const TextStyle(fontSize: 15),)
        ],
      ),
    );
  }
}