class AddPhotoToProfile < ActiveRecord::Migration
  def self.up
    add_column :profiles, :photo_file_name, :string # Original filename
    add_column :profiles, :photo_content_type, :string # Mime type
    add_column :profiles, :photo_file_size, :integer # File size in bytes
  end

  def self.down
    remove_column :profiles, :photo_file_name
    remove_column :profiles, :photo_content_type
    remove_column :profiles, :photo_file_size
  end
end
