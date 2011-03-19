class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :subject
      t.text :post
      t.text :preview
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
