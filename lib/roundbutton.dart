import 'package:flutter/material.dart';
import 'package:semester_project/signup.dart';


class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final bool loading;
  const RoundButton({Key? key,
  required this.title,
    required this.ontap,
    this.loading=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Center(child: loading ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,):
        Text(title,style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
