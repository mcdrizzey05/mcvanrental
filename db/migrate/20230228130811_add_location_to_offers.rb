class AddLocationToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :location, :string
  end
end
