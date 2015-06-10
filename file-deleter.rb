require 'fileutils'

lines = File.readlines "./shares.txt"
shares = lines.map(&:strip).reject{|l| l[0] == "#"}

shares.each do |share|
  FileUtils.rm Dir.glob(share)
end
