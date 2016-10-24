require 'test/unit'

class TestFileTypePins < Test::Unit::TestCase

  def test_filecount
    Dir.foreach('./_pages/') do |item|
      next if item == '.' or item == '..'
        file_exist = File.fnmatch?('*.yaml', item)
        assert_equal(true, file_exist)
      end
    end
  end
