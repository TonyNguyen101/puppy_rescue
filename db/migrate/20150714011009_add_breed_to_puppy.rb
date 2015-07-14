class AddBreedToPuppy < ActiveRecord::Migration
  def change
    add_column :puppies, :breed, :text
  end
end
