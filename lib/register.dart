import 'package:flutter/material.dart';

class myregister extends StatefulWidget {
  const myregister({Key? key}) : super(key: key);

  @override
  State<myregister> createState() => _myregisterState();
}

class _myregisterState extends State<myregister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/register.png'),
            fit:BoxFit.cover),
        color: Colors.blueGrey,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body:Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,top: 130),
              child: Text(
                'Create \nAccount',
                style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Center(
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Container(

                      child: Center(
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left: 30,right:30),
                            child: Column(
                              children: [
                                SizedBox(
                                  height:1,
                                ),
                                TextField(
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(

                                   labelText: 'Enter Name',
                                    fillColor: Colors.grey.shade100,

                                    filled: true,
                                    hintText: 'Name',
                                    prefixIcon:Icon(Icons.drive_file_rename_outline),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
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
                                  //obscureText: true,
                                 //: true,
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
                                  height: 20,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        'Sign In',
                                        style: TextStyle(
                                            color: Color(0xff4c505b),
                                            fontSize: 27,fontWeight: FontWeight.bold)
                                    ),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Color(0xff4c505b),
                                      child: IconButton(
                                        color: Colors.white,
                                        onPressed: (){
                                          Navigator.pushNamed(context, 'drawer');
                                        },
                                        icon: Icon(Icons.arrow_forward),
                                      ),

                                    ),
                                  ],

                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     TextButton(
                                //         onPressed: (){
                                //           Navigator.pushNamed(context, 'register');
                                //         },
                                //         child: Text(
                                //           'Sign Up',
                                //           style: TextStyle(
                                //             decoration: TextDecoration.underline,
                                //             fontSize: 18,
                                //             color: Color(0xff4c505b),
                                //           ),
                                //         )),
                                //
                                //   ],
                                //
                                // ),
                              ],
                            ),
                          ),
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
    );
  }
}
