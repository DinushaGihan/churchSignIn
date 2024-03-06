import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:signup/form.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), 
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
        home: LoginScreen(),
      // home:  Scaffold(
        
      //   //appBar: AppBar(title: Text('Card with Background Image')),
      //   body: MyCardWithBackground(),
      // ),
    );
  }
}

class MyCardWithBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)), 
    child:Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/church.jpg'), 
          alignment: Alignment.topCenter,
          scale: 1
          //fit: BoxFit.cover, 
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200,bottom: 40,left: 12, right: 12),
          child: Card(
            elevation: 5,
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                      //LoginScreen(),
                    
                    Text('User Sign In dgfhfuheup unueihphweuhihuec  ewbbuwbebhbw'),
                   
                  ],
                ),
              ),
            ),

          ),
        ),
      ),
    ),
    
    );
  }
}
