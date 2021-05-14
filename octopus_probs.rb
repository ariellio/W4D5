def longest_fish(fishes)
    big_tuna = []
    (0...fishes.length).each do |i|
       (i + 1...fishes.length).each do |j| 
        big_tuna = fishes[i] if fishes[i].length > fishes[j].length
       end
    end
    big_tuna
end




fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

