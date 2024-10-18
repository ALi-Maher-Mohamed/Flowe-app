import 'package:ecommerce_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeView';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage(
                          'assets/images/ali.jpg',
                        ),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/download.jfif'),
                        ),
                      ),
                      currentAccountPictureSize: Size.square(99),
                      accountName: Text(
                        'Ali Maher',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      accountEmail: Text(
                        'ali.maher@gmail.com',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  ListTile(
                    title: const Text(
                      'Home',
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.home),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'My product',
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.shopping_cart_checkout),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'About',
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.question_mark_sharp),
                      onPressed: () {},
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Log out',
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.logout_outlined),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Developed by Eng Ali Maher'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Stack(children: [
              Positioned(
                bottom: 20,
                left: 1,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: kPrimaryColor2, shape: BoxShape.circle),
                  child: const Text(
                    '8',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.add_shopping_cart)),
            ]),
            const Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Text(
                '\$ 13',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
          backgroundColor: kPrimaryColor,
          title: const Text(
            'homeview',
          ),
        ),
      ),
    );
  }
}
