import 'package:flutter/material.dart';
import 'package:healthystate/presention/resources/color_manager.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';

class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String? _selectedGender;

  void _handleGenderChange(String gender) {
    setState(() {
      _selectedGender = gender;
    });
  }

  // void _handleSubmit() {
  //   if (_selectedGender != null) {
  //     // Process the gender selection
  //     print('Selected Gender: $_selectedGender');
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Gender: $_selectedGender')),
  //     );
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('Please select a gender')),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Your Gender'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _handleGenderChange('Male'),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _selectedGender == 'Male'
                            ? Colors.blue
                            : Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 160,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/male.png'), // Replace with your image URL
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Male', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _handleGenderChange('Female'),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _selectedGender == 'Female'
                            ? Colors.blue
                            : Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 160,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/female.png'), // Replace with your image URL
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('female', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => _handleGenderChange('croissants'),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFD8EFD3),
                  border: Border.all(
                    color: _selectedGender == 'croissants'
                        ? Colors.blue
                        : Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                // padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 123,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/croissants.png'), // Replace with your image URL
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'croissants',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.hightuserRoute);
              },
              child:  Text('Submit',style: TextStyle(color: ColorManager.primary),),
            ),
          ],
        ),
      ),
    );
  }
}
