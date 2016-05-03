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

  test "when generating 5 primes i get the first five primes" do
    assert PrimeNumbers.generate(5) == [2, 3, 5, 7, 11]
  end

  test "when generating 10 primes i get the first ten primes" do
    assert PrimeNumbers.generate(10) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end

  test "when finding if 3 is prime returns true" do
    assert PrimeNumbers.is_prime?(3, [2]) == true
  end

  test "when finding if 5 is prime returns true" do
    assert PrimeNumbers.is_prime?(5, [2, 3]) == true
  end

  test "when finding if 7 is prime returns true" do
    assert PrimeNumbers.is_prime?(7, [2, 3, 5]) == true
  end

  test "when finding if 9 is prime returns false" do
    assert PrimeNumbers.is_prime?(9, [2, 3, 5, 7]) == false
  end

end
