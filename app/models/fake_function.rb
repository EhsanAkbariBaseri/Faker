class FakeFunction < ApplicationRecord
  has_many :fake_commands

  validates :name,presence: true
end
