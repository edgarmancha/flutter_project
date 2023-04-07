import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../utils/utils.dart';

class Furniture extends StatefulWidget {
  const Furniture({super.key});

  @override
  State<Furniture> createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/furniture.jpg'),
                    fit: BoxFit.cover,
                    opacity: sqrt1_2),
                color: Colors.black.withOpacity(0.9),
                borderRadius: BorderRadius.circular(5)),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  children: [
                    Text(
                      'Furniture',
                      style: SafeGoogleFont('Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: Colors.white),
                    ),
                    Text(
                      '1,723 Items',
                      style: SafeGoogleFont('Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                          color: Colors.white),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
