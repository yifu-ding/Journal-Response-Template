

# Journal Response Template Instructions

期刊回复 latex 模板简明引导。

---

### ✍️基本信息修改

1. Journal info

封面

```latex
\usepackage[journal={IEEE Transactions on Pattern Analysis and Machine Intelligence},
			manuscript={TPAMI-yyyy-mm-idid},
			editor={Mrs. Joyce Arnold}]{reviewresponse}
```

- Fast info
  
    TPAMI 全称: IEEE Transactions on Pattern Analysis and Machine Intelligence
    
    TNNLS 全称: IEEE Transactions on Neural Networks and Learning Systems
    

脚注

```latex
% 在 review_response.tex#L107
\fancyfoot[L]{Response Letter for TPAMI-yyyy-mm-idid} 
```

1. Paper title; Author

```latex
\title{}
\author{}
```

### �� 预设命令

1. 主编、副主编（如有）、审稿人

```latex
\begin{document}
...
\editor
Response to the editor

\AssociateEditor % 如有副主编
Response to the associate editor

\reviewer
Response to the first reviewer

\reviewer
Response to the second reviewer
```

1. General Comment （不带编号）

复述一下主编、副主编或审稿人的 general comment

```latex
\begin{generalcomment}
复述一下主编、副主编或审稿人的 general comment
\end{generalcomment}
```

我们对于 general comment 的回复

```latex
\begin{revmeta}[Optional Parameter]
写我们对于 general comment 的回复
\end{revmeta}
```

1. 副主编的单条 comment （带编号）

```latex
\begin{revcommentToAssociateAuthor}
复述一下副主编的单条 comment
\end{revcommentToAssociateAuthor}
```

用`\begin{revmeta}[]` 回复

1. 审稿人的意见（带编号）

```latex
\begin{revcomment}
复述审稿人的一条意见
\end{revcomment}
```

```latex
\begin{revresponse}[Optional Parameter]
写我们的回复，在回复里可以插入 \begin{changes}
												  \end{changes}
\end{revresponse}
```

1. 插入伪代码

```latex
\begin{lstlisting}[language=Python, caption={Algorithm},frame=single]
			for i in range(1, N+1):
			# Run
			perform_operation(i)
		\end{lstlisting}
```

### �� 关键自定义部分

Cover Letter 在目录中显示为 Cover Letter 或 Preface（根据期刊要求），在`cover_letter.tex#L4` 中定义

```latex
\addcontentsline{toc}{section}{\protect\numberline{}Cover Letter}  % 显示为 Cover Letter
```

`cover_letter.tex` 中说修改部分为红字标出，新加部分为蓝字标出。根据自己的 paper 修改这句。

```latex
\textbf{In the revised manuscript, modified parts are marked in red, and newly added parts are marked in blue.}
```

配色自定义（在`reviewresponse.sty#L26-43`）

```latex
% comment box color
\definecolor{colorcommentbg}{HTML}{ededed}  % comment background
\definecolor{colorcommentframe}{HTML}{8faadc}  % comment title background 

% response text color
\definecolor{maintext}{HTML}{404D92}

%%%% change box color
\definecolor{colorchangebg}{HTML}{f9daa6} % change box sidebar
\definecolor{colorchangetext}{HTML}{000000}  % change text
```