class Sport < ActiveRecord::Base
  has_attached_file :icon
  validates_attachment_content_type :icon, content_type: /\Aimage/
  validates_attachment_presence :icon
  validates_presence_of :name
  validates_presence_of :description
end
