import 'package:doctorappointment/doctorsprofiles/finddraleena.dart';
import 'package:doctorappointment/doctorsprofiles/finddrananu.dart';
import 'package:doctorappointment/doctorsprofiles/finddrmiclejackson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/components/circleavathar1.dart';
import '../Model/components/cont1.dart';
import '../Model/components/doctordetailscontainercomponent.dart';
import '../Model/components/sb.dart';
import '../Model/components/text.dart';
import '../doctorsprofiles/Dr.kyle,sprofile.dart';
import '../doctorsprofiles/dr.aleena,sprofile.dart';
import '../doctorsprofiles/dr.ananu,sprofile.dart';
import '../doctorsprofiles/drmichel jackson,sprofile.dart';
import '../doctorsprofiles/finddrkylebush.dart';

class Home extends StatelessWidget {
  const Home({super.key});




  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.maxFinite,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Cont1(
                    tsize: 25,
                    width: double.infinity,
                    height: 250,
                    color: Color(0xff57A6A1),
                    borderRadius: 20,
                    text: "Lets Find Your Doctor",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Pediatrtion(),
                            ));
                          },
                          child: Column(
                            children: [
                              Circleavathar1(
                                radius: 23,
                                color: Colors.white,
                                backgroundImage:
                                    AssetImage("assetimage/love.jpg"),
                              ),
                              Te(
                                  text: "Pediatrition",
                                  cl: Colors.white,
                                  size: 10,
                                  weight: FontWeight.bold)
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Cardiologist(),
                                ));
                              },
                              child: Circleavathar1(
                                radius: 23,
                                color: Colors.white,
                                backgroundImage: AssetImage(
                                    "assetimage/5bca6e3882d26722f41c7ea3ec162a42.jpg"),
                              ),
                            ),
                            Te(
                                text: "Cardiologist",
                                cl: Colors.white,
                                size: 10,
                                weight: FontWeight.bold)
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Dentist(),
                            ));
                          },
                          child: Column(
                            children: [
                              Circleavathar1(
                                radius: 23,
                                color: Colors.white,
                                backgroundImage: AssetImage(
                                    "assetimage/7617d9ec6395a5cc46d9bac2f231654d.jpg"),
                              ),
                              Te(
                                  text: "Dentist",
                                  cl: Colors.white,
                                  size: 10,
                                  weight: FontWeight.bold)
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Surgen(),
                            ));
                          },
                          child: Column(
                            children: [
                              Circleavathar1(
                                radius: 23,
                                color: Colors.white,
                                backgroundImage:
                                    AssetImage("assetimage/Group 25.png"),
                              ),
                              Te(
                                  text: "Surgen",
                                  cl: Colors.white,
                                  size: 10,
                                  weight: FontWeight.bold)
                            ],
                          ),
                        ),
                      ],
                    )),
                Sb(height: 30, width: 0),
                InkWell(
                  onTap: () {},
                  child: Cont1(
                      height: 89,
                      width: double.infinity,
                      color: Color(0xff57A6A1),
                      borderRadius: 20,
                      text: "To know about covid-19vaccinations tap here",
                      tsize: 15,
                      child:
                          Image(image: AssetImage("assetimage/image 3.png"))),

                ),

                Sb(height: 20, width: 0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Te(
                          text: "Available Doctors Nearby",
                          cl: Colors.black,
                          size: 15,
                          weight: FontWeight.bold),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        //drimage column start
                        children: [
                          InkWell(
                            onTap: () {},
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Aleena(),
                                ));
                              },
                              child: CircleImage(
                                  image: AssetImage("assetimage/fc4.jpg")),
                            ),
                          ),
                          Te(
                              text: "Dr. Aleena Jose",
                              cl: Colors.black,
                              size: 14,
                              weight: FontWeight.bold),
                          Te(
                              text: "Pediatretion",
                              cl: Color(0xff57A6A1),
                              size: 11,
                              weight: FontWeight.normal),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xff57A6A1),
                          )
                        ],
                      ), //dr image column end
                      Column(
                        //dr image column start
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Kylee(),
                                ));
                              },
                              child: CircleImage(
                                  image: AssetImage("assetimage/mc3.jpg"))),
                          Te(
                              text: "Dr. Kyle Bush",
                              cl: Colors.black,
                              size: 14,
                              weight: FontWeight.bold),
                          Te(
                              text: "Cardiologist",
                              cl: Color(0xff57A6A1),
                              size: 11,
                              weight: FontWeight.normal),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xff57A6A1),
                          )
                        ],
                      ), //dr image column end
                      Column(
                        //dr image column start
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Ananu(),
                              ));
                            },
                            child: CircleImage(
                                image: AssetImage("assetimage/fdoctor.jpg")),
                          ),
                          Te(
                              text: "Dr. Ananu",
                              cl: Colors.black,
                              size: 14,
                              weight: FontWeight.bold),
                          Te(
                              text: "Dentist",
                              cl: Color(0xff57A6A1),
                              size: 11,
                              weight: FontWeight.normal),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xff57A6A1),
                          )
                        ],
                      ), //dr image column end
                      Column(
                        //dr image column start
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Micle(),
                              ));
                            },
                            child: CircleImage(
                                image: AssetImage("assetimage/doctor1.jpg")),
                          ),
                          Te(
                              text: "Dr. Micle Jackson",
                              cl: Colors.black,
                              size: 14,
                              weight: FontWeight.bold),
                          Te(
                              text: "Surgen",
                              cl: Color(0xff57A6A1),
                              size: 11,
                              weight: FontWeight.normal),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xff57A6A1),
                          ),
                        ],
                      ), //dr image column end
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
