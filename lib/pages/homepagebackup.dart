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
        appBar: new AppBar(title: new Text("CIA"),backgroundColor: Colors.orange,),


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
                  backgroundImage: new AssetImage("assets/img/login_logo.png"),
                  backgroundColor: Colors.orange,
                ),

              ),
              new ListTile(
                title: Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                ),
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
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
                  color: Colors.green,
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
                  Icons.dashboard,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.push(
                      context, new MaterialPageRoute(
                      builder: (context) => new AccountScreen()));
                },
              ),
              new ListTile(
                title: Text(
                  "Timeline",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
                ),
                leading: Icon(
                  Icons.timeline,
                  color: Colors.cyan,
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
                  color: Colors.brown,
                ),
              ),
              Divider(),

            ],
          ),
        ),
        body: new ListView(


          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 5.0,top: 2),

            ),
            Center(child: Text(" Projects")),
            new Container(
                height: 260.0,
                width: double.infinity,
                child: new PageView(
                    controller: pageController,
                    children: books.map((Book book) {
                      return Padding(
                        padding: EdgeInsets.all(2.0),
                        child: new Container(
                          decoration: new BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.circular(10.0),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                  offset: new Offset(0.0, 2.0)),
                            ],
                          ),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Container(
                                  height: 120.0,
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                    child: new Image.asset(book.asset, fit: BoxFit.cover),
                                  )
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, bottom: 5.0, top: 5.0),
                                child: new Text(book.title,
                                    style: const TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.right),
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                                child: new Text(book.author),
                              ),
                              new Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(20.0)),
                                child: new ClipRRect(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  child: new MaterialButton(
                                    minWidth: 70.0,
                                    onPressed: () {},
                                    color: Colors.orange[900],
                                    child: new Text('Read More',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList())),

            new Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 1.0),
            ),
            Center(child: Text(" Projects")),
            new Container(
                height: 260.0,
                width: double.infinity,
                child: new PageView(
                    controller: pageController,
                    children: books.map((Book book) {
                      return Padding(
                        padding: EdgeInsets.all(2.0),
                        child: new Container(
                          decoration: new BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.circular(10.0),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                  offset: new Offset(0.0, 2.0)),
                            ],
                          ),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Container(
                                  height: 120.0,
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                    child: new Image.asset(book.asset, fit: BoxFit.cover),
                                  )
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, bottom: 5.0, top: 5.0),
                                child: new Text(book.title,
                                    style: const TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.right),
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                                child: new Text(book.author),
                              ),
                              new Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(20.0)),
                                child: new ClipRRect(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  child: new MaterialButton(
                                    minWidth: 70.0,
                                    onPressed: () {},
                                    color: Colors.orange[900],
                                    child: new Text('Read More',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),                  ],
                          ),
                        ),
                      );
                    }).toList())),
            new Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
            ),
            Center(child: Text(" Projects")),
            new Container(
                height: 260.0,
                width: double.infinity,
                child: new PageView(
                    controller: pageController,
                    children: books.map((Book book) {
                      return Padding(
                        padding: EdgeInsets.all(2.0),
                        child: new Container(
                          decoration: new BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.circular(10.0),
                            boxShadow: <BoxShadow>[
                              new BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 2.0,
                                  spreadRadius: 1.0,
                                  offset: new Offset(0.0, 2.0)),
                            ],
                          ),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Container(
                                  height: 120.0,
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                    child: new Image.asset(book.asset, fit: BoxFit.cover),
                                  )
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, bottom: 5.0, top: 5.0),
                                child: new Text(book.title,
                                    style: const TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.right),
                              ),
                              new Padding(
                                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                                child: new Text(book.author),
                              ),
                              new Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(20.0)),
                                child: new ClipRRect(
                                  borderRadius: new BorderRadius.circular(50.0),
                                  child: new MaterialButton(
                                    minWidth: 70.0,
                                    onPressed: () {},
                                    color: Colors.orange[900],
                                    child: new Text('Read More',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList())),

          ],
        ),
      ),
    );
  }

}
