import 'package:flutter/material.dart';
import 'package:tetris_game_app/board.dart';


class IntroScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/home.png'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
        
            Text('Welcome to Tetris World',
            
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                    )),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
            ),                
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GameBoard()));
                },
                child: Text('Start',
                    style: TextStyle(fontSize: 30, color: Colors.black,)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
