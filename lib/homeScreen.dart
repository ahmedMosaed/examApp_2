import 'package:exam_project_2/catrgories.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/logo.png',
                    height: 50,
                  ),

                  SizedBox(
                    width: 10,
                  ),
                  Text('Moody' ,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Hello, ' ,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                  Text('Ahmed Mosaed' ,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('How are you feeling today ?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],

              ),
              SizedBox(
                height: 25,
              ),

              Container(
                alignment: Alignment.center,
                child: CategoriesListView(
                  categories: ['Love', 'Cool', 'Happy', 'Sad'],
                  imagePaths: [
                    'assets/images/love.png',
                    'assets/images/cool.png',
                    'assets/images/happy.png',
                    'assets/images/saad.png',
                  ],
                ),
              ),

            ],

          ),

        ),

        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            iconSize: 24,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home , color: Colors.black,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view, color: Colors.black,),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.date_range , color: Colors.black,),
                label: 'Library',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.person , color: Colors.black,),
                label: 'Library',
              ),
            ],
          ),
        ),

      ),
    );
  }
}
