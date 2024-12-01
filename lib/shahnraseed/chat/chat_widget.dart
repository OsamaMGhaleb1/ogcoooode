import '/backend/backend.dart';
import '/components/navbardash_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xF9000000),
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('dashboard');
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            FFLocalizations.of(context).getText(
              'ftipete4' /* الرسائل */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Tajawal',
                  color: FlutterFlowTheme.of(context).tertiary,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: StreamBuilder<List<ChatsRecord>>(
                          stream: queryChatsRecord(
                            queryBuilder: (chatsRecord) => chatsRecord
                                .orderBy('last_message_time', descending: true),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 44.0,
                                  height: 44.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<ChatsRecord> listViewChatsRecordList =
                                snapshot.data!;
                            if (listViewChatsRecordList.isEmpty) {
                              return Center(
                                child: Image.asset(
                                  'assets/images/222_(9).png',
                                  width: 300.0,
                                ),
                              );
                            }

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewChatsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewChatsRecord =
                                    listViewChatsRecordList[listViewIndex];
                                return StreamBuilder<FFChatInfo>(
                                  stream: FFChatManager.instance.getChatInfo(
                                      chatRecord: listViewChatsRecord),
                                  builder: (context, snapshot) {
                                    final chatInfo = snapshot.data ??
                                        FFChatInfo(listViewChatsRecord);
                                    return FFChatPreview(
                                      onTap: () => context.pushNamed(
                                        'chat_detail',
                                        queryParameters: {
                                          'chatUser': serializeParam(
                                            chatInfo.otherUsers.length == 1
                                                ? chatInfo.otherUsersList.first
                                                : null,
                                            ParamType.Document,
                                          ),
                                          'chatRef': serializeParam(
                                            chatInfo.chatRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'chatUser':
                                              chatInfo.otherUsers.length == 1
                                                  ? chatInfo
                                                      .otherUsersList.first
                                                  : null,
                                        },
                                      ),
                                      lastChatText:
                                          chatInfo.chatPreviewMessage(),
                                      lastChatTime:
                                          listViewChatsRecord.lastMessageTime,
                                      seen: listViewChatsRecord
                                          .lastMessageSeenBy!
                                          .contains(currentUserReference),
                                      title: chatInfo.chatPreviewTitle(),
                                      userProfilePic: chatInfo.chatPreviewPic(),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      unreadColor:
                                          FlutterFlowTheme.of(context).primary,
                                      titleTextStyle: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                      dateTextStyle: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0,
                                      ),
                                      previewTextStyle: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              8.0, 3.0, 8.0, 3.0),
                                      borderRadius: BorderRadius.circular(0.0),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Current naBar items:
            //
            // Home
            // Cart
            // Orders
            // Wallet
            // Profile
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: double.infinity,
                height: 65.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25.0,
                      color: Color(0x1D000000),
                      offset: Offset(
                        0.0,
                        -8.0,
                      ),
                    )
                  ],
                ),
                child: wrapWithModel(
                  model: _model.navbardashModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavbardashWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
