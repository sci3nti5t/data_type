# frozen_string_literal: true

require "test_helper"

class TestDataType < Minitest::Test
  
  # Constants
  CLASS = DataType

  def test_git_paths()
    assert_path_exists(".github/workflows/ruby.yml")
    assert_path_exists(".gitignore")
  end

  def test_doc_paths()

    assert_path_exists("LICENSE.txt")
    assert_path_exists("README.md")
    assert_path_exists("CODE_OF_CONDUCT.md")
    assert_path_exists(".yardoc")
    assert_path_exists("Changelog.md")

  end

  def test_gem_paths()

    assert_path_exists("Rakefile")
    assert_path_exists("Gemfile")
    assert_path_exists("Gemfile.lock")

  end

  def test_test_paths()
    assert_path_exists("test/test_data_type.rb")
    assert_path_exists("test/test_helper.rb")
  end

  def test_lib_paths()
    assert_path_exists("lib/data_type.rb")
    assert_path_exists("lib/data_type/version.rb")
  end

  def test_bin_paths()
    assert_path_exists("bin/console")
    assert_path_exists("bin/setup")
  end

  def test_that_it_has_a_version_number() refute_nil(CLASS::VERSION) end

  def setup() end

  def test_methods_declared()

    refute_respond_to(CLASS, 'initialize')
    assert_respond_to(CLASS, 'types')
    assert_respond_to(CLASS, 'instance?')
    assert_respond_to(CLASS, 'type?')
    assert_respond_to(CLASS, 'types_element?')
    assert_respond_to(CLASS, 'type_child?')

  end

  def test_constants()
    refute_empty(CLASS.constants())
    assert_raises(NameError) { CLASS::TYPES }
  end

  def teardown() end

end
