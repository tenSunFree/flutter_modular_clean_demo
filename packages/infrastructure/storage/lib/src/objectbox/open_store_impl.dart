import 'package:storage/objectbox.g.dart' as ob;

Future<ob.Store> openStoreWrapper({
  required String directory,
  required String macosApplicationGroup,
}) {
  return ob.openStore(
    directory: directory,
    macosApplicationGroup: macosApplicationGroup,
  );
}
