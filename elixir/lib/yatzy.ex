defmodule Math do
  def sum(a, b) do
    a + b
  end
end

defmodule Yatzy do
  @initial_value 0

  def chance(d1, d2, d3, d4, d5) do
    d1
      |> Math.sum(d2)
      |> Math.sum(d3)
      |> Math.sum(d4)
      |> Math.sum(d5)
  end

  def yatzy(d1, d2,d3, d4, d5) do
    dice = [d1, d2, d3, d4, d5]

    count = Enum.reject(dice, fn(d) -> d != d1 end)
      |> Enum.count

    try do
      ^count = 5
      50
    rescue
      _e in MatchError -> 0
    end
  end

  def ones(d1, d2, d3, d4, d5) do
    case [d1, d2, d3, d4, d5] do
      [ 1,1,1,1,1 ] -> 5
      [ 1,1,1,1,_ ] -> 4
      [ 1,1,1,_,_ ] -> 3
      [ 1,1,_,_,_ ] -> 2
      [ 1,_,_,_,_ ] -> 1
      [ _,_,_,_,_ ] -> 0
    end
  end

  def twos(d1,d2,d3,d4,d5) do
    case Enum.sort([d1, d2, d3, d4, d5]) do
      [ 2,2,2,2,2 ] -> 10
      [ 2,2,2,2,_ ] -> 8
      [ 2,2,2,_,_ ] -> 6
      [ 2,2,_,_,_ ] -> 4
      [ 1,1,2,2,_ ] -> 4
      [ 2,_,_,_,_ ] -> 2
      [ _,_,_,_,_ ] -> 0
    end
  end

  def threes([d1, d2, d3, d4, d5 ]) do
    sum = @initial_value
    if (d1 == 3) do
      sum = sum + 3
    end
    if (d2 == 3) do
      sum = sum + 3
    end
    if (d3 == 3) do
      sum = sum + 3
    end
    if (d4 == 3) do
      sum = sum + 3
    end
    if (d5 == 3) do
      sum = sum + 3
    end
    sum
  end

  def fours([d1, d2, d3, d4, d5]) do
    all = for n <- [d1, d2, d3, d4, d5] do
      if n == 4 do
        4
      else
        0
      end
    end
    Enum.sum all
  end

  def fives(dice) do
    result = for d <- dice do
      if d == 5, do: 5, else: 0
    end
    Enum.sum result
  end

  def sixes(dice), do: Enum.sum(for die <- dice, do: if die == 6, do: 6, else: 0)
end
