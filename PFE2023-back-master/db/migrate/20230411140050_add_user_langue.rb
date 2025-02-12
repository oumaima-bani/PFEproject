class AddUserLangue < ActiveRecord::Migration[7.0]
  def change
    create_table :user_langues, id: :uuid do |t|
      t.references :user , type: :uuid, null: false, foreign_key: { on_delete: :cascade }
      t.references :langue , type: :uuid, null: false, foreign_key: { on_delete: :cascade }
      t.integer :niveau
      t.timestamps
    end
  end
end
