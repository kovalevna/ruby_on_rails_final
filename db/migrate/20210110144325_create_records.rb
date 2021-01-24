# frozen_string_literal: true

class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :user
      t.string :team1
      t.string :team2
      t.string :score
      t.string :date

      t.timestamps
    end
  end
end
