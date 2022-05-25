# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  def characters
    actor_id = self.id
    roles_played = Character.where({ :actor_id => actor_id })
    return roles_played
  end

  def movie
    movie_starred_in = self.movie_id.at(0)
    return movie_starred_in
  end
  
end
