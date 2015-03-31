module Icon
  extend ActiveSupport::Concern

  included do
    has_attached_file :icon
    validates_attachment_content_type :icon, content_type: /\Aimage/
    validates_attachment_presence :icon
  end
end