class Bottles
  def initialize
  end

  def verse(num_of_bottles)
    if num_of_bottles === 0
      return <<~VERSE
      No more bottles of beer on the wall, no more bottles of beer.
      Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end

    <<~VERSE
    #{num_of_bottles} #{plural?(num_of_bottles) ? 'bottles' : 'bottle'} of beer on the wall, #{num_of_bottles} #{plural?(num_of_bottles) ? 'bottles' : 'bottle'} of beer.
    Take #{num_of_bottles == 1 ? 'it' : 'one'} down and pass it around, #{num_of_bottles == 1 ? 'no more' : num_of_bottles - 1} #{plural?(num_of_bottles - 1) ? 'bottles' : 'bottle'} of beer on the wall.
    VERSE
  end

  private

  def plural?(num)
    num > 1 || num == 0
  end
end