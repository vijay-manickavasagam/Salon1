class Salon < ActiveRecord::Base
has_many :comments
  validates :salon_name, presence: true,
                  length: { minimum: 5 }

end
