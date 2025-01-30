import 'package:flutter/material.dart';


import 'loginscreen.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
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
                child: Text("Create New",
                  style: TextStyle(
                      fontSize: 30),),
              ),
              Text("Account",style: TextStyle(
                  fontSize: 28
              ),),

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
                    hintText: "Usernsme",
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
                    hintText: "Contact Number",
                    hintStyle: TextStyle(

                    ),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.contact_phone_rounded,color: Colors.grey,),

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
                    hintText: "Password",
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
                    child: Text("CREATE",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),)
                ),
              ),

              Container(
                height: 100,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                  },
                  child: Text("Login",style: TextStyle(
                      fontSize: 12,
                      color: Colors.amber,
                  ),),
                ),


              )


















            ],
          ),
        ),
      ),

    );
  }
}
