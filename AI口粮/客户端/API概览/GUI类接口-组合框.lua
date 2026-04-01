组合框控件概览
更新时间：2023-03-28 00:00:00
组合框控件类似于列表框控件，用于显示数据。但组合框有两个部分，顶部的是编辑框，下部分是显示项目的列表框。用户可在其中选择一个项。

创建控件
你可以使用下表所列的接口，创建组合框控件。

接口名	中文名	返回值类型	功能描述	适用客户端
ComboBoxCreate	创建组合框控件	
int

此函数以指定的窗口作为父窗口，新建一个组合框控件。	手游、端游
你可以使用如下接口，添加或清空组合框的条目。

接口名	中文名	返回值类型	功能描述	适用客户端
ComboBoxAddString	组合框添加条目	
无

此函数给指定组合框添加条目。	手游、端游
ComboBoxClear	清空组合框控件内容	
无

此函数清空指定组合框控件的条目内容。	手游、端游
设置控件
你可以使用下表所列的接口，设置组合框控件的选中条目、编辑框大小、图片资源等。

接口名	中文名	返回值类型	功能描述	适用客户端
ComboBoxSetCurSelect	设置组合框中选中的条目	
无

此函数设置指定组合框中选中的条目。	手游、端游
ComboBoxSetEditSize	设置组合框中编辑框的大小	
无

此函数设置指定组合框控件中编辑框控件的大小。	手游、端游
ComboBoxSetFixListLength	设置组合框控件固定的下拉背景高度	
无

此函数设置指定组合框控件的下拉背景高度。	端游
ComboBoxSetListFillImage	设置组合框下拉背景图片	
无

此函数设置指定组合框控件的下拉背景图片。	手游、端游
ComboBoxSetListLength	设置组合框控件的下拉背景高度	
无

此函数设置指定组合框控件的下拉背景高度。	手游、端游
ComboBoxSetScrollBarImage	设置组合框中滚动条的图片	
无

此函数设置指定组合框控件中滚动条的图片。	手游、端游
获取控件信息
在创建或设置组合框控件后，可以通过以下接口获取组合框控件的编辑框大小、条目索引、图片的资源ID等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
ComboBoxGetCurSelectID	获取组合框中选中条目的ID	
int

此函数获取指定组合框控件中选中条目的ID。	手游、端游
ComboBoxGetCurSelect	获取组合框中当前选中条目的索引	
int

此函数获取指定组合框控件中当前选中条目的索引。	手游、端游
ComboBoxGetEditSize	获取组合框的编辑框大小	
bool

此函数获取指定组合框控件的编辑框大小。	手游、端游
ComboBoxGetEdit	获取组合框控件中的编辑框控件句柄	
int

此函数获取组合框控件中的编辑框控件句柄。	手游、端游
ComboBoxGetListFillImage	获取组合框下拉背景图片资源ID	
int

此函数获取指定组合框控件的下拉背景图片资源ID。	手游、端游
ComboBoxGetListHandle	获取组合框内的列表框的句柄	
int

此函数获取指定组合框控件内的列表框控件句柄。	手游、端游
ComboBoxGetListLength	获取组合框的下拉背景高度	
int

此函数获取指定组合框控件的下拉背景高度。	手游、端游
ComboBoxGetScrollBarImage	获取组合框控件中滚动条图片	
bool

此函数获取指定组合框控件的下拉背景图片。	手游、端游
<上一篇:物品框控件概览下一篇:滚动条控件概览>

ComboBoxSetCurSelect
设置组合框中选中的条目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定组合框控件中选中的条目。

语法
Luacopy 复制
GUI:ComboBoxSetCurSelect(
    _HandleID,
    _Index
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Index

int

 
选中条目的索引

从0开始

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_WHITE和COLOR_GOLD为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_WHITE)--添加条目1并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_WHITE)--添加条目2并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_GOLD)--添加条目3并设置文本颜色为金色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_GOLD)--添加条目4并设置文本颜色为金色
    GUI:ComboBoxSetCurSelect(_GUIHandle, 3) --设置选中第4条条目
    dbg("组合框中选中的条目的索引为:"..GUI:ComboBoxGetCurSelect(_GUIHandle)) --获取组合框中当前选中条目的索引
end

--此示例代码运行成功如下图所示，第4条条目被选中，同时控制台会输出如下内容。

ComboBoxSetCurSelect.png

ComboBoxGetCurSelect.png
下一篇:设置组合框中编辑框的大小>
ComboBoxSetEditSize
设置组合框中编辑框的大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定组合框控件中编辑框控件的大小。

下图为屏幕分辨率选择界面，组合框中的编辑框为红框区域。

combo example
语法
Luacopy 复制
GUI:ComboBoxSetEditSize(
    _HandleID,
    _Width,
    _Height
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Width

int

 
编辑框的宽度

_Height

int

 
编辑框的高度

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxSetEditSize(_GUIHandle, 100, 30) --设置组合框控件中编辑框的大小为100*30
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
end

--此示例代码运行成功如下图所示（组合框中的编辑框为下图中黄色框选部分）。

ComboBoxSetEditSize.png
<上一篇:设置组合框中选中的条目下一篇:设置组合框控件固定的下拉背景高度>
ComboBoxSetFixListLength
设置组合框控件固定的下拉背景高度

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定组合框控件的下拉背景高度。

使用此接口设置指定组合框控件的下拉背景高度时，若指定的组合框控件有下拉背景图片，则会拉伸图片以适应设置的下拉背景高度。

语法
Luacopy 复制
GUI:ComboBoxSetFixListLength(
    _HandleID,
    _Length
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Length

int

 
下拉背景高度

单位为像素（px）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxSetFixListLength(_GUIHandle,100) --设置组合框控件固定的下拉背景高度
    GUI:ComboBoxSetListFillImage(_GUIHandle, 1800810022) --设置组合框下拉背景图片
    GUI:ComboBoxAddString(_GUIHandle, "test01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test06", 6, COLOR_RED) --添加条目6并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test07", 7, COLOR_RED) --添加条目7并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test08", 8, COLOR_RED) --添加条目8并设置文本颜色为红色
end

--此示例代码运行成功如下图所示。

ComboBoxSetFixListLength.png
<上一篇:设置组合框中编辑框的大小下一篇:设置组合框下拉背景图片>
ComboBoxSetListFillImage
设置组合框下拉背景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-02 00:00:00
此函数设置指定组合框控件的下拉背景图片。

语法
Luacopy 复制
GUI:ComboBoxSetListFillImage(
    _HandleID,
    _ImgId
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_ImgId

unsigned int

 
下拉背景图片的资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxSetListFillImage(_GUIHandle, 1901900038) --设置组合框下拉背景图片
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
end

--此示例代码运行前效果如下图所示。

ComboBoxSetListFillImage_2.png

--此示例代码运行后效果如下图所示。

ComboBoxSetListFillImage.png
<上一篇:设置组合框控件固定的下拉背景高度下一篇:设置组合框控件的下拉背景高度>
ComboBoxSetListLength
设置组合框控件的下拉背景高度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定组合框控件的下拉背景高度。

caution_icon 注意
当此接口与设置组合框下拉背景图片的接口（例如：接口GUI:ComboBoxSetListFillImage和接口Lua_ComboBoxSetListFillImage）一起使用时，此接口将无法生效。

如需同时设置组合框控件的下拉背景高度和下拉背景图片，请使用接口GUI:ComboBoxSetFixListLength。

语法
Luacopy 复制
GUI:ComboBoxSetListLength(
    _HandleID,
    _Length
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Length

int

 
下拉背景的高度

单位为像素（px）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxSetListLength(_GUIHandle,140) --设置组合框控件的下拉背景高度
    GUI:ComboBoxAddString(_GUIHandle, "test01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test06", 6, COLOR_RED) --添加条目6并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test07", 7, COLOR_RED) --添加条目7并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test08", 8, COLOR_RED) --添加条目8并设置文本颜色为红色
end

--此示例代码运行前效果如下图所示。

ComboBoxSetListLength.png

--此示例代码运行后效果如下图所示。

ComboBoxSetListLength_2.png
<上一篇:设置组合框下拉背景图片下一篇:设置组合框中滚动条的图片>
ComboBoxSetScrollBarImage
设置组合框中滚动条的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定组合框控件中滚动条的图片。

note_icon 备注
手游调用此接口暂无效果。

语法
Luacopy 复制
GUI:ComboBoxSetScrollBarImage(
    _HandleID,
    _Up,
    _Mid,
    _Down,
    _Back
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Up

unsigned int

 
滚动条向上滚动的按钮的图片资源ID

_Mid

unsigned int

 
滚动条滑块图片资源ID

_Down

unsigned int

 
滚动条向下滚动的按钮的图片资源ID

_Back

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
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxSetScrollBarImage(_GUIHandle, 1800000422, 4002450046, 1800000426, 4002410003) --设置组合框中滚动条的图片
    GUI:ComboBoxAddString(_GUIHandle, "test01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test06", 6, COLOR_RED) --添加条目6并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test07", 7, COLOR_RED) --添加条目7并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test08", 8, COLOR_RED) --添加条目8并设置文本颜色为红色
end

--此示例代码运行前效果如下图所示。

ComboBoxSetScrollBarImage_2.png

--此示例代码运行后效果如下图所示。

ComboBoxSetScrollBarImage.png
<上一篇:设置组合框控件的下拉背景高度
ComboBoxGetCurSelectID
获取组合框中选中条目的ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定组合框控件中选中条目的ID。

note_icon 备注
注意区分条目的索引与条目的ID：

条目的索引（从0开始，按顺序递增）不可通过接口进行设置。

条目的ID可通过组合框添加条目的接口进行设置（例如：接口GUI:ComboBoxAddString和接口Lua_ComboBoxAddString）。

语法
Luacopy 复制
GUI:ComboBoxGetCurSelectID(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
组合框中选中条目的ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxSetCurSelect(_GUIHandle, 3) --设置选中第4条条目
    dbg("组合框中选中条目的ID为:"..GUI:ComboBoxGetCurSelectID(_GUIHandle)) --获取组合框中选中条目的ID
end

--此示例代码运行成功如下图所示。

ComboBoxGetCurSelectID.png
下一篇:获取组合框中当前选中条目的索引>
ComboBoxGetCurSelect
获取组合框中当前选中条目的索引

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定组合框控件中当前选中条目的索引。

note_icon 备注
注意区分条目的索引与条目的ID：

条目的索引（从0开始，按顺序递增）不可通过接口进行设置。

条目的ID可通过组合框添加条目的接口进行设置（例如：接口GUI:ComboBoxAddString和接口Lua_ComboBoxAddString）。

语法
Luacopy 复制
GUI:ComboBoxGetCurSelect(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
组合框中当前选中条目的索引

第1条条目的索引为0，按顺序递增。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_WHITE和COLOR_GOLD为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_WHITE)--添加条目1并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_WHITE)--添加条目2并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_GOLD)--添加条目3并设置文本颜色为金色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_GOLD)--添加条目4并设置文本颜色为金色
    GUI:ComboBoxSetCurSelect(_GUIHandle, 3) --设置选中第4条条目
    dbg("组合框中选中的条目的索引为:"..GUI:ComboBoxGetCurSelect(_GUIHandle)) --获取组合框中当前选中条目的索引
end

--此示例代码运行成功如下图所示，第4条条目被选中，同时控制台会输出如下内容。

ComboBoxSetCurSelect.png

ComboBoxGetCurSelect.png
<上一篇:获取组合框中选中条目的ID下一篇:获取组合框的编辑框大小>
ComboBoxGetEditSize
获取组合框的编辑框大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定组合框控件的编辑框大小。

下图为屏幕分辨率选择界面，组合框的编辑框为红框区域。

combo example
note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取编辑框大小的数值存储在LuaRet中。

LuaRet[1]编辑框的宽度；

LuaRet[2]编辑框的高度。

语法
Luacopy 复制
GUI:ComboBoxGetEditSize(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true获取成功。

false获取失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent,"ExampleComboBox0",1901200072,100,200,100,30,200)--创建一个组合框
if _GUIHandle ~= 0 then
    if GUI:WndGetSizeM(_GUIHandle) then --执行成功
        local _Width = LuaRet[1] --获取宽度
        local _Height = LuaRet[2] --获取高度
    end
end
<上一篇:获取组合框中当前选中条目的索引下一篇:获取组合框控件中的编辑框控件句柄>
ComboBoxGetEdit
获取组合框控件中的编辑框控件句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取组合框控件中的编辑框控件句柄。

语法
Luacopy 复制
GUI:ComboBoxGetEdit(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
组合框控件中的辑框控件句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    dbg("组合框控件中的编辑框控件句柄为："..GUI:ComboBoxGetEdit(_GUIHandle)) --获取组合框控件中的编辑框控件句柄
end

--此示例代码运行成功如下图所示。

ComboBoxGetEdit.png
<上一篇:获取组合框的编辑框大小下一篇:获取组合框下拉背景图片资源ID>
ComboBoxGetListFillImage
获取组合框下拉背景图片资源ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定组合框控件的下拉背景图片资源ID。

语法
Luacopy 复制
GUI:ComboBoxGetListFillImage(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

int

 
组合框控件下拉背景图片资源ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent,"ExampleComboBox0",1901200072,100,200,100,30,200)--创建一个组合框
if _GUIHandle ~= 0 then
    local _FillImgID = GUI:ComboBoxGetListFillImage(_GUIHandle)
end
<上一篇:获取组合框控件中的编辑框控件句柄下一篇:获取组合框内的列表框的句柄>
ComboBoxGetListHandle
获取组合框内的列表框的句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定组合框控件内的列表框控件句柄。

语法
Luacopy 复制
GUI:ComboBoxGetListHandle(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄。

点击窗口句柄了解更多信息。

返回值
句柄

int

 
组合框控件内的列表框控件句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent,"ExampleComboBox0",1901200072,100,200,100,30,200)--创建一个组合框
if _GUIHandle ~= 0 then
    local _ComboBoxHandle = GUI:ComboBoxGetListHandle(_GUIHandle)
end
<上一篇:获取组合框下拉背景图片资源ID下一篇:获取组合框的下拉背景高度>
ComboBoxGetListLength
获取组合框的下拉背景高度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定组合框控件的下拉背景高度。

语法
Luacopy 复制
GUI:ComboBoxGetListLength(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

返回值
参数

int

 
组合框控件的下拉背景高度

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent,"ExampleComboBox0",1901200072,100,200,100,30,200)--创建一个组合框
if _GUIHandle ~= 0 then
    local _ComboBoxListLen = GUI:ComboBoxGetListLength(_GUIHandle)
end
<上一篇:获取组合框内的列表框的句柄下一篇:获取组合框控件中滚动条图片>
ComboBoxGetScrollBarImage
获取组合框控件中滚动条图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定组合框控件的下拉背景图片。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的滚动条图片资源ID存储在LuaRet中。

LuaRet[1]向上按钮图片资源ID；

LuaRet[2]滚动按钮图片资源ID；

LuaRet[3]向下按钮图片资源ID；

LuaRet[4]滚动条背景图片资源ID。

语法
Luacopy 复制
GUI:ComboBoxGetScrollBarImage(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄。

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local_GUIHandle = GUI:ComboBoxCreate(_Parent,"ExampleComboBox0",1901200072,100,200,100,30,200)--创建一个组合框
if _GUIHandle ~= 0 then
    GUI:ComboBoxSetScrollBarImage(_GUIHandle, 1900100003, 1900100003, 1900100003, 1900100120)--设置组合框的滚动条图片
    if GUI:ComboBoxGetScrollBarImage(_GUIHandle) then --执行成功
        local _ID1 = LuaRet[1] 
        local _ID2 = LuaRet[2]
        local _ID3 = LuaRet[3]
        local _ID4 = LuaRet[4]
    end
end
<上一篇:获取组合框的下拉背景高度
ComboBoxAddString
组合框添加条目并设置条目文本的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数在指定的组合框控件中添加条目，并且支持设置条目文本的颜色。

点击组合框下拉箭头后将会依次显示添加的条目。

ComboBoxAddString.png
语法
Luacopy 复制
GUI:ComboBoxAddString(
    _HandleID,
    _Info,
    _Id,
    _Color
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
添加条目的文本内容

_Id

int

 
添加条目的ID

_Color

unsigned int

 
添加条目的文本颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_WHITE和COLOR_GOLD为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ComboBoxCreate(_Parent,"TypeCB", 4000230020, 100, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_WHITE) --添加条目1并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_WHITE) --添加条目2并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_GOLD) --添加条目3并设置文本颜色为金色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_GOLD) --添加条目4并设置文本颜色为金色
end

--此示例代码运行成功如下图所示。

ComboBoxAddString_3.png
下一篇:清空组合框控件内容>
ComboBoxClear
清空组合框控件内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数清空指定组合框控件的条目内容。

语法
Luacopy 复制
GUI:ComboBoxClear(
    _HandleID
)
参数
_HandleID

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxClear(_GUIHandle) --清空组合框控件内容
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
end

--此示例代码运行成功如下图所示（条目5为执行清空组合框内容操作后添加的条目）。

ComboBoxClear.png
<上一篇:组合框添加条目并设置条目文本的颜色
下面是封装接口
ComboBoxAddStringEx
组合框添加条目并设置条目文本的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数在指定的组合框控件中添加条目，并且支持设置条目文本的颜色。

点击组合框下拉箭头后将会依次显示添加的条目。

ComboBoxAddString.png
语法
Luacopy 复制
ComboBoxAddStringEx(
    _Handle,
    _Info,
    _Text,
    _Id,
    _Color
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Text

string

 
添加条目的文本内容

_Id

int

 
添加条目的ID

_Color

unsigned int

 
添加条目的文本颜色

具体请参见颜色字符串页面

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_WHITE和COLOR_GOLD为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ComboBoxCreate(_Parent,"TypeCB", 4000230020, 100, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    ComboBoxAddStringEx(_GUIHandle, "", "ComboBox01", 1, COLOR_WHITE) --添加条目1并设置文本颜色为白色
    ComboBoxAddStringEx(_GUIHandle, "", "ComboBox02", 2, COLOR_WHITE) --添加条目2并设置文本颜色为白色
    ComboBoxAddStringEx(_GUIHandle, "", "ComboBox03", 3, COLOR_GOLD) --添加条目3并设置文本颜色为金色
    ComboBoxAddStringEx(_GUIHandle, "", "ComboBox04", 4, COLOR_GOLD) --添加条目4并设置文本颜色为金色
end

--此示例代码运行成功如下图所示。

ComboBoxAddString_3.png
下一篇:组合框添加条目>
ComboBoxAddString
组合框添加条目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数在指定的组合框控件中添加条目。

点击组合框下拉箭头后将会依次显示添加的条目。

ComboBoxAddString.png
语法
Luacopy 复制
ComboBoxAddString(
    _Handle,
    _Info,
    _Text,
    _Id
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Text

string

 
添加条目的文本内容

_Id

int

 
添加条目的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    ComboBoxAddString(_GUIHandle,"", "ComboBox01", 1) --添加条目1
    ComboBoxAddString(_GUIHandle,"", "ComboBox02", 2) --添加条目2
    ComboBoxAddString(_GUIHandle,"", "ComboBox03", 3) --添加条目3
    ComboBoxAddString(_GUIHandle,"", "ComboBox04", 4) --添加条目4
end

--此示例代码运行成功如下图所示。

ComboBoxAddString.png
<上一篇:组合框添加条目并设置条目文本的颜色下一篇:清空组合框控件内容>
ComboBoxClear
清空组合框控件内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数清空指定组合框控件的条目内容。

语法
Luacopy 复制
ComboBoxClear(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    ComboBoxClear(_GUIHandle,"") --清空组合框控件内容
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
end

--此示例代码运行成功如下图所示（条目5为执行清空组合框内容操作后添加的条目）。

ComboBoxClear.png
<上一篇:组合框添加条目下一篇:获取组合框中选中条目的ID>
ComboBoxGetCurSelectID
获取组合框中选中条目的ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定组合框控件中选中条目的ID。

note_icon 备注
注意区分条目的索引与条目的ID：

条目的索引（从0开始，按顺序递增）不可通过接口进行设置。

条目的ID可通过组合框添加条目的接口进行设置（例如：接口GUI:ComboBoxAddString和接口Lua_ComboBoxAddString）。

语法
Luacopy 复制
ComboBoxGetCurSelectID(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

返回值
int

 
执行成功则返回组合框中选中条目的ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxSetCurSelect(_GUIHandle, 3) --设置选中第4条条目
    dbg("组合框中选中条目的ID为:"..ComboBoxGetCurSelectID(_GUIHandle,"")) --获取组合框中选中条目的ID
end

--此示例代码运行成功如下图所示。

ComboBoxGetCurSelectID.png
<上一篇:清空组合框控件内容下一篇:获取组合框中当前选中条目的索引>
ComboBoxGetCurSelect
获取组合框中当前选中条目的索引

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定组合框控件中当前选中条目的索引。

note_icon 备注
注意区分条目的索引与条目的ID：

条目的索引（从0开始，按顺序递增）不可通过接口进行设置。

条目的ID可通过组合框添加条目的接口进行设置（例如：接口GUI:ComboBoxAddString和接口Lua_ComboBoxAddString）。

语法
Luacopy 复制
ComboBoxGetCurSelect(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

返回值
int

 
执行成功则返回组合框当前选中条目的索引（从0开始，按顺序递增）

执行失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    ComboBoxAddString(_GUIHandle,"", "ComboBox01", 1) --添加条目1
    ComboBoxAddString(_GUIHandle,"", "ComboBox02", 2) --添加条目2
    ComboBoxAddString(_GUIHandle,"", "ComboBox03", 3) --添加条目3
    ComboBoxAddString(_GUIHandle,"", "ComboBox04", 4) --添加条目4
    ComboBoxSetCurSelect(_GUIHandle,"", 3) --设置选中第4条条目
    dbg("组合框中选中的条目的索引为:"..ComboBoxGetCurSelect(_GUIHandle,"")) --获取组合框中当前选中条目的索引
end

--此示例代码运行成功如下图所示，第4条条目被选中，同时控制台会输出如下内容。

ComboBoxSetCurSelect.png

ComboBoxGetCurSelect.png
<上一篇:获取组合框中选中条目的ID下一篇:获取组合框控件中的编辑框控件句柄>
ComboBoxGetEdit
获取组合框控件中的编辑框控件句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取组合框控件中的编辑框控件句柄。

语法
Luacopy 复制
ComboBoxGetEdit(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

返回值
int

 
执行成功则返回编辑框控件的句柄

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    dbg("组合框控件中的编辑框控件句柄为："..ComboBoxGetEdit(_GUIHandle,"")) --获取组合框控件中的编辑框控件句柄
end

--此示例代码运行成功如下图所示。

ComboBoxGetEdit.png
<上一篇:获取组合框中当前选中条目的索引下一篇:获取组合框的名称>
ComboBoxGetText
获取组合框的名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定组合框控件的名称。

语法
Luacopy 复制
ComboBoxGetText(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

返回值
string

 
执行成功则返回组合框名称

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 200, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    ComboBoxSetText(_GUIHandle,"","123") --设置组合框的名称为“123”
    dbg("组合框的名称为:"..ComboBoxGetText(_GUIHandle,"")) --获取组合框的名称
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

ComboBoxSetText_2.png

ComboBoxSetText.png
<上一篇:获取组合框控件中的编辑框控件句柄下一篇:设置组合框中选中的条目>
ComboBoxSetCurSelect
设置组合框中选中的条目

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定组合框控件中选中的条目。

语法
Luacopy 复制
ComboBoxSetCurSelect(
    _Handle,
    _Info,
    _Index
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Index

int

 
选中条目的索引

从0开始

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    ComboBoxAddString(_GUIHandle,"", "ComboBox01", 1) --添加条目1
    ComboBoxAddString(_GUIHandle,"", "ComboBox02", 2) --添加条目2
    ComboBoxAddString(_GUIHandle,"", "ComboBox03", 3) --添加条目3
    ComboBoxAddString(_GUIHandle,"", "ComboBox04", 4) --添加条目4
    ComboBoxSetCurSelect(_GUIHandle,"", 3) --设置选中第4条条目
    dbg("组合框中选中的条目的索引为:"..ComboBoxGetCurSelect(_GUIHandle,"")) --获取组合框中当前选中条目的索引
end

--此示例代码运行成功如下图所示，第4条条目被选中，同时控制台会输出如下内容。

ComboBoxSetCurSelect.png

ComboBoxGetCurSelect.png
<上一篇:获取组合框的名称下一篇:设置组合框中编辑框的大小>
ComboBoxSetEditSize
设置组合框中编辑框的大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定组合框控件中编辑框控件的大小。

下图为屏幕分辨率选择界面，组合框中的编辑框为红框区域。

combo example
语法
Luacopy 复制
ComboBoxSetEditSize(
    _Handle,
    _Info,
    _Width,
    _Height
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Width

int

 
编辑框的宽度

_Height

int

 
编辑框的高度

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    ComboBoxSetEditSize(_GUIHandle,"",100, 30) --设置组合框控件中编辑框的大小为100*30
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
end

--此示例代码运行成功如下图所示（组合框中的编辑框为下图中黄色框选部分）。

ComboBoxSetEditSize.png
<上一篇:设置组合框中选中的条目下一篇:修改组合框的按钮样式>
ComboBoxSetListFillImage
设置组合框下拉背景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定组合框控件的下拉背景图片。

语法
Luacopy 复制
ComboBoxSetListFillImage(
    _Handle,
    _Info,
    _ImgId
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_ImgId

unsigned int

 
下拉背景图片的资源ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    ComboBoxSetListFillImage(_GUIHandle, "",1901900038) --设置组合框下拉背景图片
    ComboBoxAddStringEx(_GUIHandle,"", "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    ComboBoxAddStringEx(_GUIHandle,"", "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    ComboBoxAddStringEx(_GUIHandle,"", "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    ComboBoxAddStringEx(_GUIHandle,"", "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
end

--此示例代码运行前效果如下图所示。

ComboBoxSetListFillImage_2.png

--此示例代码运行后效果如下图所示。

ComboBoxSetListFillImage.png
<上一篇:修改组合框的按钮样式下一篇:设置组合框控件的下拉背景高度>
ComboBoxSetListLength
设置组合框控件的下拉背景高度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定组合框控件的下拉背景高度。

caution_icon 注意
当此接口与设置组合框下拉背景图片的接口（例如：接口GUI:ComboBoxSetListFillImage和接口Lua_ComboBoxSetListFillImage）一起使用时，此接口将无法生效。

如需同时设置组合框控件的下拉背景高度和下拉背景图片，请使用接口GUI:ComboBoxSetFixListLength。

语法
Luacopy 复制
ComboBoxSetListLength(
    _Handle,
    _Info,
    _Length
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Length

int

 
下拉背景的高度

单位为像素（px）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    ComboBoxSetListLength(_GUIHandle,"",140) --设置组合框控件的下拉背景高度
    GUI:ComboBoxAddString(_GUIHandle, "test01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test06", 6, COLOR_RED) --添加条目6并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test07", 7, COLOR_RED) --添加条目7并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test08", 8, COLOR_RED) --添加条目8并设置文本颜色为红色
end

--此示例代码运行前效果如下图所示。

ComboBoxSetListLength.png

--此示例代码运行后效果如下图所示。

ComboBoxSetListLength_2.png
<上一篇:设置组合框下拉背景图片下一篇:一键设置组合框属性>
ComboBoxSetProp
一键设置组合框属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数一键设置组合框属性。

语法
Luacopy 复制
ComboBoxSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _ListLength,
    _Text,
    _BtnImageId,
    _FillImageId
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
组合框控件是否可用

true组合框控件可用

false组合框控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_ListLength

int

 
下拉背景的高度

caution_icon 注意
当此参数与参数_FillImageId一起设置时，此参数将不生效。

若要此参数生效，则参数_FillImageId必须设置为0。

_Text

string

 
组合框的名称

_BtnImageId

unsigned int

 
按钮图片资源ID

_FillImageId

unsigned int

 
下拉背景图片的资源ID

note_icon 备注
此参数在手游中暂不生效。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    ComboBoxSetProp(_GUIHandle,"",true,true,true,150,"ComboBox",4000230016,0)
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox06", 6, COLOR_RED) --添加条目6并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox07", 7, COLOR_RED) --添加条目7并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox08", 8, COLOR_RED) --添加条目8并设置文本颜色为红色
end

--此示例代码运行成功如下图所示。

ComboBoxSetProp.png
<上一篇:设置组合框控件的下拉背景高度下一篇:设置组合框中滚动条的图片>
ComboBoxSetScrollBarImage
设置组合框中滚动条的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定组合框控件中滚动条的图片。

note_icon 备注
手游调用此接口暂无效果。

语法
Luacopy 复制
ComboBoxSetScrollBarImage(
    _Handle,
    _Info,
    _Up,
    _Mid,
    _Down,
    _Back
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Up

unsigned int

 
滚动条向上滚动的按钮的图片资源ID

_Mid

unsigned int

 
滚动条滑块图片资源ID

_Down

unsigned int

 
滚动条向下滚动的按钮的图片资源ID

_Back

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
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 100, 100, 80, 27,90)
if _GUIHandle ~= 0 then
    ComboBoxSetScrollBarImage(_GUIHandle,"",4002200040, 4002450046, 4002200044, 4002410003) --设置组合框中滚动条的图片
    GUI:ComboBoxAddString(_GUIHandle, "test01", 1, COLOR_RED) --添加条目1并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test02", 2, COLOR_RED) --添加条目2并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test03", 3, COLOR_RED) --添加条目3并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test04", 4, COLOR_RED) --添加条目4并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test05", 5, COLOR_RED) --添加条目5并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test06", 6, COLOR_RED) --添加条目6并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test07", 7, COLOR_RED) --添加条目7并设置文本颜色为红色
    GUI:ComboBoxAddString(_GUIHandle, "test08", 8, COLOR_RED) --添加条目8并设置文本颜色为红色
end

--此示例代码运行前效果如下图所示。

ComboBoxSetScrollBarImage_2.png

--此示例代码运行后效果如下图所示。

ComboBoxSetScrollBarImage.png
<上一篇:一键设置组合框属性下一篇:设置组合框的名称>
ComboBoxSetText
设置组合框的名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定组合框控件的名称。

语法
Luacopy 复制
ComboBoxSetText(
    _Handle,
    _Info,
    _Text
)
参数
_Handle

int

 
指定组合框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定组合框控件的描述

_Text

string

 
组合框的名称

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
local _GUIHandle = GUI:ComboBoxCreate(_Parent, "TypeCB", 4000230020, 200, 100, 80, 27, 90)
if _GUIHandle ~= 0 then
    ComboBoxSetText(_GUIHandle,"","123") --设置组合框的名称为“123”
    dbg("组合框的名称为:"..ComboBoxGetText(_GUIHandle,"")) --获取组合框的名称
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

ComboBoxSetText_2.png

ComboBoxSetText.png
<上一篇:设置组合框中滚动条的图片





