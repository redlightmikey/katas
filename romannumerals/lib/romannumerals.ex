defmodule RomanNumerals do

@arabic_conversions [[50, "L"],  [10, "X"],  [5, "V"],  [1, "I"]]


  def to_roman_numerals(input_number) do
    recursive_roman_numerals(@arabic_conversions, input_number, "")
  end

  defp recursive_roman_numerals( [], 0, final_result ), do: final_result

  defp recursive_roman_numerals( [ head | rest], input_number, final_result ) do
    arabic_number = List.first(head)
    roman_character = List.last(head)
    cond do
      input_number >= arabic_number ->
        recursive_roman_numerals([ head | rest], input_number - arabic_number, final_result <> roman_character)
      :else > 0 ->
        recursive_roman_numerals(rest, input_number, final_result)
    end
  end
end
