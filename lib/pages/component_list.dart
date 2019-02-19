import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
class AccountScreen extends StatelessWidget {
  static const String routeName = "/account";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       debugShowCheckedModeBanner: false,
      home: new ComponentAllList() ,
    );
}}


class ComponentAllList extends StatefulWidget{

@override
_ComponentAllListState createState() => new _ComponentAllListState();


}

class _ComponentAllListState extends State<ComponentAllList> {



////////////////////////////////////////////////////////////////////////////////////////
Future<List<ComponentItem>>  _getUsers() async {
var data = await http.post('http://139.59.61.35/sufi/item/get');
var jsonData =  json.decode(data.body);
List<ComponentItem> componentitemlist = [];
for (var component in jsonData){
  ComponentItem element = ComponentItem(component["item_name"]);
  componentitemlist.add(element);
}
return componentitemlist;
}
////////////////////////////////////////////////////////////////////////////////////////
@override
Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Component List"),
        
      ),
      body: new Container(
          child: FutureBuilder(

          future: _getUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
            
            if(snapshot.data == null ){
              
              return Container(
                child: Center(
                  child: Text("Loading"),
                ),
              );
              
              
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    title: Text(snapshot.data[index].itemName),
                    
                  );
                },
              );
              
            }
              
            },
          ),
          ),
    );
  }
  }


class ComponentItem {

  ComponentItem(String i){
    this.itemName =i;
  }



  
  String getItemName(){
    return itemName;
  }


   String itemId;

   String itemName;

   String category;

   String subCategory;

   String description;

   String image;

   String url;

   String specs;

   String hsn;

   int quantity;

   String manufacturer;

   String modelId;

   String dataSheetLink;

   String tutorialsLink;

   int cost;

   String locationCabinet;

   String locationCupboard;

   String locationRoom;

   int vendorDetailsVendorId;

}


