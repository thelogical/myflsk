#!/usr/bin/env python
import unittest
import app

class TestHello(unittest.TestCase):

    def setUp(self):
        app.app.testing = True
        self.app = app.app.test_client()


    def test_hello(self):
        rv = self.app.get('/')
        self.assertEqual(rv.status, '200 OK')
        self.assertEqual(rv.data, b'Hello World!')

    def test_get_version(self):
        rv = self.app.get('/version')
        self.assertEqual(rv.status, '200 OK')
        print(rv.data.decode())

if __name__ == '__main__':
    import xmlrunner
    runner = xmlrunner.XMLTestRunner(output='test-results')
    unittest.main(testRunner=runner)
    unittest.main()

print("Module name is",__name__)
