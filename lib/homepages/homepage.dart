import 'package:doctorappointment/adminpannel/adminpage.dart';
import 'package:doctorappointment/homepages/personaldetailsfiled.dart';
import 'package:doctorappointment/homepages/profilenavigate.dart';
import 'package:doctorappointment/homepages/appointments.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/components/circleavathar.dart';
import 'homecomponent.dart';
import 'callscomponent.dart';
import 'homepage_cubit.dart';


class Homescreen extends StatelessWidget {
  Homescreen({super.key, this.name, this.age});

  List pages = [
    const Home(),
    const Callscomponent(),
    Appointments(),
    Profilenavigate()];




  final String? name;
  final int? age;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context),
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, currentselectedindex) {
          final cubit=context.read<HomeCubit>();
          return Scaffold(

            body: pages[currentselectedindex],
            appBar: AppBar(
              leadingWidth: 150,
              toolbarHeight: 58,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name ?? "", style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),),
                    Text(age?.toString() ?? ""),
                  ],
                ), //appbar column
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PersonaldetailsComponent(),));
                      },
                        child: const Circle(photo: AssetImage("assetimage/SRK.jpg"),
                          cl: Colors.black12,
                          text: "",
                          radius: 39,
                          textcl: Colors.transparent,
                        ),
                      ), InkWell(onTap: () {
                        cubit.Logout();

                      }, child: const Icon(Icons.logout)),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.white,
              currentIndex: currentselectedindex,
              onTap: (newindex) {
                context.read<HomeCubit>().updateIndex(newindex);
              },
              items: const [
                BottomNavigationBarItem(backgroundColor: Color(0xff57A6A1),
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(backgroundColor: Color(0xff57A6A1),
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  label: "Calls",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_month_sharp,
                    color: Colors.white,
                  ),
                  label: "Appointments",backgroundColor: Color(0xff57A6A1)
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white
                  ),
                  label: "Profile",backgroundColor: Color(0xff57A6A1)
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
