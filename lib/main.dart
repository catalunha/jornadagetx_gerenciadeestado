import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornadagetx_gerenciadeestado/atualizacao/atualizacao_objetos_page.dart';
import 'package:jornadagetx_gerenciadeestado/basico/basico_reatividade_page.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/controllers_home_page.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/getx_widget/getx_widget_page.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/getxcontroller_example/getxcontroller_example_page.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/getxcontroller_example/my_controller.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/local_state_widget/local_state_widget_page.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/workers/workers_controller.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/workers/workers_page.dart';
import 'package:jornadagetx_gerenciadeestado/first_rebuild/first_rebuild_page.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/full_life_cycle_controller/full_life_cycle_controller_example.dart';
import 'package:jornadagetx_gerenciadeestado/controllers/full_life_cycle_controller/full_life_cycle_controller_page.dart';
import 'package:jornadagetx_gerenciadeestado/getbuilder/get_builder_controller.dart';
import 'package:jornadagetx_gerenciadeestado/getbuilder/get_builder_page.dart';
import 'package:jornadagetx_gerenciadeestado/home_page.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/tipos_reativos_com_obs_page.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/tipos_reativos_genericos_nulos_page.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/tipos_reativos_genericos_page.dart';
import 'package:jornadagetx_gerenciadeestado/tipos/tipos_reativos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/basico_reatividade',
          page: () => BasicoReatividadePage(),
        ),
        GetPage(
          name: '/tipos_reativos',
          page: () => TiposReativosPage(),
        ),
        GetPage(
          name: '/tipos_reativos_genericos',
          page: () => TiposReativosGenericosPage(),
        ),
        GetPage(
          name: '/tipos_reativos_genericos_nulos',
          page: () => TiposReativosGenericosNulosPage(),
        ),
        GetPage(
          name: '/tipos_reativos_com_obs',
          page: () => TiposReativosComObsPage(),
        ),
        GetPage(
          name: '/atualizacao_objetos',
          page: () => AtualizacaoObjetosPage(),
        ),
        GetPage(
            name: '/controllers',
            page: () => const ControllersHomePage(),
            children: [
              GetPage(
                name: '/getxcontroller',
                binding: BindingsBuilder(() {
                  //Com put
                  // Get.put(MyController());
                  //ordem é
                  // controller.onInit
                  // page.build
                  // controller.onReady
                  //ordem é se delay, super.onInit();
                  // page.build
                  // controller.onInit
                  //ordem é se super.onInit(); delay
                  // page.build
                  // controller.onReady
                  // controller.onInit
                  //---
                  //Com lazyPut
                  Get.lazyPut(() => MyController());
                  //ordem é
                  // page.build
                  // controller.onInit
                  // controller.onReady
                }),
                page: () => const GetxcontrollerExamplePage(),
              ),
              GetPage(
                name: '/getxwidget',
                page: () => const GetxWidgetPage(),
              ),
              GetPage(
                name: '/localstate',
                page: () => const LocalStateWidgetPage(),
              ),
              GetPage(
                name: '/workers',
                binding: BindingsBuilder.put(() => WorkersController()),
                page: () => const WorkersPage(),
              ),
              GetPage(
                name: '/full_life_cycle_controller',
                binding:
                    BindingsBuilder.put(() => FullLifeCycleControllerExample()),
                page: () => const FullLifeCycleControllerPage(),
              ),
            ]),
        GetPage(
          name: '/first_rebuild',
          page: () => const FirstRebuildPage(),
        ),
        GetPage(
          name: '/getbuilder',
          binding: BindingsBuilder.put(() => GetBuilderController()),
          page: () => const GetBuilderPage(),
        ),
      ],
    );
  }
}
