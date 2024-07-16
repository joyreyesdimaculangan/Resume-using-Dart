import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(  // Ensures content is scrollable
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Details',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.titleLarge,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),  // Space between title and content

            // Email
            Row(
              children: [
                Icon(Icons.email, color: Colors.blue, size: 30),  // Blue icon
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'joyreyesdimaculangan@gmail.com',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Phone
            Row(
              children: [
                Icon(Icons.phone, color: Colors.blue, size: 30),  // Blue icon
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    '+63 995 758 6652',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // LinkedIn
            Row(
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png',
                  width: 30,
                  height: 30,
                ),  // LinkedIn logo from network
                SizedBox(width: 12),
                Expanded(
                  child: InkWell(  // Make the LinkedIn text tappable
                    onTap: () {
                      _launchURL('https://www.linkedin.com/in/joy-dimaculangan-a7b0b42b2/');
                    },
                    child: Text(
                      'Joy Dimaculangan',
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.bodyLarge,
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            
            // Address
            Row(
              children: [
                Icon(Icons.home, color: Colors.blue, size: 30),  // Blue icon
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Alupay, Rosario, Batangas',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            
          ],
        ),
      ),
    );
  }

  // Function to launch a URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
