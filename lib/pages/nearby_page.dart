import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/components/tool_bar.dart';
import 'package:flutter_test_app/config/app_icons.dart';
import 'package:flutter_test_app/config/app_strings.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.nearby,
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(4.210484, 101.975769),
          zoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                  width: 100,
                  height: 50,
                  point: LatLng(4.210484, 101.975769),
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: Text(
                            "Username",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SvgPicture.asset(AppIcons.icLocation, colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),)
                      ],
                    );
                  })
            ],
          )
        ],
      ),
    );
  }
}
