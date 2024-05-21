import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msme/ui/screens/my_profile_sccreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DateTime _selectedDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyProfileScreen()));
            },
            child: CircleAvatar(
              radius: 10,
              child: SvgPicture.asset(
                'assets/images/profile.svg',
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SvgPicture.asset(
              'assets/images/notify.svg',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: ListView(
          children: [
            const Text(
              'Hello Sofi !',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 5,),
            const Text(
              '3rd week of your pregnancy',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(height: 26),
            DatePicker(
              height: 110,
              width: 60,
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: const Color(0xFF811A74),
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                // New date selected
                setState(() {
                  _selectedDate = date;
                });
              },
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white),
              height: 190,
              width: 100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 18.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromRGBO(129,26,116,0.2) ,
                          radius: 30,
                          child: SvgPicture.asset(
                            'assets/images/maternal_image.svg',
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text('Your baby is in the size of pear', style: TextStyle(fontSize: 16, color: Colors.grey),)
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.0, vertical: 18.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Baby Height', style: TextStyle(fontSize: 16, color: Colors.grey),),
                            SizedBox(height: 5),
                            Text('17 cm', style: TextStyle(fontSize: 16, color: Colors.black),),
                          ],
                        ),
                        SizedBox(width: 26),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Baby Weight', style: TextStyle(fontSize: 16, color: Colors.grey),),
                            SizedBox(height: 5),
                            Text('110 gm', style: TextStyle(fontSize: 16, color: Colors.black),),
                          ],
                        ),
                        SizedBox(width: 26),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Days Left', style: TextStyle(fontSize: 16, color: Colors.grey),),
                            SizedBox(height: 5),
                            Text('168 days', style: TextStyle(fontSize: 16, color: Colors.black),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomScrollView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                offset: const Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        padding: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/time_line_image.svg',
                              ),
                              const SizedBox(height: 20,),
                              const Text('Time line', style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                offset: const Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        padding: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/exercise_image.svg',
                              ),
                              const SizedBox(height: 20,),
                              const Text('Exercise', style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                offset: const Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        padding: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/hospital_image.svg',
                              ),
                              const SizedBox(height: 20,),
                              const Text('Hospital', style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                offset: const Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white),
                        padding: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/food_image.svg',
                              ),
                              const SizedBox(height: 20,),
                              const Text('Food', style: TextStyle(fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
