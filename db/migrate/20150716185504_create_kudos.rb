class CreateKudos < ActiveRecord::Migration
  def change
    create_table :kudos do |t|
      t.integer :author_id
      t.integer :recipient_id
      t.string :reason

      t.timestamps
    end
  end
end
