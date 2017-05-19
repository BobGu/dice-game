class Yatzy

  def initialize(d1, d2, d3, d4, d5)
    @dice = [0]*5
    @dice[0] = d1
    @dice[1] = d2
    @dice[2] = d3
    @dice[3] = d4
    @dice[4] = d5
  end

  def self.chance(d1, d2, d3, d4, d5)
    total = 0
    total += d1
    total += d2
    total += d3
    total += d4
    total += d5
    return total
  end

  def self.yatzy(d1, d2, d3, d4, d5)
    dice = [d1, d2, d3, d4, d5]
    counts = [0]*(dice.length+1)
    for die in dice do
      counts[die-1] += 1
    end
    for i in 0..counts.size do
      if counts[i] == 5
        return 50
      end
    end
    return 0
  end

  def self.ones( d1,  d2,  d3,  d4,  d5)
    sum = 0
    if (d1 == 1)
      sum += 1
    end
    if (d2 == 1)
      sum += 1
    end
    if (d3 == 1)
      sum += 1
    end
    if (d4 == 1)
      sum += 1
    end
    if (d5 == 1)
      sum += 1
    end

    sum
  end

  def self.twos( d1,  d2,  d3,  d4,  d5)
    sum = 0
    if (d1 == 2)
      sum += 2
    end
    if (d2 == 2)
      sum += 2
    end
    if (d3 == 2)
      sum += 2
    end
    if (d4 == 2)
      sum += 2
    end
    if (d5 == 2)
      sum += 2
    end
    return sum
  end

  def self.threes( d1,  d2,  d3,  d4,  d5)
    s = 0
    if (d1 == 3)
      s += 3
    end
    if (d2 == 3)
      s += 3
    end
    if (d3 == 3)
      s += 3
    end
    if (d4 == 3)
      s += 3
    end
    if (d5 == 3)
      s += 3
    end
    return s
  end

  def fours
    sum = 0
    for at in Array 0..4
      if (@dice[at] == 4)
        sum += 4
      end
    end
    return sum
  end

  def fives()
    s = 0
    i = 0
    for i in (Range.new(0, @dice.size))
      if (@dice[i] == 5)
        s = s + 5
      end
    end
    s
  end

  def sixes
    sum = 0
    for at in 0..@dice.length
      if (@dice[at] == 6)
        sum = sum + 6
      end
    end
    return sum
  end
end
