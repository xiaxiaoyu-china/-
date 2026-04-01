滑动条控件概览
更新时间：2022-02-21 00:00:00
滑动条控件通过填充的矩形来显示所操作的数据百分比，例如，游戏中的音量大小调节。

创建控件
你可以使用下表所列的接口，创建滑动条控件。

接口名	中文名	返回值类型	功能描述	适用客户端
SlideCreate	创建滑动条控件	
int

此函数以指定的窗口作为父窗口，新建一个滑动条控件。	手游、H5
你可以使用下表所列的接口，设置和获取滑动条控件的当前百分比。

接口名	中文名	返回值类型	功能描述	适用客户端
SlideSetPercent	设置滑动条当前的百分比	
无

此函数设置滑动条的百分比数值，设置后滑动条滑块会立即滑动到相应位置。	手游、H5
SlideGetPercent	获取滑动条当前的百分比	
int

此函数获取滑动条当前的百分比数值。	手游、H5
你可以使用下表所列的接口，设置滑动条控件中滑块的偏移。

接口名	中文名	返回值类型	功能描述	适用客户端
SetSlideThumbOffset	设置滑动条控件中滑块的偏移	
无

此函数设置滑动条控件中滑块的偏移。	手游
<上一篇:滚动条控件概览下一篇:复选框控件概览>
SetSlideThumbOffset
设置滑动条控件中滑块的偏移

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2022-05-27 00:00:00
此函数设置滑动条控件中滑块的偏移。

语法
Luacopy 复制
GUI:SetSlideThumbOffset(
    HandleID,
    offsetX,
    offsetY,
    IsScale
)
参数
HandleID

int

 
指定滑动条控件的句柄

点击窗口句柄了解更多信息

offsetX

int

 
滑块相对于起始位置的X偏移

正数向右偏移

负数向左偏移

offsetY

int

 
滑块相对于起始位置的Y偏移

正数向下偏移

负数向上偏移

IsScale

bool

 
是否使用滑动条控件创建时的尺寸大小

true是（即使用滑动条控件创建时的尺寸大小）

false否（即使用滑动条控件中使用的图片资源的原始尺寸大小）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
--以下示例代码执行前提：此控件中使用的资源的原始尺寸大小为612*23。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SlideCreate(_Parent, "SlideScale1", 1854000012, 1854000013, 1854000014, 200, 200, 700, 23)--创建滑动条控件
if _GUIHandle ~= 0 then
    GUI:SetSlideThumbOffset(_GUIHandle, 20,20,true) --设置滑动条控件中滑块的偏移，并且使用此控件创建时的尺寸大小。
end

local _GUIHandle2 = GUI:SlideCreate(_Parent, "SlideScale2", 1854000012, 1854000013, 1854000014, 200, 300, 700, 23)--创建滑动条控件
if _GUIHandle2 ~= 0 then
    GUI:SetSlideThumbOffset(_GUIHandle2, 0, 0,false) --设置滑动条控件中滑块的偏移，并且使用此控件中使用的资源的原始尺寸大小。
end

--此示例代码运行成功如下图所示。

--上方的滑动条控件的尺寸大小为700*23，上方的滑动条控件的尺寸大小为612*23。

SetSlideThumbOffset.png
下一篇:设置滑动条当前的百分比>
SlideSetPercent
设置滑动条当前的百分比

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数设置滑动条的百分比数值，设置后滑动条滑块会立即滑动到相应位置。

语法
Luacopy 复制
GUI:SlideSetPercent(
    _HandleID,
    _percent
)
参数
_HandleID

int

 
指定滑动条控件的句柄

点击窗口句柄了解更多信息

_percent

int

 
指定百分比的数值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SlideCreate(_Parent, "SlideScale2", 1854000012, 1854000013, 1854000014, 80, 100, 612, 23) --创建滑动条控件
if _GUIHandle ~= 0 then
    GUI:SlideSetPercent(_GUIHandle, 30) --设置滑块立即滑动到30%的位置
    dbg("滑块位置："..GUI:SlideGetPercent(_GUIHandle)) --获取滑动条当前的百分比
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

SlideSetPercent.png

SlideGetPercent.png
<上一篇:设置滑动条控件中滑块的偏移
SlideGetPercent
获取滑动条当前的百分比

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数获取滑动条当前的百分比数值。

语法
Luacopy 复制
GUI:SlideGetPercent(
    _HandleID
)
参数
_HandleID

int

 
指定滚动条控件的句柄

点击窗口句柄了解更多信息

返回值
属性

int

 
滑动条滑块当前所处位置的百分比数值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SlideCreate(_Parent, "SlideScale2", 1854000012, 1854000013, 1854000014, 80, 100, 612, 23) --创建滑动条控件
if _GUIHandle ~= 0 then
    GUI:SlideSetPercent(_GUIHandle, 30) --设置滑块立即滑动到30%的位置
    dbg("滑块位置："..GUI:SlideGetPercent(_GUIHandle)) --获取滑动条当前的百分比
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

SlideSetPercent.png

SlideGetPercent.png

