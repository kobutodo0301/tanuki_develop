class CreateTanukiSadWords < ActiveRecord::Migration[6.0]
  def change
    create_table :tanuki_sad_words do |t|
      t.text :sad_word
      t.integer :user_id

      t.timestamps
    end
  end
end
