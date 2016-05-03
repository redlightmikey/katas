defmodule PrimeNumbers do
  def generate(number_to_generate) do
    cond do
      number_to_generate == 0 -> ""
      number_to_generate == 1 -> [2]
    end
  end
end
