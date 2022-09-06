class Task < ApplicationRecord
    belongs_to :user
    validates :name, :due_date, :description, presence: :true
end
