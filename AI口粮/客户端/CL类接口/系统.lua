CopyTextToClipBoard
复制文本到剪贴板

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数复制文本到剪贴板。

语法
Luacopy 复制
CL:CopyTextToClipBoard( 
    _TextString
)

参数
_TextString

string

 
文本内容。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:CopyTextToClipBoard("输入被复制的文本。")
下一篇:分割字符串>
CutString
分割字符串

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数按指定的字体和宽度，将字符串分割为两段。

note_icon 备注
LuaRet[1]和LuaRet[2]中分别保存分割后的字符串。

语法
Luacopy 复制
CL:CutString( 
    _FontName,
    _Text,
    _Width
)

参数
_FontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

_Text

string

 
要分割的字符串

_Width

unsigned long

 
分割宽度（与字体大小相关）

单位为像素（px）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:CutString("system","12345",20) then
    dbg(LuaRet[1]..","..LuaRet[2])
else
    dbg("分割失败")	
end

--控制台将输出：“12,345”。
<上一篇:复制文本到剪贴板下一篇:获取文本的像素宽度>
GetRichEditFontStrWidth
获取文本的像素宽度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取一段文本的像素宽度。

语法
Luacopy 复制
CL:GetRichEditFontStrWidth( 
    _FontName,
    _TextInfo
)

参数
_FontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

_TextInfo

string

 
文本字符串

返回值
int

 
文本字符串的宽度

单位为像素（px）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local text_width = CL:GetRichEditFontStrWidth("system","这是一个测试文本") 
dbg("文本的宽度为："..text_width.."px")

--控制台将会输出“文本的宽度为：44px”。
<上一篇:分割字符串下一篇:获取剪切板中的文本>
GetTextToClipBoard
获取剪切板中的文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取剪切板中的文本。

语法
Luacopy 复制
CL:GetTextToClipBoard()

参数
无

 
返回值
string

 
剪切板中的文本。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local copied_text = CL:GetTextToClipBoard() --获取剪切板中文本
dbg(copied_text)

--此示例代码运行成功如下图所示。

GetTextToClipBoard
<上一篇:获取文本的像素宽度下一篇:转换时间戳为指定格式文本>
GetTimeStrWithFormat
转换时间戳为指定格式文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数转换时间戳为指定格式文本。

语法
Luacopy 复制
CL:GetTimeStrWithFormat( 
    _TimeStr,
    _Format
)

参数
_TimeStr

string

 
时间戳。

_Format

string

 
格式，例如："%Y-%m-%d"

返回值
string

 
格式化的时间字符串。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local createTime = CL:GetTimeStrWithFormat(tostring(os.time()), "%Y-%m-%d") --获取当前日期
dbg("当前日期为："..createTime)
<上一篇:获取剪切板中的文本下一篇:设置剪切板文本内容>
SetPasteboardText
设置剪切板文本内容

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置剪切板文本内容。

语法
Luacopy 复制
CL:SetPasteboardText( 
    _Text
)

参数
_Text

string

 
文本内容

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPasteboardText("这是设置的文本内容")
<上一篇:转换时间戳为指定格式文本下一篇:设置多功能编辑框超链接文字的颜色>
SetSystemColor
设置多功能编辑框超链接文字的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-01-30 00:00:00
此函数设置多功能编辑框超链接文字的颜色。

此函数为全局设置，如需设置单个多功能编辑框，请使用接口RichEditSetLinkColor。

语法
Luacopy 复制
CL:SetSystemColor( 
    _Flag,
    _ColorStr
)

参数
_Flag

int

 
设置类型

1选中链接的颜色（即高亮的颜色）

2可选择字符串链接的颜色（即SELECT标签中的文字）

3标题链接的颜色（即TITLE标签中的文字）

4名字链接的颜色（即NAMELINK标签中的文字）

5普通链接的颜色（即LINK标签中的文字）

6NPC链接的颜色（即NPCLINK标签中的文字）

7物品链接的颜色（即ITEMLINK标签中的文字）

8UI链接的颜色（即UILINK标签中的文字）

9关闭链接的颜色（即CLOSE标签中的文字）

_ColorStr

string

 
颜色字符串

具体请参见颜色字符串页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
CL:SetSystemColor(2,"#FFFFE0") --全局修改SELECT标签中的文字的颜色

local _GUIHandle = GUI:RichEditCreate(_Parent,"TitleDes", 420,180, 100, 50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle,"#SELECT#多功能编辑框#SELECTEND#") --设置多功能编辑框的文字
end

--未全局设置前的效果如下图所示。

SetSystemColor_2.png

--此示例代码运行后效果如下图所示。

SetSystemColor.png
<上一篇:设置剪切板文本内容下一篇:在屏幕的给定位置绘制一段文字>
TextOut
在屏幕的给定位置绘制一段文字

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-01-26 00:00:00
此函数作用是在屏幕的给定位置绘制一段文字。

语法
Luacopy 复制
CL:TextOut(
    _XPos,
    _YPos,
    _Text,
    long
)
参数
_XPos

int

 
X坐标

_YPos

int

 
Y坐标

_Text

string

 
文本内容

unsigned long

_Color

 
文本颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置多功能编辑框超链接文字的颜色
Add
求两数的和

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个数字相加，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Add( 
    _Data1,
    _Data2
)

参数
_Data1

int

 
左边数字

_Data2

int

 
右边数字

返回值
int

 
计算结果

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 =CL:Add(10,2) --求10+2的结果
dbg("计算结果为"..t1)

--此示例代码运行成功如下图所示。

Add.png
下一篇:求两数的商>
Div
求两数的商

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个数字相除，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Div( 
    _Data1,
    _Data2
)

参数
_Data1

int

 
左边数字

_Data2

int

 
右边数字

返回值
int

 
计算结果

caution_icon 注意
如果参数_Data2的值为0，则返回计算结果为0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 =CL:Div(10,2) --求10/2的结果
dbg("计算结果为"..t1)

--此示例代码运行成功如下图所示。

Div.png
<上一篇:求两数的和下一篇:求两个字符串代表的数字的商>
Divided
求两个字符串代表的数字的商

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个字符串代表的数字相除，并将计算结果转换为字符串返回。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Divided( 
    _Left,
    _Right
)

参数
_Left

string

 
左边字符串

_Right

string

 
右边字符串

返回值
string

 
计算结果（为字符串格式）

caution_icon 注意
如果参数_Right字符串为0，则返回计算结果为0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str1 = tostring(1000001) --数字1000001转换为字符串1000001
local str2 = tostring(2000002) --数字2000002转换为字符串2000002
local div = CL:Divided(str2,str1) --求2000002除以1000001的结果
dbg("计算结果为"..div)

--此示例代码运行成功如下图所示。

Divided.png
<上一篇:求两数的商下一篇:比较大小>
Less
比较大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数判断第一个字符串代表的数字是否小于第二个字符串代表的数字。

语法
Luacopy 复制
CL:Less( 
    _Left,
    _Right
)

参数
_Left

string

 
第一个字符串

_Right

string

 
第二个字符串

返回值
bool

 
判断结果

true第一个字符串代表的数字小于第二个字符串代表的数字

false第一个字符串代表的数字等于或大于第二个字符串代表的数字

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str1 = tostring(1000001) --数字1000001转换为字符串1000001
local str2 = tostring(2000002) --数字2000002转换为字符串2000002
if CL:Less(str2,str1) then --判断str2代表的数字是否小于str1代表的数字
    dbg("小于")
else
    dbg("等于或大于")
end

--此示例代码运行成功如下图所示。

Less.png
<上一篇:求两个字符串代表的数字的商下一篇:求两个字符串代表的数字的差>
Minus
求两个字符串代表的数字的差

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个字符串代表的数字相减，并将计算结果转换为字符串返回。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Minus( 
    _Left,
    _Right
)

参数
_Left

string

 
左边字符串

_Right

string

 
右边字符串

返回值
string

 
计算结果（为字符串格式）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str1 = tostring(1000001) --数字1000001转换为字符串1000001
local str2 = tostring(2000002) --数字2000002转换为字符串2000002
local minus = CL:Minus(str2,str1) --求str2减去str1的结果
dbg("计算结果为"..minus)

--此示例代码运行成功如下图所示。

Minus.png
<上一篇:比较大小下一篇:求两数的乘积>
Mul
求两数的乘积

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个数字相乘，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Mul( 
    _Data1,
    _Data2
)

参数
_Data1

int

 
左边数字

_Data2

int

 
右边数字

返回值
int

 
计算结果

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 =CL:Mul(10,2) --求10*2的结果
dbg("计算结果为"..t1)

--此示例代码运行成功如下图所示。

Mul.png
<上一篇:求两个字符串代表的数字的差下一篇:求两个字符串代表的数字的积>
Multiply
求两个字符串代表的数字的积

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个字符串代表的数字相乘，并将计算结果转换为字符串返回。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Multiply( 
    _Left,
    _Right
)

参数
_Left

string

 
左边字符串

_Right

string

 
右边字符串

返回值
string

 
计算结果（为字符串格式）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str1 = tostring(1000001) --数字1000001转换为字符串1000001
local str2 = tostring(2000002) --数字2000002转换为字符串2000002
local mult = CL:Multiply(str2,str1) --计算str2乘以str1的结果
dbg(""..mult)

--此示例代码运行成功如下图所示。

Multiply.png
<上一篇:求两数的乘积下一篇:求两个字符串代表的数字的和>
Plus
求两个字符串代表的数字的和

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个字符串代表的数字相加，并将计算结果转换为字符串返回。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Plus( 
    _Left,
    _Right
)

参数
_Left

string

 
左边字符串

_Right

string

 
右边字符串

返回值
string

 
计算结果（为字符串格式）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str1 = tostring(1000001) --数字1000001转换为字符串1000001
local str2 = tostring(2000002) --数字2000002转换为字符串2000002
local sum = CL:Plus(str1,str2) --求str1加上str2的结果
dbg("计算结果为"..sum)

--此示例代码运行成功如下图所示。

Plus.png
<上一篇:求两个字符串代表的数字的积下一篇:求两数的差>
Sub
求两数的差

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将两个数字相减，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:Sub( 
    _Data1,
    _Data2
)

参数
_Data1

int

 
左边数字

_Data2

int

 
右边数字

返回值
int

 
计算结果

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 =CL:Sub(10,2) --求10-2的结果
dbg("计算结果为"..t1)

--此示例代码运行成功如下图所示。

UIntSub.png
<上一篇:求两个字符串代表的数字的和下一篇:求两数的和（非负数）>
UIntAdd
求两数的和（非负数）

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数将两个数字（非负数）相加，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:UIntAdd( 
    _Data1,
    _Data2
)

参数
_Data1

unsigned int

 
左边数字（非负数）

_Data2

unsigned int

 
右边数字（非负数）

返回值
unsigned int

 
计算结果

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 = CL:UIntAdd(10,2) --求10+2的结果
dbg("计算结果为"..t1)

--此示例代码运行成功如下图所示。

Add.png
<上一篇:求两数的差下一篇:求两数的商（非负数）>
UIntDiv
求两数的商（非负数）

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数将两个数字（非负数）相除，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:UIntDiv( 
    _Data1,
    _Data2
)

参数
_Data1

unsigned int

 
左边数字（非负数）

_Data2

unsigned int

 
右边数字（非负数）

返回值
unsigned int

 
计算结果

caution_icon 注意
如果参数_Data2的值为0，则返回计算结果为0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 = CL:UIntDiv(10,2) --求10/2的结果
dbg("计算结果为"..t1)

--此示例代码运行成功如下图所示。

Div.png
<上一篇:求两数的和（非负数）下一篇:求两数的积（非负数）>
UIntMul
求两数的积（非负数）

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数将两个数字（非负数）相乘，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:UIntMul( 
    _Data1,
    _Data2
)

参数
_Data1

unsigned int

 
左边数字（非负数）

_Data2

unsigned int

 
右边数字（非负数）

返回值
unsigned int

 
计算结果

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 = CL:UIntMul(10,2) --求10*2的结果
dbg("计算结果为"..t1) 

--此示例代码运行成功如下图所示。

Mul.png
<上一篇:求两数的商（非负数）下一篇:求两数的差（非负数）>
UIntSub
求两数的差（非负数）

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数将两个数字（非负数）相减，并返回计算结果。

note_icon 备注
此接口只返回计算结果的整数部分。

语法
Luacopy 复制
CL:UIntSub( 
    _Data1,
    _Data2
)

参数
_Data1

unsigned int

 
左边数字（非负数）

_Data2

unsigned int

 
右边数字（非负数）

返回值
unsigned int

 
计算结果

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 = CL:UIntSub(10,2) --求10-2的结果
dbg("计算结果为"..t1)

--此示例代码运行成功如下图所示。

UIntSub.png
<上一篇:求两数的积（非负数）
GBK2UTF8
GBK转UTF8编码

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将GBK编码转为UTF8编码。

语法
Luacopy 复制
CL:GBK2UTF8( 
    _GBKString
)

参数
_GBKString

string

 
GBK编码的字符串。

返回值
string

 
UTF8编码的字符串。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:十六进制转十进制数值>
HexToInt
十六进制转十进制数值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-05-12 00:00:00
此函数作用为将十六进制转换为十进制数值。

语法
Luacopy 复制
CL:HexToInt( 
    _HexStr
)

参数
_HexStr

string

 
要转换的数值（为字符串格式）

传入的字符串应以0x或者0X开头（表示十六进制），否则会转换失败。

返回值
int

 
1转换成功

0转换失败

note_icon 备注
此函数返回转换成功或失败。如转换成功，获取的十进制整型数值（类型：int）存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:HexToInt("0x4F")
dbg(""..LuaRet)

--控制台将输出：“79”。
<上一篇:GBK转UTF8编码下一篇:UTF8转GBK编码>
UTF82GBK
UTF8转GBK编码

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将UTF8编码转换为GBK编码。

语法
Luacopy 复制
CL:UTF82GBK( 
    _UTF8String
)

参数
_UTF8String

string

 
UTF8编码的字符串。

返回值
string

 
GBK编码的字符串。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:十六进制转十进制数值下一篇:JSON字符串转换成Lua对象>
手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

json.decode
JSON字符串转换成Lua对象

更新时间：2023-05-12 00:00:00
此函数将JSON格式的字符串转换成Lua对象，对象可以为数字、字符串或表。

语法
Luacopy 复制
json.decode(
    strJson
)

参数
strJson

string

 
JSON字符串

返回值
object

 Lua对象
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:UTF8转GBK编码下一篇:Lua对象转换为JSON字符串>
手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

json.encode
Lua对象转换为JSON字符串

更新时间：2023-05-12 00:00:00
此函数将Lua对象转换成JSON格式的字符串，对象可以是数值、字符串或表。

语法
Luacopy 复制
json.encode(
    oObject
)

参数
oObject

object

 
任意Lua对象

返回值
string

 JSON字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:JSON字符串转换成Lua对象
GetColor
获取颜色值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将字符串形式的十六进制颜色值或者系统定义的颜色转换为十进制数字。

语法
Luacopy 复制
CL:GetColor( 
    _ColorStr
)

参数
_ColorStr

string

 
颜色值字符串。

支持两种形式:

十六进制颜色值：#RRGGBB
系统定义颜色：WHITE、RED、GREENG、BLUE等
详细请参见颜色字符串。
返回值
int

 
最终计算的十进制颜色值数字。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local color_value = CL:GetColor("WHITE") --白色
dbg(""..color_value)

--控制台将输出：“4293848814”。
下一篇:设置颜色表颜色>
SetColorTableData
设置颜色表颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置颜色表颜色。程序内部会引用颜色表中的颜色。

语法
Luacopy 复制
CL:SetColorTableData( 
    _Idx,
    _r,
    _g,
    _b,
    _a
)

参数
_Idx

int

 
颜色表中的索引号。

请参见系统颜色表定义。

_r

int

 
红色的颜色值。

范围为0~255。

_g

int

 
绿色的颜色值。

范围为0~255。

_b

int

 
蓝色的颜色值。

范围为0~255。

_a

int

 
颜色的透明度。

范围为0~255。0表示全透明，255表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetColorTableData(0,255,255,255,255) --设置COLOR_WHITE的RGBA值

--修改系统提示
CL:SetColorTableData(SYS_TEXTCOLOR2_INDEX, 255, 0, 255, 255);--系统消息文本颜色
CL:SetColorTableData(SYS_FILLCOLOR_INDEX, 0, 255, 255, 255);--系统消息背景颜色

--修改物品出现的极品提示
CL:SetColorTableData(ITEM_HINT_TEXTCOLOR_INDEX, 255, 0, 255, 255);--物品出现消息文本颜色
CL:SetColorTableData(ITEM_HINT_BACKCOLOR_INDEX, 0, 255, 255, 255);--物品出现消息背景颜色
<上一篇:获取颜色值
GetFontStrHeight
获取字体高度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-08-26 00:00:00
此函数获取字体高度。

note_icon 备注
该高度也是使用该字体的字符串行高。

语法
Luacopy 复制
CL:GetFontStrHeight( 
    _FontName
)

参数
_FontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

返回值
int

 
指定字体的高度

单位为像素（px）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
dbg("字体高度："..CL:GetFontStrHeight("system")) --system代表宋体

--控制台将输出：“字体高度：20”。
下一篇:获取指定字体的字符串宽度>
GetFontStrWidth
获取指定字体的字符串宽度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-08-26 00:00:00
此函数获取指定字体的字符串宽度。

语法
Luacopy 复制
CL:GetFontStrWidth( 
    _FontName,
    _TextInfo
)

参数
_FontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

_TextInfo

string

 
指定的字符串

返回值
int

 
字符串的宽度

单位为像素（px）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t = CL:GetFontStrWidth("system","测试") --system代表宋体
dbg("宽度为："..t.."px")

控制台将输出：“宽度为：24px”。
<上一篇:获取字体高度下一篇:获取指定场合下使用的字体>
GetSpecificFont
获取指定场合下使用的字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2026-02-14 12:55:00
此函数获取指定场合下使用的字体。

参考 SetSpecificFont

语法
Luacopy 复制
CL:GetSpecificFont(
    type
)
参数
type

string

 
指定场合

scene_item场景中所有物品的名字

返回值
string

 
设置的字体

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:SetSpecificFont("scene_item", "SIMLI18") --设置字体
dbg("场景中物品字体为"..CL:GetSpecificFont("scene_item")) --获取字体

--此示例代码运行前效果如下图所示。

SetSpecificFont.png

--此示例代码运行后效果如下图所示，同时控制台中还会打印相关内容。

SetSpecificFont_2.png

GetSpecificFont.png
<上一篇:获取指定字体的字符串宽度下一篇:设置当前使用的字体>
SetCurFont
设置当前使用的字体

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2022-08-26 00:00:00
此函数设置当前使用的字体。

note_icon 备注
程序中部分区域或控件的字体已固定，设置将不会生效。

语法
Luacopy 复制
CL:SetCurFont( 
    _FontName
)

参数
_FontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetCurFont("SIMLI18")  --设置隶书

--设置效果如下图。

SetCurFont
<上一篇:获取指定场合下使用的字体下一篇:设置指定场合下使用的字体>
SetSpecificFont
设置指定场合下使用的字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2026-02-14 12:55:00
此函数作用为设置指定场合下使用的字体。

参考 GetSpecificFont

语法
Luacopy 复制
CL:SetSpecificFont(
    type,
    font
)
参数
type

string

 
指定场合

scene_item场景中所有物品的名字

font

string

 
要设置的字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:SetSpecificFont("scene_item", "SIMLI18") --设置字体
dbg("场景中物品字体为"..CL:GetSpecificFont("scene_item")) --获取字体

--此示例代码运行前效果如下图所示。

SetSpecificFont.png

--此示例代码运行后效果如下图所示，同时控制台中还会打印相关内容。

SetSpecificFont_2.png

GetSpecificFont.png
<上一篇:设置当前使用的字体
Log
打印字符串到日志

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数打印字符串到日志。

语法
Luacopy 复制
CL:Log( 
    _LogStr
)

参数
_LogStr

string

 
要打印的内容。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:Log("日志内容")

--控制台将输出：“日志内容”。
下一篇:在游戏中显示一条消息>
ShowTypeMsg
在游戏中显示一条消息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在游戏中显示一条消息。

语法
Luacopy 复制
CL:ShowTypeMsg( 
    _MsgType,
    _MsgStr
)

参数
_MsgType

int

 
消息显示类型：

1聊天框中显示，字体颜色为白色。

2系统消息。

3弹出消息框显示。

4聊天框中显示，字体颜色使用自定义颜色，自定义颜色默认白色，可以通过InitChannelTextColor接口更改

_MsgStr

string

 
消息内容

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ShowTypeMsg(3,"level is 49")

此示例代码执行成功结果如下图所示的。

ShowTypeMsg
<上一篇:打印字符串到日志
AddDelayTask
添加一个定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-12 00:00:00
此函数添加一个定时器，定时执行回调函数或者Lua字符串脚本。

语法
Luacopy 复制
CL:AddDelayTask( 
    _LuaString,
    _Elapse,
    _Count
)

参数
_LuaString

string

 
回调函数名或者Lua字符串脚本

_Elapse

unsigned long

 
执行的间隔时间

单位是毫秒（ms）

_Count

int

 
指定回调次数

0代表无次数限制

达到回调次数后，程序自动删除该定时器。

返回值
unsigned int

 
定时器的ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--定时执行回调函数
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次

function Timer()
    dbg("定时器")
end

--此示例代码运行成功如下图所示。

AddDelayTask

--定时执行Lua字符串脚本
CL:AddDelayTask("UI:Lua_Log(\"hello world\")", 1000, 10)

--此示例代码运行成功如下图所示。

AddDelayTask_2.png
下一篇:删除指定的定时器>
DelDelayTask
删除指定的定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数删除指定的定时器。

语法
Luacopy 复制
CL:DelDelayTask( 
    _ID
)

参数
_ID

unsigned long

 
定时器的ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
CL:DelDelayTask(id)

function Timer()
    dbg("定时器")
end

--示例代码运行后，可以看到无打印输出，说明定时器已被删除。
<上一篇:添加一个定时器下一篇:删除定时器自定义参数>
TaskDelParam
删除定时器自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数删除定时器自定义参数。

语法
Luacopy 复制
CL:TaskDelParam( 
    _ID,
    _Key
)

参数
_ID

unsigned long

 
定时器的ID。

_Key

string

 
自定义参数的索引名。

索引名是一个对值进行索引的唯一字符串。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
CL:TaskSetParam(id,"key1","v1") --添加上下文参数的key和值
CL:TaskDelParam(id,"key1") --删除上下文参数的key
<上一篇:删除指定的定时器下一篇:获取定时器的回调总次数>
TaskGetCount
获取定时器的回调总次数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取定时器的回调总次数。

语法
Luacopy 复制
CL:TaskGetCount( 
    _ID
)

参数
_ID

unsigned int

 
定时器的ID。

返回值
unsigned int

 
定时器的回调总次数。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
CL:TaskSetCount(id,3) --修改定时器的回调总次数为3次
local count = CL:TaskGetCount(id) --获取定时器的回调总次数

dbg("回调次数:"..count)
function Timer()
    dbg("定时器")
end

--此示例代码运行成功如下图所示。

TaskSetCount

<上一篇:删除定时器自定义参数下一篇:获取当前运行的定时器ID>
TaskGetCurrentTaskID
获取当前运行的定时器ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取当前运行的定时器ID。

语法
Luacopy 复制
CL:TaskGetCurrentTaskID()

参数
无

返回值
unsigned int

 
当前定时器ID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CommonExample = {}

function CommonExample.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _CommonHandle = 0
    local _color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 0, 0) }

    _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建窗口
    _Parent = _GUIHandle
    GUI:WndSetMoveWithLBM(_Parent) --设置窗口可用鼠标左键进行拖动
    GUI:WndSetIsESCClose(_Parent,true) --设置窗口可按ESC键关闭

    local list = {}
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment2",0,119,87,66,66) --创建物品框
    if CL:GetEquimentItemDataList() then --获取自身装备句柄列表
        list = LuaRet
    end
 
    local guidList = {}
    if UI:Lua_GetPlayerSelfEquipData() then --获取自身装备的GUID列表
         guidList = LuaRet
    end
    
    local Thandle = CL:GetItemTemplateHandleByGUID(guidList[1]) --获取物品的模板句柄
    local Ehandle = CL:GetItemEntityHandleByGUID(guidList[1]) --获取物品的实体句柄
    local id =0
    local keyhandle = CL:GetItemTemplateHandleByKeyName("48阶武器")
    
    if CL:GetPlayerSelfSkillList() then
        local list = LuaRet
    end
    
    local skill = CL:GetSkillTemplateHandleByID(64)
    
    AddMagicToScreen(700,300,3001200000,"GUI_Example",1000,nil,nil)
    RDItemCtrlSetGUIDataPropByGUID(_Parent,"Equiment2",guidList[1])
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,225,0) --创建按钮
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OnExit")
    end
    CommonExample.id = CL:AddDelayTask("Timer()", 1000, 10) --添加定时器
end

CommonExample.main()

function Timer()
    dbg("当前正在运行的定时器ID："..CL:TaskGetCurrentTaskID()) --获取定时器ID
end

function OnExit(_Handle)
   local currentTimes = CL:TaskGetCurrentTimes(CommonExample.id) --获取定时器执行次数
   dbg("当前正在运行的定时器回调次数："..currentTimes) 
end
<上一篇:获取定时器的回调总次数下一篇:获取定时器的当前回调次数>
TaskGetCurrentTimes
获取定时器的当前回调次数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取定时器的当前回调次数。

即从添加定时器开始到调用时刻所回调的脚本的次数。

语法
Luacopy 复制
CL:TaskGetCurrentTimes( 
    _ID
)

参数
_ID

unsigned long

 
定时器ID

返回值
unsigned int

 
给定定时器的当前回调次数

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CommonExample = {}

function CommonExample.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _CommonHandle = 0
    local _color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 0, 0) }

    _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建窗口
    _Parent = _GUIHandle
    GUI:WndSetMoveWithLBM(_Parent) --设置窗口可用鼠标左键进行拖动
    GUI:WndSetIsESCClose(_Parent,true) --设置窗口可按ESC键关闭

    local list = {}
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment2",0,119,87,66,66) --创建物品框
    if CL:GetEquimentItemDataList() then --获取自身装备句柄列表
        list = LuaRet
    end
 
    local guidList = {}
    if UI:Lua_GetPlayerSelfEquipData() then --获取自身装备的GUID列表
         guidList = LuaRet
    end
    
    local Thandle = CL:GetItemTemplateHandleByGUID(guidList[1]) --获取物品的模板句柄
    local Ehandle = CL:GetItemEntityHandleByGUID(guidList[1]) --获取物品的实体句柄
    local id =0
    local keyhandle = CL:GetItemTemplateHandleByKeyName("48阶武器")
    
    if CL:GetPlayerSelfSkillList() then
        local list = LuaRet
    end
    
    local skill = CL:GetSkillTemplateHandleByID(64)
    
    AddMagicToScreen(700,300,3001200000,"GUI_Example",1000,nil,nil)
    RDItemCtrlSetGUIDataPropByGUID(_Parent,"Equiment2",guidList[1])
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,225,0) --创建按钮
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OnExit")
    end
    CommonExample.id = CL:AddDelayTask("Timer()", 1000, 10) --添加定时器
end

CommonExample.main()

function Timer()
    dbg("当前正在运行的定时器ID："..CL:TaskGetCurrentTaskID()) --获取定时器ID
end    

function OnExit(_Handle)
   local currentTimes = CL:TaskGetCurrentTimes(CommonExample.id) --获取定时器执行次数
   dbg("当前正在运行的定时器回调次数："..currentTimes) 
end

--此示例代码运行成功如下图所示。

TaskGetCurrentTimes
<上一篇:获取当前运行的定时器ID下一篇:获取定时器回调时间间隔>
TaskGetElapse
获取定时器回调时间间隔

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数为获取定时器的回调时间间隔。

语法
Luacopy 复制
CL:TaskGetElapse( 
    _ID
)

参数
_ID

unsigned int

 
定时器的ID。

返回值
unsigned int

 
当前定时器时间间隔，单位为毫秒（ms）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
CL:TaskSetCount(id,3) --修改定时器的回调总次数为3次
local currentElapse = CL:TaskGetElapse(id) --获取定时器的回调时间间隔
dbg("当前正在运行的定时器回调间隔："..currentElapse) 

function Timer()
    dbg("定时器")
end

--此示例代码运行成功如下图所示。

TaskGetElapse
<上一篇:获取定时器的当前回调次数下一篇:获取定时器自定义参数>
TaskGetParam
获取定时器自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取定时器自定义参数。

语法
Luacopy 复制
CL:TaskGetParam( 
    _ID,
    _Key
)

参数
_ID

unsigned long

 
定时器的ID。

_Key

string

 
自定义参数的索引名。

索引名是一个对值进行索引的唯一字符串。

返回值
string

 
自定义参数的值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
dbg("定时器id:"..id)
CL:TaskSetParam(id,"key1","v1") --添加自定义参数key和参数的值
local value = CL:TaskGetParam(id,"key1")
dbg("值："..value)
<上一篇:获取定时器回调时间间隔下一篇:修改定时器回调总次数>
TaskSetCount
修改定时器回调总次数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数修改定时器回调总次数。

语法
Luacopy 复制
CL:TaskSetCount( 
    _ID,
    _Count
)

参数
_ID

unsigned long

 
定时器的ID。

_Count

unsigned long

 
新的回调总次数。

若从开始计时至修改时的已回调的次数超过新指定的次数，则程序自动删除该定时器。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
CL:TaskSetCount(id,3) --修改定时器的回调总次数为3次
local count = CL:TaskGetCount(id) --获取定时器的回调总次数
dbg("回调次数:"..count)

--此示例代码运行成功如下图所示。

TaskSetCount
<上一篇:获取定时器自定义参数下一篇:修改定时器回调时间间隔>
TaskSetElapse
修改定时器回调时间间隔

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数修改定时器的回调时间间隔。

语法
Luacopy 复制
CL:TaskSetElapse( 
    _ID,
    _Elapse
)

参数
_ID

unsigned long

 
定时器的ID。

_Elapse

unsigned long

 
新的回调时间间隔，单位为毫秒（ms）。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
if CL:TaskSetElapse(id,2000) then --修改定时器的回调时间间隔为2000毫秒
    dbg("修改成功")	
end
local currentElapse = CL:TaskGetElapse(id) --获取定时器的回调时间间隔
dbg("当前正在运行的定时器回调间隔："..currentElapse)

--此示例代码运行成功如下图所示。

TaskSetElapse
<上一篇:修改定时器回调总次数下一篇:添加定时器自定义参数>
TaskSetParam
添加定时器自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数添加定时器自定义参数。

语法
Luacopy 复制
CL:TaskSetParam( 
    _ID,
    _Key,
    _Value
)

参数
_ID

unsigned long

 
定时器的ID。

_Key

string

 
自定义参数的索引名。

索引名是一个对值进行索引的唯一字符串。

_Value

string

 
添加自定义参数的值，用来保存上下文参数。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
CL:TaskSetParam(id,"key1","v1") --添加自定义参数key和参数的值
function Timer()
    dbg("定时器")
end	
<上一篇:修改定时器回调时间间隔下一篇:修改定时器的回调函数>
TaskSetScript
修改定时器的回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数修改定时器的回调函数。

语法
Luacopy 复制
CL:TaskSetScript( 
    _ID,
    _Script
)

参数
_ID

unsigned long

 
定时器的ID。

_Script

string

 
新的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 10) --添加一个定时器回调Timer()函数，间隔时间1000毫秒，回调10次
if CL:TaskSetScript(id,"newTimer()") then
    dbg("修改成功")	
end

function newTimer()
    dbg("新的定时器")
end

--此示例代码运行成功如下图所示。

TaskSetScript
<上一篇:添加定时器自定义参数
DrawImage
在屏幕上绘制图片

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-11-04 00:00:00
此函数在屏幕上指定的位置绘制一张图片。

语法
Luacopy 复制
CL:DrawImage( 
    _XPos,
    _YPos,
    _ImageID
)

参数
_XPos

int

 
屏幕上的X坐标。

_YPos

int

 
屏幕上的Y坐标。

_ImageID

int

 
图片资源ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerStatus = CL:GetPlayerStatus() --获取玩家角色的状态
if _PlayerStatus == 3 then  --如果状态为死亡
    local _DeviceWidth = CL:GetScreenWidth() --获取设备屏幕宽度
    local _DeviceHeight = CL:GetScreenHeight() --获取设备屏幕高度
    local _TextureWidth = CL:GetTextureWidth(1900190018) --获取图片资源高度
    dbg("_TextureWidth:".._TextureWidth)
    if _TextureWidth > 0 then 
        CL:DrawImage((_DeviceWidth - _TextureWidth) / 2, _DeviceHeight * 0.66, 1900190018) --显示图片资源
    end
end

--示例代码展示玩家角色被攻击死亡后，显示提示复活操作的图片资源，效果如下图。

DrawImage
下一篇:获取图片的纹理高度>
GetTextureHeight
获取图片的纹理高度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取给定图片的纹理高度。

caution_icon注意
纹理高度指的是图片的最大高度。

语法
Luacopy 复制
CL:GetTextureHeight( 
    _ImageID
)

参数
_ImageID

unsigned int

 
图片资源ID。

返回值
int

 
纹理高度。单位为像素（px）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 = CL:GetTextureHeight(1900000003) --获取图片纹理高度
dbg(""..t1)

--控制台将输出：“448”。
<上一篇:在屏幕上绘制图片下一篇:获取图片的纹理宽度>
GetTextureWidth
获取图片的纹理宽度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取给定图片的纹理宽度。

caution_icon注意
纹理宽度指的是图片的最大宽度。

语法
Luacopy 复制
CL:GetTextureWidth( 
    _ImageID
)

参数
_ImageID

unsigned int

 
图片资源ID。

返回值
int

 
纹理宽度。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t1 = CL:GetTextureWidth(1900000003) --获取图片纹理宽度
dbg(""..t1)

--控制台将输出：“252”。
<上一篇:获取图片的纹理高度下一篇:判断图片是否存在>
IsTextureExists
判断图片是否存在

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数判断指定ID的图片资源是否存在。

语法
Luacopy 复制
CL:IsTextureExists( 
    _ImageID
)

参数
_ImageID

unsigned int

 
图片资源ID

返回值
bool

 
true存在

false不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:IsTextureExists(1900000003) then
    dbg("图片资源存在")
else
    dbg("图片资源不存在")
end

--控制台将输出“图片资源存在”。
<上一篇:获取图片的纹理宽度
GetSoundSetting
获取游戏声音设置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取游戏声音设置。

语法
Luacopy 复制
CL:GetSoundSetting()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量LuaRet中。

LuaRet[1]是否静音；

LuaRet[2]背景音乐是否静音；

LuaRet[3]音效是否静音；

LuaRet[4]是否仅最小化时静音；

LuaRet[5]背景音乐音量；

LuaRet[6]音效音量。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetSoundSetting() then
    dbg(LuaRet[1]) --获取是否静音
end
下一篇:设置是否静音>
OnSoundMute
设置是否静音

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数执行设置或取消静音的操作。

当静音时，同时可设置指定编辑框的文本为X。当取消静音时，隐藏指定的编辑框。

语法
Luacopy 复制
CL:OnSoundMute( 
    _HandleID
)

参数
_HandleID

int

 
编辑框的句柄。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:EditCreate(_Parent,"TestMute",185,189,100,30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"测试静音")
    CL:OnSoundMute(_GUIHandle)
end
<上一篇:获取游戏声音设置下一篇:播放声音>
Play2DSound
播放声音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-01-10 00:00:00
此函数播放指定类型的声音。

caution_icon警告
PlaySoundEx、StopSoundEx的唯一标识id与Play2DSound、Play3DSound、StopSoundPlay的soundID不同，不能混用。

语法
Luacopy 复制
CL:Play2DSound( 
    _SoundName,
    _Type
)

参数
_SoundName

string

 
声音资源包中的文件路径

_Type

int

 
声音的类型

点击声音类型了解更多信息

返回值
手游：

 
无返回值

 
端游：

int

 
执行成功则返回声音的播放ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--需在手游45度测试区中进行测试
CL:Play2DSound("Sound/UI/baoshixiangqian", SOUNDEFFECTTYPE_2D_EVT)
<上一篇:设置是否静音下一篇:播放3D音效>
Play3DSound
播放3D音效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-01-10 00:00:00
此函数播放3D音效。

caution_icon警告
PlaySoundEx、StopSoundEx的唯一标识id与Play2DSound、Play3DSound、StopSoundPlay的soundID不同，不能混用。

语法
Luacopy 复制
CL:Play3DSound( 
    _SoundName,
    _LisernerPosX,
    _LisernerPosY,
    _Loop
)

参数
_SoundName

string

 
声音资源包中的文件路径。

_LisernerPosX

int

 
场景横坐标

_LisernerPosY

int

 
场景纵坐标

_Loop

bool

 
是否循环播放。

返回值
int

 
执行成功返回声音ID，执行失败则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--需在手游45度测试区中进行测试
local result = CL:Play3DSound("Sound/UI/baoshixiangqian", 100, 100, true)
dbg("Sound ID:"..result)
<上一篇:播放声音下一篇:播放声音文件>
PlaySoundEx
播放声音文件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-01-10 00:00:00
此函数播放指定URL地址的声音文件。

caution_icon警告
PlaySoundEx、StopSoundEx的唯一标识id与Play2DSound、Play3DSound、StopSoundPlay的soundID不同，不能混用。

语法
Luacopy 复制
CL:PlaySoundEx( 
    _FileName,
    _Url,
    _Elapse
)

参数
_FileName

string

 
文件名

例如：notice.mp3

_Url

string

 
声音文件的下载地址

例如：https://XXXXXXX/notice.mp3

_Elapse

unsigned int

 
延迟播放时间

单位：毫秒

返回值
int

 
唯一标识id

大于0为有效值，等于0表示调用失败。

版本历史
v1.0

 
首次发布

v1.1

 
2D增加返回值id，3D还未增加返回值id

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:播放3D音效下一篇:停止播放声音文件>
StopSoundEx
停止播放声音文件

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-01-10 00:00:00
此函数停止接口PlaySoundEx播放的声音。

caution_icon警告
PlaySoundEx、StopSoundEx的唯一标识id与Play2DSound、Play3DSound、StopSoundPlay的soundID不同，不能混用。

语法
Luacopy 复制
CL:StopSoundEx( 
    id
)

参数
id

uint

 
播放声音文件接口PlaySoundEx返回的唯一标识id

返回值
bool

 
true停止播放音效成功。

false停止播放音效失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
_GUIHandle = GUI:ButtonCreate(_Parent,"Test",4000230000,390 + 110,5 + 55)
if _GUIHandle ~= 0 then
  GUI:WndAddTimerBrief(_GUIHandle, 3000, "Timer_test") --添加一个定时器
  sound_id=CL:PlaySoundEx("test123.mp3","http://music.163.com/song/media/outer/url?id=447925558.mp3", 0)
  dbg("播放音效返回的唯一标识id："..sound_id)
end

function Timer_test(handle, id)
  GUI:WndDelTimer(handle, id)
  dbg("用于停止播放音效的id："..sound_id)
  CL:StopSoundEx(sound_id)
end

--此示例代码执行成功结果如下图所示的。

StopSoundEx
<上一篇:播放声音文件下一篇:停止播放声音>
StopSoundPlay
停止播放声音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-01-10 00:00:00
此函数停止播放指定的声音。

caution_icon警告
PlaySoundEx、StopSoundEx的唯一标识id与Play2DSound、Play3DSound、StopSoundPlay的soundID不同，不能混用。

语法
Luacopy 复制
CL:StopSoundPlay( 
    _SoundID
)

参数
_SoundID

int

 
声音ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:停止播放声音文件
HotKeyDeleteAll
删除所有快捷键

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数删除所有额快捷键。

语法
Luacopy 复制
CL:HotKeyDeleteAll()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:删除快捷键>
HotKeyDelete
删除快捷键

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-04 00:00:00
此函数删除指定的快捷键。

参考 HotKeyRegister Lua_HotKeyRegister

语法
Luacopy 复制
CL:HotKeyDelete( 
    _HotKeyStr
)

参数
_HotKeyStr

string

 
快捷键名称

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:HotKeyRegister("CTRL + Q","关闭","OnExit") --注册"CTRL + Q"为"关闭"功能的快捷键
CL:HotKeyDelete("关闭")
<上一篇:删除所有快捷键下一篇:注册快捷键>
HotKeyRegister
注册快捷键

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-01 00:00:00
此函数作用为注册快捷键。

语法
Luacopy 复制
CL:HotKeyRegister( 
    _HotKeyStr,
    _Name,
    _LuaFuncName
)

参数
_HotKeyStr

string

 
快捷键字符串（支持“主键”或者“附加键 + 主键”的形式）

主键：主键盘上字母键（A-Z键）、TAB键、END键、HOME键和~键。

附加键：CTRL键和ALT键

例如：可以设置快捷键为"Q"、"CTRL + V"或者"ALT + ~"。

caution_icon 注意
快捷键字符串中的字母都为大写格式，否则不会生效。

组合键（“附加键 + 主键”）中的“＋”号前后各有一个空格，须按照规定格式填写（不能遗漏“＋”号前后的空格），否则不会生效。

_Name

string

 
快捷键名称（例如：“回城”）

_LuaFuncName

string

 
触发快捷键时回调的Lua脚本函数名

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:HotKeyRegister("CTRL + Q","关闭","OnExit") --注册"CTRL + Q"为"关闭"功能的快捷键

function OnExit()
    CL:QuiteToLogin() --退出到角色选择界面
end
<上一篇:删除快捷键下一篇:开关快捷键>
ToggleHotKey
开关快捷键

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-12-31 18:19:00
此函数作用是开关快捷键。

note_icon 备注
此接口对内置的快捷键（HotKeySetting.xml）和脚本注册快捷键（HotKeyRegister）都生效，对技能快捷键不会生效。

语法
Luacopy 复制
CL:ToggleHotKey(
    name,
    disable
)
参数
name

string

 
快捷键名称（不是快捷键）

如："包裹"、"任务"。

disable

bool

 
true禁用快捷键

false启用快捷键

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:HotKeyRegister("CTRL + L", "包裹", "OnPakageBtn")
function OnPakageBtn()
    CL:OnOpenPakage()
end
--禁用打开包裹快捷键
CL:ToggleHotKey("包裹", true)

--分别使用CL:ToggleHotKey接口测试HotKeySetting.xml中的包裹快捷键以及使用CL:HotKeyRegister接口注册的包裹快捷键是否生效。
--示例代码执行成功后两种快捷键都被禁用。
<上一篇:注册快捷键
LoadAllLuaFiles
加载所有Lua文件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数加载所有Lua文件。

程序会加载LoadAllFile.lua和GameLogic.lua文件。

例如，在LoadAllFile.lua中定义UI:Lua_LoadLuaFile("SomeLuaFile")，SomeLuaFile.lua就能被加载。

语法
Luacopy 复制
CL:LoadAllLuaFiles()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:强制加载Lua脚本到游戏>
LoadLuaFileForce
强制加载Lua脚本到游戏

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数强制加载Lua脚本到游戏。

note_icon 备注
加载完成后，将自动运行脚本。

语法
Luacopy 复制
CL:LoadLuaFileForce( 
    _FileName
)

参数
_FileName

string

 
文件名

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:LoadLuaFileForce("UIMain") then
    msg("加载成功")
end

--此示例代码执行成功结果如下图所示的。

LoadLuaFileForce
<上一篇:加载所有Lua文件下一篇:加载Lua脚本到游戏>
LoadLuaFile
加载Lua脚本到游戏

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数加载Lua脚本到游戏。

note_icon 备注
仅加载脚本文件，不会自动运行。

语法
Luacopy 复制
CL:LoadLuaFile( 
    _FileName
)

参数
_FileName

string

 
文件名

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LoadLuaFile("UIMain")

--此示例代码执行成功结果如下图所示的。

LoadLuaFile
<上一篇:强制加载Lua脚本到游戏下一篇:重新加载DB目录中的所有文件>
ReloadAllDBFiles
重新加载DB目录中的所有文件

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数重新加载DB目录中的所有文件。

语法
Luacopy 复制
CL:ReloadAllDBFiles()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ReloadAllDBFiles()

--此示例代码执行成功结果如下图所示的。

ReloadAllLuaFiles
<上一篇:加载Lua脚本到游戏下一篇:重新加载所有Lua文件>
ReloadAllLuaFiles
重新加载所有Lua文件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数清除现有的Lua脚本，重新加载所有的Lua文件。

语法
Luacopy 复制
CL:ReloadAllLuaFiles()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ReloadAllLuaFiles() --重新加载所有Lua文件
<上一篇:重新加载DB目录中的所有文件下一篇:在WebBox窗口内运行js脚本>
RunJSInWebBox
在WebBox窗口内运行js脚本

手游 2Dnot_support 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-05-30 00:00:00
此函数在WebBox窗口内运行js脚本。

语法
Luacopy 复制
CL:RunJSInWebBox( 
    _WebWndName,
    _JsCode
)

参数
_WebWndName

string

 
显示在窗口上的标题文字

_JsCode

string

 
js脚本字符串

note_icon 备注
需要添加转义字符将js代码转化为js脚本字符串。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:OpenUrlUseWebWnd("这里是标题","www.baidu.com", "AutoResize|NoBorder")
CL:AddDelayTask("delayCall()", 500, 1)
function delayCall()
    if CL:RunJSInWebBox("这里是标题","document.getElementById(\"kw\").value = \"ceshi\"") then
        dbg("Javascript")
    else
        dbg("fail")
    end
end

--此示例代码运行成功如下图所示。

RunJSInWebBox.png
<上一篇:重新加载所有Lua文件
AddFreeTimeDownloadMPK
网络空闲时加载资源

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数在网络空闲时进行加载资源的操作。

语法
Luacopy 复制
CL:AddFreeTimeDownloadMPK( 
    _MPKID,
    _ResourceID
)

参数
_MPKID

int

 
MPK文件资源的ID。

_ResourceID

int

 
图片资源的ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddFreeTimeDownloadMPK(61000,2266900005)
下一篇:添加物品系统消息>
AddItemSystemMessage
添加物品系统消息

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-08-02 00:00:00
此函数添加物品系统消息。如提示物品的增减等状态。

note_icon 备注
作用和参数同手游的CL:AddSystemMessage，建议端游手游统一使用新接口。

语法
Luacopy 复制
CL:AddItemSystemMessage( 
    _ActionName,
    _ActionColor,
    _MsgName,
    _MsgColor,
    _NumberName,
    _NumberColor
)

参数
_ActionName

string

 
消息名称。

_ActionColor

uint

 
消息名称的颜色。

_MsgName

string

 
消息内容。

_MsgColor

uint

 
消息内容的颜色。

_NumberName

string

 
数量文本。

_NumberColor

uint

 
数量文本的颜色。

请点击颜色字符串了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddItemSystemMessage("获得",GUI:MakeARGB(255,0,255,0),"测试道具",GUI:MakeARGB(255,0,255,255),"*1",GUI:MakeARGB(255,255,255,255))
CL:AddItemSystemMessage("扣除",GUI:MakeARGB(255,255,0,0),"测试道具",GUI:MakeARGB(255,0,255,255),"*1",GUI:MakeARGB(255,255,255,255))

--此示例代码运行成功如下图所示。

AddItemSystemMessage
<上一篇:网络空闲时加载资源下一篇:添加系统消息>
AddSystemMessage2
添加系统消息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数添加一条系统消息。

语法
Luacopy 复制
CL:AddSystemMessage2( 
    _pContent
)

参数
_pContent

string

 
消息内容。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddSystemMessage2("增加系统信息")

--此示例代码运行成功如下图所示。

AddSystemMessage2
<上一篇:添加物品系统消息下一篇:添加物品系统消息>
AddSystemMessage
添加物品系统消息

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数添加物品系统消息。如提示物品的增减等状态。

语法
Luacopy 复制
CL:AddSystemMessage( 
    _ActionName,
    _ActionColor,
    _MsgName,
    _MsgColor,
    _NumberName,
    _NumberColor
)

参数
_ActionName

string

 
消息名称。

_ActionColor

uint

 
消息名称的颜色。

_MsgName

string

 
消息内容。

_MsgColor

uint

 
消息内容的颜色。

_NumberName

string

 
数量文本。

_NumberColor

uint

 
数量文本的颜色。

请点击颜色字符串了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddSystemMessage("获得",GUI:MakeARGB(255,0,255,0),"秘境卷轴",GUI:MakeARGB(255,0,255,255),"*1",GUI:MakeARGB(255,255,255,255))

--此示例代码运行成功如下图所示。

AddSystemMessage
<上一篇:添加系统消息下一篇:返回到用户登录界面>
BacktoTitle
返回到用户登录界面

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2022-05-27 00:00:00
此函数返回用户登录界面。

手游的登录界面如下图。

BacktoTitle

语法
Luacopy 复制
CL:BacktoTitle()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:添加物品系统消息下一篇:验证身份证号码是否合法>
CheckIDCard
验证身份证号码是否合法

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数验证身份证号码是否合法。

语法
Luacopy 复制
CL:CheckIDCard(
    _IdCard
)
参数
_IdCard

string

 
身份证号码

返回值
boolean

 
true合法

false不合法

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:CheckIDCard("4115xxxxxxxxxxxxxx") then
    dbg("合法")
else
    dbg("不合法")	
end

--此示例代码运行成功如下图所示。

CheckIDCard
<上一篇:返回到用户登录界面下一篇:进入游戏>
EnterGame
进入游戏

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行进入游戏场景的操作。

语法
Luacopy 复制
CL:EnterGame( 
    _Name
)

参数
_Name

string

 
角色名

返回值
bool

 
成功进入游戏场景返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:验证身份证号码是否合法下一篇:退出游戏>
QuiteGame
退出游戏

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行完全退出游戏的操作。

语法
Luacopy 复制
CL:QuiteGame()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:进入游戏下一篇:退出到角色选择界面>
QuiteToLogin
退出到角色选择界面

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行退出到角色选择界面的操作。

根据全局变量LuaGlobal["ModifyQuiteGameMethod"]的设置状态，有以下两种退出界面。

设置为false（默认）时，弹出今日可玩活动的窗口。
QuiteToLogin-false

设置为true时，会调用脚本中定义的OnQuiteGame()函数，弹出退出到角色选择页面的对话框。
QuiteToLogin-true

语法
Luacopy 复制
CL:QuiteToLogin()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:退出游戏
GetQQ
获取客服QQ号

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前登录器所配置（神途运营后台可进行配置）的客服QQ号。

语法
Luacopy 复制
CL:GetQQ()

参数
无

 
返回值
string

 
客服QQ号。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:获取客服电话号码>
GetTelephone
获取客服电话号码

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前登录器所配置（神途运营后台可进行配置）的客服电话号码。

语法
Luacopy 复制
CL:GetTelephone()

参数
无

 
返回值
string

 
客服电话号码。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取客服QQ号下一篇:获取客服微信号>
GetWechat
获取客服微信号

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前登录器配置的客服微信号。

语法
Luacopy 复制
CL:GetWechat()

参数
无

 
返回值
string

 
客服微信号。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取客服电话号码
OpenUrlUseIEByType
使用默认浏览器打开特定链接

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-10-13 17:30:00
此函数调用系统默认的浏览器打开特定的链接。

note_icon 备注
链接地址在游戏安装目录\Setting\ServerList.xml中指定。

语法
Luacopy 复制
CL:OpenUrlUseIEByType( 
    _Type
)

参数
_Type

int

 
链接类型：

1注册链接，ServerList.xml中name="m_RegisterUrl"对应的链接

2更改密码链接，ServerList.xml中name="m_ChgePswdUrl"对应的链接

3购买元宝链接，ServerList.xml中name="m_PayMoneyUrl"对应的链接

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:OpenUrlUseIEByType(1) --打开注册页面
下一篇:使用默认浏览器打开链接>
OpenUrlUseIE
使用默认浏览器打开链接

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数调用系统默认的浏览器打开指定的链接。

语法
Luacopy 复制
CL:OpenUrlUseIE( 
    _URL
)

参数
_URL

string

 
URL字符串

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:使用默认浏览器打开特定链接下一篇:用WebBox游戏窗口打开网页>
OpenUrlUseWebWnd
用WebBox游戏窗口打开网页

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-03-07 00:00:00
此函数用WebBox游戏窗口打开网页。

note_icon 备注
2D手游客户端支持此接口，但2D手游PC端不支持此接口。

语法
Luacopy 复制
CL:OpenUrlUseWebWnd( 
    _Name,
    _Url,
    _Param 
)

参数
_Name

string

 
显示在窗口上的标题文字

_Url

string

 
链接地址

caution_icon 注意
此参数中的链接地址一定要以http或者https开头，否则无效。

_Param

string

 
样式选项

用于控制网页打开的行为，支持单个或多个标记(多个标记之间用“|”分隔)

具体请参见WebBox样式类型定义页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:OpenUrlUseWebWnd("这里是标题","https://www.baidu.com", "AutoResize")

--此示例代码执行成功结果如下图所示。

OpenUrlUseWebWnd
<上一篇:使用默认浏览器打开链接
SetCursorColor
设置输入框光标颜色

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置聊天输入框光标颜色。

语法
Luacopy 复制
CL:SetCursorColor( 
    _Color
)

参数
_Color

unsigned int

 
光标的颜色。参见颜色字符串

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetCursorColor(GUI:MakeARGB(255,255,255,0)) --设置为光标黄色

--此示例代码成功创建了如下图所示。

SetCursorColor
下一篇:设置指定场景下的鼠标指针样式>
SetCursorStatusByID
设置指定场景下的鼠标指针样式

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-12-16 00:00:00
此函数设置指定场景下的鼠标指针样式。

当游戏内鼠标指针使用游戏主目录\Cursor目录下的自定义样式时，可使用此接口来指定鼠标指针在某些特殊场景下是否使用操作系统鼠标指针样式。

如需设置鼠标指针均使用操作系统鼠标指针样式，则可使用接口CL:SetSystemCursor进行设置。

语法
Luacopy 复制
CL:SetCursorStatusByID(
    type,
    val
)
参数
type

int

 
指定使用场景

具体请参见鼠标指针状态定义说明

val

int

 
0使用操作系统鼠标指针样式

1使用游戏主目录\Cursor目录下的自定义样式

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetCursorStatusByID(3,0) --待攻击状态下使用操作系统鼠标指针样式
CL:SetCursorStatusByID(35,1) --待拆分道具状态下使用自定义样式
CL:SetCursorStatusByID(36,1) --左键点击拆分道具时使用自定义样式

--此示例代码运行成功后，待攻击状态下使用操作系统鼠标指针样式，待拆分道具状态以及左键点击拆分道具时使用自定义样式。
<上一篇:设置输入框光标颜色下一篇:设置鼠标指针的样式>
SetSystemCursor
设置鼠标指针的样式

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-12-16 00:00:00
此函数设置游戏内鼠标指针的样式。

如需单独修改鼠标指针在指定状态下显示的样式，则可使用接口CL:SetCursorStatusByID进行设置。

语法
Luacopy 复制
CL:SetSystemCursor(
    type
)
参数
type

int

 
0使用游戏主目录\Cursor目录下的自定义样式（为默认值）

1使用操作系统鼠标指针样式

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetSystemCursor.png
CL:SetSystemCursor(1) --使用操作系统鼠标指针样式
dbg("鼠标样式类型："..CL:GetSystemCursor())

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

SetSystemCursor_2.png

GetSystemCursor.png
<上一篇:设置指定场景下的鼠标指针样式
CheckProtocol
获取推广系统中用户协议勾选的逻辑

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-02-24 00:00:00
此函数获取推广系统中用户协议勾选的逻辑。

语法
Luacopy 复制
CL:CheckProtocol()
参数
无

返回值
int

 
推广系统中用户协议勾选的逻辑

0用户只需要勾选一次（之后默认勾选）

1用户每次启动都需要手动勾选

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
--以手游45度测试区（区号：151750）中的ServerSelect.lua脚本文件为例。
ServerSelect = {}

function ServerSelect.main()

--……省略部分代码

    if _UsePlatformLogin then

--……省略部分代码

        local isPro = tonumber(CL:CheckProtocol()) --获取推广系统中用户协议的勾选逻辑

        _ButtonHandle = GUI:ButtonCreate(_GUIHandle, "AccountLogin", 1854780014, (_DeviceSizeX - 157)/2 - 56 - 200, (_DeviceSizeY - 200)/2)
        if _ButtonHandle ~= 0 then
            GUI:WndSetEnableM(_ButtonHandle, isPro == 0) --根据isPro的返回值来设置控件是否可用
        end

        _ButtonHandle = GUI:ButtonCreate(_GUIHandle, "PhoneLogin", 1854780002, (_DeviceSizeX - 157)/2, (_DeviceSizeY - 200)/2)
        if _ButtonHandle ~= 0 then
            GUI:WndSetEnableM(_ButtonHandle, isPro == 0) --根据isPro的返回值来设置控件是否可用
        end

        _ButtonHandle = GUI:ButtonCreate(_GUIHandle, "WeChatLogin", 1854780006, (_DeviceSizeX - 157)/2 + 200 + 56, (_DeviceSizeY - 200)/2)
        if _ButtonHandle ~= 0 then
            GUI:WndSetEnableM(_ButtonHandle, isPro == 0) --根据isPro的返回值来设置控件是否可用
        end

        local _CheckBoxHandle = GUI:CheckBoxCreate(_GUIHandle, "StatementCheckBox", 4010200084, "注册即同意", (_DeviceSizeX - 157)/2 - 50, (_DeviceSizeY - 200)/2 + 250)
        if _CheckBoxHandle ~= 0 then
            GUI:WndRegistScript(_CheckBoxHandle, RDWnd2DCheckCL_check_change, "ServerSelect.ChangeStatement")
            GUI:CheckBoxSetCheck(_CheckBoxHandle, isPro == 0) --根据isPro的返回值来设置控件是否勾选
            --GUI:SetLocalZOrder(_GUIHandle,10001)
        end

--……省略部分代码

    end

--……省略部分代码

end

--……省略部分代码

ServerSelect.main()
下一篇:获取用户ID>
GetAccountID
获取用户ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数获取神途内部对每个账号进行标识的用户ID。

语法
Luacopy 复制
CL:GetAccountID()
参数
无

返回值
string

 
神途内部对每个账号进行标识的用户ID

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
dbg("当前用户ID为："..CL:GetAccountID())

--此示例代码运行成功如下图所示。

GetAccountID.png
<上一篇:获取推广系统中用户协议勾选的逻辑下一篇:获取App名称>
GetAppName
获取App名称

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2022-11-11 00:00:00
此函数获取Andriod或iOS端的App名称。

语法
Luacopy 复制
CL:GetAppName()

参数
无

 
返回值
string

 
App名称。

note_icon 备注
对于在Windows平台上运行的手游端，则会返回空值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取用户ID下一篇:获取App版本>
GetAppVersion
获取App版本

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取App版本。

语法
Luacopy 复制
CL:GetAppVersion()

参数
无

 
返回值
string

 
App版本号

note_icon 备注
Windows平台中，版本号固定返回1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取App名称下一篇:获取回调函数的数量>
GetCallBackCount
获取回调函数的数量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-12 00:00:00
此函数获取程序中指定标签所对应的回调函数数量。

语法
Luacopy 复制
CL:GetCallBackCount( 
    _TextString
)

参数
_TextString

string

 
自定义标签，用于区分不同作用的回调函数。

自定义标签类型如下所示：

交易请求消息

组队请求消息

新活动提醒

返回值
int

 
回调函数的数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local count = CL:GetCallBackCount("组队请求消息")
dbg("回调函数数量："..count)

--此示例代码运行成功如下图所示。

GetCallBackCount
<上一篇:获取App版本下一篇:获取当前客户端的类型>
GetClientType
获取当前客户端的类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取当前客户端的类型。

语法
Luacopy 复制
CL:GetClientType()
参数
无

返回值
int

 
客户端类型

0端游

1页游

2手游

3H5

43D端游

53D手游

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local client_type = CL:GetClientType()
msg("客户端类型 = "..client_type)

--此示例代码运行成功如下图所示。

GetClientType.png
<上一篇:获取回调函数的数量下一篇:获取当前区服名称>
GetCurServerName
获取当前区服名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取玩家当前所在的区服名称。

语法
Luacopy 复制
CL:GetCurServerName()
参数
无

返回值
string

 
获取成功则返回玩家当前所在的区服名称

获取失败则返回空字串（""）

note_icon 备注
若当前区服名未配置，则返回空字符串（""）。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游和2D端游支持

示例代码
Luacopy 复制
dbg("玩家当前所在的区服名称为"..CL:GetCurServerName())

--此示例代码运行成功如下图所示。

GetCurServerName.png
<上一篇:获取当前客户端的类型下一篇:获取当前时间的TICK值>
GetCurTick
获取当前时间的TICK值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-07-07 00:00:00
此函数获取当前时间的TICK值，即从操作系统启动开始所经过的毫秒数。

语法
Luacopy 复制
CL:GetCurTick()

参数
无

 
返回值
dword

 
当前时间的TICK值（即从操作系统启动开始所经过的毫秒数）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

 
v1.2

 
新增对3D手游支持

示例代码
Luacopy 复制
local current = CL:GetCurTick()
dbg("操作系统启动所经过的毫秒数为"..current)

--此示例代码运行成功如下图所示。

GetCurTick.png
<上一篇:获取当前区服名称下一篇:获取游戏安装路径>
GetCurWorkPath
获取游戏安装路径

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取游戏安装路径。

语法
Luacopy 复制
CL:GetCurWorkPath()

参数
无

 
返回值
string

 
安装目录路径。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
dbg(""..CL:GetCurWorkPath())

--此示例代码执行成功后，结果如下图所示。

GetCurWorkPath
<上一篇:获取当前时间的TICK值下一篇:获取输入框光标颜色>
GetCursorColor
获取输入框光标颜色

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取聊天输入框光标颜色。

语法
Luacopy 复制
CL:GetCursorColor()

参数
无

 
返回值
unsigned int

 
光标颜色的十进制值。参见颜色字符串

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local color=CL:GetCursorColor()
dbg("光标颜色："..color)

--此示例代码运行成功如下图所示。

GetCursorColor
<上一篇:获取游戏安装路径下一篇:获取代理ID>
GetGameAgentID
获取代理ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数获取代理ID。

代理ID是每个代理商唯一的标识。

语法
Luacopy 复制
CL:GetGameAgentID()
参数
无

返回值
string

 
获取成功则返回代理ID

获取失败则返回空字串（""）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
dbg("代理ID为"..CL:GetGameAgentID())

--此示例代码运行成功如下图所示。

GetGameAgentID.png
<上一篇:获取输入框光标颜色下一篇:获取代理分组ID>
GetGameGroupID
获取代理分组ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数获取代理分组ID。

代理分组ID是代理商各个渠道的标识。

语法
Luacopy 复制
CL:GetGameGroupID()
参数
无

返回值
string

 
获取成功则返回代理分组ID

获取失败则返回空字串（""）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
dbg("代理分组ID为"..CL:GetGameGroupID())

--此示例代码运行成功如下图所示。

GetGameGroupID.png
<上一篇:获取代理ID下一篇:获取游戏区服ID>
GetGameServerID
获取游戏区服ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数获取玩家当前所在的区服的ID。

语法
Luacopy 复制
CL:GetGameServerID()
参数
无

返回值
string

 
获取成功则返回玩家当前所在的区服的ID

获取失败则返回空字串（""）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
dbg("玩家当前所在的区服的ID为"..CL:GetGameServerID())

--此示例代码运行成功如下图所示。

GetGameServerID.png
<上一篇:获取代理分组ID下一篇:获取游戏的下载地址>
GetGameUrl
获取游戏的下载地址

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据类型获取游戏的下载地址。

语法
Luacopy 复制
CL:GetGameUrl(
    _Type
)
参数
_Type

number

 
类型

0PC端

1H5端

2安卓

3iOS

返回值
string

 
游戏下载地址

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local url = CL:GetGameUrl(2) 
dbg("url:"..url)

--此示例代码运行成功如下图所示。

GetGameUrl
<上一篇:获取游戏区服ID下一篇:获取第三方平台标识>
GetOemPlatform
获取第三方平台标识

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-05-19 00:00:00
此函数作用为获取第三方平台标识。

语法
Luacopy 复制
CL:GetOemPlatform()

参数
无

 
返回值
string

 
第三方标识

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取游戏的下载地址下一篇:获取推广员ID>
GetPromoterID
获取推广员ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-12-03 10:02:00
此函数获取游戏推广员的ID。

语法
Luacopy 复制
CL:GetPromoterID()

参数
无

 
返回值
string

 
推广员ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取第三方平台标识下一篇:获取游戏窗口高度>
GetScreenHeight
获取游戏窗口高度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取游戏窗口高度。

语法
Luacopy 复制
CL:GetScreenHeight()

参数
无

 
返回值
int

 
游戏窗口高度，单位为像素（px）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _height =  CL:GetScreenHeight() --获取游戏窗口高度
dbg("".._height)

--控制台将输出：“720”。
<上一篇:获取推广员ID下一篇:获取游戏窗口宽度>
GetScreenWidth
获取游戏窗口宽度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取游戏窗口宽度。

语法
Luacopy 复制
CL:GetScreenWidth()

参数
无

 
返回值
int

 
游戏窗口宽度，单位为像素（px）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _width = CL:GetScreenWidth() --获取游戏窗口宽度
dbg("".._width)

--控制台将输出：“1280”。
<上一篇:获取游戏窗口高度下一篇:获取玩家当前登录游戏的子包ID>
GetSubPackageID
获取玩家当前登录游戏的子包ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-12-11 00:00:00
此函数获取玩家当前登录游戏的子包ID。

note_icon 备注
手游PC端不支持该接口。

语法
Luacopy 复制
CL:GetSubPackageID()

参数
无

 
返回值
string

 
玩家当前登录游戏的子包ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取游戏窗口宽度下一篇:获取鼠标指针的样式>
GetSystemCursor
获取鼠标指针的样式

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-12-16 00:00:00
此函数获取鼠标指针的样式。

语法
Luacopy 复制
CL:GetSystemCursor()
参数
无

返回值
int

 
游戏内鼠标指针的样式

0游戏主目录\Cursor目录下的自定义样式

1操作系统鼠标指针样式

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetSystemCursor.png
CL:SetSystemCursor(1) --使用操作系统鼠标指针样式
dbg("鼠标样式类型："..CL:GetSystemCursor())

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

SetSystemCursor_2.png

GetSystemCursor.png
<上一篇:获取玩家当前登录游戏的子包ID下一篇:获取当前账号是否绑定了手机号>
IsBindPhone
获取当前账号是否绑定了手机号

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取当前账号是否绑定了手机号。

语法
Luacopy 复制
CL:IsBindPhone()

参数
无

 
返回值
bool

 
true已绑定

false未绑定

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取鼠标指针的样式下一篇:当前客户端是否是云客户端>
IsCloudClient
当前客户端是否是云客户端

更新时间：2025-12-03 10:02:00
此函数获取当前客户端是否是云客户端。

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

语法
Luacopy 复制
CL:IsCloudClient()
参数
无

返回值
操作结果

bool

 
true是云客户端

false不是云客户端

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前账号是否绑定了手机号
DoSelectServer
选择服务器并连接

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数连接指定的服务器，并执行连接操作。

语法
Luacopy 复制
CL:DoSelectServer( 
    _HandleID,
    _ServerIdx
)

参数
_HandleID

int

 
服务器选择（SelectServer）窗口的句柄。

_ServerIdx

int

 
服务器序号，从1开始。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
CL:DoSelectServer(_Parent, 1)

--示例代码尝试重新连接服务器。
下一篇:断开服务器连接>
DoServerQuite
断开服务器连接

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数断开与指定服务器的连接，同时完全退出游戏。

语法
Luacopy 复制
CL:DoServerQuite( 
    _HandleID
)

参数
_HandleID

int

 
服务器选择（SelectServer）窗口的句柄。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
CL:DoServerQuite(_Parent)
<上一篇:选择服务器并连接下一篇:提交表单>
DoSubmitForm
提交表单

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数向服务器提交表单，指定lua脚本文件中的函数，并传递相关参数。

语法
Luacopy 复制
CL:DoSubmitForm( 
    _ScriptName,
    _FunctionName,
    _SubmitString
)

参数
_ScriptName

string

 
服务端的lua文件名。

_FunctionName

string

 
lua文件中的函数名。

_SubmitString

string

 
提交的内容，若有多个参数则以#分割。

返回值
bool

 
提交成功返回true，失败则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:DoSubmitForm("测试表单","main","")

--以下是服务器上“测试表单.lua”中的示例
local lua_path = lualib:IO_GetLuaPath() --获取服务器LUA文件夹的绝对路径
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)

function main(player)
    lualib:Warn("已调用main方法") --打印警告日志
end
<上一篇:断开服务器连接下一篇:获取测试服务器名称列表>
GetTestServerNameList
获取测试服务器名称列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-02-03 00:00:00
此函数获取当前登录的测试服务器名称列表。

语法
Luacopy 复制
CL:GetTestServerNameList( 
    _HandleID
)

参数
_HandleID

int

 
ServerSelect面板的句柄

返回值
int

 
测试服务器的数量

note_icon 备注
此函数获取的测试服务器名称存储在全局变量LuaRet中。

i为索引号。

LuaRet[i]测试服务器的名称（string）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
local _GUIHandle = _Parent
local _ServerCount = CL:GetTestServerNameList(_GUIHandle)
dbg("size:".._ServerCount)
if _ServerCount ~= 0 then
    dbg("列表名称"..serialize(LuaRet))
end

--此示例代码运行成功如下图所示。

GetTestServerNameList
<上一篇:提交表单下一篇:向服务器发送进程信息至自定义表单>
SubmitProcInfo2
向服务器发送进程信息至自定义表单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数向服务器发送4个包含进程信息的字符串。

字符串中的进程信息以|分割，包含模块名字、描述和MD5。

4个字符串作为4个参数，传给服务端指定的表单做后续的处理，如检测反外挂等。

语法
Luacopy 复制
CL:SubmitProcInfo2( 
    _formName,
    _enterName,
    _param
)

参数
_formName

string

 
服务器用于接收的表单名（不包含.lua后缀）

_enterName

string

 
表单内的接收函数

note_icon 备注
函数第一个参数为下述自定义参数，其余四个参数用于接收进程信息字符串。

_param

string

 
自定义的参数

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:SubmitProcInfo2("系统进程处理","main","") then
    dbg("发送成功")
else
    dbg("发送失败")
end

--服务端系统进程处理.lua文件中定义回调函数
function main(player, arg1, arg2, arg3, arg4)

end
<上一篇:获取测试服务器名称列表下一篇:向服务器发送进程信息>
SubmitProcInfo
向服务器发送进程信息

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数向服务器发送4个包含进程信息的字符串。

字符串中的进程信息以|分割，包含模块名字、描述和MD5。

4个字符串作为4个参数，传给服务端系统进程信息.lua中的Main函数做后续的处理，如检测反外挂等。

语法
Luacopy 复制
CL:SubmitProcInfo()

参数
无

 
返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:SubmitProcInfo() then
    dbg("发送成功")
else
    dbg("发送失败")
end

--控制台将输出：“发送成功”。
<上一篇:向服务器发送进程信息至自定义表单
ClearPhoneTokenAccount
清除手机免密账号登录记录

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数清除手机免密账号登录记录。

语法
Luacopy 复制
CL:ClearPhoneTokenAccount()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:重置微信账号登录状态>
ClearWXAccount
重置微信账号登录状态

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数重置微信账号的登录状态。

重置后，下次登录时，若选择使用微信账号登录，则需要重新输入微信账号信息。

语法
Luacopy 复制
CL:ClearWXAccount()

参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:清除手机免密账号登录记录下一篇:加入QQ群>
JoinQQGroup
加入QQ群

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-18 00:00:00
此函数执行加入QQ群的操作。

语法
Luacopy 复制
CL:JoinQQGroup( 
    _ID,
    _IOSKey,
    _AndroidKey
)

参数
_ID

string

 
QQ群号

_IOSKey

string

 
QQ群的iOS key

_AndroidKey

string

 
QQ群的Android key

note_icon 备注
QQ群的Android key和QQ群的iOS key可在QQ群官网获取。

返回值
bool

 
true跳转到QQ

false跳转失败

note_icon 备注
跳转失败的原因如下：

1.手机端未安装QQ

2.手机端安装的QQ版本太低或者其他原因导致QQ不支持跳转

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:重置微信账号登录状态下一篇:openinstall上报效果点信息>
OpenInstallReportEffectPoint
openinstall上报效果点信息

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数会向openinstall（第三方App推广平台）上报效果点信息。

语法
Luacopy 复制
CL:OpenInstallReportEffectPoint( 
    _PointId,
    _PointValue
)

参数
_PointId

string

 
效果点的ID。

_PointValue

int

 
效果点值。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:加入QQ群下一篇:请求支付>
Pay
请求支付

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数请求支付操作，提交充值支付相关信息。成功后，跳转至相应的充值平台。

note_icon 备注
此函数为充值专用，实际不会购买商品。

语法
Luacopy 复制
CL:Pay( 
    _PayPlatform,
    _Money,
    _Num,
    _ProductID,
    _ProductName,
    _ProductDesc,
    _CustomParam
)

参数
_PayPlatform

int

 
支付平台。

0苹果支付(appstore)

1微信支付

2支付宝

3第三方渠道

_Money

int

 
充值金额数量。

_Num

int

 
购买商品的数量，固定填写1。

_ProductID

string

 
购买商品的ID。

_ProductName

string

 
购买商品的名称。

_ProductDesc

string

 
购买商品的描述信息。

_CustomParam

string

 
自定义信息。仅在苹果支付中使用。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:Pay(2,100,1,"id_string","破碎的蛋","破碎的蛋","")
<上一篇:openinstall上报效果点信息下一篇:开始支付>
StartOemPay
开始支付

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行开始支付的操作。

语法
Luacopy 复制
CL:StartOemPay(
    oemid,
    money,
    customparameter
)
参数
oemid

string

 
第三方ID(OEMID)

若为空字符串，则使用当前的OEMID。

money

number

 
充值金额

customparameter

string

 
充值自定义参数

若为空字符串，则表示无自定义参数。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local PayCustomParam = {["PayCustomParam"] = "shouchong"}
CL:StartOemPay("",100,luaValToJSON(PayCustomParam))

--此示例代码运行成功如下图所示。

StartOemPay
<上一篇:请求支付下一篇:微信分享截图>
WechatShareCapture
微信分享截图

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数用于微信分享截图。

语法
Luacopy 复制
CL:WechatShareCapture( 
    _SceneType
)

参数
_SceneType

int

 
分享类型：

1分享给好友

2分享到朋友圈

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:WechatShareCapture(1)
<上一篇:开始支付下一篇:微信分享图片>
WechatShareImage
微信分享图片

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-12-18 00:00:00
此函数用于微信分享图片。

使用此接口分享的图片的存储路径为extra/区ID/Config目录。

对应图片的上传路径为：游戏工具平台→客户端资源→手游客户端资源→手游自定义资源→Config目录。

语法
Luacopy 复制
CL:WechatShareImage( 
    _SceneType,
    _ImageName
)

参数
_SceneType

int

 
分享类型

1分享给好友

2分享到朋友圈

_ImageName

string

 
图片的文件名

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
CL:WechatShareImage(1,"StartBack0.jpg")
<上一篇:微信分享截图下一篇:微信分享文本>
WechatShareText
微信分享文本

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数用于微信分享文本。

语法
Luacopy 复制
CL:WechatShareText( 
    _SceneType,
    _ContentStr
)

参数
_SceneType

int

 
分享类型：

1分享给好友

2分享到朋友圈

_ContentStr

string

 
文本内容

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:WechatShareText(1,"文字内容")
<上一篇:微信分享图片下一篇:微信分享链接>
WechatShareWebpage
微信分享链接

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数用于微信分享链接。

语法
Luacopy 复制
CL:WechatShareWebpage( 
    _SceneType,
    _Url,
    _Title,
    _Desc
)

参数
_SceneType

int

 
分享类型：

1分享给好友

2分享到朋友圈

_Url

string

 
链接的URL。

_Title

string

 
Web标题。

_Desc

string

 
Web描述。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:WechatShareWebpage(1,"www.baidu.com","标题","描述描述")
<上一篇:微信分享文本
BatteryIsCharging
获取电池充电状态

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取设备电池的充电状态。

语法
Luacopy 复制
CL:BatteryIsCharging()

参数
返回值
bool

 
true正在充电状态

false非充电状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:获取设备剩余电量>
GetBatteryLevel
获取设备剩余电量

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取设备电池的剩余电量。

语法
Luacopy 复制
CL:GetBatteryLevel()

参数
无

 
返回值
int

 
设备电池的剩余电量，范围为0~100。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
_batlevel = CL:GetBatteryLevel()
dbg("当前电池电量为：".._batlevel)

--控制台将输出“当前电池电量为：100”。
<上一篇:获取电池充电状态下一篇:获取设备ID>
GetDeviceId
获取设备ID

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-11-15 00:00:00
此函数获取设备ID，即设备的唯一标识或称硬件码。

语法
Luacopy 复制
CL:GetDeviceId()

参数
无

返回值
string

 
设备ID

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
--客户端
local DeviceId = CL:GetDeviceId() --获取设备ID
UI:Lua_SubmitForm("服务端操作","TestGetDeviceId",DeviceId) --向服务器提交表单

--服务端
function TestGetDeviceId(player,str)
    lualib:Warn("DeviceId为："..str)
end

--此示例代码运行成功如下图所示。

GetDeviceId.png
<上一篇:获取设备剩余电量下一篇:获取设备信息>
GetDeviceInfo
获取设备信息

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2022-11-11 00:00:00
此函数获取设备信息。

语法
Luacopy 复制
CL:GetDeviceInfo()

参数
无

返回值
string

 
根据设备类型返回不同信息：

Android设备：手机厂商、手机名称、手机型号

iOS设备：iOS

Windows设备：Win32

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取设备ID下一篇:获取设备屏幕像素高度>
GetHardWareHeight
获取设备屏幕像素高度

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数获取设备屏幕像素高度。

语法
Luacopy 复制
CL:GetHardWareHeight()

参数
无

 
返回值
int

 
设备屏幕像素高度。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
DevScreenHeight = CL:GetHardWareHeight()
dbg("设备屏幕高度为："..DevScreenHeight.."px")

--控制台将输出“设备屏幕高度为：720px”。
<上一篇:获取设备信息下一篇:获取设备类型>
GetHardWareType
获取设备类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数为获取当前设备的类型。

语法
Luacopy 复制
CL:GetHardWareType()

参数
无

 
返回值
int

 
设备类型

0运行Windows的设备

1运行Android的设备

2运行iOS的设备

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对端游支持

示例代码
Luacopy 复制
dbg("客户端类型："..tostring(CL:GetHardWareType()))

--此示例代码运行成功后，控制台将输出如下内容（端游）。

GetHardWareType.png
<上一篇:获取设备屏幕像素高度下一篇:获取设备屏幕像素宽度>
GetHardWareWidth
获取设备屏幕像素宽度

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数获取设备屏幕像素宽度。

语法
Luacopy 复制
CL:GetHardWareWidth()

参数
无

 
返回值
int

 
设备屏幕像素宽度。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
DevScreenWidth = CL:GetHardWareWidth()
dbg("设备屏幕宽度为："..DevScreenWidth.."px")

--控制台将输出“设备屏幕宽度为：1280px”。
<上一篇:获取设备类型下一篇:获取iOS设备类型>
GetIOSDeviceType
获取iOS设备类型

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取运行iOS设备的类型。如iPhone 8。

语法
Luacopy 复制
CL:GetIOSDeviceType()

参数
无

 
返回值
string

 
设备的类型。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取设备屏幕像素宽度下一篇:获取iOS设备是否有刘海屏>
GetIOSLiuHai
获取iOS设备是否有刘海屏

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2024-12-10 00:00:00
此函数获取当前的iOS设备是否有刘海屏。

语法
Luacopy 复制
CL:GetIOSLiuHai()

参数
无

 
返回值
bool

 
true当前的iOS设备有刘海屏

false当前的设备非iOS设备或者当前的iOS设备无刘海屏

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对新机型（更新至iPhone 14系列）的判断

 
v1.2

 
增加对新机型（更新至iPhone 15系列）的判断

 
v1.3

 
增加对新机型（更新至iPhone 16系列）的判断

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取iOS设备类型下一篇:获取当前设备的刘海屏高度>
GetLiuHaiHeight
获取当前设备的刘海屏高度

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-02-10 00:00:00
此函数获取当前设备的刘海屏高度。

GetLiuHaiHeight_2.png
语法
Luacopy 复制
CL:GetLiuHaiHeight()
参数
无

返回值
int

 
当前设备的刘海屏高度

单位为像素（px）

note_icon 备注
若当前设备为无刘海，则会返回0。

版本历史
v1.0

 
首次发布

v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
dbg("刘海高度为："..CL:GetLiuHaiHeight()) --获取当前设备的刘海屏高度

--此示例代码运行成功如下图所示。

GetLiuHaiHeight.png
<上一篇:获取iOS设备是否有刘海屏下一篇:获取当前的屏幕亮度>
GetMobileBrightness
获取当前的屏幕亮度

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dnot_support

更新时间：2022-09-16 00:00:00
此函数获取当前的屏幕亮度。

参考 SetMobileBrightness

语法
Luacopy 复制
CL:GetMobileBrightness()
参数
无

返回值
float

 
当前的屏幕亮度

具体可参考接口GUI:SetMobileBrightness的参数_Value的说明。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMobileBrightness(0.5)
dbg("当前的屏幕亮度："..CL:GetMobileBrightness())

--此示例代码运行成功后，控制台会输出“当前的屏幕亮度：0.5”。
<上一篇:获取当前设备的刘海屏高度下一篇:获取网络信号强度>
GetNetSignalLevel
获取网络信号强度

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2022-05-27 00:00:00
此函数获取网络信号的强度。

语法
Luacopy 复制
CL:GetNetSignalLevel()

参数
无

 
返回值
int

 
网络信号强度。

范围为0~5，强度依次增大。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前的屏幕亮度下一篇:判断当前是否为WiFi连接状态>
IsWifi
判断当前是否为WiFi连接状态

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数判断设备当前是否为WiFi连接状态。

语法
Luacopy 复制
CL:IsWifi()

参数
无

 
返回值
bool

 
设备当前处于WiFi状态则返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取网络信号强度下一篇:设置设备无操作后执行指定函数的间隔>
SetAFKInterval
设置设备无操作后执行指定函数的间隔

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dnot_support

更新时间：2022-09-16 00:00:00
此函数设置无触屏操作后执行指定回调函数的时间间隔。

相关函数如下（函数名称不支持自定义）：

（1）AFKProcess()函数：设备无操作时执行的回调函数

（1）AFKResume()函数：触摸屏幕后执行的回调函数

应在LogicFunction.lua文件中添加AFKProcess()函数和AFKResume()函数。

以时间间隔10秒为例，设置了此接口后，若10秒无操作则会自动执行AFKProcess()函数，之后再触摸屏幕则会调用AFKResume()函数。

语法
Luacopy 复制
CL:SetAFKInterval(
    _Interval
)
参数
_Interval

float

 
设置的时间间隔

单位为秒（s）

note_icon 备注
若此参数设置为0，则代表功能关闭（即无操作后不会执行AFKProcess()函数）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetAFKInterval(15) --设置设备无操作后执行指定函数的间隔
--无操作，隐藏特效
function  AFKProcess()
    UI:Lua_ChatMsg("无操作，隐藏特效")
    CL:EnableEffect(1,false)    --场景特效
    CL:EnableEffect(2,false)    --技能特效
    CL:EnableEffect(3,false)    --受击特效
    CL:SetBrightness(0.5)  --设置场景亮度
    CL:OnShowHide()  --显示（或者隐藏）其他玩家
    for i = 1, 10 do    --设置游戏画质设置
        if CL:GetGraphicsQualitySetting(i) then  --记录原本的设置
            CL:SetPlayerCustomData("GraphicsQuality"..i,1)
            CL:SavePlayerCustomData()
        else
            CL:SetPlayerCustomData("GraphicsQuality"..i,0)
            CL:SavePlayerCustomData()    
        end
        CL:SetGraphicsQualitySetting(i, false)
    end  
end
--有操作，还原特效
function AFKResume()
    UI:Lua_ChatMsg("有操作，还原特效")
    CL:EnableEffect(1,true)    --场景特效
    CL:EnableEffect(2,true)    --技能特效
    CL:EnableEffect(3,true)    --受击特效
    CL:SetBrightness(1)  --设置场景亮度
    CL:OnShowHide()  --显示（或者隐藏）其他玩家
    for i = 1, 10 do    --设置游戏画质设置
        if CL:GetPlayerCustomData("GraphicsQuality"..i) == 1 then
            CL:SetGraphicsQualitySetting(i, true)  
        end
    end
end

--若15秒无操作则会自动执行AFKProcess()函数，之后再触摸屏幕则会调用AFKResume()函数。
<上一篇:判断当前是否为WiFi连接状态下一篇:设置屏幕亮度>
SetMobileBrightness
设置屏幕亮度

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dnot_support

更新时间：2022-09-16 00:00:00
此函数设置屏幕亮度。

参考 GetMobileBrightness

语法
Luacopy 复制
CL:SetMobileBrightness(
    _Value
)
参数
_Value

float

 
要设置的屏幕亮度

填写范围：0.0-1.0

-1.0跟随系统的屏幕亮度设置

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMobileBrightness(0.5)
dbg("当前的屏幕亮度："..CL:GetMobileBrightness())

--此示例代码运行成功后，控制台会输出“当前的屏幕亮度：0.5”。
<上一篇:设置设备无操作后执行指定函数的间隔

