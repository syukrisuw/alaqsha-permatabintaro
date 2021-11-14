import 'package:get/get.dart';
import 'package:setara_alaqsha/controllers/dashboard_controller.dart';
import 'package:setara_alaqsha/controllers/main_page_controller.dart';
import 'package:setara_alaqsha/utils/responsive/responsive.dart';
import 'package:setara_alaqsha/components/my_fields.dart';
import 'package:flutter/material.dart';

import 'package:setara_alaqsha/utils/strutils/constants.dart';

import 'package:setara_alaqsha/components/recent_files.dart';
import 'package:setara_alaqsha/components/storage_details.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

class DashboardSection extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (controller) {
          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Container(
                color: Theme.of(context).backgroundColor,
                child: Column(
                  children: [
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              MyFiles(),
                              SizedBox(height: defaultPadding),
                              RecentFiles(),
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context))
                                StorageDetails(),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                        // On Mobile means if the screen is less than 850 we dont want to show it
                        if (!Responsive.isMobile(context))
                          Expanded(
                            flex: 2,
                            child: StorageDetails(),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
