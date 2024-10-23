import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            HeroSection(),
            FeaturesSection(),
            SpecialDishesSection(),
            PopularMenuSection(),
            TestimonialsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

// Header with logo, navigation, and button
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          Image.asset(
            'assets/logo.png',
            height: 100.0,
            fit: BoxFit.contain,
          ),
          // Navigation links
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text('Home')),
              TextButton(onPressed: () {}, child: const Text('Menu')),
              TextButton(onPressed: () {}, child: const Text('Restaurants')),
              TextButton(onPressed: () {}, child: const Text('Services')),
            ],
          ),
          // Sign in button
          ElevatedButton(
            onPressed: () {},
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}

// Hero Section with image, text, and call to action
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('assets/pizza.jpeg',
            fit: BoxFit.cover, width: double.infinity, height: 400),
        Column(
          children: [
            const Text(
              'Be The Fastest In Delivering Your Food',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'Order food from the best restaurants in your city.',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Order Now'),
            ),
          ],
        ),
      ],
    );
  }
}

// Features section with three cards
class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FeatureCard(
            icon: Icons.delivery_dining,
            title: 'Easy to Order',
            description: 'Order your food easily from the app.',
          ),
          FeatureCard(
            icon: Icons.timer,
            title: 'Fast Delivery',
            description: 'Get your food delivered fast.',
          ),
          FeatureCard(
            icon: Icons.star,
            title: 'Best Quality',
            description: 'We ensure the best food quality.',
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 48),
            const SizedBox(height: 16),
            Text(title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

// Special Dishes Section with grid of items
class SpecialDishesSection extends StatelessWidget {
  const SpecialDishesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Special Dishes',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 3 / 4,
            children: [
              const SpecialDishCard(),
              const SpecialDishCard(),
              const SpecialDishCard(),
            ],
          ),
        ],
      ),
    );
  }
}

class SpecialDishCard extends StatelessWidget {
  const SpecialDishCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/dish.jpeg', fit: BoxFit.cover, height: 50),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Hamburger Street Food',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text('\$6.53'),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Text('4.5'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Popular Menu Section with grid of items
class PopularMenuSection extends StatelessWidget {
  const PopularMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Popular Menu',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              const PopularMenuCard(),
              const PopularMenuCard(),
              const PopularMenuCard(),
              const PopularMenuCard(),
            ],
          ),
        ],
      ),
    );
  }
}

// Popular Menu Card Widget
class PopularMenuCard extends StatelessWidget {
  const PopularMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(5.0)),
            child: Image.asset(
              'assets/dish.jpeg',
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hamburger Street Food',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  '\$6.53',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        SizedBox(width: 4),
                        Text('4.5'),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                      ),
                      child: const Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Testimonials Section with customer reviews
class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      child: Column(
        children: [
          Text(
            'Our Lovely Customer Loves Our Food',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          CustomerReviewCard(),
        ],
      ),
    );
  }
}

class CustomerReviewCard extends StatelessWidget {
  const CustomerReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/customer.jpeg')),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Courtney Henry',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('“The food was amazing and delivery was fast!”'),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    Text('5.0'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Footer Section
class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
          // Text('Join Our Member And Get Discount To 35%'),
          // Row(
          //   children: [
          //     Expanded(
          //       child: TextField(
          //         decoration: InputDecoration(hintText: 'Enter Your Email'),
          //       ),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {},
          //       child: Text('Sign Up'),
          //     ),
          //   ],
          // ),
          Divider(),
          SizedBox(height: 16),
          Text('© 2024 Rhumba - All Rights Reserved'),
        ],
      ),
    );
  }
}
