import 'package:flutter/material.dart';
import 'package:medical_app/components/Function.dart';
import 'package:medical_app/views/cart.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0, right: 15.0, left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_none_outlined),
                      SizedBox(width: 10),
                      Icon(Icons.shopping_bag_outlined),
                    ],
                  ),
                ],
              ),
              Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Etiam  mollis metus non purus ',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 165,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(75, 227, 227, 227),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Image.asset('assets/sugar_free.png')),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 15),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Rs.99  ',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: 'Rs.56',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Etiam mollis', style: TextStyle(color: Colors.black26)),
                  SizedBox(width: 100),
                  Row(
                    children: [
                      Icon(Icons.add_box_outlined, color: Colors.blue),
                      Text('Add to cart', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey, thickness: 1),
              SizedBox(height: 15),
              Text(
                'Pakage Size',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  boxImage(
                    'Rs.106',
                    Colors.amber,
                    Colors.amber,
                    Colors.amber,
                    '500 Pellets',
                  ),
                  SizedBox(width: 15),
                  boxImage(
                    'Rs.166',
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    '110 Pellets',
                  ),
                  SizedBox(width: 15),
                  boxImage(
                    'Rs.252',
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    '300 Pellets',
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                'Product Details',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Interdum et malesuada fames ac ante ipsum Primis in faucibus. Morbi  ut nisi odio Nulla. Facilisi Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam  sit amet pulvinar finibus. Etiam et nisi aliquet.',
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Interdum et malesuada fames ac ante ipsum Primis in faucibus. Morbi  ut nisi odio Nulla. Facilisi Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam  sit amet pulvinar finibus. Etiam et nisi aliquet.',
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Expire Date',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15),
                  Text('1/12/2030'),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text(
                    'Brand Name',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15),
                  Text('Something'),
                ],
              ),
              SizedBox(height: 10),
              ratingBox(),
              SizedBox(height: 10),
              Text(
                'Erric Hoffman',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Interdum et malesuada fames ac ante ipsum  Primis in faucibus. Morbi  ut nisi odio Nulla. Facilisi Nunc risus massa, gravida id egestas  a, pretium vel tellus. Praesent feugiat diam  sit amet pulvinar finibus. Etiam et nisi aliquet.',
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 100, 243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'GO TO CART',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
