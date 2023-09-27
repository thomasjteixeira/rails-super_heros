class AddPlanetToHeros < ActiveRecord::Migration[7.0]
  def change
    add_reference :heros, :planet, null: true, foreign_key: true
  end
end
