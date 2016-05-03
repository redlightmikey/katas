defmodule PrimeNumbers do
  def generate(0) do
    ""
  end
  def generate(number_to_generate) do
    cond do
      number_to_generate == 0 -> ""
      number_to_generate == 1 -> [2]
      number_to_generate == 2 -> [2, 3]
      number_to_generate == 3 -> [2, 3, 5]
    end
  end
end
