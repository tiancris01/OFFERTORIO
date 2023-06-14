import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:offertorio/domain/reposirories/auth/firebase_auth_repo.dart';
import 'package:offertorio/domain/usecases/auth_usecases/firebase_auth_usecase.dart';

class AuthBaseRepositoryImpl extends AuthBaseRepository {
  final AuthBaseUseCase authBaseUseCase;

  AuthBaseRepositoryImpl({required this.authBaseUseCase});

  @override
  Stream<User?> authStateChanges() {
    return authBaseUseCase.authStateChanges();
  }

  @override
  User? get currentUser => authBaseUseCase.currentUser;

  @override
  Future<void> signInWithPhoneNumber(
      BuildContext context, String phoneNumber) async {
    await authBaseUseCase.signInWithPhoneNumber(context, phoneNumber);
  }

  @override
  Future<void> signOut() async {
    await authBaseUseCase.signOut();
  }
}
