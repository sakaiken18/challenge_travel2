# プランを表示
def disp_plans(plans)
  puts '旅行プランを選択してください。'
  plans.each.with_index(1) do |plans, i|
    puts "#{i}.#{plans[:place]}旅行(#{plans[:price]}円)"
  end
end

# プランを選択
def choose_plan(plans)
  while true
    print 'プランの番号を選択 > '
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)

    puts '1から３の番号を入力してください。'
  end
  plans[select_plan_num - 1]
end

# 人数を入力
def decide_number_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。何名で予約されますか？"
  while true
    print '人数を入力 > '
    number_of_people = gets.to_i
    break if number_of_people >= 1
    puts '1以上を入力してください'
  end
  number_of_people
end

# # 合計金額を表示
def calculate_charges(chosen_plan, number_of_people)
  puts "#{number_of_people}名ですね。"
  total_price = chosen_plan[:price] * number_of_people
  if number_of_people >= 5
    total_price *= 0.9
    puts '5名以上ですので10％引きとなります。'
  end
  puts "合計金額は#{total_price.floor}円になります。"
end
