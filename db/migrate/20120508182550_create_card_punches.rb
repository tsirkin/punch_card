class CreateCardPunches < ActiveRecord::Migration
  def self.up
    create_table :card_punches do |t|
      t.column :punch_date, :date
      t.column :start_hour, :integer
      t.column :start_minute, :integer
      t.column :end_hour, :integer
      t.column :end_minute, :integer
      t.column :comment, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :card_punches
  end
end
