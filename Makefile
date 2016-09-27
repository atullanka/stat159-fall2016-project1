paper.html : 00-abstract.md 01-introduction.md 02-discussion.md 03-conclusions.md
	pandoc 00-abstract.md 01-introduction.md 02-discussion.md 03-conclusions.md -s -o paper.html


