import 'package:centresource_machine_test/other_files/custom_icon_icons.dart';
import 'package:centresource_machine_test/view/widgets/tab_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:centresource_machine_test/view/cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: unused_field
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'TopRated',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: false,
        actions: [
          Icon(CustomIcon.filter),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              height(10),
              Container(
                color: Colors.white,
                height: 40,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    TabCard(
                      icons: Icons.chair,
                      name: 'ArmChair',
                      width: 120,
                    ),
                    TabCard(
                      icons: Icons.bed,
                      name: 'Bed',
                      width: 100,
                    ),
                    TabCard(
                      icons: Icons.bubble_chart,
                      name: 'Lamp',
                      width: 100,
                    ),
                    TabCard(
                      icons: Icons.ac_unit,
                      name: 'sdhf',
                      width: 100,
                    ),
                  ],
                ),
              ),
              height(15),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '147 Products',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Text(
                            'Most Popular',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              height(15),
              SizedBox(
                child: StaggeredGridView.countBuilder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 12,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/chair1.jfif'),
                              fit: BoxFit.fill),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      );
                    },
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                }),
            IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                }),
            IconButton(
                icon: Icon(Icons.settings),
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    _index = 2;
                  });
                }),
            IconButton(
                icon: Icon(Icons.person),
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    _index = 3;
                  });
                }),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Cart(),
            ),
          );
        },
        backgroundColor: Colors.black,
        child: Icon(
          Icons.card_travel_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget height(double height) {
  return SizedBox(
    height: height,
  );
}
