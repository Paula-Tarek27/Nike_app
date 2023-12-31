import 'package:flutter/material.dart';
import 'package:nike/about.dart';
import 'package:nike/intro.dart';
import 'package:nike/register.dart';
import '../components/bottom_nav.dart';
import 'cart.dart';
import 'contect.dart';
import 'shop.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
  int _selectedIndex =0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  // Display page
  final List<Widget> _pages =[
    const ShopPage(),
  const CartPage(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index)=> navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context)=> IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/nike.png'),
            ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey[800],
            ),),
            Padding(padding: EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: IconButton(
                icon :Icon(Icons.home),
                color: Colors.white,
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>IntroPage()),
                );},
              ),
              title: Text('Home',style: TextStyle(color: Colors.white),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: IconButton(
                  icon :Icon(Icons.account_circle),
                  color: Colors.white,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>RegisterScreen()),
                  );},
                ),
                title: Text('Account',style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: IconButton(
                  icon :Icon(Icons.info),
                  color: Colors.white,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>AboutUsPage()),
                  );},
                ),
                title: Text('About',style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: IconButton(
                  icon :Icon(Icons.message),
                  color: Colors.white,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>ContactUsPage()),
                  );},
                ),
                title: Text('Contect Us',style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 200),
            Padding(padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading:IconButton(
                  icon :Icon(Icons.logout),
                  color: Colors.white,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>ContactUsPage()),
                  );},
                ),
                title: Text('Logout',style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}