# coding: utf-8

#######################################################################
# Скрипт считывает построчно исходный файл, проверяет строку на       #
# наличие безкодовых (серия паспорта) и заменяет символы серии нулями #
#								      #
# Script read source file, check lines for 'whith out code person'    #
# (series of pasport) and replase cirilic chars series to zerro	      #
# Ruby version 1.9.0						      #
#######################################################################

FILE_SOURCE   = 'file.txt'
FILE_DEST     = 'out.txt'
CHARACTER_SET = "UTF-8"
PATTERN	      = /[А-Я]{2}(?<bk>\d{6})/
NEW_CHARS     = '00'

puts '-------------------------------------------------------------'
    File.readlines(FILE_SOURCE, :encoding => CHARACTER_SET).each do |line|
	File.open(FILE_DEST, 'a') do |filename2|
	    s = line.gsub(PATTERN){NEW_CHARS + $1}

#------------- wrong method --------------------------------------
#	    position = (pattern =~ line)
#	    if position
#		line[position..position.next] = replace_str
#	    end
#	    s = line
#-----------------------------------------------------------------

	    puts s
	    filename2.puts s
	end
    end
puts '______________________________________________________________'


