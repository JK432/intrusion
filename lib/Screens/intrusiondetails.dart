import 'package:flutter/material.dart';
import 'package:intrusion/Functions/colors.dart';
import 'package:intrusion/Models/Alert/alert.dart';
class DetailScreen extends StatefulWidget {
  AlertIntrusion alertIntrusion;
  DetailScreen({super.key,required this.alertIntrusion});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Palette.bgd,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Column(

              children: List.generate(widget.alertIntrusion.photourl.length,(index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(width: MediaQuery.of(context).size.width-10,height: 150,decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),image:DecorationImage(image: NetworkImage(widget.alertIntrusion.photourl[index])) ),),
                );
              }),
            ),
          ],
        ),
      )
    );
  }
}
