import 'package:flutter/material.dart';

class Doodle {
  final String name;
  final String time;
  final String content;
  final String doodle;
  final Color iconBackground;
  final Icon icon;
  const Doodle(
      {this.name,
        this.time,
        this.content,
        this.doodle,
        this.icon,
        this.iconBackground});
}

const List<Doodle> doodles = [
  Doodle(
      name: "Boutiere Ine Sorti",
      time: "Zour 1",
      doodle:
      "https://content.instructables.com/ORIG/FUV/WBZM/FS6PPZ7V/FUVWBZMFS6PPZ7V.jpg?auto=webp&frame=1&fit=bounds&md=2102b3a5730a0fbd69eb33be01ef4bca",
      icon: Icon(Icons.looks_one, color: Colors.white),
      iconBackground: Colors.cyan),
  Doodle(
      name: "Boutiere La Ine Vine Gran",
      time: "Zour 2",
      doodle:
      "https://content.instructables.com/ORIG/FEE/UQ43/FS6PPZ8L/FEEUQ43FS6PPZ8L.jpg?auto=webp&frame=1&fit=bounds&md=565ff188328f89ad65ea9d266d37ff91",
      icon: Icon(Icons.looks_two,color: Colors.white),
      iconBackground: Colors.redAccent),

  Doodle(
      name: "Pied La Ine Grossi",
      time: "Zour 3",
      doodle:
      "https://content.instructables.com/ORIG/FKB/T2PB/FS6PNTN3/FKBT2PBFS6PNTN3.jpg?auto=webp&frame=1&width=1024&height=1024&fit=bounds&md=db443dc2a3b29a1d3d108e35af2f4ef1",
      icon: Icon(Icons.looks_3,color: Colors.white),
      iconBackground: Colors.teal),

  Doodle(
      name: "P Coumense Pran Forme",
      time: "Zour 6",
      doodle:
      "https://content.instructables.com/ORIG/F13/4FJ5/FS6PNTNC/F134FJ5FS6PNTNC.jpg?auto=webp&frame=1&width=1024&height=1024&fit=bounds&md=db443dc2a3b29a1d3d108e35af2f4ef1",
      icon: Icon(Icons.looks_6,color: Colors.white),
      iconBackground: Colors.deepPurple),

  Doodle(
      name: "Kassé Astr",
      time: "Day 30",
      doodle:
      "https://content.instructables.com/ORIG/FQO/XYNT/FS6PNTPB/FQOXYNTFS6PNTPB.jpg?auto=webp&frame=1&width=1024&fit=bounds&md=2858044a04c40af4deaee14520cb0896",
      icon: Icon(Icons.star,color: Colors.white),
      iconBackground: Colors.amberAccent),
];