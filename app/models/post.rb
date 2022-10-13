class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :content, length: {maximum: 150}
  validate :date_check

  def date_check
    if self.start_date && self.end_date
      if self.start_date > self.end_date
        errors.add(:end_date, "は開始日より前の日付は選択できません")
      end
    end
  end

end
