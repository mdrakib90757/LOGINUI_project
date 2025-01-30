import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'createaccountscreen.dart';
import 'forgetscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {



  final formstate=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formstate,
        child: Center(
          child: Container(
            height: 750,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.amber,width: 5),

            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20,right: 20,bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(padding: EdgeInsets.only(top: 60),
                    child: Text("WELLCOME BACK",style: TextStyle(
                        fontSize: 30
                    ),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 50),
                    child: Text("Login to Continue",style: TextStyle(
                        color: Colors.white.withOpacity(.5)
                    ),),
                  ),
                  SizedBox(height: 40,),


                  Container(
                    margin:  EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    padding:  EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF4A4A54)

                    ),

                    child:  TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "please Enter your correct Username";
                        }else{
                          return null;
                        }
                      },
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                        suffixIcon: Icon(Icons.person,color: Colors.grey,),


                        border: InputBorder.none,

                      ),
                    ),),
                  SizedBox(height: 10,),
                  Container(

                    margin:  EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    padding:  EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  Color(0xFF4A4A54)

                    ),

                    child:  TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "please Enter your correct Password";
                        }else{
                          return null;
                        }
                      },
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                        suffixIcon: Icon(Icons.lock,color: Colors.grey,),
                        border: InputBorder.none,
                      ),
                    ),),

                  SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.centerRight,
                    //margin: EdgeInsets.symmetric(),
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Forgetscreen(),));

                      },
                      child: Text("Forget Password?",style: TextStyle(
                          color: Colors.grey
                      ),),
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
                        setState(() {
                          formstate.currentState!.validate();
                        });

                      }, child: Text("Log in",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),),

                    ),
                  ),

                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 130,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Createaccount(),));
                      },
                      child: Text("Create New Account",
                        style:TextStyle(
                          color: Colors.amber,fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),),
                    ),
                  )












                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
