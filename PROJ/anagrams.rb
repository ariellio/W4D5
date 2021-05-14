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

puts second_anagram?("gizmo", "sally")    
puts second_anagram?("elvis", "lives") 