import 'package:al_quran/app/data/models/surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';
import '../../../constants/color.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Al Quran'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.SEARCH),
            icon: Icon(Icons.search),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assalamualaikum",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: appGrey),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: Get.width,
              child: Stack(children: [
                
              ],),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    appGrey,
                    appYoungPurple,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // body: FutureBuilder<List<Surah>>(
      //   future: controller.getAllSurah(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }

      //     if (!snapshot.hasData) {
      //       return Center(
      //         child: Text("Tidak ada data"),
      //       );
      //     }
      //     return ListView.builder(
      //       itemCount: snapshot.data!.length,
      //       itemBuilder: (context, index) {
      //         Surah surah = snapshot.data![index];
      //         return ListTile(
      //           onTap: () {
      //             Get.toNamed(Routes.DETAIL_SURAH, arguments: surah);
      //           },
      //           leading: CircleAvatar(
      //             child: Text("${surah.nomor}"),
      //           ),
      //           title: Text("${surah.nama ?? 'Error..'}"),
      //           subtitle: Text("${surah.ayat}, | ${surah.type}"),
      //           trailing: Text("${surah.asma}"),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}
