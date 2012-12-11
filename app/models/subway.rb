# == Schema Information
#
# Table name: subways
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  lat        :float
#  long       :float
#  line       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subway < ActiveRecord::Base
  attr_accessible :name, :line, :long, :lat

  def self.text_search(query) 
    self.where("name @@ :q or line @@ :q", :q => query)
  end # :q is a key that means 'query'
end
