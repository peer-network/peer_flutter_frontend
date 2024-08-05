import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FileUploadField extends StatefulWidget {
  const FileUploadField({super.key});

  @override
  State<FileUploadField> createState() => _FileUploadFieldState();
}

class _FileUploadFieldState extends State<FileUploadField> {
  String? _fileName;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['txt'],
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        _fileName = result.files.single.name;
      });
      // Handle the selected file
      print("Selected file: ${result.files.single.path}");
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickFile,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 2),
        ),
        child: Center(
          child: _fileName == null
              ? Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.grey,
                )
              : Text(
                  _fileName!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
        ),
      ),
    );
  }
}
