class PointlessJob
  @queue = 'test'

  def self.perform(i)
    filename = "./jobs/#{i}.txt"
    puts "Performing work. See #{filename}"
    sleep rand(1..5)
    File.open(filename, 'w') do |f|
      f.write "Doing work. It is #{Time.now}."
    end
  end
end
