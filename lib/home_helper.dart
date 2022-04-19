
import 'package:badges/badges.dart';
import 'package:design/controller/home_controller.dart';
import 'package:design/widget/home.dart';
import 'package:design/widget/library.dart';
import 'package:design/widget/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomeHelper extends StatelessWidget {
 
 final controller = Get.put(HomeController());
 
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
   VideoList(),
    Text(
      'Shorts',
      style: optionStyle,
    ),
   VideoList(),
    Text(
      'Subcription',
      style: optionStyle,
    ),
   
   LibraryVideo()
  ];

  HomeHelper({Key? key}) : super(key: key);



openShit(){
    return Get.bottomSheet(
      Column(
        children: [
         ListTile(
           onTap: (){},
           leading: const Text("Créer"),
           trailing: const Icon(Icons.close),
         ),
         const SizedBox(height: 10,),
          ListTile(
           onTap: (){},
           leading: const CircleAvatar(
             child: Icon(Icons.timer),
           ),
           title: const Text("Créer un Short"),
         ),
         ListTile(
           onTap: (){},
           leading: const CircleAvatar(
             child: Icon(Icons.arrow_upward)
           ),
           title: const Text("Mettrer en ligne une vidéo"),
         ),
         ListTile(
           onTap: (){},
           leading: const CircleAvatar(
             child: Icon(Icons.wifi_outlined)
           ),
           title: const Text("Créer un Short"),
         ),
        ],
      )
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/y.png',height: 60,width: 80,),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: ()=>Get.defaultDialog(
                          title: "Connexion à un appareil",
                          content: Column(
                            children: const [
                              ListTile(
                                leading: CircularProgressIndicator(),
                                title: Text("Recherche de devices"),
                              ),
                              ListTile(
                                leading: Icon(Icons.desktop_mac),
                                title: Text("Associer avec un code TV"),
                              ),
                              ListTile(
                                leading: Icon(Icons.info),
                                title: Text("En savoir plus"),
                              ),
                            ]
                          )
                          
                        ),
                         icon: const Icon(Icons.cast)),
                        const SizedBox(width: 15,),
                        Badge(
                          borderRadius: BorderRadius.circular(15),
                          badgeContent: const Text('6'),
                          child: const Icon(Icons.notifications,size: 30,),
                        ),
                        const SizedBox(width: 15,),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.search,size: 30,)),
                        const SizedBox(width: 15,),
                        GestureDetector(
                          onTap: ()=>Get.to(
                            
                            ()=>const Profile(),
                            transition: Transition.downToUp,

                            ),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: CircleAvatar(child: Text("AD"),),
                          ),
                        )

                      ],
                    ),
                  
              ]),
            ),
            Obx(
              ()=>Expanded(
                child: _widgetOptions.elementAt(controller.selectedIndex.value),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.blue,
                color: Colors.white,
                tabs: const [
    
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.change_circle,
                    text: 'Shorts',
                  ),
                  GButton(
                    icon: LineIcons.plusCircle,
                   
                  ),
                 
                 
                  GButton(
                    icon: Icons.subscriptions,
                    text: 'Subcri',
                  ),
                   GButton(
                    icon: Icons.video_library,
                    text: 'Library',
                  ),
                ],
                selectedIndex: controller.selectedIndex.value,
                onTabChange: (index)=>controller.swither(index)
              ),
            ),
          ),
        ),
      ),
    );
  }
}