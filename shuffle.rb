class Shuffle

  def initialize
    @unshuffled_words = []
    @shuffled_words = []
    puts "Enter words to shuffle. Press done when finished."
    get_words
  end

  def get_words
    x = gets.chomp
    if x=="done"
      shuffle_all_words
    else
      @unshuffled_words << x
      get_words
    end
  end

  def shuffle_all_words
    until @unshuffled_words.empty?
      @random = @unshuffled_words[rand(@unshuffled_words.length)]
      shuffle_one_word 
    end
    puts @shuffled_words.inspect
  end

  def shuffle_one_word
    @unshuffled_words.delete_at(@unshuffled_words.index(@random))
    @shuffled_words.push(@random)
  end

end

c = Shuffle.new