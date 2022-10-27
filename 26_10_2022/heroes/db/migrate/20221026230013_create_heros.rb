class CreateHeros < ActiveRecord::Migration[7.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :remote_image
      t.string :primary_attribute
      t.string :attack_type
      t.string :roles

      t.timestamps
    end
  end
end
