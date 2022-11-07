

import 'package:flutter/material.dart';

class mylogin extends StatefulWidget {
  const mylogin({Key? key}) : super(key: key);

  @override
  State<mylogin> createState() => _myloginState();
}

class _myloginState extends State<mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login.png'),
            fit:BoxFit.cover),
        color: Colors.blueGrey,
        ),
      child: Scaffold(

        backgroundColor: Colors.transparent,
        body:Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 20,top: 135),
              child: Text(
                'User\nLogin',
                style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
              ),
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
                                   TextField(
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
                                   ),
                                   SizedBox(
                                     height: 30,
                                   ),
                                   TextField(

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
                                   ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                            onPressed: (){},
                                            child: Text(
                                              'Forget Password',
                                              style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                fontSize: 18,
                                                color: Color(0xff4c505b),
                                              ),
                                            )),
                                      ],
                                    ),
                                   Container(
                                     height: 49,
                                    width: double.infinity,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(50),
                                       gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                                     ),
                                     child: MaterialButton(
                                       onPressed: (){},
                                       child: Text(
                                         'Login',
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
                                         "Don't have an Account?",
                                         style: TextStyle(
                                           color: Colors.black.withOpacity(0.7),
                                         ),
                                       ),
                                       TextButton(onPressed:(){
                                         Navigator.pushNamed(context, 'register');
                                       },

                                           child: Text(
                                             'Register Account',
                                             style: TextStyle(
                                               decoration: TextDecoration.underline,
                                               fontSize: 17,
                                               color: Colors.blue
                                               //color: Color(0xff4c505b),
                                             ),
                                           )),
                                     ],
                                   ),


                                   // Row(
                                   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   //   children: [
                                   //     Text(
                                   //         'Sign In',
                                   //         style: TextStyle(
                                   //             color: Color(0xff4c505b),
                                   //             fontSize: 27,fontWeight: FontWeight.bold)
                                   //     ),
                                   //     CircleAvatar(
                                   //       radius: 30,
                                   //       backgroundColor: Color(0xff4c505b),
                                   //       child: IconButton(
                                   //         color: Colors.white,
                                   //         onPressed: (){
                                   //           //Navigator.pushNamed(context, 'drawer');
                                   //         },
                                   //         icon: Icon(Icons.arrow_forward),
                                   //       ),
                                   //
                                   //     ),
                                   //   ],
                                   //
                                   // ),
                                   // SizedBox(
                                   //   height: 20,
                                   // ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //    children: [
                                  //      TextButton(
                                  //          onPressed: (){
                                  //            Navigator.pushNamed(context, 'register');
                                  //          },
                                  //          child: Text(
                                  //              'Sign Up',
                                  //              style: TextStyle(
                                  //        decoration: TextDecoration.underline,
                                  //                fontSize: 18,
                                  //                color: Color(0xff4c505b),
                                  //      ),
                                  //          )),
                                  //
                                  //    ],
                                  //
                                  //  ),
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
