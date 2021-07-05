class ProductJob 
		include Sidekiq::Worker

 # queue_as :default
  def perform(up)
  	#csv_text = File.read(params[:products_file].path)
  	csv_text = File.read(up.path)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Product.create!(row.to_hash)
    end
  end
end