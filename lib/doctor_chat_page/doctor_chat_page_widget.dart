import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../chat_page/chat_page_widget.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorChatPageWidget extends StatefulWidget {
  DoctorChatPageWidget({Key key}) : super(key: key);

  @override
  _DoctorChatPageWidgetState createState() => _DoctorChatPageWidgetState();
}

class _DoctorChatPageWidgetState extends State<DoctorChatPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFFE86831)),
        automaticallyImplyLeading: true,
        title: Text(
          'Chat with Doctor',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: StreamBuilder<List<ChatsRecord>>(
          stream: queryChatsRecord(
            queryBuilder: (chatsRecord) => chatsRecord
                .where('users', arrayContains: currentUserReference)
                .orderBy('last_message_time', descending: true),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            List<ChatsRecord> listViewChatsRecordList = snapshot.data;
            // Customize what your widget looks like with no query results.
            if (snapshot.data.isEmpty) {
              return Container(
                height: 100,
                child: Center(
                  child: Text('No results.'),
                ),
              );
            }
            return Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: listViewChatsRecordList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewChatsRecord =
                      listViewChatsRecordList[listViewIndex];
                  return FutureBuilder<UsersRecord>(
                    future: () async {
                      final chatUserRef = FFChatManager.instance.getChatUserRef(
                          currentUserReference, listViewChatsRecord);
                      return UsersRecord.getDocument(chatUserRef).first;
                    }(),
                    builder: (context, snapshot) {
                      final chatUser = snapshot.data;
                      return FFChatPreview(
                        onTap: chatUser != null
                            ? () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatPageWidget(
                                      chatUser: chatUser,
                                    ),
                                  ),
                                )
                            : null,
                        lastChatText: listViewChatsRecord.lastMessage,
                        lastChatTime: listViewChatsRecord.lastMessageTime,
                        seen: listViewChatsRecord.lastMessageSeenBy
                            .contains(currentUserReference),
                        userName: chatUser?.displayName ?? '',
                        userProfilePic: chatUser?.photoUrl ?? '',
                        color: Color(0xFFEEF0F5),
                        unreadColor: Colors.blue,
                        titleTextStyle: GoogleFonts.getFont(
                          'DM Sans',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        dateTextStyle: GoogleFonts.getFont(
                          'DM Sans',
                          color: Color(0x73000000),
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        previewTextStyle: GoogleFonts.getFont(
                          'DM Sans',
                          color: Color(0x73000000),
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                        borderRadius: BorderRadius.circular(0),
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
