

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:semester_project/signin.dart';
import 'package:semester_project/utils.dart';


class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();

}

class _signupState extends State<signup> {
  //bool loading=false;
  final _formkey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();


  @override
  void signup(){
    _auth.createUserWithEmailAndPassword(
        email: emailcontroller.text.toString(),
        password: passwordcontroller.text.toString()).then((value){
      utils1().toashMessage(utils1().toString());
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => signin()),
      );

      // setState(() {
      //   loading=false;
      // });

    }).onError((error, stackTrace){
      debugPrint(error.toString());
      utils().toashMessage(error.toString());
      // setState(() {
      //   loading=false;
      // });


    });

  }
  FirebaseAuth _auth=FirebaseAuth.instance;

  // void dispose(){
  //   super.dispose();
  //   namecontroller.dispose();
  //   emailcontroller.dispose();
  //   passwordcontroller.dispose();
  // }
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage('images/splashscreen_logo.png'),
        //     fit:BoxFit.cover),
        color: Colors.white,
      ),
      child: Scaffold(


        backgroundColor: Colors.white,
        body:Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90,top: 40),
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('images/splashscreen_logo.png',),
              ),
            ),


            SingleChildScrollView(
              padding: EdgeInsets.only(left: 130,top: 240),

              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 30,
            ),


            SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(


                  children: [

                    SingleChildScrollView(
                      // physics: AlwaysScrollableScrollPhysics(),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Container(
                            child: SingleChildScrollView(
                              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left: 30,right:30),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Form(
                                        key: _formkey,
                                        child:  Column(
                                          children: [
                                            TextFormField(
                                              controller: namecontroller,
                                              keyboardType: TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                fillColor: Colors.grey.shade100,

                                                filled: true,
                                                labelText: 'Enter Name',

                                                hintText: 'Name',
                                                prefixIcon:Icon(Icons.drive_file_rename_outline),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                               ),
                                              ),
                                              validator: (value){
                                                if(value!.isEmpty){
                                                  return'enter Name';
                                                }
                                                return null;
                                              }
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TextFormField(
                                              controller: emailcontroller,

                                              keyboardType: TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                fillColor: Colors.grey.shade100,

                                                filled: true,
                                                labelText: 'Enter Email',

                                                hintText: 'Email',
                                                prefixIcon:Icon(Icons.email),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                ),
                                              ),
                                                validator: (value){
                                                  if(value!.isEmpty){
                                                    return'enter Email';
                                                  }
                                                  return null;
                                                }
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TextFormField(
                                              controller: passwordcontroller,


                                              keyboardType: TextInputType.visiblePassword,
                                              //obscureText: true,
                                              decoration: InputDecoration(
                                                fillColor: Colors.grey.shade100,
                                                filled: true,
                                                labelText: 'Enter Password',

                                                hintText: 'Password',
                                                prefixIcon:Icon(Icons.lock),
                                                suffixIcon: Icon(Icons.remove_red_eye),
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                ),
                                              ),
                                                validator: (value){
                                                  if(value!.isEmpty){
                                                    return'enter password';
                                                  }
                                                  return null;
                                                }
                                            ),


                                          ],
                                        ),
                                    ),






                                    SizedBox(
                                      height: 30,
                                    ),
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.end,
                                    //   children: [
                                    //     TextButton(
                                    //         onPressed: (){},
                                    //         child: Text(
                                    //           'Forget Password',
                                    //           style: TextStyle(
                                    //             decoration: TextDecoration.underline,
                                    //             fontSize: 18,
                                    //             color: Color(0xff4c505b),
                                    //           ),
                                    //         )),
                                    //   ],
                                    // ),
                                    Container(
                                      height: 49,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                                      ),
                                      child: MaterialButton(
                                        onPressed: (){
                                            if(_formkey.currentState!.validate()){
                                              // setState(() {
                                              //   loading=true;
                                              // });
                                            signup();

                                            }
                                            // Navigator.push(context,
                                            //   MaterialPageRoute(builder: (context) => signin()),
                                            // );


                                        },

                                        child: Text(

                                          'SignUp',
                                          // loading= loading,
                                          style: TextStyle(fontSize: 25,color: Colors.white),

                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Divider(
                                      height: 10,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Do you have an Account?",
                                          style: TextStyle(
                                            color: Colors.black.withOpacity(0.7),
                                          ),
                                        ),
                                        TextButton(onPressed:(){
                                          Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => signin()),
                                          );

                                        },

                                            child: Text(
                                              'SignIn',

                                              style: TextStyle(
                                                  decoration: TextDecoration.underline,
                                                  fontSize: 17,
                                                  color: Colors.blue
                                                //color: Color(0xff4c505b),
                                              ),
                                            )),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );


  }
}
