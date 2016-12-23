require 'test/unit'
require "yaml"
require 'html-proofer'

class TestHTMLValidation < Test::Unit::TestCase

  def test_htmlvalidation
    Dir["./_pages/*.yaml"].each do |path|
      f = YAML.load_file(path)
      [
        f["pageUrl"],
      ].each do |s|
        assert_not_nil(HTMLProofer.check_links([s]).run, path)
      end
    end

  end
end
