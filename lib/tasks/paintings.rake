namespace :paintings do
  desc "Imports paintings from data dir"
  task import: :environment do
    path = Rails.root.join("db", "data", "paintings")
    Dir.foreach(path) do |dir|
      next if dir[0] == "."
      pc = PaintingCategory.find_or_create_by(name: dir)
      PaintingImporter.import("#{path}/#{dir}", pc)
    end
  end

  module PaintingImporter

    def self.import(path, pc)
      puts "importing paintings for #{path}"
      Dir.glob("#{path}/*.jpg") do |p|
        self.create_painting(p, pc)
      end
    end

    def self.create_painting(p, pc)
      puts "Creating painting #{p} with painting category #{pc.name}"
      Painting.create({
        image: File.open(p),
        name: p.split("/").last,
        painting_categories: [pc],
        price: 100,
        details: "Details go here"  
      })
    end

  end

end
