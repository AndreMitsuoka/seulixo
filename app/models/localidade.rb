require "csv"

class Localidade < ActiveRecord::Base
  attr_accessible :nome, :habitantes
  validates_uniqueness_of :nome

  def read_in_csv_idh
  	csv_text = File.read('teste.csv')
	csv = CSV.parse(csv_text, :headers => true)
	
	   csv.each do |row|
	   	@localidade = Localidade.new

		
	   	row = row.to_hash.with_indifferent_access
	   	Localidade.create!(row.to_hash.symbolize_keys)
	   end	
  end

  def self.get_local_id(param_nome)
  	local = Localidade.where(:nome => param_nome)
  	id = local.to_a.to_param.to_i
  	id
  end
end
