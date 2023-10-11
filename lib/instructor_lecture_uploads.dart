import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstructorUploadScreen(),
    );
  }
}

class InstructorUploadScreen extends StatefulWidget {
  @override
  _InstructorUploadScreenState createState() => _InstructorUploadScreenState();
}

class _InstructorUploadScreenState extends State<InstructorUploadScreen> {
  String selectedFile = 'No file chosen';

  // Function to handle file selection
  void selectFile() {
    // Implement your file selection logic here
    // For simplicity, we just set a placeholder value here.
    setState(() {
      selectedFile = 'sample_file.pdf'; // Placeholder value
    });
  }

  // Function to handle file upload
  void uploadFile() {
    // Implement your file upload logic here
    // This is where you can upload the selected file to a server or perform any other action.
    // For simplicity, we just show a toast message.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('File uploaded successfully'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instructor Upload Screen'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upload File',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Choose the file to upload, then click submit to Upload the file',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: selectFile,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300], // Light grey background
                  ),
                  child: Text(
                    'Choose File',
                    style: TextStyle(
                      color: Colors.black, // Black text color
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'Selected File: $selectedFile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: uploadFile,
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white, // White text color
              ),
              child: Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}

