import 'package:e_learning/pages/custom_category_card.dart';
import 'package:e_learning/util/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    List<Map> categories = [
      {
        'icons': 'assets/images/elearning.png',
        'name': 'Software Development',
        'total_courses': '100',
      },
      {
        'icons': 'assets/images/undraw_Unlock_re_a558.png',
        'name': ' Web Development',
        'total_courses': '20',
      },
      {
        'icons': 'assets/images/undraw_Unlock_re_a558.png',
        'name': ' UI Design',
        'total_courses': '50',
      },
      {
        'icons': 'assets/images/elearning.png',
        'name': ' English',
        'total_courses': '40',
      },
      {
        'icons': 'assets/images/undraw_Unlock_re_a558.png',
        'name': ' Digital Marketting',
        'total_courses': '124',
      },
      {
        'icons': 'assets/images/elearning.png',
        'name': ' Accounts',
        'total_courses': '52',
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          // Home AppBar start here
          Container(
            height: size.height * .3,
            width: size.width,
            padding:
                const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColors.primarycolor, AppColors.seccolor])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Good Morning",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                          color: Colors.white24, shape: BoxShape.circle),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          Positioned(
                            right: 2,
                            top: 2,
                            child: Container(
                              height: 9,
                              width: 9,
                              decoration: const BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Search Your Topic',
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.mic),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15))),
                ),
              ],
            ),
          ),
          // Home AppBar start here
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore Categories',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(color: Colors.purple),
                        )
                      ],
                    ),
                    GridView.builder(
                      itemCount: categories.length,
                      shrinkWrap: true,
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12),
                      itemBuilder: (context, index) {
                        final data = categories[index];
                        return CustomCategoryCard(
                            categoryName: data['name'],
                            icon: data['icons'],
                            totalCourses: data['total_courses']);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
