defmodule PrimeNumbersTest do
  use ExUnit.Case

  test "when generating 0 primes i get an empty string" do
    assert PrimeNumbers.generate(0) == ""
  end

  test "when generating 1 primes i get the first prime" do
    assert PrimeNumbers.generate(1) == [2]
  end

  test "when generating 2 primes i get the first two primes" do
    assert PrimeNumbers.generate(2) == [2, 3]
  end

  test "when generating 3 primes i get the first three primes" do
    assert PrimeNumbers.generate(3) == [2, 3, 5]
  end

end
