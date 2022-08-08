import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:stack_task/ui/widgets/auth_listview_widget.dart';
import 'package:stack_task/ui/widgets/auth_textfield_widget.dart';
import 'package:stack_task/ui/widgets/build_bottom_navigation_bar.dart';
import 'package:stack_task/utils/app_constants.dart';
import 'package:stack_task/utils/card_preferences.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _pwdConttroller = TextEditingController();
  CardPreferences card = CardPreferences();
  double rating = 0;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: AppConstant.iconColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                color: AppConstant.iconColor,
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            color: AppConstant.containerColor,
          ),
          Positioned(
            top: 20,
            right: 0,
            left: 0,
            child: AuthTextFieldWidget(
                controller: _pwdConttroller,
                hintTxt: 'Search',
                validator: (val) {},
                icon: Icons.search),
          ),
          Positioned(top: 110, right: 0, left: 0, child: _buildText()),
          AuthListViewWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment(-0.97, 0.4),
              child: Text(
                "Popular stores",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.5),
            child: Divider(
              indent: 20,
              endIndent: 20,
              thickness: 3.5,
              color: Colors.black38,
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.6),
            child: _buildRow(),
          ),
          Align(
            alignment: Alignment(0.0, 0.7),
            child: _buildRating(),
          ),
        ],
      ),
      bottomNavigationBar: BuildBottomNavigationBar(),
    );
  }

  Widget _buildText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Text(
            "Latest Models",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Spacer(),
          Text('See more'),
          Icon(
            Icons.arrow_right,
            size: 30,
          )
        ]),
      );
  Widget _buildRow() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Icon(Icons.pin_drop),
            Text(
              'Sports land',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text('New York')
          ],
        ),
      );
  Widget _buildRating() => Padding(
        padding: const EdgeInsets.only(left: 45.0, right: 20),
        child: Row(
          children: [
            Text('Rating'),
            Spacer(),
            Text('1.5k'),
            RatingBar.builder(
                itemBuilder: ((context, index) => Icon(
                      Icons.fiber_manual_record,
                      color: Colors.red,
                    )),
                itemSize: 15,
                unratedColor: AppConstant.containerColor,
                //itemPadding: EdgeInsets.all(0),
                onRatingUpdate: (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                })
          ],
        ),
      );
}
