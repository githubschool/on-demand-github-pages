require 'test/unit'
require "yaml"

class TestCoordinateValidation < Test::Unit::TestCase

  def test_coordinatevalidation
    Dir["./_pages/*.yaml"].each do |path|
      f = YAML.load_file(path)
      [
        f["url"],
      ].each do |s|
        assert_not_nil(s.to_s[/([A-Za-z0-9]+\.github.io)/], path)
      end
    end

  end
end
