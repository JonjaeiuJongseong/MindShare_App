abstract class Model{
  static const String UNDEFINED_VALUE = 'undefined';
  static const int UNDEFINED_VALUE_INT = -1;

  String getUniqueKey();
  static bool isUndefined(value)
    => (value == null || value == UNDEFINED_VALUE || value == UNDEFINED_VALUE_INT);
}