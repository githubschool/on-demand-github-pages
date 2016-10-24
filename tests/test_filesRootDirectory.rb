require 'test/unit'

  def test_no_other_files_root
    correct_files = [".bundle",
     ".git",
     ".github",
     ".gitignore",
     ".travis.yml",
     ".yamllint",
     "Gemfile",
     "Gemfile.lock",
     "README.md",
     "Rakefile",
     "_config.yml",
     "_layouts",
     "_pages",
     "_pins",
     "createMap.topojson",
     "index.html",
     "render.js",
     "script",
     "test.rb",
     "tests",
     "vendor"]
    correct_files_sorted = correct_files.sort
    actual_files = []
    Dir.foreach('./') do |item|
      next if item == '.' or item == '..'
      actual_files.push(item)
    end
    actual_files_sorted = actual_files.sort
    assert_equal(correct_files_sorted, actual_files_sorted)
  end
