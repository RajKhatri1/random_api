import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_api/scrren/homepage/view/Homescreen.dart';
import 'package:random_api/scrren/provider/Homeprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Homescreen(),
        },
      ),
    )
  );
}

