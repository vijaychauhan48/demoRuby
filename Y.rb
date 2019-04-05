require 'test/unit/ui/console/testrunner'
require './X'

class Run_Tests
    def self.suite
        suite=Test::Unit::TestSuite.new
        suite<<X.suite
        return suite
    end
end
Test::Unit::UI::Console::TestRunner.run(Run_Tests)
