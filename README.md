cn_quizsplit
============

Chinese IB BSL Word Splitting Matching Quiz Helper

Essentially generates practice quizzes to prep for word splitting + matching + providing English definitions quizzes. Something that can help save massive amounts of time should the student attempt to manually generate practice quizzes.

	ruby ./cn_quizsplit.rb PATH_TO_DUMP

Example:

	ruby ./cn_quizsplit.rb word_dump.txt

The 'word dump' file is just a plain text file, with each phrase in its own line. By default, the program will split the phrase at the integer floor(len / 2), where len is the length of the phrase (the line). Otherwise, you can manually specify a split point by inserting a comma.

Depending on your terminal, the output from stdout might not format nicely when bluntly copied and pasted over to a word processor; if you have any suggestions on a possible approach or improvements feel free to open a pull request.

Todo
----

- Output into a nice readable printable file (ODT? PDF? DOC(X)?)
- Proper space control
- Possible frontend
- Provide answers

Example Output
--------------

A) 补				 		(    ) 裕	_______________
B) 短				 		(    ) 者	_______________
C) 录				 		(    ) 贺	_______________
D) 媒				 		(    ) 不到	_______________
E) 确				 		(    ) 间	_______________
F) 技				 		(    ) 重	_______________
G) 支				 		(    ) 体	_______________
H) 承				 		(    ) 才	_______________
I) 苦				 		(    ) 持	_______________
J) 空				 		(    ) 训班	_______________
K) 幸				 		(    ) 实	_______________
L) 拼				 		(    ) 命	_______________
M) 体				 		(    ) 课	_______________
N) 达				 		(    ) 谅	_______________
O) 富				 		(    ) 衷	_______________
P) 祝				 		(    ) 福	_______________
Q) 记				 		(    ) 取	_______________
R) 成				 		(    ) 能	_______________
S) 尊				 		(    ) 受	_______________