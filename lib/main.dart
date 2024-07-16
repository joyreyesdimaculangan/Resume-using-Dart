import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tabs/personal_info_tab.dart';
import 'tabs/education_tab.dart';
import 'tabs/skills_tab.dart';
import 'tabs/interests_tab.dart';
import 'tabs/contact_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData(
        primaryColor: Colors.lightBlue[100],
        hintColor: Colors.amber[200],
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 21, 27, 108),
            ),
            bodyLarge: TextStyle(
              fontSize: 18.0,
              color: const Color.fromARGB(255, 36, 92, 170),
            ),
          ),
        ),
        cardColor: Colors.white,
        dividerColor: Colors.grey[300],
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(
              background: const Color.fromARGB(255, 228, 243, 252),
              secondary: Color.fromARGB(255, 143, 200, 244),
            ),
      ),
      home: ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: "Personal Info"),
              Tab(icon: Icon(Icons.school), text: "Education"),
              Tab(icon: Icon(Icons.build), text: "Skills"),
              Tab(icon: Icon(Icons.favorite), text: "Interests"),
              Tab(icon: Icon(Icons.contact_mail), text: "Contact"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalInfoTab(),
            EducationTab(),
            SkillsTab(),
            InterestsTab(),
            ContactTab(),
          ],
        ),
      ),
    );
  }
}
