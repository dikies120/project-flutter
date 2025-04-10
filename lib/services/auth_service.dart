import '../models/user.dart';

class AuthService {
  Future<User?> login(String email, String password) async {
    // Simulate login
    await Future.delayed(const Duration(seconds: 2));
    
    if (email == 'admin@imamstore.com' && password == 'password') {
      return User(
        id: '1',
        name: 'Admin User',
        email: email,
        role: 'admin',
      );
    }
    return null;
  }

  Future<void> logout() async {
    // Logout logic
  }
}