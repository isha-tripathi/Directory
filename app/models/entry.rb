class Entry < ActiveRecord::Base
  validates_presence_of :name, :phone_number, :batch_number
end
