defmodule YatzyTest do
  use ExUnit.Case
  doctest Yatzy

  import Yatzy

  test "score a chance by summing of all dice" do
    assert 15 = chance(2,3,4,5,1)
    assert 16 = chance(2,3,4,6,1)
  end

  test "yatzy scores 50" do
    assert 50 = yatzy(4,4,4,4,4)
    assert 0 = yatzy(4,4,4,4,6)
  end

  test "ones" do
    assert 0 = ones(4,3,5,6,2)
    assert 1 = ones(1,2,3,4,4)
    assert 2 = ones(1,1,3,4,4)
    assert 3 = ones(1,1,1,3,2)
    assert 4 = ones(1,1,1,1,3)
    assert 5 = ones(1,1,1,1,1)
  end

  test "twos" do
    assert 0 = twos(4,3,5,6,1)
    assert 4 = twos(2,2,3,4,4)
    assert 4 = twos(1,2,3,1,2)
    assert 10 = twos(2,2,2,2,2)
  end

  test "threes" do
    assert 0 = threes([4,2,5,6,1])
    assert 3 = threes([1,2,3,4,4])
    assert 12 = threes([4,3,3,3,3])
  end

  test "fourths" do
    assert 0 = fours([1,3,5,2,3])
    assert 4 = fours([2,3,5,4,1])
    assert 8 = fours([3,4,4,2,2])
  end

  test "fifths" do
    assert 0 = fives([1,3,4,2,1])
    assert 25 = fives([5,5,5,5,5])
  end

  test "six" do
    assert 0 = sixes([1,3,2,1,4])
    assert 12 = sixes([1,3,6,1,6])
  end
end
