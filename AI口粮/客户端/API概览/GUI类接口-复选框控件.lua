复选框控件概览
更新时间：2022-04-19 00:00:00
复选框控件用于向用户显示该选项的状态，如“是”或“否”。用户可以在一个或多个复选框控件中选择一个或多个选项。

创建控件
你可以使用下表所列的接口，创建复选框控件。

接口名	中文名	返回值类型	功能描述	适用客户端
CheckBoxCreate	创建复选框控件	
int

此函数以指定的窗口作为父窗口，新建一个复选框控件。	手游、端游、H5
设置控件
你可以使用下表所列的接口，设置复选框控件的显示文本、选中状态等。

接口名	中文名	返回值类型	功能描述	适用客户端
CheckBoxSetAutoChange	设置复选框控件的选中状态是否可改变	
无

此函数设置复选框控件的选中状态是否可改变。	手游、端游、H5
CheckBoxSetCenterTextVertically	设置复选框文本是否垂直居中	
无

此函数设置复选框文本是否垂直居中。	手游、端游
CheckBoxSetCheck	设置复选框的选中状态	
无

此函数设置复选框的选中状态。	手游、端游、H5
CheckBoxSetImageScale	设置复选框图片的缩放比例	
无

此函数设置复选框图片的缩放比例。	手游、端游
CheckBoxSetText	设置复选框的文本内容	
无

此函数设置复选框的文本内容。此文本即在界面上显示的文字内容。	手游、端游、H5
CheckBoxSetFontM	设置复选框控件的文本字体	
无

此函数根据复选框控件的句柄设置此复选框控件的文本字体。	手游、端游
获取控件信息
在创建或设置复选框控件后，可以通过以下接口获取复选框的选中状态等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
CheckBoxGetAutoChange	获取复选框控件的选中状态是否可改变	
bool

此函数获取复选框控件的选中状态是否可改变。	手游、端游、H5
CheckBoxGetCheck	获取复选框的选中状态	
bool

此函数获取复选框的选中状态。	手游、端游、H5
CheckBoxGetFontM	获取复选框控件的文本字体	
string

此函数根据复选框控件的句柄获取此复选框控件的文本字体。	手游、端游
<上一篇:滑动条控件概览下一篇:骨骼动画概览>
CheckBoxSetAutoChange
设置复选框控件的选中状态是否可改变

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置复选框控件的选中状态是否可改变。

语法
Luacopy 复制
GUI:CheckBoxSetAutoChange(
    _HandleID,
    _AutoChange
)
参数
_HandleID

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_AutoChange

bool

 
复选框控件的选中状态是否可改变

true可改变

false不可改变

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",455, 150)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetCheck(_GUIHandle,true) --设置复选框为选中状态
    GUI:CheckBoxSetAutoChange(_GUIHandle, true) --设置复选框控件的选中状态可改变
end

local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox1",1900112013,"复选框CheckBox",455, 180)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetCheck(_GUIHandle,true) --设置复选框为选中状态
    GUI:CheckBoxSetAutoChange(_GUIHandle, false) --设置复选框控件的选中状态不可改变
end

--此示例代码运行成功如下图所示。

CheckSetAutoChange.gif
下一篇:设置复选框文本是否垂直居中>
CheckBoxSetCenterTextVertically
设置复选框文本是否垂直居中

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置复选框文本是否垂直居中。

语法
Luacopy 复制
GUI:CheckBoxSetCenterTextVertically(
    handle,
    is_center_text
)
参数
handle

long

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

is_center_text

bool

 
是否垂直居中

true垂直居中

false不居中

note_icon 备注
垂直居中是指文本上方和下方距图片中心距离相等；

不居中是指文本按照原规则显示（即文本在Y轴方向上距顶部4个像素）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox1",1900112013,"复选框CheckBox1",455, 300)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetText(_GUIHandle, "测试文本1") --设置复选框显示的文本
    GUI:CheckBoxSetImageScale(_GUIHandle,6000,6000) --设置复选框图片的缩放比例
end

local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox2",1900112013,"复选框CheckBox2",455, 350)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetText(_GUIHandle, "测试文本2") --设置复选框显示的文本
    GUI:CheckBoxSetImageScale(_GUIHandle,6000,6000) --设置复选框图片的缩放比例
    GUI:CheckBoxSetCenterTextVertically(_GUIHandle,true) --设置复选框文本垂直居中
end

--此示例代码运行成功如下图所示。

CheckBoxSetCenterTextVertically.png
<上一篇:设置复选框控件的选中状态是否可改变下一篇:设置复选框的选中状态>
CheckBoxSetCheck
设置复选框的选中状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置复选框的选中状态。

语法
Luacopy 复制
GUI:CheckBoxSetCheck(
    _HandleID,
    _Check
)
参数
_HandleID

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_Check

bool

 
复选框是否为选中状态

true复选框为选中状态

false复选框为未选中状态

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"是否全屏模式",100,200)--创建复选框控件
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetCheck(_GUIHandle, false)--设置复选框为未选中状态
end

--此示例代码效果如下图。

Checkbox unchecked
<上一篇:设置复选框文本是否垂直居中下一篇:设置复选框控件的文本字体>
CheckBoxSetFontM
设置复选框控件的文本字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数根据复选框控件的句柄设置此复选框控件的文本字体。

语法
Luacopy 复制
GUI:CheckBoxSetFontM(
    handle,
    fontName
)
参数
handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

fontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",4000230010,"复选框CheckBox",100,200)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetFontM(_GUIHandle,"SIMLI18") --设置复选框控件的文本字体为“SIMLI18”
    dbg("复选框0的文本字体为"..GUI:CheckBoxGetFontM(_GUIHandle)) --获取复选框控件的文本字体
end

local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox1",4000230010,"复选框CheckBox",100,300)
if _GUIHandle ~= 0 then
    dbg("复选框1的文本字体为"..GUI:CheckBoxGetFontM(_GUIHandle)) --获取复选框控件的文本字体
end

--此示例代码运行成功如下图所示（上方复选框控件设置文本字体为“SIMLI18”，下方复选框控件使用默认文本字体），同时游戏日志中还会打印相关内容。

CheckBoxSetFontM.png

CheckBoxGetFontM.png
<上一篇:设置复选框的选中状态下一篇:设置复选框图片的缩放比例>
CheckBoxSetImageScale
设置复选框图片的缩放比例

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置复选框图片的缩放比例。

语法
Luacopy 复制
GUI:CheckBoxSetImageScale(
    handle,
    scale_x,
    scale_y
)
参数
handle

long

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

scale_x

int

 
X轴方向缩放（即宽度的缩放比例）

将要设置的倍数乘以10000即为设置值

例如：

5000复选框图片宽度缩小至原始宽度的一半大小

10000复选框图片宽度为原始宽度

20000复选框图片宽度放大1倍，为原始宽度的2倍大小

scale_y

int

 
Y轴方向缩放（即高度的缩放比例）

将要设置的倍数乘以10000即为设置值

规则和scale_x相同，不再赘述。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox1",1900112013,"复选框CheckBox1",455, 300)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetText(_GUIHandle, "测试文本1") --设置复选框显示的文本
end

local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox2",1900112013,"复选框CheckBox2",455, 350)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetText(_GUIHandle, "测试文本2") --设置复选框显示的文本
    GUI:CheckBoxSetImageScale(_GUIHandle,6000,6000) --设置复选框图片的缩放比例
end

--此示例代码运行成功如下图所示。

CheckBoxSetImageScale.png
<上一篇:设置复选框控件的文本字体下一篇:设置复选框的文本内容>
CheckBoxSetText
设置复选框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置复选框上显示的文本内容。

语法
Luacopy 复制
GUI:CheckBoxSetText(
    _HandleID,
    _ControlString
)
参数
_HandleID

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_ControlString

string

 
复选框上显示的文本内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",100,200)--创建复选框控件，显示的文本为“复选框CheckBox”
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetText(_GUIHandle, "是否使用皮肤")--设置显示的文本为“是否使用皮肤”
end

--此示例代码运行成功如下图所示。

CheckBoxSetText.png
<上一篇:设置复选框图片的缩放比例
CheckBoxGetAutoChange
获取复选框控件的选中状态是否可改变

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取复选框控件的选中状态是否可改变。

语法
Luacopy 复制
GUI:CheckBoxGetAutoChange(
    _HandleID
)
参数
_HandleID

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
复选框控件的选中状态是否可改变

true可改变

false不可改变

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"是否全屏模式",100,200)
if _GUIHandle ~= 0 then
    if GUI:CheckBoxGetAutoChange(_GUIHandle) then --获取复选框状态
        dbg("可改变")
    else
        dbg("不可改变")
    end
end

--此示例代码运行成功如下图所示。

CheckBoxGetAutoChange.png
下一篇:获取复选框的选中状态>
CheckBoxGetCheck
获取复选框的选中状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取复选框的选中状态。

语法
Luacopy 复制
GUI:CheckBoxGetCheck(
    _HandleID
)
参数
_HandleID

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
复选框是否为选中状态

true复选框为选中状态

false复选框为未选中状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"是否全屏模式",100,200)
if _GUIHandle ~= 0 then
    if GUI:CheckBoxGetCheck(_GUIHandle) then --获取复选框状态
        dbg("被选中")
    else
        dbg("未选中")
    end
end

--此示例代码运行成功如下图所示。

CheckBoxGetCheck.png
<上一篇:获取复选框控件的选中状态是否可改变下一篇:获取复选框控件的文本字体>
CheckBoxGetFontM
获取复选框控件的文本字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数根据复选框控件的句柄获取此复选框控件的文本字体。

语法
Luacopy 复制
GUI:CheckBoxGetFontM(
    handle
)
参数
handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

返回值
string

 
字体名称

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",4000230010,"复选框CheckBox",100,200)
if _GUIHandle ~= 0 then
    GUI:CheckBoxSetFontM(_GUIHandle,"SIMLI18") --设置复选框控件的文本字体为“SIMLI18”
    dbg("复选框0的文本字体为"..GUI:CheckBoxGetFontM(_GUIHandle)) --获取复选框控件的文本字体
end

local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox1",4000230010,"复选框CheckBox",100,300)
if _GUIHandle ~= 0 then
    dbg("复选框1的文本字体为"..GUI:CheckBoxGetFontM(_GUIHandle)) --获取复选框控件的文本字体
end

--此示例代码运行成功如下图所示（上方复选框控件设置文本字体为“SIMLI18”，下方复选框控件使用默认文本字体），同时游戏日志中还会打印相关内容。

CheckBoxSetFontM.png

CheckBoxGetFontM.png
<上一篇:获取复选框的选中状态
下面是封装接口：
CheckGetCheck
获取复选框的选择状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取复选框的选择状态。

语法
Luacopy 复制
CheckGetCheck(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定复选框控件的描述

返回值
bool

 
复选框是否为选中状态

true复选框为选中状态

false复选框为未选中状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",455, 390)
if _GUIHandle ~= 0 then
    if CheckGetCheck(_GUIHandle,nil) then --获取复选框状态
        dbg("被选中")
    else
        dbg("未选中")
    end	
end

--此示例代码运行成功如下图所示。

CheckGetCheck.png
下一篇:设置复选框控件的选中状态是否可改变>
CheckSetAutoChange
设置复选框控件的选中状态是否可改变

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置复选框控件的选中状态是否可改变。

语法
Luacopy 复制
CheckSetAutoChange(
    _Handle,
    _Info,
    _AutoChange
)
参数
_Handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定复选框控件的描述

_AutoChange

bool

 
复选框控件的选中状态是否可改变

true可改变

false不可改变

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",455, 150)
if _GUIHandle ~= 0 then
    CheckSetCheck(_GUIHandle,nil,true) --设置复选框为选中状态
    CheckSetAutoChange(_GUIHandle,nil,true) --设置复选框控件的选中状态可改变
end

local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox1",1900112013,"复选框CheckBox",455, 180)
if _GUIHandle ~= 0 then
    CheckSetCheck(_GUIHandle,nil,true) --设置复选框为选中状态
    CheckSetAutoChange(_GUIHandle,nil,false) --设置复选框控件的选中状态不可改变
end

--此示例代码运行成功如下图所示。

CheckSetAutoChange.gif
<上一篇:获取复选框的选择状态下一篇:设置复选框的选择状态>
CheckSetCheck
设置复选框的选择状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置复选框的选择状态。

语法
Luacopy 复制
CheckSetCheck(
    _Handle,
    _Info,
    _Check
)
参数
_Handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定复选框控件的描述

_Check

bool

 
复选框是否为选中状态

true复选框为选中状态

false复选框为未选中状态

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",455, 390)
if _GUIHandle ~= 0 then
    CheckSetCheck(_GUIHandle,nil,true) --设置复选框为选中状态
end

--此示例代码运行成功如下图所示。

CheckSetCheck.png
<上一篇:设置复选框控件的选中状态是否可改变下一篇:设置复选框按钮的图片>
CheckSetImageID
设置复选框按钮的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置复选框按钮的图片资源ID。

语法
Luacopy 复制
CheckSetImageID(
    _Handle,
    _Info,
    _ImageId
)
参数
_Handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定复选框控件的描述

_ImageId

int

 
复选框按钮的图片资源ID

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",455, 390)
if _GUIHandle ~= 0 then
    CheckSetImageID(_GUIHandle,nil,1900000047) --设置复选框按钮图片
end

--此示例代码运行成功如下图所示。

CheckSetImageID.png
<上一篇:设置复选框的选择状态下一篇:一键设置复选框属性>
CheckSetProp
一键设置复选框属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数一键设置复选框属性。

语法
Luacopy 复制
CheckSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _Check,
    _Text,
    _ImageId,
    _AutoChange
)
参数
_Handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定复选框控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
是否可用

true复选框控件可用

false复选框控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_Check

bool

 
复选框是否为选中状态

true复选框为选中状态

false复选框为未选中状态

_Text

string

 
复选框上显示的文本内容

_ImageId

int

 
复选框按钮的图片资源ID

_AutoChange

bool

 
复选框控件的选中状态是否可改变

true可改变

false不可改变

返回值
bool

 
false执行失败(未找到对应的控件)

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",455, 390)  --创建复选框控件
if _GUIHandle ~= 0 then
    CheckSetProp(_GUIHandle,nil,true,true,true,true,"这是复选框的文本",1900000047,true) --一键设置复选框属性
end

--此示例代码运行成功如下图所示。

CheckSetProp.png
<上一篇:设置复选框按钮的图片下一篇:设置复选框的文本内容>
CheckSetText
设置复选框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置复选框上显示的文本内容。

语法
Luacopy 复制
CheckSetText(
    _Handle,
    _Info,
    _Text
)
参数
_Handle

int

 
指定复选框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定复选框控件的描述

_Text

string

 
复选框上显示的文本内容

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",455, 390)
if _GUIHandle ~= 0 then
    CheckSetText(_GUIHandle,nil,"这是复选框的文本")   --设置复选框的文本为“这是复选框的文本”
end

--此示例代码运行成功如下图所示。

CheckSetText.png
<上一篇:一键设置复选框属性

