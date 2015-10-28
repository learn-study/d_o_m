class AddCateToDomain < ActiveRecord::Migration
  def change
    add_column :domains, :cate, :string
  end
end
