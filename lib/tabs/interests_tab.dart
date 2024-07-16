import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(  // Changed to ListView for better content management
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),  // Adjusted padding to reduce excess space
      children: [
        Text(
            'Interests',
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.titleLarge,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        SizedBox(height: 20),  // Space between title and content
        InterestItem(
          icon: Icons.book,
          color: Colors.blue[300]!,
          text: 'I am currently researching for my capstone project and am taking a course tackling Big Data.',
        ),
        SizedBox(height: 8),
        InterestItem(
          icon: Icons.check,
          color: Colors.blue[300]!,
          text: 'I am also one of the campus ambassadors of WiTech Batangas that aims for gender equality with women in tech. Since then, I have been interested in meeting new people and expanding my networks for my career path.',
        ),
        SizedBox(height: 8),
        InterestItem(
          icon: Icons.travel_explore,
          color: Colors.blue[300]!,
          text: 'I am still exploring a lot of concepts in technology as it is quite complex.',
        ),
        SizedBox(height: 8),
        InterestItem(
          icon: Icons.camera_alt,
          color: Colors.blue[300]!,
          text: 'I would like to capture my journey with technology and the courses I took.',
        ),
      ],
    );
  }
}

class InterestItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const InterestItem({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,  // Align icon and text at the top
      children: [
        Icon(icon, color: color, size: 30),  // Increased icon size for better visibility
        SizedBox(width: 12),  // Increased space between the icon and text
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.poppins(  // Use Poppins font
              textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 18,
                color: Color.fromARGB(255, 36, 92, 170),
              ),
            ),
            overflow: TextOverflow.ellipsis,  // Handle text overflow
            maxLines: 3,  // Limit the number of lines to avoid overflow
          ),
        ),
      ],
    );
  }
}
