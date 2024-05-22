import 'package:flutter/foundation.dart';
import 'package:peer_app/core/exceptions/base_exception.dart';
import 'package:peer_app/data/dummy_response/dummy_contacts.dart'; // Adjust the import to your correct path
// import 'package:peer_app/data/models/user_model.dart'; // Ensure this is correctly imported for UserModel
import 'package:peer_app/data/models/contact_model.dart'; // Adjust if necessary
// No need for DioClient in this example, but you might use it for real API calls

class ContactsProvider with ChangeNotifier {
  // Assuming DioClient and API-related code are not needed for this dummy data example
  List<ContactModel> _contacts = [];
  bool isLoading = false;
  String? error;

  // init with fetchContacts
  ContactsProvider() {
    fetchContacts();
  }

  List<ContactModel> get contacts => _contacts;

  Future<void> fetchContacts() async {
    isLoading = true;
    notifyListeners();
    try {
      // Simulating a delay as if fetching from an API
      await Future.delayed(const Duration(seconds: 1));
      // Adjusting to use the correct dummy data reference
      const response = dummyContacts;
      // Adapting to new data structure
      _contacts = List<ContactModel>.from(
          response["contacts"]!.map((x) => ContactModel.fromJson(x)));
    } catch (e, s) {
      error = e.toString();
      CustomException(e.toString(), s).handleError();
    }
    isLoading = false;
    notifyListeners();
  }
}
