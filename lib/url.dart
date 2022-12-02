import 'package:flutter/material.dart';
//import 'package:pratice/main.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class Url extends StatefulWidget {
  const Url({Key? key}) : super(key: key);

  @override
  State<Url> createState() => _UrlState();
}

class _UrlState extends State<Url> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),
        title: Text("CONTACT US"),

      ),
      body: Center(

        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(

              margin: EdgeInsets.all(20),
              height: 50,
              //color: Colors.green,
              width: double.infinity,
              child:
              Card(
                elevation: 10,
                child: ElevatedButton.icon(


                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),),
                  icon: Icon(Icons.whatsapp,textDirection: TextDirection.ltr),
                  onPressed: (){
                    whatsapp();
                  },
                  label: Center(
                      child: Text("WHATSAPP ",style: TextStyle(fontSize: 20,color: Colors.black),)),),
              ),

            ),
            SizedBox(height: 25,),
            Container(

              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              child:
              Card(
                elevation: 30,
                child: ElevatedButton.icon(


                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey),),
                  icon: Icon(Icons.call,textDirection: TextDirection.ltr),
                  onPressed: (){
                    calling();
                  },
                  label: Center(
                      child: Text("CALL US ",style: TextStyle(fontSize: 20,color: Colors.black),)),),
              ),

            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              child:
              Card(
                elevation: 30,
                child: ElevatedButton.icon(


                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),),
                  icon: Icon(Icons.sms,textDirection: TextDirection.ltr),
                  onPressed: (){
                    sms();
                  },
                  label: Center(
                      child: Text("MESSAGE US ",style: TextStyle(fontSize: 20,color: Colors.black),)),),
              ),

            ),
            SizedBox(height: 30,),
            Container(

              margin: EdgeInsets.all(20),
              height: 50,
              //color: Colors.green,
              width: double.infinity,
              child:
              Card(
                elevation: 30,
                child: ElevatedButton.icon(


                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                  icon: Icon(Icons.email,textDirection: TextDirection.ltr),
                  onPressed: (){
                    email();
                  },
                  label: Center(
                      child: Text("EMAIL ",style: TextStyle(fontSize: 20,color: Colors.black),)),),
              ),

            ),


            SizedBox(height: 30,),
            Container(

              margin: EdgeInsets.all(20),
              height: 50,
              //color: Colors.green,
              width: double.infinity,
              child:
              Card(
                elevation: 25,
                child: ElevatedButton.icon(


                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),),
                  icon: Icon(Icons.facebook,textDirection: TextDirection.ltr),
                  onPressed: (){
                    facebook();
                  },
                  label:
                  Center(
                      child: Text("FOLLOW US ON FACEBOOK ",style: TextStyle(fontSize: 20,color: Colors.black),)),),
              ),

            ),

          ],
        ),
      ),
    );





  }
  Future<void> calling() async {
    const url='tel:+923446183834';
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
  Future<void> sms() async {
    const sms='sms:+923446183834';
    if (!await launchUrl(Uri.parse(sms))) {
      throw 'Could not launch $sms';
    }
  }
  celling()async
  {
    const url='tel:+923446183834';
    launchUrl(Uri.parse(url));
  }
  Future<void> whatsapp() async {
    const wurl="whatsapp://send?phone=+923446183834&text=How I can help You!";
    if (!await launchUrl(Uri.parse(wurl))) {
      throw 'Could not launch $wurl';
    }
  }  Future<void> email() async {
    const email="rashidimran4765@gmail.com?subject=Subject&body=type your message";
    if (!await launchUrl(Uri.parse(email))) {
      throw 'Could not launch $email';
    }
  }
  facebook()async
  {
    final Uri facebook = Uri.parse('https://www.facebook.com/Chohan765');
    if (!await launchUrl((facebook))) {
      throw 'Could not launch $facebook';
    }
  }

//launchUrl(Uri parse) {}


}

/*********************/
/*
class Url extends StatefulWidget {
  const Url({Key? key}) : super(key: key);

  @override
  State<Url> createState() => _UrlState();
}

class _UrlState extends State<Url> {
  @override
  Widget build(BuildContext context) {
    var mobileNo='+923446183834';
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
        ),

        title: Text('CONTACT US'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
             SizedBox(width: 30,),
              MaterialButton(onPressed: (){
                //FlutterOpenWhatsapp.sendSingleMessage(mobileNo, 'hi how are u');
                launch('https://web.whatsapp.com/');
              },
                minWidth: double.infinity,
                color: Colors.green,
                shape: StadiumBorder(),
              child: Text('WHATSAPP'),
              ),
              Spacer(),
              SizedBox(width: 30,),
              MaterialButton(onPressed: (){
                launch('https://www.facebook.com/Chohan765');
              },
                minWidth: double.infinity,
                color: Colors.blue,
                shape: StadiumBorder(),
                child: Text('FACEBOOK'),
              ),
              Spacer(),
              MaterialButton(onPressed: (){
                launch('https://mail.google.com/mail/u/0/#inbox');
              },
                minWidth: double.infinity,
                color: Colors.red,
                shape: StadiumBorder(),
                child: Text('Email'),
              ),
              Spacer(),
              SizedBox(width: 30,),
              MaterialButton(
                onPressed: (){
                  launch('tel:$mobileNo');
                  },
                minWidth: double.infinity,
                color: Colors.purple,
                shape: StadiumBorder(),
                child: Text('CALL'),
              ),
              Spacer(),
              SizedBox(width: 30,),
              MaterialButton(
                onPressed: (){
                  launch('sms: $mobileNo');
                },
                minWidth: double.infinity,
                color: Colors.pink,
                shape: StadiumBorder(),
                child: Text('SMS'),

              ),Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}*/