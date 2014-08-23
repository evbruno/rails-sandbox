class Account < ActiveRecord::Base
	validates_presence_of :key, :description
end
