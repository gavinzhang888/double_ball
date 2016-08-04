# == Schema Information
#
# Table name: history_balls
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

class HistoryBall < ApplicationRecord
end
