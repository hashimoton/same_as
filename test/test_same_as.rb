# test_same_as.rb
require 'test/unit'

require '../lib/same_as'

class TestSameAs < Test::Unit::TestCase

  # tests for Array#same_as?
  
  def test_same_as_nil
    assert_equal(false, [1,2,3].same_as?(nil))
    assert_equal(true, [nil,nil].same_as?([nil,nil]))
    assert_equal(false, [].same_as?([nil]))
  end
  
  def test_same_as_empty
    assert_equal(false, [].same_as?(nil))
    assert_equal(true, [].same_as?([]))
    assert_equal(false, [1,2,3].same_as?([]))
    assert_equal(false, [].same_as?([1,2,3]))
  end
  
  def test_same_as_length
    assert_equal(true, [1].same_as?([1]))
    assert_equal(true, [1,2].same_as?([1,2]))
    assert_equal(true, [0..999].same_as?([0..999]))
    assert_equal(false, [1].same_as?([1,2]))
    assert_equal(false, [1,2].same_as?([1]))
    assert_equal(false, [0..999].same_as?([0..998]))
  end
  
  def test_same_as_element
    assert_equal(true, ["1"].same_as?(["1"]))
    assert_equal(false, [1].same_as?(["1"]))
    assert_equal(false, ["1"].same_as?([1]))
    assert_equal(false, [1,2].same_as?([0,2]))
    assert_equal(false, ["a","b","c"].same_as?(["aa","bb","cc"]))
  end
  
  def test_same_as_comparison
    assert_equal(true, ["1"].same_as?(["1"]){|a, b| a.to_i == b.to_i})
    assert_equal(true, [1].same_as?(["1"]){|a, b| a.to_s == b.to_s})
    assert_equal(true, ["123", "45"].same_as?(["abc", "de"]){|a, b| a.length == b.length})
    assert_equal(false, ["123", "456"].same_as?(["abc", "de"]){|a, b| a.length == b.length})
  end
  
  
  # tests for Array#same_prefix?
  
  def test_same_prefix_nil
    assert_equal(false, ["a","b","c"].same_prefix?(nil))
  end
  
  def test_same_prefix_empty
    assert_equal(false, [].same_prefix?(nil))
    assert_equal(true, [].same_prefix?([]))
    assert_equal(false, ["a","b","c"].same_prefix?([]))
    assert_equal(false, [].same_prefix?(["a","b","c"]))
    assert_equal(true, [""].same_prefix?(["a"]))
    assert_equal(true, ["abc"].same_prefix?([""]))
  end
  
  def test_same_prefix_length
    assert_equal(true, [""].same_prefix?([""]))
    assert_equal(true, ["a"].same_prefix?(["a"]))
    assert_equal(true, ["ab","cd"].same_prefix?(["abc","cde"]))
    assert_equal(false, ["a"].same_prefix?(["a","b"]))
  end
  
  def test_same_prefix_element
    assert_equal(true, ["1"].same_prefix?(["1"]))
    assert_equal(true, ["0"].same_prefix?(["01"]))
    assert_equal(true, ["100"].same_prefix?(["10"]))
    assert_equal(false, ["1"].same_prefix?(["2"]))
    assert_equal(true, ["a","b","c"].same_prefix?(["aa","bb","cc"]))
    assert_equal(false, ["A","b","c"].same_prefix?(["aa","bb","cc"]))
    assert_equal(false, ["a","B","c"].same_prefix?(["aa","bb","cc"]))
    assert_equal(false, ["a","C","c"].same_prefix?(["aa","bb","cc"]))
    assert_equal(true, ["a","b","c"].same_prefix?(["aa","bB","cc"]))
    assert_equal(false, ["a","b","c"].same_prefix?(["aa","Bb","cc"]))
    assert_equal(false, ["a","b","c"].same_prefix?(["aa","bb","Cc"]))
  end
  
end
