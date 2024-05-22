import 'package:fitnestx/common/colo_extension.dart';
import 'package:fitnestx/common_widget/tab_button.dart';
import 'package:fitnestx/view/home/blank_view.dart';
import 'package:fitnestx/view/home/home_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int seletTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget currentview = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tcolor.white,
      body: PageStorage(
        bucket: pageBucket,
        child: currentview,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: Tcolor.secondaryG),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Icon(
              Icons.search,
              color: Tcolor.white,
              size: 35,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(0),
        child: Container(
          decoration: BoxDecoration(
            color: Tcolor.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))
            ],
          ),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                icon: "assets/img/home_tab.png",
                selectIcon: "assets/img/home_tab_select.png",
                isActive: seletTab == 0,
                onTap: () {
                  seletTab = 0;
                  currentview = const HomeView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: "assets/img/activity_tab.png",
                selectIcon: "assets/img/activity_tab_select.png",
                isActive: seletTab == 1,
                onTap: () {
                  seletTab = 1;
                  currentview = const BlankView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              const SizedBox(width: 20),
              TabButton(
                icon: "assets/img/camera_tab.png",
                selectIcon: "assets/img/camera_tab_select.png",
                isActive: seletTab == 2,
                onTap: () {
                  seletTab = 2;
                  currentview = const BlankView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: "assets/img/profile_tab.png",
                selectIcon: "assets/img/profile_tab_select.png",
                isActive: seletTab == 3,
                onTap: () {
                  seletTab = 3;
                  currentview = const BlankView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
