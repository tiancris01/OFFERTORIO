abstract class FirestorageRepository {
  Future<void> createProfile(String uid, Map<String, dynamic> data);
  Future<void> updateProfile(String uid, Map<String, dynamic> data);
  Future<void> deleteProfile(String uid);
  Future<Map<String, dynamic>> getProfile(String uid);
}
