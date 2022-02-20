class Movie < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :dependent => :destroy

  belongs_to :director

  # Indirect associations

  has_many   :actors,
             :through => :roles,
             :source => :actor

  # Validations

  # Scopes

  def to_s
    title
  end

end
