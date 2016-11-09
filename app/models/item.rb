class Item < ApplicationRecord
  belongs_to :group
  belongs_to :lesson
  belongs_to :teacher
end
