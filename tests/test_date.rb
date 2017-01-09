require 'test/unit'
require "yaml"

class TestHTMLValidation < Test::Unit::TestCase
  def test_htmlvalidation
    Dir["./_pages/*.yaml"].each do |path|
      f = YAML.load_file(path)
      assert(f["timestamp"].is_a?(Date), "Invalid Date format '#{f["timestamp"]}' in #{path}")
    end
  end
end
