# Copyright (C) 2013  Justin Zeng (Whackatre)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# The (optional) delimiter to split a phrase.
DELIM = ','

# If the terminal output format sucks, modify these values.
# TODO: Proper space control.
OFFSET = 65
TABS = 4
USCORES = 15
SPACES = 4

# Hash of phrases.
words = {}

if ARGV.length < 1
	puts "Usage: ruby ./cn_quizsplit.rb PATH_TO_DUMP"
	exit
else
	path = ARGV[0]
	lines = []
	File.open(path) do |f|
		lines = f.readlines
	end
	# p lines
	lines.each_with_index do |line, num|
		num += 1

		# Remove newline.
		line.strip!

		if line.length == 1
			raise "Phrase cannot be only 1 character. (line: #{num}"
		else
			# The default split index is defined as floor(len / 2).
			split_idx = (line.length.to_f / 2).floor

			# Don't bother parsing bad input.
			raise "Only be 1 delimiter per phrase. (line: #{num})" if line.count(DELIM) > 1
			
			# If the delimiter exists, split it at that length.
			split_idx = line.index(DELIM) if line.include?(DELIM)

			words[line[0...split_idx]] = line[split_idx..-1].gsub(DELIM, '')
		end
	end
end

# p words

firsts = words.keys
seconds = words.values

# Shuffle both the lists of the first words and second words.
firsts.shuffle!
seconds.shuffle!

# Print the randomized sets to stdout.
# TODO: Make this not completely crappy.
firsts.length.times do |n|
	puts "#{(OFFSET + n).chr}) #{firsts[n]}#{"\t" * TABS} \
		(#{' ' * SPACES}) #{seconds[n]}\t#{'_' * USCORES}"
end