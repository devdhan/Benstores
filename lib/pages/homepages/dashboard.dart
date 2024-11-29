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
        backgroundColor: Color(0xFFFFFFFF),
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
                    onTap: () {},
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
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Selling',
                    style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
