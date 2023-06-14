// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:offertorio/domain/usecases/auth_usecases/firebase_auth_usecase.dart';

class AuthBaseDataSource implements AuthBaseUseCase {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  AuthBaseDataSource({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });

  @override
  Stream<User?> authStateChanges() {
    // TODO: implement authStateChanges
    throw UnimplementedError();
  }

  @override
  // TODO: implement currentUser
  User? get currentUser => throw UnimplementedError();

  @override
  Future<void> signInWithPhoneNumber(BuildContext context, String phoneNumber) {
    // TODO: implement signInWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
