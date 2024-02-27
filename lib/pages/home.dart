import 'package:ecommerce_app/pages/details_page.dart';
import 'package:ecommerce_app/widgets/wigdet_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool sushi = false, pizza = false, kebab = false, spaghetti = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello",
                  style: AppWidget.boldTextStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Delicious Food",
              style: AppWidget.headlineTextStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Discover and Get Great Food",
              style: AppWidget.lightTextStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: showItem()),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/foods/kebab-2.png",
                                height: 250,
                                width: 250,
                              ),
                              Text(
                                'Kebab Stodola',
                                style: AppWidget.boldTextStyle(),
                              ),
                              Text(
                                'Sample text',
                                style: AppWidget.lightTextStyle(),
                              ),
                              Text(
                                '\$25',
                                style: AppWidget.lightTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/foods/kebab-2.png",
                              height: 250,
                              width: 250,
                            ),
                            Text(
                              'Kebab Stodola',
                              style: AppWidget.boldTextStyle(),
                            ),
                            Text(
                              'Sample text',
                              style: AppWidget.lightTextStyle(),
                            ),
                            Text(
                              '\$25',
                              style: AppWidget.lightTextStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            sushi = true;
            pizza = false;
            kebab = false;
            spaghetti = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            shadowColor: sushi ? Colors.pinkAccent : null,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/icons/sushi-icon.png",
                height: 60,
                width: 60,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            sushi = false;
            pizza = false;
            kebab = true;
            spaghetti = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            shadowColor: kebab ? Colors.brown : null,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/icons/kebab-icon.png",
                height: 60,
                width: 60,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            sushi = false;
            pizza = true;
            kebab = false;
            spaghetti = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            shadowColor: pizza ? Colors.redAccent : null,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/icons/pizza-icon.png",
                height: 60,
                width: 60,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            sushi = false;
            pizza = false;
            kebab = false;
            spaghetti = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            shadowColor: spaghetti ? Colors.yellowAccent : null,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/icons/spaghetti-icon.png",
                height: 60,
                width: 60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
