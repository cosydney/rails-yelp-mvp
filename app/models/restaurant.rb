class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false}

end
