import 'package:flutter/widgets.dart';
import 'package:salmon_stats_app/config.dart';
import 'package:salmon_stats_app/ui/all.dart';

const Size _defaultBossImageSize = Size.square(32.0);
const Size _defaultMainWeaponImageSize = Size.square(24.0);
const Size _defaultSpecialWeaponImageSize = Size.square(32.0);

typedef _URLBuilder = String Function(int id);

_URLBuilder _weaponImageUrl(String type) {
  return (int id) {
    return '${Config.SALMON_IMAGE_BASE_PATH}/$type/$id.png';
  };
}

final _URLBuilder _mainWeaponImageUrl = _weaponImageUrl('weapon');
final _URLBuilder _salmonBossImageUrl = _weaponImageUrl('salmon-boss');
final _URLBuilder _specialWeaponImageUrl = _weaponImageUrl('special');

abstract class _WeaponImage extends StatelessWidget {
  const _WeaponImage(this.id, {@required this.size});

  final int id;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: size.width,
      height: size.width,
      imageUrl: _imageUrl(),
    );
  }

  String _imageUrl();
}

class BossImage extends _WeaponImage {
  const BossImage(int id, {Size size = _defaultBossImageSize}) : super(id, size: size);

  @override
  String _imageUrl() {
    return _salmonBossImageUrl(id);
  }
}

class MainWeaponImage extends _WeaponImage {
  const MainWeaponImage(int id, {Size size = _defaultMainWeaponImageSize}) : super(id, size: size);

  @override
  String _imageUrl() {
    return _mainWeaponImageUrl(id);
  }
}

class SpecialWeaponImage extends _WeaponImage {
  const SpecialWeaponImage(int id, {Size size = _defaultSpecialWeaponImageSize}) : super(id, size: size);

  @override
  String _imageUrl() {
    return _specialWeaponImageUrl(id);
  }
}
