import 'package:benstore/components/product_card.dart';
import 'package:benstore/pages/cart/cart_homepage.dart';
import 'package:benstore/pages/homepages/product_details_page.dart';
import 'package:benstore/pages/order/noorder.dart';
import 'package:benstore/pages/order/notifaction.dart';
import 'package:benstore/pages/setting/profile.dart';
import 'package:flutter/material.dart';
import 'package:benstore/pages/homepages/category.dart';
import 'package:benstore/components/category_item.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    const HomeScreen(),
    const Notifaction(),
    const Noorder(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: const Color(0xFFE75336),
        unselectedItemColor: const Color(0xCE272727),
        iconSize: 30,
        selectedLabelStyle: const TextStyle(
            fontFamily: 'CircularStd',
            fontSize: 16,
            fontWeight: FontWeight.bold),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_rounded),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void profile(BuildContext context) {
    final dashboardState = context.findAncestorStateOfType<_DashboardState>();
    if (dashboardState != null) {
      dashboardState._onItemTapped(3);
    }
  }

  //Navigate to Category
  void shopcategory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Category()),
    );
  }

  //Navigate to Cart
  void cart(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartHomepage()),
    );
  }

  //Navigate to Cart
  void productinfo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartHomepage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => profile(context),
                    child: Image.asset(
                      'assets/profilepic.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => cart(context),
                    child: Image.asset(
                      'assets/carticon.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            //Search Bar
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0x39B3B3B3),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(
                        Icons.search_rounded,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontFamily: 'CircularStd',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => shopcategory(context),
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            //Categories List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CategoryItem(
                        onTap: () {
                          print('Bluetooth pressed');
                        },
                        imagePath: 'assets/speaker.png',
                        label: 'Bluetooth Speakers',
                      )),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryItem(
                    onTap: () {
                      print('charger pressed');
                    },
                    imagePath: 'assets/powerbank.jpeg',
                    label: 'Charger, Cables & Powerbank',
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryItem(
                    onTap: () {
                      print('Computer Accessories pressed');
                    },
                    imagePath: 'assets/accessories.jpg',
                    label: 'Computer Accessories',
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryItem(
                    onTap: () {
                      print('Content Creation Kit pressed');
                    },
                    imagePath: 'assets/creation.png',
                    label: 'Content Creation Kit',
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryItem(
                      onTap: () {
                        print('Electronics & Accessories pressed');
                      },
                      imagePath: 'assets/electronic.jpg',
                      label: 'Electronics Accessories'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryItem(
                      onTap: () {
                        print('Networking Devices pressed');
                      },
                      imagePath: 'assets/network.jpg',
                      label: 'Networking Devices'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  CategoryItem(
                      onTap: () {
                        print('Phone Accessories pressed');
                      },
                      imagePath: 'assets/phoneacc.jpg',
                      label: 'Phone Accessories'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: CategoryItem(
                        onTap: () {
                          print('Storage Devices pressed');
                        },
                        imagePath: 'assets/storage.jpeg',
                        label: 'Storage Devices'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New In',
                    style: TextStyle(
                      color: Color(0xFFE75336),
                      fontFamily: 'CircularStd',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontFamily: 'CircularStd',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: ProductCard(
                      imagePath: 'assets/jambox.jpg',
                      title: 'Zealot S53 Mini',
                      price: '28,790',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailsPage(
                              title: 'Zealot S53 Mini',
                              price: '28,790',
                              imagePath: 'assets/jambox.jpg',
                              description:
                                  'A portable, waterproof Bluetooth speaker with HIFI stereo sound and dual RGB lights for an immersive music experience. Features include 10W loud stereo sound with wireless dual pairing, IPX6 waterproof durability, multiple playback modes (Bluetooth, USB, TF card, AUX), and long battery life (up to 30 hours at 50% volume). Compact and lightweight (500g), it’s compatible with most devices and ideal for on-the-go entertainment.',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  ProductCard(
                    imagePath: 'assets/power.jpg',
                    title: 'itel 20000mAh',
                    price: '15,950',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailsPage(
                            title: 'itel 20000mAh',
                            price: '15,950',
                            imagePath: 'assets/power.jpg',
                            description:
                                'A high-speed 15W power bank with Type-C (5V/3A) and USB-A (5V/3A) outputs, supporting simultaneous charging. Features universal compatibility, a compact design, high-capacity battery for multiple charges, durable build, and intelligent safety protections (over-current, over-voltage, and short-circuit). Perfect for on-the-go charging.',
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  ProductCard(
                    imagePath: 'assets/pouch.jpg',
                    title: 'Transparent Back Clear Case For IPhone',
                    price: '3,040',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailsPage(
                            title: 'Transparent Back Clear Case For IPhone',
                            price: '3,040',
                            imagePath: 'assets/pouch.jpg',
                            description:
                                'A durable, transparent TPU case for iPhones (models 13, 12, 11 Pro Max, Mini, Xs, X, Xr, Xs Max, 7, 8 Plus, Se 2020) offering high protection against scratches and damage. The case is shockproof, non-corrosive, and designed to preserve the devices appearance while being easy to install and remove. It doesn’t obstruct ports and prevents wear and tear, ensuring a sleek, stylish look without chemical irritation.',
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  ProductCard(
                    imagePath: 'assets/fridge.jpg',
                    title: 'Haier Thermocool Refrigerator',
                    price: '203,155',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailsPage(
                            title: 'Haier Thermocool Refrigerator',
                            price: '203,155',
                            imagePath: 'assets/fridge.jpg',
                            description:
                                'A modern, efficient refrigerator designed to make daily life easier, offering up to 35% energy and cost savings with reduced electricity consumption. It features thicker insulation for longer temperature retention and a reversible door with a magnetic seal, allowing flexibility in placement to suit any space in your home or office.',
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ProductCard(
                      imagePath: 'assets/mouse.jpg',
                      title: '2.4G Wireless Mouse',
                      price: '3,804',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailsPage(
                              title: '2.4G Wireless Mouse',
                              price: '3,804',
                              imagePath: 'assets/mouse.jpg',
                              description:
                                  'A lightweight, slim, and portable 2.4G wireless mouse with a 10m range, 1600 DPI optical precision for accurate tracking, and ergonomic design for comfortable long-term use. Features quiet operation, plug-and-play functionality, and 4 keys. Powered by 2 AAA batteries (not included).',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
