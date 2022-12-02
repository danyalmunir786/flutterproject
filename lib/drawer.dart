import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
class drawer_ extends StatelessWidget {
  const drawer_({super.key});

  // int _selected =0;
  // void changeselected(int indux){
  //   setState(() {
  //     _selected=indux;
  //   });
  // }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.add),
          Icon(Icons.home),
          //Icon(Icons.search),
          Icon(Icons.settings),
        ],
      ),

      appBar: AppBar(
        title: const Text('Memes', style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.blueGrey,
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
        // actions: [
        //   PopupMenuButton(itemBuilder: (context)=>[
        //     PopupMenuItem<int>(
        //      value: 0,
        //       child: Text("setting"),
        //     ),
        //   ])
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                hintText: '  search',
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(),
                )
              ),
            )
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
                      image: AssetImage('images/logo.png'),
                      height: 70,
                    ),
                    Text('Memes',
                      style:
                      TextStyle(fontSize: 15,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text('dhanyalmunir851@gmail.com',
                          style:
                          TextStyle(fontSize: 15,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
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
                  //changeselected(0);
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

    );

  }


}