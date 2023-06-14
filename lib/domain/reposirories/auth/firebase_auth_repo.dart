import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class AuthBaseRepository {
  User? get currentUser;
  Future<void> signOut();
  Stream<User?> authStateChanges();
  Future<void> signInWithPhoneNumber(BuildContext context, String phoneNumber);
}
