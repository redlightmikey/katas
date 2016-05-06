defmodule RomanNumerals do

@arabic_conversions %{50 =>"L", 10 => "X", 5 => "V", 1 => "I"}

  def to_roman_numerals(input_number) do
    recursive_roman_numerals(input_number, "", Enum.reverse(@arabic_conversions))
  end

  defp recursive_roman_numerals(input_number, final_result, conversion ) do
    Enum.reduce conversion, fn({arabic, roman}, acc) ->
      cond do
        input_number >= arabic ->
          recursive_roman_numerals(input_number - arabic, roman <> final_result, acc)
        arabic > 0 ->
          recursive_roman_numerals(input_number, final_result, acc)
        true ->
          "poo"
      end
    end

  end
end
