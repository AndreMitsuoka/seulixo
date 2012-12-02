#encoding: UTF-8
require "csv"
#require "localidades.rb"

class Idh < ActiveRecord::Base
  attr_accessible :owner,:idhm,:renda,:longevidade,:educacao,:ano

	def read_in_csv_idh
		#CSV=IO.read(file).force_encoding("ISO-8859-1").encode("utf-8", replace: nil)
		csv_text = File.read('saida.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row|
			row = row.to_hash.with_indifferent_access
			@localidade = Localidade.new
			@localidade.nome = row[:nome]

			lnome = @localidade.nome

			id = Localidade.get_local_id(lnome)
			puts id

			if id != 0
				p "merda"
			else
				p "cadastrando \n"
				@localidade.save
				id = @localidade.id
			end
			row.delete(:nome)
				
			row[:owner] = id		
			p row
			Idh.create!(row.to_hash.symbolize_keys)
		end
	end	 


end
