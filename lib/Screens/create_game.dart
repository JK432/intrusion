import 'package:flutter/material.dart';

import '../Widgets/Buttons/buttons.dart';
import '../Widgets/textfieldform.dart';
class CreateGameScreen extends StatefulWidget {
  const CreateGameScreen({super.key});

  @override
  State<CreateGameScreen> createState() => _CreateGameScreenState();
}

class _CreateGameScreenState extends State<CreateGameScreen> {
  @override
  final GlobalKey<FormState> creategameform = GlobalKey();
  String p1email="";
  String p2email="";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
              key: creategameform,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10,),
                  TextFieldForm(
                      obscuretext:false,
                      hintText:"Name" ,
                      validatefunction:(input) {
                        if (input == null || input.isEmpty) {
                          return 'Please enter a valid Name';
                        }  else {
                          // name = input;
                        }
                        return null;
                      }),
                  SizedBox(height: 10,),
                  TextFieldForm(
                      obscuretext:false,
                      hintText:"Email" ,
                      validatefunction:(input) {
                        if (input == null || input.isEmpty|| input.contains("@")==false) {
                          return 'Please enter a valid Email';
                        }  else {
                          // email = input;
                        }
                        return null;
                      }),
                  SizedBox(height: 10,),
                  TextFieldForm(
                      obscuretext: true,
                      hintText:"Password" ,
                      validatefunction:(input) {
                        if (input == null || input.isEmpty || input.length<5) {
                          return 'Please enter a valid password';
                        } else {
                          // password = input;
                        }
                        return null;
                      }),
                  SizedBox(height: 10,),

                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      ButtonText(text: "Back", onTap: (){ Navigator.of(context).pop();}),
                      SizedBox(width: 10,),
                      ButtonBold(onTap: () async{}, text: "Register"),
                      SizedBox(width: 20,),

                    ],

                  ),
                  SizedBox(height: 20,),
                ],
              )),
        ],
      ),
    );
  }
}
