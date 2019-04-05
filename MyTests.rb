require 'test/unit/testsuite'
require './LoginTestCases'
require './UserManagementTests'

class RunMyTestCases
    def self.suite
        suite=Test::Unit::TestSuite.new
        suite<<LoginTestCases.suite
        suite<<UserManagementTests.suite
        return suite
    end
end

Test::Unit::UI::Console::TestRunner.run(RunMyTestCases)
