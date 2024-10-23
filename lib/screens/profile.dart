import 'package:flutter/material.dart';

class BusinessProfilePage extends StatelessWidget {
  BusinessProfilePage({super.key});

  final String businessName = "James Hotel and Bar";
  final String businessDescription =
      "We at James Hotel welcome you to our esteemed hotel. "
      "The establishment offers various services such as affordable, yet qualitative accommodation and restaurants with tasty, "
      "elegant gourmet meals from around the globe including Habesh, Indian, American, etc.";
  final String location = "Hai Malakal";
  final String phone = "0922 485 395";
  final String instagram = "@james_hotel_juba";
  final String facebook = "JAMES HOTEL JUBA";

  // Example menu items
  final List<Map<String, dynamic>> menuItems = [
    {"name": "English breakfast buffet", "price": 12},
    {"name": "English breakfast buffet", "price": 12},
    {"name": "English breakfast buffet", "price": 12},
    {"name": "English breakfast buffet", "price": 12},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          width: double.infinity,
          height: 150.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/logo.png',
                fit: BoxFit.contain,
              ),
              IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle shopping bag action
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Image.asset(
                'assets/pizza.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, bottom: 16.0, left: 100.0, right: 100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Business Name
                  Text(
                    businessName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),

                  // Description
                  Text(
                    businessDescription,
                    style: const TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 16),

                  // Contact Info
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(width: 8),
                      Text(location),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.phone),
                      const SizedBox(width: 8),
                      Text(phone),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.camera_alt),
                      const SizedBox(width: 8),
                      Text(instagram),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.facebook),
                      const SizedBox(width: 8),
                      Text(facebook),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  const Divider(),

                  // Menu List
                  ListView.builder(
                    shrinkWrap:
                        true, // Important to make ListView work inside a Column
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      final item = menuItems[index];
                      return ListTile(
                        title: Text(item['name']),
                        trailing: Text("\$${item['price']}"),
                        leading: const Icon(Icons.add_circle_outline),
                        onTap: () {
                          // Handle menu item selection
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
