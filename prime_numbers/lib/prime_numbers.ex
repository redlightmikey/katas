defmodule PrimeNumbers do
  def generate(0), do: ""
  def generate(1), do: [2]
  def generate(number_to_generate), do: generate_primes([2], number_to_generate, 3)

  defp generate_primes(primes_so_far, no_of_requested_primes, possible_prime) do
    if no_of_requested_primes == Enum.count(primes_so_far) do
      primes_so_far
    else
      primes_so_far
        |> try_add_prime(possible_prime)
        |> generate_primes(no_of_requested_primes, possible_prime + 2)
    end
  end

  defp try_add_prime(primes, possible_prime) do
    cond do
      is_prime?(possible_prime, primes) ->
        primes ++ [possible_prime]
      !is_prime?(possible_prime, primes) ->
        primes
    end
  end

  def is_prime?(potential_prime, primes) do
    Enum.any?(primes, fn(prime) -> rem(potential_prime, prime) == 0 end) == false
  end

end
