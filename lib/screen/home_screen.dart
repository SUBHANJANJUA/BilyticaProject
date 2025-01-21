import 'package:flutter/material.dart';
import '../Model/get_datting_Model.dart';
import '../Services/state_servieces.dart';
import '../Widgets/home_widget/header_container.dart';
import '../Widgets/home_widget/home_card.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({super.key});
  StateServieces stateServieces = StateServieces();
  @override
  Widget build(BuildContext context) {
    stateServieces.fetchDatingList();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeaderContainer(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: FutureBuilder<List<dynamic>>(
                future: stateServieces.fetchDatingList(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final item = snapshot.data![index];
                        return HomeCard(
                          title: "Dinner",
                          dp: "assets/images/dp.png",
                          name: "${item['name']} - ${item['age']}",
                          distence: "${item['distance']} from you",
                          date: item['date'],
                          time: item['time'],
                          location: item['location'],
                        );
                      },
                    );
                  } else {
                    return Center(child: Text("No data available"));
                  }
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
