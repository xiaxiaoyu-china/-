骨骼动画概览
更新时间：2023-03-28 00:00:00
骨骼动画是由互相连接的“骨头”组成的骨架结构，通过控制、改变骨头的位置、朝向和放大和缩小来为角色生成的动画。相比较于传统的帧动画，骨骼动画的资源是一些小的角色部件（如头、手、胳膊、腰等）。

创建控件
你可以使用下表所列的接口，创建一个骨骼动画。

接口名	中文名	返回值类型	功能描述	适用客户端
SkeAnimCreate	创建骨骼动画	
int

此函数以指定的窗口作为父窗口，新建一个骨骼动画控件。	手游、端游、H5
设置控件
你可以使用下表所列的接口，设置骨骼动画的播放动画、动画播放速度、皮肤等。

接口名	中文名	返回值类型	功能描述	适用客户端
SkeAnimSetAnimation	设置播放骨骼动画	
无

此函数设置骨骼动画控件的动画播放。	手游、端游、H5
SkeAnimAddAnimation	增加播放骨骼动画	
无

此函数可为骨骼动画控件增加动画播放。	手游、端游
SkeAnimSetDebugBonesEnabled	设置骨骼动画是否显示骨骼	
无

此函数设置骨骼动画是否显示骨骼。	手游
SkeAnimSetDebugSlotsEnabled	设置是否显示骨骼动画的插槽	
无

此函数设置是否显示骨骼动画的插槽。	手游
SkeAnimSetEventCallBack	注册骨骼动画回调事件	
无

此函数注册骨骼动画回调事件。	手游
SkeAnimSetMix	设置两个骨骼动画间的过渡	
无

此函数设置两个骨骼动画之间的过渡。	手游、端游
SkeAnimSetSkin	设置骨骼动画的皮肤	
bool

此函数设置骨骼动画的皮肤。	手游
SkeAnimSetTimeScale	设置骨骼动画播放速度	
无

此函数设置骨骼动画播放速度。	手游、端游
获取控件信息
在创建或设置多功能编辑框控件后，可以通过以下接口获取骨骼动画是否显示骨骼、是否显示插槽等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
SkeAnimGetDebugBonesEnabled	获取骨骼动画是否显示骨骼	
bool

此函数获取骨骼动画是否显示骨骼的设置。	手游
SkeAnimGetDebugSlotsEnabled	获取骨骼动画是否显示插槽	
bool

此函数获取骨骼动画是否显示插槽。	手游
SkeAnimGetTimeScale	获取骨骼动画播放速度	
float

此函数获取骨骼动画播放速度。	手游、端游
<上一篇:复选框控件概览下一篇:菜单控件概览>

SkeAnimSetAnimation
设置播放骨骼动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置骨骼动画控件的动画播放。

语法
Luacopy 复制
GUI:SkeAnimSetAnimation(
    _HandleID,
    _TrackIdx,
    _pName,
    _Loop
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_TrackIdx

int

 
轨道索引。默认填0。

_pName

string

 
播放的骨骼动画名称。

caution_icon 注意
该名称非骨骼动画控件的名称，是定义播放的骨骼动画的名称。

_Loop

bool

 
是否循环播放。

true循环播放。

false播放一次。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
end

--此示例代码创建的骨骼动画播放效果如下。

SkeAnimSetAnimation
下一篇:设置骨骼动画是否显示骨骼>
SkeAnimSetDebugBonesEnabled
设置骨骼动画是否显示骨骼

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置骨骼动画是否显示骨骼。

开启骨骼显示有助于调试骨骼动画。

语法
Luacopy 复制
GUI:SkeAnimSetDebugBonesEnabled(
    _HandleID,
    _Enabled
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_Enabled

bool

 
是否开启骨骼显示。

true显示。

false不显示。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
    GUI:SkeAnimSetDebugBonesEnabled(_GUIHandle,true) --设置开始骨骼显示
end

--开启骨骼显示后的效果如下。

SkeAnimSetDebugBonesEnabled
<上一篇:设置播放骨骼动画下一篇:设置是否显示骨骼动画的插槽>
SkeAnimSetDebugSlotsEnabled
设置是否显示骨骼动画的插槽

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置是否显示骨骼动画的插槽。

插槽是骨骼动画中显示图片的容器，隶属于骨骼。开启显示插槽有助于调试骨骼动画。

语法
Luacopy 复制
GUI:SkeAnimSetDebugSlotsEnabled(
    _HandleID,
    _Enabled
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_Enabled

bool

 
是否显示插槽。

true显示。

false不显示。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
    GUI:SkeAnimSetDebugSlotsEnabled(_GUIHandle,true) --设置显示插槽
end

--开启显示插槽后的效果如下。

SkeAnimSetDebugSlotsEnabled
<上一篇:设置骨骼动画是否显示骨骼下一篇:注册骨骼动画回调事件>
SkeAnimSetEventCallBack
注册骨骼动画回调事件

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数注册骨骼动画回调事件。

语法
Luacopy 复制
GUI:SkeAnimSetEventCallBack(
    _HandleID,
    _Type,
    _pCallBack
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_Type

int

 
事件类型。

0表示动画播放开始时事件；

2表示动画播放完成时事件；

3表示动画播放结束时事件，循环播放时，每次播放结束时都会回调指定的事件；

5表示动画播放的内部事件。

_pCallBack

string

 
回调脚本名称。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
    GUI:SkeAnimSetEventCallBack(_GUIHandle,3,"AnimPlayCount") --设置每次播放结束回调函数AnimPlayCount
end

local counter = 0

function AnimPlayCount() --计算播放次数
    counter = counter+1
    dbg("第" .. counter .."次播放")
end

--此示例代码将在控制台输出播放的次数。
--“第1次播放”
--“第2次播放”
--“第3次播放”
--……
<上一篇:设置是否显示骨骼动画的插槽下一篇:设置两个骨骼动画间的过渡>
SkeAnimSetMix
设置两个骨骼动画间的过渡

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置两个骨骼动画之间的过渡。

note_icon 备注
目前游戏中仅有默认一种骨骼动画。

语法
Luacopy 复制
GUI:SkeAnimSetMix(
    _HandleID,
    _pFromAnim,
    _pToAnim,
    _Duration
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_pFromAnim

string

 
起始动画的名称。

_pToAnim

string

 
目标动画的名称。

_Duration

int

 
过渡时间，单位为毫秒（ms）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:注册骨骼动画回调事件下一篇:设置骨骼动画的皮肤>
SkeAnimSetSkin
设置骨骼动画的皮肤

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置骨骼动画的皮肤。

语法
Luacopy 复制
GUI:SkeAnimSetSkin(
    _HandleID,
    _pSkinName
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_pSkinName

string

 
皮肤名称。

返回值
操作结果

bool

 
true设置成功。

false设置失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
目前仅有默认的一套皮肤，暂无示例代码。
<上一篇:设置两个骨骼动画间的过渡下一篇:设置骨骼动画播放速度>
SkeAnimSetTimeScale
设置骨骼动画播放速度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置骨骼动画播放速度。

语法
Luacopy 复制
GUI:SkeAnimSetTimeScale(
    _HandleID,
    _Scale
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_Scale

float

 
动画播放速度。

如设置为1时为原始速度，设置为0.5时，则以0.5倍数播放。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
    GUI:SkeAnimSetTimeScale(_GUIHandle, 2.5) --设置为2.5倍速播放
end

--此示例代码创建的骨骼动画播放效果如下。

SkeAnimSetTimeScale
<上一篇:设置骨骼动画的皮肤
SkeAnimGetDebugBonesEnabled
获取骨骼动画是否显示骨骼

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取骨骼动画是否显示骨骼的设置。

语法
Luacopy 复制
GUI:SkeAnimGetDebugBonesEnabled(
    _HandleID
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

bool

 
是否开启了骨骼显示。

true显示。

false不显示。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
    if GUI:SkeAnimGetDebugBonesEnabled(_GUIHandle) then --获取是否显示骨骼
        dbg("显示骨骼")
    else
        dbg("不显示骨骼")
    end
end

--骨骼动画控件默认设置是不开启骨骼显示，故控制台将输出“不显示骨骼”。
下一篇:获取骨骼动画是否显示插槽>
SkeAnimGetDebugSlotsEnabled
获取骨骼动画是否显示插槽

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取骨骼动画是否显示插槽。

语法
Luacopy 复制
GUI:SkeAnimGetDebugSlotsEnabled(
    _HandleID
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

bool

 
是否显示插槽。

true显示。

false不显示。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
    if GUI:SkeAnimGetDebugSlotsEnabled(_GUIHandle) then --获取是否显示插槽
        dbg("显示插槽")
    else
        dbg("不显示插槽")
    end
end

--骨骼动画控件默认设置是不显示插槽，故控制台将输出“不显示插槽”。
<上一篇:获取骨骼动画是否显示骨骼下一篇:获取骨骼动画播放速度>
SkeAnimGetTimeScale
获取骨骼动画播放速度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取骨骼动画播放速度。

参数
语法
Luacopy 复制
GUI:SkeAnimGetTimeScale(
    _HandleID
)
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

float

 
动画播放速度。

1为原始速度。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",true) --设置骨骼动画循环播放
    GUI:SkeAnimSetTimeScale(_GUIHandle, 2.5) --设置为2.5倍速播放
    local scale = GUI:SkeAnimGetTimeScale(_GUIHandle) --获取骨骼动画播放速度
    dbg("播放倍数是：".. scale)
end

--此示例代码运行后，控制台将输出“播放倍数是：2.5”。
<上一篇:获取骨骼动画是否显示插槽
SkeAnimAddAnimation
增加播放骨骼动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数可为骨骼动画控件增加动画播放。

语法
Luacopy 复制
GUI:SkeAnimAddAnimation(
    _HandleID,
    _TrackIdx,
    _pName,
    _Loop,
    _Delay
)
参数
_HandleID

int

 
指定骨骼动画控件的句柄。

点击窗口句柄了解更多信息。

_TrackIdx

int

 
轨道索引。默认填0。

_pName

string

 
播放的骨骼动画名称。

caution_icon 注意
该名称非骨骼动画控件的名称，是定义播放的骨骼动画的名称。

_Loop

bool

 
是否循环播放。

true循环播放。

false播放一次。

_Delay

int

 
动画开始播放前的延迟时间，单位为毫秒（ms）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.5,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    GUI:SkeAnimSetAnimation(_GUIHandle,0,"Idle",false) --设置骨骼动画播放一次
    GUI:SkeAnimAddAnimation(_GUIHandle,0,"Idle",false, 3000) --追加动画播放一次，自上次播放起始3秒后开始
end

--此示例代码创建的骨骼动画播放效果如下。

SkeAnimAddAnimation










