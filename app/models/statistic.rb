class Statistic < ActiveRecord::Base

def self.to_csv(options = {})
	CSV.generate(options) do |csv|
		csv << column_names
		all.each do |statistic|
			csv << statistic.attributes.values_at(*column_names)
		end
	end
end

def self.import(file)
	allowed_attributes = ["year", "number1", "number2", "number3", "number4", "number5", "number6", "number7", "number8"]
	spreadsheet = open_spreadsheet(file)
	header = spreadsheet.row(1)
	(2..spreadsheet.last_row).each do |i|
		row = Hash[[header, spreadsheet.row(i)].transpose]
		statistic = find_by_year(row["year"]) || new
		statistic.attributes = row.to_hash.select { |k,v| allowed_attributes.include? k }
		statistic.save!
	end
end

def self.open_spreadsheet(file)
	case File.extname(file.original_filename)
	when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
	when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
	else raise "Unknown file type: #{file.original_filename}"
	end
end

end
