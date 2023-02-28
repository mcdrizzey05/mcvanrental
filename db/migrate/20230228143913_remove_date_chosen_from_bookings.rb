class RemoveDateChosenFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date_chosen
  end
end
