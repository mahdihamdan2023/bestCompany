import 'package:best_comapny/constants/images_pathes.dart';
import 'package:best_comapny/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  GlobalKey<ScaffoldState> homeKey = GlobalKey<ScaffoldState>();
  List<CardModel> cards = [
    CardModel(
      image: ImagesPath.structuralImg,
      title: "introduction of structural design using prokon",
      nameOne: "ALI MUBARAK",
      nameTwo: "ABU KHATTAB",
      type: "F",
      hour: 01,
      minute: 40,
      count: 12,
    ),
    CardModel(
      image: ImagesPath.pvSystem,
      title: "introduction to PV System design",
      nameOne: "Emad Wajeh",
      nameTwo: "Matter",
      type: "F",
      count: 8,
      hour: 01,
      minute: 05,
    ),
    CardModel(
      image: ImagesPath.hVAC,
      title: "HVAC Designer",
      nameOne: "Mohammad ALI",
      nameTwo: "Hemide",
      type: "H",
      count: 17,
      hour: 04,
      minute: 27,
    ),
    CardModel(
      image: ImagesPath.solar,
      title: "Solar Energy System (Photovoltaic-PV) Design",
      nameOne: "Emad Wajeh",
      nameTwo: "",
      type: "H",
      count: 29,
      hour: 04,
      minute: 35,
    ),
  ];
  List<CardModel> toCategories = [
    CardModel(
      image: ImagesPath.programming,
      title: "Programming & IT",
      nameOne: "",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
    CardModel(
      image: ImagesPath.languages,
      title: "Laguages",
      nameOne: "",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
    CardModel(
      image: ImagesPath.marketing,
      title: "Marketing & Sales",
      nameOne: "",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
    CardModel(
      image: ImagesPath.engineering,
      title: "Engineering",
      nameOne: "",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
  ];
  List<CardModel> instructors = [
    CardModel(
      image: ImagesPath.ins1,
      title: "ALI MUBABAK ABU KHATTAB",
      nameOne: "STRUCTURAL ENGINEER",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
    CardModel(
      image: ImagesPath.ins2,
      title: "Emad Wajeh Matter",
      nameOne: "Designer and installer of solar",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
    CardModel(
      image: ImagesPath.ins3,
      title: "Mohammad ALI Hemide",
      nameOne: "SENIOR MECHANICAL ENGINEER",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
    CardModel(
      image: ImagesPath.ins4,
      title: "Muhammad Hamed Alayed",
      nameOne: "Structural Design Engineer",
      nameTwo: "",
      type: "",
      hour: 0,
      minute: 0,
      count: 0,
    ),
  ];
}
