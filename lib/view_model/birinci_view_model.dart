class BirinciViewModel {
  String _yazi = "Merhaba";
  String get yazi => _yazi;
  set yazi(String value) {
    // yazi değerinin değeri değişince bura çaışır.
    _yazi = value;
    notiflyListeners(); //dinleyicileri uyar yani bu veride bir değişiklik yapılırsa nu veriyi dinleyenleri uyar.
  }

  bool _checkboxSecilimi = false;
  bool get checkboxSecilimi => _checkboxSecilimi;
  set checkboxSecilimi(bool value) {
    _checkboxSecilimi = value;
  }
}
