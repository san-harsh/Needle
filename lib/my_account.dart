// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use,
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './theme/custom_theme.dart';

void main() => runApp(Account());

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final items = [
    'Manage Orders',
    'My Receipts',
    'My Receipts',
    'Help Me With My Orders',
    'Feedback',
    //'Sign Out'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
          body: 
          Stack(children: <Widget>[
            SizedBox(
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  color: HexColor('#F83E4B'),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 250),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(                      
                  child: ListTile(
                    title: Text(items[index]),
                  ),
                ); 
              },
            ),
             Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                width: double.infinity,
                child: Center(
                  child: TextButton(onPressed: () {  },
                  child: Text("Sign Out"),
                  
                  
                  ),
                ),
                color: Colors.white,
                
              )
            )
             )
          ],
            
          
          ),
          
          
          
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text('Home')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.business), title: Text('My Orders')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), title: Text('Settings')),
              ],
            ),
          )),
      theme: CustomTheme.lightTheme,
    );
  }
}
