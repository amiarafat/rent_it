import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {

    final name = "Hossain Md. Arafat";
    final email = "arafat@gmail.com";
    final image = "assets/images/avatar.jpeg";

    return Drawer(
      child: Material(
        color: Colors.purple[800],
        child: ListView(
          padding: padding,
          children: [
            buildHeader(
              urlImage: image,
              name: name,
              email: email,
              onClicked: (){}
            ),
            buildMenueItem(
              text: "Home",
              icon: Icons.home_filled,
              onClicked: (){

              }
            ),

            const SizedBox(height: 12,),
            buildMenueItem(
                text: "My Orders",
                icon: Icons.list_alt,
                onClicked: (){

                }
            ),

            const SizedBox(height: 12,),
            buildMenueItem(
                text: "Offer",
                icon: Icons.local_offer,
                onClicked: (){

                }
            ),

            const SizedBox(height:12,),
            buildMenueItem(
                text: "Favourites",
                icon: Icons.favorite_outlined,
                onClicked: (){

                }
            ),

            const SizedBox(height: 24,),

            Divider(color: Colors.white70,),

            const SizedBox(height: 24,),
            buildMenueItem(
                text: "Profile",
                icon: Icons.person,
                onClicked: (){

                }
            ),

            const SizedBox(height:12,),
            buildMenueItem(
                text: "Logout",
                icon: Icons.exit_to_app,
                onClicked: (){

                }
            ),

          ],
        ),
      ),
    );
  }

  Widget buildMenueItem({required String text, required IconData icon, VoidCallback? onClicked}){
    final color  = Colors.white;
    final hoverColor  = Colors.white70;
    return ListTile(
      leading: Icon(icon,color: color,),
      title: Text(text,style: TextStyle(color: color),),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  Widget buildHeader({required String urlImage,required String name,required String email, required VoidCallback? onClicked}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 48),
      child: Row(
        children: [
          CircleAvatar(radius: 32, backgroundImage: AssetImage(urlImage),),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
              SizedBox(width: 4,),
              Text(email,style: TextStyle(fontSize: 12,color: Colors.white),),
            ],
          ),
        ],
      ),
    );
  }
}
