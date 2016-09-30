## ***Makefile***

Make is a tool that allows you to construct a *target file* from other files, known as *dependencies*. Make was developed to handle the building of complex pieces of files composed from many source files that need to be compiled or executed in a precise order. Often projects can be quite complicated with several data files, text files for analysis or even plots to parse through and from which one has to create a paper or presentation. Make allows you to provide a set order of instructions, a recipe of sorts, that describes in what order files need to run for the final result to be attained. 

### How to execute these commands?

Makefiles are executed by simply calling `make` from the command line. One thing to keep in mind is that the make file must in the same folder as the dependencies or the source file (I personally struggled with executing Make because I included the Make file in the parent directory `stat159-fall2016-project1` instead of first creating the make file in the `sections` folder first and then moving it to back to the parent directory as the skeleton of our repository required). 

First, the makefile must be created. In order to do that, use the `nano` command on bash to create a text file titles `Makefile`. 

### Structure of the Makefile/Rules

A makefile is formed with **rules**  that have the following structure:

```make
target: dependencies ...
	commands
	...
```

A **rule** tells Make how to implement a set of commands in order to build a target file from source files (the dependencies).
The commands line(s) must be indented with a TAB and not with any spaces.

Multiple files can be used as dependencies, each file separated by spaces. 

In addition, one can use the **wildcard function** in order to call all the files with the same extension (.md, .txt or .pdf) in the case that there are too many files in one folder to list them out individually. This is achieved by using the asterisk sign, for example `*.md`. 

### Reproducibility 

With Make, it will be both easier to manage one’s work (if one ‘builds’ a project on remote servers) and easier for other people to reproduce it. To emphasize, it will be easier to reproduce because the code will be easy to comprehend, because all the dependencies amongst the files will be explicitly mentioned. 

---

Overall, Make is fairly straightforward tool to use and if used with `pandoc` (this tool will be discussed in detail later in this paper), several .md files can be concatenated together and then the file can be converted into either a pdf file or an html file. 

In order to learn more about the tool, I personally used the following link:
-	[Link 1]( https://github.com/unix-tools/tutorial-makefiles) 

---

## ***Git***

![Image]( https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/git-logo.png)

Git is a version control system that allows one to track changes of files over time, handling and storing these several revisions. These files can be any kind of file (eg .doc, .pdf, .xls). Git works in tandem with Github (which will be explained in detail in the following section), an online Git repository hosting service.

### Setting up Git

Perhaps the most difficulty part of Git, in my opinion, is learning its syntax in order to set up and be able to push one’s changes and track them. Learning what Git can offer in a larger scale can take time to learn. 

In order to initialize git, one must have a user name and user email address (preferably a .edu address). 

``` $ git config --global user.name "Atul Lanka"
$ git config --global user.email "atul.lanka@berkeley.edu"
```
One can run `git config --list` in order to check one’s git account settings

In order to create a local repository, there must be folder that one must be the current directory. Running the command `git init` does that. Other important commands include `git add` which adds the file to pipeline, waiting to be committed, `git commit`, which saves the files that were added permanently in the .git directory, and `git status` which allows one to see which files were untracked and the general status of the rest of the files in the repository. It is recommended that one adds a message to the commit every time `git commit` is run so that it makes it easier on the user to track changes. This is done by adding a ‘-m’ to the commit command, followed by a message in quotation marks. For example, `git commit –m “This is a commit message” `. In order to revert a change and go back to a previous version of the project, one can run the `git checkout` command to toggle between the versions. 

The .gitignore file can be of significance if one wants to ignore certain files and prevent them from being added to the repository. By creating such a file - `nano .gitignore` - one can mention inside the file what kind of files to ignore and in which folders. 

Overall, this was not a time-consuming process and I soon got the hang of the fundamentals of Git. 

### Reproduciblity
With Git, one can navigate through the several versions of the project, which facilitates the reproduction of it. Furthermore, it increases transparency and sharing, which is a mark to good science. 

The primary resource I used to learn about Git is:
-	[Link 2](http://swcarpentry.github.io/git-novice/)

---

## ***Github***

![Image](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/github-logo.png)

GitHub is a code sharing and publishing service, essentially a networking site for programmers. GitHub’s primary functionality is enables one to take a project that you don’t have write access to and modify it under your own account. GitHub is a Git repository hosting service, but it adds multiple of its own features. While Git is the command line tool, GitHub serves as a graphical interface on the Web. 

### Syncing the local and remote repositories

In order to ‘push’ one’s files onto to Github, one first has to sync the repositories. Setting up a repository on Github is fairly easy. Once, that’s done, there is a clone/download button on the top right of the page. Copying the https link, we can use that to sync the remote and the local repositories. This is done by running the command `$ git remote add origin https://github.com/atullanka/stat159.git`. To verify the sync, one can also run `git remote –v`. Once this sync is completed, the files that we committed using git can be pushed into the remote repository. This is done with the command `git push origin master` (master is the default branch, but any branch can be selected once created). `git push` copies changes from a local repository to a remote repository, while `git pull` duplicates changes from a remote repository to a local repository. 

It is obvious how important git and Github are for this project in order to create the repository. The most important thing to keep in mind, something that took a while to figure out is the sequence of commands that had to be run in order to sync the repositories and be able to look through the changes. Finally, the README file that every repository is recommended to have should include details of the repository, a type of summary in other words. 

The primary source I used for Github is: 
-	[Link 3]( http://swcarpentry.github.io/git-novice/07-github/)

---

## ***Pandoc*** 

![Image](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/pandoc-logo.png)

Pandoc is a document converter – a command line tool that uses a library for converting one format of a file to another. The more common conversions that I have experience with is markdown (.md) to pdf or to html.

The biggest advantage to pandoc is the the format is preserved for the most part so no additional edits need to be made the pandoc command is run. It’s utitilty is evident in this project as the HTML file created from Makefile for this paper also needs to be converted to a .md file, and pandoc comes into play then. 

## Using pandoc

Once pandoc is downloaded, pandoc commands can be executed by typing `pandoc` in the terminal. This follows entering an input file and then the desired output file. This is how I converted the paper.md file was converted to paper.html:

`$ pandoc paper.html –o paper.md`. The –o denotes the *output file*. 

It was relatively easy to pick up pandoc and see how useful and advantageous it is as a tool. 

Along with the lab we all did two weeks ago, my source for learning pandoc is: 

-	[Link 4]( http://pandoc.org/MANUAL.html)

--- 

## ***Markdown***

Markdown is a text-to-HTML conversion tool predominantly web writers. Markdown allows you to write using an easy-to-read, easy-to-write text, then translate it to structurally valid HTML The purpose for Markdown’s formatting syntax is to make it as readable as possible, which is its biggest advantage.

Personally, the time consuming aspect with this tool is learning the various syntax for fonts and page formatting. The syntax for various commands using Markdown can be summarized as follows:

`# Heading 1

## Subheading 1

### Secondary level header

*Italics*

**Bold**

***Bold and Italic***

[Link 1](https://nba.com/) 

![Image](https://pbs.twimg.com/profile_images/535663278131671040/b2WpDWwq.png)

### Unordered List 
 - first point 
 - second
 - third

### Ordered List
1. one
2. two 

### list with subitems
1. Food
	1. cheese 
	2. Vegetables
2. Beverages
	1. water
	2. soda
### Horizontal Rule

---

### Table

| Column 1        | Column 2           | Column3  |
| ------------- |:-------------:| -----:|
| Value 1      | right | 1 |
| Value 2     | center      |   2 |
| Value 3 | left      |    3 |

### Block quote 
> "This is a block quote"

### Code block 
```
function codeblock() {
  print("This is a code block")
}
``` 
`

The primary source I used to learn Markdown is: 

-	[Link 5]( https://guides.github.com/features/mastering-markdown/)

---
 


