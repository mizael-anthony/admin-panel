class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.column "title", :string
      # Example: t.column "first_name", :string
      t.text :content

      t.column :views, :integer

      t.timestamps
    end
  end
end
