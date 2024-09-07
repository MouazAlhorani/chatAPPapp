import 'package:a_chatting_b/controller/theme_provider.dart';
import 'package:a_chatting_b/view/homepage.dart';
import 'package:a_chatting_b/view/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeProvider>().themeM,
      initialRoute: '/',
      routes: {
        Loginpage.routeName: (context) => Loginpage(),
        Homepage.routeName: (context) => Homepage()
      },
    );
  }
}
