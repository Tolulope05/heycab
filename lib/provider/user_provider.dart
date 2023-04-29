import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/response_model.dart';
import '../services/api_services.dart';

final userStateProvider = FutureProvider<DummyData>((ref) {
  return ApiServices().getDummyData();
});
