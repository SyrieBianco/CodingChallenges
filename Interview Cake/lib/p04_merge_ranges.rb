

# Your company built an in-house calendar tool called HiCal.
# You want to add a feature to see the times in a day when
# everyone is available.


# To do this, you’ll need to know when any team is having a meeting.

# In HiCal, a meeting is stored as tuples of integers (start_time, end_time).
# These integers represent the number of 30-minute blocks past 9:00am.

#     For example:
#
#       (2, 3)  # meeting from 10:00 – 10:30 am
#       (6, 9)  # meeting from 12:00 – 1:30 pm

# Write a function merge_ranges() that takes a list of meeting time
# ranges and returns a list of condensed ranges.
#
# #     For example, given:
#
# #       [(0, 1), (3, 5), (4, 8), (10, 12), (9, 10)]
#
# #     your function would return:
#
# #       [(0, 1), (3, 8), (9, 12)]
#
# Do not assume the meetings are in order. The meeting times are coming
# from multiple teams.
#
# Write a solution that's efficient even when we can't put a nice upper
# bound on the numbers representing our time ranges. Here we've
# simplified our times down to the number of 30-minute slots
# past 9:00 am. But we want the function to work even for very
# large numbers, like Unix timestamps.
#
# In any case, the spirit of the challenge is to merge meetings
# where start_time and end_time don't have an upper bound.

def merge_ranges(arr)
  sorted = arr.sort
  merged = [sorted.shift]

  sorted.each do |new_meeting|
    new_start, new_end = new_meeting
    last_meeting = merged.last

    if new_start.between?(*last_meeting)
      merged[-1][1] = new_end
    else
      merged.push(new_meeting)
    end
  end

  merged
end


# # # ______ CODE GRAVEYARD ______ # # #
#
# def merge_ranges(range_arr)
#   sorted = range_arr.sort
#   result = []
#
#   start_i = 0
#   merged = sorted[start_i]
#
#   sorted.each_index do |i|
#     next if i == start_i
#
#     if sorted[i][0].between?( *merged )
#       merged = merge(sorted[i], merged)
#     else
#       result << merged
#       merged, start_i = sorted[i], i
#     end
#   end
#
#   result << merged unless start_i == sorted.length - 1
#
#   result
# end
#



# # test cases # #



arr1 = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
# arr2 =
# arr3 =
# arr4 =
# arr5 =
# arr6 =
# arr7 =

result1 = merge_ranges(arr1)
# result2 = merge_ranges(arr2)
# result3 = merge_ranges(arr3)
# result4 = merge_ranges(arr4)
# result5 = merge_ranges(arr5)
# result6 = merge_ranges(arr6)
# result7 = merge_ranges(arr7)

expect1 = [[0, 1], [3, 8], [9, 12]]
# expect2 = false
# expect3 = false
# expect4 = false
# expect5 = false
# expect6 = false
# expect7 = false

p ' ~~ test 1 ~~ '
p " result = #{result1}"
p "expected: #{expect1}"
p  result1 == expect1
# p ' ~~ test 2 ~~ '
# p " result = #{result2}"
# p "expected: #{expect2}"
# p  result2 == expect2
# p ' ~~ test 3 ~~ '
# p " result = #{result3}"
# p "expected: #{expect3}"
# p  result3 == expect3
# p ' ~~ test 4 ~~ '
# p " result = #{result4}"
# p "expected: #{expect4}"
# p  result4 == expect4
# p ' ~~ test 5 ~~ '
# p " result = #{result5}"
# p "expected: #{expect5}"
# p  result5 == expect5
# p ' ~~ test 6 ~~ '
# p " result = #{result6}"
# p "expected: #{expect6}"
# p  result6 == expect6
# p ' ~~ test 7 ~~ '
# p " result = #{result7}"
# p "expected: #{expect7}"
# p  result7 == expect7






# # # ______ CODE GRAVEYARD ______ # # #
#
# def merge_ranges(range_arr)
#   sorted = range_arr.sort
#   result = []
#
#   start_i = 0
#   merged = sorted[start_i]
#
#   sorted.each_index do |i|
#     next if i == start_i
#
#     if sorted[i][0].between?( *merged )
#       merged = merge(sorted[i], merged)
#     else
#       result << merged
#       merged, start_i = sorted[i], i
#     end
#   end
#
#   result << merged unless start_i == sorted.length - 1
#
#   result
# end
#
