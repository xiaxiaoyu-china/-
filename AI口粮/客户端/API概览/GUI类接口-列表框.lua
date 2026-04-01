列表框控件概览
更新时间：2022-04-19 00:00:00
列表框控件允许用户在一个列表中选择一个或多个选项。列表框控件允许自定义背景图片和滚动条图片的资源。

创建控件
你可以使用下表所列的接口，创建列表框控件。

接口名	中文名	返回值类型	功能描述	适用客户端
ListBoxCreate	创建列表框控件	
int

此函数以指定的窗口作为父窗口，新建一个列表框控件。	手游、端游
你可以使用如下接口添加，删除或清空列表框中的项目。

接口名	中文名	返回值类型	功能描述	适用客户端
ListBoxAddStr	向列表框中添加条目	
无

此函数向指定的列表框控件添加文本条目，并使用默认的文本颜色。	手游、端游
ListBoxAddString	向列表框中添加自定义颜色的条目	
无

此函数向指定的列表框控件添加文本条目，并可设置文本的颜色。	手游、端游
ListBoxClear	清空列表框所有内容	
无

此函数清空指定列表框控件的所有条目内容。	手游、端游
ListBoxDelString	删除列表框中指定的条目	
无

此函数根据索引删除指定列表框控件的条目。	手游、端游
设置控件
你可以使用下表所列的接口，设置列表框控件的项目列数、项目行高、选中条目和背景图片等属性。

接口名	中文名	返回值类型	功能描述	适用客户端
ListBoxSetColumnFmt	设置列表框某列的显示格式	
无

此函数设置指定根据列表框控件中某列的显示格式。	手游、端游
ListBoxSetColumnNum	设置列表框的列数	
无

此函数设置指定列表框控件的列数。	手游、端游
ListBoxSetColumnPos	设置列表框中某列的位置	
无

此函数设置指定列表框控件中某列的位置。	手游、端游
ListBoxSetCurSel	设置列表框的选中条目	
无

此函数根据行索引和列索引设置指定列表框控件的选中条目。	手游、端游
ListBoxSetDefaultColor	修改列表框的各种默认颜色	
无

此函数支持修改列表框控件的各种默认颜色，包括默认背景颜色、默认文本颜色、默认选中项的背景颜色或者默认鼠标悬浮所在项的背景颜色。	手游、端游
ListBoxSetFillAllLineBack	设置列表框条目填充背景的绘制方式	
无

此函数设置是对整行还是单个条目进行填充背景的绘制。可控制列表框条目被选中（或端游中鼠标悬停于条目上）时的背景填充方式。	手游、端游
ListBoxSetOffsetX	设置列表框条目的水平偏移量	
无

此函数设置指定列表框控件中条目的水平偏移量。	手游、端游
ListBoxSetOffsetY	设置列表框的条目行高	
无

此函数设置指定列表框控件中各个条目之间的垂直间隔，即行间距。	手游、端游
ListBoxSetScrollBarImage	设置列表框中滚动条的图片	
无

此函数设置列表框控件中滚动条的图片。	手游、端游
ListBoxSetSlideUpDown	设置列表框控件自身是否可滑动	
无

此函数设置列表框控件自身是否可上下滑动。	手游
获取控件信息
在创建或设置列表框控件后，可以通过以下接口获取列表框控件项目个数、行号、列号等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
ListBoxGetCurSelCol	获取列表框选中条目的列号	
int

此函数获取指定列表框控件中被选中条目的列号。	手游、端游
ListBoxGetCurSelLine	获取列表框选中条目的行号	
int

此函数获取指定列表框控件选中条目的行号。	手游、端游
ListBoxGetLineCount	获取列表框中的条目个数	
int

此函数获取指定列表框中的条目个数。	手游、端游
ListBoxGetLineString	获取列表框中指定行数第一列的条目内容	
string

此函数获取指定列表框控件中的指定行数第一列的条目内容。	手游、端游
ListBoxGetScrollBarImageData	获取列表框中滚动条的图片资源ID	
bool

此函数获取指定列表框中滚动条的两端方向按钮、滑块和滚动条背景的图片资源ID。	手游、端游
ListBoxGetString	获取列表框指定行数和列数的条目内容	
string

此函数获取指定列表框控件中指定行数和列数的条目内容	手游、端游
<上一篇:编辑框控件概览下一篇:多功能编辑框控件概览>
ListBoxSetColumnFmt
设置列表框某列的显示格式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-07-03 00:00:00
此函数设置指定根据列表框控件中某列的显示格式。

caution_icon 注意
2D手游调用此函数无任何效果。

语法
Luacopy 复制
GUI:ListBoxSetColumnFmt(
    _HandleID,
    _ColIdx,
    _Format
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_ColIdx

int

 
指定列号。

0代表第一列，以此类推。

_Format

unsigned int

 
显示格式。

0默认值，左对齐

1居中

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",200,200,150,100) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxSetColumnFmt(_GUIHandle,0,1) --设置为居中
end

--此示例代码创建单列的列表框，文字居中对齐。

ListBoxSetColumnFmt
下一篇:设置列表框的列数>
ListBoxSetColumnNum
设置列表框的列数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定列表框控件的列数。

语法
Luacopy 复制
GUI:ListBoxSetColumnNum(
    _HandleID,
    _ColNum
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_ColNum

int

 
指定列数。

如2表示2列。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框为2列
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
end

--此示例代码成功创建了如下图所示的2列列表框控件。

ListBoxSetColumnNum
<上一篇:设置列表框某列的显示格式下一篇:设置列表框中某列的位置>
ListBoxSetColumnPos
设置列表框中某列的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定列表框控件中某列的位置。

语法
Luacopy 复制
GUI:ListBoxSetColumnPos(
    _HandleID,
    _ColumnIdx_,
    _Pos
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_ColumnIdx_

int

 
指定列号。

0代表第一列，以此类推。

_Pos

int

 
指定位置

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",200,200,300,130) -创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框为2列
    GUI:ListBoxSetColumnPos(_GUIHandle,0,50) --设置第1列的位置
    GUI:ListBoxSetColumnPos(_GUIHandle,1,210) --设置第2列的位置
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
end

--此示例代码成功创建了如下图所示的列表框控件。

ListBoxSetColumnPos
<上一篇:设置列表框的列数下一篇:设置列表框的选中条目>
ListBoxSetCurSel
设置列表框的选中条目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数根据行索引和列索引设置指定列表框控件的选中条目。

语法
Luacopy 复制
GUI:ListBoxSetCurSel(
    _HandleID, 
    _LineIdx, 
    _ColIdx
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_LineIdx

int

 
条目行数的索引

索引从0开始，以此类推。

_ColIdx

int

 
条目列数的索引

索引从0开始，以此类推。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) -创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框为2列
    --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) 
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxSetCurSel(_GUIHandle, 1, 1) --设置选中第2行第2列的条目
end
<上一篇:设置列表框中某列的位置下一篇:修改列表框的各种默认颜色>
ListBoxSetDefaultColor
修改列表框的各种默认颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数支持修改列表框控件的各种默认颜色，包括默认背景颜色、默认文本颜色、默认选中项的背景颜色或者默认鼠标悬浮所在项的背景颜色。

列表框控件的默认背景颜色、默认文本颜色、默认选中项的背景颜色和默认鼠标悬浮所在项的背景颜色如下图所示，其中条目1为被选中条目，条目3为鼠标悬浮所在项。

ListBoxSetDefaultColor_2.png
note_icon 备注
若要设置设置列表框控件的默认选中项的背景颜色或者默认鼠标悬浮所在项的背景颜色，则需要使用接口GUI:ListBoxSetFillAllLineBack关闭整行背景填充（即 GUI:ListBoxSetFillAllLineBack(_GUIHandle, false)）。

此接口可以修改指定列表框控件的默认文本颜色，若需要自定义某个文本条目的颜色则可使用接口GUI:ListBoxAddString添加条目。

语法
Luacopy 复制
GUI:ListBoxSetDefaultColor(
    _HandleID,
    _Type,
    _Color
)
参数
_HandleID

int

 
指定列表框控件的句柄

点击窗口句柄了解更多信息

_Type

int

 
需要修改默认颜色的部分

1默认背景颜色

2默认文本颜色

3默认选中项的背景颜色

4默认鼠标悬浮所在项的背景颜色

_Color

unsigned int

 
需要设置的颜色值

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetDefaultColor(_GUIHandle, 1, GUI:MakeARGB(100,0,0,255)) --设置列表框控件的默认背景颜色
    GUI:ListBoxSetDefaultColor(_GUIHandle, 2, GUI:MakeARGB(255,255,0,0)) --设置列表框控件的默认文本颜色
    GUI:ListBoxSetDefaultColor(_GUIHandle, 3, GUI:MakeARGB(155,255,100,0)) --设置列表框控件的默认选中项的背景颜色
    GUI:ListBoxSetDefaultColor(_GUIHandle, 4, GUI:MakeARGB(155,0,255,0)) --设置列表框控件的默认鼠标悬浮所在项的背景颜色
    GUI:ListBoxSetFillAllLineBack(_GUIHandle, false) --设置列表框条目填充背景的绘制方式为单个条目显示填充背景
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框控件的列数为2
    GUI:ListBoxAddStr(_GUIHandle, "条目1-默认") --添加条目1
    GUI:ListBoxAddStr(_GUIHandle, "条目2-默认") --添加条目2
    GUI:ListBoxAddStr(_GUIHandle, "条目3-默认") --添加条目3
    GUI:ListBoxAddStr(_GUIHandle, "条目4-默认") --添加条目4
end

--此示例代码运行成功如下图所示，其中条目1为被选中条目，条目3为鼠标悬浮所在项。

ListBoxSetDefaultColor.png
<上一篇:设置列表框的选中条目下一篇:设置列表框条目填充背景的绘制方式>
ListBoxSetFillAllLineBack
设置列表框条目填充背景的绘制方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
列表框条目被选中，或端游中鼠标悬停于条目之上时，会有不同填充背景的显示 。

如下图所示。

ListBoxSetFillAllLineBack.png
当设置列表框为多列（相关接口GUI:ListBoxSetColumnNum）时，可用此函数设置是对整行还是单个条目进行填充背景的绘制。

当设置为单个条目填充背景绘制时，可使用接口GUI:ListBoxSetDefaultColor自定义条目被选中和鼠标悬浮于条目之上的填充背景颜色。

语法
Luacopy 复制
GUI:ListBoxSetFillAllLineBack(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定列表框控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true整行显示填充背景（为默认值）

false单个条目显示填充背景

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",200,200,150,200) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框为2列
    GUI:ListBoxSetFillAllLineBack(_GUIHandle, true) --设置整行绘制填充背景
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
end

--此示例代码创建的列表框控件效果如下图。

ListBoxSetFillAllLineBack True

--单个条目绘制背景的效果如下图。

ListBoxSetFillAllLineBack False
<上一篇:修改列表框的各种默认颜色下一篇:设置列表框条目的水平偏移量>
ListBoxSetOffsetX
设置列表框条目的水平偏移量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定列表框控件中条目的水平偏移量。

语法
Luacopy 复制
GUI:ListBoxSetOffsetX(
    _HandleID,
    _Offset
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_Offset

int

 
条目的水平偏移量，单位为像素（px）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",200,200,150,200) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0)) --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED) --增加条目
    GUI:ListBoxSetOffsetX(_GUIHandle, 20) --设置条目横向偏移量为20px
    GUI:ListBoxSetOffsetY(_GUIHandle, 30) --设置条目间隔为30px
end

--此示例代码成功创建了如下图所示的列表框控件。各条目偏移控件最左边20px。

ListBoxSetOffset
<上一篇:设置列表框条目填充背景的绘制方式下一篇:设置列表框的条目行高>
ListBoxSetOffsetY
设置列表框的条目行高

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定列表框控件中各个条目之间的垂直间隔，即行间距。

note_icon 备注
实际行高即为字体高度与行间距之和。

语法
Luacopy 复制
GUI:ListBoxSetOffsetY(
    _HandleID,
    _Offset
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_Offset

int

 
行间距，单位为像素（px）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",200,200,150,200) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0)) --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED) --增加条目
    GUI:ListBoxSetOffsetX(_GUIHandle, 20) --设置条目横向偏移量为20px
    GUI:ListBoxSetOffsetY(_GUIHandle, 30) --设置条目行间距为30px
end

--此示例代码成功创建了如下图所示的列表框控件。各条目行间距为30px。

ListBoxSetOffset
<上一篇:设置列表框条目的水平偏移量下一篇:设置列表框中滚动条的图片>
ListBoxSetScrollBarImage
设置列表框中滚动条的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置列表框控件中滚动条的图片。

语法
Luacopy 复制
GUI:ListBoxSetScrollBarImage(
    _HandleID,
    _Up,
    _Mid,
    _Down,
    _BackImageID
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_Up

unsigned int

 
滚动条向上按钮图片资源ID

_Mid

unsigned int

 
滚动滑块图片资源ID

_Down

unsigned int

 
滚动条向下按钮图片资源ID

_BackImageID

unsigned int

 
滚动条背景图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",200,200,150,100) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetScrollBarImage(_GUIHandle,1900100003, 1900100003, 1900100003, 1900100120) --设置列表框中滚动条的图片
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目5-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目6-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目7-红色", COLOR_RED)
end

--此示例代码的效果如下图。

ListBoxSetScrollBarImage
<上一篇:设置列表框的条目行高下一篇:设置列表框控件自身是否可滑动>
ListBoxSetSlideUpDown
设置列表框控件自身是否可滑动

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2022-05-13 00:00:00
此函数设置列表框控件自身是否可上下滑动。

此函数用于控制列表框控件是否可在如下所框选的区域内进行上下滑动。

ListBoxSetSlideUpDown.png
语法
Luacopy 复制
GUI:ListBoxSetSlideUpDown(
    _HandleID,
    _IsSlidable
)
参数
_HandleID

int

 
指定列表框控件的句柄

点击窗口句柄了解更多信息

_IsSlidable

bool

 
列表框控件自身是否可滑动

true是

false否

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,150,150,80) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目0-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) --添加条目，颜色为红色
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED) --添加条目，颜色为红色
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxAddString(_GUIHandle, "条目5-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxAddString(_GUIHandle, "条目6-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxSetSlideUpDown(_GUIHandle, true) --设置列表框控件自身可滑动
    GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer) --使用背景缓存标记
end

--此示例代码运行成功如下图所示。

ListBoxSetSlideUpDown.gif
<上一篇:设置列表框中滚动条的图片
ListBoxGetCurSelCol
获取列表框选中条目的列号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定列表框控件中被选中条目的列号。

语法
Luacopy 复制
GUI:ListBoxGetCurSelCol(
    _HandleID
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

返回值
索引

int

 
选中条目的列号

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) -创建列表框
if _GUIHandle ~= 0 then
    --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) 
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    local _SelIdx = GUI:ListBoxGetCurSelCol(_HandleID) --获取选中条目的列号
end
下一篇:获取列表框选中条目的行号>
ListBoxGetCurSelLine
获取列表框选中条目的行号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定列表框控件选中条目的行号。

语法
Luacopy 复制
GUI:ListBoxGetCurSelLine(
    _HandleID
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

返回值
索引

int

 
选中条目的行号

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) -创建列表框
if _GUIHandle ~= 0 then
    --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) 
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    local _SelIdx = GUI:ListBoxGetCurSelLine(_HandleID) --获取选中条目的行号
end
<上一篇:获取列表框选中条目的列号下一篇:获取列表框中的条目个数>
ListBoxGetLineCount
获取列表框中的条目个数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定列表框中的条目个数。

语法
Luacopy 复制
GUI:ListBoxGetLineCount(
    _HandleID
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

返回值
数量

int

 
条目的个数

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) -创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框为2列
    --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) 
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxSetCurSel(_GUIHandle, 1, 1) --设置选中第2行第2列的条目
    local _ListItemNum = GUI:ListBoxGetLineCount(_GUIHandle) --获取条目数量
end
<上一篇:获取列表框选中条目的行号下一篇:获取列表框中指定行数第一列的条目内容>
ListBoxGetLineString
获取列表框中指定行数第一列的条目内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定列表框控件中的指定行数第一列的条目内容。

语法
Luacopy 复制
GUI:ListBoxGetLineString(
    _HandleID,
    _LineIdx
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_LineIdx

int

 
条目行数的索引

索引从0开始，以此类推。

返回值
参数

string

 
条目内容

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) -创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框为2列
    --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) 
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxSetCurSel(_GUIHandle, 1, 1) --设置选中第2行第2列的条目
    local _ListItem = GUI:ListBoxGetLineString(_GUIHandle, 1) --获取第2行第1列的条目的内容
end
<上一篇:获取列表框中的条目个数下一篇:获取列表框中滚动条的图片资源ID>
ListBoxGetScrollBarImageData
获取列表框中滚动条的图片资源ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定列表框中滚动条的两端方向按钮、滑块和滚动条背景的图片资源ID。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的图片资源ID数值存储在LuaRet中。

LuaRet[1]向上按钮的图片资源ID

LuaRet[2]滑块的图片资源ID

LuaRet[3]向下按钮的图片资源ID

LuaRet[4]滚动条背景的图片资源ID

语法
Luacopy 复制
GUI:ListBoxGetScrollBarImageData(
    _HandleID
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

返回值
操作结果

bool

 
true获取成功。

false获取失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",200,200,150,100) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetScrollBarImage(_GUIHandle,1900100003, 1900100003, 1900100003, 1900100120) --设置列表框中滚动条的图片
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目5-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目6-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目7-红色", COLOR_RED)
    if GUI:ListBoxGetScrollBarImageData(_GUIHandle) then
        local _LBScrollUBtnImgID = LuaRet[1] --获取向上按钮的图片资源ID
        local _LBScrollForeImgID = LuaRet[2] --获取滑块的图片资源ID
        local _LBScrollDBtnImgID = LuaRet[3] --获取向下按钮的图片资源ID
        local _LBScrollBackImgID = LuaRet[4] --获取背景图片资源ID
    end
end
<上一篇:获取列表框中指定行数第一列的条目内容下一篇:获取列表框指定行数和列数的条目内容>
ListBoxGetString
获取列表框指定行数和列数的条目内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定列表框控件中指定行数和列数的条目内容

语法
Luacopy 复制
GUI:ListBoxGetString(
    _HandleID,
    _LineIdx,
    _ColIdx
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_LineIdx

int

 
条目行数的索引

索引从0开始，以此类推。

_ColIdx

int

 
条目列数的索引

索引从0开始，以此类推。

返回值
参数

string

 
选中的条目内容

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) -创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxSetColumnNum(_GUIHandle,2) --设置列表框为2列
    --增加条目
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) 
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED)
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0))
    GUI:ListBoxSetCurSel(_GUIHandle, 1, 1) --设置选中第2行第2列的条目
    local _ListItem = GUI:ListBoxGetString(_GUIHandle, 1, 1) --获取第2行第2列的条目的内容
end
<上一篇:获取列表框中滚动条的图片资源ID
ListBoxAddStr
向列表框中添加条目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数向指定的列表框控件添加文本条目，并使用默认的文本颜色。

可使用接口GUI:ListBoxSetDefaultColor自定义默认文本颜色。

语法
Luacopy 复制
GUI:ListBoxAddStr(
    _HandleID,
    _Str
)
参数
_HandleID

int

 
指定列表框控件的句柄

点击窗口句柄了解更多信息

_Str

string

 
文本条目的内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,200,130) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddStr(_GUIHandle, "条目1-默认") --添加条目1
    GUI:ListBoxAddStr(_GUIHandle, "条目2-默认") --添加条目2
    GUI:ListBoxAddStr(_GUIHandle, "条目3-默认") --添加条目3
    GUI:ListBoxAddStr(_GUIHandle, "条目4-默认") --添加条目4
end

--此示例代码运行成功如下图所示。

ListBoxAddStr.png
下一篇:向列表框中添加自定义颜色的条目>
ListBoxAddString
向列表框中添加自定义颜色的条目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数向指定的列表框控件添加文本条目，并可设置文本的颜色。

语法
Luacopy 复制
GUI:ListBoxAddString(
    _HandleID,
    _Str,
    _Color
)
参数
_HandleID

int

 
指定列表框控件的句柄

点击窗口句柄了解更多信息

_Str

string

 
文本条目的内容

_Color

unsigned int

 
文本颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,130,130) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) --添加条目1，颜色为红色
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目2，颜色为绿色
end

--此示例代码成功创建了如下图所示的列表框控件。

ListBoxAddString
<上一篇:向列表框中添加条目下一篇:清空列表框所有内容>
ListBoxClear
清空列表框所有内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数清空指定列表框控件的所有条目内容。

语法
Luacopy 复制
GUI:ListBoxClear(
    _HandleID
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,130,130) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) --添加条目，颜色为红色
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxClear(_GUIHandle) --清空所有条目
end
<上一篇:向列表框中添加自定义颜色的条目下一篇:删除列表框中指定的条目>
ListBoxDelString
删除列表框中指定的条目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数根据索引删除指定列表框控件的条目。

语法
Luacopy 复制
GUI:ListBoxDelString(
    _HandleID,
    _LineIdx
)
参数
_HandleID

int

 
指定列表框控件的句柄。

点击窗口句柄了解更多信息。

_LineIdx

int

 
要删除的条目索引。

索引从0开始，以此类推。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBoxExample",300,70,130,130) --创建列表框
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) --添加条目，颜色为红色
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxDelString(_GUIHandle, 0) --删除第一个条目
end
<上一篇:清空列表框所有内容


















