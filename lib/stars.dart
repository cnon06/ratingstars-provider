import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ratingstars/ratingstars.dart';

import 'starsvm.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key}) : super(key: key);

 
 // int rating = -1;
  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rating Stars"),
      ),
      body:  Center(
        child:
        
         ChangeNotifierProvider.value(
          value: StarsVM(),
          child: const RatingStars(),
        )
        
        //  RatingStars(),
       
      ),
    );
  }
}
