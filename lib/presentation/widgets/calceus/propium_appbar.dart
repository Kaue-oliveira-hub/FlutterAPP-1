import  'package:flutter/material.dart';

class PropiumAppbar extends StatelessWidget {
  
  final String textus;
  const PropiumAppbar({
    super.key,
    required this.textus
    });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: const EdgeInsets.only(top:30),
          width: double.infinity,
          color: Colors.lightGreenAccent,
          child: Row(
            children: [
              Text(
              textus, 
              style: TextStyle(fontFamily: "CuppertinoSystemDisplay", fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              const Icon(Icons.search, size: 30,)
            ],
            ),    
        ),
      ),
    );
  }
}