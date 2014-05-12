class Empleado < ActiveRecord::Base
	belongs_to :comunidad
	has_many :remuneraciones
	
	FOTOS = File.join Rails.root, 'public', 'empleados'
	after_save :guardar_foto

	def foto=(file_data)
		unless file_data.blank?
			@file_data = file_data
			@extension = file_data.original_filename.split('.').last.downcase
		end
	end

	def photo_filename
		File.join FOTOS, "#{id}.jpg"
	end

	def photo_path
		"/empleados/#{id}.jpg"
	end

	def has_photo?
		File.exists? photo_filename		
	end

	private

	def guardar_foto
		if @file_data
			FileUtils.mkdir_p FOTOS
			File.open(photo_filename, 'wb') do |f|
				f.write(@file_data.read)
			end
			@file_data = nil
		end
	end

end
