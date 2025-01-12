
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton({
    required this.title,required this.onPress,
    this.height,this.width,
    super.key});
  final VoidCallback onPress;
  final String title;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?? 200,
      child: ElevatedButton(onPressed: onPress,
          style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(height?? 75),
          ),
          child: Text(title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))),
    );
  }
}
