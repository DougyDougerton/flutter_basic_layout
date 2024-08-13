import 'package:flutter/material.dart';
import 'dart:ui';

List<String> categories = [
  'category 1',
  'category 2',
  'category 3',
  'category 4',
  'category 5',
  'category 6',
  'category 7',
  'category 8',
];

List<Widget> numbers = [
  Column(
    children: [
      for(int i = 0; i < categories.length; i++)
      Column(
        children: [
          SizedBox(
            height: 200,
            width: 400,
            child: Card(color: const Color.fromARGB(255, 255, 230, 0), surfaceTintColor: const Color.fromARGB(255, 255, 0, 0), child: Center(child: Text(categories[i])),
            
            ),
          ),
        ],
      ),
    ],
  ),
];