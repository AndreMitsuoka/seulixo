require "csv"
require 'charlock_holmes'
#require "lixo.rb"
#require "localidades.rb"
#require "idh.rb"

class LerDados <ActiveRecord::Base

	#content = File.read('saidaIDH.csv')
	#detection = CharlockHolmes::EncodingDetector.detect(content)
	#utf8_encoded_content = CharlockHolmes::Converter.convert content, detection[:encoding], 'UTF-8'
	
	#def read_in_csv_lixo(csv_file_name)
	#	CSV.foreach(csv_file_name, headers: true) do |row|
	#		@localidade << Localidade.new(row["nome"])
	#		@localidade.save
	#		nome = @localidade.nome
	#		id = Localidade.get_local_id(nome);
	#		@lixo << Lixo.new(row["x"])
	#		@lixo.owner = id
	#		@lixo.save
	#	end
	#end
	#def read_in_csv_idh(csv_file_name)
	#	CSV.foreach(csv_file_name, headers: true) do |row|
	#		@localidade << Localidade.new(row["nome"])
	#		@localidade.save
	#		nome = @localidade.nome
	#		id = Localidade.get_local_id(nome);
	#		@idh << Idh.new(row["idhm"],row["renda"],row["longevidade"],row["educacao"],row["ano"])
	#		@idh.owner = id
	#		@idh.save
	#	end
	#end	 
end