import 'package:flutter/material.dart';
import 'package:medical_app/views/profile.dart';

Widget circular(Color color, String text) {
  return Column(
    children: [
      Container(
        width: 75,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(radius: 30, backgroundColor: color),
            ),
            Text(text),
          ],
        ),
      ),
    ],
  );
}

Widget productsImage() {
  return Container(
    width: 165,
    height: 250,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 128,
          width: 165,
          decoration: BoxDecoration(
            color: Color.fromRGBO(238, 238, 240, 1),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage('assets/pills_botle.png')),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Acc -check Active'),
        ),
        SizedBox(height: 10),
        Padding(padding: EdgeInsets.only(left: 10), child: Text('Test Strip')),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rs.112',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.white, size: 16),
                    SizedBox(width: 10),
                    Text(
                      '2',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget image() {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue, width: 2.0),
      ),
      child: ClipOval(
        child: Image(
          image: AssetImage('assets/owais.png'),
          fit: BoxFit.cover,
          width: 60,
          height: 60,
        ),
      ),
    ),
  );
}

Widget profile(Icon icon, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(children: [icon, SizedBox(width: 10), Text(text)]),
      Icon(Icons.arrow_forward_ios),
    ],
  );
}

Widget boxImage(
  String text1,
  Color borderColor,
  Color text1Color,
  Color text2Color,
  String text2,
) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: borderColor),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(fontWeight: FontWeight.bold, color: text1Color),
        ),
        Text(text2, style: TextStyle(color: text2Color)),
      ],
    ),
  );
}

Widget ratingBox() {
  return Container(
    decoration: BoxDecoration(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '4.4',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 8),
            Icon(Icons.star, color: Colors.amber, size: 32),
          ],
        ),
        Text('923 Ratings\nand 257 Reviews'),
        SizedBox(height: 16),
        ...[5, 4, 3, 2, 1].map((star) {
          double percent;
          switch (star) {
            case 5:
              percent = 0.67;
              break;
            case 4:
              percent = 0.20;
              break;
            case 3:
              percent = 0.07;
              break;
            case 2:
              percent = 0.0;
              break;
            case 1:
              percent = 0.02;
              break;
            default:
              percent = 0.0;
          }
          return Row(
            children: [
              Text('$star', style: TextStyle(fontSize: 12)),
              Icon(Icons.star, size: 12, color: Colors.amber),
              SizedBox(width: 8),
              Expanded(
                child: LinearProgressIndicator(
                  value: percent,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              SizedBox(width: 8),
              Text('${(percent * 100).toInt()}%'),
            ],
          );
        }).toList(),
        SizedBox(height: 16),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.star, size: 16, color: Colors.amber),
                Text('4.2'),
              ],
            ),
            Text('05·oct 2020', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    ),
  );
}

Stack homeContainer(BuildContext context) {
  return Stack(
    children: [
      Container(
        width: double.infinity,
        height: 205,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 23, 97, 255),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(18),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/owais.png'),
                    ),
                    Spacer(),
                    Icon(Icons.notification_important, color: Colors.white),
                    SizedBox(width: 20),
                    Icon(Icons.calendar_today_outlined, color: Colors.white),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Hi, Owais Raza',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Welcome to Quick Medical store',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 167, left: 15.0, right: 15.0),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(Icons.search_outlined, color: Colors.grey),
            hintText: 'Search Medical and Health Care Products',
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    ],
  );
}
