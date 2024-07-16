import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Added scrolling capability for the content
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Educational Background',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20), // Space between title and first entry

          // List of education entries
          EducationEntry(
            degree: 'BS in Information Technology major in Business Analytics',
            institution: 'Batangas State University-Alangilan',
            dateRange: '2022-2026',
          ),
          EducationEntry(
            degree: 'SHS Graduate of Information Communications and Technology (ICT)',
            institution: 'Batangas Eastern Colleges',
            dateRange: '2019-2021',
          ),
          EducationEntry(
            degree: 'Junior High School Completer',
            institution: 'Alupay National High School',
            dateRange: '2015-2019',
          ),
          EducationEntry(
            degree: 'Elementary Graduate',
            institution: 'Alupay Elementary School',
            dateRange: '2009-2015',
          ),

          SizedBox(height: 20), // Space between entries and bottom part

          BottomPart(), // Added bottom part section
        ],
      ),
    );
  }
}

class EducationEntry extends StatelessWidget {
  final String degree;
  final String institution;
  final String dateRange;

  EducationEntry({
    required this.degree,
    required this.institution,
    required this.dateRange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0), // Space between entries
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[50], // Background color for section
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Align icon and text at the top
            children: [
              Icon(Icons.school, color: Colors.blue[300], size: 24), // Adjusted icon size for better fit
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  degree,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis, // Handle text overflow
                  maxLines: 2, // Limit the number of lines
                ),
              ),
            ],
          ),
          SizedBox(height: 8), // Space between text lines
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Align icon and text at the top
            children: [
              Icon(Icons.location_city, color: Colors.blue[300], size: 24), // Adjusted icon size for better fit
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  institution,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis, // Handle text overflow
                  maxLines: 2, // Limit the number of lines
                ),
              ),
            ],
          ),
          SizedBox(height: 8), // Space between text lines
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Align icon and text at the top
            children: [
              Icon(Icons.date_range, color: Colors.blue[300], size: 24), // Adjusted icon size for better fit
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  dateRange,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis, // Handle text overflow
                  maxLines: 1, // Limit the number of lines
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[50], // Background color for the bottom part
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Future Goals',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10), // Space between title and content
          Text(
            'In the future, I aim to continue expand my knowledge with technology and enhance my career.',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
