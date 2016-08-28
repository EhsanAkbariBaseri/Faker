class FakeCommand < ApplicationRecord
  belongs_to :fakefunction,dependent: :destroy
end
