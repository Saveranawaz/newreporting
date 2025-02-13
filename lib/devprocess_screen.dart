import 'package:flutter/material.dart';
import 'package:reporting/section_content.dart';


class DevelopmentProcessScreen extends StatelessWidget {
  const DevelopmentProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 210, 250), // Light Purple

    appBar: AppBar(
        title: const Text(
          'Development Process',
          style: TextStyle(color: Colors.teal),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // Replaced Column with ListView for scrollability
          children: const [
            ExpansionTile(
              backgroundColor: Colors.white,
              title: Text(
                "Planning & Design",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SectionContent(
                    content:
                        "The project commenced with defining the core features and creating preliminary UI sketches. Initial wireframes were developed, followed by high-fidelity designs crafted in Figma.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              backgroundColor: Colors.white,
              title: Text(
                "Implementation",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SectionContent(
                    content:
                        "Flutter was utilized for the frontend, and the app's structure adhered to the MVVM pattern, "
                        "ensuring a clear separation between the UI and business logic.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              backgroundColor: Colors.white,
              title: Text(
                "Testing & Debugging",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SectionContent(
                    content:
                        "Thorough testing was conducted, especially focusing on responsiveness and cross-platform compatibility. Several bugs were identified and resolved during testing.",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
