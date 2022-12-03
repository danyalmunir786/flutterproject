import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:semester_project/homescreen.dart';
import 'package:semester_project/photo.dart';
import 'package:semester_project/splashscreen.dart';
import 'package:semester_project/url.dart';
import 'package:semester_project/video.dart';
import 'package:semester_project/potery.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(

      initialIndex: 1,
      length: 3,
      child: Scaffold(
        // bottomNavigationBar: CurvedNavigationBar(
        //   items: [
        //     Icon(Icons.add),
        //     Icon(Icons.home),
        //     //Icon(Icons.search),
        //     Icon(Icons.settings),
        //   ],
        // ),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )
          ),
          title: Text(
            'Memes',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: (){},

            ),



            PopupMenuButton(itemBuilder:(context)=>[
              PopupMenuItem<int>(
                value: 0,
                child: Text('setting'),
              ),
              PopupMenuItem<int>(
                value: 0,
                child: Text('More apps'),
              ),
              PopupMenuItem<int>(
                value: 0,
                child: Text('Privacy Policy'),
              ),
              PopupMenuItem<int>(
                value: 0,
                child: Text('Categories'),
              ),
              PopupMenuItem<int>(
                value: 0,
                child: Text('Exit'),
              ),
            ])
          ],
          backgroundColor: Colors.black26,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            tabs: [

             // Tab(icon: Icon(Icons.camera),),
              Tab(child: Text('photos')),
              Tab(child: Text('Videos')),
              Tab(child: Text('Poetry')),
            ],
          ),
        ),



        drawer: Container(
          width: 290,
          child: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/background.png'),
                      fit:BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Image(
                        image: AssetImage('images/splashscreen_logo.png',),
                        height: 50,
                        width: 50,
                      ),
                      // SizedBox(
                      //   height: 2,
                      //   width: 7,
                      // ),
                      Text('Memes',
                        style:
                        TextStyle(fontSize: 20,
                            color: Colors.white),
                      ),
                      Row(
                        // children: [
                        //   Text('dhanyalmunir851@gmail.com',
                        //     style:
                        //     TextStyle(fontSize: 15,
                        //         color: Colors.white),
                        //   ),
                        //   Icon(
                        //     Icons.arrow_drop_down,
                        //     color: Colors.white,
                        //     size: 30,
                        //   ),
                        // ],
                      ),

                    ],
                  ),
                ),

                ListTile(

                  //selected: _selected==0,
                  leading: Icon(
                    Icons.home,
                    color: Colors.black,

                    size: 25,
                  ),
                  title: Text(
                    'Home',

                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  onTap: (){
                    //changeselected(0);
                  },
                ),
                ListTile(
                  // selected: _selected==0,
                  leading: Icon(
                    Icons.category,
                    color: Colors.black,

                    size: 25,
                  ),

                  title: Text(
                    'Categories',


                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  onTap: (){
                    //changeselected(0);
                  },
                ),
                ListTile(
                  //selected: _selected==0,
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,

                    size: 25,
                  ),
                  title: Text(
                    'Setting',

                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  onTap: (){
                    //changeselected(0);
                  },
                ),
                ListTile(
                  //selected: _selected==0,
                  leading: Icon(
                    Icons.info,
                    color: Colors.black,

                    size:25,
                  ),
                  title: Text(
                    'About as',

                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  onTap: (){
                    //changeselected(0);
                  },
                ),
                Row(

                ),
                ListTile(
                  //selected: _selected==0,
                  leading: Icon(
                    Icons.contact_page,
                    color: Colors.black,

                    size:25,
                  ),


                  title: Text(
                    'Contact as',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,

                    ),

                  ),


                  //
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Url()),
                    );

                  },
                ),

                new Divider(
                  thickness: 3,
                  indent:1,
                  endIndent: 1,
                ),
                ListTile(
                  //selected: _selected==0,
                  leading: Icon(
                    Icons.share,
                    color: Colors.black,

                    size: 25,
                  ),
                  title: Text(
                    'Share app',

                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  onTap: (){
                    //changeselected(0);
                  },
                ),
                ListTile(
                  //selected: _selected==0,
                  leading: Icon(
                    Icons.star,
                    color: Colors.black,

                    size: 25,
                  ),
                  title: Text(
                    'Rate as',

                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  onTap: (){
                    //changeselected(0);
                  },
                ),
                ListTile(
                  //selected: _selected==0,
                  leading: Icon(
                    Icons.more,
                    color: Colors.black,

                    size:25,
                  ),
                  title: Text(
                    'More apps',

                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  // onTap: (){
                  //   changeselected(0);
                  // },

                ),

              ],
            ),

          ),

        ),

        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: (){
        //
        //     print('pressed');
        //   },
        // ),
        body: TabBarView(
          children:<Widget>[
            photo(),
            video(),
            potery(),



            //
            // // Center(
            // ////   child: Text(''),),
            // Column(mainAxisAlignment: MainAxisAlignment.center,
            //   children:<Widget>[
            //     Icon(Icons.photo, color: Colors.blue,),
            //
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Padding(padding: EdgeInsets.symmetric(horizontal: 40),
            //       child: Text("photos on it",textAlign: TextAlign.center,),),
            //   ],
            // ),            Column(mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            //   Icon(Icons.video_camera_front, color: Colors.blue,),
            //   SizedBox(
            //     height: 20,
            //   ),
            //   Padding(padding: EdgeInsets.symmetric(horizontal: 40),
            //   child: Text("Videos on it",textAlign: TextAlign.center,),),
            // ],
            // ),
            //
            // Column(mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(Icons.text_snippet, color: Colors.blue,),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Padding(padding: EdgeInsets.symmetric(horizontal: 40),
            //       child: Text("poetry on it",textAlign: TextAlign.center,),),
            //   ],
            // ),
            // // ListView.builder(
            // //     Column(mainAxisAlignment: MainAxisAlignment.center,
            // //   children: [
            // //     Icon(Icons.person:50 , color: Colors.blue),
            // //
            // //
            // //   ],
            // //     ),


          ],
        ),
      ),
    );
  }
}
