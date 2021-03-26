import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainprofile.dart';
import 'createevent.dart';
import 'claimpoints.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/MainProfile',
  routes: {
    '/MainProfile': (context) => MainProfile(),
    '/ClaimPoints': (context) => ClaimPoints(),
    '/CreateEvent': (context) => CreateEvent(),
  },

));