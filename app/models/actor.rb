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
  def filmography
    starred_in = self.director_id
    matched_director_id = Director.where({ :id => directed_by_id })
    the_director = matched_director_id.at(0)
    return the_director
  end

  def characters
    actor_id = self.id
    roles_played = Character.where({ :actor_id => actor_id })
    return roles_played
  end
end

