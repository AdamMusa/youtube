import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children:[
          const SizedBox(height: 15,),
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(onPressed: ()=>Get.back(), icon: const Icon(Icons.close))),
          Expanded(
            child: ListView(
            children: [
                  ListTile(
                  onTap: (){},
                  leading:  const CircleAvatar(child: Text("A"),),
                  title: const Text("Adam Musa Ali"),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(top:15),
                    child: Text("Gérer votre compte Google",style: TextStyle(color:Colors.blue,fontSize: 17),),
                  ),
                  trailing: const Icon(Icons.chevron_right,size:30)
                ),
                ListTile(
                  onTap: (){},
                  leading: const Icon(Icons.privacy_tip_rounded),
                  title: const Text("Activer le mode navigation privée"),
                  
                ),
                ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.person_add),
                  title: const Text("Ajouter un compte"),
                
                ),
                const SizedBox(height: 6,),
                Divider(height: 2,color: Colors.grey.withOpacity(.8),),
                ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.account_box,color: Colors.grey,),
                  title: const Text("Votre chaine",style: TextStyle(color:Colors.grey),),
                
                ),
                ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.coffee_maker,color: Colors.grey,),
                  title: const Text("YouTube Studio",style: TextStyle(color:Colors.grey),),
                  trailing: const Icon(Icons.check_sharp),
                
                ),
                  ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.bar_chart_sharp,color: Colors.grey,),
                  title: const Text("Durée de visionnage",style: TextStyle(color:Colors.grey),),
                
                ),
                  ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.monetization_on  ,color: Colors.grey,),
                  title: const Text("Durée de visionnage",style: TextStyle(color:Colors.grey),),
                
                ),
                  ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.privacy_tip_rounded, color: Colors.grey,),
                  title: const Text("Durée de visionnage",style: TextStyle(color:Colors.grey),),
                
                ),
                const SizedBox(height: 10,),
                Divider(height: 2,color: Colors.grey.withOpacity(.8),),
                ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.settings),
                  title: const Text("Parametre"),
                
                ),
                ListTile(
                  onTap: (){},
                  leading:  const Icon(Icons.question_mark_outlined),
                  title: const Text("Aide et commentaires"),
                
                ),
                 Container(
                  alignment: Alignment.center,
                  padding:const EdgeInsets.all(10),
                  child: const Text("Régle de confidentialité Conditions d'utilisation",style: TextStyle(fontSize: 15),) ,
                )
              ],
            ),
          ),
         
        ]
      ),
    );
  }
}