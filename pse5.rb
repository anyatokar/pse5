def pair_sum_helper(array, sum, low, high, count)
  return count if array.length == 0 || high == low
  if array[low] + array[high] < sum
    return pair_sum_helper(array, sum, low += 1, high, count)
  elsif array[low] + array[high] > sum
    return pair_sum_helper(array, sum, low, high -= 1, count)
  else
    return pair_sum_helper(array, sum, low += 1, high, count += 1)
  end
end

def pair_sum(array, sum)
  array.sort!
  return pair_sum_helper(array, sum, low = 0, high = array.length - 1, count = 0)
end

p pair_sum([3, 4, 8], 12)
# Output:  1

p pair_sum([4, 0, 2, 2], 4)
# Output: 2

p pair_sum([1, 2, 4, 5], 6)
# 2
#
p pair_sum([97, 51, 49, 35, 3, 65], 100)
# 3
#
p pair_sum([], 2)
# 0