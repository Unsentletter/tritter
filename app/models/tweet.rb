class Tweet < ApplicationRecord
  belongs_to :user
  acts_as_votable


  def score
    self.get_upvotes.size - self.get_downvotes.size
  end


  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :message


end
