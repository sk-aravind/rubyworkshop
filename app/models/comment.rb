class Comment < ActiveRecord::Base
  belongs_to :articles
  def create 
  	@articles
end
	