import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tempo/app/data/models/employee_model.dart';
import 'package:tempo/app/modules/details/views/details_view.dart';
import 'package:tempo/app/modules/details/views/widgets/appbar.dart';
import 'package:tempo/app/modules/home/controllers/home_controller.dart';
import 'package:tempo/app/modules/home/views/widgets/appbar_home.dart';

class HomeView extends GetView<HomeController> {
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarHome,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
              child: Column(
            children: [
              textField,
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  height: 125,
                  child: GetBuilder<HomeController>(builder: (_) {
                    return _homeController.recentList.isEmpty
                        ? Center(
                            child: Text("Recently viewed",
                                style: TextStyle(fontSize: 18)))
                        : ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: _homeController.recentList.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(width: 20);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              final EmployeeModel data =
                                  _homeController.recentList[index]['data'];
                              return Column(
                                children: [
                                  Container(
                                    width: 75,
                                    height: 75,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                data.imageUrl.toString())),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 8),
                                    child: Text(
                                      "${data.firstName.toString()} ${data.lastName.toString()}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text(_homeController
                                      .getRecentTime(
                                          data: _homeController
                                              .recentList[index]['time'])
                                      .toString())
                                ],
                              );
                            },
                          );
                  })),
              sixh10,
              Container(
                  height: MediaQuery.of(context).size.height - 320,
                  child: GetBuilder<HomeController>(builder: (_) {
                    return AzListView(
                        physics: BouncingScrollPhysics(),
                        indexBarAlignment: Alignment.topRight,
                        indexBarHeight:
                            MediaQuery.of(context).size.height * 0.6,
                        data: _homeController.models,
                        itemCount: _homeController.models.length,
                        itemBuilder: (context, index) {
                          final employee = _homeController.models[index];
                          return Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  _homeController.addToRecents(data: employee);
                                  Get.to(() => DetailsView(),
                                      transition: Transition.cupertino,
                                      arguments: employee);
                                },
                                leading: Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              employee.imageUrl.toString()),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                ),
                                title: Text(
                                  employee.firstName.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle:
                                    Text(employee.contactNumber.toString()),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 80.0, right: 30.0),
                                child: Divider(
                                  thickness: 2,
                                ),
                              )
                            ],
                          );
                        });
                  })),
            ],
          )),
        ));
  }
}
