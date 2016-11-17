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

print "start tag <??>: "
starttag = Readline.readline
print "start change tag <??>: "
start_change_tag = Readline.readline
print "last tag </??>: "
lasttag = Readline.readline
print "last change tag </??>: "
last_change_tag = Readline.readline

f = File.open(ARGV[1], "w")

for i in lines do
#	text = i.gsub(/<span class="text_2">(.*?)<\/span>/, '\1')
	text = i.gsub(/<#{starttag}>(.*?)<\/#{lasttag}>/, "<#{start_change_tag}>\1<\/#{last_change_tag}>")
	puts text
	f.puts text 
end

f.close


