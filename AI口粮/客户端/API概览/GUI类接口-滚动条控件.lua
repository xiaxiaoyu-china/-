滚动条控件概览
更新时间：2021-09-07 00:00:00
滚动条控件用于大量数据的展示和导航。滚动条根据滚动的方向分为水平或垂直滚动条。

创建控件
你可以使用下表所列的接口，创建滚动条控件。

接口名	中文名	返回值类型	功能描述	适用客户端
ScrollBarHCreate	创建水平滚动条控件	
int

此函数以指定的窗口作为父窗口，新建一个水平滚动条控件。	手游、端游
ScrollBarVCreate	创建垂直滚动条控件	
int

此函数以指定的窗口作为父窗口，新建一个垂直滚动条控件。	手游、端游
设置控件
你可以使用下表所列的接口，设置滚动条控件的步长和滑块的位置。

接口名	中文名	返回值类型	功能描述	适用客户端
ScrollBarSetPos	设置滚动条滑块的位置	
无

此函数设置滚动条滑块的位置，设置后滚动条滑块会立即滚动到相应位置。	手游、端游
ScrollBarSetSetp	设置滚动条步长	
无

此函数设置滚动条步长，滚动条单次滚动的最小距离为设置的步长值。	手游、端游
获取控件信息
在创建或设置滚动条控件后，可以通过以下接口获取滚动条控件的长度、滑块位置、步长和使用图片的资源ID等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
ScrollBarGetImageData	获取滚动条的图片资源ID	
bool

此函数获取指定滚动条的两端方向按钮、滑块和滚动条背景的图片资源ID。	手游、端游
ScrollBarGetLenght	获取滚动条的长度	
int

此函数获取滚动条的长度属性。	手游、端游
ScrollBarGetPos	获取滚动条滑块当前位置	
int

此函数获取滚动条滑块当前所处的位置。	手游、端游
ScrollBarGetSetp	获取滚动条步长	
int

此函数获取滚动条步长。	手游、端游
<上一篇:组合框控件概览下一篇:滑动条控件概览>
ScrollBarSetPos
设置滚动条滑块的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-05-13 00:00:00
此函数设置滚动条滑块的位置，设置后滚动条滑块会立即滚动到相应位置。

语法
Luacopy 复制
GUI:ScrollBarSetPos(
    _HandleID,
    _Pos
)
参数
_HandleID

int

 
指定滚动条控件的句柄

点击窗口句柄了解更多信息

_Pos

int

 
指定滑块移动到的位置

默认范围为0 ~ 100

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ScrollBarHCreate(_Parent,"ExampleScrollBarV0", 1800000154, 1800000158, 1800000039, 1800000273, 80, 100, 200) --新建一个水平滚动条，并获取控件的句柄。
if _GUIHandle ~= 0 then
    GUI:ScrollBarSetPos(_GUIHandle, 50) --设置滑块到一半的位置
end

--此示例代码运行成功如下图所示。

ScrollBarSetPos.png
下一篇:设置滚动条步长>
ScrollBarSetSetp
设置滚动条步长

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置滚动条步长，滚动条单次滚动的最小距离为设置的步长值。

语法
Luacopy 复制
GUI:ScrollBarSetSetp(
    _HandleID,
    _Step
)
参数
_HandleID

int

 
指定滚动条控件的句柄。

点击窗口句柄了解更多信息。

_Step

int

 
指定步长数值。默认的范围为0 ~ 100。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
local _GUIHandle = GUI:ScrollBarHCreate(_Parent,"ExampleScrollBarV0", 1900510006, 1900510006, 1900100006, 1900190017, 80, 100, 200)--新建水平滚动条，并获取控件的句柄
if _GUIHandle ~= 0 then
    GUI:ScrollBarSetSetp(_GUIHandle, 3) --设置步长为3，滚动条长度为200px，步长3即每次滚动6px
end
<上一篇:设置滚动条滑块的位置
ScrollBarGetImageData
获取滚动条的图片资源ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定滚动条的两端方向按钮、滑块和滚动条背景的图片资源ID。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的图片资源ID数值存储在LuaRet中。

LuaRet[1]垂直滚动条顶部或水平滚动条左边按钮的图片资源ID

LuaRet[2]垂直滚动条底部或水平滚动条右边按钮的图片资源ID

LuaRet[3]滑块的图片资源ID

LuaRet[4]滚动条背景的图片资源ID

语法
Luacopy 复制
GUI:ScrollBarGetImageData(
    _HandleID
)
参数
_HandleID

int

 
指定滚动条控件的句柄。

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
local _GUIHandle = GUI:ScrollBarHCreate(_Parent,"ExampleScrollBarV0", 1900510006, 1900510006, 1900100006, 1900190017, 80, 100, 100)--新建水平滚动条，并获取控件的句柄
if _GUIHandle ~= 0 then
    if GUI:ScrollBarGetImageData(_GUIHandle) then --执行成功
        local _ScrollLBtnImgID = LuaRet[1] --获取左边按钮的图片资源ID
        local _ScrollRBtnImgID = LuaRet[2] --获取右边按钮的图片资源ID
        local _ScrollForeImgID = LuaRet[3] --获取滑块的图片资源ID
        local _ScrollBackImgID = LuaRet[4] --获取背景图片资源ID
    end
end
下一篇:获取滚动条的长度>
ScrollBarGetLenght
获取滚动条的长度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取滚动条的长度属性。

语法
Luacopy 复制
GUI:ScrollBarGetLenght(
    _HandleID
)
参数
_HandleID

int

 
指定滚动条控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
滚动条的长度

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ScrollBarHCreate(_Parent,"ExampleScrollBarV0", 1900510006, 1900510006, 1900100006, 1900190017, 80, 100, 100)--新建水平滚动条，并获取控件的句柄
if _GUIHandle ~= 0 then
    local _ScrollBarLength = GUI:ScrollBarGetLenght(_GUIHandle) --获取滚动条的长度，即100
end
<上一篇:获取滚动条的图片资源ID下一篇:获取滚动条滑块当前位置>
ScrollBarGetPos
获取滚动条滑块当前位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取滚动条滑块当前所处的位置。

语法
Luacopy 复制
GUI:ScrollBarGetPos(
    _HandleID
)
参数
_HandleID

int

 
指定滚动条控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
滚动条滑块的当前位置，默认的范围为0 ~ 100。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
local _GUIHandle = GUI:ScrollBarHCreate(_Parent,"ExampleScrollBarV0", 1900510006, 1900510006, 1900100006, 1900190017, 80, 100, 200)--新建水平滚动条，并获取控件的句柄
if _GUIHandle ~= 0 then
    local _ScrollBarGlidePos = GUI:ScrollBarGetPos(_GUIHandle) --获取滑块的当前位置，例如获取到位置为50，则滑块处于滚动条一半的位置
end
<上一篇:获取滚动条的长度下一篇:获取滚动条步长>
ScrollBarGetSetp
获取滚动条步长

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取滚动条步长。

语法
Luacopy 复制
GUI:ScrollBarGetSetp(
    _HandleID
)
参数
_HandleID

int

 
指定滚动条控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
滚动条的步长数值，默认的范围为0 ~ 100。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ScrollBarHCreate(_Parent,"ExampleScrollBarV0", 1900510006, 1900510006, 1900100006, 1900190017, 80, 100, 200)--新建水平滚动条，并获取控件的句柄
if _GUIHandle ~= 0 then
    local _ScrollBarStepRes = GUI:ScrollBarGetSetp(_GUIHandle) --获取步长数值，例如获取到3，滚动条长度为200px，步长3即每次滚动6px
end
<上一篇:获取滚动条滑块当前位置