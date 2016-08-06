# == Schema Information
#
# Table name: double_balls
#
#  id            :integer          not null, primary key
#  period_number :string(255)
#  date          :datetime
#  red1          :integer
#  red2          :integer
#  red3          :integer
#  red4          :integer
#  red5          :integer
#  red6          :integer
#  blue          :integer
#  week_num      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class DoubleBall < ApplicationRecord

  def get_zhishu
    arr = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
    n = 0
    n += 1 if arr.include? red1
    n += 1 if arr.include? red2
    n += 1 if arr.include? red3
    n += 1 if arr.include? red4
    n += 1 if arr.include? red5
    n += 1 if arr.include? red6
    return n
  end
  def is_have_num(set_number)
    # b_n = 0
    # arr = [red1, red2, red3, red4, red5, red6]
    # b_n += 1 if arr.include? set_number
    # b_n += 1 if arr.include? set_number
    # b_n += 1 if arr.include? set_number
    # b_n += 1 if arr.include? set_number
    # b_n += 1 if arr.include? set_number
    # b_n += 1 if arr.include? set_number
    # boo = "false"
    # boo = "true" if b_n > 0
    # return boo
    return "==="
  end
  def get_week_day
    weekday = "星期"
    case week_num
    when 0
      weekday += "日"
    when 1
      weekday += "一"
    when 2
      weekday += "二"
    when 3
      weekday += "三"
    when 4
      weekday += "四"
    when 5
      weekday += "五"
    when 6
      weekday += "六"
    else
      weekday += "?"
    end
    return weekday
  end
  def ji_ou_number
    arr_j = 0
    arr_j += 1 if red1 % 2 != 0
    arr_j += 1 if red2 % 2 != 0
    arr_j += 1 if red3 % 2 != 0
    arr_j += 1 if red4 % 2 != 0
    arr_j += 1 if red5 % 2 != 0
    arr_j += 1 if red6 % 2 != 0
    return arr_j
  end
  def self.hello
    DoubleBall.destroy_all
    r_arr = []
    b_arr = []
    (1..33).each do |index|
      r_arr.push(index)
      b_arr.push(index) if index < 17
    end
    (1..10000).each do |index1|
      arr0 = []
      arr0 = r_arr.sample(6).sort + b_arr.sample(1)
      this_date = Time.new + index1.days
      DoubleBall.create!(period_number: "2016-#{index1}", date: this_date, red1: arr0[0], red2: arr0[1], red3: arr0[2],
        red4: arr0[3], red5: arr0[4], red6: arr0[5], blue: arr0[6], week_num: this_date.wday)
    end
  end
end
