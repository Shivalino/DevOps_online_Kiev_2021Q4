import unittest
import quad_equation

class QuadEquationTest(unittest.TestCase):
    def test_discriminant(self):
        print("1.test_discriminant_function:")
        self.assertEqual(quad_equation.discriminant(0, 0, 0), 0)
        self.assertEqual(quad_equation.discriminant(0, 0, 5), 0)
        self.assertEqual(quad_equation.discriminant(0, 12, 0), 144)
        self.assertEqual(quad_equation.discriminant(0, 10, 5), 100)

    def test_roots(self):
        print("2.test_roots_function:")
        self.assertEqual(quad_equation.roots(0, 0, 0, 5), (None, None))
        self.assertEqual(quad_equation.roots(4, 0, 2, -10), (5, None))
        self.assertEqual(quad_equation.roots(49, 0, -7, 0), (0.00, None))
        self.assertEqual(quad_equation.roots(-3, 1, 1, 1), (None, None))
        self.assertEqual(quad_equation.roots(236, 5, 6, -10), (0.94, -2.14))

    def test_solv_square(self):
        print("3.solv_square_function:")
        self.assertEqual(quad_equation.solv_square(2, 3, 4), (None, None))
        self.assertEqual(quad_equation.solv_square(-7, 0, 15), (-1.46, None))
        self.assertEqual(quad_equation.solv_square(0, 12, 0), (0, None))
        self.assertEqual(quad_equation.solv_square(0, 0, 0), (None, None))
        self.assertEqual(quad_equation.solv_square(-1, 0, 0), (0.00, None))
        self.assertEqual(quad_equation.solv_square(0, 0, -5), (None, None))
        self.assertEqual(quad_equation.solv_square(5, 6, -10), (0.94, -2.14))


if __name__ == "__main__":
    unittest.main()
