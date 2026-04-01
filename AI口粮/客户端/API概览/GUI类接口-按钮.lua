按钮控件概览
更新时间：2023-03-28 00:00:00
按钮控件允许用户通过点击的操作来执行某个操作。按钮控件上，你可以设置显示的文本和图像。

按钮控件被按下后，可以执行预先设置的点击事件。

创建控件
你可以使用下表所列的接口，创建按钮控件。

接口名	中文名	返回值类型	功能描述	适用客户端
ButtonCreate	创建按钮控件	
int

此函数以指定的窗口作为父窗口，新建一个按钮控件。	手游、端游、H5
设置控件
你可以使用下表所列的接口，设置按钮控件上显示的文字内容。

接口名	中文名	返回值类型	功能描述	适用客户端
WndSetTextM	设置窗体控件的文字	
无

此函数设置窗体控件的文字。	手游、端游、H5
你可以使用下表所列的接口，设置按钮控件的外观，包括文字字体、背景图片等。还可以设置按钮控件的样式、事件行为等。

接口名	中文名	返回值类型	功能描述	适用客户端
ButtonSetCheckPoint	设置按钮判断鼠标是否在窗口内的方式	
无

此函数设置按钮判断鼠标是否在窗口内的方式。	手游、端游、H5
ButtonSetDownTextPosChange	设置按钮按下时文字是否改变位置	
无

此函数设置按钮按下时文字是否改变位置。	手游、端游、H5
ButtonSetDrawPostTexture	设置按钮上显示的图片	
无

此函数设置按钮上显示的图片。	手游、端游、H5
ButtonSetImageIndex	设置按钮各个状态图片相对于主图片的ID偏移	
无

此函数设置按钮各个状态下图片资源ID相对于按钮创建时图片资源ID的偏移。	手游、端游
ButtonSetIsActiveBtn	设置按钮是否为激活状态	
无

此函数设置按钮是否为激活状态。	手游、端游
ButtonSetIsActivePageBtn	设置是否为激活的页签按钮	
无

此函数设置按钮是否为激活的页签按钮。	手游、端游、H5
ButtonSetMoveToActionTop	设置按钮移动到活动子控件上层	
无

此函数设置按钮移动到其父控件中活动子控件的上层。	手游、端游
ButtonSetScale	设置按钮的缩放比例	
无

此函数设置指定按钮控件的缩放比例，以实现缩放按钮整体大小的功能。	手游、端游、H5
ButtonSetSelectRange	设置按钮选择范围	
无

此函数设置按钮选择范围。	手游、端游、H5
ButtonSetShine	设置按钮是否显示闪烁的特效	
无

此函数设置按钮是否显示闪烁的特效。	手游、端游
ButtonSetShineGradient	设置按钮闪烁频率	
无

此函数设置按钮闪烁频率。	手游、端游
ButtonSetShowDisable	设置按钮是否为灰色状态	
无

此函数设置按钮的灰色状态。	手游、端游
ButtonSetStateTextColor	设置按钮在特定状态的文字颜色	
无

此函数设置指定按钮控件在特定状态下文字的颜色。	手游、端游、H5
ButtonSetTextCanOverflow	设置按钮文字是否允许左上方溢出	
无

此函数设置按钮文字是否允许往左上方向溢出。	手游、端游
ButtonSetTextFont	设置按钮字体	
无

此函数设置指定按钮控件文字的字体样式。	手游、端游、H5
ButtonSetDrawCenter	设置按钮是否以中心点为锚点进行绘制	
无

此函数设置指定按钮控件是否以控件中心点为锚点进行绘制。	手游、端游
ButtonSetRotate	设置按钮的显示角度	
无

此函数设置指定按钮控件的显示角度。	手游、端游
获取控件信息
在创建或设置按钮控件后，可以通过以下接口获取按钮控件的外观参数、事件属性等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
ButtonGetCheckPoint	获取按钮判断鼠标是否在窗口内的方式	
int

此函数获取按钮判断鼠标是否在窗口内的方式。	手游、端游、H5
ButtonGetDownTextPosChange	获取按钮按下时文字是否改变位置	
bool

此函数获取按钮按下时文字是否改变位置。	手游、端游、H5
ButtonGetDrawPostTexture	获取按钮上显示的图片	
unsigned int

此函数获取按钮上显示的图片资源ID。	手游、端游、H5
ButtonGetIsActiveBtn	获取按钮是否为激活状态	
bool

此函数获取按钮是否为激活状态。	手游、端游
ButtonGetIsActivePageBtn	获取按钮是否为激活的页签按钮	
bool

此函数获取按钮是否为激活的页签按钮。	手游、端游、H5
ButtonGetShine	获取按钮是否闪耀	
bool

此函数获取按钮是否使用闪耀的展示特效。	手游、端游
ButtonGetShowDisable	获取按钮是否为灰色状态	
bool

此函数获取按钮的灰色状态。	手游、端游
ButtonGetTextFont	获取按钮字体	
string

此函数获取指定按钮控件文字的字体样式。	手游、端游、H5
ButtonGetDrawCenter	获取按钮控件的绘制方式	
bool

此函数获取按钮控件的绘制方式，即指定按钮控件是否以控件中心点为锚点进行绘制。	手游、端游
<上一篇:窗体控件概览下一篇:编辑框控件概览>
ButtonSetAlpha
设置按钮的图片透明度

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-12-18 00:00:00
此函数设置按钮的图片透明度。

语法
Luacopy 复制
GUI:ButtonSetAlpha(
    handle,
    alpha
)
参数
handle

int

 
控件句柄

alpha

uint32_t

 
图片透明度

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
GUI:ButtonSetAlpha(_GUIHandle, 150)
dbg("当前透明度为"..GUI:ButtonGetAlpha(_GUIHandle))

--此示例代码运行之前。客户端按钮控件如下图所示。

ButtonSetAlpha.png

--此示例代码运行成功如下图所示，控件变透明了，成功输出了透明度。

ButtonSetAlpha_2.pngButtonSetAlpha_3.png
下一篇:设置按钮判断鼠标是否在窗口内的方式>
ButtonSetCheckPoint
设置按钮判断鼠标是否在窗口内的方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-09-27 00:00:00
此函数设置按钮判断鼠标是否在窗口内的方式。

caution_icon 注意
端游当设置为图片判断时，根据按钮处于普通状态（非按下，鼠标悬停状态）的图片判断。

语法
Luacopy 复制
GUI:ButtonSetCheckPoint(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

_Flag

int

 
判断方式

手游：

0为默认值，不开启像素Alpha判断，仅检查在控件范围内。

1开启像素Alpha判断。

note_icon 备注
此检查仅支持RGBA8888的资源图片（高清打包）。

此检查仅在中心锚点时有效，故不要同时使用接口GUI:ButtonSetDrawCenter。

未设置Button图像时，会回退到控件范围检查，当设置Button图像但图像不存在时，则检查会立即失败。

当检查失效败且有设置GUI:ButtonSetSelectRange时，以设置的按钮选择范围判断为准。

端游：

0使用按钮图片判断。鼠标点击在按钮使用的图片上即判断为在窗口内。

其他值 使用控件自身判断。鼠标点击在按钮控件内即判断为在窗口内。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
--手游：

GUI:ButtonSetCheckPoint(0)

--当参数设置为0时，按照button控件的大小决定控件的点击范围，即使不点到图片上也可以响应。

ButtonSetCheckPoint.png

ButtonSetCheckPoint_2.png

--即使不点到元宝图片也可以响应。

ButtonSetCheckPoint_3.png

GUI:ButtonSetCheckPoint(1)

--当参数设置为1时，按照button控件的实际图片大小决定控件点击范围，需要点到实际的图片上才可以响应。

--未点击到图片无响应。

ButtonSetCheckPoint_4.png

--点击到元宝图片后正常响应。

ButtonSetCheckPoint_5.png
<上一篇:设置按钮的图片透明度下一篇:设置按钮按下时文字是否改变位置>
ButtonSetDownTextPosChange
设置按钮按下时文字是否改变位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置按钮按下时文字是否改变位置。

如设置为开启，按钮按下时文字会向右下方偏移一个像素。

语法
Luacopy 复制
GUI:ButtonSetDownTextPosChange(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

_Flag

bool

 
true按下时文字位置改变

false按下时文字位置不改变

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    GUI:ButtonSetDownTextPosChange(_GUIHandle, true) --设置按下时文字位置改变
end 
<上一篇:设置按钮判断鼠标是否在窗口内的方式下一篇:设置按钮是否以中心点为锚点进行绘制>
ButtonSetDrawCenter
设置按钮是否以中心点为锚点进行绘制

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数设置指定按钮控件是否以控件中心点为锚点进行绘制。

语法
Luacopy 复制
GUI:ButtonSetDrawCenter(
    _Handle,
    _DrawCenter
)
参数
_Handle

long

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_DrawCenter

bool

 
true以控件中心点为锚点进行绘制（手游默认值）

false以控件左上角为锚点进行绘制（端游默认值）

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
_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan0", 4010210000,300,400)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle, "未旋转") --设置按钮控件的文本内容
end

_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan1", 4010210000,300,500)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle, "旋转90°") --设置按钮控件的文本内容
    GUI:ButtonSetRotate(_GUIHandle, true, 90) --设置按钮控件允许旋转且旋转角度为90°（顺时针旋转）
    GUI:ButtonSetDrawCenter(_GUIHandle,true) --设置以按钮控件中心点为锚点进行绘制
    if GUI:ButtonGetDrawCenter(_GUIHandle) then --获取按钮控件的绘制方式
        dbg("以控件中心点为锚点进行绘制")
    else
        dbg("以控件左上角为锚点进行绘制")
    end 
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

ButtonSetDrawCenter.png

ButtonGetDrawCenter.png
<上一篇:设置按钮按下时文字是否改变位置下一篇:设置按钮上的图片的偏移量>
ButtonSetDrawPostTextureOffset
设置按钮上的图片的偏移量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-04-28 00:00:00
此函数设置按钮上的图片的偏移量。

语法
Luacopy 复制
GUI:ButtonSetDrawPostTextureOffset(
    handle,
    px,
    py
)
参数
handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

px

int

 
X轴方向上中心偏移

py

int

 
Y轴方向上中心偏移

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
local AddX = 130
_GUIHandle = GUI:ButtonCreate(_Parent,"Recycle",4010210000,360+AddX*3,367+110)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"回收")
    GUI:ButtonSetDrawPostTexture(_GUIHandle,3031000000)
    GUI:ButtonSetDrawPostTextureOffset(_GUIHandle,50,50)
end

--如下图所示按钮上的图片设置偏移前。

ButtonSetDrawPostTextureOffset.png

--如下图所示按钮上的图片设置0.5 0.5偏移后。

ButtonSetDrawPostTextureOffset_2.png
<上一篇:设置按钮是否以中心点为锚点进行绘制下一篇:设置按钮上显示的图片缩放>
ButtonSetDrawPostTextureScale
设置按钮上显示的图片缩放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-04-28 00:00:00
此函数设置设置按钮上显示的图片缩放，锚点是中心。

语法
Luacopy 复制
GUI:ButtonSetDrawPostTextureScale(
    handle,
    scale_x,
    scale_y
)
参数
handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

scale_x

float

 
X轴方向上比例，默认原图为1.0。

scale_y

float

 
Y轴方向上比例，默认原图为1.0。

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
local AddX = 130
_GUIHandle=GUI:ButtonCreate(_Parent,"Recycle",4010210000,360+AddX*3,367+110)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"回收")
    GUI:ButtonSetDrawPostTexture(_GUIHandle,3031000000)
    GUI:ButtonSetDrawPostTextureScale(_GUIHandle,1,1)
    --GUI:ButtonSetDrawPostTextureScale(_GUIHandle,1.5,1.5)
    --GUI:ButtonSetDrawPostTextureScale(_GUIHandle,0.5,0.5)
end

--如下图所示将接口参数设置为1，1时，显示为原图大小。

ButtonSetDrawPostTextureScale.png

--如下图所示将接口参数设置为1.5，1.5时，图片按比例放大。

ButtonSetDrawPostTextureScale_2.png

--如下图所示将接口参数设置为0.5，0.5时，图片按比例缩小。

ButtonSetDrawPostTextureScale_3.png
<上一篇:设置按钮上的图片的偏移量下一篇:设置按钮上显示的图片>
ButtonSetDrawPostTexture
设置按钮上显示的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置按钮上显示的图片。

设置的图片会显示在按钮图片的上层。

语法
Luacopy 复制
GUI:ButtonSetDrawPostTexture(
    _HandleID,
    _ImageID
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_ImageID

unsigned int

 
图片资源的ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"Recycle",1853800038, 150, 500)--创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"回  收") --设置按钮上的文字为“回  收”
    GUI:ButtonSetDrawPostTexture(_GUIHandle, 3031000000) --设置按钮上层的图片
    dbg("按钮上显示的图片的资源ID为："..GUI:ButtonGetDrawPostTexture(_GUIHandle)) --获取按钮上显示的图片的资源ID
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

ButtonSetDrawPostTexture_2.png

ButtonGetDrawPostTexture.png
<上一篇:设置按钮上显示的图片缩放下一篇:设置按钮各个状态图片相对于主图片的ID偏移>
ButtonSetImageIndex
设置按钮各个状态图片相对于主图片的ID偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置按钮各个状态下图片资源ID相对于按钮创建时图片资源ID的偏移。

例如：按钮创建时的图片资源ID是1832100000，若设置的偏移分别为0，1，2，3，则对应的图片资源ID应为：

正常状态：1832100000

鼠标悬浮状态：1832100001

鼠标按下状态：1832100002

按钮不可用状态：1832100003

语法
Luacopy 复制
GUI:ButtonSetImageIndex(
    _HandleID,
    _NormalIndex,
    _MouseOnIndex,
    _MouseDownIndex,
    _DisableIndex
)
参数
_HandleID

int

 
指定按钮控件的句柄

_NormalIndex

int

 
正常状态下图片资源ID相对于按钮创建时图片资源ID的偏移

_MouseOnIndex

int

 
鼠标悬浮状态下图片资源ID相对于按钮创建时图片资源ID的偏移

_MouseDownIndex

int

 
鼠标按下状态下图片资源ID相对于按钮创建时图片资源ID的偏移

_DisableIndex

int

 
按钮不可用状态下图片资源ID相对于按钮创建时图片资源ID的偏移

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）中的Package.lua为例
Package = {}
function Package.main()
--……省略部分代码

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",4000230001,390 + 110,5 + 55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.OnClose")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:ButtonSetImageIndex(_GUIHandle, 0, 1, 2, -1)
    end
--……省略部分代码
end

--……省略部分代码

Package.main()

--此示例代码运行成功如下图所示。

--正常状态：
ButtonSetImageIndex.png

--鼠标悬浮状态：
ButtonSetImageIndex2.png

--鼠标按下状态：
ButtonSetImageIndex3.png

--按钮不可用状态：
ButtonSetImageIndex4.png
<上一篇:设置按钮上显示的图片下一篇:设置按钮是否为激活状态>
ButtonSetIsActiveBtn
设置按钮是否为激活状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置按钮是否为激活状态。

如按钮保持激活状态，则一直显示第二幅图。

语法
Luacopy 复制
GUI:ButtonSetIsActiveBtn(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

_Flag

bool

 
true激活状态

false非激活状态

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    GUI:ButtonSetIsActiveBtn(_GUIHandle, true) --设置为激活状态
end
<上一篇:设置按钮各个状态图片相对于主图片的ID偏移下一篇:设置是否为激活的页签按钮>
ButtonSetIsActivePageBtn
设置是否为激活的页签按钮

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置是否为激活的页签按钮。

若页签式按钮处于激活状态，则一直显示高亮状态（即显示鼠标按下状态下的图片）。

语法
Luacopy 复制
GUI:ButtonSetIsActivePageBtn(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
按钮是否为激活的页签按钮

true按钮是激活的页签按钮

false按钮非激活的页签按钮

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    GUI:ButtonSetIsActivePageBtn(_GUIHandle, true) --设置为激活的页签按钮
end

--此示例代码运行成功如下图所示。

ButtonSetIsActivePageBtn_2.png
<上一篇:设置按钮是否为激活状态下一篇:设置按钮移动到活动子控件上层>
ButtonSetMoveToActionTop
设置按钮移动到活动子控件上层

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置按钮移动到其父控件中活动子控件的上层。

语法
Luacopy 复制
GUI:ButtonSetMoveToActionTop(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置是否为激活的页签按钮下一篇:设置按钮的显示角度>
ButtonSetRotate
设置按钮的显示角度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数设置指定按钮控件的显示角度。

语法
Luacopy 复制
GUI:ButtonSetRotate(
    _Handle,
    _IsRotate,
    _Roation
)
参数
_Handle

long

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_IsRotate

bool

 
是否允许旋转

true允许旋转

false不允许旋转

_Roation

int

 
旋转的角度，单位为degree(°)

设置正数代表顺时针旋转

设置负数代表逆时针旋转

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
_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan0", 4010210000,300,400)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle, "未旋转") --设置按钮控件的文本内容
end

_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan1", 4010210000,300,500)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle, "旋转90°") --设置按钮控件的文本内容
    GUI:ButtonSetRotate(_GUIHandle, true, 90) --设置按钮控件允许旋转且旋转角度为90°（顺时针旋转）
    GUI:ButtonSetDrawCenter(_GUIHandle,true) --设置以按钮控件中心点为锚点进行绘制
    if GUI:ButtonGetDrawCenter(_GUIHandle) then --获取按钮控件的绘制方式
        dbg("以控件中心点为锚点进行绘制")
    else
        dbg("以控件左上角为锚点进行绘制")
    end 
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

ButtonSetDrawCenter.png

ButtonGetDrawCenter.png
<上一篇:设置按钮移动到活动子控件上层下一篇:设置按钮的缩放比例>
ButtonSetScale
设置按钮的缩放比例

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-06-20 00:00:00
此函数设置指定按钮控件的缩放比例，以实现缩放按钮整体大小的功能。

参考ButtonGetScale

caution_icon 注意
在2D手游和3D手游中，由此接口设置的图片缩放基准点为按钮中心；

在2D端游和3D端游中，由此接口设置的图片缩放基准点为按钮左上角。

语法
Luacopy 复制
GUI:ButtonSetScale(
    _HandleID,
    _XScale,
    _YScale
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_XScale

int

 
X轴方向缩放（即宽度的缩放比例）

将要设置的倍数乘以10000即为设置值

例如：

5000按钮宽度缩小至原始宽度的一半大小

10000按钮宽度为原始宽度

20000按钮宽度放大1倍，为原始宽度的2倍大小

_YScale

int

 
Y轴方向缩放（即高度的缩放比例）

将要设置的倍数乘以10000即为设置值

规则和_XScale相同，不再赘述。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
增加对端游的支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"Shoutan",1853800038, 100, 100) --创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"收  摊")
    GUI:ButtonSetTextFont(_GUIHandle,"SIMLI18") --设置按钮文字字体为隶书
    GUI:ButtonSetScale(_GUIHandle, 20000, 20000) --宽度和高度均放大2倍
end

--示例效果如下图，“收摊”按钮被放大。

ButtonSetScale
<上一篇:设置按钮的显示角度下一篇:设置按钮选择范围>
ButtonSetSelectRange
设置按钮选择范围

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置按钮选择范围。

当设置的宽度和高度都大于控件大小时，则使用此范围判断触摸点是否在控件上。

语法
Luacopy 复制
GUI:ButtonSetSelectRange(
    _HandleID,
    _SizeX,
    _SizeY
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

_SizeX

int

 
X范围

_SizeY

int

 
Y范围

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    GUI:ButtonSetSelectRange(_GUIHandle, 60, 23) --设置选择范围
end
<上一篇:设置按钮的缩放比例下一篇:设置按钮闪烁频率>
ButtonSetShineGradient
设置按钮闪烁频率

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置按钮闪烁的频率。

语法
Luacopy 复制
GUI:ButtonSetShineGradient(
    handle,
    shine_gradient
)
参数
handle

long

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

shine_gradient

int

 
颜色变化梯度

note_icon 备注
颜色变化梯度的值越大按钮闪烁越快。

端游中，颜色变化梯度的默认值为7。

手游中，颜色变化梯度的默认值为30。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn",4000240016,455, 390)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"添加好友") --设置文字内容
    GUI:ButtonSetShine(_GUIHandle, true) --设置为闪烁的效果
end

local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn1",4000240016,455, 450)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"添加好友") --设置文字内容
    GUI:ButtonSetShine(_GUIHandle, true) --设置为闪烁的效果
    GUI:ButtonSetShineGradient(_GUIHandle,3) --设置颜色变化梯度的值为3
end

--此示例代码运行成功如下图所示，当设置颜色变化梯度的值为3时，按钮闪烁变慢。

ButtonSetShineGradient.gif
<上一篇:设置按钮选择范围下一篇:设置按钮是否显示闪烁的特效>
ButtonSetShine
设置按钮是否显示闪烁的特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置按钮是否显示闪烁的特效。

语法
Luacopy 复制
GUI:ButtonSetShine(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
按钮是否显示闪烁的特效

true按钮显示闪烁的特效

false正常状态（即不显示闪烁的特效）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    GUI:ButtonSetShine(_GUIHandle, true) --设置为闪烁效果
end

--此示例代码运行成功如下图所示。

ButtonSetShine_3.gif
<上一篇:设置按钮闪烁频率下一篇:设置按钮是否为灰色状态>
ButtonSetShowDisable
设置按钮是否为灰色状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定按钮控件是否为灰色状态。

按钮处于灰色状态时，仍可被点击按下。

语法
Luacopy 复制
GUI:ButtonSetShowDisable(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true灰色状态

false正常状态

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",4000240016,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:ButtonSetShowDisable(_GUIHandle, true) --设置为灰色状态
end

local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage2",4000240016,266,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:ButtonSetShowDisable(_GUIHandle, false) --设置为正常状态
end

--此示例代码运行成功如下图所示（左图为按钮处于灰色状态的效果，右图为按钮处于正常状态的效果）。

ButtonSetShowDisable_3.png
<上一篇:设置按钮是否显示闪烁的特效下一篇:设置按钮在特定状态的文字颜色>
ButtonSetStateTextColor
设置按钮在特定状态的文字颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定按钮控件在特定状态下文字的颜色。

语法
Luacopy 复制
GUI:ButtonSetStateTextColor(
    _HandleID,
    _State,
    _Color
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

_State

int

 
指定按钮的状态

0普通状态

1鼠标悬停

2鼠标按下

3禁用状态

_Color

unsigned int

 
颜色值。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"SettlePackage",1930001006,210,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"整  理") --按钮上的文字为“整理”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    GUI:ButtonSetStateTextColor(_GUIHandle,1, GUI:MakeARGB(255,255,255,255)) --设置鼠标悬停时的文字颜色
end

--示例效果如下图

ButtonSetStateTextColor example
<上一篇:设置按钮是否为灰色状态下一篇:设置按钮文字是否允许左上方溢出>
ButtonSetTextCanOverflow
设置按钮文字是否允许左上方溢出

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置按钮文字是否允许往左上方向溢出。

默认情况下，当按钮文字长度超过按钮长度时，文字无法向左溢出。

语法
Luacopy 复制
GUI:ButtonSetTextCanOverflow(
    _HandleID,
    _CanOverflow
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

_CanOverflow

bool

 
是否允许溢出

true表示允许

false表示不允许

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"Example",1853800038, 400, 400) --创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"这是一个长文本") --设置按钮文字
    GUI:WndSetTextOffset(_GUIHandle, -200, -50) --设置文字的偏移
    GUI:ButtonSetTextFont(_GUIHandle,"SIMLI18") --设置按钮文字字体为隶书
    GUI:ButtonSetTextCanOverflow(_GUIHandle,true) --设置按钮允许文字往左上方向溢出
end

--不允许文字往左上方向溢出，示例图效果如下。

ButtonSetTextCanOverflow

--允许文字往左上方向溢出，示例图效果如下。


<上一篇:设置按钮在特定状态的文字颜色下一篇:设置按钮字体>
ButtonSetTextFont
设置按钮字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定按钮控件文字的字体样式。

如下方图片展示的按钮上的文字字体。

button
语法
Luacopy 复制
GUI:ButtonSetTextFont(
    _HandleID,
    _FontName
)
参数
_HandleID

int

 
指定按钮控件的句柄

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
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,225,0)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:ButtonSetTextFont(_GUIHandle,"SIMLI18")--设置按钮文字字体为隶书
end
<上一篇:设置按钮文字是否允许左上方溢出
ButtonGetAlpha
获取按钮的图片透明度

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-12-18 00:00:00
此函数获取按钮的图片透明度。

语法
Luacopy 复制
GUI:ButtonGetAlpha(
    handle
)
参数
handle

int

 
控件句柄

返回值
unsigned int

 
图片透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间，默认值为255。

0表示全透明，255表示不透明。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GUI:ButtonSetAlpha(_GUIHandle, 150)
dbg("当前透明度为"..GUI:ButtonGetAlpha(_GUIHandle))

--此示例代码运行之前。客户端按钮控件如下图所示。

ButtonSetAlpha.png

--此示例代码运行成功如下图所示，控件变透明了，成功输出了透明度。

ButtonSetAlpha_2.pngButtonSetAlpha_3.png
下一篇:获取按钮判断鼠标是否在窗口内的方式>
ButtonGetCheckPoint
获取按钮判断鼠标是否在窗口内的方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-09-27 00:00:00
此函数获取按钮判断鼠标是否在窗口内的方式。

语法
Luacopy 复制
GUI:ButtonGetCheckPoint(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
判断方式

手游：

0为默认值，不开启像素Alpha判断，仅检查在控件范围内。

1开启像素Alpha判断。

端游：

0使用按钮图片判断。鼠标点击在按钮使用的图片上即判断为在窗口内。

其他值 使用控件自身判断。鼠标点击在按钮控件内即判断为在窗口内。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取按钮的图片透明度下一篇:获取按钮按下时文字是否改变位置>
ButtonGetDownTextPosChange
获取按钮按下时文字是否改变位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取按钮按下时文字是否改变位置。

语法
Luacopy 复制
GUI:ButtonGetDownTextPosChange(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true按钮按下时文字会向右下方偏移一个像素

false按钮文字不会发生偏移

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    local _BtnTxtChg = GUI:ButtonGetDownTextPosChange(_GUIHandle) --获取按钮按下时文字是否改变位置
end
<上一篇:获取按钮判断鼠标是否在窗口内的方式下一篇:获取按钮控件的绘制方式>
ButtonGetDrawCenter
获取按钮控件的绘制方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数获取按钮控件的绘制方式，即指定按钮控件是否以控件中心点为锚点进行绘制。

语法
Luacopy 复制
GUI:ButtonGetDrawCenter(
    _Handle
)
参数
_Handle

long

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
true以控件中心点为锚点进行绘制（手游默认值）

false以控件左上角为锚点进行绘制（端游默认值）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan0", 4010210000,300,400)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle, "未旋转") --设置按钮控件的文本内容
end

_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan1", 4010210000,300,500)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle, "旋转90°") --设置按钮控件的文本内容
    GUI:ButtonSetRotate(_GUIHandle, true, 90) --设置按钮控件允许旋转且旋转角度为90°（顺时针旋转）
    GUI:ButtonSetDrawCenter(_GUIHandle,true) --设置以按钮控件中心点为锚点进行绘制
    if GUI:ButtonGetDrawCenter(_GUIHandle) then --获取按钮控件的绘制方式
        dbg("以控件中心点为锚点进行绘制")
    else
        dbg("以控件左上角为锚点进行绘制")
    end 
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

ButtonSetDrawCenter.png

ButtonGetDrawCenter.png
<上一篇:获取按钮按下时文字是否改变位置下一篇:获取按钮上显示的图片>
ButtonGetDrawPostTexture
获取按钮上显示的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取按钮上显示的图片的资源ID。

语法
Luacopy 复制
GUI:ButtonGetDrawPostTexture(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

返回值
unsigned int

 
图片资源ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"Recycle",1853800038, 150, 500)--创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"回  收") --设置按钮上的文字为“回  收”
    GUI:ButtonSetDrawPostTexture(_GUIHandle, 3031000000) --设置按钮上层的图片
    dbg("按钮上显示的图片的资源ID为："..GUI:ButtonGetDrawPostTexture(_GUIHandle)) --获取按钮上显示的图片的资源ID
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

ButtonSetDrawPostTexture_2.png

ButtonGetDrawPostTexture.png
<上一篇:获取按钮控件的绘制方式下一篇:获取按钮是否为激活状态>
ButtonGetIsActiveBtn
获取按钮是否为激活状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取按钮是否为激活状态。

如按钮保持激活状态，则一直显示第二幅图。

语法
Luacopy 复制
GUI:ButtonGetIsActiveBtn(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true激活状态

false非激活状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    local _BtnActiveStatus = GUI:ButtonGetIsActiveBtn(_GUIHandle) --获取激活状态
end
<上一篇:获取按钮上显示的图片下一篇:获取按钮是否为激活的页签按钮>
ButtonGetIsActivePageBtn
获取按钮是否为激活的页签按钮

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取按钮是否为激活的页签按钮。

若页签式按钮处于激活状态，则一直显示高亮状态（即显示鼠标按下状态下的图片）。

语法
Luacopy 复制
GUI:ButtonGetIsActivePageBtn(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
按钮是否为激活的页签按钮

true按钮是激活的页签按钮

false按钮非激活的页签按钮

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    lf GUI:ButtonGetIsActivePageBtn(_GUIHandle) then --获取是否为激活的页签按钮
        dbg("是激活的页签按钮")
    else
        dbg("不是激活的页签按钮")
    end  
end

--此示例代码运行成功如下图所示。

ButtonGetIsActivePageBtn_2.png
<上一篇:获取按钮是否为激活状态下一篇:获取按钮的缩放比例>
ButtonGetScale
获取按钮的缩放比例

手游 2Dsupport 3Dnot_not_support

端游 2Dsupport 3Dnot_not_support

H5 2Dnot_not_support

更新时间：2025-06-20 00:00:00
此函数获取按钮的缩放比例。

参考 ButtonSetScale

语法
Luacopy 复制
GUI:ButtonGetScale(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

note_icon 备注
获取的缩放比例信息存储在全局变量LuaRet中。

LuaRet[1]：宽度的缩放比例

LuaRet[2]：高度的缩放比例

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"testButton",4000240016,700,80)
if _GUIHandle ~= 0 then
    GUI:ButtonSetScale(_GUIHandle,7000,8000)
end

if GUI:ButtonGetScale(GetWindow(_Parent,"testButton")) then
    dbg("宽度的缩放比例："..LuaRet[1])
    dbg("高度的缩放比例："..LuaRet[2])
end

--示例效果如下图，按钮缩放前。

ButtonGetScale

--示例效果如下图，按钮缩放后。

ButtonGetScale_2

ButtonGetScale_3
<上一篇:获取按钮是否为激活的页签按钮下一篇:获取按钮是否闪耀>
ButtonGetShine
获取按钮是否闪耀

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取按钮是否使用闪耀的展示特效。

语法
Luacopy 复制
GUI:ButtonGetShine(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
按钮的闪耀设置

true闪耀效果

false正常状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    local _BtnShineStatus = GUI:ButtonGetShine(_GUIHandle) --获取是否闪耀效果
end
<上一篇:获取按钮的缩放比例下一篇:获取按钮是否为灰色状态>
ButtonGetShowDisable
获取按钮是否为灰色状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-11-21 00:00:00
此函数获取按钮的灰色状态。

语法
Luacopy 复制
GUI:ButtonGetShowDisable(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
按钮的状态

true灰色状态

false正常状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,66,236)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --按钮上的文字为“背包扩展”
    GUI:WndSetSizeM(_GUIHandle,60, 23) --设置按钮控件的大小
    GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置文字的颜色
    local _BtnGrayStatus = GUI:ButtonGetShowDisable(_GUIHandle) --获取灰色状态
end
<上一篇:获取按钮是否闪耀下一篇:获取按钮字体>
ButtonGetTextFont
获取按钮字体

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定按钮控件文字的字体样式。

语法
Luacopy 复制
GUI:ButtonGetTextFont(
    _HandleID
)
参数
_HandleID

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

返回值
string

 
字体名称

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,225,0)--创建一个按钮
if _GUIHandle ~= 0 then
    GUI:ButtonSetTextFont(_GUIHandle,"SIMLI")--设置按钮文字字体为隶书
    local _ButtonFontFamily = GUI:ButtonGetTextFont(_GUIHandle)--获取按钮文字字体
end
<上一篇:获取按钮是否为灰色状态
以下为封装接口：
ButtonGetIsActivePageBtn
获取按钮是否为激活的页签按钮

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取按钮是否为激活的页签按钮。

若页签式按钮处于激活状态，则一直显示高亮状态（即显示鼠标按下状态下的图片）。

语法
Luacopy 复制
ButtonGetIsActivePageBtn(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定按钮控件的描述

返回值
bool

 
按钮是否为激活的页签按钮

true按钮是激活的页签按钮

false按钮非激活的页签按钮

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn",4000240016,455, 390)
if _GUIHandle ~= 0 then
    ButtonSetIsActivePageBtn(_GUIHandle,nil,true) --设置为激活的页签按钮
    if ButtonGetIsActivePageBtn(_GUIHandle) then --获取是否为激活的页签按钮
        dbg("是激活的页签按钮")
    else
        dbg("不是激活的页签按钮")
    end
end

--此示例代码运行成功如下图所示。

ButtonGetIsActivePageBtn.png
下一篇:设置按钮的图片>
ButtonSetImageID
设置按钮的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置按钮的图片资源ID。

语法
Luacopy 复制
ButtonSetImageID(
    _Handle,
    _Info,
    _ImageId
)
参数
_Handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定按钮控件的描述

_ImageId

int

 
按钮的图片资源ID

返回值
bool

 
true设置成功

false设置失败(未找到对应的控件)

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn",0,455, 390) --创建按钮，图片资源不做设置
if _GUIHandle ~= 0 then
    ButtonSetImageID(_GUIHandle,nil,4000240016) --设置按钮的图片	
end

--此示例代码运行成功如下图所示。

ButtonSetImageID.png
<上一篇:获取按钮是否为激活的页签按钮下一篇:设置是否为激活的页签按钮>
ButtonSetIsActivePageBtn
设置是否为激活的页签按钮

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置是否为激活的页签按钮。

若页签式按钮处于激活状态，则一直显示高亮状态（即显示鼠标按下状态下的图片）。

语法
Luacopy 复制
ButtonSetIsActivePageBtn(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定按钮控件的描述

_Flag

bool

 
按钮是否为激活的页签按钮

true按钮是激活的页签按钮

false按钮非激活的页签按钮

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn",4000240016,455, 390)
if _GUIHandle ~= 0 then
    ButtonSetIsActivePageBtn(_GUIHandle,nil,true) --设置为激活的页签按钮
end

--此示例代码运行成功如下图所示。

ButtonSetIsActivePageBtn.png
<上一篇:设置按钮的图片下一篇:设置按钮按下时文字是否改变位置>
ButtonSetIsTextPosChange
设置按钮按下时文字是否改变位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置按钮按下时文字是否改变位置。

语法
Luacopy 复制
ButtonSetIsTextPosChange(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定按钮控件的描述

_Flag

bool

 
按钮按下时文字是否改变位置

true按下时文字位置改变

false按下时文字位置不改变

note_icon 备注
在手游和端游中，若此参数设置为true，则按钮按下时文字会向右下方偏移一个像素。

在H5中，若此参数设置为true，则按钮按下时按钮会放大。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn",4000240016,455, 390)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"添加好友") --设置文字内容
    ButtonSetIsTextPosChange(_GUIHandle,nil,true) --设置按下时文字位置改变
end

--此示例代码运行成功如下图所示。

ButtonSetIsTextPosChange.gif
<上一篇:设置是否为激活的页签按钮下一篇:一键设置按钮属性>
ButtonSetProp
一键设置按钮属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数一键设置按钮属性。

语法
Luacopy 复制
ButtonSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _ImageId
)
参数
_Handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定按钮控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
是否可用

true按钮控件可用

false按钮控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_ImageId

int

 
按钮的图片资源ID

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
local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn",0,455, 390) --创建按钮，图片资源不做设置
if _GUIHandle ~= 0 then
    ButtonSetProp(_GUIHandle,nil,true,true,true,4000240016) --一键设置按钮属性
end

--此示例代码运行成功如下图所示。

ButtonSetImageID.png
<上一篇:设置按钮按下时文字是否改变位置下一篇:设置按钮是否显示闪烁的特效>
ButtonSetShine
设置按钮是否显示闪烁的特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置按钮是否显示闪烁的特效。

语法
Luacopy 复制
ButtonSetShine(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定按钮控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定按钮控件的描述

_Flag

bool

 
按钮是否显示闪烁的特效

true按钮显示闪烁的特效

false正常状态（即不显示闪烁的特效）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"EnterBtn",4000240016,455, 390)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"添加好友") --设置文字内容
    ButtonSetShine(_GUIHandle,nil, true) --设置为闪烁的效果
end

--此示例代码运行成功如下图所示。

ButtonSetShine_2.gif
<上一篇:一键设置按钮属性
