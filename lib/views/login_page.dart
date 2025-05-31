import 'package:flutter/material.dart';
import 'package:medical_app/views/home_screen.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Image.asset('assets/Vector.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Quick Medical',
              style: TextStyle(
                fontSize: 23,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 45),
            Text(
              'Please Enter Your Number  To Login/Sign Up',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),
            SizedBox(height: 45),
            SizedBox(
              width: 320,
              height: 80, // thoda height badhaya phone field ke liye
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                initialCountryCode: 'PK', // default country code Pakistan
                onChanged: (phone) {
                  print(phone.completeNumber); // full number with country code
                },
              ),
            ),

            SizedBox(height: 45),
            SizedBox(
              width: 335,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
