import 'dart:ui';

import 'package:flutter/material.dart';

class Profile{
  String name,image;
  Color status;

  Profile(this.name, this.image, this.status);

}

final List<Profile> profiles=[

  Profile("Ishwor Panta", "images/p11.jpg", Colors.green),
  Profile("Ishwor Panta", "images/p12.jpg", Colors.red),
  Profile("Ishwor Panta", "images/p13.jpg", Colors.orange),
  Profile("Ishwor Panta", "images/p14.jpg", Colors.amber),
];