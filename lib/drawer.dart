import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/sign_In_pro.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final imageUrl ="https://upload.wikimedia.org/wikipedia/en/f/fe/The_NorthCap_University_logo.png"        ;
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(user.displayName!),
                accountEmail: Text(user.email!),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
              ),
            ),
            
            
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: (){
                final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
                print("Log out Button");
              },
            )
          ],
        ),
      ),
    );
  }
}
