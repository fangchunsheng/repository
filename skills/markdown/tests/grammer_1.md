
## 列表

### 无序列表

无序列表可以用星号、加号或者减号作为列表标记

>使用*号 注意*不能和内容靠在一起

* Red
* Green
* Blue

>使用加号 注意+不能和内容靠在一起

+ 你好
+ 发现在用任何一种标签的时候，如果准备使用其他标签的时候，必须得加上换行符，不然会认为是继续使用上面的标签
+ Red
+ Green
+ blue

>使用减号 注意-号也不能和内容靠在一起

- Red
- Green
- Blue

### 有序列表
有序列表使用数字接着一个英文句点
1. bird
2. McHale
3. Parish

*对于有序列表，数字对于展示实际上是没有什么影响的，只要是数字都可以*

*列表通常是放在最左边的，但是也还是可以进行缩进的，最多3个空格或者至少一个制表符*


*   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,
    viverra nec, fringilla in, laoreet vitae, risus.

*   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.
    Suspendisse id sem consectetuer libero luctus adipiscing.

### 列表项目中可以包含多个段落，每个项目下的段落必须缩进4个空格或者是一个制表符

1.  This is a list item with two paragraphs. Lorem ipsum dolor
    sit amet, consectetuer adipiscing elit. Aliquam hendrerit
    mi posuere lectus.

      Vestibulum enim wisi, viverra nec, fringilla in, laoreet
   vitae, risus. Donec sit amet nisl. Aliquam semper ipsum
   sit amet velit.

2. Suspendisse id sem consectetuer libero luctus adipiscing.


### 如果在列表中放进引用，那>就需要缩进(测试好想不缩进也可以)
*   A list item with a blockquote:
    >this is a block quoting  
    inside a list item


### 如果要放代码区块的话，该区块就需要缩进两次，也就是 8 个空格或是 2 个制表符：
*   一列表项包含一个列表区块：  
        觉得
        放进
* 合理


### 用反斜杠转义
1986\. What a great season.


## 代码区块
和程序相关的写作或是标签语言原始码通常会有已经排版好的代码区块，通常这些区块我们并不希望它以一般段落文件的方式去排版，而是照原来的样子显示，Markdown 会用 < pre> 和 < code> 标签来把代码区块包起来。要在 Markdown 中建立代码区块很简单，只要简单地缩进 4 个空格或是 1 个制表符就可以，例如，下面的输：    

这是一个普通段落：

    这是一个代码区块。

  Markdown 会转换成：

    <p>这是一个普通段落：</p>
    <pre><code>这是一个代码区块。
    </code></pre>


## 分隔线
你可以在一行中用三个以上的星号，减号，底线来建立了一个分割线，行内不能有其他东西。你也可以在星号或是减号中插入空格。西面每种写法都可以建立分割线

* * *
***
****

----
_____


##区段元素

### 链接
Markdown 支持两种形式的链接语法： 行内式和参考式两种形式。  
不管是哪一种，链接文字都是用 [方括号] 来标记。  
要建立一个行内式的链接，只要在方块括号后面紧接着圆括号并插入网址链接即可，如果你还想要加上链接的 title 文字，只要在网址后面，用双引号把 title 文字包起来即可，例如：

this is [an example](http://www.baidu.com "我是小title") inline link.  
[this link](http://www.baidu.com) has no title attribute.

参考式的链接是在链接文字的括号后面再接上另一个方括号，而在第二个方括号里面要填入用以辨识链接的标记:

This is [an example][id] reference-style link.

你也可以选择性地在两个方括号中间加上一个空格：

This is [an example] [id] reference-style link.  
接着，在文件的任意处，你可以把这个标记的链接内容定义出来:  

[id]: http://example.com/  "Optional Title Here"

#### 链接内容定义的形式为：

方括号（前面可以选择性地加上至多三个空格来缩进），里面输入链接文字  
接着一个冒号  
接着一个以上的空格或制表符  
接着链接的网址  
选择性地接着 title 内容，可以用单引号、双引号或是括弧包着  
下面这三种链接的定义都是相同：  

    [foo]: http://example.com/  "Optional Title Here"
    [foo]: http://example.com/  'Optional Title Here'
    [foo]: http://example.com/  (Optional Title Here)


## 强调

Markdown 使用星号（*）和底线（_）作为标记强调字词的符号，被 * 或 _ 包围的字词会被转成用 <em> 标签包围，用两个 * 或 _ 包起来的话，则会被转成 <strong>，例如：


*single asterisks*

_single underscores_

**double asterisks**

__double underscores__

但是如果你的 * 和 _ 两边都有空白的话，它们就只会被当成普通的符号。


## 代码
如果要标记一小段行内代码，你可以用反引号把它包起来（`），例如：

use the `printf()` function

如果要在代码区段内插入反引号，你可以用多个反引号来开启和结束代码区段：

``there is a literal backtick(`) here``


A single backtick in a code span: `` ` ``

A backtick-delimited string in a code span: `` `foo` ``


## 图片
很明显地，要在纯文字应用中设计一个「自然」的语法来插入图片是有一定难度的。

Markdown 使用一种和链接很相似的语法来标记图片，同样也允许两种样式： 行内式和参考式。

行内式的图片语法看起来像是：  

    ![Alt text](/path/to/img.jpg)  
    ![Alt text](/path/to/img.jpg "Optional title")

详细叙述如下：
* 一个惊叹号
* 接着一个方括号，里面放上图片的替代文字
* 接着一个普通方括号，里面放上图片网址，最后还可以用引号包住并加上选择性的‘title’文字

参考式的图片语法则长得像这样：  

    ![Alt text][id]

「id」是图片参考的名称，图片参考的定义方式则和连结参考一样：

    [id]: url/to/image  "Optional title attribute"
