defmodule RomannumeralsTest do
  use ExUnit.Case

  test "when pass 0 it returns empty string" do
    assert RomanNumerals.to_roman_numerals(0) == ""
  end

  test "when pass 1 it returns I" do
    assert RomanNumerals.to_roman_numerals(1) == "I"
  end

  test "when pass 2 it returns II" do
    assert RomanNumerals.to_roman_numerals(2) == "II"
  end

  test "when pass 5 it returns V" do
    assert RomanNumerals.to_roman_numerals(5) == "V"
  end

  test "when pass 6 it returns VI" do
    assert RomanNumerals.to_roman_numerals(6) == "VI"
  end

  test "when pass 7 it returns VII" do
    assert RomanNumerals.to_roman_numerals(7) == "VII"
  end

  test "when pass 10 it returns X" do
    assert RomanNumerals.to_roman_numerals(10) == "X"
  end

  test "when pass 15 it returns XV" do
    assert RomanNumerals.to_roman_numerals(15) == "XV"
  end

  test "when pass 20 it returns XX" do
    assert RomanNumerals.to_roman_numerals(20) == "XX"
  end

  test "when pass 30 it returns XXX" do
    assert RomanNumerals.to_roman_numerals(30) == "XXX"
  end

  test "when pass 50 it returns L" do
    assert RomanNumerals.to_roman_numerals(50) == "L"
  end

  test "when pass 4 it returns IV" do
    assert RomanNumerals.to_roman_numerals(4) == "IV"
  end

  test "when pass 19 it returns XIX" do
    assert RomanNumerals.to_roman_numerals(19) == "XIX"
  end

  test "when pass 9 it returns IX" do
    assert RomanNumerals.to_roman_numerals(9) == "IX"
  end

end
