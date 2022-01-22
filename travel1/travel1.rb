puts <<~TEXT
  旅行プランを選択してください。

  1. 沖縄旅行(10000円)
  2. 北海道旅行(20000円)
  3. 九州旅行(15000円)

  TEXT

while true
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1から３の番号を入力してください。"
end

if plan_num == 1
  place = "沖縄"
  price = 10000

elsif plan_num == 2
  place = "北海道"
  price = 20000

elsif plan_num == 3
  place = "九州"
  price = 15000
end

puts "#{place}旅行ですね。"

puts "何名で予約されますか？"

while true
  print "人数を入力 >"
  number_of_human = gets.to_i

  break if number_of_human >= 1
  puts "1以上を入力してください。"

end

puts "#{number_of_human}名ですね。"

total_price = price * number_of_human

if number_of_human >= 5
  total_price *= 0.9
  puts "5名以上ですので10％引きとなります。"
end

puts "合計金額は#{total_price.ceil}円になります。"
