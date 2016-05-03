defmodule RomanNumerals do

  def to_roman_numerals(input_number) do
    recursive_roman_numerals(input_number, "")
  end

  defp conversion_factors do
    [
      {1000, "M"},
      {50, "L"}
    ]
  end

  defp recursive_roman_numerals(input_number, final_result ) do
    cond do
      input_number >= 50 -> recursive_roman_numerals(input_number - 50, "L" <> final_result)
      input_number >= 10 -> recursive_roman_numerals(input_number - 10, "X" <> final_result)
      input_number >= 5 -> recursive_roman_numerals(input_number - 5, final_result <> "V")
      input_number >= 1 -> recursive_roman_numerals(input_number - 1, final_result <> "I")
      input_number == 0 -> final_result
    end
  end

end
