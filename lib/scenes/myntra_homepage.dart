import 'package:flutter/material.dart';
import 'package:myntra/common_widgets/cached_image.dart';
import 'package:myntra/scenes/insider.dart';

import '../dataprovider/home_data.dart';
import 'package:flutter/material.dart';
import '../../management/assetmanagement.dart';

// ignore: depend_on_referenced_packages


class MyntraHomePage extends StatelessWidget {
  const MyntraHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Insider()),);
      }, label: Text('XPLORE',style: TextStyle(color: Color.fromARGB(255, 78, 66, 66),fontWeight: FontWeight.bold),),
      icon: IconButton(icon: Image.asset('assets/images/myntra.png'), onPressed: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Insider()),
  );
        },),
      backgroundColor: Colors.black,
      
      ),
    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Color.fromRGBO(255, 63, 108, 1),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Image.asset("assets/images/myntra.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.category),
            label: 'Fwd',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Image.asset('assets/images/shirt(1).png',),
            label: 'Everyday',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.diamond_outlined),
            label: 'Luxe',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).accentColor,
            icon: Icon(Icons.person_outline),
            label: 'Akshay',
          ),
        ],
      ),
      body: SafeArea(
                child: Column(
          children: [
            Container(
                color: Theme.of(context).accentColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // IconButton(icon: Icon(Icons.menu), onPressed: () {},iconSize: 30,),
                        Container(
                              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/myntra1.jpeg"),fit: BoxFit.cover),
        
                            ),
                             height: 30,width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'BECOME',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Insider()),
  );
                              },
                              child: Text(
                                'INSIDER >',
                                style: TextStyle(
                                color: Colors.amber[600],
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // IconButton(
                        //   icon: Icon(
                        //     Icons.search,
                        //     color: Colors.black,
                        //   ), onPressed: () {  },
                        //   iconSize: 30,
                        // ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.black,
                          ), onPressed: () {  },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(255, 160, 160, 160),
                          ), onPressed: () {  },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.black,
                          ), onPressed: () {  },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.black)),
                  height: 50,
                  child: 
                    // SizedBox(width: 25,),
                    // Icon(  
                    //   Icons.search,
                    //   size: 25,
                    // ),
                    TextField(controller: _searchController,
                    decoration: InputDecoration(hintText: 'Search...',suffixIcon: IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () => _searchController.clear(),
              ),
              // Add a search icon or button to the search bar
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform the search here
                },
              ),border: InputBorder.none),)
                ),
              ),

            Expanded(child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: HomeData.getTopbarAssets()
                    .map((e) => CachedImage(
                      url:e,
                          height: 89,
                          width: 90,
                        ))
                    .toList(),
              ),
            ),
              SizedBox(height: 15,),
              CachedImage(url:banner1,height: 361,),
              SizedBox(
                      height: 15,
                    ),
                    CachedImage(
                      url: free_shipping,
                      height: 47,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                       children: [
                        CachedImage(
                          url: banner2,
                          width: (MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).padding.left -
                                  MediaQuery.of(context).padding.right) *
                              0.50,
                          height: 360,
                        ),
                        CachedImage(
                          url: banner3,
                          width: (MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).padding.left -
                                  MediaQuery.of(context).padding.right) *
                              0.50,
                          height: 360,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CachedImage(
                      url: biggest_offers,
                      height: 63,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 275,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: HomeData.getBiggestOffers()
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(right: 5, left: 5),
                                  child: CachedImage(
                                    url: e,
                                    height: 273,
                                    width: 179,
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    
            ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}