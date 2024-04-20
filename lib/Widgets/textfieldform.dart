import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Functions/colors.dart';



class TextFieldForm extends StatefulWidget {
  bool enabled;
  bool obscuretext;
  final String? Function(String?) validatefunction;
  void Function(String?)? onchangefunction;
  TextEditingController? textEditingController;
  final String hintText;
  String intial;
  TextFieldForm({
    this.enabled =true,
    this.textEditingController,
    required this.validatefunction,
    required this.hintText,
    this.intial = "",
    this.obscuretext = false,
    this.onchangefunction,
    Key? key,
  }) : super(key: key);


  @override
  State<TextFieldForm> createState() => _TextFieldFormState();
}

class _TextFieldFormState extends State<TextFieldForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        enabled: widget.enabled,
        initialValue: widget.intial,
        controller: widget.textEditingController,
        onChanged: widget.onchangefunction,
        obscureText: widget.obscuretext,

        style: GoogleFonts.signikaNegative(
            fontSize: 23, color: Palette.textd, height: 0.99),
        cursorColor: Palette.main,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Palette.textd),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Palette.textd),
          ),
          contentPadding: const EdgeInsets.all(0),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Palette.main),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Palette.main),
          ),
          errorStyle: GoogleFonts.signikaNegative(
              fontSize: 15, color: Palette.main, height: 0.99),
          focusColor: Palette.main,
          fillColor: Palette.main,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.signikaNegative(
              fontSize: 23, color: Palette.textd, height: 0.99),
        ),

        validator: widget.validatefunction

    );




  }
}





class TextFieldForm2 extends StatefulWidget {
  Icon icon;
  bool enabled;
  bool obscuretext;
  final String? Function(String?) validatefunction;
  void Function(String?)? onchangefunction;
  TextEditingController? textEditingController;
  final String hintText;
  String intial;
  TextFieldForm2({
    this.icon =const Icon(Icons.abc),
    this.enabled =true,
    this.textEditingController,
    required this.validatefunction,
    required this.hintText,
    this.intial = "",
    this.obscuretext = false,
    this.onchangefunction,
    Key? key,
  }) : super(key: key);


  @override
  State<TextFieldForm2> createState() => _TextFieldForm2State();
}

class _TextFieldForm2State extends State<TextFieldForm2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.bgl,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,right: 10.0,left: 10.0),
        child: TextFormField(
            enabled: widget.enabled,
            initialValue: widget.intial,
            controller: widget.textEditingController,
            onChanged: widget.onchangefunction,
            obscureText: widget.obscuretext,
            style: GoogleFonts.signikaNegative(
                fontSize: 20, color: Palette.textd, height: 0.99,fontWeight: FontWeight.w700),
            cursorColor: Palette.main,
            decoration: InputDecoration(
              labelText: widget.hintText,
              labelStyle:GoogleFonts.signikaNegative(
                  fontSize: 15, color: Palette.textdisc, height: 0.99,fontWeight: FontWeight.bold) ,
              icon: widget.icon,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.all(2),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
              errorBorder:  const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              errorStyle: GoogleFonts.signikaNegative(
                  fontSize: 15, color: Palette.main, height: 0.99),
              focusColor: Palette.main,
              fillColor: Palette.main,
              // hintText: widget.hintText,
              // hintStyle: GoogleFonts.signikaNegative(
              //     fontSize: 23, color: Palette.textd, height: 0.99),
            ),

            validator: widget.validatefunction

        ),
      ),
    );
  }
}
