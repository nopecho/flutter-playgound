import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playgound/ui/pages/home/view_models/home_view_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../nopecho_flow/flutter_flow_calendar.dart';
import '../../../nopecho_flow/flutter_flow_theme.dart';
import '../../../nopecho_flow/flutter_flow_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final viewModel = Get.find<HomeViewModel>();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    viewModel.dispose();
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              tablet: false,
            ),
            child: Container(
              width: 270.0,
              height: 800.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Image.asset(
                        'assets/images/y20dh_',
                        width: 180.0,
                        height: 40.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(0.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Get.toNamed("/");
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    width: 4.0,
                                    height: 100.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF4B39EF),
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.home_filled,
                                  color: Color(0xFF101213),
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      Get.toNamed("/");
                                    },
                                    child: Text(
                                      'Home',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Outfit',
                                        color: const Color(0xFF101213),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Get.toNamed("/chat");
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    width: 4.0,
                                    height: 100.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFF1F4F8),
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.forum_rounded,
                                  color: Color(0xFF57636C),
                                  size: 28.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Chats',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Outfit',
                                      color: const Color(0xFF57636C),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.grain,
                                color: Color(0xFF57636C),
                                size: 28.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'DoAnyting',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Outfit',
                                      color: const Color(0xFF57636C),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.wifi_tethering_rounded,
                                color: Color(0xFF57636C),
                                size: 28.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'DoAnyting',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Divider(
                              height: 12.0,
                              thickness: 2.0,
                              color: Color(0xFFE0E3E7),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      'https://avatars.githubusercontent.com/u/92011565?s=400&u=6b48e42d998651b3b23b0e1672fa4ad4cb070510&v=4',
                                      width: 44.0,
                                      height: 44.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'nopecho',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF101213),
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'ch.jooon@gmail.com',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 4.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                              Colors.transparent,
                                              onTap: () async {
                                                await launchURL(
                                                    'https://github.com/nopecho');
                                              },
                                              child: Text(
                                                'GibHub',
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                  fontFamily: 'Outfit',
                                                  color:
                                                  Color(0xFF4B39EF),
                                                  fontSize: 14.0,
                                                  fontWeight:
                                                  FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'nopecho.io',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).tertiary,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                FlutterFlowTheme.of(context).secondaryText,
                                labelStyle:
                                FlutterFlowTheme.of(context).titleMedium,
                                indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                                tabs: const [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.beach_access,
                                      ),
                                      Tab(
                                        text: "",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.chat_bubble_outline_rounded,
                                      ),
                                      Tab(
                                        text: "",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowCalendar(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        weekFormat: false,
                                        weekStartsMonday: false,
                                        rowHeight: 64.0,
                                        onChange:
                                            (DateTimeRange? newSelectedDate) {
                                          setState(() =>
                                          // viewModel.calendarSelectedDay =
                                          //     newSelectedDate
                                            viewModel.onEvent()
                                          );
                                        },
                                        titleStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                        dayOfWeekStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelLarge,
                                        dateStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        selectedDateStyle:
                                        FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        inactiveDateStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await launchURL(
                                                'https://github.com/nopecho');
                                          },
                                          child: Icon(
                                            Icons.attachment_rounded,
                                            color: Color(0xFF4317D9),
                                            size: 80.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 1.0),
                                            child: Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF6EED8),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    16.0, 12.0, 8.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 36.0,
                                                      height: 36.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        Color(0xFF06D5CD),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                      child: Text(
                                                        'A',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Inter',
                                                          color:
                                                          Colors.white,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                          FontWeight
                                                              .normal,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            12.0,
                                                            0.0,
                                                            12.0,
                                                            0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'List Item',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                fontFamily:
                                                                'Inter',
                                                                color: Color(
                                                                    0xFF101518),
                                                                fontSize:
                                                                14.0,
                                                                fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                              ),
                                                            ),
                                                            Text(
                                                              '100+',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                fontFamily:
                                                                'Inter',
                                                                color: Color(
                                                                    0xFF101518),
                                                                fontSize:
                                                                12.0,
                                                                fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
