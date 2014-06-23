class Sort

  def initialize
    @unsorted_words = []
    @sorted_words = []
    puts "Enter words to sort. Press done when finished."
    get_words
  end

  def get_words
    x = gets.chomp
    if x=="done"
      sort_all_words
    else
      @unsorted_words << x
      get_words
    end
  end

  def sort_all_words
    until @unsorted_words.empty?
      @least = @unsorted_words.last
      sort_one_word 
    end
    puts @sorted_words.inspect
  end

  def sort_one_word
    @unsorted_words.each do |word|
      if word.downcase <= @least
        @least = word
      end
    end
    @unsorted_words.delete_at(@unsorted_words.index(@least))
    @sorted_words.push(@least)
  end

end

c = Sort.new