class Attachment < ActiveRecord::Base
  belongs_to :product

  has_attached_file :attachment,
                    :url  => "/system/attachments/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/system/attachments/:id/:style_:basename.:extension",
	                  :styles => { :thumb=> "75x75#", :catalog=>"180x180#",:small  => "300x300>", :large => "600x600>" }

  def attachment_url style
    "/system/attachments/#{self.id}/#{style}_#{self.attachment_file_name}"
  end

end