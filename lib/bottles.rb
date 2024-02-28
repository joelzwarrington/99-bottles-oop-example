class Bottles
  def initialize
  end

  def verse(num_of_bottles)
    <<~VERSE
    #{num_of_bottles} #{plural?(num_of_bottles) ? 'bottles' : 'bottle'} of beer on the wall, #{num_of_bottles} #{plural?(num_of_bottles) ? 'bottles' : 'bottle'} of beer.
    Take one down and pass it around, #{num_of_bottles - 1} #{plural?(num_of_bottles - 1) ? 'bottles' : 'bottle'} of beer on the wall.
    VERSE
  end

  private

  def plural?(num)
    num > 1 || num == 0
  end
end