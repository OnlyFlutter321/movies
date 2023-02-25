import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/widgets/assets.dart';
import 'package:movies/widgets/build_textfiled.dart';
import 'package:movies/widgets/color.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorHelper.splashColor,
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            width: 150,
            decoration: BoxDecoration(
                color: const Color(0xFF3D3D3D),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ButtonsTabBar(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                height: 30,
                buttonMargin: EdgeInsets.zero,
                backgroundColor: Colors.white,
                unselectedBackgroundColor: const Color(0xFF3D3D3D),
                unselectedLabelStyle: const TextStyle(color: Colors.white),
                labelStyle: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "Movies",
                  ),
                  Tab(
                    text: "Foods",
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: ColorHelper.splashColor,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: body(),
            ),
            body1(),
          ],
        ),
      ),
    );
  }

  Widget body() {
    TextEditingController searchController = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                width: 280,
                decoration: BoxDecoration(
                  color: const Color(0xFF3D3D3D),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(15.0, 5.0, 10.0, 5.0),
                    border: InputBorder.none,
                    labelText: 'Search your Favourite',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              20.widthBox,
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: ColorHelper.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 25,
                    color: ColorHelper.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        10.heightBox,
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Found 1 result",
                style: GoogleFonts.ptMono(
                  color: ColorHelper.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
        30.heightBox,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Image.asset(Assets.shared.spiderMan),
            ],
          ),
        ),
        20.heightBox,
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Spider Man- Home coming",
                style: GoogleFonts.ptMono(
                  color: ColorHelper.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget body1() {
    return const Text(
      "No",
      style: TextStyle(color: Colors.white),
    );
  }
}
