import 'package:book_app/pages/book_details_page.dart';
import 'package:book_app/pages/reader_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/book_details_page',
      routes: {
        '/book_details_page': (context) => const BookDetailsPage(),
        '/reader_page': (context) => const ReaderPage(),
      },
    );
  }
}
