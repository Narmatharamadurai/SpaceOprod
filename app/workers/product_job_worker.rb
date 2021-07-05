class ProductJobWorker
  include Sidekiq::Worker

  def perform(file)
    csv_text = File.read(file.path)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Product.create!(row.to_hash)
    end
  end
end


