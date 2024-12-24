abstract class AbstractLocalRegisterApi {
  //save the user phone number on login success
  Future<void> saveUserPhoneNumber(String phoneNumber);

  //get the user phone number
  String getUserPhoneNumber();

  //delete the user phone number
  Future<void> deleteUserPhoneNumber();
}
