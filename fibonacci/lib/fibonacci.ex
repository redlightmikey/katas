defmodule Fibonacci do
  def generate(0), do: []
  def generate(1), do: [1]
  def generate(2), do: [1, 1]

  def generate(number_to_generate) do
    get_fibonacci(number_to_generate, 2, [1,1])
  end

  def get_fibonacci(number_to_generate, number_to_generate, result), do: result

  def get_fibonacci(number_to_generate, index, result) do
    latest_fib = Enum.at(result, index - 1) + Enum.at(result, index - 2)
    get_fibonacci(number_to_generate,
          index + 1,
          result ++ [latest_fib])
  end
end
