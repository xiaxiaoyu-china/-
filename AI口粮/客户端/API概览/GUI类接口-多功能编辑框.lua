多功能编辑框控件概览
更新时间：2024-01-30 00:00:00
多功能编辑框控件用于获取用户的输入或在游戏中显示特定的文本。除了具有编辑框的基本功能外，可在文本中插入链接，图片，甚至表情元素。

请注意，多功能编辑框不支持数字和密码类型的文本输入，而编辑框控件支持。

创建控件
你可以使用下表所列的接口，创建多功能编辑框控件。

接口名	中文名	返回值类型	功能描述	适用客户端
RichEditCreate	创建多功能编辑框控件	
int

此函数以指定的窗口作为父窗口，新建一个多功能编辑框控件。	手游、端游、H5
你可以使用如下接口，添加或删除多功能编辑框的文本内容。

接口名	中文名	返回值类型	功能描述	适用客户端
RichEditAppendString	多功能编辑框添加文本	
无

此函数添加文本内容至指定的多功能编辑框控件。	手游、端游、H5
RichEditClear	清空多功能编辑框的文本内容	
无

此函数清空指定多功能编辑框的文本内容。	手游、端游、H5
设置控件
你可以使用下表所列的接口，设置多功能编辑框控件的文本的颜色、字体、透明度、对齐方式和背景图片等。

接口名	中文名	返回值类型	功能描述	适用客户端
RichEditMoveContentLeft	设置多功能编辑框向左偏移的距离	
无

此函数设置指定多功能编辑框控件整体向左边偏移的距离。	手游、端游、 H5
RichEditSetContentRect	设置多功能编辑框文本区域大小	
无

此函数设置指定多功能编辑框控件的区域大小和文本区域起始位置的坐标。	手游、端游、H5
RichEditSetCurFont	设置多功能编辑框的字体	
无

此函数设置指定多功能编辑框控件的文本字体。	手游、端游、H5
RichEditSetDefaultTextColor	设置多功能编辑框默认的文本颜色	
无

此函数设置指定多功能编辑框控件默认的文本颜色。	手游、端游、H5
RichEditSetEditEnable	设置多功能编辑框是否可以编辑	
无

此函数设置指定多功能编辑框是否可以编辑的属性。	手游、端游、H5
RichEditSetLastTotalLine	设置多功能编辑框显示的最大行数	
无

此函数设置多功能编辑框显示的最大行数。	手游、端游
RichEditSetMultiBackImage	设置多功能编辑框的背景图片	
无

此函数设置指定多功能编辑框控件的背景图片。	手游、端游、H5
RichEditSetOffSet	设置多功能编辑框中文本的行高	
无

此函数设置多功能编辑框中文本行与行之间的垂直间隔，即行间距。	手游、端游、H5
RichEditSetTextItemAlpha	设置多功能编辑框文本的透明度	
无

此函数设置多功能编辑框中文本的透明度。	手游、端游、H5
RichEditSetTextLeftBorder	设置多功能编辑框内文本左侧的偏移值	
无

此函数设置指定多功能编辑框控件内，第二行开始文本距离控件最左侧的偏移值。	手游、端游、H5
RichEditSetTopPos	设置多功能编辑框文本的纵向偏移	
无

此函数设置多功能编辑框文本的纵向偏移。	手游、端游、H5
RichEditSetTotalLine	设置多功能编辑框的最大行数	
无

此函数设置指定多功能编辑框控件允许的最大行数。	手游、端游、H5
RichEditSetLargeRender	多功能编辑框开启长文本渲染	
无

此函数开启多功能编辑框长文本渲染。	H5
RichEditSetTextGrowColor	设置多功能编辑框控件中文本的描边颜色	
无

此函数设置多功能编辑框控件中文本的描边颜色。	手游、端游
RichEditEnableInvalidateData	设置多功能编辑框是否启用重新渲染文本	
无

此函数设置在多功能编辑框控件的部分属性发生变化后，是否立即重新渲染文本。	手游、端游
RichEditSetLinkColor	设置指定多功能编辑框超链接文字的颜色	
无

此函数设置指定多功能编辑框超链接文字的颜色。	手游、端游
获取控件信息
在创建或设置多功能编辑框控件后，可以通过以下接口获取多功能编辑框控件的文本内容、绘制宽高等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
RichEditGetAllString	获取多功能编辑框的所有文本内容	
string

此函数获取指定多功能编辑框控件的所有文本内容。	手游、端游、H5
RichEditGetCurPosX	获取多功能编辑框当前光标位置的X坐标	
int

多功能编辑框控件创建后，程序会根据实际的控件宽高和文本内容进行文本的绘制。	手游、端游、H5
RichEditGetCurPosY	获取多功能编辑框当前光标位置的Y坐标	
int

多功能编辑框控件创建后，程序会根据实际的控件宽高和文本内容进行文本的绘制。	手游、端游、H5
RichEditGetEditEnable	获取多功能编辑框是否可以编辑	
bool

此函数获取指定多功能编辑框是否可以编辑的属性。	手游、端游、H5
RichEditGetSelectClickString	获取多功能编辑框中被点击的文本	
string

此函数获取多功能编辑框中被点击的文本。	手游、端游、H5
RichEditGetTextItemCount	获取多功能编辑框中文本控件的个数	
int

此函数获取多功能编辑框中文本控件的个数。	手游、端游、H5
RichEditGetTopPos	获取多功能编辑框文本的纵向偏移	
int

此函数获取多功能编辑框文本的纵向偏移量。	手游、端游、H5
RichEditGetTotalLine	获取多功能编辑框的最大行数	
int

此函数获取指定多功能编辑框所允许的最大行数。	手游、端游、H5
RichEditIsEnableInvalidateData	获取多功能编辑框是否启用了重新渲染文本	
bool

此函数获取多功能编辑框是否启用了重新渲染文本。	手游、端游
RichEditGetRenderItemList	获取多功能编辑框渲染项目列表	
bool

此函数获取多功能编辑框渲染项目列表。	手游、端游
RichEditGetRawItemList	获取多功能编辑框的原始内容	
bool

此函数获取多功能编辑框的原始内容。	手游、端游
其他操作
以下接口对多功能编辑框的一些高级功能进行设置，如气表情字符、气泡动画等。

接口名	中文名	返回值类型	功能描述	适用客户端
RichEditPlayBubbleAnim	播放多功能编辑框的气泡动画	
无

此函数播放指定多功能编辑框控件的气泡动画。	手游、H5
RichEditRegisterControlString	注册多功能编辑框的控制字符串	
无

此函数注册指定多功能编辑框控件的控制字符串。	手游、端游、H5
RichEditRegisterFace	注册多功能编辑框控件的表情	
无

此函数注册指定多功能编辑框控件的表情。	手游、端游、H5
RichEditUnRegisterControlString	注销多功能编辑框的控制字符串	
无

此函数注销指定多功能编辑框控件的控制字符串。	手游、端游、H5
<上一篇:列表框控件概览下一篇:滚动窗口控件概览>
RichEditEnableInvalidateData
设置多功能编辑框是否启用重新渲染文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-09-01 00:00:00
此函数设置在多功能编辑框控件的部分属性发生变化后，是否立即重新渲染文本。

上述的部分属性包括文字描边，文字字体，文字字体大小，控件大小和控件标记等。

相关的接口请参考WndSetTextOutlineSize，WndSetFontSize，WndSetUseTextGrow，WndSetFlags，WndSetSizeM，RichEditSetCurFont，RichEditSetContentRect。

语法
Luacopy 复制
GUI:RichEditEnableInvalidateData(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Enable

bool

 
是否启用重新渲染文本

true启用

false不启用

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
增加对3D的支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local str = "转移到未鉴定装备#COLORCOLOR_YELLOW#2000#COLOREND#元宝/次 转移到已鉴定装备#COLORCOLOR_YELLOW#4000#COLOREND#元宝/次"

local _GUIHandle0 = GUI:ButtonCreate(_Parent,"ExampleBtn",1800000065,620,450)
if _GUIHandle0 ~= 0 then
    GUI:WndRegistScript(_GUIHandle0, RDWndBaseCL_mouse_lbClick, "RichEditReRender")
end

local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",620,527,200,50)
if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 0)
    GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")
    GUI:WndSetCanRevMsg(_GUIHandle, false)
    GUI:RichEditAppendString(_GUIHandle, str)
    GUI:RichEditEnableInvalidateData(_GUIHandle, true)
end

function RichEditReRender(Handle)
    if _GUIHandle ~= 0 then
        dbg("左键单击按钮")
        GUI:RichEditSetContentRect(_GUIHandle, 0, 0, 100, 100)
        GUI:RichEditSetCurFont(_GUIHandle, "system")
    end
end

--此示例代码中，点击按钮改变多功能编辑框的大小和字体，多功能编辑框会立即重新渲染文本。
--渲染前：
RichEditEnableInvalidateData1

--渲染后：
RichEditEnableInvalidateData2
下一篇:设置多功能编辑框向左偏移的距离>
RichEditMoveContentLeft
设置多功能编辑框向左偏移的距离

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定多功能编辑框控件整体向左边偏移的距离。

语法
Luacopy 复制
GUI:RichEditMoveContentLeft(
    _HandleID,
    _OffsetX
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_OffsetX

int

 
向左偏移的距离

单位为像素（px）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,150,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
    GUI:RichEditMoveContentLeft(_GUIHandle, 100) --多功能编辑框控件向左偏移100像素
end

--此示例代码创建的多功能编辑框的位置坐标变为(100,200)。
<上一篇:设置多功能编辑框是否启用重新渲染文本下一篇:设置多功能编辑框文本区域大小>
RichEditSetContentRect
设置多功能编辑框文本区域大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-05-23 00:00:00
此函数设置指定多功能编辑框控件的区域大小和文本区域起始位置的坐标。

语法
Luacopy 复制
GUI:RichEditSetContentRect(
    _HandleID,
    _PosX,
    _PosY,
    _W,
    _H
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_PosX

int

 
文本区域起始位置的横坐标

坐标的位置以多功能编辑框控件左上角为原点

_PosY

int

 
文本区域起始位置的横坐标

坐标的位置以多功能编辑框控件左上角为原点

_W

int

 
多功能编辑框控件的宽度

_H

int

 
多功能编辑框控件的高度

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建一个宽度为100px高度为50px的多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetMultiBackImage(_GUIHandle, 1855011000, 1855011002, 1855011006,1855011008, 18550110004, 1855011001, 1855011007, 1855011003,1855011005) --设置多功能编辑框的背景图片
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit2",200,300,100,50) ---创建一个宽度为100px高度为50px的多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetMultiBackImage(_GUIHandle, 1855011000, 1855011002, 1855011006,1855011008, 18550110004, 1855011001, 1855011007, 1855011003,1855011005) --设置多功能编辑框的背景图片
    GUI:RichEditSetContentRect(_GUIHandle, 30, 30, 200, 100) --设置文本起始坐标为(30, 30)，宽度和高度重设为200px和100px
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

--此示例代码运行成功如下图所示（创建2个原始大小和原始位置均相同多功能编辑框用于对比）。

--上图为原始的多功能编辑框，下图为重设文本区域起始位置和控件区域大小的多功能编辑框。

RichEditSetContentRect.png
<上一篇:设置多功能编辑框向左偏移的距离下一篇:设置多功能编辑框的字体>
RichEditSetCurFont
设置多功能编辑框的字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定多功能编辑框控件的文本字体。

语法
Luacopy 复制
GUI:RichEditSetCurFont(
    _HandleID,
    _FontName
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,200,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18") --设置多功能编辑框的字体为隶书
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框") --添加文本
end

--此示例代码成功创建了如下图所示的多功能编辑框控件（手游）。

RichEditSetCurFont
<上一篇:设置多功能编辑框文本区域大小下一篇:设置多功能编辑框默认的文本颜色>
RichEditSetDefaultTextColor
设置多功能编辑框默认的文本颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定多功能编辑框控件默认的文本颜色。

语法
Luacopy 复制
GUI:RichEditSetDefaultTextColor(
    _HandleID,
    _Color
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Color

unsigned int

 
文本的默认颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_ORANGE为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,200,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetDefaultTextColor(_GUIHandle, COLOR_ORANGE) --设置多功能编辑框默认的文本颜色为橙色
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框") --添加文本
end

--此示例代码成功创建了如下图所示的多功能编辑框控件。

RichEditSetDefaultTextColor
<上一篇:设置多功能编辑框的字体下一篇:设置多功能编辑框是否可以编辑>
RichEditSetEditEnable
设置多功能编辑框是否可以编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定多功能编辑框是否可以编辑的属性。

多功能编辑框创建后，默认为可编辑状态。设置为不可编辑后，点击多功能编辑框文本时不会响应编辑。

note_icon 备注
H5调用此接口已无效果。

手游中，多功能编辑框暂不可编辑。

语法
Luacopy 复制
GUI:RichEditSetEditEnable(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
是否可以编辑

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
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetEditEnable(_GUIHandle, false) --设置多功能编辑框为不可编辑状态
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

--此示例代码运行成功后，点击多功能编辑框文本时不会响应编辑。
<上一篇:设置多功能编辑框默认的文本颜色下一篇:多功能编辑框开启长文本渲染>
RichEditSetLargeRender
多功能编辑框开启长文本渲染

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数开启多功能编辑框长文本渲染。

如在填充“用户须知”此类超长文本时需要开启。

语法
Luacopy 复制
GUI:RichEditSetLargeRender(
    _HandleID,
    _IsLargeRender
)
参数
_HandleID

number

 
窗口句柄

点击窗口句柄了解更多信息。

_IsLargeRender

boolean

 
true开启

false不开启

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_GUIHandle = GUI:RichEditCreate(_Parent, "Content", 132, 136, 1000, 30)
if _GUIHandle ~= 0 then
    GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")
    local str = [[

    #COLORCOLOR_WHITE#单日累计充值#COLORCOLOR_GREENG#100-499#COLORCOLOR_WHITE#元，次日返利#COLORCOLOR_GREENG#50%#COLORCOLOR_WHITE#!
    单日累计充值#COLORCOLOR_GREENG#500-999#COLORCOLOR_WHITE#元，次日返利#COLORCOLOR_GREENG#100%#COLORCOLOR_WHITE#!
    单日累计充值#COLORCOLOR_GREENG#1000-2999#COLORCOLOR_WHITE#元，次日返利#COLORCOLOR_GREENG#120%#COLORCOLOR_WHITE#!
    单日累计充值#COLORCOLOR_GREENG#3000-4999#COLORCOLOR_WHITE#元，次日返利#COLORCOLOR_GREENG#150%#COLORCOLOR_WHITE#!
    单日累计充值#COLORCOLOR_GREENG#5000-9999#COLORCOLOR_WHITE#元，次日返利#COLORCOLOR_GREENG#180%#COLORCOLOR_WHITE#!
    单日累计充值#COLORCOLOR_GREENG#10000#COLORCOLOR_WHITE#元以上，次日返利#COLORCOLOR_GREENG#200%#COLORCOLOR_WHITE#!
    #COLORCOLOR_GREENG#活动奖励次日通过邮件发放！
    ]]
    GUI:RichEditAppendString(_GUIHandle, str) --设置多功能编辑框的文本
    GUI:WndSetEnableM(_GUIHandle, false)
    GUI:RichEditSetLargeRender(_GUIHandle, true) --设置长文本渲染
end
<上一篇:设置多功能编辑框是否可以编辑下一篇:设置多功能编辑框显示的最大行数>
RichEditSetLastTotalLine
设置多功能编辑框显示的最大行数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数设置多功能编辑框显示的最大行数。

当要显示的文本内容行数大于设置的行数时只显示后面的n行（n为设置的行数）。

caution_icon 注意
此接口不可与接口GUI:RichEditSetTotalLine或接口UI:Lua_RichEditSetTotalLine同时使用。

此接口需要在多功能编辑框添加文本之前设置。

语法
Luacopy 复制
GUI:RichEditSetLastTotalLine(
    _HandleID,
    _MaxLineNum
)
参数
_HandleID

long

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_MaxLineNum

int

 
最大行数

不可设置为0

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"TitleDes", 420, 180, 320, 250) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetLastTotalLine(_GUIHandle,4) --设置显示文本内容的最后4行
    GUI:RichEditAppendString(_GUIHandle, "第一行\n第二行\n第三行\n第四行\n第五行\n第六行") --多功能编辑框添加文本内容
end

--此示例代码运行成功如下图所示。

RichEditSetLastTotalLine.png
<上一篇:多功能编辑框开启长文本渲染下一篇:设置指定多功能编辑框超链接文字的颜色>
RichEditSetLinkColor
设置指定多功能编辑框超链接文字的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-03-28 00:00:00
此函数设置指定多功能编辑框超链接文字的颜色。

如需进行全局设置，请使用接口SetSystemColor。

语法
Luacopy 复制
GUI:RichEditSetLinkColor(
    _HandleID,
    _Flag,
    _ColorStr
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

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

 
v1.1

 
新增对2D手游和2D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle1 = GUI:RichEditCreate(_Parent,"TitleDes1", 420,180, 100, 50) --创建多功能编辑框1
local _GUIHandle2 = GUI:RichEditCreate(_Parent,"TitleDes2", 420,220, 100, 50) --创建多功能编辑框2

if _GUIHandle1 ~= 0 then
    GUI:RichEditAppendString(_GUIHandle1,"#SELECT#多功能编辑框1#SELECTEND#") --设置多功能编辑框1的文字
end

if _GUIHandle2 ~= 0 then
    GUI:RichEditSetLinkColor(_GUIHandle2,2,"#FFFFE0") --修改多功能编辑框2的SELECT标签中的文字的颜色
    GUI:RichEditAppendString(_GUIHandle2,"#SELECT#多功能编辑框2#SELECTEND#") --设置多功能编辑框2的文字
end

--此示例代码成功创建了2个多功能编辑框并对其中1个控件修改了标签颜色，如下图所示。

RichEditSetLinkColor
<上一篇:设置多功能编辑框显示的最大行数下一篇:设置多功能编辑框的背景图片>
RichEditSetMultiBackImage
设置多功能编辑框的背景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-29 00:00:00
此函数设置指定多功能编辑框控件的背景图片。

语法
Luacopy 复制
GUI:RichEditSetMultiBackImage(
    _HandleID,
    _LeftUp,
    _RightUp,
    _LeftDown,
    _RightDown,
    _Mid,
    _Up,
    _Down,
    _Left,
    _Right
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_LeftUp

unsigned int

 
左上角的图片资源ID

_RightUp

unsigned int

 
右上角的图片资源ID

_LeftDown

unsigned int

 
左下角的图片资源ID

_RightDown

unsigned int

 
右下角的图片资源ID

_Mid

unsigned int

 
中间的图片资源ID

_Up

unsigned int

 
上方的图片资源ID

_Down

unsigned int

 
下方的图片资源ID

_Left

unsigned int

 
左侧的图片资源ID

_Right

unsigned int

 
右侧的图片资源ID

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
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",900,200,150,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetMultiBackImage(_GUIHandle, 1855011000, 1855011002, 1855011006,1855011008, 1855011004, 1855011001, 1855011007, 1855011003,1855011005) --设置多功能编辑框的图片背景
end

--此示例代码效果如下。

RichEditSetMultiBackImage
<上一篇:设置指定多功能编辑框超链接文字的颜色下一篇:设置多功能编辑框中文本的行高>
RichEditSetOffSet
设置多功能编辑框中文本的行高

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置多功能编辑框中文本行与行之间的垂直间隔，即行间距。

note_icon 备注
实际行高即为字体高度与行间距之和。

语法
Luacopy 复制
GUI:RichEditSetOffSet(
    _HandleID,
    _Offset
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

_Offset

int

 
行高

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,100) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetOffSet(_GUIHandle, 30) --设置行高
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

--此示例代码效果如下，多余的文本内容不会显示。

RichEditSetOffSet
<上一篇:设置多功能编辑框的背景图片下一篇:设置多功能编辑框控件中文本的描边颜色>
RichEditSetTextGrowColor
设置多功能编辑框控件中文本的描边颜色

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-02-18 00:00:00
此函数设置多功能编辑框控件中文本的描边颜色。

语法
Luacopy 复制
GUI:RichEditSetTextGrowColor(
    _HandleID,
    _Color
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

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
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",280, 355,160,20)
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框") --添加文本
    GUI:RichEditSetTextGrowColor(_GUIHandle,COLOR_RED) --设置多功能编辑框控件中文本的描边颜色
end

--此示例代码运行成功如下图所示。

RichEditSetTextGrowColor.png
<上一篇:设置多功能编辑框中文本的行高下一篇:设置多功能编辑框文本的透明度>
RichEditSetTextItemAlpha
设置多功能编辑框文本的透明度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定多功能编辑框中部分文本（以文本控件为单位）的透明度。

语法
Luacopy 复制
GUI:RichEditSetTextItemAlpha(
    _HandleID,
    _Beg,
    _End,
    _Alpha
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Beg

int

 
开始的文本控件序号

从0开始

_End

int

 
结束的文本控件序号

note_icon 备注
应用的范围为大于参数_Beg的值，小于等于参数_End的值。

关于文本内容如何分为多个文本控件，请参见RichEditGetTextItemCount。

_Alpha

unsigned char

 
透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,80) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "ABCDEFGHIJKL")  --添加文本
    GUI:RichEditAppendString(_GUIHandle, "MNOPQRSTUVWXYZ")  --添加文本
    GUI:RichEditAppendString(_GUIHandle, "1234567890")  --添加文本
    GUI:RichEditSetTextItemAlpha(_GUIHandle, 4, 5, 100) --设置第5个文本控件透明度为100
end

--此示例代码在手游中的效果如下。

RichEditSetTextItemAlpha
<上一篇:设置多功能编辑框控件中文本的描边颜色下一篇:设置多功能编辑框内文本左侧的偏移值>
RichEditSetTextLeftBorder
设置多功能编辑框内文本左侧的偏移值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定多功能编辑框控件内，第二行开始文本距离控件最左侧的偏移值。

语法
Luacopy 复制
GUI:RichEditSetTextLeftBorder(
    _HandleID,
    _Border
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

_Border

int

 
偏移值

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,150,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetTextLeftBorder(_GUIHandle, 50) --设置偏移量为50px
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

--此示例代码成功创建了如下图所示的多功能编辑框控件。

RichEditSetTextLeftBorder
<上一篇:设置多功能编辑框文本的透明度下一篇:设置多功能编辑框文本的纵向偏移>
RichEditSetTopPos
设置多功能编辑框文本的纵向偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置多功能编辑框文本的纵向偏移。

如下图中黄色框多功能编辑框控件区域，绿色框为文本。

多功能编辑框的高度不满足容纳所有的文本，超出的文本会溢出。这种情况下，可调用此函数来设置整个文本区域向上偏移。

RichEditSetTopPos_1
note_icon 备注
如文本未溢出多功能编辑框，则调用此函数没有任何效果。

语法
Luacopy 复制
GUI:RichEditSetTopPos(
    _HandleID,
    _Pos
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

_Pos

int

 
文本向上偏移量，单位为像素（px）。

caution_icon 注意
允许偏移的量最大不超过溢出文本的高度，否则程序自动设为溢出文本的高度。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，此为演示条目1。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目2。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目3。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目4。") --添加文本
    GUI:RichEditSetTopPos(_GUIHandle, 150) --设置向上偏移150px
    dbg ("偏移量为："..GUI:RichEditGetTopPos(_GUIHandle)) --获取实际的偏移值
end

--此示例代码效果如下，调试窗口将输出“偏移量为：137”。

RichEditSetTopPos
<上一篇:设置多功能编辑框内文本左侧的偏移值下一篇:设置多功能编辑框的最大行数>
RichEditSetTotalLine
设置多功能编辑框的最大行数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定多功能编辑框控件允许的最大行数。

当要显示的文本内容行数大于设置的行数时只显示前面的n行（n为设置的行数）。

note_icon 备注
H5调用此接口已无效果。

caution_icon 注意
此接口不可与接口GUI:RichEditSetLastTotalLine同时使用。

此接口需要在多功能编辑框添加文本之前设置。

语法
Luacopy 复制
GUI:RichEditSetTotalLine(
    _HandleID,
    _MaxLineNum
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_MaxLineNum

int

 
最大行数

不可设置为0

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetTotalLine(_GUIHandle, 3) --设置最大行数为3
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

--此示例代码在手游中的效果如下，只显示前3行的文本内容。

RichEditSetTotalLine
<上一篇:设置多功能编辑框文本的纵向偏移
RichEditGetAllString
获取多功能编辑框的所有文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定多功能编辑框控件的所有文本内容。

语法
Luacopy 复制
GUI:RichEditGetAllString(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

string

 
多功能编辑框所有的文本内容。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。")
    dbg ("多功能编辑框中的文本为："..GUI:RichEditGetAllString(_GUIHandle))
end

--此示例代码运行后，调试窗口将输出“多功能编辑框中的文本为：这是一个多功能编辑框，以下为演示文本”。
下一篇:获取多功能编辑框当前光标位置的X坐标>
RichEditGetCurPosX
获取多功能编辑框当前光标位置的X坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
多功能编辑框控件创建后，程序会根据实际的控件宽高和文本内容进行文本的绘制。

此函数获取多功能编辑框当前的光标位置的X坐标。

语法
Luacopy 复制
GUI:RichEditGetCurPosX(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
属性

int

 
返回当前的光标位置的X坐标

单位为像素（px）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,100) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。")
    dbg ("光标所在位置X坐标："..GUI:RichEditGetCurPosX(_GUIHandle))
    dbg ("光标所在位置Y坐标："..GUI:RichEditGetCurPosY(_GUIHandle))
end

--此示例代码创建了长宽为200px的多功能编辑框，返回光标上方点,即图中黄色点所在的X坐标，以编辑框左上方为原点：
光标所在位置X坐标：80
光标所在位置Y坐标：66

RichEditGetCurPos
<上一篇:获取多功能编辑框的所有文本内容下一篇:获取多功能编辑框当前光标位置的Y坐标>
RichEditGetCurPosY
获取多功能编辑框当前光标位置的Y坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
多功能编辑框控件创建后，程序会根据实际的控件宽高和文本内容进行文本的绘制。

此函数获取多功能编辑框当前的光标位置的Y坐标。

语法
Luacopy 复制
GUI:RichEditGetCurPosY(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
属性

int

 
返回当前的光标位置的Y坐标

单位为像素（px）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,100) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。")
    dbg ("光标所在位置X坐标："..GUI:RichEditGetCurPosX(_GUIHandle))
    dbg ("光标所在位置Y坐标："..GUI:RichEditGetCurPosY(_GUIHandle))
end

--此示例代码创建了长宽为200px的多功能编辑框，返回光标上方点,即图中黄色点所在的Y坐标，以编辑框左上方为原点：
光标所在位置X坐标：80
光标所在位置Y坐标：66

RichEditGetCurPos
<上一篇:获取多功能编辑框当前光标位置的X坐标下一篇:获取多功能编辑框是否可以编辑>
RichEditGetEditEnable
获取多功能编辑框是否可以编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定多功能编辑框是否可以编辑的属性。

多功能编辑框创建后，默认是可以编辑文字的状态。

语法
Luacopy 复制
GUI:RichEditGetEditEnable(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
返回是否可以编辑的属性。

true为可编辑

false为不可编辑

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。")
    if GUI:RichEditGetEditEnable(_GUIHandle) then
        dbg ("多功能编辑框可编辑")
    else
        dbg ("多功能编辑框不可编辑")
    end
end

--此示例代码运行后，调试窗口将输出“多功能编辑框可编辑”。
<上一篇:获取多功能编辑框当前光标位置的Y坐标下一篇:获取多功能编辑框的原始内容>
RichEditGetRawItemList
获取多功能编辑框的原始内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
该函数获取多功能编辑框的原始内容。

语法
Luacopy 复制
GUI:RichEditGetRawItemList( 
  _HandleID
)

参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
操作结果

bool

 
获取数据是否成功。

true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i代表获取项目的序号；

LuaRet[i][1]项目的类型：0代表文本；

LuaRet[i][2]项目的原始内容；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local msg = ""
msg = msg.."文本测试1 <@testA *01*文本测试1>\n"
msg = msg.."文本测试2 <@testB *01*文本测试2>\n"
msg = msg.."这是一张图片：#IMAGE<ID:1806000057>#\n"
msg = msg.."#OFFSET<X:0,Y:10>#这是一个按钮：#OFFSET<X:50,Y:0>#<@button *4003910000#-25#-10#0#0*按钮>\n"

_GUIHandle = GUI:RichEditCreate(_Parent, "testRichEdit", 15, 43, 190, 190)

if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 0)
    GUI:RichEditSetEditEnable(_GUIHandle, false)
    GUI:RichEditAppendString(_GUIHandle, msg)
    if GUI:RichEditGetRawItemList(_GUIHandle) == true then --获取多能编辑框的原始内容
        for k, v in ipairs(LuaRet) do
            dbg("v:"..serialize(v))
        end
    end
end


--控制台将输出：

RichEditGetRawItemList
<上一篇:获取多功能编辑框是否可以编辑下一篇:获取多功能编辑框渲染项目列表>
RichEditGetRenderItemList
获取多功能编辑框渲染项目列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-11-21 00:00:00
该函数获取多功能编辑框渲染项目列表。

语法
Luacopy 复制
GUI:RichEditGetRenderItemList( 
  _HandleID
)

参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
操作结果

bool

 
获取数据是否成功。

true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i代表获取项目的序号；

LuaRet[i][1]项目的类型：0代表文本，3代表图片，5代表按钮；

LuaRet[i][2]项目是否可以被选择。true代表是，false代表否；

LuaRet[i][3]针对不同的类型，所获取到的项目的信息。文本类型时，获取的是文本内容；图片类型时，获取的是图片资源ID；按钮类型时，获取的是按钮使用的图片资源ID和按钮的文本，格式为图片资源ID_文本；

LuaRet[i][4]位置的X坐标，单位为像素；

LuaRet[i][5]位置的Y坐标，单位为像素；

LuaRet[i][6]项目的宽度，单位为像素；

LuaRet[i][7]项目的高度，单位为像素；

版本历史
v1.0

 
首次发布

v1.1

 
增加对2D手游和端游的支持

示例代码
Luacopy 复制
--以对话NPC为例，服务端NPC关联的脚本中：
function main(npc, player)
	local msg = ""
	msg = msg.."文本测试1 <@testA *01*文本测试1>\n"
	msg = msg.."文本测试2 <@testB *01*文本测试2>\n"
	msg = msg.."这是一张图片：#IMAGE<ID:1806000057>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#这是一个按钮：#OFFSET<X:50,Y:0>#<@button *4003910000#-25#-10#0#0*按钮>\n"
	return msg
end
--客户端NpcTalk.lua中增加输出获取信息
--初始化中增加定时器
function NpcTalk.UIInit(_Handle)
    CL:AddDelayTask("NpcTalk.GetRenderItemList()", 100, 1)
end
--增加NpcTalk.GetRenderItemList()
function NpcTalk.GetRenderItemList()
    local _GUIHandle = GUI:WndFindWindow(NpcTalk.WndHandle,"NpcTalkText")
    if _GUIHandle ~= 0 then
        GUI:RichEditGetRenderItemList(_GUIHandle)
        dbg(""..serialize(LuaRet))
    end
end

--对话NPC，展示面板如下图：
RichEditGetRenderItemList2
--控制台将输出：
RichEditGetRenderItemList
<上一篇:获取多功能编辑框的原始内容下一篇:获取多功能编辑框中被点击的文本>
RichEditGetSelectClickString
获取多功能编辑框中被点击的文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取多功能编辑框中被点击的文本内容。

文本内容需要放在#SELECT#标签中才可被点击（即#SELECT#文本内容#SELECTEND#）。

note_icon 备注
因为H5不支持#SELECT#标签，所以H5无法调用此接口。

语法
Luacopy 复制
GUI:RichEditGetSelectClickString(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
string

 
执行成功则返回所点击的文本内容

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50)
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle,"#SELECT#普通挂机#SELECTEND#") --添加可点击的文本内容
    GUI:RichEditAppendString(_GUIHandle,"#SELECT#挂机#SELECTEND#") --添加可点击的文本内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GetSelectString") --注册窗体“鼠标左键弹起”事件发生时回调的函数
    GUI:RichEditSetEditEnable(_GUIHandle, false) --设置多功能编辑框为不可编辑状态
end

function GetSelectString(_GUIHandle)
    dbg ("多功能编辑框选中的文本内容为："..CL:GBK2UTF8(GUI:RichEditGetSelectClickString(_GUIHandle))) --获取多功能编辑框中被点击的文本内容(打印时，若出现乱码可使用接口CL:GBK2UTF8进行转码)
end

--此示例代码运行成功如下图所示。

RichEditGetSelectClickString.png

--当点击“普通挂机”文字时，控制台将输出如下内容。

RichEditGetSelectClickString_2.png

--当点击“挂机”文字时，控制台将输出如下内容。

RichEditGetSelectClickString_3.png
<上一篇:获取多功能编辑框渲染项目列表下一篇:获取多功能编辑框中文本控件的个数>
RichEditGetTextItemCount
获取多功能编辑框中文本控件的个数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取多功能编辑框中文本控件的个数。

一般来说，调用接口GUI:RichEditAppendString添加1个文本条目即为1个文本控件。

但若此文本条目长度超出多功能编辑框的宽度时，文本将会被自动拆分为多行显示，此时每个新行算作1个新的文本控件。


例如：设置多功能编辑框的宽度为100px，假设单个英文字符占用宽度为10px，则每行可显示10个英文字符。

使用接口添加字符串条目“ABCDEFGHIJKL”，则“ABCDEFGHIJ”10个字符组成第1行（即第1个文本控件），剩余的“KL”组成第2行（即第2个文本控件），因此此时的文本控件个数为2。

1个文本条目最终显示为2行，共2个文本控件，如下：

ABCDEFGHIJ

KL

如再追加字符串条目“MNOPQRSTUVWXYZ”，则原来的“KL”和新加的8个字符“MNOPQRST”（即第3个文本控件）共同组成第2行，剩余的“UVWXYZ”组成第3行（即第4个文本控件），因此此时的文本控件个数为4。

2个文本条目最终显示为3行，共4个文本控件，如下：

ABCDEFGHIJ

KLMNOPQRST

UVWXYZ

语法
Luacopy 复制
GUI:RichEditGetTextItemCount(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
执行成功则返回文本控件的个数

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,80) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "ABCDEFGHIJKL") --添加文本
    dbg ("文本控件的个数："..GUI:RichEditGetTextItemCount(_GUIHandle)) --获取多功能编辑框中文本控件的个数
end

local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit2",200,300,100,80) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "ABCDEFGHIJKL") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "MNOPQRSTUVWXYZ") --添加文本
    dbg ("文本控件的个数："..GUI:RichEditGetTextItemCount(_GUIHandle)) --获取多功能编辑框中文本控件的个数
end

--当添加文本内容为“ABCDEFGHIJKL”时，手游中运行成功如下图所示同时控制台将输出如下内容。

RichEditGetTextItemCount.png

RichEditGetTextItemCount_3.png

--当添加文本内容为“ABCDEFGHIJKL”和“MNOPQRSTUVWXYZ”时，手游中运行成功如下图所示同时控制台将输出如下内容。

RichEditGetTextItemCount_2.png

RichEditGetTextItemCount_4.png
<上一篇:获取多功能编辑框中被点击的文本下一篇:获取多功能编辑框文本的纵向偏移>
RichEditGetTopPos
获取多功能编辑框文本的纵向偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取多功能编辑框文本的纵向偏移量。

请参见RichEditSetTopPos了解更多信息。

语法
Luacopy 复制
GUI:RichEditGetTopPos(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

int

 
返回文本的偏移量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，此为演示条目1。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目2。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目3。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目4。") --添加文本
    GUI:RichEditSetTopPos(_GUIHandle, 150) --设置向上偏移150px
    dbg ("偏移量为："..GUI:RichEditGetTopPos(_GUIHandle)) --获取实际的偏移值
end

--此示例代码效果如下，调试窗口将输出“偏移量为：137”。

RichEditSetTopPos
<上一篇:获取多功能编辑框中文本控件的个数下一篇:获取多功能编辑框的最大行数>
RichEditGetTotalLine
获取多功能编辑框的最大行数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定多功能编辑框所允许的最大行数。

语法
Luacopy 复制
GUI:RichEditGetTotalLine(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
所允许的最大行数。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。")
    dbg ("允许最大行数是："..GUI:RichEditGetTotalLine(_GUIHandle))
end

--此示例代码运行后，调试窗口将输出“允许最大行数是：100”。
<上一篇:获取多功能编辑框文本的纵向偏移下一篇:获取多功能编辑框是否启用了重新渲染文本>
RichEditIsEnableInvalidateData
获取多功能编辑框是否启用了重新渲染文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-09-01 00:00:00
此函数获取多功能编辑框是否启用了重新渲染文本。

相关接口请参考RichEditEnableInvalidateData。

语法
Luacopy 复制
GUI:RichEditIsEnableInvalidateData(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
属性

bool

 
是否启用了重新渲染文本

true已启用

false未启用

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对3D的支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local str = "转移到未鉴定装备#COLORCOLOR_YELLOW#2000#COLOREND#元宝/次 转移到已鉴定装备#COLORCOLOR_YELLOW#4000#COLOREND#元宝/次"

local _GUIHandle0 = GUI:ButtonCreate(_Parent,"ExampleBtn",1800000065,620,450)
if _GUIHandle0 ~= 0 then
    GUI:WndRegistScript(_GUIHandle0, RDWndBaseCL_mouse_lbClick, "RichEditReRender")
end

local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",620,527,200,50)
if _GUIHandle ~= 0 then
    GUI:WndSetParam(_GUIHandle, 0)
    GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")
    GUI:WndSetCanRevMsg(_GUIHandle, false)
    GUI:RichEditAppendString(_GUIHandle, str)
    GUI:RichEditEnableInvalidateData(_GUIHandle, true)
end

function RichEditReRender(Handle)
    if _GUIHandle ~= 0 then
        dbg("左键单击按钮")
        local rerenderEnabled = GUI:RichEditIsEnableInvalidateData(_GUIHandle)
        dbg("多功能编辑框重新渲染状态："..tostring(rerenderEnabled))
        GUI:RichEditSetContentRect(_GUIHandle, 0, 0, 100, 100)
        GUI:RichEditSetCurFont(_GUIHandle, "system")
    end
end

--此示例代码中，点击按钮改变多功能编辑框的大小和字体，并输出是否启用了重新渲染文本。
--渲染前：
RichEditEnableInvalidateData1

--渲染后：
RichEditEnableInvalidateData2
<上一篇:获取多功能编辑框的最大行数
RichEditAppendString
多功能编辑框添加文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-02 00:00:00
此函数添加文本内容至指定的多功能编辑框控件。

多功能编辑框允许多次调用此函数添加多个文本条目，文本会按顺序依次追加（而不是覆盖先前的文本内容）。

根据所创建多功能编辑框的宽度，所有的文本会被自动拆分为多行显示。

note_icon 备注
建议在调用修改字体及字体大小的接口（例如：GUI:RichEditSetCurFont）之后，再调用此接口来添加文本。

语法
Luacopy 复制
GUI:RichEditAppendString(
    _HandleID,
    _Info
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
新增的文本内容

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,200,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，此为演示条目1。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目2。") --添加文本
    GUI:RichEditAppendString(_GUIHandle, "此为演示条目3。") --添加文本
end

--此示例代码在手游中成功创建了如下图所示的多功能编辑框控件。

RichEditCreate
下一篇:清空多功能编辑框的文本内容>
RichEditClear
清空多功能编辑框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-05-31 00:00:00
此函数清空指定多功能编辑框的文本内容。

语法
Luacopy 复制
GUI:RichEditClear(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,200,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框") --添加文本
    GUI:RichEditClear(_GUIHandle) --清空多功能编辑框的文本内容
end

--此示例代码运行后多功能编辑框中的文本内容被成功清空。
<上一篇:多功能编辑框添加文本下一篇:播放多功能编辑框的气泡动画>
RichEditPlayBubbleAnim
播放多功能编辑框的气泡动画

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数播放指定多功能编辑框控件的气泡动画。

语法
Luacopy 复制
GUI:RichEditPlayBubbleAnim(
    _HandleID,
    flg,
    filename
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

flg

bool

 
是否重新开始播放气泡动画。

true重新播放。

false不重新播放。

filename

string

 
气泡动画的名称。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function PlayVocalFile( filename )
    local exist, _, name = string.find(filename, "(%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w)")
    local _RichEditHandle = 0
    if not WndGetVisible(0, "GameMainInterface,ChatWindow") then
        _RichEditHandle = GUI:WndFindChildM(ChatWindowEXHide.WndHandle, "ChatContentRE")
    else
         _RichEditHandle = CL:GetChatWindowSelectedChatLine()
    end
    if exist == nil then
        return
    end
    if CL:IsPlayRecording() and PlayVocalFile_PreName == name then
        CL:StopPlayRecord()
        GUI:RichEditPlayBubbleAnim(_RichEditHandle,false,name)
    else
        CL:StopPlayRecord()
        GUI:RichEditPlayBubbleAnim(_RichEditHandle,false,PlayVocalFile_PreName)
        PlayVocalFile_PreName = name
        CL:PlayRecord(name, "PlayVocalProgress")
        GUI:RichEditPlayBubbleAnim(_RichEditHandle,true,name)
    end
end
<上一篇:清空多功能编辑框的文本内容下一篇:注册多功能编辑框的控制字符串>
RichEditRegisterControlString
注册多功能编辑框的控制字符串

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数注册指定多功能编辑框控件的控制字符串。

语法
Luacopy 复制
GUI:RichEditRegisterControlString(
    _HandleID,
    _ControlString
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

_ControlString

string

 
控制字符串内容。

目前仅支持参数值FACE。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GUI:RichEditRegisterControlString(_RichEditHandle, "FACE")
<上一篇:播放多功能编辑框的气泡动画下一篇:注册多功能编辑框控件的表情>
RichEditRegisterFace
注册多功能编辑框控件的表情

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数注册指定多功能编辑框控件的表情。

note_icon 备注
CL类接口有同名函数，也可使用CL:RichEditRegisterFace进行调用。

语法
Luacopy 复制
GUI:RichEditRegisterFace(
    _HandleID
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:注册多功能编辑框的控制字符串下一篇:让富文本框在指定时间内滚动到底>
RichEditScrollToBottom
让富文本框在指定时间内滚动到底

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-05-08 00:00:00
此函数作用是让富文本框在指定时间内滚动到底。

语法
Luacopy 复制
GUI:RichEditScrollToBottom(
    handle,
    duration
)
参数
handle

int

 
富文本框的句柄

点击窗口句柄了解更多信息

duration

uint

 
滚动时间，单位为毫秒（ms）。

note_icon 备注
如果duration为0，表示立即滚动到位。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）的ChatWindowEX.lua文件为例
--……省略部分代码

function ChatWindowEX.main()
	local _Parent = LuaGlobal["AttachPartent"]

    --……省略部分代码
    _GUIHandle = GUI:RichEditCreate(_Parent, "ChatContentRE", 54, 2, 683, 112)
    if _GUIHandle ~= 0 then
        GUI:WndAddTimerBrief(_GUIHandle, 1000, "ChatWindowEX.OnUpdata")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"testup",4010210000,50,-140)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"测试滚动到顶")
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ChatWindowEX.up")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"testdown",4010210000,210,-140)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"测试滚动到低")
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ChatWindowEX.down")
    end

    --……省略部分代码

end

--……省略部分代码

function ChatWindowEX.up()
    local Handle = GetWindow(_Parent,"ChatContentRE")
    GUI:RichEditScrollToTop(Handle, 5000)
end

function ChatWindowEX.down()
    local Handle = GetWindow(_Parent,"ChatContentRE")
    GUI:RichEditScrollToBottom(Handle, 5000)
end

--……省略部分代码

ChatWindowEX.main()

--此示例代码运行后端游如下图所示。

RichEditScrollToBottom.gif

--此示例代码运行后手游如下图所示。

RichEditScrollToBottom_2.gif
<上一篇:注册多功能编辑框控件的表情下一篇:让富文本框在指定时间内滚动到顶>
RichEditScrollToTop
让富文本框在指定时间内滚动到顶

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-05-08 00:00:00
此函数作用是让富文本框在指定时间内滚动到顶。

语法
Luacopy 复制
GUI:RichEditScrollToTop(
    handle,
    duration
)
参数
handle

int

 
富文本框的句柄

点击窗口句柄了解更多信息

duration

uint

 
滚动时间，单位为毫秒（ms）。

note_icon 备注
如果duration为0，表示立即滚动到位。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）的ChatWindowEX.lua文件为例
--……省略部分代码

function ChatWindowEX.main()
    local _Parent = LuaGlobal["AttachPartent"]

    --……省略部分代码
    _GUIHandle = GUI:RichEditCreate(_Parent, "ChatContentRE", 54, 2, 683, 112)
    if _GUIHandle ~= 0 then
        GUI:WndAddTimerBrief(_GUIHandle, 1000, "ChatWindowEX.OnUpdata")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"testup",4010210000,50,-140)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"测试滚动到顶")
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ChatWindowEX.up")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"testdown",4010210000,210,-140)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"测试滚动到低")
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "ChatWindowEX.down")
    end

    --……省略部分代码

end

--……省略部分代码

function ChatWindowEX.up()
    local Handle = GetWindow(_Parent,"ChatContentRE")
    GUI:RichEditScrollToTop(Handle, 5000)
end

function ChatWindowEX.down()
    local Handle = GetWindow(_Parent,"ChatContentRE")
    GUI:RichEditScrollToBottom(Handle, 5000)
end

--……省略部分代码

ChatWindowEX.main()

--此示例代码运行后端游如下图所示。

RichEditScrollToTop.gif

--此示例代码运行后手游如下图所示。

RichEditScrollToTop_2.gif
<上一篇:让富文本框在指定时间内滚动到底下一篇:注销多功能编辑框的控制字符串>
RichEditUnRegisterControlString
注销多功能编辑框的控制字符串

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数注销指定多功能编辑框控件的控制字符串。

语法
Luacopy 复制
GUI:RichEditUnRegisterControlString(
    _HandleID,
    _ControlString
)
参数
_HandleID

int

 
指定多功能编辑框控件的句柄。

点击窗口句柄了解更多信息。

_ControlString

string

 
控制字符串内容。

目前仅支持参数值FACE。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GUI:RichEditUnRegisterControlString(_RichEditHandle, "FACE")
<上一篇:让富文本框在指定时间内滚动到顶
下面是封装接口：
RichEditAppendString
多功能编辑框添加文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-02 00:00:00
此函数添加文本内容至指定的多功能编辑框控件。

多功能编辑框允许多次调用此函数添加多个文本条目，文本会按顺序依次追加（而不是覆盖先前的文本内容）。

根据所创建多功能编辑框的宽度，所有的文本会被自动拆分为多行显示。

note_icon 备注
建议在调用修改字体及字体大小的接口（例如：GUI:RichEditSetCurFont）之后，再调用此接口来添加文本。

语法
Luacopy 复制
RichEditAppendString(
    _Handle,
    _Info,
    _Text
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

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
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,200,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    RichEditAppendString(_GUIHandle, nil,"这是一个多功能编辑框，此为演示条目1。") --添加文本
    RichEditAppendString(_GUIHandle, nil,"此为演示条目2。") --添加文本
    RichEditAppendString(_GUIHandle, nil,"此为演示条目3。") --添加文本
end

--此示例代码在手游中成功创建了如下图所示的多功能编辑框控件。

RichEditCreate
下一篇:清空多功能编辑框的文本内容>
RichEditClear
清空多功能编辑框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数清空指定多功能编辑框的文本内容。

语法
Luacopy 复制
RichEditClear(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,200,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框") --添加文本
    RichEditClear(_GUIHandle,nil) --清空多功能编辑框的文本内容
end

--此示例代码运行后多功能编辑框中的文本内容被成功清空。
<上一篇:多功能编辑框添加文本下一篇:获取多功能编辑框中被点击的文本>
RichEditGetSelectClickString
获取多功能编辑框中被点击的文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取多功能编辑框中被点击的文本内容。

文本内容需要放在#SELECT#标签中才可被点击（即#SELECT#文本内容#SELECTEND#）。

note_icon 备注
因为H5不支持#SELECT#标签，所以H5无法调用此接口。

语法
Luacopy 复制
RichEditGetSelectClickString(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

返回值
string

 
执行成功则返回所点击的文本内容

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50)
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle,"#SELECT#普通挂机#SELECTEND#") --添加可点击的文本内容
    GUI:RichEditAppendString(_GUIHandle,"#SELECT#挂机#SELECTEND#") --添加可点击的文本内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GetSelectString") --注册窗体“鼠标左键弹起”事件发生时回调的函数
    GUI:RichEditSetEditEnable(_GUIHandle, false) --设置多功能编辑框为不可编辑状态
end

function GetSelectString(_GUIHandle)
    dbg ("多功能编辑框选中的文本内容为："..CL:GBK2UTF8(RichEditGetSelectClickString(_GUIHandle,nil))) --获取多功能编辑框中被点击的文本内容(打印时，若出现乱码可使用接口CL:GBK2UTF8进行转码)
end

--此示例代码运行成功如下图所示。

RichEditGetSelectClickString.png

--当点击“普通挂机”文字时，控制台将输出如下内容。

RichEditGetSelectClickString_2.png

--当点击“挂机”文字时，控制台将输出如下内容。

RichEditGetSelectClickString_3.png
<上一篇:清空多功能编辑框的文本内容下一篇:获取多功能编辑框中文本控件的个数>
RichEditGetTextItemCount
获取多功能编辑框中文本控件的个数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取多功能编辑框中文本控件的个数。

一般来说，调用接口GUI:RichEditAppendString添加1个文本条目即为1个文本控件。

但若此文本条目长度超出多功能编辑框的宽度时，文本将会被自动拆分为多行显示，此时每个新行算作1个新的文本控件。


例如：设置多功能编辑框的宽度为100px，假设单个英文字符占用宽度为10px，则每行可显示10个英文字符。

使用接口添加字符串条目“ABCDEFGHIJKL”，则“ABCDEFGHIJ”10个字符组成第1行（即第1个文本控件），剩余的“KL”组成第2行（即第2个文本控件），因此此时的文本控件个数为2。

1个文本条目最终显示为2行，共2个文本控件，如下：

ABCDEFGHIJ

KL

如再追加字符串条目“MNOPQRSTUVWXYZ”，则原来的“KL”和新加的8个字符“MNOPQRST”（即第3个文本控件）共同组成第2行，剩余的“UVWXYZ”组成第3行（即第4个文本控件），因此此时的文本控件个数为4。

2个文本条目最终显示为3行，共4个文本控件，如下：

ABCDEFGHIJ

KLMNOPQRST

UVWXYZ

语法
Luacopy 复制
RichEditGetTextItemCount(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

返回值
int

 
执行成功则返回文本控件的个数

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,80) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "ABCDEFGHIJKL")  --添加文本
    dbg ("文本控件的个数："..RichEditGetTextItemCount(_GUIHandle,nil)) --获取多功能编辑框中文本控件的个数
end

local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit2",200,300,100,80) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "ABCDEFGHIJKL")  --添加文本
    GUI:RichEditAppendString(_GUIHandle, "MNOPQRSTUVWXYZ")  --添加文本
    dbg ("文本控件的个数："..RichEditGetTextItemCount(_GUIHandle,nil)) --获取多功能编辑框中文本控件的个数
end

--当添加文本内容为“ABCDEFGHIJKL”时，手游中运行成功如下图所示同时控制台将输出如下内容。

RichEditGetTextItemCount.png

RichEditGetTextItemCount_3.png

--当添加文本内容为“ABCDEFGHIJKL”和“MNOPQRSTUVWXYZ”时，手游中运行成功如下图所示同时控制台将输出如下内容。

RichEditGetTextItemCount_2.png

RichEditGetTextItemCount_4.png
<上一篇:获取多功能编辑框中被点击的文本下一篇:设置多功能编辑框文本区域大小>
RichEditSetContentRect
设置多功能编辑框文本区域大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定多功能编辑框控件的区域大小和文本区域起始位置的坐标。

语法
Luacopy 复制
RichEditSetContentRect(
    _Handle,
    _Info,
    _X,
    _Y,
    _W,
    _H
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

_X

int

 
文本区域起始位置的横坐标

坐标的位置以多功能编辑框控件左上角为原点

_Y

int

 
文本区域起始位置的纵坐标

坐标的位置以多功能编辑框控件左上角为原点

_W

int

 
多功能编辑框控件的宽度

_H

int

 
多功能编辑框控件的高度

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建一个宽度为100px高度为50px的多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetMultiBackImage(_GUIHandle, 1855011000, 1855011002, 1855011006,1855011008, 18550110004, 1855011001, 1855011007, 1855011003,1855011005) --设置多功能编辑框的背景图片
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit2",200,300,100,50) ---创建一个宽度为100px高度为50px的多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditSetMultiBackImage(_GUIHandle, 1855011000, 1855011002, 1855011006,1855011008, 18550110004, 1855011001, 1855011007, 1855011003,1855011005) --设置多功能编辑框的背景图片
    RichEditSetContentRect(_GUIHandle,nil, 30, 30, 200, 100) --设置文本起始坐标为(30, 30)，宽度和高度重设为200px和100px
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

--此示例代码运行成功如下图所示（创建2个原始大小和原始位置均相同多功能编辑框用于对比）。

--上图为原始的多功能编辑框，下图为重设文本区域起始位置和控件区域大小的多功能编辑框。

RichEditSetContentRect.png
<上一篇:获取多功能编辑框中文本控件的个数下一篇:设置多功能编辑框的字体>
RichEditSetCurFont
设置多功能编辑框的字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定多功能编辑框控件的文本字体，默认为宋体。

语法
Luacopy 复制
RichEditSetCurFont(
    _Handle,
    _Info,
    _FontName
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent, "TestRichEdit", 150, 370, 200, 50)
if _GUIHandle ~= 0 then
    RichEditSetCurFont(_GUIHandle,nil, "SIMLI18") --设置多功能编辑框的字体为隶书
    RichEditAppendString(_GUIHandle,nil, "这是改变字体的多功能编辑框") --添加文本
end

--此示例代码运行成功如下图所示。

RichEditSetCurFont_2.png
<上一篇:设置多功能编辑框文本区域大小下一篇:设置多功能编辑框默认的文本颜色>
RichEditSetDefaultTextColor
设置多功能编辑框默认的文本颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定多功能编辑框控件默认的文本颜色。

语法
Luacopy 复制
RichEditSetDefaultTextColor(
    _Handle,
    _Info,
    _Color
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

_Color

unsigned int

 
文本的默认颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_ORANGE为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent, "TestRichEdit", 150, 320, 200, 50)
if _GUIHandle ~= 0 then
    RichEditSetDefaultTextColor(_GUIHandle,nil, COLOR_ORANGE)--设置多功能编辑框默认的文本颜色为橙色
    RichEditAppendString(_GUIHandle,nil, "这是一个多功能编辑框") --添加文本
end

--此示例代码运行成功如下图所示。

RichEditSetDefaultTextColor
<上一篇:设置多功能编辑框的字体下一篇:设置多功能编辑框是否可以编辑>
RichEditSetEnable
设置多功能编辑框是否可以编辑

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定多功能编辑框是否可以编辑的属性。

多功能编辑框创建后，默认为可编辑状态。设置为不可编辑后，点击多功能编辑框文本时不会响应编辑。

note_icon 备注
H5调用此接口已无效果。

手游中，多功能编辑框暂不可编辑。

语法
Luacopy 复制
RichEditSetEnable(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

_Flag

bool

 
是否可以编辑

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
local _GUIHandle = GUI:RichEditCreate(_Parent, "TestRichEdit", 150, 320, 120, 150)
if _GUIHandle ~= 0 then
    RichEditSetEnable(_GUIHandle,nil, false) --设置多功能编辑框为不可编辑状态
    RichEditAppendString(_GUIHandle,nil,"这是一个多功能编辑框，此为演示条目1。 ") --添加文本内容
    RichEditAppendString(_GUIHandle,nil, "此为演示条目2。 ") --添加文本内容
    RichEditAppendString(_GUIHandle,nil, "此为演示条目3。 ") --添加文本内容
end

--此示例代码运行成功后，点击多功能编辑框文本时不会响应编辑。
<上一篇:设置多功能编辑框默认的文本颜色下一篇:一键设置多功能编辑框属性>
RichEditSetProp
一键设置多功能编辑框属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数一键设置多功能编辑框属性。

语法
Luacopy 复制
RichEditSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _FontName,
    _DefaultColor,
    _Text
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
是否可用

true多功能编辑框控件可用

false多功能编辑框控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_FontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

_DefaultColor

unsigned int

 
文本的默认颜色

具体请参见颜色字符串页面

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
--示例代码中的COLOR_ORANGE为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent, "TestRichEdit", 150, 320, 200, 50)
if _GUIHandle ~= 0 then
    RichEditSetProp(_GUIHandle,nil,true,false,false,"SIMLI18",COLOR_ORANGE,"这是一个多功能编辑框") --一键设置多功能编辑框属性
end

--此示例代码运行成功如下图所示。

RichEditSetProp.png
<上一篇:设置多功能编辑框是否可以编辑下一篇:设置多功能编辑框文本的透明度>
RichEditSetTextItemAlpha
设置多功能编辑框文本的透明度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定多功能编辑框中部分文本（以文本控件为单位）的透明度。

语法
Luacopy 复制
RichEditSetTextItemAlpha(
    _Handle,
    _Info,
    _Beg,
    _End,
    _Alpha
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

_Beg

int

 
开始的文本控件序号

从0开始

_End

int

 
结束的文本控件序号

note_icon 备注
应用的范围为大于参数_Beg的值，小于等于参数_End的值。

关于文本内容如何分为多个文本控件，请参见RichEditGetTextItemCount。

_Alpha

unsigned char

 
透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,80) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "ABCDEFGHIJKL")  --添加文本
    GUI:RichEditAppendString(_GUIHandle, "MNOPQRSTUVWXYZ")  --添加文本
    GUI:RichEditAppendString(_GUIHandle, "1234567890")  --添加文本
    RichEditSetTextItemAlpha(_GUIHandle,nil, 4, 5, 100) --设置第5个文本控件透明度为100
end

--此示例代码在手游中的效果如下。

RichEditSetTextItemAlpha
<上一篇:一键设置多功能编辑框属性下一篇:设置多功能编辑框的最大行数>
RichEditSetTotalLine
设置多功能编辑框的最大行数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置指定多功能编辑框控件允许的最大行数。

当要显示的文本内容行数大于设置的行数时只显示前面的n行（n为设置的行数）。

note_icon 备注
H5调用此接口已无效果。

caution_icon 注意
此接口不可与接口GUI:RichEditSetLastTotalLine同时使用。

此接口需要在多功能编辑框添加文本之前设置。

语法
Luacopy 复制
RichEditSetTotalLine(
    _Handle,
    _Info,
    _MaxLineNum
)
参数
_Handle

int

 
指定多功能编辑框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定多功能编辑框控件的描述

_MaxLineNum

int

 
最大行数

不可设置为0

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,100,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    RichEditSetTotalLine(_GUIHandle,nil, 3) --设置最大行数为3
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框，以下为演示文本。") --添加文本
end

--此示例代码在手游中的效果如下，只显示前3行的文本内容。

RichEditSetTotalLine
<上一篇:设置多功能编辑框文本的透明度
















