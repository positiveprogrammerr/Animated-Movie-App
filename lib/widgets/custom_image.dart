import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageInput extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  CustomImageInput(this.hintText, this.controller);

  @override
  _CustomImageInputState createState() => _CustomImageInputState();
}

class _CustomImageInputState extends State<CustomImageInput> {
  File? _pickedImage;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImageFile = await ImagePicker().pickImage(
      source: source,
      maxWidth: 500,
      maxHeight: 500,
    );
    if (pickedImageFile == null) {
      return;
    }
    setState(() {
      _pickedImage = File(pickedImageFile.path);
    });
    widget.controller.text = _pickedImage!.path;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_pickedImage != null) ...[
          Image.file(_pickedImage!),
          SizedBox(height: 10),
        ],
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  hintText: widget.hintText,
                ),
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              icon: Icon(Icons.image),
            ),
            IconButton(
              onPressed: () => _pickImage(ImageSource.camera),
              icon: Icon(Icons.camera_alt),
            ),
          ],
        ),
      ],
    );
  }
}
