# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    directed_by_id = self.director_id
    matched_director_id = Director.where({ :id => directed_by_id })
    the_director = matched_director_id.at(0)
    return the_director
  end
end
