// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final String text1;
  final String text2;
  const HorizontalList({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
            height: 200,
            child: Center(
              child: Text(
                text1,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.pink,
            height: 200,
            child: Center(
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    text2,
                    maxLines: 1,
                  ),
                  Spacer(),
                  Text(
                    'Otro texto',
                    maxLines: 1,
                  ),
                  Spacer(),
                  Text(
                    'Otro texto',
                    maxLines: 1,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
