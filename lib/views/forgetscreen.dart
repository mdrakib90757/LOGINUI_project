import 'package:flutter/material.dart';


import 'loginscreen.dart';

class Forgetscreen extends StatefulWidget {
  const Forgetscreen({super.key});

  @override
  State<Forgetscreen> createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<Forgetscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 750,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.amber,width: 4)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(padding: EdgeInsets.only(top: 60),
                child: Text("Reset Password",
                  style: TextStyle(
                      fontSize: 30),),
              ),

              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 15,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),

                    color: Color(0xFF4A4A54)
                ),
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: "Usernsme or Contact number",
                    hintStyle: TextStyle(

                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.person,color: Colors.grey,),

                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 15,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),

                    color: Color(0xFF4A4A54)
                ),
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: " New Password",
                    hintStyle: TextStyle(

                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.lock,color: Colors.grey,),

                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 15,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),

                    color: Color(0xFF4A4A54)
                ),
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(

                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.lock,color: Colors.grey,),

                  ),
                ),
              ),

              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
                        minimumSize: Size(double.infinity, 50)
                    ),

                    onPressed: () {

                    },
                    child: Text("Continue",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),)
                ),
              ),
              SizedBox(height: 50,),


              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                },
                child: Text("Login",
                style: TextStyle(
                  color: Color(0xFFFCC035)
                )
                ),
              )



















            ],
          ),
        ),
      ),

    );
  }
}

