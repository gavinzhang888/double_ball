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

  def hello
    t0 = Time.new
    # DoubleBall.destroy_all
    r_arr = []
    b_arr = []
    (1..33).each do |index|
      r_arr.push(index)
      b_arr.push(index) if index < 17
    end
    (1..10000).each do |index1|
      arr0 = []
      arr0 = r_arr.sample(6).sort + b_arr.sample(1)
      # arr0.push(r_arr.sample(6).sort)
      # arr0.push(b_arr.sample(1))
      DoubleBall.create!(period_number: "2016-#{index1}", date: Time.new, red1: arr0[0], red2: arr0[1], red3: arr0[2],
        red4: arr0[3], red5: arr0[4], red6: arr0[5], blue: arr0[6], week_num: 0)
      # puts arr0,"创建成功!"
    end
    t1 = Time.new
    puts "用时#{t1-t0}s"
  end
end
