class CreateFileUploads < ActiveRecord::Migration[6.1]
  def change
    create_table :file_uploads do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
