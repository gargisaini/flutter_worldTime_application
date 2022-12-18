import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

 class Loading extends StatefulWidget {
   const Loading({Key? key}) : super(key: key);

   @override
   State<Loading> createState() => _LoadingState();
 }

 class _LoadingState extends State<Loading> {

   void setupWorldTime() async {
     WorldTime instance = WorldTime(location: 'Berlin', flag:'germany.png' , url: 'Europe/Berlin');
     await instance.getTime();// becoz it gonna take some to to processwhole get time function so we haveto wait for it
     Navigator.pushReplacementNamed(context, '/home',arguments: {
       'location': instance.location,
       'flag': instance.flag,
       'time': instance.time,
       'isDaytime' : instance.isDaytime,
     });
   }


   @override
   void initState() {
     super.initState();
     setupWorldTime();
   }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.blue[800],
       body: Center(
         child: SpinKitFadingCube(
           color: Colors.white,
           size: 50.0,
         ),
       )
     );
   }
 }


 //     //simulate network request for a username
//      String username = await Future.delayed(Duration(seconds: 3),(){
//        return 'gargi';
//      });
//      //simulate network request to get bio of the usename
//
//      String bio = await Future.delayed(Duration(seconds: 2),(){
//        return 'vegen,musician,egg';
//      });
//
//      print('$username - $bio');
