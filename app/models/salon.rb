class Salon < ActiveRecord::Base
has_many :stylists
has_many :comments,  dependent: :destroy
  validates :salon_name, presence: true,
                  length: { minimum: 5 }

end
