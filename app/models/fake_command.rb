class FakeCommand < ApplicationRecord
  belongs_to :fake_function,dependent: :destroy

  validates :name,presence: true
  validates :command,presence: true

end
