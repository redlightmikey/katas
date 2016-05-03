defmodule PrimeNumbersTest do
  use ExUnit.Case

  test "when generating 0 primes i get an empty string" do
    assert PrimeNumbers.generate(0) == ""
  end
end
