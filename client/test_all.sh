flutter test --coverage -j 4 &&
  remove_from_coverage -f coverage/lcov.info \
    -r '\.g\.dart' \
    -r '\.freezed\.dart' &&
  genhtml coverage/lcov.info -o coverage/html &&
  python3 -m http.server --directory coverage/html
