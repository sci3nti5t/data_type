# frozen_string_literal: true

require "test_helper"

class TestDataType < Minitest::Test
  
  # Constants
  CLASS = DataType
  INTEGER_INST = 0
  HASH_INST = {}
  CLASS_FLOAT = Float
  CLASS_HASH = Hash
  CLASS_STRING = String
  CLASS_INTEGER = Integer
  CLASS_NUMERIC = Numeric

  def test_git_paths()
    assert_path_exists(".github/workflows/ruby.yml")
    assert_path_exists(".gitignore")
  end

  def test_doc_paths()

    assert_path_exists("LICENSE.txt")
    assert_path_exists("README.md")
    assert_path_exists("CODE_OF_CONDUCT.md")
    refute_path_exists(".yardoc") # Fail locally, pass remotely
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

  def test_types()
    expected = [Numeric, FalseClass, TrueClass, Symbol, NilClass]
    assert_equal(expected, CLASS.types())
  end

  # self.instance?(object = nil)

  def test_inst_b_x1()
    assert(CLASS.instance?(INTEGER_INST))
  end

  def test_inst_b_x2()
    refute(CLASS.instance?(HASH_INST))
  end

  # self.type?(type = nil)

  # 
  def test_type_b_x1()
    assert(CLASS.type?(CLASS_FLOAT))
  end

  def test_type_b_x2()
    refute(CLASS.type?(CLASS_HASH))
  end

  # self.types_element(type = nil)
  
  def test_cte_x1()
    assert_operator(CLASS, 'types_element?', CLASS_NUMERIC)
  end

  def test_cte_x2()
    refute_operator(CLASS, 'types_element?', CLASS_HASH)
  end

  # self.type_child?(type = nil)

  def test_tc_x1()
    assert(CLASS.type_child?(CLASS_INTEGER))
  end

  def test_tc_x2()
    refute(CLASS.type_child?(CLASS_HASH))
  end

  def teardown() end

end
