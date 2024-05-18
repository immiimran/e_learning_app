import 'package:e_learning/pages/course_details.dart';
import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  final String categoryName;
  final String icon;
  final dynamic totalCourses;

  const CustomCategoryCard(
      {super.key,
      required this.categoryName,
      required this.icon,
      required this.totalCourses});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetails(courseName: categoryName),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(3.0, 3.0),
                  blurRadius: 15,
                  spreadRadius: 1)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 90,
              width: 90,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              categoryName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('$totalCourses Courses')
          ],
        ),
      ),
    );
  }
}
