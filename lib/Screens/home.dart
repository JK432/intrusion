import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrusion/Functions/crud.dart';
import 'package:intrusion/Models/Alert/alert.dart';
import 'package:intrusion/Widgets/Cards/Aleartcard.dart';
import '../Functions/auth.dart';
import '../Functions/colors.dart';
import 'create_game.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.bgd,
        body: Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Container(child:StreamBuilder<List<AlertIntrusion>>(
          stream: CRUD().alertstream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.error);
              final course = snapshot.data;
              if (course == null || course.isEmpty) {
                return Center(
                  child: Container(
                    child: Center(
                        child: Text("Sorry! No docs till now.",
                            style: GoogleFonts.signikaNegative(
                                fontSize: 30.0, color: Palette.textd))),
                  ),
                );
              } else {
                return Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: course.map(buildGridItem).toList()
                  ),
                );
              }
            }

            if (snapshot.hasError) {
              print(snapshot.error);
              print(snapshot.stackTrace);
              return const Center(
                child: CircularProgressIndicator(color: Palette.alert),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(color: Palette.main),
              );
            }
          },
        ),),
          TextButton(
            onPressed: () {
              Authentication().signOut(context);
            },
            child: const Text("Logout"),
          ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) =>
          //                 const CreateGameScreen()));
          //   },
          //   child: const Text("Start game"),
          // ),
        ],
      ),
    ));
  }

  Widget buildGridItem(AlertIntrusion alertIntrusion) {

      return Padding(
          padding: const EdgeInsets.only(top: 15.0,left: 8.0,right: 8.0),
          child: AlertCard(alertIntrusion: alertIntrusion,)
      );

  }
}
