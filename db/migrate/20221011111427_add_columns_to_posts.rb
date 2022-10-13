class AddColumnsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :start_date, :date
    add_column :posts, :end_date, :date
    add_column :posts, :all_date, :boolean
  end
end
