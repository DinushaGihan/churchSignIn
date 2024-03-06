import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  
  _LoginScreenState createState()=>_LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{

bool isRememberMe = false;

Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style:TextStyle(
          fontSize: 16,
        )
      ),
      SizedBox(height:10),
      Container(
        alignment: Alignment.centerLeft,
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[
            BoxShadow(
              color:Colors.red,
              blurRadius: 3,
              offset:Offset(0, 2)
              )
            
          ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style:TextStyle(color: Colors.black87),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          hintText: 'Enter email adress',
          hintStyle: TextStyle(
            color: Colors.black38,
          )
          )
        ),
        ),
        
      
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style:TextStyle(
          fontSize: 16,
        )
      ),
      SizedBox(height:10),
      Container(
        alignment: Alignment.centerLeft,
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[
            BoxShadow(
              color:Colors.red,
              blurRadius: 3,
              offset:Offset(0, 2)
              )
            
          ]
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style:TextStyle(color: Colors.black87),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
          hintText: 'Enter password',
          hintStyle: TextStyle(
            color: Colors.black38,
          )
          )
        ),
        ),
        
      
    ],
  );
}

Widget buildForgotPassBtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: ()=> print("Forgot Password pressed"),
      //padding: EdgeInsets.only(right:0),
      child: Text('Forgot Password?',
      style: TextStyle(
        color:Colors.blue
        ),
       ),
      ),

    
      
  );
}

Widget buildRememberCb(){
  return Container(
    height: 20,
    child: Row(
      children:<Widget> [
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white), 
          child: Checkbox(
            value:isRememberMe, 
            checkColor: Colors.black38,
            onChanged:(value){
              setState((){
                isRememberMe = value!;
              });
            }
          )
         ),
         Text('Recurring Subscription',
         style: TextStyle(
          color: Colors.black38,
         ),),
      ]),
  );
}

// Widget buildLoginBtn(){
//   return Container(
//     padding: EdgeInsets.symmetric(vertical: 25),
//     width: double.infinity,
//     child: ElevatedButton(
      
//       onPressed: ()=>print('Login Pressed',),
//       style: ButtonStyle(elevation: ),
//       ),
//         color:Colors.white,
        
        

    
//   );
// }

Widget buildSignUpBtn(){
  return GestureDetector(
    onTap:()=>print("Sign up pressed"),
    child: RichText(
      text:TextSpan(
        children: [
          TextSpan(
            text:'TextStyle',
            style:TextStyle(
              color:Colors.white
            )
            )
          
        ],
        )

    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Container(
        // height: double.maxFinite,
        // width: double.maxFinite,
        
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 120
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Text(
              'User Sign In',
             
              style:TextStyle(fontSize: 40)
            ),
            SizedBox(height: 50),
            buildEmail(),
            SizedBox(height: 20),
            buildPassword(),
            buildForgotPassBtn(),
            buildRememberCb(),
            //buildLoginBtn(),
            buildSignUpBtn()
        ]),
        ),
      ),
    );
      
  }
}