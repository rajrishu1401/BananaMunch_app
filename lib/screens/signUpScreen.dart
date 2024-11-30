import 'dart:async';
import 'dart:io';
import 'package:banana_munch/screens/moreDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:banana_munch/screens/loginScreen.dart';
import 'package:banana_munch/widgets/imagePickerWidget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _form = GlobalKey<FormState>();
  var _enteredPhoneNo = '';
  var _enteredPassword = '';
  var _userName = '';
  File? selectedImage;
  DateTime? _selectedDate;

  // Language selection state
  String _selectedLanguage = 'English'; // Default language is English
  final List<String> _languages = ['English', 'Hindi'];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Opacity(
                opacity: 0.2, // Adjust the opacity for better visibility of form elements
                child: Image.asset(
                  'assets/images/sign.jpg', // Replace with your image asset path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Positioned language dropdown button at top right
            Positioned(
              top: 20,
              right: 20,
              child: DropdownButton<String>(
                value: _selectedLanguage,
                icon: const Icon(Icons.language, color: Colors.white),
                dropdownColor: Colors.black87,
                style: const TextStyle(color: Colors.white),
                items: _languages.map<DropdownMenuItem<String>>((String language) {
                  return DropdownMenuItem<String>(
                    value: language,
                    child: Text(language),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLanguage = newValue!;
                  });
                },
              ),
            ),
            // Form content
            Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _form,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        UserImagePickerWidget(transferImage: (image) {
                          selectedImage = image;
                        }),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          enableSuggestions: false,
                          decoration: const InputDecoration(
                            label: Text('User Name'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.trim().length <= 4) {
                              return 'Please enter more than 4 characters';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _userName = value!;
                          },
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text('Set Password'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty ||
                                value.length <= 6) {
                              return 'Password should be at least 6 characters long';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _enteredPassword = value!;
                          },
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text('Enter Password Again'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty ||
                                value.length <= 6) {
                              return 'Password should be at least 6 characters long';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _enteredPassword = value!;
                          },
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MoreDetailScreen(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Next',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const Icon(Icons.navigate_next),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Already have an account',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
