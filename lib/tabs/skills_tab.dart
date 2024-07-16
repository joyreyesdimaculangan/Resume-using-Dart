import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(  // Changed to SingleChildScrollView for better content management
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Adjusted padding to reduce excess space
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Align all children to the start (left side)
        children: [
          Text(
            'Skills',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // Space between title and content
          Row(
            children: [
              Icon(Icons.code, color: Colors.blue[300]),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Have a knowledgeable background in Python, HTML, CSS, and JavaScript.',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.code, color: Colors.blue[300]),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'An active leader and project manager as well as an effective member of a team.',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.code, color: Colors.blue[300]),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Proficient with software development methodologies such as Agile, Waterfall, and DevOps.',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.code, color: Colors.blue[300]),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Excellent oral and written communication capabilities that facilitate conceptual and objective translation between start-up business in technology.',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.code, color: Colors.blue[300]),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Committed to accomplishing corporate goals and completing projects in a timely manner, providing clients with great results, and improving every software version engaged with.',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Space between sections
          Text(
            'Certifications:',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.verified_user, color: Colors.blue[300]), // Changed to a certification icon
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Count Her In: Celebrating Achievements virtual learning session',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.verified_user, color: Colors.blue[300]), // Changed to a certification icon
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Introduction to Data Studio',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.verified_user, color: Colors.blue[300]), // Changed to a certification icon
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'ASEAN Data Science Explorers (ADSE) Enablement Sessions 2024',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
