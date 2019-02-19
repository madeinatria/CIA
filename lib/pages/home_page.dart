import 'package:flutter/material.dart';
import 'package:cia/pages/book.dart';
import 'profile_page.dart';
import 'project_list.dart';
import 'package:cia/pages/component_list.dart';



class HomePage extends StatefulWidget {
  
  _BookRow createState() => new _BookRow();
 
}

class _BookRow extends State<HomePage> {
  
  PageController pageController = new PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("CIA"),backgroundColor: Colors.black,),
        drawer: Drawer(

                child: ListView(

                        padding: EdgeInsets.zero,
                        children: <Widget>[
                                  UserAccountsDrawerHeader(

                                        accountName: Text(
                                                    "vamsi",
                                                    ),
                                        accountEmail: Text(
                                                      "vamsi@gmail.com",
                                                    ),
                                        currentAccountPicture: new CircleAvatar(
                                                        backgroundImage: new AssetImage("assets/img/logo_bro.png"),
                                                        backgroundColor: Colors.black,
                                                        ),
                                        ),
                                  new ListTile(
                                          title: Text(
                                            "Profile",
                                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                                            ),
                                          leading: Icon(
                                            Icons.person,
                                            color: Colors.black54,
                                          ), onTap: () {
                                          Navigator.push(
                                          context, new MaterialPageRoute(
                                                    builder: (context) => new ProfileOnePage()));
                                                    },
                                  ),
                                  new ListTile(
                                            title: Text(
                                              "Projects",
                                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                                            ),
                                            leading: Icon(
                                              Icons.work,
                                              color: Colors.black54,
                                            ),onTap: () {
                                                  Navigator.push(
                                                            context, new MaterialPageRoute(
                                                            builder: (context) => new ProjectList()));
                                                  },
                                  ),
                                  new ListTile(
                                            title: Text(
                                              "Components",
                                                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                                              ),
                                              leading: Icon(
                                                  Icons.all_inclusive,
                                                  color: Colors.black54,
                                                  ),
                                              onTap: () {
                                              Navigator.push(
                                                  context, new MaterialPageRoute(
                                                    builder: (context) => new AccountScreen()));
                                              },
                                  ), new ListTile(
                                    title: Text(
                                      "Add Components",
                                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                                    ),
                                    leading: Icon(
                                      Icons.add_box,
                                      color: Colors.black54,
                                    ), onTap: () {
                                    Navigator.push(
                                        context, new MaterialPageRoute(
                                        builder: (context) => new ProfileOnePage()));
                                  },
                                  ),
                                  new ListTile(
                                        title: Text(
                                              "Timeline",
                                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                                          ),
                                          leading: Icon(
                                            Icons.timeline,
                                            color: Colors.black54,
                                          ),
                                  ),
                                  Divider(),
                                  new ListTile(
                                        title: Text(
                                            "Settings",
                                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                                              ),
                                        leading: Icon(
                                              Icons.settings,
                                              color: Colors.black54,
                                                ),
                                        ),
                                  Divider(),
         
        ],
      ),

    ),

    ),
    );           
  }

}
