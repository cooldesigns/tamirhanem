class CreateTamirhanes < ActiveRecord::Migration[5.0]
  def change
    create_table :tamirhanes do |t|
      t.integer :status
      t.string :usta
      t.jsonb :kaborta, default: {}
      t.jsonb :elektrik, default: {}
      t.jsonb :motor, default: {}
      t.jsonb :lastik, default: {}
      t.jsonb :arac, default: {}
      t.timestamps
    end
  end
end
