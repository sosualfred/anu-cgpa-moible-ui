import 'package:anucgpa/database/database.dart';
import 'package:flutter/material.dart';

class CourseListItemWidget extends StatelessWidget {
  final Course courseItem;
  final int index;
  const CourseListItemWidget({
    this.courseItem,
    this.index,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: index % 2 == 0 ? Colors.white : Colors.yellow[50],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              courseItem.title == null
                  ? "Course ${index + 1}"
                  : "${courseItem.title}",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Text(
                "${courseItem.credits}",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
            ),
            Text(
              "${courseItem.courseGrade}",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}