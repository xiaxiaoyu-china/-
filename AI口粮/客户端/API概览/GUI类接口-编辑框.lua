编辑框控件概览
更新时间：2023-03-28 00:00:00
编辑框控件可以用于获取用户的输入或在游戏中显示特定的文本。

通常情况下，编辑框可用来编辑文本，如设置了多行显示，文本也会根据控件的大小被自动换行。编辑框控件提供了基本的功能，如要显示更多类型的文本，如可点击的链接，请参见多功能编辑框部分。

创建控件
你可以使用下表所列的接口，创建编辑框控件。

接口名	中文名	返回值类型	功能描述	适用客户端
EditCreate	创建编辑框控件	
int

此函数以指定的窗口作为父窗口，新建一个编辑框控件。	手游、端游、H5
设置控件
你可以使用下表所列的接口，设置编辑框控件上显示的文字、文字颜色、字体、对齐方式和类型等。

接口名	中文名	返回值类型	功能描述	适用客户端
EditSetBNumber	设置编辑框是否为数字编辑框	
无

此函数设置指定编辑框控件是否为数字编辑框。	手游、端游、H5
EditSetCanEdit	设置编辑框是否可以编辑	
无

此函数设置指定编辑框控件是否可以进行编辑。	手游、端游、H5
EditSetCurSorPos	设置编辑框的光标位置	
无

此函数设置指定编辑框控件的光标位置。	手游、端游
EditSetEditImageOffset	设置编辑框背景图片的偏移值	
无

此函数设置指定编辑框控件背景图片的偏移值。	手游、端游
EditSetFontCenter	设置编辑框的文本居中显示	
无

此函数设置指定编辑框控件的文本以居中显示。	手游、端游、H5
EditSetFontM	设置编辑框文本的字体	
无

此函数设置指定编辑框控件的文本字体。	手游、端游、H5
EditSetInt	设置编辑框文本内容为指定的数字	
无

此函数设置指定编辑框控件中的文本内容为指定的数字。	手游、端游、H5
EditSetIsPassWord	设置编辑框是否为密码编辑框	
无

此函数设置指定编辑框控件是否为密码编辑框。	手游、端游、H5
EditSetLimitStringSize	设置编辑框是否限制字体大小	
无

此函数设置指定编辑框控件是否限制字体的大小。	手游、端游
EditSetMaxCharNum	设置编辑框允许的最大字符个数	
无

此函数设置指定编辑框控件所允许输入的最大字符个数。	手游、端游、H5
EditSetMaxNumber	设置编辑框中可输入的最大数值	
无

此函数设置编辑框中可输入的最大数值。	手游、端游
EditSetMultiLineEdit	设置编辑框是否可多行编辑	
无

此函数设置指定编辑框控件是否可以多行编辑。	手游、端游、H5
EditSetRememberStrNum	设置编辑框保留的字符串数目	
无

此函数设置指定编辑框控件保留的历史输入的字符串数目。	手游、端游
EditSetScrollText	设置编辑框文本向左滚动的速度	
无

此函数设置编辑框控件中文本内容向左滚动的速度。	手游、端游
EditSetSelectPos	设置编辑框中要选择的内容的起始位置	
无

此函数设置编辑框中要选择的内容的起始位置。	端游
EditSetShowPassword	设置编辑框是否明文显示密码	
无

此函数设置指定编辑框控件是否以明文的方式显示密码。	手游、H5
EditSetTextColor	设置编辑框文本颜色	
无

此函数设置指定编辑框控件的文本颜色。	手游、端游、H5
EditSetTextM	设置编辑框的文本内容	
无

此函数设置指定编辑框控件的文本内容。	手游、端游、H5
EditSetDrawSelectBgWhenCantEdit	设置选择文本内容时是否显示背景条	
无

此函数设置当编辑框不可编辑的状态下，鼠标选中其文本时是否显示蓝色的背景条。	端游
EditSetCurSorHeight	设置编辑框控件光标高度	
无

此函数设置编辑框控件光标高度。	端游
EditSetTextGrowColor	设置编辑框控件中文本描边颜色	
无

此函数设置编辑框控件中文本描边颜色。	手游、端游
EditSetIsCurrency	设置编辑框为货币类型	
无

此函数设置编辑框为货币类型。	手游、端游
EditSetOffSet	设置编辑框中文本的行间距	
无

此函数设置编辑框中文本中文本行与行之间的垂直间隔，即行间距。	手游、端游
EditSetTotalLine	设置编辑框可输入的最大行数	
无

此函数设置指定编辑框控件可输入的最大行数。
当输入内容超过设定的行数时，将无法继续输入。	手游、端游
获取控件信息
在创建或设置编辑框控件后，可以通过以下接口获取编辑框控件的文字、类型等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
EditGetBNumber	获取编辑框是否为数字编辑框	
bool

此函数获取指定编辑框控件是否为数字编辑框。	手游、端游、H5
EditGetCanEdit	获取编辑框是否可以编辑	
bool

此函数获取指定编辑框控件是否可以进行编辑的属性。	手游、端游、H5
EditGetInt	获取编辑框文本内容中的整数	
int

此函数获取指定编辑框控件文本内容中的整数，且仅对数字开头的文本有效。	手游、端游、H5
EditGetIsPassWord	获取编辑框是否为密码编辑框	
bool

此函数获取指定编辑框控件是否为密码编辑框。	手游、端游、H5
EditGetMaxCharNum	获取编辑框允许的最大字符个数	
int

此函数获取指定编辑框控件所允许输入的最大字符个数。	手游、端游、H5
EditGetMaxNumber	获取编辑框设置的可输入的最大数值	
string

此函数获取编辑框设置的可输入的最大数值。	手游、端游
EditGetMultiLineEdit	获取编辑框是否可多行编辑	
bool

此函数获取指定编辑框控件是否可以多行编辑的属性。	手游、端游、H5
EditGetRememberStrNum	获取编辑框保留的字符串数目	
int

此函数获取指定编辑框控件保留的历史输入的字符串数目。	手游、端游
EditGetShowPassword	获取编辑框是否明文显示密码	
bool

此函数获取指定编辑框控件是否以明文的方式显示密码。	手游、H5
EditGetTextM	获取编辑框的文本内容	
string

此函数获取指定编辑框控件的文本内容。	手游、端游、H5
EditGetIsCurrency	获取编辑框是否为货币类型	
bool

此函数获取编辑框是否为货币类型。	手游、端游
EditGetTotalLine	获取编辑框可输入的最大行数	
int

此函数获取指定编辑框控件可输入的最大行数。	手游、端游
EditGetCurPosX	获取编辑框当前光标位置的X坐标	
int

此函数获取指定编辑框控件当前的光标位置的X坐标。	手游、端游
EditGetCurPosY	获取编辑框当前光标位置的Y坐标	
int

此函数获取指定编辑框控件当前的光标位置的Y坐标。	手游、端游
<上一篇:按钮控件概览下一篇:列表框控件概览>
EditSetBNumber
设置编辑框是否为数字编辑框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件是否为数字编辑框。

语法
Luacopy 复制
GUI:EditSetBNumber(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
设置指定编辑框控件是否为数字编辑框

true设置指定编辑框控件为数字编辑框（即只能输入数字0~9）

false设置指定编辑框控件不是数字编辑框

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetBNumber(_GUIHandle, true) --设置指定编辑框控件为数字编辑框
end
下一篇:设置编辑框是否可以编辑>
EditSetCanEdit
设置编辑框是否可以编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件是否可以进行编辑。

语法
Luacopy 复制
GUI:EditSetCanEdit(
    _HandleID,
    _CanEdit
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_CanEdit

bool

 
是否可编辑

true可编辑

false不可编辑

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置编辑框的文本字体为隶书
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框的文本内容为“设置”
    GUI:EditSetCanEdit(_GUIHandle, false) --设置编辑框为不可编辑状态
end
<上一篇:设置编辑框是否为数字编辑框下一篇:设置编辑框控件光标高度>
EditSetCurSorHeight
设置编辑框控件光标高度

更新时间：2021-09-07 00:00:00
此函数设置编辑框控件光标高度。

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

.
语法
Luacopy 复制
GUI:EditSetCurSorHeight(
    _HandleID,
    _Height
)
参数
_HandleID

int

 
编辑框句柄

点击窗口句柄了解更多信息。

_Height

Int

 
光标高度

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _GUIHandle = GUI:EditCreate(_Parent,"TrueNameEdit", 20,  6, 310, 20)
if _GUIHandle ~= 0 then
    GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,51,51,51))
    GUI:EditSetMaxCharNum(_GUIHandle, 21)
    GUI:EditSetTextM(_GUIHandle,"")
    GUI:EditSetFontM(_GUIHandle, "TitleFont1")
    GUI:EditSetUseTextGrow(_GUIHandle,false)
    GUI:EditSetCurSorHeight(_GUIHandle,16) --设置编辑框控件光标高度为16
end

--此示例代码运行成功如下图所示。

EditSetCurSorHeight
<上一篇:设置编辑框是否可以编辑下一篇:设置编辑框的光标位置>
EditSetCurSorPos
设置编辑框的光标位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件的光标位置。

与接口GUI:EditSetSelectPos结合使用可选中编辑框中内容的某一段（即从接口接口GUI:EditSetSelectPos指定位置到光标指定位置之间的内容）。

接口GUI:EditSetSelectPos用于指定选择内容的起始位置，此接口用于指定选择内容的结束位置。

语法
Luacopy 复制
GUI:EditSetCurSorPos(
    _HandleID,
    _CurSorPos
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_CurSorPos

int

 
光标位置

note_icon 备注
若此参数设置为n，则光标会显示在第n个字符后面。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetCurSorPos(_GUIHandle, 10)
end
<上一篇:设置编辑框控件光标高度下一篇:设置选择文本内容时是否显示背景条>
EditSetDrawSelectBgWhenCantEdit
设置选择文本内容时是否显示背景条

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置当编辑框不可编辑的状态下，鼠标选中其文本时是否显示蓝色的背景条。

默认的设置为显示蓝色的背景条。

EditSetDrawSelectBgWhenCantEdit

语法
Luacopy 复制
GUI:EditSetDrawSelectBgWhenCantEdit(
    _HandleID,
    _Value
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

_Value

bool

 
是否显示蓝色的高亮条。

true显示

false不显示

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置文本字体为隶书
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本文字为“设置”
    GUI:EditSetCanEdit(_GUIHandle, false) --设置为不可编辑
    GUI:EditSetDrawSelectBgWhenCantEdit(_GUIHandle, false) --设置不显示蓝色的背景条
end
<上一篇:设置编辑框的光标位置下一篇:设置编辑框背景图片的偏移值>
EditSetEditImageOffset
设置编辑框背景图片的偏移值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-07-18 00:00:00
此函数设置指定编辑框控件背景图片的偏移值。

语法
Luacopy 复制
GUI:EditSetEditImageOffset(
    _HandleID,
    _XOffset,
    _YOffset
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_XOffset

int

 
横坐标偏移值

_YOffset

int

 
纵坐标偏移值

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetEditImageOffset(_GUIHandle, -110, -150)
end
<上一篇:设置选择文本内容时是否显示背景条下一篇:设置编辑框的文本居中显示>
EditSetFontCenter
设置编辑框的文本居中显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件的文本以居中显示。

语法
Luacopy 复制
GUI:EditSetFontCenter(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontCenter(_GUIHandle) --设置文本为居中显示
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本文字为“设置”
end
<上一篇:设置编辑框背景图片的偏移值下一篇:设置编辑框文本的字体>
EditSetFontM
设置编辑框文本的字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件的文本字体。

语法
Luacopy 复制
GUI:EditSetFontM(
    _HandleID,
    _Text
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Text

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置文本字体为隶书
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本文字为“设置”
end

--此示例代码成功创建了如下图所示的编辑框控件。

EditSetFontM
<上一篇:设置编辑框的文本居中显示下一篇:设置编辑框控件文本渐变效果>
EditSetGradient
设置编辑框控件文本渐变效果

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-09-04 17:45:00
此函数设置编辑框控件文本渐变效果。

caution_icon 注意
使用渐变接口后，文本颜色接口（GUI:EditSetTextColor、GUI:WndSetTextColorM）就会无效。

语法
Luacopy 复制
GUI:EditSetGradient(
    handle,
    obj
)
参数
handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

obj

table

 
渐变颜色配置

Luacopy 复制
obj = {
  linear_gradient = {
    angle, 
    start_color, 
    end_color
  }
}
--linear_gradient: 线性渐变
--angle: 渐变方向(0-360度，默认0度，表示从底到顶渐变，顺时针方向增加)
--start_color: 起始颜色，参考接口MakeARGB或MakeColor
--end_color: 终止颜色，参考接口MakeARGB或MakeColor

--备注：可以参考网页CSS的linear-gradient属性
返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "测试渐变",-70, 120,124, 20)
if _GUIHandle ~= 0 then
    GUI:EditSetGradient(_GUIHandle, {linear_gradient={90, GUI:MakeARGB(255,255,0,255), GUI:MakeARGB(255,255,255,0)}})
    GUI:EditSetFontCenter(_GUIHandle)
    GUI:WndSetFontSize(_GUIHandle, 19)
    GUI:EditSetTextM(_GUIHandle,"测试渐变")
end

--此示例代码运行成功如下图所示。

EditSetGradient.png
<上一篇:设置编辑框文本的字体下一篇:设置编辑框文本内容为指定的数字>
EditSetInt
设置编辑框文本内容为指定的数字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件中的文本内容为指定的数字。

语法
Luacopy 复制
GUI:EditSetInt(
    _HandleID,
    _Data
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Data

int

 
要设置的数字

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置编辑框的文本字体为隶书
    GUI:EditSetInt(_GUIHandle, 12345) --设置编辑框的文本内容为数字12345
end

--此示例代码成功创建了如下图所示的编辑框控件。

EditSetInt
<上一篇:设置编辑框控件文本渐变效果下一篇:设置编辑框为货币类型>
EditSetIsCurrency
设置编辑框为货币类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-02-11 00:00:00
此函数设置编辑框为货币类型。

货币类型的编辑框显示为单行，文字内容仅支持数字，且每3位自动添加一个千分位标记。

语法
Luacopy 复制
GUI:EditSetIsCurrency(
    _HandleID,
    _IsCurrency
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_IsCurrency

bool

 
是否为货币类型

true货币类型

false默认类型

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "example",400,400,200,30)
if _GUIHandle ~= 0 then
    GUI:EditSetIsCurrency(_GUIHandle,true) --设置编辑框为货币类型
    GUI:EditSetTextM(_GUIHandle,"599900000")
end

--此示例代码成功创建了如下图所示的货币类型编辑框。

EditSetIsCurrency
<上一篇:设置编辑框文本内容为指定的数字下一篇:设置编辑框是否为密码编辑框>
EditSetIsPassWord
设置编辑框是否为密码编辑框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件是否为密码编辑框。

当编辑框为密码编辑框时，输入的文本内容为非明码，以*字符遮盖。

语法
Luacopy 复制
GUI:EditSetIsPassWord(
    _HandleID,
    _IsPassword
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_IsPassword

bool

 
编辑框是否为密码编辑框

true密码编辑框

false普通编辑框

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetIsPassWord(_GUIHandle, true) --设置编辑框为密码编辑框
    GUI:EditSetTextM(_GUIHandle,"abcde") --设置编辑框的文本内容为“abcde”
end

--此示例代码成功创建了如下图所示的编辑框控件。

EditSetTextM
<上一篇:设置编辑框为货币类型下一篇:设置编辑框是否限制字体大小>
EditSetLimitStringSize
设置编辑框是否限制字体大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件是否限制字体的大小。

语法
Luacopy 复制
GUI:EditSetLimitStringSize(
    _HandleID,
    _LimitSize
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

_LimitSize

bool

 
true限制字体大小

false不限制字体大小

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetLimitStringSize(_GUIHandle, false) --设置为不限制字体大小
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本文字为“设置”
end
<上一篇:设置编辑框是否为密码编辑框下一篇:设置编辑框允许的最大字符个数>
EditSetMaxCharNum
设置编辑框允许的最大字符个数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件所允许输入的最大字符个数。

note_icon 备注
若没有使用接口设置编辑框允许输入的最大字符个数，则端游和手游均默认编辑框控件允许输入的最大字符个数为256。

若使用此接口（或者接口Lua_EditSetMaxCharNum）设置编辑框允许输入的最大字符个数，则编辑框控件允许输入的最大字符个数为该接口设置的值。

若使用此接口（或者接口Lua_EditSetMaxCharNum）设置编辑框允许的最大字符个数为0时，则代表对编辑框控件允许输入的最大字符个数不做限制。

当编辑框控件的文本内容对应的字符个数超出允许输入的最大字符个数时，会显示未超出部分的文本内容。

一个汉字相当于两个字符。

语法
Luacopy 复制
GUI:EditSetMaxCharNum(
    _HandleID,
    _MaxCount
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_MaxCount

int

 
允许输入的最大字符个数

note_icon 备注
若此参数为0，则代表对编辑框控件最大可显示字节数不做限制。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxCharNum(_GUIHandle, 5) --设置编辑框允许的最大字符个数为5
    GUI:EditSetTextM(_GUIHandle,"1234567") --设置编辑框的文本内容为“1234567”
end

--此示例代码运行成功如下图所示（编辑框控件只显示未超出设置范围的文本内容）。

EditSetMaxCharNum.png
<上一篇:设置编辑框是否限制字体大小下一篇:设置编辑框中可输入的最大数值>
EditSetMaxNumber
设置编辑框中可输入的最大数值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-02-25 00:00:00
此函数设置编辑框中可输入的最大数值。

参考 EditGetMaxNumber

语法
Luacopy 复制
GUI:EditSetMaxNumber(
    _HandleID,
    _Type,
    _Number
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Type

int

 
编辑框的类型

0普通编辑框

1不受最大字符数限制的数字编辑框

2不受最大字符数限制的货币数字编辑框

-1受最大字符数限制的数字编辑框

-2受最大字符数限制的货币数字编辑框

note_icon 备注
编辑框允许的最大字符个数可通过接口GUI:EditSetMaxCharNum进行设置。

_Number

string

 
最大数值

note_icon 备注
当参数_Type设置为0时，此参数不生效。

note_icon 备注

在参数_Type设置为-1或-2的前提下，若参数_Number设置的数值对应的字符数大于此编辑框控件允许输入的字符数，则实际可输入的最大数值为当前字符数所对应的最大值，具体可参考右侧示例。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--设置一个普通编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit0控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg0",4002450038,150,200)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit0",160,200,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,0,"1000") --设置编辑框0中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置编辑框0允许的最大字符个数为4
    dbg("编辑框0中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取编辑框0中可输入的最大数值
end

--此示例代码运行成功如下图所示（在编辑框中输入9999），同时控制台会输出如下内容。

EditSetMaxNumber.png

EditGetMaxNumber.png
--设置一个不受最大字符数限制的数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit1控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg1",4002450038,150,200 + 40)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit1",160,200 + 40,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,1,"10000") --设置数字编辑框1中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框1允许的最大字符个数为4
    dbg("数字编辑框1中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框1中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_2.png

EditGetMaxNumber_2.png
--设置一个不受最大字符数限制的货币数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit2控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg2",4002450038,150,200 + 80)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit2",160,200 + 80,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,2,"10000") --设置数字编辑框2中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框2允许的最大字符个数为4
    dbg("数字编辑框2中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框2中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_3.png

EditGetMaxNumber_3.png
--设置一个受最大字符数限制的数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit3控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg3",4002450038,150,200 + 120)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit3",160,200 + 120,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,-1,"10000") --设置数字编辑框3中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框3允许的最大字符个数为4
    dbg("数字编辑框3中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框3中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_4.png

EditGetMaxNumber_4.png
--设置一个受最大字符数限制的货币数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit4控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg4",4002450038,150,200 + 160)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit4",160,200 + 160,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,-2,"10000") --设置数字编辑框4中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框4允许的最大字符个数为4
    dbg("数字编辑框4中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框4中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_5.png

EditGetMaxNumber_5.png
<上一篇:设置编辑框允许的最大字符个数下一篇:设置编辑框是否可多行编辑>
EditSetMultiLineEdit
设置编辑框是否可多行编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件是否可以多行编辑。

note_icon 备注
当编辑框控件高度不够时，后面几行可能无法显示。

语法
Luacopy 复制
GUI:EditSetMultiLineEdit(
    _HandleID,
    _MultiLine
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_MultiLine

bool

 
是否可多行编辑

true可多行编辑

false不可多行编辑（即单行编辑）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 400, 100, 100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetMultiLineEdit(_GUIHandle, true) --设置编辑框可多行编辑
    GUI:EditSetTextM(_GUIHandle,"12345677654321") --设置编辑框的文本内容
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置编辑框的文本字体为隶书
end

--此示例代码成功创建了如下图所示的编辑框控件。

EditSetMultiLineEdit
<上一篇:设置编辑框中可输入的最大数值下一篇:设置编辑框中文本的行间距>
EditSetOffSet
设置编辑框中文本的行间距

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置编辑框中文本中文本行与行之间的垂直间隔，即行间距。

note_icon 备注
手游默认行间距为10px，端游默认行间距为0。

caution_icon注意
此接口仅在编辑框设置为可多行编辑的状态下生效。

相关接口请参见 EditSetMultiLineEdit或Lua_EditSetMultiLineEdit。

语法
Luacopy 复制
GUI:EditSetOffSet(
    _HandleID,
    _Offset
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Offset

int

 
行间距

单位为像素（px）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "test",200, 200,100, 100)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"这是测试编辑框，这是测试编辑框，这是测试编辑框。") --设置编辑框的文本内容
    GUI:EditSetMultiLineEdit(_GUIHandle, true) --设置编辑框可多行编辑
end

local _GUIHandle = GUI:EditCreate(_Parent, "test1",400, 200,100, 100)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"这是测试编辑框，这是测试编辑框，这是测试编辑框。") --设置编辑框的文本内容
    GUI:EditSetMultiLineEdit(_GUIHandle, true) --设置编辑框可多行编辑
    GUI:EditSetOffSet(_GUIHandle, 30) --设置编辑框中文本的行间距为30px
end

--此示例代码运行成功如下图所示（左侧编辑框使用编辑框的默认行间距，右侧编辑框将编辑框的行间距设置为30px）。

EditSetOffSet.png
<上一篇:设置编辑框是否可多行编辑下一篇:设置编辑框保留的字符串数目>
EditSetRememberStrNum
设置编辑框保留的字符串数目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件保留的历史输入的字符串数目。

语法
Luacopy 复制
GUI:EditSetRememberStrNum(
    _HandleID,
    _RemeberCount
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

_RemeberCount

int

 
保留的数目

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetRememberStrNum(_GUIHandle, 20) --设置保留的数目
end
<上一篇:设置编辑框中文本的行间距下一篇:设置编辑框文本向左滚动的速度>
EditSetScrollText
设置编辑框文本向左滚动的速度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-10-14 00:00:00
此函数设置编辑框控件中文本内容向左滚动的速度。

若文本内容的宽度小于编辑框宽度，则文本内容为静止状态；

若文本内容的宽度大于编辑框宽度，则文本内容为向左循环滚动的状态。

EditSetScrollText.gif
语法
Luacopy 复制
GUI:EditSetScrollText(
    _HandleID,
    speed
)
参数
_HandleID

long

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

speed

int

 
文本内容向左滚动一次所需时间

单位为毫秒（ms），0代表不滚动（为默认值）。

数值越小，滚动速度越快。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_GUIHandle = GUI:EditCreate(_Parent, "test",200, 200,200, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"测试测试测试测试测试测试测试测试测试测试测试测试测试测试") --设置编辑框文本内容
    GUI:EditSetScrollText(_GUIHandle, 50) --设置编辑框控件中文本内容向左滚动的速度
end

--此示例代码运行成功如下图所示。

EditSetScrollText.gif
<上一篇:设置编辑框保留的字符串数目下一篇:设置编辑框中要选择的内容的起始位置>
EditSetSelectPos
设置编辑框中要选择的内容的起始位置

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置编辑框中要选择的内容的起始位置。

与接口GUI:EditSetCurSorPos结合使用可选中编辑框中内容的某一段（即从此接口指定位置到光标指定位置之间的内容）。

此接口用于指定选择内容的起始位置，接口GUI:EditSetCurSorPos用于指定选择内容的结束位置。

note_icon 备注
此功能仅在编辑框控件为激活状态时可用。

语法
Luacopy 复制
GUI:EditSetSelectPos(
    _HandleID,
    select_pos
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

select_pos

int

 
要选择的内容的起始位置

note_icon 备注
若此参数设置为n，则从第n+1个字符开始选择。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）中的RoleEquiment.lua文件为例。
RoleEquiment = {}

RoleEquiment.OpenFashion = false
function RoleEquiment.main()

--……省略部分代码

    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit4",397-10+rx,206+ry,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0) --设置窗体控件的自定义参数
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,163,118,88)) --设置编辑框的文字颜色
        GUI:EditSetTextM(_GUIHandle,"物理防御：") --设置编辑框的文本内容
        GUI:WndSetActiveM(_GUIHandle, true) --设置编辑框为激活状态
        GUI:EditSetCanEdit(_GUIHandle, true) --设置编辑框可编辑
        GUI:EditSetSelectPos(_GUIHandle, 1) --设置要选择的内容的起始位置
        GUI:EditSetCurSorPos(_GUIHandle, 3) --设置要选择的内容的结束位置
    end
	
--……省略部分代码

    RoleEquiment.UIInit(_Parent)
end

--……省略部分代码

RoleEquiment.main()

--此示例代码运行成功如下图所示。

EditSetSelectPos.png
<上一篇:设置编辑框文本向左滚动的速度下一篇:设置编辑框是否明文显示密码>
EditSetShowPassword
设置编辑框是否明文显示密码

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数设置指定编辑框控件是否以明文的方式显示密码。

语法
Luacopy 复制
GUI:EditSetShowPassword(
    _HandleID,
    _ShowPassword
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_ShowPassword

bool

 
true以明文显示密码

false以暗文显示密码

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetIsPassWord(_GUIHandle, true) --设置为密码编辑框
    GUI:EditSetShowPassword(_GUIHandle, true) --设置为明文显示密码
    GUI:EditSetTextM(_GUIHandle,"abcde") --设置文本文字为“abcde”
    local _EditProp = GUI:EditGetShowPassword(_GUIHandle) --获取密码的显示方式
    if _EditProp then
        dbg("以明文显示密码")
    else
        dbg("以暗文显示密码")
    end
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

EditSetShowPassword.png

EditGetShowPassword.png
<上一篇:设置编辑框中要选择的内容的起始位置下一篇:设置编辑框文本颜色>
EditSetTextColor
设置编辑框文本颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件的文本颜色。

语法
Luacopy 复制
GUI:EditSetTextColor(
    _HandleID,
    _Color
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextColor(_GUIHandle, CL:GetColor("ORANGE")) --设置文本颜色为橙色
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本文字为“设置”
end

--此示例代码成功创建了如下图所示的编辑框控件。

EditSetTextColor
<上一篇:设置编辑框是否明文显示密码下一篇:设置编辑框控件中文本描边颜色>
EditSetTextGrowColor
设置编辑框控件中文本描边颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-02-18 00:00:00
此函数设置编辑框控件中文本描边颜色。

语法
Luacopy 复制
GUI:EditSetTextGrowColor(
    _HandleID,
    _Color
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Color

unsigned int

 
文本的描边颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在Package.lua文件中YuanBao控件的位置添加EditSetTextGrowColor
_GUIHandle = GUI:EditCreate(_Parent,"YuanBao", _TempPosX + 50, 565 + _TempPosY, 160, 20)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"0")
    GUI:EditSetTextColor(_GUIHandle, RDCOLOR["WHITE"])
    GUI:WndSetCanRevMsg(_GUIHandle, false)
    GUI:EditSetTextGrowColor(_GUIHandle,RDCOLOR["GREENG"]) --设置Edit控件文本描边颜色为绿色
end

--此示例代码运行成功如下图所示。


<上一篇:设置编辑框文本颜色下一篇:设置编辑框的文本内容>
EditSetTextM
设置编辑框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件的文本内容。

语法
Luacopy 复制
GUI:EditSetTextM(
    _HandleID,
    _Text
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置文本字体为隶书
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本内容为“设置”
end

--此示例代码成功创建了如下图所示的编辑框控件。

EditSetFontM
<上一篇:设置编辑框控件中文本描边颜色下一篇:设置编辑框可输入的最大行数>
EditSetTotalLine
设置编辑框可输入的最大行数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定编辑框控件可输入的最大行数。

当输入内容超过设定的行数时，将无法继续输入。

caution_icon注意
此接口仅在编辑框设置为可多行编辑的状态下生效。

相关接口请参见 EditSetMultiLineEdit或Lua_EditSetMultiLineEdit。

语法
Luacopy 复制
GUI:EditSetTotalLine(
    _HandleID,
    _MaxLineNum
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_MaxLineNum

int

 
最大行数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "test",200, 200,100, 100)
if _GUIHandle ~= 0 then
    GUI:EditSetMultiLineEdit(_GUIHandle, true) ---设置编辑框可多行编辑
end

local _GUIHandle = GUI:EditCreate(_Parent, "test1",400, 200,100, 100)
if _GUIHandle ~= 0 then
    GUI:EditSetMultiLineEdit(_GUIHandle, true) --设置编辑框可多行编辑
    GUI:EditSetTotalLine(_GUIHandle, 2) --设置编辑框可输入的最大行数为2
end

--此示例代码运行成功如下图所示（左侧编辑框未设置编辑框可输入的最大行数，右侧编辑框设置编辑框可输入的最大行数为2）。

EditSetTotalLine.png
<上一篇:设置编辑框的文本内容下一篇:设置文本绘制是否描边>
EditSetUseTextGrow
设置文本绘制是否描边

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-10 00:00:00
此函数设置文本绘制是否描边。

语法
Luacopy 复制
GUI:EditSetUseTextGrow(
    _HandleID,
    _used
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_used

bool

 
true描边

false不描边

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetUseTextGrow(_GUIHandle, true) --设置文本绘制描边
    GUI:EditSetTextM(_GUIHandle,"abcde") --设置文本文字为“abcde”
    local _EditProp = GUI:EditGetUseTextGrow(_GUIHandle) --获取文本绘制是否描边
    if _EditProp then
        dbg("文本绘制描边")
    else
        dbg("文本绘制不描边")
    end
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

EditSetUseTextGrow.png

EditSetUseTextGrow_2.png
<上一篇:设置编辑框可输入的最大行数
EditGetBNumber
获取编辑框是否为数字编辑框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件是否为数字编辑框。

数字编辑框仅可输入数字。

语法
Luacopy 复制
GUI:EditGetBNumber(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
true该编辑框控件为数字编辑框（即只能输入数字0~9）

false其他情况

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetBNumber(_GUIHandle,true) --设置该编辑框控件是数字编辑框
    if GUI:EditGetBNumber(_GUIHandle) then --获取该编辑框控件是否为数字编辑框
        dbg("是数字编辑框")
    else
        dbg("不是数字编辑框")
    end
end

--此示例代码运行成功如下图所示。

Lua_EditGetBNumber_2.png
下一篇:获取编辑框是否可以编辑>
EditGetCanEdit
获取编辑框是否可以编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件是否可以进行编辑的属性。

语法
Luacopy 复制
GUI:EditGetCanEdit(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true可编辑

false不可编辑

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置文本字体为隶书
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本文字为“设置”
    local _EditProp = GUI:EditGetCanEdit(_GUIHandle) --获取是否可编辑的属性
end
<上一篇:获取编辑框是否为数字编辑框下一篇:获取编辑框当前光标位置的X坐标>
EditGetCurPosX
获取编辑框当前光标位置的X坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件当前的光标位置的X坐标。

语法
Luacopy 复制
GUI:EditGetCurPosX(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
当前光标位置的X坐标

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "test1",400, 200,100, 100)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"这是测试编辑框，这是测试编辑框，这是测试编辑框。") --设置编辑框的文本内容
    GUI:EditSetMultiLineEdit(_GUIHandle, true) --设置编辑框可多行编辑
    dbg("当前光标所在位置的X坐标为："..GUI:EditGetCurPosX(_GUIHandle)) --获取编辑框当前光标位置的X坐标
    dbg("当前光标所在位置的Y坐标为："..GUI:EditGetCurPosY(_GUIHandle)) --获取编辑框当前光标位置的Y坐标
end

--此示例代码创建了长宽为100px的编辑框，返回光标上方点,即图中黄色点所在的X坐标（以编辑框左上方为原点）。

EditGetCurPosY.png

EditGetCurPosX.png
<上一篇:获取编辑框是否可以编辑下一篇:获取编辑框当前光标位置的Y坐标>
EditGetCurPosY
获取编辑框当前光标位置的Y坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件当前的光标位置的Y坐标。

语法
Luacopy 复制
GUI:EditGetCurPosY(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
当前光标位置的Y坐标

note_icon 备注
若指定编辑框为单行编辑框，则返回0。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "test1",400, 200,100, 100)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"这是测试编辑框，这是测试编辑框，这是测试编辑框。") --设置编辑框的文本内容
    GUI:EditSetMultiLineEdit(_GUIHandle, true) --设置编辑框可多行编辑
    dbg("当前光标所在位置的X坐标为："..GUI:EditGetCurPosX(_GUIHandle)) --获取编辑框当前光标位置的X坐标
    dbg("当前光标所在位置的Y坐标为："..GUI:EditGetCurPosY(_GUIHandle)) --获取编辑框当前光标位置的Y坐标
end

--此示例代码创建了长宽为100px的编辑框，返回光标上方点,即图中黄色点所在的X坐标（以编辑框左上方为原点）。

EditGetCurPosY.png

EditGetCurPosX.png
<上一篇:获取编辑框当前光标位置的X坐标下一篇:获取编辑框文本内容中的整数>
EditGetInt
获取编辑框文本内容中的整数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件文本内容中的整数。

note_icon 备注
此接口仅对整数开头的文本有效，并且只能获取第一段整数。

例如：文本内容为“123abc456”，则会返回整数“123”。

语法
Luacopy 复制
GUI:EditGetInt(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
手游

int

 
文本内容以整数开头则返回此文本内容的第一段整数

其他情况的返回值不固定

 
端游、H5

int

 
文本内容以整数开头则返回此文本内容的第一段整数

其他情况则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 400, 100, 100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"1234567ABC1111") --设置编辑框的文本内容
    local _num = GUI:EditGetInt(_GUIHandle) --获取编辑框文本内容中的整数
    dbg("".._num)
end

--此示例代码运行成功如下图所示。

EditGetInt.png
<上一篇:获取编辑框当前光标位置的Y坐标下一篇:获取编辑框是否为货币类型>
EditGetIsCurrency
获取编辑框是否为货币类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-02-11 00:00:00
此函数获取编辑框是否为货币类型。

货币类型的编辑框显示为单行，文字内容仅支持数字，且每3位自动添加一个千分位标记。

语法
Luacopy 复制
GUI:EditGetIsCurrency(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
是否为货币类型

true货币类型

false默认类型

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "example",400,400,200,30)
if _GUIHandle ~= 0 then
    GUI:EditSetIsCurrency(_GUIHandle,true) --设置编辑框为货币类型
    GUI:EditSetTextM(_GUIHandle,"599900000")
    if GUI:EditGetIsCurrency(_GUIHandle) then 
        dbg("编辑框为货币类型")
    else
        dbg("编辑框为默认类型")
    end
end

--此示例代码运行输出结果如下图。

EditGetIsCurrency
<上一篇:获取编辑框文本内容中的整数下一篇:获取编辑框是否为密码编辑框>
EditGetIsPassWord
获取编辑框是否为密码编辑框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件是否为密码编辑框。

当编辑框为密码编辑框时，输入的文本为非明码，以*字符遮盖。

语法
Luacopy 复制
GUI:EditGetIsPassWord(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true密码编辑框

false普通编辑框

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetIsPassWord(_GUIHandle, true) --设置为密码编辑框
    GUI:EditSetTextM(_GUIHandle,"abcde") --设置文本文字为“abcde”
    local _EditProp = GUI:EditGetIsPassWord(_GUIHandle) --获取是否为密码编辑框
end
<上一篇:获取编辑框是否为货币类型下一篇:获取编辑框允许的最大字符个数>
EditGetMaxCharNum
获取编辑框允许的最大字符个数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件所允许输入的最大字符个数。

note_icon 备注
若没有使用接口设置编辑框允许输入的最大字符个数，则端游和手游均默认编辑框控件允许输入的最大字符个数为256。

若使用接口GUI:EditSetMaxCharNum或者接口Lua_EditSetMaxCharNum设置编辑框允许输入的最大字符个数，则编辑框控件允许输入的最大字符个数为该接口设置的值。

若使用接口GUI:EditSetMaxCharNum或者接口Lua_EditSetMaxCharNum设置编辑框允许的最大字符个数为0时，则代表对编辑框控件允许输入的最大字符个数不做限制。

当编辑框控件的文本内容对应的字符个数超出允许输入的最大字符个数时，会显示未超出部分的文本内容。

一个汉字相当于两个字符。

语法
Luacopy 复制
GUI:EditGetMaxCharNum(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
编辑框控件允许的字符最大个数

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxCharNum(_GUIHandle, 5) --设置编辑框允许的最大字符个数为5
    GUI:EditSetTextM(_GUIHandle,"1234567") --设置编辑框的文本内容为“1234567”
    dbg("允许的最大字符个数:"..GUI:EditGetMaxCharNum(_GUIHandle))--获取编辑框允许的最大字符个数
end

--此示例代码运行成功如下图所示（编辑框控件只显示未超出设置范围的文本内容），同时控制台会输出如下内容。

EditSetMaxCharNum.png

Lua_EditGetMaxCharNum.png
<上一篇:获取编辑框是否为密码编辑框下一篇:获取编辑框设置的可输入的最大数值>
EditGetMaxNumber
获取编辑框设置的可输入的最大数值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-02-25 00:00:00
此函数获取编辑框设置的可输入的最大数值。

参考 EditSetMaxNumber

语法
Luacopy 复制
GUI:EditGetMaxNumber(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
string

 
编辑框设置的可输入的最大数值

note_icon 备注
若接口GUI:EditSetMaxNumber的参数_Type设置为0，则获取编辑框中可输入的最大数值为空字符串（""）。

若接口GUI:EditSetMaxNumber的参数_Type设置为1、2、-1或者-2，则获取数字编辑框中可输入的最大数值为接口GUI:EditSetMaxNumber的参数_Number设置的数值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--设置一个普通编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit0控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg0",4002450038,150,200)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit0",160,200,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,0,"1000") --设置编辑框0中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置编辑框0允许的最大字符个数为4
    dbg("编辑框0中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取编辑框0中可输入的最大数值
end

--此示例代码运行成功如下图所示（在编辑框中输入9999），同时控制台会输出如下内容。

EditSetMaxNumber.png

EditGetMaxNumber.png
--设置一个不受最大字符数限制的数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit1控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg1",4002450038,150,200 + 40)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit1",160,200 + 40,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,1,"10000") --设置数字编辑框1中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框1允许的最大字符个数为4
    dbg("数字编辑框1中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框1中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_2.png

EditGetMaxNumber_2.png
--设置一个不受最大字符数限制的货币数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit2控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg2",4002450038,150,200 + 80)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit2",160,200 + 80,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,2,"10000") --设置数字编辑框2中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框2允许的最大字符个数为4
    dbg("数字编辑框2中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框2中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_3.png

EditGetMaxNumber_3.png
--设置一个受最大字符数限制的数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit3控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg3",4002450038,150,200 + 120)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit3",160,200 + 120,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,-1,"10000") --设置数字编辑框3中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框3允许的最大字符个数为4
    dbg("数字编辑框3中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框3中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_4.png

EditGetMaxNumber_4.png
--设置一个受最大字符数限制的货币数字编辑框
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--设置Edit4控件的背景
_GUIHandle = GUI:ImageCreate(_Parent,"Editbg4",4002450038,150,200 + 160)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false)
end

_GUIHandle = GUI:EditCreate(_Parent,"Edit4",160,200 + 160,500,30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxNumber(_GUIHandle,-2,"10000") --设置数字编辑框4中可输入的最大数值
    GUI:EditSetMaxCharNum(_GUIHandle, 4) --设置数字编辑框4允许的最大字符个数为4
    dbg("数字编辑框4中可输入的最大数值为："..GUI:EditGetMaxNumber(_GUIHandle)) --获取数字编辑框4中可输入的最大数值
end

--此示例代码运行成功如下图所示（在数字编辑框中输入99999），同时控制台会输出如下内容。

EditSetMaxNumber_5.png

EditGetMaxNumber_5.png
<上一篇:获取编辑框允许的最大字符个数下一篇:获取编辑框是否可多行编辑>
EditGetMultiLineEdit
获取编辑框是否可多行编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件是否可以多行编辑的属性。

语法
Luacopy 复制
GUI:EditGetMultiLineEdit(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true多行编辑

false单行编辑

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 400, 100, 100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"12345677654321") --设置文本文字
    local _EditProp = GUI:EditGetMultiLineEdit(_GUIHandle) --获取编辑框是否可多行编辑
end
<上一篇:获取编辑框设置的可输入的最大数值下一篇:获取编辑框保留的字符串数目>
EditGetRememberStrNum
获取编辑框保留的字符串数目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件保留的历史输入的字符串数目。

语法
Luacopy 复制
GUI:EditGetRememberStrNum(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
保留的字符串数目

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    local _EditProp = GUI:EditGetRememberStrNum(_GUIHandle) --获取保留的字符串数目
end
<上一篇:获取编辑框是否可多行编辑下一篇:获取编辑框是否明文显示密码>
EditGetShowPassword
获取编辑框是否明文显示密码

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数获取指定编辑框控件是否以明文的方式显示密码。

语法
Luacopy 复制
GUI:EditGetShowPassword(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
属性

bool

 
true以明文显示密码

false以暗文显示密码

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetIsPassWord(_GUIHandle, true) --设置为密码编辑框
    GUI:EditSetShowPassword(_GUIHandle, true) --设置为明文显示密码
    GUI:EditSetTextM(_GUIHandle,"abcde") --设置文本文字为“abcde”
    local _EditProp = GUI:EditGetShowPassword(_GUIHandle) --获取密码的显示方式
    if _EditProp then
        dbg("以明文显示密码")
    else
        dbg("以暗文显示密码")
    end
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

EditSetShowPassword.png

EditGetShowPassword.png
<上一篇:获取编辑框保留的字符串数目下一篇:获取编辑框的文本内容>
EditGetTextM
获取编辑框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件的文本内容。

note_icon 备注
若要使用此接口获取密码格式的编辑框控件的原始文本内容，则需要与属性edit_get_origin_pw_text搭配使用。

语法
Luacopy 复制
GUI:EditGetTextM(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
string

 
执行成功则返回编辑框的文本内容

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetFontM(_GUIHandle, "SIMLI18") --设置编辑框文本的字体为隶书
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框文本内容为“设置”
    dbg("文本内容："..GUI:EditGetTextM(_GUIHandle))--获取编辑框的文本内容
end

--此示例代码运行成功如下图所示。

Lua_EditGetTextM.png
<上一篇:获取编辑框是否明文显示密码下一篇:获取编辑框可输入的最大行数>
EditGetTotalLine
获取编辑框可输入的最大行数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定编辑框控件可输入的最大行数。

语法
Luacopy 复制
GUI:EditGetTotalLine(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
可输入的最大行数

note_icon 备注
若指定编辑框为单行编辑框，则返回1。

当指定编辑框未设置可输入的最大行数时，此接口的返回值为编辑框的高度/字体的高度的整数部分的值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "test1",400, 200,100, 100)
if _GUIHandle ~= 0 then
    GUI:EditSetMultiLineEdit(_GUIHandle, true) --设置编辑框可多行编辑
    GUI:EditSetTotalLine(_GUIHandle, 2) --设置编辑框可输入的最大行数为2
    dbg("该编辑框可输入的最大行数为："..GUI:EditGetTotalLine(_GUIHandle)) --获取编辑框可输入的最大行数
end

--此示例代码运行成功如下图所示。

EditGetTotalLine.png
<上一篇:获取编辑框的文本内容下一篇:获取文本绘制是否描边>
EditGetUseTextGrow
获取文本绘制是否描边

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-10 00:00:00
此函数获取文本绘制是否描边。

语法
Luacopy 复制
GUI:EditGetUseTextGrow(
    _HandleID
)
参数
_HandleID

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
属性

bool

 
true描边

false不描边

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetUseTextGrow(_GUIHandle, true) --设置文本绘制描边
    GUI:EditSetTextM(_GUIHandle,"abcde") --设置文本文字为“abcde”
    local _EditProp = GUI:EditGetUseTextGrow(_GUIHandle) --获取文本绘制是否描边
    if _EditProp then
        dbg("文本绘制描边")
    else
        dbg("文本绘制不描边")
    end
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

EditSetUseTextGrow.png

EditSetUseTextGrow_2.png
<上一篇:获取编辑框可输入的最大行数
以下为封装接口：
EditGetBNumber
获取编辑框是否为数字编辑框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取指定编辑框控件是否为数字编辑框。

数字编辑框仅可输入数字。

语法
Luacopy 复制
EditGetBNumber(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

返回值
手游、H5：

bool

 
true该编辑框为数字编辑框（即只能输入数字0~9）

false其他情况

 
端游：

bool

 
true执行成功

false执行失败

note_icon 备注
端游中，如操作成功，获取的数据（类型：bool）存储在全局变量LuaRet中。

其中，1代表该编辑框为数字编辑框（即只能输入数字0~9），0代表其他情况。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--手游
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,250,20)
if _GUIHandle ~= 0 then
    GUI:EditSetBNumber(_GUIHandle, true) --设置编辑框为数字编辑框
    if EditGetBNumber(_GUIHandle,nil) then --获取是否为数字编辑框
        dbg("是数字编辑框")
    else 
        dbg("不是数字编辑框")
    end
end

--此示例代码运行成功如下图所示。

Lua_EditGetBNumber_2.png
--端游
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,250,20)
if _GUIHandle ~= 0 then
    GUI:EditSetBNumber(_GUIHandle, true) --设置编辑框为数字编辑框
    if EditGetBNumber(_GUIHandle,nil) then --获取编辑框是否为数字编辑框
        if LuaRet == 1 then
            dbg("是数字编辑框")
        elseif LuaRet == 0 then
            dbg("不是数字编辑框")
        end
    else 
        dbg("执行失败")
    end
end

--此示例代码运行成功如下图所示。

EditGetBNumber.png
下一篇:获取编辑框文本内容中的整数>
EditGetInt
获取编辑框文本内容中的整数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取指定编辑框控件文本内容中的整数。

note_icon 备注
此接口仅对数字开头的文本有效，并且只能获取第一段整数。

例如：文本内容为“123abc456”，则会返回整数“123”。

语法
Luacopy 复制
EditGetInt(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

返回值
手游

int

 
文本内容以整数开头则返回此文本内容的第一段整数

其他情况的返回值不固定

 
端游、H5

int

 
文本内容以整数开头则返回此文本内容的第一段整数

其他情况则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,250,20)
if _GUIHandle ~= 0 then
    EditSetTextM(_GUIHandle,nil,"1234567ABC1111") --设置编辑框的文本内容
    dbg(""..EditGetInt(_GUIHandle,nil))
end

--此示例代码运行成功如下图所示。

EditGetInt.png
<上一篇:获取编辑框是否为数字编辑框下一篇:获取编辑框允许的最大字符个数>
EditGetMaxCharNum
获取编辑框允许的最大字符个数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-05-31 00:00:00
此函数获取指定编辑框控件所允许输入的最大字符个数。

note_icon 备注
若没有使用接口设置编辑框允许输入的最大字符个数，则端游和手游均默认编辑框控件允许输入的最大字符个数为256。

若使用接口GUI:EditSetMaxCharNum、接口EditSetMaxCharNum或者接口Lua_EditSetMaxCharNum设置编辑框允许输入的最大字符个数，则编辑框控件允许输入的最大字符个数为该接口设置的值。

若使用接口GUI:EditSetMaxCharNum、接口EditSetMaxCharNum或者接口Lua_EditSetMaxCharNum设置编辑框允许的最大字符个数为0时，则代表对编辑框控件允许输入的最大字符个数不做限制。

当编辑框控件的文本内容对应的字符个数超出允许输入的最大字符个数时，会显示未超出部分的文本内容。

一个汉字相当于两个字符。

语法
Luacopy 复制
EditGetMaxCharNum(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

返回值
int

 
编辑框控件允许的字符最大个数

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxCharNum(_GUIHandle, 5) --设置编辑框允许的最大字符个数为5
    GUI:EditSetTextM(_GUIHandle,"1234567") --设置编辑框的文本内容为“1234567”
    dbg("允许的最大字符个数:"..EditGetMaxCharNum(_GUIHandle,""))--获取编辑框允许的最大字符个数
end

--此示例代码运行成功如下图所示（编辑框控件只显示未超出设置范围的文本内容），同时控制台会输出如下内容。

EditSetMaxCharNum.png

Lua_EditGetMaxCharNum.png
<上一篇:获取编辑框文本内容中的整数下一篇:获取编辑框的文本内容>
EditGetTextM
获取编辑框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-05-31 00:00:00
此函数获取指定编辑框控件的文本内容。

note_icon 备注
若要使用此接口获取密码格式的编辑框控件的原始文本内容，则需要与属性edit_get_origin_pw_text搭配使用。

语法
Luacopy 复制
EditGetTextM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

返回值
string

 
执行成功则返回编辑框的文本内容

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,250,20)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle, "这是测试文本") --设置编辑框的文本内容
    dbg(""..EditGetTextM(_GUIHandle,nil)) --获取编辑框的文本内容
end

--此示例代码运行成功如下图所示。

EditGetTextM.png
<上一篇:获取编辑框允许的最大字符个数下一篇:设置编辑框是否为数字编辑框>
EditSetBNumber
设置编辑框是否为数字编辑框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件是否为数字编辑框。

语法
Luacopy 复制
EditSetBNumber(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

_Flag

bool

 
设置指定编辑框控件是否为数字编辑框

true设置指定编辑框控件为数字编辑框（即只能输入数字0~9）

false设置指定编辑框控件不是数字编辑框

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,250,20)
if _GUIHandle ~= 0 then
    EditSetBNumber(_GUIHandle,nil, true) --设置指定编辑框控件为数字编辑框
end
<上一篇:获取编辑框的文本内容下一篇:设置编辑框是否可以编辑>
EditSetCanEdit
设置编辑框是否可以编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件是否可以进行编辑。

语法
Luacopy 复制
EditSetCanEdit(
    _Handle,
    _Info,
    _CanEdit
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

_CanEdit

bool

 
是否可编辑

true可编辑

false不可编辑

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,1000,20)
if _GUIHandle ~= 0 then
    EditSetTextM(_GUIHandle,nil,"这是测试文本") --设置编辑框的文本内容为“这是测试文本”
    EditSetCanEdit(_GUIHandle,nil,true) --设置编辑框为可编辑状态
end

--此示例代码运行成功如下图所示。

EditSetCanEdit.png
<上一篇:设置编辑框是否为数字编辑框下一篇:设置编辑框文本内容为指定的数字>
EditSetInt
设置编辑框文本内容为指定的数字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件中的文本内容为指定的数字。

语法
Luacopy 复制
EditSetInt(
    _Handle,
    _Info,
    _Data
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

_Data

int

 
要设置的数字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,100,20)
if _GUIHandle ~= 0 then
    EditSetInt(_GUIHandle,nil,12345) --设置编辑框的文本内容为数字12345
end

--此示例代码运行成功如下图所示。

EditSetInt_2.png
<上一篇:设置编辑框是否可以编辑下一篇:设置编辑框是否为密码编辑框>
EditSetIsPassWord
设置编辑框是否为密码编辑框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件是否为密码编辑框。

当编辑框为密码编辑框时，输入的文本内容为非明码，以*字符遮盖。

语法
Luacopy 复制
EditSetIsPassWord(
    _Handle,
    _Info,
    _IsPassword
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

_IsPassword

bool

 
编辑框是否为密码编辑框

true密码编辑框

false普通编辑框

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit3",250,500,100,20)
if _GUIHandle ~= 0 then
    EditSetIsPassWord(_GUIHandle,nil,true) --设置编辑框为密码编辑框
    EditSetTextM(_GUIHandle,nil,"1122334455") --设置编辑框的文本内容
end

--此示例代码运行成功如下图所示。

EditSetIsPassWord.png
<上一篇:设置编辑框文本内容为指定的数字下一篇:设置编辑框允许的最大字符个数>
EditSetMaxCharNum
设置编辑框允许的最大字符个数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件所允许输入的最大字符个数。

note_icon 备注
若没有使用接口设置编辑框允许输入的最大字符个数，则端游和手游均默认编辑框控件允许输入的最大字符个数为256。

若使用此接口（或者接口GUI:EditSetMaxCharNum、接口Lua_EditSetMaxCharNum）设置编辑框允许输入的最大字符个数，则编辑框控件允许输入的最大字符个数为该接口设置的值。

若使用此接口（或者接口GUI:EditSetMaxCharNum、接口Lua_EditSetMaxCharNum）设置编辑框允许的最大字符个数为0时，则代表对编辑框控件允许输入的最大字符个数不做限制。

当编辑框控件的文本内容对应的字符个数超出允许输入的最大字符个数时，会显示未超出部分的文本内容。

一个汉字相当于两个字符。

语法
Luacopy 复制
EditSetMaxCharNum(
    _Handle,
    _Info,
    _MaxCount
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

_MaxCount

int

 
允许输入的最大字符个数

note_icon 备注
若此参数为0，则代表对编辑框控件最大可显示字节数不做限制。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetMaxCharNum(_GUIHandle, 5) --设置编辑框允许的最大字符个数为5
    EditSetTextM(_GUIHandle,nil,"1234567") --设置编辑框的文本内容为“1234567”
end

--此示例代码运行成功如下图所示（编辑框控件只显示未超出设置范围的文本内容）。

EditSetMaxCharNum.png
<上一篇:设置编辑框是否为密码编辑框下一篇:设置编辑框是否可多行编辑>
EditSetMultiLineEdit
设置编辑框是否可多行编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件是否可以多行编辑。

note_icon 备注
当编辑框控件高度不够时，后面几行可能无法显示。

语法
Luacopy 复制
EditSetMultiLineEdit(
    _Handle,
    _Info,
    _MultiLine
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

_MultiLine

bool

 
是否可多行编辑

true可多行编辑

false不可多行编辑（即单行编辑）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,100,40)
if _GUIHandle ~= 0 then
    EditSetMultiLineEdit(_GUIHandle,nil,true) --设置编辑框可多行编辑
    EditSetTextM(_GUIHandle,nil,"这是测试文本") --设置编辑框的文本内容
end

--此示例代码运行成功如下图所示。

EditSetMultiLineEdit.gif
<上一篇:设置编辑框允许的最大字符个数下一篇:一键设置编辑框属性>
EditSetProp
一键设置编辑框属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数一键设置编辑框属性。

语法
Luacopy 复制
EditSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _IsCenter,
    _Color,
    _IsNumber,
    _Text
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
是否可用

true编辑框控件可用

false编辑框控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_IsCenter

bool

 
文字是否左右居中

true左右居中

false上下居中

_Color

unsigned int

 
文本颜色

具体请参见颜色字符串页面

_IsNumber

bool

 
编辑框是否为数字编辑框

true数字编辑框

false普通编辑框

_Text

string

 
文本内容

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,200,20)
if _GUIHandle ~= 0 then
    EditSetProp(_GUIHandle,nil,true, false, false, true, CL:GetColor("DBLUE"), false, "这是测试文本") --一键设置编辑框属性
end

--此示例代码运行成功如下图所示。

EditSetProp.png
<上一篇:设置编辑框是否可多行编辑下一篇:设置编辑框文本颜色>
EditSetTextColor
设置编辑框文本颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件的文本颜色。

语法
Luacopy 复制
EditSetTextColor(
    _Handle,
    _Info,
    _Color
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,250,20)
if _GUIHandle ~= 0 then
    EditSetTextColor(_GUIHandle,nil,GUI:MakeARGB(255,255,0,0)) --设置编辑框文本颜色为红色
    GUI:EditSetTextM(_GUIHandle,"这是测试文本") --设置文本内容为“这是测试文本”
end

--此示例代码运行成功如下图所示。

EditSetTextColor_2.png
<上一篇:一键设置编辑框属性下一篇:设置编辑框的文本内容>
EditSetTextM
设置编辑框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定编辑框控件的文本内容。

语法
Luacopy 复制
EditSetTextM(
    _Handle,
    _Info,
    _Text
)
参数
_Handle

int

 
指定编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定编辑框控件的描述

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"TestEdit",250,400,250,20)
if _GUIHandle ~= 0 then
    EditSetTextM(_GUIHandle,nil,"这是测试文本") --设置编辑框的文本内容
end

--此示例代码运行成功如下图所示。

EditSetTextM_2.png
<上一篇:设置编辑框文本颜色

颜色字符串
更新时间：2021-09-07 00:00:00
颜色字符串可以指定唯一的一个颜色值，其格式有以下四种。

若字符串以#开头，那么后面可以是6位或8位十六进制数字字符。

note_icon 备注
若是6位十六进制数字字符，则分别代表颜色的红(R)、绿(G)、蓝(B)三个分量（其中每2位代表一个分量）。

若是8位十六进制数字字符，则前6位同上，最后2位指定透明度(A)：00代表全透明，FF代表不透明。

当对应参数为数值类型时，上述十六进制数字字符可通过程序接口GetColor或Lua_GetColor转换为对应颜色的十进制数值在程序中使用。

当对应参数为字符串类型时，上述十六进制数字字符可直接使用。

可以是通过接口MakeColor、MakeARGB或Lua_MakeARGB生成的颜色值，仅适用于数值类型的参数。

可以是GlobalDefine.lua脚本文件中定义的颜色标记。

可以是程序预定义的颜色标记(不区分大小写)，现已存在的颜色标记如下表所列。

当对应参数为数值类型时，下表中的颜色字符串可通过程序接口GetColor或Lua_GetColor转换为对应颜色的十进制数值在程序中使用。

当对应参数为字符串类型时，下表中的颜色字符串可直接使用。

caution_icon警告
当系统颜色表中定义的颜色值发生改变时，此表对应的颜色随之改变。

预定义标记	系统颜色表定义对应的标号标识	颜色说明	颜色示例
WHITE	COLOR_WHITE_INDEX	白色	
ORANGE	COLOR_ORANGE_INDEX	橙色	
YELLOW	COLOR_YELLOW_INDEX	黄色	
BLUE	COLOR_BLUE_INDEX	蓝色	
SKYBLUE	COLOR_SKYBLUE_INDEX	天蓝	
DBLUE	COLOR_DBLUE_INDEX	暗蓝	
GREENG	COLOR_GREENG_INDEX	青色	
DGREENG	COLOR_DGREENG_INDEX	暗青	
BGREENG	COLOR_BGREENG_INDEX	雅青	
RED	COLOR_RED_INDEX	桔红	
MAGENTA	COLOR_MAGENTA_INDEX	洋红	
BROWN	COLOR_BROWN_INDEX	棕色	
GOLD	COLOR_GOLD_INDEX	金色	
DARKGOLD	COLOR_DARKGOLD_INDEX	暗金	
PURPLE	COLOR_PURPLE_INDEX	紫色	
GRAY	COLOR_GRAY_INDEX	灰色	
PINK	COLOR_PINK_INDEX	粉色	
BLACK	COLOR_BLACK_INDEX	黑色	
LIGHTBROWN	COLOR_LIGHTBROWN_INDEX	浅棕色	
BROWN2	COLOR_BROWN2_INDEX	棕色2	
GOLD2	COLOR_GOLD2_INDEX	金色2	
DARKGREY	COLOR_DARKGREY_INDEX	暗灰色	
DARK	COLOR_DARK_INDEX	深色	
系统颜色表定义
更新时间：2021-09-07 00:00:00
系统颜色表默认定义如下：

如需修改请参见接口SetColorTableData。

索引	标号标识	标号描述	颜色对应的RGB值	颜色示例	多功能编辑框中使用的颜色标签
0	COLOR_WHITE_INDEX	白色	(255, 255, 255)	
COLOR_WHITE
1	COLOR_ORANGE_INDEX	橙色	(246, 157, 61)	
COLOR_ORANGE
2	COLOR_YELLOW_INDEX	黄色	(252, 220, 4)	
COLOR_YELLOW
3	COLOR_BLUE_INDEX	蓝色	(22, 226, 171)	
COLOR_BLUE
4	COLOR_SKYBLUE_INDEX	天蓝	(0, 255, 255)	
COLOR_SKYBLUE
5	COLOR_DBLUE_INDEX	暗蓝	(36, 207, 255)	
COLOR_DBLUE
6	COLOR_GREENG_INDEX	青色	(121, 255, 53)	
COLOR_GREENG
7	COLOR_DGREENG_INDEX	暗青	(120, 221, 55)	
COLOR_DGREENG
8	COLOR_BGREENG_INDEX	雅青	(23, 226, 171)	
COLOR_BGREENG
9	COLOR_RED_INDEX	桔红	(240, 65, 64)	
COLOR_RED
10	COLOR_MAGENTA_INDEX	洋红	(252, 1, 166)	
COLOR_MAGENTA
11	COLOR_BROWN_INDEX	棕色	(222, 199, 123)	
COLOR_BROWN
12	COLOR_GOLD_INDEX	金色	(254, 226, 78)	
COLOR_GOLD
13	COLOR_DARKGOLD_INDEX	暗金	(247, 157, 61)	
COLOR_DARKGOLD
14	COLOR_PURPLE_INDEX	紫色	(226, 65, 217)	
COLOR_PURPLE
15	COLOR_GRAY_INDEX	灰色	(98, 98, 98)	
COLOR_GRAY
16	COLOR_PINK_INDEX	粉色	(239, 112, 160)	
COLOR_PINK
17	COLOR_BLACK_INDEX	黑色	(0, 0, 0)	
COLOR_BLACK
18	COLOR_LIGHTBROWN_INDEX	浅棕色	(93, 32, 4)	
COLOR_LIGHTBROWN
19	COLOR_BROWN2_INDEX	棕色2	(153, 107, 79)	
COLOR_BROWN2
20	COLOR_GOLD2_INDEX	金色2	(255, 199, 49)	
COLOR_GOLD2
21	COLOR_DARKGREY_INDEX	暗灰色	(67, 67, 67)	
COLOR_DARKGREY
22	COLOR_DARK_INDEX	深色	(161, 149, 91)	
COLOR_DARK
23	SYS_FILLCOLOR_INDEX	系统消息背景颜色	(255, 0, 0)	
无
24	WORLD_FILLCOLOR_INDEX	世界频道消息背景颜色	(255, 228, 0)	
无
25	SPEAKER_FILLCOLOR_INDEX	小喇叭背景颜色	(255, 0, 255)	
无
26	COLOR_PINK2_INDEX	粉色2	(244, 137, 205)	
COLOR_PINK2
27	OPE_TEXTCOLOR_INDEX	升级文本颜色	(10, 90, 0)	
无
28	SYS_TEXTCOLOR_INDEX	系统消息文本颜色(技能热键，使用接口AddSystemMessage和AddSystemMessage2创建的消息默认颜色)	(21, 134, 21)	
无
29	SYS_TEXTCOLOR2_INDEX	系统消息文本颜色(底部消息，玩家信息)	(255, 255, 255)	
无
30	HINT_TEXTCOLOR_INDEX	系统提示消息默认文本颜色	(255, 255, 255)	
无
31	HINT_BACKCOLOR_INDEX	系统提示消息默认背景颜色	(255, 0, 0)	
无
32	MONSTER_HINT_TEXTCOLOR_INDEX	怪物出现消息文本颜色	(255, 255, 255)	
无
33	MONSTER_HINT_BACKCOLOR_INDEX	怪物出现消息背景颜色	(0, 30, 255)	
无
34	ITEM_HINT_TEXTCOLOR_INDEX	物品出现消息文本颜色	(255, 255, 255)	
无
35	ITEM_HINT_BACKCOLOR_INDEX	物品出现消息背景颜色	(0, 30, 255)	
无
36	COLOR_BLUE2_INDEX	蓝色2	(0, 30, 255)	
COLOR_BLUE2
37	COLOR_PINK3_INDEX	粉色3	(255, 0, 255)	
COLOR_PINK3
头发颜色定义
更新时间：2022-03-25 00:00:00
note_icon 备注
本文仅适用于2D客户端。

头发颜色默认定义如下：

相关接口请参见：lualib:SetHairColor和lualib:HairColor。

note_icon 备注
当角色的发型编号大于255时，其头发颜色固定为白色（即索引28对应的颜色）。

索引	颜色对应的RGBA值	颜色示例
0	(193, 193, 217, 255)	
1	(213, 164, 31, 255)	
2	(233, 233, 149, 255)	
3	(142, 218, 142, 255)	
4	(130, 194, 200, 255)	
5	(140, 139, 209, 255)	
6	(247, 159, 210, 255)	
7	(117, 117, 117, 255)	
8	(195, 101, 31, 255)	
9	(211, 211, 16, 255)	
10	(65, 164, 66, 255)	
11	(54, 175, 176, 255)	
12	(100, 83, 173, 255)	
13	(175, 68, 166, 255)	
14	(52, 50, 48, 255)	
15	(187, 33, 33, 255)	
16	(163, 170, 0, 255)	
17	(5, 95, 5, 255)	
18	(28, 87, 138, 255)	
19	(48, 35, 104, 255)	
20	(104, 26, 119, 255)	
21	(0, 0, 0, 255)	
22	(93, 17, 17, 255)	
23	(103, 103, 0, 255)	
24	(3, 44, 4, 255)	
25	(0, 36, 71, 255)	
26	(34, 0, 66, 255)	
27	(56, 0, 61, 255)	
28	(255, 255, 255, 255)	
<上一篇:颜色字符串下一篇:消息颜色定义>
消息颜色定义
更新时间：2022-06-17 00:00:00
消息颜色默认定义如下：

相关接口请参见：lualib:SysMsg_SendBroadcastColorByClientType、lualib:SysMsg_SendTopColor、lualib:SysMsg_SendTopColorByClientType、lualib:SysMsg_SendScrollMsg、lualib:SysMsg_SendAllPlayerScrollMsg、lualib:SysMsg_SendBottomColor、lualib:SysMsg_SendBroadcastColor和CL:SetGUIFormColorData。

note_icon 备注
本文适用于2D和3D客户端。

索引	颜色描述	颜色对应的RGBA值	颜色示例
1	黄色	(255, 228, 0, 255)	
2	红色	(255, 0, 0, 255)	
3	粉红	(255, 0, 255, 255)	
4	蓝色	(0, 30, 255, 255)	
5	深绿	(10, 90, 0, 255)	
6	深粉	(244, 137, 205, 255)	
7	白色	(255, 255, 255, 255)	
8	深蓝	(0, 0, 132, 255)	
9	亮蓝	(115, 207, 255, 255)	
10	深黄	(232, 124, 45, 255)	
11	透明	(0, 0, 0, 0)	
12	黑色	(0, 0, 0, 255)	
13	绿色	(21, 134, 21, 255)	
<上一篇:头发颜色定义





