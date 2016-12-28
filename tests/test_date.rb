require 'test/unit'
require "yaml"

class TestHTMLValidation < Test::Unit::TestCase

  def test_htmlvalidation
    Dir["./_pages/*.yaml"].each do |path|
      f = YAML.load_file(path)
      [
        f["timestamp"],
      ].each do |s|
        assert_not_nil(s.to_s[/(201\d{1}-(0[1-9]|1[0-2])-[0-3]\d)/], path)
      end
    end
  end
end
