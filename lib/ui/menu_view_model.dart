import 'package:flutter/material.dart';
import 'package:cia/ui/menu.dart';
import 'package:cia/ui/uidata.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
          title: "Smart Gardening",
          menuColor: Color(0xff050505),
          image: UIData.arduino,
          items: ["IOT","Team lead: john","Team members: john dina"]),
      Menu(
          title: "Pabalo",
          menuColor: Color(0xff050505),
          image: UIData.arduino,
          items: ["Software and hardware","Team lead: surya","Team members: surya jr"]),
      Menu(
          title: "Pabalo",
          menuColor: Color(0xff050505),
          image: UIData.arduino,
          items: ["Software and hardware","Team lead: surya","Team members: surya jr"]),
          Menu(
          title: "Pabalo",
          menuColor: Color(0xff050505),
          image: UIData.arduino,
          items: ["Software and hardware","Team lead: surya","Team members: surya jr"]),
          Menu(
          title: "Pabalo",
          menuColor: Color(0xff050505),
          image: UIData.arduino,
          items: ["Software and hardware","Team lead: surya","Team members: surya jr"]),
          Menu(
          title: "Pabalo",
          menuColor: Color(0xff050505),
          image: UIData.arduino,
          items: ["Software and hardware","Team lead: surya","Team members: surya jr"]),
    ];
  }
}
