import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(  // Added SingleChildScrollView to enable scrolling
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,  // Center-align the content in the Column
            children: [
              // Photo at the top
              CircleAvatar(
                radius: 100,  // Radius of the circle, making it bigger
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D4E03AQEU5oUdF_SYkg/profile-displayphoto-shrink_800_800/0/1713251114252?e=1726099200&v=beta&t=AyEAZa3LyMucn6PZZjweLRO4mFznuXlPbpxjG_ATLT0'),  // Network image URL
                backgroundColor: Colors.transparent,  // Transparent background
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,  // Make sure the border is circular
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 1, 2),  // Border color
                      width: 1,  // Border width
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),  // Space between the photo and the text content
              Text(
                'Personal Information',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),  // Space between title and content
              Text(
                'Name: Joy R. Dimaculangan',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                  fontSize: 20,
                ),
              ),
              Text(
                'Date of Birth: October 11, 2002',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 16),  // Space between text lines
              Text(
                'I am a student taking BS Information Technology specialized in Business Analytics',
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,  // Center-align the text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
