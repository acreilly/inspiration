class CreateSpreeInspirationPost < ActiveRecord::Migration
  def change
    create_table :spree_inspiration_posts do |t|
      t.column :title, :string
      t.column :body, :text
      t.column :url, :text
      t.column :visible, :boolean, default: false
      t.column :summary, :text
      t.timestamps
    end
  end
end
