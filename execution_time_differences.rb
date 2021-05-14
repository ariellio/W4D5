# # Given a list of integers find the smallest number in the list.

# def my_min(list)
#     min = list[0] # constant
#     list.each do |num_1| # n 
#         list.each do |num_2| # n
#             min = num_2 if num_2 < min # constant
#         end
#     end

#     min
# end
# # O(n^2)
    
# def my_min(list)
#     min = list[0] # constant
#     list.each do |num_1| # n 
#         min = num_1 if num_1 < min # constant
#     end

#     min
# end
# # O (n)

# # Example:
#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#  puts my_min(list)

def largest_contiguous_subsum(list)
    sub_arrays = [] # constant
    max = [list.first] # constant
    list.each_with_index do |sub, i| #n
        list.each_with_index do |sub_1, j| #n
            sub_arrays << list[i..j] if j >= i #n
        end
    end

    p sub_arrays
    sub_arrays.each do |sub| # n^2
        max = sub if sub.sum > max.sum # n 
    end

    max.sum # n
end

# O (n^3)
 list = [5, 3, -7]
 puts largest_contiguous_subsum(list)