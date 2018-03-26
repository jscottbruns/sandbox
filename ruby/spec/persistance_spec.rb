require 'test/unit'
require_relative '../src/persistance'

Test.describe("Persistence") do
    Test.it("Basic tests") do
        Test.assert_equals(persistence(39),3)
        Test.assert_equals(persistence(4),0)
        Test.assert_equals(persistence(25),2)
        Test.assert_equals(persistence(999),4)
    end
end