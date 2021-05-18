import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  static final _firestore = FirebaseFirestore.instance;
  
  static Future<bool> isUserExists(String userName) async {
    final documentSnapshot =
        await _firestore.collection('users').doc(userName).get();
    return documentSnapshot.exists;
  }

  static void addId(String userId,String userName){
    _firestore.collection('userIdAndName').doc(userId).set({'userName': userName});
  }
  static void addUser(String userName,String aboutUser,String fullName,String imagePath) {
    print(imagePath);
    _firestore.collection('users').doc(userName).set({'userName': userName,'aboutUser': aboutUser,'name':fullName,'imageUrl':imagePath});
  }

  static searchUserByUsername(String userName) async {
    return await _firestore.collection('users').doc(userName).get();
  }

  static Future<String> getUserNameById(String userId) async {
    final ds = await _firestore.collection('userIdAndName').doc(userId).get();
    return ds['userName'];
  }

  static Future<DocumentSnapshot> getUserDataByUserName(String userName) async {
    return await _firestore.collection('users').doc(userName).get();
  }

  static createChatRoom(chatRoomMap) async {
    await _firestore
        .collection('ChatRoom')
        .doc(chatRoomMap['chatRoomId'])
        .set(chatRoomMap);
  }

  static getChatRooms(String userName) async {
    return _firestore
        .collection('ChatRoom')
        .where("users", arrayContains: userName)
        .snapshots();
  }

  static addConversationMessages(String chatRoomId, messageMap) async {
    _firestore
        .collection('ChatRoom')
        .doc(chatRoomId)
        .collection('chats')
        .add(messageMap);
  }

  static getStreamTomessages(String chatRoomId) async {
    return _firestore
        .collection('ChatRoom')
        .doc(chatRoomId)
        .collection('chats')
        .orderBy('createdAt', descending: true)
        .snapshots();
  }
}
