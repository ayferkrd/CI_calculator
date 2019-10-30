import calculate


class TestCalculate:

    def test_add(self):
        assert 4 == calculate.add(2, 2)

    def test_subtract(self):
        assert 2 == calculate.subtract(4, 2)

    def test_multiplication(self):
        assert 100 == calculate.multiply(20, 5)
