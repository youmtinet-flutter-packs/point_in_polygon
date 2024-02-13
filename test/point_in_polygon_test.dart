import 'package:flutter_test/flutter_test.dart';
import 'package:point_in_polygon/point_in_polygon.dart';

void main() {
  final List<Point> points = <Point>[
    Point(y: 42.412328554181684, x: -71.61572554715048),
    Point(y: 42.382918132678284, x: -71.63254836209188),
    Point(y: 42.36617846481582, x: -71.5951261819161),
    Point(y: 42.39306121437432, x: -71.5680036843575),
  ];

  test('Point inside the polygon', () {
    final Point point = Point(x: -71.60473921902548, y: 42.38951132221119);
    expect(isPointInPolygon(point, points), true);
  });

  test('Point outside the polygon', () {
    final Point point = Point(x: -71.76850417263876, y: 42.38925775080263);
    expect(isPointInPolygon(point, points), false);
  });
}
