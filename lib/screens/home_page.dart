import 'package:auth_login/screens/boy_screen.dart';
import 'package:auth_login/screens/child_screen.dart';
import 'package:auth_login/screens/custom_app_bar.dart';
import 'package:auth_login/screens/discount_screen.dart';
import 'package:auth_login/screens/girl_screen.dart';
import 'package:auth_login/utils/strings.dart';
import 'package:auth_login/utils/subscription_container.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseUser user;
  bool isSignedIn = false;
  //String imageUrl;

  checkAuthentication() async {
    _auth.onAuthStateChanged.listen((user) {
      if (user == null) {
        Navigator.pushReplacementNamed(context, '/signin');
      }
    });
  }

  getUser() async {
    FirebaseUser firebaseUser = await _auth.currentUser();
    await firebaseUser?.reload();
    firebaseUser = await _auth.currentUser();

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isSignedIn = true;
        //this.imageUrl = user.photoUrl;
      });
    }
    // print("${user.displayName} is the user ${user.photoUrl}");
  }

  signout() async {
    _auth.signOut();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.checkAuthentication();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Center(
          child: !isSignedIn // setting isSignedIn to true
              ? CircularProgressIndicator()
              : Column(
                  children: <Widget>[
                    CustomAppBar(),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BoyScreen()));
                      },
                      child: SubscriptionContainer(
                        text: Strings.boySubscription,
                        imgPath: 'assets/images/boy.jpg',
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => GirlScreen()));
                      },
                      child: SubscriptionContainer(
                        text: Strings.womenSubscription,
                        imgPath: 'assets/images/women.jpg',
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChildScreen()));
                      },
                      child: SubscriptionContainer(
                        text: Strings.childSubscription,
                        imgPath: 'assets/images/child.jpg',
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DiscountScreen()));
                      },
                      child: SubscriptionContainer(
                        text: Strings.discountSubscription,
                        imgPath: 'assets/images/discount.jpg',
                      ),
                    ),
                    /*  Padding(
                      padding: EdgeInsets.only(top: 80),
                    ),
                    CircleAvatar(
                      backgroundImage: user.photoUrl != null
                          ? NetworkImage("${user.photoUrl}")
                          : AssetImage('assets/images/heart.png'),
                      maxRadius: 40,
                      minRadius: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        "Hello ${user.displayName == null ? user.email : user.displayName} you are logged in ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ), */
                    Container(
                      width: 500,
                      padding: EdgeInsets.all(15),
                      child: RaisedButton(
                        padding: EdgeInsets.fromLTRB(85, 15, 85, 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.grey[700],
                        onPressed: signout,
                        child: Text(
                          'Log Out',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
