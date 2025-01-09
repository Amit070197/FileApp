class AddUserToFileUploads < ActiveRecord::Migration[6.1]
  def change
    add_reference :file_uploads, :user, null: false, foreign_key: true
  end
end
