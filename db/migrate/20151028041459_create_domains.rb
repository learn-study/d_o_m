class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
      t.string :pr
      t.string :bl
      t.string :dp
      t.string :aby
      t.string :smilerweb
      t.string :dmoz
      t.string :c
      t.string :n
      t.string :o
      t.string :d
      t.string :dropped
      t.string :status
      t.string :rl

      t.timestamps null: false
    end
  end
end
