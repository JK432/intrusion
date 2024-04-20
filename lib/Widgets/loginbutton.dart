import 'package:flutter/material.dart';
import '../Functions/colors.dart';

class LoginButton extends StatelessWidget {
  final void Function() onTap;
  final Text text;
  final Icon icon;
  final Color backgroundColor;
  const LoginButton({super.key,required this.onTap,this.text =const Text("Login",),this.icon=const Icon(Icons.arrow_forward,color: Colors.white),this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // splashColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,

      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                AppColor().generateMaterialColor(backgroundColor).shade800,
                AppColor().generateMaterialColor(backgroundColor).shade700,
                AppColor().generateMaterialColor(backgroundColor).shade600,
                AppColor().generateMaterialColor(backgroundColor).shade600,
          ],
        ) ,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 10,bottom: 10,top: 10),
          child: Row(children: [text,SizedBox(width: 10,),icon],),
        ),
      ),
    );
  }
}
