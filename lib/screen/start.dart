import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_game_flutter/constants/colors.dart';
import 'package:getwidget/getwidget.dart';



class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  static var customFontWhite = GoogleFonts.coiny(
    textStyle: TextStyle(
      color: Colors.white,
      letterSpacing: 3,
      fontSize: 28,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text("Tic",
                style: customFontWhite,
              ),
              SizedBox(height: 6,),
              Text("Tac",
                style: customFontWhite,
              ),
              SizedBox(height: 6,),
              Text("Toe",
                style: customFontWhite,
              ),
              SizedBox(height: 6,),
              Text("Game",
                style: customFontWhite,
              ),
              SizedBox(height: 15,),
              Container(
                  height: 70,
                  width: 70,
                  child: Image.asset("images/tic-tac-toe.png")
              ),
              SizedBox(height: 15,),
              GFButton(
                onPressed: (){},
                text: "Start",
                shape: GFButtonShape.pills,
                color: Colors.red,
                size: GFSize.SMALL,
              ),
            ],
          ),
        ),
      ),
    ) ;
  }
}
