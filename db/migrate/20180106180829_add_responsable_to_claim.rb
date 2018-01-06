class AddResponsableToClaim < ActiveRecord::Migration[5.1]
  def change
    add_reference :claims, :responsable, index: true
  end
end
