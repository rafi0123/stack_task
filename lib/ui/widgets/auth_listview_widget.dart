import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:stack_task/utils/card_preferences.dart';

class AuthListViewWidget extends StatelessWidget {
  AuthListViewWidget({Key? key}) : super(key: key);
  CardPreferences card = CardPreferences();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (index, context) {
            return _buildItem();
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 15,
              ),
          itemCount: 4),
    );
  }

  Widget _buildItem() => Stack(
        alignment: Alignment(0.0, -0.2),
        children: [
          Container(
            alignment: Alignment.center,
            height: 220,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image.asset(
                      CardPreferences.myCard.img,
                      height: 80,
                      width: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    CardPreferences.myCard.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(CardPreferences.myCard.subtitle),
                ],
              ),
            ),
          ),
        ],
      );
}
