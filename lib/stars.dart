import 'package:flutter/material.dart';
import 'package:ratingstars/ratingstars.dart';

class Stars extends StatefulWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  State<Stars> createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  int rating = -1;
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rating Stars"),
      ),
      body: const Center(
        child: RatingStars(),
       
      ),
    );
  }
}
