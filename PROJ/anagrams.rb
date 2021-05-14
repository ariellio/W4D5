def anagram?(word1, word2)
    subsets = word1.split('').permutation.to_a 
    chars_to = word2.split('')

    subsets.each do |ele|
        return true if ele == chars_to
    end
    
    false
end

anagram?("gizmo", "sally")    #=> false
anagram?("elvis", "lives")    #=> true

def second_anagram?(word1, word2)
    word1.each_char do |char|
        index = word2.index(char)
        if index 
            word2 = word2.delete(char)
        end
    end
    
    word2.empty? ? true : false
end



def third_anagram?(word1, word2)
    chars_1 = word1.split('').sort  #n + nlogn => O(nlogn)
    chars_2 = word2.split('').sort  #n + nlogn => O(nlogn)

    chars_1.each_with_index do |char, i| #n
        return false if chars_1[i] != chars_2[i] #constant
    end

    true
end

# => O(nlogn)



def fourth_anagram?(word1, word2)
    count_1 = Hash.new(0)
    count_2 = Hash.new(0)

    word1.each_char do |char|
        count_1[char] += 1
    end

    word2.each_char do |char|
        count_2[char] += 1
    end

    count_1.values == count_2.values
end

def fourth_anagram?(word1, word2)
    count_1 = Hash.new(0)

    word1.each_char do |char|
        count_1[char] += 1
    end

    word2.each_char do |char|
        return false unless count_1.has_key?(char)
    end

    true

end

puts fourth_anagram?("gizmo", "sally")    
puts fourth_anagram?("elvis", "lives") 