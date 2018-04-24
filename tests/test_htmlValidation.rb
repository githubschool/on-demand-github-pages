require 'test/unit'
require "yaml"

class TestHTMLValidation < Test::Unit::TestCase

  def test_htmlvalidation
    Dir["./_pages/*.yaml"].each do |path|
      f = YAML.load_file(path)
      [
        f["pageUrl"],
      ].each do |s|
        assert_not_nil(s.to_s[/^(?!.*(http))/], path)
      end
    end

  end
end
