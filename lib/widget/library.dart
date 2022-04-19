import 'package:flutter/material.dart';

class LibraryVideo extends StatelessWidget {
  const LibraryVideo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding:  EdgeInsets.only(left:10),
            child: Text("Recent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 150,
            padding: const EdgeInsets.only(left:10),
            width: MediaQuery.of(context).size.width,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(left:10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/firebase.png",height: 100),
                        Container(
                          color: Colors.grey.withOpacity(.2),
                          height: 50,
                          padding: const EdgeInsets.only(left:10,right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const[
                              Text("Flutter Community",),
                              Icon(Icons.more_vert,color: Colors.white)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(left:10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/flutter.png",height: 100, fit: BoxFit.contain,),
                       Container(
                          height: 50,

                          color: Colors.grey.withOpacity(.2),
                        padding: const EdgeInsets.only(left:10,right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const[
                              Text("Flutter Community",),
                              Icon(Icons.more_vert,color: Colors.white)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                   Container(
                    width: 200,
                    margin: const EdgeInsets.only(left:10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/firebase.png",height: 100,),
                       Container(
                          height: 50,
                          color: Colors.grey.withOpacity(.2),
                          padding: const EdgeInsets.only(left:10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const[
                              Text("Firsebase Community"),
                              Icon(Icons.more_vert,color: Colors.white)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              
          ),
          const SizedBox(height: 10,),
          const Divider(color: Colors.grey,height: 1,),
          ListTile(
            onTap: (){},
            leading:  const Icon(Icons.history),
            title: const Text("Historique"),
          ),
          ListTile(
            onTap: (){},
            leading:  const Icon(Icons.play_circle_outline_sharp),
            title: const Text("Vos Vidéos"),
          ),
          ListTile(
            onTap: (){},
            leading:  const Icon(Icons.download),
            title: const Text("Téléchargement"),
            trailing: const Icon(Icons.check_circle),
          ),
          ListTile(
            onTap: (){},
            leading:  const Icon(Icons.local_movies),
            title: const Text("Vos Films"),
          ),
          ListTile(
            onTap: (){},
            leading:  const Icon(Icons.access_alarm_sharp),
            title: const Text("A regarder plus tard"),
          ),

          const SizedBox(height: 10,),
          const Divider(color: Colors.grey,height: 1,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const Text("Playlists",style:TextStyle(fontSize: 15),),
              Row(
                children: const [
                  Text("Vidéo ajoutées récemment",style:TextStyle(fontSize: 15),),
                  Icon(Icons.arrow_drop_down_outlined)
                ],
              )
            ],),
          ),
          ListTile(
            onTap: (){},
            leading:  const Icon(Icons.add,color: Colors.blue,),
            title: const Text("Nouvelle playlist",style: TextStyle(color:Colors.blue),),
          ),
          ListTile(
            onTap: (){},
            leading:  const Icon(Icons.thumb_up),
            title: const Text('Vidéos "J\'aime"'),
            subtitle: const Text("465 vidéos"),
          ),
          ListTile(
            onTap: (){},
            leading:  Image.asset("assets/flutter.png",width: 80,),
            title: const Text('Flutter Community'),
            trailing: const Icon(Icons.check_circle),
            subtitle: const Text("Fluttter 130 vidéos"),
          ),
          ListTile(
            onTap: (){},
            leading:  Image.asset("assets/firebase.png",width: 80,),
            title: const Text('Firebase Community'),
            trailing: const Icon(Icons.check_circle),
            subtitle: const Text("Fluttter 9 vidéos"),
          ),
        ],
      
    );
  }
}