class CreatePiglatinizers < ActiveRecord::Migration
  def change
    create_table :piglatinizers do |t|
      t.string :input
    end
  end
end
