defmodule FibonacciTest do

def act(number_to_generate) do
  Fibonacci.generate(number_to_generate)
end

end

defmodule Fibonacci.GivenZeroItShould do
  use ExUnit.Case

  test "returns empty list" do
    assert FibonacciTest.act(0) == []
  end

end

defmodule Fibonacci.GivenOneItShould do
  use ExUnit.Case

  test "returns return correct value" do
    assert Fibonacci.generate(1) == [1]
  end

end


defmodule Fibonacci.GivenTwoItShould do
  use ExUnit.Case

  test "returns return correct value" do
    assert Fibonacci.generate(2) == [1,1]
  end

end

defmodule Fibonacci.GivenThreeItShould do
  use ExUnit.Case

  test "returns return correct value" do
    assert Fibonacci.generate(3) == [1, 1, 2]
  end

end

defmodule Fibonacci.GivenFiveItShould do
  use ExUnit.Case

  test "returns return correct value" do
    assert Fibonacci.generate(5) == [1, 1, 2, 3, 5]
  end

end

defmodule Fibonacci.GivenTenItShould do
  use ExUnit.Case

  test "returns return correct value" do
    assert Fibonacci.generate(10) == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  end

end
