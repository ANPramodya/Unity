import 'package:flutter/material.dart';
import 'package:unity_app/features/chat/ui/chat_main_screen.dart';
import 'package:unity_app/features/home/ui/home_screen.dart';
import 'package:unity_app/features/profile/ui/profile_screen.dart';
import 'package:unity_app/widgets/my_drawer.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, dynamic>> _pageDetails = [
    {'pageName': const ProfileScreen(), 'title': 'Profile'},
    {'pageName': const HomeScreen(), 'title': 'Home'},
    {'pageName': const ChatMainScreen(), 'title': 'Chats'},
  ];

  var _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return _selectedPageIndex != 2
        ? Scaffold(
            body: _selectedPageIndex == 1
                ? NestedScrollView(
                    headerSliverBuilder: (((context, innerBoxIsScrolled) => [
                          SliverAppBar(
                            floating: true,
                            snap: true,
                            centerTitle: true,
                            elevation: 5.0,
                            title: Text(
                              _pageDetails[_selectedPageIndex]['title'],
                              style: const TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.1),
                            ),
                          )
                        ])),
                    body: _pageDetails[_selectedPageIndex]['pageName'],
                  )
                : _pageDetails[_selectedPageIndex]['pageName'],

            drawer: const MyDrawer(),
            // body: _pageDetails[_selectedPageIndex]['pageName'],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedPageIndex,
              onTap: (index) {
                setState(() {
                  _selectedPageIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_rounded), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.feed_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined), label: '')
              ],
            ),
          )
        : DefaultTabController(
            length: 3,
            child: Scaffold(
              body: SafeArea(
                child: NestedScrollView(
                  headerSliverBuilder: ((((context, innerBoxIsScrolled) => [
                        SliverAppBar(
                          floating: true,
                          snap: true,
                          centerTitle: true,
                          elevation: 5.0,
                          title: Text(
                            _pageDetails[_selectedPageIndex]['title'],
                            style: const TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.1),
                          ),
                        )
                      ]))),
                  body: _pageDetails[_selectedPageIndex]['pageName'],
                ),
              ),
              drawer: const MyDrawer(),
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: _selectedPageIndex,
                onTap: (index) {
                  setState(() {
                    _selectedPageIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline_rounded), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.feed_outlined), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border_outlined), label: '')
                ],
              ),
            ),
          );
  }
}
