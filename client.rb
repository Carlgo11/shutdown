require 'net/http'
url = URI.parse('http://162.243.83.31/shutdown.php')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}
puts res.body
if (res.body == "down")
  
  module OS
  def OS.windows?
    (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
  end

  def OS.mac?
   (/darwin/ =~ RUBY_PLATFORM) != nil
  end

  def OS.unix?
    !OS.windows?
  end

  def OS.linux?
    OS.unix? and not OS.mac?
  end
end

  if(OS.linux?) then
  system("sudo shutdown -h now")
elsif (OS.windows?) then
  system('shutdown -s -f -t 00')
end
end
