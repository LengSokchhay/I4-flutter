import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.blue, // Set the app bar background color to blue
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mohasenapramuk Kim Il Sung',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            Text('Phnom Peng',
                style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(70.0), // Adjust the preferred height as needed
          child: Container(
            decoration: BoxDecoration(
              color: Colors
                  .blue, // Set the background color of the bottom section to blue
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0)), // Set border radius here
            ),
            height: 50.0, // Set the height of the bottom container
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20.0), // Set border radius for the search bar
                  ),
                  height: 40, // Set the height of the search bar to 40
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                          color:
                              Colors.grey), // Set the search icon color to grey
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 5, // Empty container for style
                  color: Colors
                      .blue, // Set the background color of the empty container to blue
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                SpecialOffers(),
                Text(
                  'Cuisines',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                CuisinesSection1(),
                SizedBox(height: 10),
                CuisinesSection2(),
                SizedBox(height: 10),
                Items(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Special Offers & Discount',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: OfferCard(
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS0l4mSJ0jHKOiBVLZMO4B_VUb0-PD7-HS5Q&s',
                title: 'The Pizza Company',
                rating: 4.9,
                cuisine: 'Pizza',
                deliveryTime: '10-25 min',
                deliveryFee: '0.75',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: OfferCard(
                imageUrl:
                    'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/rockcms/2024-01/starbucks-new-drinks-te-240129-a0e8d5.jpg',
                title: 'Starbucks',
                discount: '10% off',
                cuisine: 'Tea & Coffee',
                deliveryTime: '5-20 min',
                deliveryFee: '0.50',
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Restaurant',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Center(
          child: Container(
            width:
                MediaQuery.of(context).size.width, // Set width to screen width
            child: OfferCard(
              imageUrl:
                  'https://t4.ftcdn.net/jpg/02/94/26/33/360_F_294263329_1IgvqNgDbhmQNgDxkhlW433uOFuIDar4.jpg',
              title: 'The Pizza Company',
              rating: 10,
              cuisine: 'Pizza',
              deliveryTime: '10-25 min',
              deliveryFee: '0.75',
            ),
          ),
        ),
        Center(
          child: Container(
            width:
                MediaQuery.of(context).size.width, // Set width to screen width
            child: OfferCard(
              imageUrl:
                  'https://t4.ftcdn.net/jpg/02/94/26/33/360_F_294263329_1IgvqNgDbhmQNgDxkhlW433uOFuIDar4.jpg',
              title: 'The Pizza Company',
              rating: 10,
              cuisine: 'Pizza',
              deliveryTime: '10-25 min',
              deliveryFee: '0.75',
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double? rating;
  final String? discount;
  final String cuisine;
  final String deliveryTime;
  final String deliveryFee;

  OfferCard({
    required this.imageUrl,
    required this.title,
    this.rating,
    this.discount,
    required this.cuisine,
    required this.deliveryTime,
    required this.deliveryFee,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(imageUrl),
              if (discount != null)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      discount!,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                if (rating != null)
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Text(rating.toString()),
                    ],
                  ),
                Text(cuisine),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 16),
                    Text(deliveryTime),
                    SizedBox(width: 10),
                    Icon(Icons.attach_money, size: 16),
                    Text(deliveryFee),
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

class CuisinesSection1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CuisineItem(imagePath: 'lib/assets/pizza.png', label: 'Pizza'),
              CuisineItem(
                  imagePath: 'lib/assets/burger.png', label: 'Fast Food'),
              CuisineItem(imagePath: 'lib/assets/fastfood.png', label: 'Bread'),
              CuisineItem(imagePath: 'lib/assets/salad.png', label: 'Salads'),
              CuisineItem(imagePath: 'lib/assets/bread.png', label: 'Burger'),
              CuisineItem(imagePath: 'lib/assets/pizza.png', label: 'Milk'),
            ],
          ),
        ),
      ],
    );
  }
}

class CuisinesSection2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CuisineItem(imagePath: 'lib/assets/burger.png', label: 'Pizza'),
              CuisineItem(
                  imagePath: 'lib/assets/pizza.png', label: 'Fast Food'),
              CuisineItem(imagePath: 'lib/assets/bread.png', label: 'Bread'),
              CuisineItem(imagePath: 'lib/assets/pizza.png', label: 'Salads'),
              CuisineItem(
                  imagePath: 'lib/assets/fastfood.png', label: 'Burger'),
              CuisineItem(imagePath: 'lib/assets/salad.png', label: 'Milk'),
            ],
          ),
        ),
      ],
    );
  }
}

class CuisineCard extends StatelessWidget {
  final String cuisine;

  CuisineCard({required this.cuisine});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network('https://via.placeholder.com/100',
                height: 50, width: 50),
            SizedBox(height: 5),
            Text(cuisine),
          ],
        ),
      ),
    );
  }
}

class CuisineItem extends StatelessWidget {
  final String imagePath;
  final String label;

  CuisineItem({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center align content
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 4),
          Flexible(
            // Wrap text with Flexible to handle overflow
            child: Text(
              label,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center, // Center align text
              maxLines: 2, // Limit text to 2 lines
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}