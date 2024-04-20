import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrusion/Functions/missfunction.dart';
import 'package:intrusion/Models/Alert/alert.dart';
import 'package:intrusion/Screens/intrusiondetails.dart';

import '../../Functions/colors.dart';

class AlertCard extends StatefulWidget {
  AlertIntrusion alertIntrusion;
   AlertCard({super.key,required this.alertIntrusion});

  @override
  State<AlertCard> createState() => _AlertCardState();
}

class _AlertCardState extends State<AlertCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(alertIntrusion: widget.alertIntrusion,) ));


      },
      child: Container(

        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
        color: Palette.bgl2

        //   image: DecorationImage(image: NetworkImage(
        //   widget.alertIntrusion.photourl,
        // ),fit: BoxFit.cover),
        ),
        width: MediaQuery.of(context).size.width-5,
        height: 60,
        child: Row(

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Intrusion detected",
                  style: GoogleFonts.signikaNegative(
                      fontSize: 22.0, color: Palette.textl)),
            ),
            Expanded(child: Container()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end
              ,children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Palette.bgl,borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft: Radius.circular(10)),),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(timeAgo(DateTime.fromMillisecondsSinceEpoch(int.parse(widget.alertIntrusion.id))),
                    style: GoogleFonts.signikaNegative(
                        fontSize: 20.0, color: Palette.textl)),
                  ),
                ),
              )
            ],),
          ],
        ),
      ),
    );
  }
}
