// ignore_for_file: dead_code, sized_box_for_whitespace

import 'dart:convert';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tablaz/funciones/funciones_join_txt.dart';
import 'package:tablaz/funciones/funciones_load_db.dart';
import 'package:tablaz/objetos/objetos.dart';
import 'package:tablaz/ui/encabezado.dart';
import 'package:flutter/services.dart' show rootBundle;

class CreacionTablaZ extends StatefulWidget {
  const CreacionTablaZ({Key? key}) : super(key: key);
  @override
  _CreacionTablaZState createState() => _CreacionTablaZState();
}

class _CreacionTablaZState extends State<CreacionTablaZ> {
  //Ruta donde se almacena la base de datos SQLITE
  //Colores
  Color fondo = const Color(0xFF091d36);
  Color azul02 = const Color.fromARGB(255, 23, 48, 83);
  //Indicadores de estado de Proceso
  Color check01 = const Color(0xFF3949AB);
  Color check02 = const Color(0xFF3949AB);
  Color check03 = const Color(0xFF3949AB);
  Color check04 = const Color(0xFF3949AB);
  Color check05 = const Color(0xFF3949AB);
  Color check06 = const Color(0xFF3949AB);
  Color check07 = const Color(0xFF3949AB);
  Color check08 = const Color(0xFF3949AB);
  Color check09 = const Color(0xFF3949AB);
  Color check10 = const Color(0xFF3949AB);
  //Mensajes al usuarios
  String mensaje = '';
  //Rutas de las Carpetas donde estan almacenados los archivos
  String archivosZUT011 = '';
  String archivosImpresion = '';
  String dataSIGUE = '';
  String datosContrato = '';
  bool cargando = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [azul02, fondo],
              stops: const [0.1, 0.9]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Encabezado(),
              const SizedBox(height: 50),
              //Indicador Carga archivos Sap Cuenta Contrato
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check01, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Carga archivos Sap Interlocutor Comercial
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check02, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Carga de Archivos de alta de Instalación
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check03, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Carga de Archivos medidor
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check04, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Carga Instalaciones
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check05, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Carga Objeto de Conexion
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check06, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '6',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Carga punto de Suministro
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check07, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '7',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador carga datos Contrato
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check08, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '8',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Spool de Impresion
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check09, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '9',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  //Indicador Creacion tabla Z
                  Container(
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: check10, shape: BoxShape.circle),
                    child: const Center(
                      child: Text(
                        '10',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const SizedBox(height: 40),
              Column(
                children: [
                  if (cargando) ...[
                    Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Center(
                            child: Column(children: [
                          Text(mensaje,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20)),
                          const SizedBox(height: 80),
                          const CircularProgressIndicator()
                        ])))
                  ] else ...[
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Container para Cargar los Datos de SAP
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black38,
                              ),
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ListTile(
                                  leading: const Icon(
                                    Icons.folder,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  title: const Text(
                                    'Folder Datos ZUT011',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    'Seleccione Carpeta donde se almanacena los Archivos de la ZUT011\n $archivosZUT011',
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  onTap: () async {
                                    String? folderSeleccionado = await FilePicker
                                        .platform
                                        .getDirectoryPath(
                                            dialogTitle:
                                                'Seleccionar Carpeta TXT ZUT011');
                                    if (folderSeleccionado == null) {
                                      showToast(
                                          'No se selecciono Ninguna Carpeta',
                                          context: context);
                                      setState(() {
                                        check01 = const Color(0xFF3949AB);
                                        archivosZUT011 = '';
                                      });
                                    } else {
                                      setState(() {
                                        archivosZUT011 = folderSeleccionado;
                                      });
                                    }
                                  }),
                            ),
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black38,
                              ),
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ListTile(
                                  leading: const Icon(
                                    Icons.folder,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  title: const Text(
                                    'Folder Datos Impresión',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    'Seleccione la carpeta con los archivos de Impresión\n $archivosImpresion',
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  onTap: () async {
                                    String? folderSeleccionado = await FilePicker
                                        .platform
                                        .getDirectoryPath(
                                            dialogTitle:
                                                'Seleccionar Carpeta TXT Archivos de Impresion');

                                    if (folderSeleccionado == null) {
                                      showToast(
                                          'No se selecciono ningun Archivo',
                                          context: context);
                                      setState(() {
                                        check02 = const Color(0xFF3949AB);
                                        archivosImpresion = '';
                                      });
                                    } else {
                                      setState(() {
                                        archivosImpresion = folderSeleccionado;
                                      });
                                    }
                                  }),
                            ),
                          ],
                        ),
                        const SizedBox(height: 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Container Vigencia 02
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black38,
                              ),
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ListTile(
                                  leading: const Icon(
                                    Icons.file_copy,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  title: const Text(
                                    'Archivo con Datos SIGUE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    'Seleccione el archivo con los datos del SIGUE\n $dataSIGUE',
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  onTap: () async {
                                    FilePickerResult? archivoTxt =
                                        await FilePicker.platform.pickFiles(
                                            dialogTitle: 'Datos Tabla SIGUE',
                                            allowedExtensions: ['csv', 'txt']);
                                    if (archivoTxt == null) {
                                      showToast(
                                          'No se selecciono Ningun arhivo',
                                          context: context);
                                      setState(() {
                                        check03 = const Color(0xFF3949AB);
                                        dataSIGUE = '';
                                      });
                                    } else {
                                      setState(() {
                                        dataSIGUE =
                                            archivoTxt.files[0].path.toString();
                                      });
                                    }
                                  }),
                            ),
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black38,
                              ),
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: ListTile(
                                  leading: const Icon(
                                    Icons.folder,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  title: const Text(
                                    'Folder datos de Contratos',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    'Seleccione la Carpeta con los Datos de Contrato\n $datosContrato',
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  onTap: () async {
                                    String? folderSeleccionado = await FilePicker
                                        .platform
                                        .getDirectoryPath(
                                            dialogTitle:
                                                'Seleccionar archivos Contrato');

                                    if (folderSeleccionado == null) {
                                      showToast(
                                          'No se selecciono Ningun Archivo',
                                          context: context);
                                      setState(() {
                                        check04 = const Color(0xFF3949AB);
                                        datosContrato = '';
                                      });
                                    } else {
                                      setState(() {
                                        datosContrato = folderSeleccionado;
                                      });
                                    }
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    TextButton(
                        onPressed: () async {
                          JoinTxtData jTXT = JoinTxtData();
                          if (archivosZUT011 == '' ||
                              dataSIGUE == '' ||
                              archivosImpresion == '' ||
                              datosContrato == '') {
                            showToast(
                                'No se han seleccionado las carpetas necesarias',
                                context: context);
                          } else {
                            //Ejecutar Codigo crear Tabla Z
                            try {
                              setState(() {
                                cargando = true;
                                mensaje = 'Uniendo reportes de SAP';
                              });
                              showToast('Iniciando Proceso', context: context);
                            } catch (e) {
                              setState(() {
                                mensaje =
                                    'Error durante la unión de los archivos de la Vigencia 1: $e';
                                check01 = Colors.red;
                              });
                            }

                            //Ejecutando la unión de los archivos de la ZUT011
                            try {
                              await jTXT.joinReportesSAP(archivosZUT011);
                              setState(() {
                                mensaje =
                                    'Parseando y Cargando Data Table Account';
                              });
                            } catch (e) {
                              setState(() {
                                mensaje =
                                    'Error durante la unión de los Reportes de SAP: "$e';
                                check01 = Colors.red;
                              });
                            }
                          }
                          //Creando y/o Cargando base de Datos
                          FuncionesLoadDatabase fzLoadDB =
                              FuncionesLoadDatabase();
                          //Leyendo TXT y Cargando datos de Cuentas (ACCOUNT)
                          try {
                            final List<String> dataAccount = await compute(
                                fzLoadDB.txtToListString,
                                '$archivosZUT011\\TABLE_ACCOUNT.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataAccount;
                            dataDB.ruta = await rutaDB();
                            await compute(
                                fzLoadDB.guardarDatosCuentasDB, dataDB);
                            setState(() {
                              mensaje =
                                  'Datos cuentas (ACCOUNT) almacenado en la DB';
                              check01 = Colors.green;
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de la Tabla Account: $e';
                              check01 = Colors.red;
                            });
                          }
                          //Leyendo txt y Caragando Datos de Medidores (DEVICE)
                          try {
                            final List<String> dataDevice = await compute(
                                fzLoadDB.txtToListString,
                                '$archivosZUT011\\TABLE_DEVICE.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataDevice;
                            dataDB.ruta = await rutaDB();
                            await compute(fzLoadDB.guardarMedidorDB, dataDB);
                            setState(() {
                              mensaje =
                                  'Datos Medidor (DEVICE) almacenado en la DB';
                              check02 = Colors.green;
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de la Tabla Device: $e';
                              check02 = Colors.red;
                            });
                          }
                          //Leyendo txt y Cargando Datos de Instalación (INSTLN)
                          try {
                            final List<String> dataInstln = await compute(
                                fzLoadDB.txtToListString,
                                '$archivosZUT011\\TABLE_INSTLN.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataInstln;
                            dataDB.ruta = await rutaDB();
                            await compute(
                                fzLoadDB.guardarInstalacionesDB, dataDB);
                            setState(() {
                              mensaje =
                                  'Datos Instalación (INSTLN) almacenado en la DB';
                              check03 = Colors.green;
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de la Tabla INSTLN: $e';
                              check03 = Colors.red;
                            });
                          }
                          //Leyendo txt y Cargando Datos de la Alta de Instalación (MOVE-IN)
                          try {
                            final List<String> dataMoveIN = await compute(
                                fzLoadDB.txtToListString,
                                '$archivosZUT011\\TABLE_MOVE.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataMoveIN;
                            dataDB.ruta = await rutaDB();
                            await compute(
                                fzLoadDB.guardarAltaInstalacionDB, dataDB);
                            setState(() {
                              check04 = Colors.green;
                              mensaje =
                                  'Datos Alta de Instalación (MOVE-IN) almacenado en la DB';
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de la Tabla MOVE-IN: $e';
                              check01 = Colors.red;
                            });
                          }
                          //Leyendo txt y Cargando Datos del Objeto de Conexión (CONNOBJ)
                          try {
                            final List<String> dataConnObj = await compute(
                                fzLoadDB.txtToListString,
                                '$archivosZUT011\\TABLE_OBJCON.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataConnObj;
                            dataDB.ruta = await rutaDB();
                            await compute(
                                fzLoadDB.guardarObjetoConexionDB, dataDB);
                            setState(() {
                              check05 = Colors.green;
                              mensaje =
                                  'Datos Objeto de conexión (CONNOBJ) almacenado en la DB';
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de la Tabla CONNOBJ: $e';
                              check01 = Colors.red;
                            });
                          }
                          //Leyendo txt y Cargando datos del Interlocutor Comercial (PARTNER)
                          try {
                            final List<String> dataPartner = await compute(
                                fzLoadDB.txtToListString,
                                '$archivosZUT011\\TABLE_PARTNER.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataPartner;
                            dataDB.ruta = await rutaDB();
                            await compute(
                                fzLoadDB.guardarDatosIntComercialDB, dataDB);
                            setState(() {
                              check06 = Colors.green;
                              mensaje =
                                  'Datos Interlocutor Comercial (PARTNER) almacenado en la DB';
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de la Tabla PARTNER: $e';
                              check01 = Colors.red;
                            });
                          }
                          //Leyendo txt y Cargando datos del Puntos de Suministro (PREMISE)
                          try {
                            final List<String> dataPremise = await compute(
                                fzLoadDB.txtToListString,
                                '$archivosZUT011\\TABLE_PREMISE.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataPremise;
                            dataDB.ruta = await rutaDB();
                            await compute(
                                fzLoadDB.guardarPuntoSumiinistroDB, dataDB);
                            setState(() {
                              mensaje =
                                  'Datos Punto de Suministros (PREMISE) almacenado en la DB';
                              check07 = Colors.green;
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de la Tabla PREMISE: $e';
                              check07 = Colors.red;
                            });
                          }
                          //Cargando Datos Contrato (EVER)
                          try {
                            final List<String> dataEver = await compute(
                                fzLoadDB.txtToListStringANSI,
                                '$datosContrato\\TABLE_EVER.TXT');
                            DatatoDB dataDB = DatatoDB();
                            dataDB.data = dataEver;
                            dataDB.ruta = await rutaDB();
                            await compute(fzLoadDB.guardarContrato, dataDB);
                            setState(() {
                              mensaje =
                                  'Datos de Contratos Almacenados en la DB';
                              check08 = Colors.green;
                            });
                          } catch (e) {
                            mensaje =
                                'Error durante la Lectura o Almacenamiento del Arhivo de contratos: $e';
                            check08 = Colors.red;
                          }
                          //Cargando Datos SIGUE
                          try {
                            final List<String> datosVigencia = await compute(
                                fzLoadDB.txtToListStringANSI, dataSIGUE);
                            SpoolDataTable spoolDataTable = SpoolDataTable();
                            spoolDataTable.nombreTabla = 'SIGUE';
                            spoolDataTable.dataSpool = datosVigencia;
                            spoolDataTable.ruta = await rutaDB();
                            await compute(
                                fzLoadDB.loadDataSpool, spoolDataTable);
                            setState(() {
                              mensaje = 'Datos SIGUE Almacenados en la DB';
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Lectura o Almacenamiento de los Datos del SIGUE$e';
                              check09 = Colors.red;
                            });
                          }
                          //Cargando Datos Contratos

                          //Generando Uniones de la Tabla Z
                          try {
                            String ruta = await rutaDB();
                            DatatoDB refBarrios = DatatoDB();
                            refBarrios.ruta = ruta;
                            LineSplitter lineasDataCargada =
                                const LineSplitter();
                            String data = await rootBundle
                                .loadString('assets/REF_BARRIO.txt');
                            List<String> lineasCargadas =
                                lineasDataCargada.convert(data);
                            refBarrios.data = lineasCargadas;
                            await compute(fzLoadDB.loadDataBarrios, refBarrios);
                            await compute(fzLoadDB.crearTablaZ, ruta);
                            setState(() {
                              mensaje =
                                  'Se ha Finalizado la Creación de la Tabla Z';
                              cargando = false;
                              check10 = Colors.green;
                            });
                          } catch (e) {
                            setState(() {
                              mensaje =
                                  'Error durante la Unión de los Campos de la Tabla Z: $e';
                              cargando = false;
                              check10 = Colors.red;
                            });
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Center(
                            child: Text(
                              'Crear Tabla Z',
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ))
                  ],
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  Future<String> rutaDB() async {
    final Directory documentosApp = await getApplicationDocumentsDirectory();
    String ruta = documentosApp.path;
    return ruta;
  }
}
