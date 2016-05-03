defmodule PrimeNumbers do
  def generate(0) do
    ""
  end

  def generate(1) do
    [2]
  end

  def generate(number_to_generate) do
    generate_recurssive(number_to_generate, [2], 1)
  end

  defp generate_recurssive(no_of_requested_primes, result, index) do
    if no_of_requested_primes == Enum.count(result) do
      result
    else
      potential_prime = index + 2
      cond do
        is_prime?(potential_prime, result) == true -> generate_recurssive(no_of_requested_primes, result ++ [potential_prime], potential_prime)
        is_prime?(potential_prime, result) == false -> generate_recurssive(no_of_requested_primes, result, potential_prime)
      end
    end
  end

  def is_prime?(potential_prime, primes) do
    Enum.any?(primes, fn(prime) -> rem(potential_prime, prime) == 0 end) == false
  end

end
