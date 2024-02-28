class Bottles
  def initialize
  end

  def verse(num_of_bottles)
    <<~VERSE
    #{num_of_bottles} bottles of beer on the wall, #{num_of_bottles} bottles of beer.
    Take one down and pass it around, #{num_of_bottles - 1} bottles of beer on the wall.
    VERSE
  end
end