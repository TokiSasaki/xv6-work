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
	tmp = text.gsub(/<span class="text_11">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_20">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_23">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_24">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_12">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_13">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_9">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="tab">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="bullet_">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="calibre6">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/<span class="text_4">(.*?)<\/span>/, '\1')
	text = tmp 
	tmp = text.gsub(/text_8/, 'text_3')
	text = tmp 
	tmp = text.gsub(/text_6/, 'text_5')
	text = tmp 
	tmp = text.gsub(/’/, '\'')
	text = tmp 
	tmp = text.gsub(/‘/, '\'')
	text = tmp 
	tmp = text.gsub(/<b class="calibre2">/, '<b>')
	text = tmp 
	tmp = text.gsub(/<p class="block_...">/, '<p class="paragraph01">')
	text = tmp 
	tmp = text.gsub(/<p class="block_..">/, '<p class="paragraph01">')
	text = tmp 
	tmp = text.gsub(/\t<p class/, "<p class")
	text = tmp 
	f.puts text 
end

f.close


