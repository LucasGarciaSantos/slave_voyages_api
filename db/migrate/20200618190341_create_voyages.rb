class CreateVoyages < ActiveRecord::Migration[6.0]
  def change
    create_table :voyages do |t|

      t.timestamps
    end
  end
end
