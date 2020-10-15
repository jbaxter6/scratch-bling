class CreateScratchers < ActiveRecord::Migration[6.0]
  def change
    create_table :scratchers do |t|

      t.timestamps
    end
  end
end
