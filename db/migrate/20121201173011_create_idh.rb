class CreateIdh < ActiveRecord::Migration
  def change
  	create_table :idhs do |t|
		t.integer :owner
  		t.float :idhm
  		t.float :educacao
  		t.float :renda
  		t.float :longetividade
  		t.integer :ano
  	end
  end

  
end
