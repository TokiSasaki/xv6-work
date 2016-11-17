require "readline"
puts "Start ruby;;;;;\n"
puts "HTML tag deleter\n"

puts ARGV[0]
puts ARGV[1]

# 文字列変数作成
lines=""


# ファイルオープン
f = File::open(ARGV[0]){|content|
	# 全行を配列として取得
	lines = content.readlines
}

puts lines

f = File.open(ARGV[1], "w")

for i in lines do
#	text = i.gsub(/<span class="text_2">(.*?)<\/span>/, '\1')
	tmp = i.gsub(/<span class="text_2">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_7">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/text_8/, 'text_3')
	text = tmp 
	tmp = text.gsub(/block_../, 'paragraph01')
	text = tmp 
	tmp = text.gsub(/text_6/, 'text_5')
	text = tmp 
	tmp = text.gsub(/\t<p class/, "<p class")
	text = tmp 
	tmp = text.gsub(/\t<p class/, "<p class")
	text = tmp 
	f.puts text 
end

f.close


