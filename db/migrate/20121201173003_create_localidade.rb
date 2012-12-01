class CreateLocalidade < ActiveRecord::Migration
  def change
  	create_table :localidades do |t|
  		t.string :nome
  	end
  end

end

