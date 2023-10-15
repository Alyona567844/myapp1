import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network('https://upload.wikimedia.org/wikipedia/commons/b/bb/Earth-lights.jpg').image,
            )
          ),
          child: Wrap(children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 380, vertical: 117),
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: Text('User Login', style: TextStyle(color: Color.fromARGB(255, 47, 46, 46),
                  fontSize: 20)),),
                  SizedBox(height: 30,),
                  Row(children: [
                    Text('Email Address         :     ', style: TextStyle(
                      color: Color.fromARGB(255, 47, 46, 46), fontSize: 15),),
                    Container(
                      height: 35, 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0), color: Color.fromARGB(255, 245, 242, 242),
                        border: Border.all(width: 1, color: Color.fromARGB(255, 200, 189, 189),), 
                      ),
                      child: Align(alignment: Alignment.centerLeft, 
                      child: Text('   Enter Email Address                         ', style: TextStyle(color: Color.fromARGB(255, 178, 174, 174),fontSize: 13)),)
                    )
                  ],),
                  SizedBox(height: 30,),
                  Container(
                    child: Row(children: [
                      Text('Enter Password       :    ', style: TextStyle(
                      color: Color.fromARGB(255, 47, 46, 46), fontSize: 15),),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0), color: Color.fromARGB(255, 245, 242, 242), border: Border.all(width: 1, color: Color.fromARGB(255, 200, 189, 189),)
                        ),
                        child: Align(alignment: Alignment.centerLeft, 
                        child: Text('   Enter Password                                  ', style: TextStyle(color: Color.fromARGB(255, 178, 174, 174),fontSize: 13)),)
                      )
                    ]),
                  ),
                  SizedBox(height: 20,),
                  Row(children: [
                    Icon(Icons.check_box_outline_blank),
                    Text('Keep me Login', style: TextStyle(
                      color: Color.fromARGB(255, 47, 46, 46), fontSize: 15))
                  ], mainAxisAlignment: MainAxisAlignment.center),
                  SizedBox(height:30),
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('                   Forgot your password?', style: TextStyle(
                      color: Color.fromARGB(255, 47, 46, 46), fontSize: 15)),
                      SizedBox(
                        height: 40,
                        width: 80,
                        child: TextButton(onPressed:() {}, child: Text('Login'), style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 16, 183, 150),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.all(8), 
                          textStyle: TextStyle(fontSize: 15),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(height:30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Do not have an account  ', style: TextStyle(
                      color: Color.fromARGB(255, 47, 46, 46), fontSize: 15)),
                      Text('Click to Sign Up', style: TextStyle(
                      color: Color.fromARGB(255, 4, 84, 51), fontSize: 15))
                    ],
                  )
                ]
              ),),
            )
          ],),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.rectangle,
                border: Border.all(width: 2, color: Color.fromARGB(255, 16, 183, 150))),
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.rectangle,
                  border: Border.all(width: 4,color: Colors.white)),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.rectangle,
                    color:Color.fromARGB(255, 16, 183, 150)),
                    child: Text('SMARTEYE APPS', style:TextStyle(color: Colors.white)),
                  ),
                )
              ),
              Text('Home  Templates  Category  Scripts  Blog  Support',
              style: TextStyle(color: const Color.fromARGB(255, 47, 46, 46), fontSize: 15),),
              TextButton(onPressed:() {}, child: Text('Login/Signup'), 
              style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 16, 183, 150),
              foregroundColor: Colors.white,
              padding: EdgeInsets.all(5), 
              textStyle: TextStyle(fontSize: 15),
            )),
            ],
            ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
