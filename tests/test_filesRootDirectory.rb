require 'test/unit'

class TestDirectoryContents < Test::Unit::TestCase

  def test_no_other_files_root
    correct_files = [".bundle",
     ".git",
     ".gitignore",
     ".travis.yml",
     ".yamllint",
     "Gemfile",
     "Gemfile.lock",
     "_config.yml",
     "_layouts",
     "_pages",
     "_site",
     "createDirectory.json",
     "schema.yaml",
     "tests",
     "testyamale.py",
     "vendor",
     "yamale"]
    correct_files_sorted = correct_files.sort
    actual_files = []
    puts correct_files_sorted
    Dir.foreach('./') do |item|
      next if item == '.' or item == '..'
      actual_files.push(item)
    end
    actual_files_sorted = actual_files.sort
    assert_equal(correct_files_sorted, actual_files_sorted)
  end
end
