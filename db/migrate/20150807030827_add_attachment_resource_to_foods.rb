class AddAttachmentResourceToFoods < ActiveRecord::Migration
  def self.up
    change_table :foods do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :foods, :resource
  end
end
