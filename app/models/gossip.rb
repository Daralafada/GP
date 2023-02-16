class Gossip < ApplicationRecord
	belongs_to :user
	has_many :join_table_tag_gossip
	has_many :tags, through: :join_table_tag_gossip
	validates :title, presence: true, length: { minimum: 3, maximum:14 }
	validates :content, presence: true

end
