图片控件概览
更新时间：2023-05-31 00:00:00
图片框控件用于显示指定格式的图片或动画。

创建控件
你可以使用下表所列的接口，创建图片控件。

接口名	中文名	返回值类型	功能描述	适用客户端
ImageCreate	创建图片控件	
int

此函数以指定的窗口作为父窗口，新建一个图片控件。	手游、端游、H5
设置控件
你可以使用下表所列的接口，设置图片控件的绘制方式、锚点位置；图片的缩放、旋转、镜像；图片的透明度、过渡动画播放等。

接口名	中文名	返回值类型	功能描述	适用客户端
ImageAddTracePoint	设置图片控件的淡入或淡出效果	
无

此函数设置指定图片控件的淡入或淡出效果。	手游、端游、H5
ImageSetAlpha	设置图片控件的透明度	
无

此函数设置图片控件的透明度属性。	手游、端游、H5
ImageSetAnimateEnable	设置图片控件是否播放动画	
无

此函数设置指定的图片控件是否播放动画。	手游、端游、H5
ImageSetAnimate	设置图片控件动画循环播放	
无

此函数设置指定图片控件中动画循环播放的属性及播放完毕后的程序的处理方式。	手游、端游、H5
ImageSetAroundImageEx	设置九宫格拼接图片（扩展）	
无

此函数设置指定图片控件的九宫格拼接图片资源，同时可以设置图片资源的拼接方式（伸缩模式或者平铺模式）。	手游、端游
ImageSetAroundImage	设置九宫格拼接图片	
无

此函数设置指定图片控件的九宫格拼接图片资源。	手游、端游、H5
ImageSetBlendType	设置指定图片控件的混色类型	
无

此函数设置指定图片控件的混色类型。	手游、端游
ImageSetCenterDisplay	设置图片是否相对图片控件居中显示	
无

此函数设置图片控件中的图片是否相对控件居中显示。	手游
ImageSetCenter	设置图片控件的锚点位置	
无

此函数设置指定图片控件的锚点位置。	手游、端游、H5
ImageSetCheckPoint	设置图片控件检测点击区域类型	
无

此函数设置图片控件的检测点击区域类型。	手游、端游、H5
ImageSetClipAnim	设置图片控件的裁剪动画	
无

此函数设置图片控件的裁剪动画的相关参数。	手游
ImageSetClipRect	设置图片控件显示区域	
无

此函数设置图片控件的显示区域。	手游
ImageSetColor	设置图片控件颜色	
无

此函数设置指定图片控件的颜色属性。	手游、端游、H5
ImageSetDrawCenter	设置图片控件是否以中心点绘制	
无

此函数设置指定图片控件是否从控件的中心点绘制。	手游、端游、H5
ImageSetDrawFlat	设置图片平铺显示	
无

此函数设置图片平铺显示。	手游、端游
ImageSetDrawRect	设置图片控件绘制区域	
无

此函数设置图片控件的绘制区域。	手游、端游、H5
ImageSetDrawRectBound	设置图片的绘制区域边界	
无

此函数设置是否使用自定义的裁剪宽高替代原始的控件宽高来计算绘制区域，并且可以自定义图片剪裁的宽度和高度。	端游
ImageSetFitSize	设置图片控件是否自动缩放	
无

此函数设置图片资源是否要根据图片控件的大小进行缩放。	手游、端游、H5
ImageSetFixedDrawCenter	设置图片控件是否以中心点绘制（修正）	
无

此函数设置指定图片控件是否从控件的中心点绘制。	手游、端游、H5
ImageSetFlip	设置图片是否镜像翻转	
无

此函数设置图片控件中的图片是否镜像翻转。	手游、端游
ImageSetGray	设置图片控件是否灰度显示	
无

此函数设置指定图片控件的灰度显示的属性。	手游、端游、H5
ImageSetImageAnim	设置图片控件的动画播放	
无

此函数设置指定图片控件的动画播放。	手游
ImageSetImageRoteAnim	设置图片控件的旋转动画	
无

此函数设置图片控件的旋转动画。	手游、H5
ImageSetMaskTextureID	设置图片控件的遮罩图片	
无

此函数设置指定图片控件的遮罩图片资源ID。	手游
ImageSetParam	设置图片控件自定义参数的值	
无

此函数设置图片控件自定义参数的值。	手游、端游、H5
ImageSetRenderState	设置图片的渲染状态	
无

此函数设置图片的渲染状态。	手游、端游
ImageSetTransfrom	设置图片控件的缩放和旋转	
无

此函数设置设置图片控件的缩放和旋转。	手游、端游、H5
ImageSetImageRoation	设置图片控件旋转动画	
无

此函数设置图片旋转动画。	H5
ImageSetTransfromplus	设置图片控件的旋转和缩放（扩展）	
无

此函数设置图片控件的旋转和缩放。	手游、端游
ImageSetTransfromFirstScale	设置图片缩放和旋转的先后顺序	
无

此函数作用为调整使用接口设置图片缩放旋转时缩放和旋转的先后顺序。	端游
SectorSetPercent	设置图片遮罩百分比	
无

此函数设置图片遮罩百分比。	H5
获取控件信息
在创建或设置图片控件后，可以通过以下接口获取图片控件透明度、灰度显示、图片资源ID等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
ImageGetAlpha	获取图片控件的透明度	
unsigned char

此函数获取图片控件的透明度属性。	手游、端游、H5
ImageGetBlendType	获取指定图片控件的混色类型	
int

此函数获取指定图片控件的混色类型。	手游、端游
ImageGetCheckPoint	获取图片控件检测点击区域类型	
int

此函数获取图片控件的检测点击区域类型。	端游、H5
ImageGetColor	获取图片控件颜色	
int

此函数获取指定图片控件的颜色属性。	手游、端游、H5
ImageGetDrawCenter	获取图片控件是否中心绘制	
int

此函数获取图片控件是否中心绘制的属性。	手游、端游、H5
ImageGetFitSize	获取图片控件是否自动缩放	
bool

此函数获取指定图片控件中的图片是否根据控件大小进行自动缩放的属性。	手游、端游、H5
ImageGetGray	获取图片控件是否灰度显示	
bool

此函数获取指定图片控件是否灰度显示的属性。	手游、端游、H5
ImageGetImageID	获取图片控件的图片资源ID	
int

此函数获取指定图片控件的图片资源ID。	手游、端游、H5
ImageGetParam	获取图片控件自定义参数	
int

此函数获取指定图片控件的自定义参数。	手游、端游
ImageGetRenderState	获取图片的渲染状态	
int

此函数获取图片的渲染状态。	手游、端游
其他操作
在创建或设置图片控件后，可以通过以下接口进行生成二维码等操作。

接口名	中文名	返回值类型	功能描述	适用客户端
ImageGenerateQrcode	在图片控件中生成并显示二维码	
bool

此函数在图片控件中生成并显示二维码。默认生成的二维码的大小为图片控件的大小。	手游、端游
<上一篇:滚动窗口控件概览下一篇:物品框控件概览>

ImageAddTracePoint
设置图片控件的淡入或淡出效果

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-09-22 00:00:00
此函数设置指定图片控件的淡入或淡出效果。

语法
Luacopy 复制
GUI:ImageAddTracePoint(
    _HandleID,
    _PosX,
    _PosY,
    _Count,
    _FadeIn,
    _WaitCount,
    _State
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_PosX

int

 
淡入或淡出结束时图片控件的X坐标

_PosY

int

 
淡入或淡出结束时图片控件的Y坐标

_Count

int

 
效果的持续时间，单位为毫秒（ms）。

_FadeIn

bool

 
选择淡入还是淡出。

true淡入效果

false淡出效果

_WaitCount

int

 
效果启动前的等待时间，单位为毫秒（ms）。

_State

int

 
效果类型。

输入范围为0-255，数字将被转换为二进制，根据二进制值来进行判断。

从右至左：

第一位为1有淡入或淡出的效果

第二位无实际效果，可忽略

第三位为1X轴方向放大或缩小。淡入时为放大，淡出时为缩小。

第四位为1Y轴方向放大或缩小。淡入时为放大，淡出时为缩小。

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
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage", 1853710066, 0, 0) --创建图片控件
if _GUIHandle ~= 0 then
    GUI:ImageAddTracePoint(_GUIHandle, 100, 100, 3000, false, 0, 13) --设置为淡出
end

--示例代码效果如下。_State参数二进制值为1101，即有淡出效果，X轴和Y轴同时缩小。

ImageAddTracePoint
下一篇:设置图片控件的透明度>
ImageSetAlpha
设置图片控件的透明度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定图片控件的透明度属性。

语法
Luacopy 复制
GUI:ImageSetAlpha(
    _HandleID,
    _Alpha
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

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
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1901800000,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetAlpha(_GUIHandle, 255) --设置图片控件透明度为255，即不透明
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage1",1901800000,110,250)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetAlpha(_GUIHandle, 155) --设置图片控件透明度为155
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage2",1901800000,110,300)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetAlpha(_GUIHandle, 55) --设置图片控件透明度为55
end

--此示例代码运行成功如下图所示。

ImageSetAlpha.png
<上一篇:设置图片控件的淡入或淡出效果下一篇:设置图片控件是否播放动画>
ImageSetAnimateEnable
设置图片控件是否播放动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定的图片控件是否播放动画。

语法
Luacopy 复制
GUI:ImageSetAnimateEnable(
    _HandleID,
    _Enable,
    _Speed
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Enable

bool

 
是否播放动画

true播放动画

false不播放动画

_Speed

unsigned int

 
动画每帧的时间间隔

单位为毫秒（ms）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3006400000, 150, 150)
if _GUIHandle ~= 0 then
    GUI:ImageSetAnimateEnable(_GUIHandle,true, 200)  --设置播放动画且每帧动画的间隔为200ms 
end

local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg1", 3006400000, 150,275)
if _GUIHandle ~= 0 then
    GUI:ImageSetAnimateEnable(_GUIHandle,true, 50) --设置播放动画且每帧动画的间隔为50ms 
end

--此示例代码运行成功如下图所示（上图设置每帧动画的时间间隔为200ms，下图设置每帧动画的时间间隔为50ms）。

ImageSetAnimateEnable.gif
<上一篇:设置图片控件的透明度下一篇:设置图片控件动画循环播放>
ImageSetAnimate
设置图片控件动画循环播放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-08-05 00:00:00
此函数设置指定图片控件中动画循环播放的属性及播放完毕后的程序的处理方式。

语法
Luacopy 复制
GUI:ImageSetAnimate(
    _HandleID,
    _Speed,
    _AnimCount,
    _AnimCallBackFunc
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Speed

unsigned int

 
动画每帧的时间间隔

默认值为100，单位为毫秒（ms）

note_icon 备注
如图片ID在序列帧(游戏安装目录\Setting\AnimSetting.xml)中有定义，则此参数不起作用。

_AnimCount

int

 
动画循环播放的次数

0默认值（一直循环播放动画）

_AnimCallBackFunc

string

 
动画播放至指定次数后的动作

（1）当此参数设置为空字符串（默认值）时，动画播放至指定次数后会自动销毁该控件。

（2）当此参数设置为其他字符串时，动画播放至指定次数后对应函数会作为Lua脚本函数进行回调，由脚本接管处理。

note_icon 备注
在2D手游、3D手游和3D端游中，此参数输入的内容为字符串脚本名（即函数名后需要加上英文括号“()”），且动画播放至指定次数后会停在在第一帧。

在2D端游和H5中，此参数输入的内容为函数名，且动画播放至指定次数后不会停止播放。

（3）当此参数设置为0时，会有以下两种情况：

在2D手游、3D手游、3D端游和H5中，动画播放至指定次数后会停在在第一帧。

在2D端游中，动画播放至指定次数后会停在最后一帧。

note_icon 备注
若参数_AnimCount设置为0，则此参数不起作用。

（4）2D手游支持将此参数支持配置为1，此时动画播放至指定次数后会停在最后一帧。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
2D手游支持将参数_AnimCallBackFunc支持配置为1

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3030200000, 150, 320)
if _GUIHandle ~= 0 then
    GUI:ImageSetAnimate(_GUIHandle,100, 5,"") --设置图片控件动画循环播放次数为5且动画播放达到指定次数后自动销毁控件
end

--此示例代码运行成功如下图所示，当动画播放5次后控件自动销毁。

ImageSetAnimate.gif
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3030200000, 150, 320)
if _GUIHandle ~= 0 then
    GUI:ImageSetAnimate(_GUIHandle,100, 5,"0") --设置图片控件动画循环播放次数为5且动画播放达到指定次数后会停在最后一帧
end

--此示例代码运行成功如下图所示，当动画播放5次后会停在最后一帧（端游）。

ImageSetAnimate_2.gif
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3030200000, 150, 320)
if _GUIHandle ~= 0 then
    GUI:ImageSetAnimate(_GUIHandle,100, 5,"Click") --设置图片控件动画循环播放次数为5且动画播放达到指定次数后会执行对应函数
end

function Click()
    dbg("响应点击操作")
end

--此示例代码运行成功如下图所示，当动画播放5次后动画不会停止且控制台会输出“响应点击操作”的文字。

ImageSetAnimate_3.gif

ImageSetAnimate_4.png
<上一篇:设置图片控件是否播放动画下一篇:设置九宫格拼接图片（扩展）>
ImageSetAroundImageEx
设置九宫格拼接图片（扩展）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-08-23 00:00:00
此函数设置指定图片控件的九宫格拼接图片资源，同时可以设置图片资源的拼接方式（伸缩模式或者平铺模式）。

九宫格拼接图片是指通过指定的九个方位的图片资源（包含4个角、4条边以及中心区域）来构成完整的图片控件。

例如：图1中的九张图片资源，可构成图2中的图片控件的外边框。

图 1 九张图片资源

set_around_image_resource
图 2 带有外边框的图片控件

set_around_image_result
语法
Luacopy 复制
GUI:ImageSetAroundImageEx(
    _HandleID,
    _LeftUp,
    _RightUp,
    _LeftDown,
    _RightDown,
    _Mid,
    _Up,
    _Down,
    _Left,
    _Right,
    _Scale
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_LeftUp

int

 
左上角的图片资源ID

_RightUp

int

 
右上角的图片资源ID

_LeftDown

int

 
左下角的图片资源ID

_RightDown

int

 
右下角的图片资源ID

_Mid

int

 
中间的图片资源ID

_Up

int

 
上方的图片资源ID

_Down

int

 
下方的图片资源ID

_Left

int

 
左侧的图片资源ID

_Right

int

 
右侧的图片资源ID

_Scale

bool

 
true伸缩模式（为手游默认值）

false平铺模式（为端游默认值）

note_icon 备注
在拼接时，九宫格的4个角尺寸不变（若九宫格整体尺寸小于4个角的尺寸，则会进行裁剪），其余部分会根据此参数设置的拼接方式进行拼接，具体说明如下。

伸缩模式：4条边以及中心区域会拉伸（或者缩放）自适应，适合缩放变形后不会影响效果的图片资源；

平铺模式：4条边以及中心区域会平铺（或者裁剪）自适应，适合裁剪拼接任意区域后不会突兀的图片资源。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.2

 
增加对3D的支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ImageCreate(_Parent, "BKImg2", 0, 200, 100)
if _GUIHandle ~= 0 then
    local _Image9ID = 4000521800
    GUI:ImageSetAroundImageEx(_GUIHandle, _Image9ID + 0, _Image9ID + 2, _Image9ID + 6, 
    _Image9ID + 8, _Image9ID + 4, _Image9ID + 1, _Image9ID + 7, _Image9ID + 3, _Image9ID + 5,false) --设置九宫格拼接图片，同时设置图片资源为平铺模式
    GUI:WndSetSizeM(_GUIHandle,400,200) --设置窗口大小为400*200
end

--此示例代码运行成功如下图所示。

ImageSetAroundImageEx.png
<上一篇:设置图片控件动画循环播放下一篇:设置九宫格拼接图片>
ImageSetAroundImage
设置九宫格拼接图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-05-26 00:00:00
此函数设置指定图片控件的九宫格拼接图片资源。

九宫格拼接图片是指通过指定的九个方位的图片资源（包含4个角、4条边以及中心区域）来构成完整的图片控件。

例如：图1中的九张图片资源，可构成图2中的图片控件的外边框。

图 1 九张图片资源

set_around_image_resource
图 2 带有外边框的图片控件

set_around_image_result
如需设置九宫格图片资源的拼接方式，则可使用接口ImageSetAroundImageEx进行设置。

语法
Luacopy 复制
GUI:ImageSetAroundImage(
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

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_LeftUp

int

 
左上角的图片资源ID

_RightUp

int

 
右上角的图片资源ID

_LeftDown

int

 
左下角的图片资源ID

_RightDown

int

 
右下角的图片资源ID

_Mid

int

 
中间的图片资源ID

_Up

int

 
上方的图片资源ID

_Down

int

 
下方的图片资源ID

_Left

int

 
左侧的图片资源ID

_Right

int

 
右侧的图片资源ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",0,110,200)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,100, 100) --设置窗口大小为100*100
    GUI:ImageSetAroundImage(_GUIHandle, 4000500400, 4000500402, 4000500406, 4000500408, 4000500404, 4000500401, 4000500407, 4000500403, 4000500405) --设置九宫格拼接图片
end

--此示例代码运行成功如下图所示。

ImageSetAroundImage.png
<上一篇:设置九宫格拼接图片（扩展）下一篇:设置指定图片控件的混色类型>
ImageSetBlendType
设置指定图片控件的混色类型

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-04-15 00:00:00
此函数设置指定图片控件的混色类型。

参考 ImageGetBlendType

note_icon 备注
此接口的作用与接口CL:ImageSetRenderState的作用类似，但接口CL:ImageSetRenderState的优先级更高，即同时设置这两个接口时，生效的是接口CL:ImageSetRenderState。

语法
Luacopy 复制
GUI:ImageSetBlendType(
    handle,
    blendtype
)
参数
handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

blendtype

int

 
混色类型值（1-6）

源图片是指指定图片控件中的图片

目标图片是指当前的颜色缓冲区（即绘制区域的背景图片）

1表示将源图片的颜色和目标图片的颜色进行混合（忽略源图的透明度）；

2表示将源图片的颜色和目标图片的颜色进行混合（不忽略源图的透明度）；

3表示目标图片的颜色值按照源图片的Alpha值取反后，将源图片的颜色和目标图片的颜色进行混合；

4（混色时最常用的方式）表示源图片的颜色值乘以自身的Alpha值，目标图片的颜色值按照源图片的Alpha值取反后，将源图片的颜色和目标图片的颜色进行混合；

5表示目标图片的颜色值按照源图片的颜色值取反后，将源图片的颜色和目标图片的颜色进行混合；

6表示源图片的颜色值乘以自身的Alpha值，目标图片的颜色值按照源图片的颜色值取反后，将源图片的颜色和目标图片的颜色进行混合。

note_icon 备注
1.第一种混合方式中，会完全使用源图片的颜色值和目标图片的颜色值，最终的颜色值就是两种颜色值的简单相加.

2.第四种混合方式中，源图片的Alpha值越大，则产生的新颜色中源图片的颜色值所占比例就越大，而目标图片的颜色值所占比例越小。

3.目标图片的颜色值按照源图片的Alpha值取反表示目标图片的颜色值 = 目标图片的颜色值*（1-源图片的Alpha值）；

   目标图片的颜色值按照源图片的颜色值取反表示目标图片的颜色值 = 目标图片的颜色值*（1-源图片的颜色值）。

4.上述颜色均按照1：1的比例进行混合。

5.此参数配置为其他值时，当前接口无效。

note_icon 备注
颜色计算公式：最终的颜色值 = （源图片的颜色值 X 源因子） + （目标图片的颜色值 X 目标因子），其中“X”表示向量的点积运算。

计算中用到的参数含义（计算中涉及到的图片的颜色值和Alpha值的范围均为0-1）：

Rs表示源图片颜色的红色值，Gs表示源图片颜色的绿色值，Bs表示源图片颜色的蓝色值，As表示源图片的Alpha值；

Rd表示目标图片颜色的红色值，Gd表示目标图片颜色的绿色值，Bd表示目标图片颜色的蓝色值，Ad表示目标图片的Alpha值。

当参数blendtype设置为1时，源因子和目标因子的值均为1，此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 * 1）=（Rs + Rd, Gs + Gd , Bs + Bd, As + Ad）

当参数blendtype设置为2时，源因子的值为源图片的Alpha值，目标因子的值为1，此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 源图片的Alpha值） + （目标背景颜色 * 1）=（Rs * As + Rd, Gs * As + Gd , Bs * As + Bd, As * As + Ad）

当参数blendtype设置为3时，源因子的值为1，目标因子的值为（1-源图片的Alpha值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 *（1-源图片的Alpha值））=（Rs + Rd（1-As）, Gs + Gd（1-As） , Bs + Bd（1-As）, As + Ad（1-As））

当参数blendtype设置为4时，源因子的值为源图片的Alpha值，目标因子的值为（1-源图片的Alpha值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 源图片的Alpha值） + （目标背景颜色 * （1-源图片的Alpha值））=（Rs * As + Rd（1-As）, Gs * As + Gd（1-As） , Bs * As + Bd（1-As）, As * As + Ad（1-As））

当参数blendtype设置为5时，源因子的值为1，目标因子的值为（1-源图片的颜色值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 *（1-源图片的颜色值））=（Rs + Rd（1-Rs）, Gs + Gd（1-Gs） , Bs + Bd（1-Bs）, As + Ad（1-As））

当参数blendtype设置为6时，源因子的值为源图片的颜色值，目标因子的值为（1-源图片的颜色值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 源图片的颜色值） + （目标背景颜色 * （1-源图片的颜色值））=（Rs * Rs + Rd（1-Rs）, Gs * Gs + Gd（1-Gs） , Bs * Bs + Bd（1-Bs）, As * As + Ad（1-As））

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_Handle = GUI:ImageCreate(_Parent, "Modelmagic", 3005400000, 300, 450)
if 0 ~= _Handle then
    GUI:WndSetCanRevMsg(_Handle, false)
end  

local addx = 200
for i = 1 ,6 do 
    _Handle = GUI:ImageCreate(_Parent, "Modelmagic"..i, 3005400000, addx*i-350, 150)
    if 0 ~= _Handle then
        GUI:WndSetCanRevMsg(_Handle, false)
        GUI:ImageSetBlendType(_Handle, i)
        dbg("图片控件"..i.."的混色类型："..GUI:ImageGetBlendType(_Handle))
    end
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

--第一排的图片中，从左往右图片控件的混色类型依次为1、2、3、4、5、6；第二排的图片为该图片未进行混色的效果。

ImageSetBlendType.png

ImageGetBlendType.png
<上一篇:设置九宫格拼接图片下一篇:设置图片是否相对图片控件居中显示>
ImageSetCenterDisplay
设置图片是否相对图片控件居中显示

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2022-04-19 00:00:00
此函数设置图片控件中的图片是否相对控件居中显示。

note_icon 备注
此函数主要为修正ImageSetDrawRect接口设置的位置和预期结果不一致。

语法
Luacopy 复制
GUI:ImageSetCenterDisplay(
    _HandleID,
    _Value
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Value

bool

 
true居中显示

false默认方式显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetCenterDisplay(_GUIHandle, true) --设置图片居中显示
end
<上一篇:设置指定图片控件的混色类型下一篇:设置图片控件的锚点位置>
ImageSetCenter
设置图片控件的锚点位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定图片控件的锚点位置。

默认情况下，图片控件的锚点为控件左上角的顶点。根据需要，可使用此函数来更改锚点的位置。

语法
Luacopy 复制
GUI:ImageSetCenter(
    _HandleID,
    _AnchorEnable,
    _AnchorPosX,
    _AnchorPosY
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_AnchorEnable

int

 
是否更改图片的锚点坐标

0不更改

1更改

_AnchorPosX

int

 
定义锚点横坐标的位置

定义值除以10000所得即为X轴方向上的比例。

例如，设置为5000时，锚点横坐标位置即在图片控件高度的1/2处。

_AnchorPosY

int

 
定义锚点纵坐标的位置

定义值除以10000所得即为Y轴方向上的比例。

例如，设置为5000时，锚点纵坐标位置即在图片控件高度的1/2处。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage", 1853710066, 300, 300) --创建图片控件
if _GUIHandle ~= 0 then
    GUI:ImageSetCenter(_GUIHandle, 1, 5000, 5000) --更改锚点位置为控件中心点
end
<上一篇:设置图片是否相对图片控件居中显示下一篇:设置图片控件检测点击区域类型>
ImageSetCheckPoint
设置图片控件检测点击区域类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-09-14 00:00:00
此函数设置图片控件的检测点击区域类型。

语法
Luacopy 复制
GUI:ImageSetCheckPoint(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Flag

int

 
检测点击的类型

手游和端游：

0（手游默认值）仅判断UI大小范围

1（端游默认值）判断UI大小范围并且检测点击位置是否在图片上（忽略透明度）

2判断UI大小范围并且检测点击是否在图片裁切大小范围内（最小裁切宽度按64算）

H5：

0（默认值）检测点击位置是否在图片上（忽略透明度）

其他检测点击位置是否在控件范围内

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 4000800000, 100,100)
if _GUIHandle ~= 0 then
    GUI:WndSetCanRevMsg(_GUIHandle, true) --设置窗口响应操作
    GUI:WndSetEnableM(_GUIHandle, true) --设置窗口可用
    GUI:WndSetSizeM(_GUIHandle,300, 300) --设置窗口大小为300*300
    GUI:ImageSetFitSize(_GUIHandle, true) --设置图片控件自动缩放
    GUI:ImageSetCheckPoint(_GUIHandle,1) --设置点击区域类型为1
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "Click") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

function Click()
    dbg("响应点击操作")
end

--当接口的参数设置为0时，接口WndSetSizeM设置的窗口范围内均可以点击到控件。

--控制台会输出“响应点击操作”的文字。

ImageSetCheckPoint_2.png

ImageSetCheckPoint_3.png

--当参数为1时，只能点击到图片实际大小的范围，且会忽略图片范围中透明度为0的部分。

--如图中虽然图片尺寸为121*111，实际只能点到图片中元宝的部分，忽略灰色部分。

ImageSetCheckPoint_4.png

--当参数为2时，只能点击到图片裁剪范围，不忽略透明度为0的部分。

--如图大小为121*111，设置控件大小为300*300，实际点击范围为121*111。

ImageSetCheckPoint_5.png
<上一篇:设置图片控件的锚点位置下一篇:设置图片控件的裁剪动画>
ImageSetClipAnim
设置图片控件的裁剪动画

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置图片控件的裁剪动画的相关参数。

语法
Luacopy 复制
GUI:ImageSetClipAnim(
    _HandleID,  
    _StartX,
    _StartY,
    _EndX,
    _EndY,
    _Speed
) 
 
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_StartX

float

 
裁剪开始的横轴位置比例，为0到1之间的浮点数。

如设置为0.5，即表示从横轴的中心位置开始裁剪。

_StartY

float

 
裁剪开始的纵轴位置比例，为0到1之间的浮点数。

如设置为0.5，即表示从纵轴的中心位置开始裁剪。

_EndX

float

 
裁剪结束的横轴位置比例，为0到1之间的浮点数。

如设置为1，即表示裁剪到横轴的末尾位置。

_EndY

float

 
裁剪结束的纵轴位置比例，为0到1之间的浮点数。

如设置为1，即表示裁剪到纵轴的末尾位置。

_Speed

float

 
裁剪动画的速度，为0到1之间的浮点数。

数值越大，则裁剪的速度越快。

设置为0时，表示无裁剪动画，图片消失。

设置为1时，表示无裁剪动画，显示图片裁剪后的部分。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"example_image", 2011300000, 300, 200) --创建一个图片控件
if _GUIHandle ~= 0 then
    GUI:ImageSetClipAnim(_GUIHandle, 0, 0, 0.5, 0.5, 0.1) --设置裁剪动画，裁剪图片的1/4。
end

--示例代码创建的图片控件效果如下。

ImageSetClipAnim
<上一篇:设置图片控件检测点击区域类型下一篇:设置图片控件显示区域>
ImageSetClipRect
设置图片控件显示区域

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置图片控件的显示区域。

通过设置横、纵方向的显示范围，控制图片控件的显示区域。

语法
Luacopy 复制
GUI:ImageSetClipRect(
    _HandleID,  
    _StartX,  
    _EndX,  
    _StartY,  
    _EndY  
) 
 
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_StartX

float

 
显示区域起始的横轴位置比例，为0到1之间的浮点数。

_EndX

float

 
显示区域结束的横轴位置比例，为0到1之间的浮点数。

_StartY

float

 
显示区域起始的纵轴位置比例，为0到1之间的浮点数。

_EndY

float

 
显示区域结束的纵轴位置比例，为0到1之间的浮点数。

note_icon 备注
0最小的起始位置比例。

1最大的结束位置比例。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"example_image", 2011300000, 300, 200) --新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetClipRect(_GUIHandle, 0, 0.5, 0, 0.5)
end

--图片显示区域效果如下。

ImageSetClipRect
<上一篇:设置图片控件的裁剪动画下一篇:设置图片控件颜色>
ImageSetColor
设置图片控件颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定图片控件的颜色属性。

语法
Luacopy 复制
GUI:ImageSetColor(
    _HandleID,
    _ImageColor
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_ImageColor

unsigned int

 
指定图片控件的颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_GREENG为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",4000300000,110,200)
if _GUIHandle ~= 0 then
    GUI:ImageSetColor(_GUIHandle,COLOR_GREENG) --设置图片控件颜色为青色
end

--此示例代码运行成功如下图所示。

ImageSetColor.png
<上一篇:设置图片控件显示区域下一篇:设置图片控件是否以中心点绘制>
ImageSetDrawCenter
设置图片控件是否以中心点绘制

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置指定图片控件是否从控件的中心点绘制。

默认状态下，是从图片控件左上角顶点开始绘制。

caution_icon 注意
此接口有升级版本，请使用ImageSetFixedDrawCenter函数。

语法
Luacopy 复制
GUI:ImageSetDrawCenter(
    _HandleID,
    _DrawCenter
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_DrawCenter

bool

 
true中心点绘制

false默认方式绘制

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置图片控件颜色下一篇:设置图片平铺显示>
ImageSetDrawFlat
设置图片平铺显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-12 00:00:00
此函数设置图片平铺显示。

图片平铺是指在不对图片进行拉伸、放大等操作的情况下，使用同一张图片铺满整个版面，默认平铺方向为从右到左，从下到上。

语法
Luacopy 复制
GUI:ImageSetDrawFlat(
    _HandleID
)
参数
_HandleID

long

 
指定图片控件的句柄

点击窗口句柄了解更多信息

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
_GUIHandle = GUI:ImageCreate(_Parent,"Title",1900010085,575,200) 
if _GUIHandle ~= 0 then 
    GUI:WndSetEnableM(_GUIHandle,false)  --设置窗口可用
    GUI:ImageSetDrawFlat(_GUIHandle)  --设置图片平铺显示
    GUI:WndSetSizeM(_GUIHandle,180,70)  --设置窗口大小
end

--原图片

ImageSetDrawFlat_2.png

--平铺后的效果如下图所示

ImageSetDrawFlat.png
<上一篇:设置图片控件是否以中心点绘制下一篇:设置图片的绘制区域边界>
ImageSetDrawRectBound
设置图片的绘制区域边界

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置是否使用自定义的裁剪宽高替代原始的控件宽高来计算绘制区域，并且可以自定义图片剪裁的宽度和高度。

图片控件默认使用原始的控件大小作为绘制区域边界。

此接口可在图片的实际显示区域小于控件大小时且只需绘制部分区域的情况下使用，由脚本自定义图片剪裁的宽度和高度。

自定义剪裁的宽度和高度可根据图片的实际绘制区域而定。

语法
Luacopy 复制
GUI:ImageSetDrawRectBound(
    _Handle,
    _Active,
    _Width,
    _Height
)
参数
_Handle

long

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Active

bool

 
是否使用自定义的裁剪宽高替代原始的控件宽高来计算绘制区域

true是

false否

_Width

int

 
自定义的图片裁剪宽度

_Height

int

 
自定义的图片裁剪高度

note_icon 备注
当参数_Active设置为false时，程序会忽略参数_Width和参数_Height的值，但这两个参数的值不能为空。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
local _GUIHandle = GUI:ImageCreate(_Parent,"P1",1904000003,100,0)
if _GUIHandle ~= 0 then
    GUI:ImageSetDrawRect(_GUIHandle,0,1,0.6,1) --设置图片控件绘制区域
end

local _GUIHandle = GUI:ImageCreate(_Parent,"P2",1904000003,100,200)
if _GUIHandle ~= 0 then
    GUI:ImageSetDrawRect(_GUIHandle,0,1,0.6,1) --设置图片控件绘制区域
    GUI:ImageSetDrawRectBound(_GUIHandle,true,210,150) --设置使用自定义的裁剪宽高来计算绘制区域
end

--原图片资源如下图所示。

ImageSetDrawRectBound_2.png

--此示例代码运行成功如下图所示（上图使用原始的控件宽高来计算绘制区域，下图使用自定义的裁剪宽高来计算绘制区域）。

--上图绘制了图片控件下面40%的部分，下图绘制了图片控件中图片实际绘制区域的下面40%的部分。

ImageSetDrawRectBound.png
<上一篇:设置图片平铺显示下一篇:设置图片控件绘制区域>
ImageSetDrawRect
设置图片控件绘制区域

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置图片控件的绘制区域。

通过设置横、纵方向的显示范围，控制图片的显示区域。

note_icon 备注
此接口针对动画图片无效果。

如有以下情况之一，则此接口无任何效果，图片将全部显示。

请使用接口GUI:ImageSetClipRect达到相同的效果。

接口GUI:ImageSetDrawCenter中_DrawCenter设置为true，即设置了中心点绘制。

接口GUI:ImageSetFixedDrawCenter中_DrawCenter设置为true，即设置了中心点绘制。

接口GUI:ImageSetCenter中_AnchorEnable设置为1，即更改了图片控件的锚点位置。

手游中，若指定图片控件使用了属性image_fitsize_draw_scale_and_rect，则接口GUI:ImageSetFitSize、接口Lua_ImageSetFitSize以及封装接口ImageSetFitSize可以与此接口同时使用。

反之，此接口将不会生效。

语法
Luacopy 复制
GUI:ImageSetDrawRect(
    _HandleID,
    _StartX,
    _EndX,
    _StartY,
    _EndY
)   
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_StartX

float

 
有效绘制区域起始的横轴位置比例，为0到1之间的浮点数。

_EndX

float

 
有效绘制区域结束的横轴位置比例，为0到1之间的浮点数。

_StartY

float

 
有效绘制区域起始的纵轴位置比例，为0到1之间的浮点数。

_EndY

float

 
有效绘制区域结束的纵轴位置比例，为0到1之间的浮点数。

note_icon 备注
0最小的起始位置比例。

1最大的结束位置比例。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetDrawRect(_GUIHandle,0,0.5,0,0.5) --设置图片显示为四分之一
end

--图片区域显示效果如下。

图片显示区域
<上一篇:设置图片的绘制区域边界下一篇:设置图片控件是否自动缩放>
ImageSetFitSize
设置图片控件是否自动缩放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
图片控件相当于图片的容器，此函数设置图片资源是否根据容器的大小（图片控件的大小）自适应缩放。

note_icon 备注
2D手游：

当指定图片控件使用了属性image_fitsize_draw_scale_and_rect时，此接口可与接口GUI:ImageSetDrawRect以及设置图片缩放的接口同时使用。

反之，则接口GUI:ImageSetDrawRect以及设置图片缩放的接口不会生效。

3D手游：

当指定图片控件使用了属性image_fitsize_draw_scale_and_rect时，此接口可与接口GUI:ImageSetDrawRect同时使用。

反之，则接口GUI:ImageSetDrawRect不会生效。

此接口与设置图片缩放的接口同时使用时，设置图片缩放的接口不会生效。

其中，设置图片缩放的接口包括：GUI:ImageSetTransfrom和GUI:ImageSetTransfromplus。

语法
Luacopy 复制
GUI:ImageSetFitSize(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
是否自动缩放

true图片自适应大小

false图片保持原始大小

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 4000300000, 150, 320)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,100, 20) --设置图品控件的大小为100*20
    GUI:ImageSetFitSize(_GUIHandle, false) --设置图片资源不根据图片控件的大小进行缩放
end

local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg1", 4000300000, 150, 370)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,100, 20) --设置图品控件的大小为100*20
    GUI:ImageSetFitSize(_GUIHandle, true) --设置图片资源根据图片控件的大小进行缩放
end

--此示例代码运行成功如下图所示。

ImageSetFitSize.png
<上一篇:设置图片控件绘制区域下一篇:设置图片控件是否以中心点绘制（修正）>
ImageSetFixedDrawCenter
设置图片控件是否以中心点绘制（修正）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定图片控件是否从控件的中心点绘制。

默认状态下，是从图片控件左上角顶点开始绘制。

语法
Luacopy 复制
GUI:ImageSetFixedDrawCenter(
    _HandleID,
    _DrawCenter
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_DrawCenter

bool

 
true中心点绘制

false默认方式绘制

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage", 1853710066, 300, 300) --创建图片控件
if _GUIHandle ~= 0 then
    GUI:ImageSetFixedDrawCenter(_GUIHandle, true) --设置图片以控件中心点绘制
end

--示例代码创建的图片控件效果如下。两条黄色直线相交点即坐标（300,300）作为了控件的中心点，开始绘制。

ImageSetFixedDrawCenter

--默认方式下，坐标（300,300）作为图片控件左上方顶点开始绘制。

ImageSetFixedDrawCenter-F
<上一篇:设置图片控件是否自动缩放下一篇:设置图片是否镜像翻转>
ImageSetFlip
设置图片是否镜像翻转

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置图片控件中的图片是否镜像翻转。

note_icon 备注
端游使用此接口可能会出现以下两种情况：

1.如果图片资源的实际描绘区域大于图像的视觉大小，翻转后的图片可能会出现部分偏移或部分被裁剪的情况。

2.序列帧图像进行翻转后可能会出现抖动现象，其原因是序列帧之间的实际描绘区域不同。

若出现上述两种情况，建议尝试：

先使用接口GUI:ImageSetDrawCenter设置图片以中心点绘制

或使用接口GUI:ImageSetTransfrom来进行翻转

语法
Luacopy 复制
GUI:ImageSetFlip(
    _HandleID,  
    _FlipX,     
    _FlipY  
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_FlipX

bool

 
水平翻转

_FlipY

bool

 
垂直翻转

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
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1806600013,600,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetFlip(_GUIHandle, false, false)
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage1",1806600013,640,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetFlip(_GUIHandle, true, false)  --设置图片水平翻转
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage2",1806600013,600,240)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetFlip(_GUIHandle, false, true)  --设置图片垂直翻转
end

--此示例代码运行成功如下图所示。

ImageSetFlip.png
<上一篇:设置图片控件是否以中心点绘制（修正）下一篇:设置图片控件是否灰度显示>
ImageSetGray
设置图片控件是否灰度显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定图片控件是否灰度显示。

语法
Luacopy 复制
GUI:ImageSetGray(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
是否灰度显示

true灰度显示

false非灰度显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",4000300000,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetGray(_GUIHandle,true) --设置图片为灰度显示
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage1",4000300000,110,250)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetGray(_GUIHandle,false) --设置图片为非灰度显示
end

--此示例代码运行成功如下图所示。

Lua_ImageSetGray.png
<上一篇:设置图片是否镜像翻转下一篇:设置图片控件的动画播放>
ImageSetImageAnim
设置图片控件的动画播放

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2022-05-27 00:00:00
此函数设置指定图片控件的动画播放。

语法
Luacopy 复制
GUI:ImageSetImageAnim(
    _HandleID,
    _Speed,
    _AnimType
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_Speed

int

 
动画每帧的时间间隔，单位为毫秒（ms）。

_AnimType

int

 
动画类型

1循环播放动画

2动画播放完毕，停留在第一帧

3动画播放完毕，停留在最后一帧

4如在函数ImageSetAnimate中定义了动画循环次数，则播放指定次数的动画。播放完毕后，按_AnimCallBackFunc参数中定义的动作执行。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetImageAnim(_GUIHandle, 100, 1) --设置循环播放动画
end
<上一篇:设置图片控件是否灰度显示下一篇:设置图片控件旋转动画>
ImageSetImageRoation
设置图片控件旋转动画

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置图片旋转动画。

语法
Luacopy 复制
GUI:ImageSetImageRoation(
    _HandleID,
    _Roation,
    _Count,
    _Time,
    _CallBack
)
参数
_HandleID

number

 
窗口句柄

点击窗口句柄了解更多信息。

_Roation

number

 
旋转角度，单位为角度（degree）。

_Count

number

 
旋转圈数

_Time

number

 
旋转时间，单位为毫秒。

_CallBack

string

 
lua回调函数名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_GUIHandle = GUI:ImageCreate(_Parent, "YbIcon", 1871000019, 457, 11)
GUI:ImageSetImageRoation(_GUIHandle,360,1,1000,"CallBack()")

function CallBack()
    --回调函数
end	

--此示例代码运行成功如下图所示。

ImageSetImageRoation
<上一篇:设置图片控件的动画播放下一篇:设置图片控件的旋转动画>
ImageSetImageRoteAnim
设置图片控件的旋转动画

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数设置图片控件的旋转动画。

语法
Luacopy 复制
GUI:ImageSetImageRoteAnim(
    _HandleID,  
    _RotaData,  
    _Speed,  
    _AnimType  
 )  
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_RotaData

int

 
旋转角度，单位为角度（degree）

_Speed

int

 
旋转速度

_AnimType

int

 
动画播放至设置次数后的动作。

1循环旋转

2旋转一圈

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    GUI:ImageSetImageRoteAnim(_GUIHandle, 45, 100, 1)--设置图片控件的旋转动画
end
<上一篇:设置图片控件旋转动画下一篇:设置图片控件的遮罩图片>
ImageSetMaskTextureID
设置图片控件的遮罩图片

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置指定图片控件的遮罩图片资源ID。

语法
Luacopy 复制
GUI:ImageSetMaskTextureID(
    _HandleID,
    _ImageID
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

_ImageID

int

 
遮罩图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置图片控件的旋转动画下一篇:设置图片控件自定义参数的值>
ImageSetParam
设置图片控件自定义参数的值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置图片控件的自定义参数的值。

note_icon 备注
此接口目前只在RDWnd2DGuideImageCL控件中有效果（其他控件也可使用但无实际效果），可设置参数的值为0~4（各个数值的说明如下所示）。

0普通绘制

1平铺绘制

2左右平铺绘制

3上下平铺绘制

4九宫格绘制

语法
Luacopy 复制
GUI:ImageSetParam(
    _HandleID,
    _Param
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Param

int

 
自定义参数的值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
Temporary = _Parent
if Temporary ~= 0 then
    --创建RDWnd2DGuideImageCL控件，字符串中的参数依次为控件类型、控件名称、控件的图片资源ID、控件位置的横坐标、控件位置的纵坐标、控件的宽度、控件的高度以及控件的颜色
    UI:Lua_CreateWndByString("RDWnd2DGuideImageCL,TestImage,1900010085,200,200,100,100,4290950816")
    GUI:ImageSetParam(Temporary,1) --设置此控件的自定义参数的值为1，即平铺绘制
end

--原图片

ImageSetDrawFlat_2.png

--平铺后的效果如下图所示

ImageSetParam_2.png
<上一篇:设置图片控件的遮罩图片下一篇:设置图片的渲染状态>
ImageSetRenderState
设置图片的渲染状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-04-15 00:00:00
此函数设置图片的渲染状态。

参考 ImageGetRenderState

note_icon 备注
此接口的作用与接口CL:ImageSetBlendType的作用类似，但此接口的优先级更高，即同时设置这两个接口时，生效的是此接口。

语法
Luacopy 复制
GUI:ImageSetRenderState(
    _HandleID,
    _RenderState
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_RenderState

int

 
渲染状态

源图片是指指定图片控件中的图片

目标图片是指当前的颜色缓冲区（即绘制区域的背景图片）

1表示将源图片的颜色和目标图片的颜色进行混合（忽略源图的透明度）

2表示将源图片的颜色和目标图片的颜色进行混合（不忽略源图的透明度）

3表示目标图片的颜色值按照源图片的颜色值取反后，将源图片的颜色和目标图片的颜色进行混合

note_icon 备注
1.目标图片的颜色值按照源图片的颜色值取反表示目标图片的颜色值=目标图片的颜色值*（1-源图片的颜色值）。

2.上述颜色均按照1：1的比例进行混合。

note_icon 备注
颜色计算公式：最终的颜色值 = （源图片颜色值 X 渲染因子1） + （目标背景颜色 X 渲染因子2），其中“X”表示向量的点积运算。

计算中用到的参数含义（计算中涉及到的图片的颜色值和Alpha值的范围均为0-1）：

Rsrc表示源图片颜色的红色值，Gsrc表示源图片颜色的绿色值，Bsrc表示源图片颜色的蓝色值，Asrc表示源图片的Alpha值；

Rdst表示目标图片颜色的红色值，Gdst表示目标图片颜色的绿色值，Bdst表示目标图片颜色的蓝色值，Adst表示目标图片的Alpha值。

当参数_RenderState设置为1时，渲染因子1和渲染因子2的值均为1，此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 * 1）=（Rsrc + Rdst, Gsrc + Gdst , Bsrc + Bdst, Asrc + Adst）

当参数_RenderState设置为2时，渲染因子1的值为源图片的Alpha值，渲染因子2的值为1，此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 源图片的Alpha值） + （目标背景颜色 * 1）=（Rsrc * Asrc + Rdst, Gsrc * Asrc + Gdst , Bsrc * Asrc + Bdst, Asrc * Asrc + Adst）

当参数_RenderState设置为3时，渲染因子1的值为1，渲染因子2的值为（1-源图片的颜色值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 *（1-源图片的颜色值））=（Rsrc + Rdst（1-Rsrc）, Gsrc + Gdst（1-Gsrc） , Bsrc + Bdst（1-Bsrc）, Asrc + Adst（1-Asrc））

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--创建一个图片控件Model1用作图片控件Model2的背景图片控件
_Model1 = GUI:ImageCreate(_Parent, "Model1", 1900000003, 20, 100) 
_Model2 = GUI:ImageCreate(_Parent, "Model2", 3000100409, -60, 100)

if _Model2 ~= 0 then
    GUI:ImageSetRenderState(_Model2, 1) --设置图片控件Model2中的图片的渲染状态为1
    local data1 = GUI:ImageGetRenderState(_Model2) --获取图片控件Model2中的图片的渲染状态
    dbg("图片的渲染状态为："..data1) 
end

--创建一个图片控件Model3用作图片控件Model4的背景图片控件
_Model3 = GUI:ImageCreate(_Parent, "Model3", 1900000003, 400, 100)
_Model4 = GUI:ImageCreate(_Parent, "Model4", 3000100409, 330, 100)

--左图为进行渲染后的效果（对应图片控件Model1和Model2），右图为未进行渲染的效果（对应图片控件Model3和Model4），同时控制台会输出如下内容。

ImageSetRenderState_5.png

ImageGetRenderState.png
<上一篇:设置图片控件自定义参数的值下一篇:设置图片缩放和旋转的先后顺序>
ImageSetTransfromFirstScale
设置图片缩放和旋转的先后顺序

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-08-02 00:00:00
此函数作用为调整使用接口设置图片缩放旋转时缩放和旋转的先后顺序。

此接口仅对使用接口GUI:ImageSetTransfrom和GUI:ImageSetTransfromplus设置缩放旋转的图片控件生效。

语法
Luacopy 复制
GUI:ImageSetTransfromFirstScale(
    _HandleID,
    _flag
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_flag

bool

 
true先缩放后旋转

false先旋转后缩放

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_GUIHandle = GUI:ImageCreate(_Parent,"Title",1800000315,500,60) --创建一个图片控件
if _GUIHandle ~= 0 then 
    GUI:ImageSetTransfromFirstScale(_GUIHandle,false) --设置图片控件先旋转后缩放
    GUI:ImageSetTransfrom(_GUIHandle,20000,10000,45) --设置图片控件的缩放和旋转
end

_GUIHandle = GUI:ImageCreate(_Parent,"Title1",1800000315,500,260) --创建一个图片控件
if _GUIHandle ~= 0 then 
    GUI:ImageSetTransfromFirstScale(_GUIHandle,true) --设置图片控件先缩放后旋转
    GUI:ImageSetTransfrom(_GUIHandle,20000,10000,45) --设置图片控件的缩放和旋转
end

--此示例代码运行成功如下图所示。

ImageSetTransfromFirstScale.png
<上一篇:设置图片的渲染状态下一篇:设置图片控件的缩放和旋转>
ImageSetTransfrom
设置图片控件的缩放和旋转

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-08 00:00:00
此函数设置图片控件的缩放和旋转。

通过设置参数，达到放大、缩小或旋转图片的效果。

note_icon 备注
2D手游

若指定图片控件使用了属性image_fitsize_draw_scale_and_rect，则设置图片自动缩放的接口可与此接口同时使用。

反之，则此接口将不会生效。

3D手游

此接口与设置图片自动缩放的接口同时使用时，此接口将不会生效。

其中，设置图片自动缩放的接口包括：GUI:ImageSetFitSize、Lua_ImageSetFitSize和ImageSetFitSize。

使用此接口设置旋转和缩放后，图片控件的可选中范围仍为设置前的范围，建议使用升级后的接口GUI:ImageSetTransfromplus。

若要调整图片缩放旋转时缩放和旋转的先后顺序，可使用接口GUI:ImageSetTransfromFirstScale进行设置。

语法
Luacopy 复制
GUI:ImageSetTransfrom(
    _HandleID,
    _ScaleX,
    _ScaleY,
    _Roation
) 
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_ScaleX

int

 
宽度缩放比例

将要设置的倍数乘以10000即为设置值

负值表示进行图片镜像操作

例如：

8000图片宽度缩小至原始宽度的0.8倍大小

10000图片宽度为原始宽度

14000图片宽度放大0.4倍，为原始宽度的1.4倍大小

-20000图片做镜像处理，同时图片宽度放大1倍为原始宽度的2倍大小

_ScaleY

int

 
高度缩放比例

将要设置的倍数乘以10000即为设置值

规则和_ScaleX相同，不再赘述。

caution_icon 注意
宽度缩放和高度缩放正负（即是否镜像操作）须一致，以避免出现显示异常的问题。

_Roation

int

 
旋转的角度，单位为degree(°)

设置正数代表顺时针旋转

设置负数代表逆时针旋转

caution_icon 注意
手游中，图片先缩放再旋转；端游中，图片先旋转再缩放。

note_icon 备注
图片以图片控件的锚点（默认为控件左上角）为圆心进行旋转。

关于如何更改图片控件的锚点位置，请参见ImageSetCenter函数。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",4000300000,110,200) --新建一个图片控件
if _GUIHandle ~= 0 then
    GUI:ImageSetTransfrom(_GUIHandle,10000,10000,0) --设置图片不旋转且大小保持不变
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage1",4000300000,110,250) --新建一个图片控件
if _GUIHandle ~= 0 then
    GUI:ImageSetTransfrom(_GUIHandle,10000,10000,45) --设置图片顺时针旋转45度且大小保持不变
end

--此示例代码运行成功如下图所示（第一个图片控件未旋转，第二个图片控件顺时针旋转45度）。

ImageSetTransfrom_2.png
<上一篇:设置图片缩放和旋转的先后顺序下一篇:设置图片控件的旋转和缩放（扩展）>
ImageSetTransfromplus
设置图片控件的旋转和缩放（扩展）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-07-08 00:00:00
此函数设置图片控件的缩放和旋转。

通过设置参数，达到放大、缩小或旋转图片的效果。

note_icon 备注
2D手游

若指定图片控件使用了属性image_fitsize_draw_scale_and_rect，则设置图片自动缩放的接口可与此接口同时使用。

反之，则此接口将不会生效。

3D手游

此接口与设置图片自动缩放的接口同时使用时，此接口将不会生效。

其中，设置图片自动缩放的接口包括：GUI:ImageSetFitSize、Lua_ImageSetFitSize和ImageSetFitSize。

使用此接口设置旋转和缩放后，图片控件的可选中范围会随之改变。修复了原有接口GUI:ImageSetTransfrom设置旋转和缩放后，图片控件的可选中范围仍为设置前的范围的问题。

若要调整图片缩放旋转时缩放和旋转的先后顺序，可使用接口GUI:ImageSetTransfromFirstScale进行设置。

语法
Luacopy 复制
GUI:ImageSetTransfromplus(
    _HandleID,
    _ScaleX,
    _ScaleY,
    _Roation
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_ScaleX

int

 
宽度缩放比例

将要设置的倍数乘以10000即为设置值

负值表示进行图片镜像操作

例如：

8000图片宽度缩小至原始宽度的0.8倍大小

10000图片宽度为原始宽度

14000图片宽度放大0.4倍，为原始宽度的1.4倍大小

-20000图片做镜像处理，同时图片宽度放大1倍为原始宽度的2倍大小

_ScaleY

int

 
高度缩放比例

将要设置的倍数乘以10000即为设置值

规则和_ScaleX相同，不再赘述。

caution_icon 注意
宽度缩放和高度缩放正负（即是否镜像操作）须一致，以避免出现显示异常的问题。

_Roation

int

 
旋转的角度，单位为degree(°)

设置正数代表顺时针旋转

设置负数代表逆时针旋转

caution_icon 注意
手游中，图片先缩放再旋转；端游中，图片先旋转再缩放。

note_icon 备注
图片以图片控件的锚点（默认为控件左上角）为圆心进行旋转。

关于如何更改图片控件的锚点位置，请参见ImageSetCenter函数。

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
_GUIHandle = GUI:ImageCreate(_Parent, "example", 1900000003, 200, 200) --新建一个窗口
if _GUIHandle ~= 0 then
    GUI:ImageSetTransfromplus(_GUIHandle,5000,5000,0) --设置图片的旋转和缩放
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "Close_Window") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

function Close_Window(_GUIHandle)
    GUI:WndClose(_GUIHandle) --关闭窗口
end
--此示例代码创建一个图片控件，图片控件的可选中范围改变，当鼠标左键点击图片控件时，图片控件关闭。
<上一篇:设置图片控件的缩放和旋转下一篇:设置图片遮罩百分比>
SectorSetPercent
设置图片遮罩百分比

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置图片遮罩百分比。

如技能CD时间倒计时的效果应用了图片遮罩。

语法
Luacopy 复制
GUI:SectorSetPercent(
    _HandleID,
    _percent
)
参数
_HandleID

number

 
窗口句柄

点击窗口句柄了解更多信息。

_percent

number

 
遮罩百分比，范围0~100。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] 
	       
GUI:ImageCreate(_Parent,"image1",1873410016,-200,200)

local _Cover = GUI:ImageCreate(_Parent,"Cover",1873420041,-200,200) 
if _Cover ~= 0 then 
    GUI:WndSetEnableM(_Cover,false)
    GUI:ImageSetAlpha(_Cover,255 * 0.6)
    GUI:SectorSetPercent(_Cover, 50)
end

--此示例代码运行成功如下图所示。

SectorSetPercent
<上一篇:设置图片控件的旋转和缩放（扩展）
ImageGetAlpha
获取图片控件的透明度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定图片控件的透明度属性。

语法
Luacopy 复制
GUI:ImageGetAlpha(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

返回值
unsigned char

 
获取成功则返回指定图片控件的透明度属性

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1901800000,110,200) --新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    ImageSetAlpha(_GUIHandle,nil,155) --设置图片控件透明度为155
    dbg("图片控件的透明度为：".. GUI:ImageGetAlpha(_GUIHandle))--获取图片控件的透明度属性
end

--此示例代码运行成功如下图所示。

ImageGetAlpha.png
下一篇:获取指定图片控件的混色类型>
ImageGetBlendType
获取指定图片控件的混色类型

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-04-15 00:00:00
此函数获取指定图片控件的混色类型。

参考 ImageSetBlendType

语法
Luacopy 复制
GUI:ImageGetBlendType(
    handle
)
参数
handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
混色类型值（1-6）

具体可参考接口GUI:ImageSetBlendType的参数blendtype的说明。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_Handle = GUI:ImageCreate(_Parent, "Modelmagic", 3005400000, 300, 450)
if 0 ~= _Handle then
    GUI:WndSetCanRevMsg(_Handle, false)
end  

local addx = 200
for i = 1 ,6 do 
    _Handle = GUI:ImageCreate(_Parent, "Modelmagic"..i, 3005400000, addx*i-350, 150)
    if 0 ~= _Handle then
        GUI:WndSetCanRevMsg(_Handle, false)
        GUI:ImageSetBlendType(_Handle, i)
        dbg("图片控件"..i.."的混色类型："..GUI:ImageGetBlendType(_Handle))
    end
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

--第一排的图片中，从左往右图片控件的混色类型依次为1、2、3、4、5、6；第二排的图片为该图片未进行混色的效果。

ImageSetBlendType.png

ImageGetBlendType.png
<上一篇:获取图片控件的透明度下一篇:获取图片控件检测点击区域类型>
ImageGetCheckPoint
获取图片控件检测点击区域类型

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取图片控件的检测点击区域类型。

语法
Luacopy 复制
GUI:ImageGetCheckPoint(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
返回检测点击的类型：

0不检测

1检测点击位置是否在图片上（忽略透明度）

2检测点击位置是否在控件范围内

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    local _ImagePara = GUI:ImageGetCheckPoint(_GUIHandle) --获取检测点击区域的类型，结果是1
end
<上一篇:获取指定图片控件的混色类型下一篇:获取图片控件颜色>
ImageGetColor
获取图片控件颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定图片控件的颜色属性。

语法
Luacopy 复制
GUI:ImageGetColor(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
获取成功则返回指定图片控件的颜色属性

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_GREENG为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 4000300000, 150, 320)
if _GUIHandle ~= 0 then
    ImageSetColor(_GUIHandle,nil,COLOR_GREENG) --将图片控件的颜色设置为青色
    dbg("图片的颜色属性："..GUI:ImageGetColor(_GUIHandle)) --获取图片控件的颜色属性
end

--此示例代码运行成功如下图所示。

ImageGetColor.png
<上一篇:获取图片控件检测点击区域类型下一篇:获取图片控件是否中心绘制>
ImageGetDrawCenter
获取图片控件是否中心绘制

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取图片控件是否中心绘制的属性。

语法
Luacopy 复制
GUI:ImageGetDrawCenter(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
true中心绘制

false默认方式绘制

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
   local _ImageDraw = GUI:ImageGetDrawCenter(_GUIHandle) --获取图片控件的绘制方式
end
<上一篇:获取图片控件颜色下一篇:获取图片控件是否自动缩放>
ImageGetFitSize
获取图片控件是否自动缩放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定图片控件中的图片是否根据控件大小进行自动缩放的属性。

语法
Luacopy 复制
GUI:ImageGetFitSize(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true图片根据控件大小进行缩放

false图片保持原始大小

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
   local _ImageFitProp = GUI:ImageGetFitSize(_GUIHandle) --获取属性
end
<上一篇:获取图片控件是否中心绘制下一篇:获取图片控件是否灰度显示>
ImageGetGray
获取图片控件是否灰度显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定图片控件是否灰度显示的属性。

语法
Luacopy 复制
GUI:ImageGetGray(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true灰度显示

false非灰度显示

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
   local _ImageProp = GUI:ImageGetGray(_GUIHandle) --获取图片控件是否灰度显示的属性
end
<上一篇:获取图片控件是否自动缩放下一篇:获取图片控件的图片资源ID>
ImageGetImageID
获取图片控件的图片资源ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-22 00:00:00
此函数获取指定图片控件的图片资源ID。

在2D客户端中，若指定的图片控件为九宫格拼接图片，则会获取九宫格拼接图片中第一张图片的资源ID。

语法
Luacopy 复制
GUI:ImageGetImageID(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
获取成功则返回指定图片控件的图片资源ID

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    dbg("图片资源的ID："..GUI:ImageGetImageID(_GUIHandle)) --获取图片资源的ID
end

--此示例代码运行成功如下图所示。

Lua_ImageGetImageID.png
<上一篇:获取图片控件是否灰度显示下一篇:获取图片控件自定义参数>
ImageGetParam
获取图片控件自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取指定图片控件的自定义参数。

语法
Luacopy 复制
GUI:ImageGetParam(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

int

 
获取成功，则返回指定图片控件的自定义参数。

获取失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄\
if _GUIHandle ~= 0 then
    GUI:ImageSetParam(_GUIHandle, 5) --设置一个数值为5的自定义参数
    local _ImagePara = GUI:ImageGetParam(_GUIHandle) --获取自定义参数数值，结果是5
end
<上一篇:获取图片控件的图片资源ID下一篇:获取图片的渲染状态>
ImageGetRenderState
获取图片的渲染状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取图片的渲染状态。

参考 ImageSetRenderState

语法
Luacopy 复制
GUI:ImageGetRenderState(
    _HandleID
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
获取成功则返回图片的渲染状态

note_icon 备注
源图片是指指定图片控件中的图片

目标图片是指当前的颜色缓冲区（即绘制区域的背景图片）

1表示将源图片的颜色和目标图片的颜色进行混合（忽略源图的透明度）

2表示将源图片的颜色和目标图片的颜色进行混合（不忽略源图的透明度）

3表示目标图片的颜色值按照源图片的颜色值取反后，将源图片的颜色和目标图片的颜色进行混合

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
--创建一个图片控件Model1用作图片控件Model2的背景图片控件
_Model1 = GUI:ImageCreate(_Parent, "Model1", 1900000003, 20, 100) 
_Model2 = GUI:ImageCreate(_Parent, "Model2", 3000100409, -60, 100)

if _Model2 ~= 0 then
    GUI:ImageSetRenderState(_Model2, 1) --设置图片控件Model2中的图片的渲染状态为1
    local data1 = GUI:ImageGetRenderState(_Model2) --获取图片控件Model2中的图片的渲染状态
    dbg("图片的渲染状态为："..data1) 
end

--创建一个图片控件Model3用作图片控件Model4的背景图片控件
_Model3 = GUI:ImageCreate(_Parent, "Model3", 1900000003, 400, 100)
_Model4 = GUI:ImageCreate(_Parent, "Model4", 3000100409, 330, 100)

--左图为进行渲染后的效果（对应图片控件Model1和Model2），右图为未进行渲染的效果（对应图片控件Model3和Model4），同时控制台会输出如下内容。

ImageSetRenderState_5.png

ImageGetRenderState.png
<上一篇:获取图片控件自定义参数
ImageGenerateQrcode
在图片控件中生成并显示二维码

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-12-31 00:00:00
此函数在图片控件中生成并显示二维码。

默认生成的二维码的大小为图片控件的大小。

note_icon 备注
图片控件相关的其他接口对此接口生成的二维码无效。

语法
Luacopy 复制
GUI:ImageGenerateQrcode(
    _HandleID,
    data
)
参数
_HandleID

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

data

string

 
用于生成二维码的数据

返回值
bool

 
true生成成功

false生成失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ImageCreate(_Parent, "test_Qrcode", 0, 200,200)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle, 300, 300) --设置窗口大小为300*300
    local data = "1234567890"
    GUI:ImageGenerateQrcode(_GUIHandle, data) --在图片控件中生成并显示二维码
end

--此示例代码运行成功如下图所示。

ImageGenerateQrcode.png
ImageGetAlpha
获取图片控件的透明度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数获取指定图片控件的透明度属性。

语法
Luacopy 复制
ImageGetAlpha(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

返回值
unsigned char

 
获取成功则返回指定图片控件的透明度属性

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1901800000,110,200) --新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    ImageSetAlpha(_GUIHandle,nil,155) --设置图片控件透明度为155
    dbg("图片控件的透明度为：".. ImageGetAlpha(_GUIHandle,nil))--获取图片控件的透明度属性
end

--此示例代码运行成功如下图所示。

ImageGetAlpha.png
下一篇:获取图片控件颜色>
ImageGetColor
获取图片控件颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数获取指定图片控件的颜色属性。

语法
Luacopy 复制
ImageGetColor(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

返回值
int

 
获取成功则返回指定图片控件的颜色属性

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_GREENG为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 4000300000, 150, 320)
if _GUIHandle ~= 0 then
    ImageSetColor(_GUIHandle,nil,COLOR_GREENG) --将图片控件的颜色设置为青色
    dbg("图片的颜色属性："..ImageGetColor(_GUIHandle,nil)) --获取图片控件的颜色属性
end

--此示例代码运行成功如下图所示。

ImageGetColor.png
<上一篇:获取图片控件的透明度下一篇:获取图片控件的图片资源ID>
ImageGetImageID
获取图片控件的图片资源ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数获取指定图片控件的图片资源ID。

语法
Luacopy 复制
ImageGetImageID(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

返回值
int

 
获取成功则返回指定图片控件的图片资源ID

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1900000003,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    dbg("图片资源的ID："..ImageGetImageID(_GUIHandle,nil)) --获取图片资源的ID
end

--此示例代码运行成功如下图所示。

Lua_ImageGetImageID.png
<上一篇:获取图片控件颜色下一篇:设置图片控件的透明度>
ImageSetAlpha
设置图片控件的透明度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置指定图片控件的透明度属性。

语法
Luacopy 复制
ImageSetAlpha(
    _Handle,
    _Info,
    _Alpha
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

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
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1901800000,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    ImageSetAlpha(_GUIHandle,nil,255) --设置图片控件透明度为255，即不透明
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage1",1901800000,110,250)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    ImageSetAlpha(_GUIHandle,nil,155) --设置图片控件透明度为155
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage2",1901800000,110,300)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    ImageSetAlpha(_GUIHandle,nil,55) --设置图片控件透明度为55
end

--此示例代码运行成功如下图所示。

ImageSetAlpha.png
<上一篇:获取图片控件的图片资源ID下一篇:设置图片控件是否播放动画>
ImageSetAnimateEnable
设置图片控件是否播放动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置指定的图片控件是否播放动画。

语法
Luacopy 复制
ImageSetAnimateEnable(
    _Handle,
    _Info,
    _Enable,
    _Speed
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_Enable

bool

 
是否播放动画

true播放动画

false不播放动画

_Speed

unsigned int

 
动画每帧的时间间隔

单位为毫秒（ms）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3006400000, 150, 150)
if _GUIHandle ~= 0 then
    ImageSetAnimateEnable(_GUIHandle,nil,true, 200) --设置播放动画且每帧动画的间隔为200ms 
end

local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg1", 3006400000, 150,275)
if _GUIHandle ~= 0 then
    ImageSetAnimateEnable(_GUIHandle,nil,true, 50) --设置播放动画且每帧动画的间隔为50ms 
end

--此示例代码运行成功如下图所示（上图设置每帧动画的时间间隔为200ms，下图设置每帧动画的时间间隔为50ms）。

ImageSetAnimateEnable.gif
<上一篇:设置图片控件的透明度下一篇:设置图片控件动画循环播放>
ImageSetAnimate
设置图片控件动画循环播放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置指定图片控件中动画循环播放的属性及播放完毕后的程序的处理方式。

语法
Luacopy 复制
ImageSetAnimate(
    _Handle,
    _Info,
    _Speed,
    _AnimCount,
    _AnimCallBackFunc
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_Speed

unsigned int

 
动画每帧的时间间隔

默认值为100，单位为毫秒（ms）

note_icon 备注
如图片ID在序列帧(游戏安装目录\Setting\AnimSetting.xml)中有定义，则此参数不起作用。

_AnimCount

int

 
动画循环播放的次数

0默认值（一直循环播放动画）

_AnimCallBackFunc

string

 
动画播放至指定次数后的动作

当此参数设置为空字符串（默认值）时，动画播放至指定次数后会自动销毁该控件。

当此参数设置为其他字符串时，动画播放至指定次数后对应函数会作为Lua脚本函数进行回调，由脚本接管处理。

note_icon 备注
在2D手游、3D手游和3D端游中，此参数输入的内容为字符串脚本名（即函数名后需要加上英文括号“()”），且动画播放至指定次数后会停在在第一帧。

在2D端游和H5中，此参数输入的内容为函数名，且动画播放至指定次数后不会停止播放。

当此参数设置为0时，会有以下两种情况：

在2D手游、3D手游、3D端游和H5中，动画播放至指定次数后会停在在第一帧。

在2D端游中，动画播放至指定次数后会停在最后一帧。

note_icon 备注
若参数_AnimCount设置为0，则此参数不起作用。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3030200000, 150, 320)
if _GUIHandle ~= 0 then
    ImageSetAnimate(_GUIHandle,nil,100, 5,"") --设置图片控件动画循环播放次数为5且动画播放达到指定次数后自动销毁控件
end

--此示例代码运行成功如下图所示，当动画播放5次后控件自动销毁。

ImageSetAnimate.gif
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3030200000, 150, 320)
if _GUIHandle ~= 0 then
    ImageSetAnimate(_GUIHandle,nil,100, 5,"0") --设置图片控件动画循环播放次数为5且动画播放达到指定次数后会停在最后一帧
end

--此示例代码运行成功如下图所示，当动画播放5次后会停在最后一帧（端游）。

ImageSetAnimate_2.gif
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 3030200000, 150, 320)
if _GUIHandle ~= 0 then
    ImageSetAnimate(_GUIHandle,nil,100, 5,"Click") --设置图片控件动画循环播放次数为5且动画播放达到指定次数后会执行对应函数
end

function Click()
    dbg("响应点击操作")
end

--此示例代码运行成功如下图所示，当动画播放5次后动画不会停止且控制台会输出“响应点击操作”的文字。

ImageSetAnimate_3.gif

ImageSetAnimate_4.png
<上一篇:设置图片控件是否播放动画下一篇:设置九宫格拼接图片>
ImageSetAroundImage
设置九宫格拼接图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置指定图片控件的九宫格拼接图片资源。

九宫格拼接图片是指通过指定的九个方位和图片资源来构成完整的图片控件。

例如：图1中的九张图片资源，可构成图2中的图片控件的外边框。

图 1 九张图片资源

set_around_image_resource
图 2 带有外边框的图片控件

set_around_image_result
语法
Luacopy 复制
ImageSetAroundImage(
    _Handle,
    _Info,
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
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_LeftUp

int

 
左上角的图片资源ID

_RightUp

int

 
右上角的图片资源ID

_LeftDown

int

 
左下角的图片资源ID

_RightDown

int

 
右下角的图片资源ID

_Mid

int

 
中间的图片资源ID

_Up

int

 
上方的图片资源ID

_Down

int

 
下方的图片资源ID

_Left

int

 
左侧的图片资源ID

_Right

int

 
右侧的图片资源ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 0, 150, 320)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,100, 100) --设置窗口大小为100*100
    ImageSetAroundImage(_GUIHandle,nil, 4000500400, 4000500402, 4000500406, 4000500408, 4000500404, 4000500401, 4000500407, 4000500403, 4000500405) --设置九宫格拼接图片
end

--此示例代码运行成功如下图所示。

ImageSetAroundImage.png
<上一篇:设置图片控件动画循环播放下一篇:设置图片控件检测点击区域类型>
ImageSetCheckPoint
设置图片控件检测点击区域类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置图片控件检测点击区域的类型。

note_icon 备注
手游调用此接口已无效果。

语法
Luacopy 复制
ImageSetCheckPoint(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_Flag

int

 
检测点击的类型

手游和端游：

0不检测

1（默认值）检测点击位置是否在图片上（忽略透明度）

2检测点击位置是否在控件范围内

H5：

1（默认值）检测点击位置是否在图片上（忽略透明度）

其他检测点击位置是否在控件范围内

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 4000800000, 100,100)
if _GUIHandle ~= 0 then
    GUI:WndSetCanRevMsg(_GUIHandle, true) --设置窗口响应操作
    GUI:WndSetEnableM(_GUIHandle, true) --设置窗口可用
    GUI:WndSetSizeM(_GUIHandle,300, 300) --设置窗口大小为300*300
    GUI:ImageSetFitSize(_GUIHandle, true) --设置图片控件自动缩放
    ImageSetCheckPoint(_GUIHandle,nil,1) --设置点击区域类型为1
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "Click") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

function Click()
    dbg("响应点击操作")
end

--当鼠标左键点击图片时，控制台会输出“响应点击操作”的文字。

ImageSetCheckPoint.png
<上一篇:设置九宫格拼接图片下一篇:设置图片控件颜色>
ImageSetColor
设置图片控件颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置指定图片控件的颜色属性。

语法
Luacopy 复制
ImageSetColor(
    _Handle,
    _Info,
    _ImageColor
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_ImageColor

unsigned int

 
指定图片控件的颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_GREENG为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",4000300000,110,200)
if _GUIHandle ~= 0 then
    ImageSetColor(_GUIHandle,nil,COLOR_GREENG) --设置图片控件颜色为青色
end

--此示例代码运行成功如下图所示。

ImageSetColor.png
<上一篇:设置图片控件检测点击区域类型下一篇:设置图片控件是否自动缩放>
ImageSetFitSize
设置图片控件是否自动缩放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
图片控件相当于图片的容器，此函数设置图片资源是否根据容器的大小（图片控件的大小）自适应缩放。

note_icon 备注
2D手游：

当指定图片控件使用了属性image_fitsize_draw_scale_and_rect时，此接口可与接口GUI:ImageSetDrawRect以及设置图片缩放的接口同时使用。

反之，则接口GUI:ImageSetDrawRect以及设置图片缩放的接口不会生效。

3D手游：

当指定图片控件使用了属性image_fitsize_draw_scale_and_rect时，此接口可与接口GUI:ImageSetDrawRect同时使用。

反之，则接口GUI:ImageSetDrawRect不会生效。

此接口与设置图片缩放的接口同时使用时，设置图片缩放的接口不会生效。

其中，设置图片缩放的接口包括：GUI:ImageSetTransfrom和GUI:ImageSetTransfromplus。

语法
Luacopy 复制
ImageSetFitSize(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_Flag

bool

 
是否自动缩放

true图片自适应大小

false图片保持原始大小

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 4000300000, 150, 320)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,100, 20) --设置图品控件的大小为100*20
    ImageSetFitSize(_GUIHandle,nil,false) --设置图片资源不根据图片控件的大小进行缩放
end

local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg1", 4000300000, 150, 370)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,100, 20) --设置图品控件的大小为100*20
    ImageSetFitSize(_GUIHandle,nil,true) --设置图片资源根据图片控件的大小进行缩放
end

--此示例代码运行成功如下图所示。

ImageSetFitSize.png
<上一篇:设置图片控件颜色下一篇:设置图片控件是否灰度显示>
ImageSetGray
设置图片控件是否灰度显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置指定图片控件是否灰度显示。

语法
Luacopy 复制
ImageSetGray(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_Flag

bool

 
是否灰度显示

true灰度显示

false非灰度显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",4000300000,110,200)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    ImageSetGray(_GUIHandle,nil,true) --设置图片为灰度显示
end

local _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage1",4000300000,110,250)--新建一个图片控件，获取控件句柄
if _GUIHandle ~= 0 then
    ImageSetGray(_GUIHandle,nil,false) --设置图片为非灰度显示
end

--此示例代码运行成功如下图所示。

Lua_ImageSetGray.png
<上一篇:设置图片控件是否自动缩放下一篇:设置图片控件的图片>
ImageSetImageID
设置图片控件的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置指定图片控件中显示的图片资源。

语法
Luacopy 复制
ImageSetImageID(
    _Handle,
    _Info,
    _ImageID
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_ImageID

unsigned int

 
图片资源的ID

返回值
bool

 
true执行成功

false执行失败(未找到对应的控件)

版本历史
v1.0

 
首次发布

示例代码  
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 0, 150, 320)
if _GUIHandle ~= 0 then
    ImageSetImageID(_GUIHandle,nil,4000300000) --设置指定图片控件中显示的图片资源
end

--此示例代码运行成功如下图所示。

ImageSetImageID.png
<上一篇:设置图片控件是否灰度显示下一篇:设置图片控件自定义参数的值>
ImageSetParam
设置图片控件自定义参数的值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数设置图片控件的自定义参数的值。

note_icon 备注
此接口目前只在RDWnd2DGuideImageCL控件中有效果（其他控件也可使用但无实际效果），可设置参数的值为0~4（各个数值的说明如下所示）。

0普通绘制

1平铺绘制

2左右平铺绘制

3上下平铺绘制

4九宫格绘制

语法
Luacopy 复制
ImageSetParam(
    _Handle,
    _Info,
    _Param
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_Param

int

 
自定义参数的值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
Temporary = _Parent
if Temporary ~= 0 then
    --创建RDWnd2DGuideImageCL控件，字符串中的参数依次为控件类型、控件名称、控件的图片资源ID、控件位置的横坐标、控件位置的纵坐标、控件的宽度、控件的高度以及控件的颜色
    UI:Lua_CreateWndByString("RDWnd2DGuideImageCL,TestImage,1900010085,200,200,100,100,4290950816")
    ImageSetParam(Temporary,"",1) --设置此控件的自定义参数的值为1，即平铺绘制
end

--原图片

ImageSetDrawFlat_2.png

--平铺后的效果如下图所示

ImageSetParam_2.png
<上一篇:设置图片控件的图片下一篇:一键设置图片控件属性>
ImageSetProp
一键设置图片控件属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-24 00:00:00
此函数一键设置图片控件的属性。

语法
Luacopy 复制
ImageSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _ImageId,
    _ImageColor,
    _Alpha,
    _FitSize,
    _CheckPoint
)
参数
_Handle

int

 
指定图片控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定图片控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
是否可用

true图片控件可用

false图片控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_ImageId

int

 
图片资源的ID

_ImageColor

int

 
指定图片控件的颜色

具体请参见颜色字符串页面

_Alpha

unsigned char

 
透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

_FitSize

bool

 
是否自动缩放

true图片自适应大小

false图片保持原始大小

_CheckPoint

int

 
检测点击的类型

手游和端游：

0不检测

1（默认值）检测点击位置是否在图片上（忽略透明度）

2检测点击位置是否在控件范围内

H5：

1（默认值）检测点击位置是否在图片上（忽略透明度）

其他检测点击位置是否在控件范围内

note_icon 备注
在手游中，此参数已无效果。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_GREENG为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent, "TestImg", 0, 150, 320)
if _GUIHandle ~= 0 then
    ImageSetProp(_GUIHandle,nil,true,false,false,4000300000,COLOR_GREENG,255*0.3,false,1) --一键设置图片控件的属性
end

--此示例代码运行成功如下图所示。

ImageSetProp.png
<上一篇:设置图片控件自定义参数的值





