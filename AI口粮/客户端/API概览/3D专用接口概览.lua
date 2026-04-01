3D专用接口概览
更新时间：2023-11-08 00:00:00
3D专用接口分类展示如下，包括3D模型相关接口、3D特效相关接口以及游戏相关接口。

3D模型相关接口
你可以使用下表所列的接口，创建3D模型、设置模型的发型以及显示角度等。

接口名	中文名	返回值类型	功能描述	适用客户端
AvatarAddLight	增加自定义模型灯光	
bool

此函数增加自定义模型灯光。	3D手游、3D端游
AvatarCreate	创建模型控件	
int

此函数创建一个模型控件。	3D手游、3D端游
AvatarDelLight	删除模型灯光	
bool

此函数删除模型灯光。	3D手游、3D端游
AvatarSetAction	设置模型动作	
无

此函数设置模型的动作。	3D手游、3D端游
AvatarSetData	设置模型不同部位的物品道具	
无

此函数根据物品的模板ID设置模型不同部位的物品道具。	3D手游、3D端游
AvatarSetHair	设置模型发型	
无

此函数设置模型的发型。	3D手游、3D端游
AvatarSetHalfBody	设置模型是否显示半身像	
无

此函数设置模型是否显示半身像。	3D手游、3D端游
AvatarSetInfo	设置角色模型信息	
无

此函数设置角色模型信息，包括角色模型的性别和职业。	3D手游、3D端游
AvatarSetLayer	设置模型所在的层级	
无

此函数设置模型所在的层级。	3D手游、3D端游
AvatarSetModel	设置模型身体部位的模型ID	
无

此函数设置模型身体部位的模型ID。	3D手游、3D端游
AvatarSetPartType	设置模型部位的类型	
无

此函数设置模型部位的类型。	3D手游、3D端游
AvatarSetRotation	设置模型的显示角度	
无

此函数设置模型的显示角度。	3D手游、3D端游
AvatarSetSelectSize	设置模型可选中区域	
无

此函数设置模型可选中区域，点击此区域可旋转模型。	3D手游、3D端游
AvatarSetSize	设置模型各部位的大小	
无

此函数设置模型指定部位的大小。	3D手游、3D端游
AvatarSetModelData	设置模型不同部位的模型	
无

此函数根据模型ID设置模型不同部位的模型。	3D手游、3D端游
3D特效相关接口
你可以使用下表所列的接口，创建3D特效、设置特效的缩放比例以及显示角度等。

接口名	中文名	返回值类型	功能描述	适用客户端
MagicCreate	创建特效控件	
int

此函数创建一个特效控件。	3D手游、3D端游
MagicGetGray	获取特效是否显示为灰色状态	
bool

此函数获取特效是否显示为灰色状态。	3D手游、3D端游
MagicSetGray	设置特效是否显示为灰色状态	
无

此函数设置特效是否显示为灰色状态。	3D手游、3D端游
MagicSetRotation	设置特效的显示角度	
无 

此函数获取菜单窗口并设置菜单隐藏或显示。	3D手游、3D端游
MagicSetScale	设置特效的缩放比例	
无

此函数设置特效的缩放比例。	3D手游、3D端游
MagicSetSpeedRatio	设置特效的播放速度	
无

此函数设置特效的播放速度。	3D手游、3D端游
游戏相关接口
以下接口可设置/获取可同屏玩家数量的最大值、游戏画质设置相关选项的勾选状态以及场景亮度等。

接口名	中文名	返回值类型	功能描述	适用客户端
SetShowPlayerMaxNum	设置可同屏玩家数量的最大值	
无

此函数设置可同屏玩家数量的最大值。	3D手游、3D端游
GetShowPlayerMaxNum	获取可同屏玩家数量的最大值	
int

此函数获取可同屏玩家数量的最大值。	3D手游、3D端游
GetBrightness	获取场景亮度	
float

此函数获取场景亮度。	3D手游、3D端游
SceneCameraZoomIn	循环切换场景摄像头与人物之间的距离	
无

此函数会循环拉近场景摄像头与人物之间的距离。	3D手游、3D端游
SetBrightness	设置场景亮度	
无

此函数设置场景亮度。	3D手游、3D端游
AddMagicToPointDir	在地图指定位置添加3D特效	
int

此函数在地图指定位置添加特效，并支持设置特效的旋转角度。	3D手游、3D端游
AddMagicToRole3D	为角色添加3D特效	
int

此函数为角色添加3D特效。	3D手游、3D端游
SetEquipMagic	设置玩家装备特效	
无

此函数设置玩家装备特效。	3D手游、3D端游
GetGraphicsQualitySetting	获取游戏画质设置相关选项的勾选状态	
bool

此函数获取游戏画质设置相关选项的勾选状态。	3D手游、3D端游
SetGraphicsQualitySetting	设置游戏画质设置相关选项的勾选状态	
无

此函数设置游戏画质设置相关选项的勾选状态。	3D手游、3D端游
SetPlayGatherAnim	设置角色是否播放采集动画	
无

此函数设置角色是否播放采集动画。	3D手游、3D端游
SetKeepRunning	设置玩家角色是否处于持续跑步的状态	
bool

此函数设置玩家角色是否处于持续跑步的状态。	3D手游、3D端游
GetKeepRunning	获取玩家角色是否处于持续跑步的状态	
bool

此函数获取玩家角色是否处于持续跑步的状态。	3D手游、3D端游
SetSkillHotKeyMap	设置技能栏中指定技能的快捷键	
无

此函数设置技能栏中指定技能的快捷键。	3D端游
SetTeamColor	设置队伍成员角色模型的变色效果	
无

此函数设置队伍成员角色模型的变色效果，仅玩家自己可见。	3D手游、3D端游
MouseSelectAndPickUpItem	解锁鼠标悬浮目标并拾取玩家脚下的物品	
无

此函数作用为锁定/解锁当前鼠标悬浮的目标以及拾取玩家脚下的物品，两个操作可同时进行。	3D端游
SetZoomMaxAndMinLevel	设置场景摄像头的缩放范围	
bool

此函数作用为设置场景摄像头的缩放范围。	3D手游、3D端游
GetZoomMaxAndMinLevel	获取场景摄像头的缩放范围	
bool

此函数获取场景摄像头的缩放范围。	3D手游、3D端游
SetAutoLockSkillEnable	设置是否开启技能自动施法全局开关	
bool

此函数设置是否开启技能自动施法全局开关。	3D手游、3D端游
GetAutoLockSkillEnable	获取是否开启技能自动施法全局开关	
bool

此函数获取是否开启技能自动施法全局开关。	3D手游、3D端游
SetAutoLockSkill	设置指定技能是否支持自动施法	
无

此函数设置指定技能是否支持自动施法，设置后该技能可对指定目标自动连续施法，目标死亡后停止施法。	3D手游、3D端游
GetAutoLockSkill	判断指定技能是否支持自动施法	
bool

此函数判断指定技能是否支持自动施法。	3D手游、3D端游
SetRedGreenSkillState	设置红绿毒施放的状态	
无

此函数设置并保存装备位开销时的红绿毒施放状态。	3D手游、3D端游
GetRedGreenSkillState	获取红绿毒施放的状态	
int

此函数获取装备位开销时的红绿毒施放状态。	3D手游、3D端游
SetCounterAttackID	设置是否开启自动反击功能	
无

此函数设置是否开启自动反击功能。	3D手游、3D端游
GetCounterAttackID	获取是否开启自动反击功能	
int

此函数设置是否开启自动反击功能。	3D手游、3D端游
SetRushUseMouseDir	设置是否开启定向冲击	
无

此函数设置是否开启定向冲击。	3D端游
GetRushUseMouseDir	获取是否开启定向冲击	
bool

此函数获取是否开启定向冲击。	3D端游
SceneCameraZoom	拉近或拉远摄像头	
无

此函数作用为拉近或拉近远摄像头，每执行一次会将摄像头拉近（或者拉远）1级。	3D手游、3D端游
GetZoomLevel	获取场景摄像头当前距离档位	
int

此函数获取场景摄像头当前距离档位。	3D手游、3D端游
SetClickUnSelect	设置点击地面时是否取消锁定的目标	
无

此函数设置点击地面时是否取消锁定的目标。	3D端游
SetMobileBrightness	设置屏幕亮度	
无

此函数设置屏幕亮度。	3D手游
GetMobileBrightness	获取当前的屏幕亮度	
float

此函数获取当前的屏幕亮度。	3D手游
SetAFKInterval	设置设备无操作后执行指定函数的间隔	
无

此函数设置无触屏操作后执行指定回调函数的时间间隔。	3D手游
EnableEffect	设置指定类型的特效是否显示	
无

此函数设置指定类型的特效是否显示。	3D手游、3D端游
SetCameraRotationOffset	设置摄像头的视角	
无

此函数作用为实时设置摄像头的视角。	3D手游、3D端游
GetAutoUseSkillClickTick	获取技能自动被点击的时间间隔	
int

此函数获取技能自动被点击的时间间隔。	3D手游
SetAutoAttackSearchPlayer	设置自动挂机时是否会主动攻击敌对玩家	
无

此函数设置玩家自动挂机时是否会主动攻击敌对玩家，同时设置主动攻击时的搜索范围。	3D手游、3D端游
SetAutoAttacSkill	自定义角色在自动挂机时施放的技能	
无

此函数作用为自定义法师或者术士角色在自动挂机时施放的技能。	3D手游、3D端游
<上一篇:菜单控件概览
AvatarAddLight
增加自定义模型灯光

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数增加自定义模型灯光。

语法
Luacopy 复制
GUI:AvatarAddLight(
    layer,
    idx,
    intensity,
    r,
    g,
    b,
    x,
    y,
    z
)
参数
layer

int

 
层级

0角色面板所在的层级（为默认值）

1NPC半身像所在的层级

idx

int

 
灯光索引

从0开始

note_icon 备注
不同层级的模型灯光的索引可以相同。

intensity

float

 
光照强度

范围为0-8（0代表光照强度最小，8代表光照强度最大）

r

int

 
红色的颜色值

范围为0~255

g

int

 
绿色的颜色值

范围为0~255

b

int

 
蓝色的颜色值

范围为0~255

x

float

 
灯光在X轴方向的旋转角度

y

float

 
灯光在Y轴方向的旋转角度

z

float

 
灯光在Z轴方向的旋转角度

note_icon 备注
灯光在X轴、Y轴和Z轴的旋转角度的范围均为-360-360。

当旋转角度大于0时，代表向顺时针方向旋转；当旋转角度小于0时，代表向逆时针方向旋转。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以神途3d测试（区号：858979）中的RoleEquiment.lua脚本文件为例。
RoleEquiment = {}

function RoleEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

--……省略部分代码

    --内观
    _GUIHandle = GUI:AvatarCreate(_Parent, "AvatarShow", 172, 180)
    if _GUIHandle ~= 0 then
        GUI:AvatarAddLight(0,200,3,192,182,243,-50,-46.4,163.6) --增加自定义模型灯光
        GUI:AvatarSetSize(_GUIHandle, 0, 100 * 0.8) --设置模型身体部分的大小
    end

--……省略部分代码

    RoleEquiment.UIInit(_Parent)
end

--……省略部分代码

RoleEquiment.main()

--此示例代码运行前效果如下图所示。

AvatarAddLight.png

--此示例代码运行后效果如下图所示。

AvatarAddLight_2.png
下一篇:创建模型控件>
AvatarCreate
创建模型控件

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-10-19 00:00:00
此函数创建一个模型控件。

语法
Luacopy 复制
GUI:AvatarCreate(
    _ParentHandleID,
    _pContainerID,
    _PosX,
    _PosY
)
参数
_ParentHandleID

int

 
父控件句柄

_pContainerID

string

 
新建模型控件的名称

_PosX

int

 
新建模型控件位置的横坐标

_PosY

int

 
新建模型控件位置的纵坐标

返回值
int

 
执行成功返回模型控件的GUID

执行失败返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
<上一篇:增加自定义模型灯光下一篇:删除模型灯光>
AvatarDelLight
删除模型灯光

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数删除模型灯光。

语法
Luacopy 复制
GUI:AvatarDelLight(
    layer,
    idx
)
参数
layer

int

 
层级

0角色面板所在的层级（为默认值）

1NPC半身像所在的层级

idx

int

 
灯光索引

从0开始

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GUI:AvatarDelLight(0,200) --删除角色面板所在的层级上索引号为200的模型灯光
<上一篇:创建模型控件下一篇:设置模型动作>
AvatarSetAction
设置模型动作

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2025-12-03 18:32:00
此函数设置模型的动作。

语法
Luacopy 复制
GUI:AvatarSetAction(
    _HandleID,
    _Action,
    _Loop,
    _Speed
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_Action

int

 
动作类型

具体请参见3D模型动作定义页面

_Loop

bool

 
是否循环播放动作

true循环播放

false不循环播放

_Speed

int

 
动作播放倍率

note_icon 备注
当此参数设置为0时，表示停在动作初始状态不再播放；

当此参数设置为0.5时，表示该动作按照0.5倍速播放，以此类推；

当此参数设置为1时，表示该动作按照原始速度播放；

当此参数设置为2时，表示该动作按照2倍速播放，以此类推。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
    GUI:AvatarSetAction(_GUIHandle,2, true,1) --设置模型动作为奔跑
end

--此示例代码运行成功如下图所示。

AvatarSetAction.gif
<上一篇:删除模型灯光下一篇:设置模型不同部位的物品道具>
AvatarSetData
设置模型不同部位的物品道具

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-10-14 00:00:00
此函数根据物品的模板ID设置模型不同部位的物品道具。

语法
Luacopy 复制
GUI:AvatarSetData(
    _HandleID,
    _AvatarType,
    _ItemID
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_AvatarType

int

 
部位类型

0身体

1武器

2翅膀

3头盔

4盾牌（暂不支持）

_ItemID

int

 
物品的模板ID

note_icon 备注
若指定部位类型为身体，则此参数填写的内容为需要装备的衣服的模板ID（装备的衣服需要与模型的性别匹配）。

若指定部位类型为身体但填写的衣服的模板ID不存在，则会显示男/女裸模。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
<上一篇:设置模型动作下一篇:设置模型发型>
AvatarSetHair
设置模型发型

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-10-19 00:00:00
此函数设置模型的发型。

语法
Luacopy 复制
GUI:AvatarSetHair(
    _HandleID,
    _HairStyle
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_HairStyle

ushort

 
发型ID

note_icon 备注
发型ID为对应资源ID的前5位。

若资源ID的第1位为0，则可以省略第1位（即填写资源ID的第2-5位）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
<上一篇:设置模型不同部位的物品道具下一篇:设置模型是否显示半身像>
AvatarSetHalfBody
设置模型是否显示半身像

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数设置模型是否显示半身像。

note_icon 备注
目前仅支持NPC模型显示半身像。

语法
Luacopy 复制
GUI:AvatarSetHalfBody(
    _HandleID,
    _HalfBody
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_HalfBody

bool

 
true显示半身像

false不显示半身像

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以神途3d测试（区号：858979）中的NPCTalk.lua脚本文件为例。
NpcTalk = {}

--……省略部分代码

--npc面板上新npc头像尺寸变大，这里调整位置
function NpcTalk.SetNpcTalkHalfImgPos()

--……省略部分代码

    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndGetSizeM(_GUIHandle)
        if LuaRet[1] == 0 or LuaRet[2] == 0 then
            return
        end
        local scale = 224 / LuaRet[2]
        local new_width = LuaRet[1] * scale--234
        local new_height = LuaRet[2] * scale--224
        GUI:WndSetSizeM(_GUIHandle, new_width-70 , new_height-45)--半身像尺寸
        GUI:AvatarSetHalfBody(_GUIHandle,true) --设置NPC模型显示半身像

--……省略部分代码
    end
end

--……省略部分代码

NpcTalk.main()

--此示例代码运行成功如下图所示（设置NPC模型显示半身像）。

AvatarSetHalfBody.png
<上一篇:设置模型发型下一篇:设置角色模型信息>
AvatarSetInfo
设置角色模型信息

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-11-26 00:00:00
此函数设置角色模型信息，包括角色模型的性别和职业。

语法
Luacopy 复制
GUI:AvatarSetInfo(
    _HandleID,
    _Gender,
    _Job
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_Gender

int

 
性别

1男性

2女性

_Job

int

 
职业

1战士

2法师

3术士

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
<上一篇:设置模型是否显示半身像下一篇:设置模型所在的层级>
AvatarSetLayer
设置模型所在的层级

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-03-24 00:00:00
此函数设置模型所在的层级。

语法
Luacopy 复制
GUI:AvatarSetLayer(
    _HandleID,
    _Layer
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_Layer

int

 
层级

0角色面板所在的层级（为默认值）

1NPC半身像所在的层级

2角色播放动画所在的层级（可参考右侧示例）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级为0
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级为2
end

--此示例代码运行成功如下图所示。

AvatarCreate.gif
<上一篇:设置角色模型信息下一篇:设置模型不同部位的模型>
AvatarSetModelData
设置模型不同部位的模型

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-10-14 00:00:00
此函数根据模型ID设置模型不同部位的模型。

语法
Luacopy 复制
GUI:AvatarSetModelData(
    _HandleID,
    _AvatarType,
    _ModelId
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_AvatarType

int

 
部位类型

0身体

1武器

2翅膀

3头盔

4盾牌（暂不支持）

_ModelId

ushort

 
模型ID

note_icon 备注
模型ID为对应资源ID的前5位。

若资源ID的第1位为0，则可以省略第1位（即填写资源ID的第2-5位）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModelData(_GUIHandle,0,8120) --设置身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarSetModelData.png
<上一篇:设置模型所在的层级下一篇:设置模型身体部位的模型ID>
AvatarSetModel
设置模型身体部位的模型ID

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-10-14 00:00:00
此函数设置模型身体部位的模型ID。

语法
Luacopy 复制
GUI:AvatarSetModel(
    _HandleID,
    _Model
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_Model

ushort

 
模型ID

note_icon 备注
模型ID为对应资源ID的前5位。

若资源ID的第1位为0，则可以省略第1位（即填写资源ID的第2-5位）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
<上一篇:设置模型不同部位的模型下一篇:设置模型部位的类型>
AvatarSetPartType
设置模型部位的类型

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-10-14 00:00:00
此函数设置模型部位的类型。

note_icon 备注
此接口需要和接口GUI:AvatarSetModel搭配使用，可用于设置单模型展示控件。

使用此接口设置单模型展示控件后，会将单模型展示控件中道具看作模型控件的主体。若要设置单模型展示控件中道具的大小，则需要将接口GUI:AvatarSetSize的_AvatarType参数设置为0。

语法
Luacopy 复制
GUI:AvatarSetPartType(
    _HandleID,
    _Type
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_Type

int

 
部位类型

0身体

1武器

2翅膀

3头盔

4盾牌（暂不支持）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Model", 200, 200)
if _GUIHandle ~= 0 then
    --设置模型武器部位的模型ID
    GUI:AvatarSetPartType(_GUIHandle, 1)
    GUI:AvatarSetModel(_GUIHandle, 09001)
end

--此示例代码运行成功如下图所示。

AvatarSetPartType.png
<上一篇:设置模型身体部位的模型ID下一篇:设置模型的显示角度>
AvatarSetRotation
设置模型的显示角度

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-18 00:00:00
此函数设置模型的显示角度。

语法
Luacopy 复制
GUI:AvatarSetRotation(
    _HandleID,
    _RotationX,
    _RotationY,
    _RotationZ
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_RotationX

float

 
X轴方向的旋转角度

_RotationY

float

 
Y轴方向的旋转角度

_RotationZ

float

 
Z轴方向的旋转角度

note_icon 备注
X轴、Y轴和Z轴的旋转角度的范围均为-360-360。

当旋转角度大于0时，代表向顺时针方向旋转；当旋转角度小于0时，代表向逆时针方向旋转。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以神途3d测试（区号：858979）中的m_模型展示怪物.lua脚本文件为例。
MonsterModelShow = {}

--……省略部分代码

function MonsterModelShow.ShowPage(index)
    local num = 1
    MonsterModelShow.nowPage = index --第几页
    local tList = MonsterModelShow.tList
    for i = 1 + onePageCount * (index - 1), onePageCount * index do
        if tList[i] and tList[i][2] then
            local model = tList[i][2]
            local _Monster = GetWindow(MonsterModelShow.WndHandle, "Monster" .. num)
            if _Monster ~= 0 then
                --设置模型、位置、缩放比例
                local _Model = GetWindow(_Monster, "Model")
                if _Model ~= 0 then
                    GUI:WndSetPosM(_Model, _SizeX / 2, _SizeY / 2 - 50)--画布位置
                    GUI:WndSetSizeM(_Model, _SizeX + 180, _SizeY)--画布大小
                    GUI:AvatarSetModel(_Model, model)--模型ID
                    GUI:AvatarSetSize(_Model, 0, 100 * _Scale)--模型大小
                    GUI:AvatarSetSelectSize(_Model, _SizeX, _SizeY - 50)--旋转模型的响应区域
                    GUI:AvatarSetRotation(_Model, 0,150, 0) --设置模型的显示角度
                end

--……省略部分代码

            end
            GUI:WndSetVisible(_Monster, true)
            WndSetVisible(MonsterModelShow.WndHandle, "MonsterBG" .. num, true)
        else
            WndSetVisible(MonsterModelShow.WndHandle, "Monster" .. num, false)
            WndSetVisible(MonsterModelShow.WndHandle, "MonsterBG" .. num, false)
        end
        num = num + 1
    end

    --设置页数
    EditSetText(MonsterModelShow.WndHandle, "PageBG,Page", "" .. index .. "/" .. maxPage)
end

--……省略部分代码

MonsterModelShow.main()

--此示例代码运行前效果如下图所示。

AvatarSetRotation_2.png

--此示例代码运行后效果如下图所示。

AvatarSetRotation.png
<上一篇:设置模型部位的类型下一篇:设置模型可选中区域>
AvatarSetSelectSize
设置模型可选中区域

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-12-10 00:00:00
此函数设置模型可选中区域，点击此区域可旋转模型。

语法
Luacopy 复制
GUI:AvatarSetSelectSize(
    _HandleID,
    _Width,
    _Height
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_Width

int

 
可选中区域的宽度

单位为像素（px）

_Height

int

 
可选中区域的高度

单位为像素（px）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
<上一篇:设置模型的显示角度下一篇:设置模型各部位的大小>
AvatarSetSize
设置模型各部位的大小

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-10-14 00:00:00
此函数设置模型指定部位的大小。

语法
Luacopy 复制
GUI:AvatarSetSize(
    _HandleID,
    _AvatarType,
    _Size
)
参数
_HandleID

int

 
指定模型控件的句柄

点击窗口句柄了解更多信息

_AvatarType

int

 
部位类型

0身体

1武器

2翅膀

3头盔（暂不支持）

4盾牌（暂不支持）

note_icon 备注
使用接口GUI:AvatarSetPartType设置单模型展示控件后，会将单模型展示控件中道具看作模型控件的主体。

若要设置单模型展示控件中道具的大小，则需要将此参数设置为0。

_Size

int

 
缩放值（要设置的缩放值除以100即为对应的缩放比例）

例如：

100宽度和高度均为原始大小

50宽度和高度均为原始大小的1/2

note_icon 备注
若指定部位类型为身体，则此参数填写的缩放值会对整个模型生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:AvatarCreate(_Parent, "Avatar", 300, 300) --创建模型控件
if _GUIHandle ~= 0 then
    GUI:AvatarSetInfo(_GUIHandle,1,2) --设置角色模型信息
    GUI:AvatarSetHair(_GUIHandle,7302) --设置模型头发样式
    GUI:AvatarSetModel(_GUIHandle,8120) --设置模型身体部位的模型ID
    GUI:AvatarSetData(_GUIHandle,1,319) --设置模型的武器
    GUI:AvatarSetSize(_GUIHandle,1,50) --设置模型武器的大小
    GUI:AvatarSetSelectSize(_GUIHandle,100,100) --设置模型可选中区域
    GUI:AvatarSetLayer(_GUIHandle,0) --设置模型所在的层级
end

--此示例代码运行成功如下图所示。

AvatarCreate.png
<上一篇:设置模型可选中区域
MagicCreate
创建特效控件

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-10-19 00:00:00
此函数创建一个特效控件。

语法
Luacopy 复制
GUI:MagicCreate(
    _ParentHandleID,
    _pWndID,
    _MagicID,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY
)
参数
_ParentHandleID

int

 
父控件句柄 

_pWndID

string

 
新建特效控件的名称

_MagicID

uint

 
特效ID（即Magic.xml文件中的Id字段的值）

note_icon 备注
Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

_PosX

int

 
新建特效控件位置的横坐标

_PosY

int

 
新建特效控件位置的纵坐标

_SizeX

int

 
新建特效控件的宽度

单位为像素（px）

_SizeY

int

 
新建特效控件的高度

单位为像素（px）

返回值
int

 
执行成功则返回特效控件的GUID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:MagicCreate(_Parent, "Magic", 60077, 100, 350, 300, 100) --创建一个特效控件
if _GUIHandle ~= 0 then
    GUI:MagicSetScale(_GUIHandle, 7000, 7000) --设置特效的缩放比例
    GUI:MagicSetSpeedRatio(_GUIHandle, 5) --设置特效按照5倍速进行播放
    GUI:MagicSetRotation(_GUIHandle, 30, 30, 30) --设置特效的旋转角度
end

--此示例代码运行前效果如下图所示。

MagicCreate.gif

--此示例代码运行后效果如下图所示。

MagicCreate_2.gif
下一篇:获取特效是否显示为灰色状态>
MagicGetGray
获取特效是否显示为灰色状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-02-11 00:00:00
此函数获取特效是否显示为灰色状态。

语法
Luacopy 复制
GUI:MagicGetGray(
    _HandleID
)
参数
_HandleID

int

 
指定特效控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
指定特效是否显示为灰色状态

true是（即指定特效显示为灰色状态）

false否（即指定特效显示为正常状态）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以神途3d测试（区号：858979）中的m_模型展示称号.lua脚本文件为例。
TitleModelShow = {}

--……省略部分代码

--点击置灰
function TitleModelShow.OnSetGray(_Handle)
    local _Model = GetWindow(GUI:WndGetParentM(_Handle), "Model")
    if _Model ~= 0 then
        GUI:RichEditClear(_Handle) --清空多功能编辑框的内容
        if GUI:MagicGetGray(_Model) then
            GUI:MagicSetGray(_Model, false) --设置特效显示为正常状态
            GUI:RichEditAppendString(_Handle, "#COLORCOLOR_GRAY##SELECT#[点击置灰]") --添加文本（[点击置灰]）
        else
            GUI:MagicSetGray(_Model, true) --设置特效显示为灰色状态
            GUI:RichEditAppendString(_Handle, "#COLORCOLOR_RED##SELECT#[取消置灰]") --添加文本（[取消置灰]）
        end
    end
end

--……省略部分代码

TitleModelShow.main()

--此示例代码运行成功如下图所示。

--点击SELECT标签中的文本（[点击置灰]）可设置特效显示为灰色状态；点击SELECT标签中的文本（[取消置灰]）可设置特效显示为正常状态。

MagicSetGray.png

MagicSetGray_2.png
<上一篇:创建特效控件下一篇:设置特效是否显示为灰色状态>
MagicSetGray
设置特效是否显示为灰色状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-02-11 00:00:00
此函数设置特效是否显示为灰色状态。

语法
Luacopy 复制
GUI:MagicSetGray(
    _HandleID,
    _IsGray
)
参数
_HandleID

int

 
指定特效控件的句柄

点击窗口句柄了解更多信息

_IsGray

bool

 
是否显示为灰色状态

true是（即特效显示为灰色状态）

false否（即特效显示为正常状态）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以神途3d测试（区号：858979）中的m_模型展示称号.lua脚本文件为例。
TitleModelShow = {}

--……省略部分代码

--点击置灰
function TitleModelShow.OnSetGray(_Handle)
    local _Model = GetWindow(GUI:WndGetParentM(_Handle), "Model")
    if _Model ~= 0 then
        GUI:RichEditClear(_Handle) --清空多功能编辑框的内容
        if GUI:MagicGetGray(_Model) then
            GUI:MagicSetGray(_Model, false) --设置特效显示为正常状态
            GUI:RichEditAppendString(_Handle, "#COLORCOLOR_GRAY##SELECT#[点击置灰]") --添加文本（[点击置灰]）
        else
            GUI:MagicSetGray(_Model, true) --设置特效显示为灰色状态
            GUI:RichEditAppendString(_Handle, "#COLORCOLOR_RED##SELECT#[取消置灰]") --添加文本（[取消置灰]）
        end
    end
end

--……省略部分代码

TitleModelShow.main()

--此示例代码运行成功如下图所示。

--点击SELECT标签中的文本（[点击置灰]）可设置特效显示为灰色状态；点击SELECT标签中的文本（[取消置灰]）可设置特效显示为正常状态。

MagicSetGray.png

MagicSetGray_2.png
<上一篇:获取特效是否显示为灰色状态下一篇:设置特效的显示角度>
MagicSetRotation
设置特效的显示角度

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-10-19 00:00:00
此函数设置特效的显示角度。

语法
Luacopy 复制
GUI:MagicSetRotation(
    _HandleID,
    _RotationX,
    _RotationY,
    _RotationZ
)
参数
_HandleID

int

 
指定特效控件的句柄

点击窗口句柄了解更多信息

_RotationX

float

 
X轴方向的旋转角度

_RotationY

float

 
Y轴方向的旋转角度

_RotationZ

float

 
Z轴方向的旋转角度

note_icon 备注
X轴、Y轴和Z轴的旋转角度的范围均为-360-360。

当旋转角度大于0时，代表向顺时针方向旋转；当旋转角度小于0时，代表向逆时针方向旋转。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:MagicCreate(_Parent, "Magic", 60077, 100, 350, 300, 100) --创建一个特效控件
if _GUIHandle ~= 0 then
    GUI:MagicSetScale(_GUIHandle, 7000, 7000) --设置特效的缩放比例
    GUI:MagicSetSpeedRatio(_GUIHandle, 5) --设置特效按照5倍速进行播放
    GUI:MagicSetRotation(_GUIHandle, 30, 30, 30) --设置特效的显示角度
end

--此示例代码运行前效果如下图所示。

MagicCreate.gif

--此示例代码运行后效果如下图所示。

MagicCreate_2.gif
<上一篇:设置特效是否显示为灰色状态下一篇:设置特效的缩放比例（扩展）>
MagicSetScaleEx
设置特效的缩放比例（扩展）

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2025-10-28 15:21:00
此函数设置特效的缩放比例（扩展）。

语法
Luacopy 复制
GUI:MagicSetScaleEx(
    _HandleID,
    _ScaleX,
    _ScaleY,
    _ScaleZ
)
参数
_HandleID

int

 
指定特效控件的句柄

点击窗口句柄了解更多信息

_ScaleX

int

 
X轴方向缩放（即宽度的缩放比例）

将要设置的倍数乘以10000即为设置值

例如：

5000特效控件宽度缩小至原始宽度的一半大小

10000特效控件宽度为原始宽度

20000特效控件宽度放大1倍，为原始宽度的2倍大小

_ScaleY

int

 
Y轴方向缩放（即高度的缩放比例）

将要设置的倍数乘以10000即为设置值

规则和_ScaleX相同，不再赘述。

_ScaleY

int

 
Z轴方向缩放（即深度的缩放比例）

将要设置的倍数乘以10000即为设置值

规则和_ScaleX相同，不再赘述。

部分特效本身没有Z轴方向缩放，可以设置，但是会没有表现。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置特效的显示角度下一篇:设置特效的缩放比例>
MagicSetScale
设置特效的缩放比例

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-10-19 00:00:00
此函数设置特效的缩放比例。

语法
Luacopy 复制
GUI:MagicSetScale(
    _HandleID,
    _ScaleX,
    _ScaleY
)
参数
_HandleID

int

 
指定特效控件的句柄

点击窗口句柄了解更多信息

_ScaleX

int

 
X轴方向缩放（即宽度的缩放比例）

将要设置的倍数乘以10000即为设置值

例如：

5000特效控件宽度缩小至原始宽度的一半大小

10000特效控件宽度为原始宽度

20000特效控件宽度放大1倍，为原始宽度的2倍大小

_ScaleY

int

 
Y轴方向缩放（即高度的缩放比例）

将要设置的倍数乘以10000即为设置值

规则和_ScaleX相同，不再赘述。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:MagicCreate(_Parent, "Magic", 60077, 100, 350, 300, 100) --创建一个特效控件
if _GUIHandle ~= 0 then
    GUI:MagicSetScale(_GUIHandle, 7000, 7000) --设置特效的缩放比例
    GUI:MagicSetSpeedRatio(_GUIHandle, 5) --设置特效按照5倍速进行播放
    GUI:MagicSetRotation(_GUIHandle, 30, 30, 30) --设置特效的旋转角度
end

--此示例代码运行前效果如下图所示。

MagicCreate.gif

--此示例代码运行后效果如下图所示。

MagicCreate_2.gif
<上一篇:设置特效的缩放比例（扩展）下一篇:设置特效的播放速度>
MagicSetSpeedRatio
设置特效的播放速度

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-10-19 00:00:00
此函数设置特效的播放速度。

语法
Luacopy 复制
GUI:MagicSetSpeedRatio(
    _HandleID,
    _Speed
)
参数
_HandleID

int

 
指定特效控件的句柄

点击窗口句柄了解更多信息

_Speed

float

 
特效播放速度

填写的范围为0-20

note_icon 备注
当此参数设置为0时，表示该特效为静止状态；

当此参数设置为0.5时，表示该特效按照0.5倍速播放，以此类推；

当此参数设置为1时，表示该特效按照原始速度播放；

当此参数设置为2时，表示该特效按照2倍速播放，以此类推。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:MagicCreate(_Parent, "Magic", 60077, 100, 350, 300, 100) --创建一个特效控件
if _GUIHandle ~= 0 then
    GUI:MagicSetScale(_GUIHandle, 7000, 7000) --设置特效的缩放比例
    GUI:MagicSetSpeedRatio(_GUIHandle, 5) --设置特效按照5倍速进行播放
    GUI:MagicSetRotation(_GUIHandle, 30, 30, 30) --设置特效的旋转角度
end

--此示例代码运行前效果如下图所示。

MagicCreate.gif

--此示例代码运行后效果如下图所示。

MagicCreate_2.gif
<上一篇:设置特效的缩放比例
ClippingCreate
创建裁剪控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-06-12 00:00:00
此函数作用是创建裁剪控件，并指定裁剪模板，支持纹理模式和矩形模式。

语法
Luacopy 复制
GUI:ClippingCreate(
    parent,
    id,
    stencil_image_id,
    pos_x,
    pos_y
)
参数
parent

int

 
父控件句柄

id

string

 
控件ID

stencil_image_id

unsigned int

 
指定裁剪模板为图片资源

纹理模式：参数stencil_image_id不为0，裁剪模板为stencil_image_id的图片纹理，且如果调用接口GUI:WndSetSizeM，将会把模板缩放到设置的矩形范围大小。

矩形模式：参数stencil_image_id为0，裁剪模板为接口GUI:WndSetSizeM的矩形范围。

pos_x

int

 
坐标x

pos_y

int

 
坐标y

返回值
int

 
窗口句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--纹理模式，未调用接口GUI:WndSetSizeM
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ClippingCreate(_Parent,"TestImg2", 4000600003,300,100)
if _GUIHandle ~= 0 then
    GUI:ClippingSetAlphaThreshold(_GUIHandle,0.5) --仅支持手游

    local _GUIHandle = GUI:ImageCreate(_GUIHandle, "TestImg1", 4000600003,10,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true) 
    end
end

--取参数中图片资源的剪影作为裁剪模板，如示例使用图片4000600003，则裁剪模板为圆形阴影，模板不可见。

ClippingCreate.png

--创建控件后，选择要被裁剪的图片资源作为底板创建子控件，可以正常使用子控件创建时的X，Y坐标来控制被裁剪的面积大小。

ClippingSetAlphaThreshold_2.png

--纹理模式，调用接口GUI:WndSetSizeM
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ClippingCreate(_Parent,"TestImg2", 4000600003,300,100)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle, 100, 100)--设置矩形大小为100*100
    local _GUIHandle = GUI:ImageCreate(_GUIHandle, "TestImg1", 4000600003,10,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true) 
    end
end

--创建控件后，选择要被裁剪的图片资源作为底板创建子控件，可以正常使用子控件创建时的X，Y坐标来控制被裁剪的面积大小。

ClippingCreate_2.png

--矩形模式，调用接口GUI:WndSetSizeM
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ClippingCreate(_Parent,"TestImg2", 0,300,100)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle, 100, 100)--设置矩形大小为100*100
    local _GUIHandle = GUI:ImageCreate(_GUIHandle, "TestImg1", 4000600003,10,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true) 
    end
end

--创建控件后，选择要被裁剪的图片资源作为底板创建子控件，可以正常使用子控件创建时的X，Y坐标来控制被裁剪的面积大小。

ClippingCreate_3.png
下一篇:设置裁剪模板是否显示>
ClippingDebug
设置裁剪模板是否显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-06-12 00:00:00
此函数设置裁剪模板是否显示，用于调试。

语法
Luacopy 复制
GUI:ClippingDebug(
    enable
)
参数
enable

handle

 
控件句柄

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ClippingCreate(_Parent,"TestImg2", 4000600003,300,100)
if _GUIHandle ~= 0 then
    GUI:ClippingSetAlphaThreshold(_GUIHandle,0.5)
    GUI:ClippingDebug(_GUIHandle, true)
    local _GUIHandle = GUI:ImageCreate(_GUIHandle, "TestImg1", 4000600003,10,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true) 
    end
end

--接口ClippingDebug未使用或者设置false，此示例代码运行成功如下图所示，不显示显示裁剪模板。

ClippingDebug.png

--此示例代码运行成功如下图所示，显示裁剪模板。

ClippingDebug_2.png
<上一篇:创建裁剪控件下一篇:设置裁剪的透明度阈值>
ClippingSetAlphaThreshold
设置裁剪的透明度阈值

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2024-12-19 00:00:00
此函数作用是设置裁剪的透明度阈值。

语法
Luacopy 复制
GUI:ClippingSetAlphaThreshold(
    handle,
    alpha_threshold
)
参数
handle

int

 
控件句柄

alpha_threshold

float

 
透明度阈值，范围0.0~1.0之间，对应透明度0~255，默认值为0.0。

0.0表示全透明，1.0表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ClippingCreate(_Parent,"TestImg2", 4000600003,300,100)
if _GUIHandle ~= 0 then
    GUI:ClippingSetAlphaThreshold(_GUIHandle,0.5)

    local _GUIHandle = GUI:ImageCreate(_GUIHandle, "TestImg1", 4000600003,10,50)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true) 
    end
end


--当裁剪的透明度阈值设置为0.5时，灰底不作为裁剪模板，子控件图片显示模板形状内的部分。

ClippingSetAlphaThreshold.png

ClippingSetAlphaThreshold_2.png

GUI:ClippingSetAlphaThreshold(_GUIHandle,1)

--当裁剪的透明度设置为1时，灰底也作为裁剪模板，子控件图片显示模板形状灰底内的部分。

ClippingSetAlphaThreshold_3.png
<上一篇:设置裁剪模板是否显示
AddGlobalAction
添加全局动作

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-12-23 00:00:00
此函数添加全局动作，方便接口WndAddAction使用时全局导入模块，减少重复的动作配置。

相关接口请参见 GUI:WndAddAction。

语法
Luacopy 复制
CL:AddGlobalAction(
    action
)
参数
action

string

 
JSON格式的动作配置

将Lua对象转换为JSON字符串，相关接口请参见 json.encode。

点击UI动作(Action)了解更多信息。

返回值
操作结果

bool

 
添加全局动作是否成功。

true添加成功

false添加失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]

local global_action = {
    Actions = {
        global_tag_MoveTo = {Action="MoveTo", Duration=3, PositionX=300, PositionY=300},
        global_tag_MoveBy = {Action="MoveBy", Duration=3, PositionX=-300, PositionY=-300},
    }
}
if CL:AddGlobalAction(json.encode(global_action)) ~= true then
    dbg("添加动作失败:" .. LuaRet)
end

_GUIHandle = GUI:ButtonCreate(_Parent, "test_button", 4010210000, 0, 0)
if _GUIHandle ~= 0 then
    local action = {
        Imports = {"global_tag_MoveBy","global_tag_MoveTo"},
        Actions = {
            tag_FadeTo = {
                Action = "FadeTo",
                Duration = 3,
                Opacity = 255,
                Ease = "EaseBounceIn"
            },
            tag_FadeIn = {
                Action = "FadeIn",
                Duration = 3
            },

            tag_Sequence = {
                Action = "Sequence",
                Tags = {"global_tag_MoveTo","global_tag_MoveBy","tag_FadeIn","tag_FadeTo"}
            }
        },
        RunAction = {
            Tag = "Tag_RunAction",
            Run = "tag_Sequence"
        }
    }
    if GUI:WndAddAction(_GUIHandle, json.encode(action)) ~= true then
        dbg("添加动作失败:" .. LuaRet)
    end
end

--此示例代码运行成功如下图所示。
WndAddAction.gif
下一篇:添加控件的动作>
WndAddAction
添加控件的动作

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-12-23 00:00:00
此函数添加控件的动作。

相关接口请参见 CL:AddGlobalAction。

语法
Luacopy 复制
GUI:WndAddAction(
    handle,
    action
)
参数
handle

int

 
指定窗体控件的句柄

action

string

 
JSON格式的动作配置

将Lua对象转换为JSON字符串，相关接口请参见 json.encode。

点击UI动作(Action)了解更多信息。

返回值
操作结果

bool

 
添加动作是否成功。

true添加成功

false添加失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]

local global_action = {
    Actions = {
        global_tag_MoveTo = {Action="MoveTo", Duration=3, PositionX=300, PositionY=300},
        global_tag_MoveBy = {Action="MoveBy", Duration=3, PositionX=-300, PositionY=-300},
    }
}
if CL:AddGlobalAction(json.encode(global_action)) ~= true then
    dbg("添加动作失败:" .. LuaRet)
end

_GUIHandle = GUI:ButtonCreate(_Parent, "test_button", 4010210000, 0, 0)
if _GUIHandle ~= 0 then
    local action = {
        Imports = {"global_tag_MoveBy","global_tag_MoveTo"},
        Actions = {
            tag_FadeTo = {
                Action = "FadeTo",
                Duration = 3,
                Opacity = 255,
                Ease = "EaseBounceIn"
            },
            tag_FadeIn = {
                Action = "FadeIn",
                Duration = 3
            },

            tag_Sequence = {
                Action = "Sequence",
                Tags = {"global_tag_MoveTo","global_tag_MoveBy","tag_FadeIn","tag_FadeTo"}
            }
        },
        RunAction = {
            Tag = "Tag_RunAction",
            Run = "tag_Sequence"
        }
    }
    if GUI:WndAddAction(_GUIHandle, json.encode(action)) ~= true then
        dbg("添加动作失败:" .. LuaRet)
    end
end

--此示例代码运行成功如下图所示。
WndAddAction.gif
<上一篇:添加全局动作
SetPlayerFightOnHorse
动态控制全局变量FightOnHorse的值

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-05-08 00:00:00
此函数作用是动态控制全局变量FightOnHorse的值。

语法
Luacopy 复制
CL:SetPlayerFightOnHorse(
    enable
)
参数
enable

bool

 
是否开启

true开启

false不开启

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPlayerFightOnHorse(true)
--当设置骑坐骑可以攻击时，点击怪物会进行攻击

SetPlayerFightOnHorse.png

CL:SetPlayerFightOnHorse(false)

--当设置骑坐骑不可以攻击时，点击怪物不会进行攻击

SetPlayerFightOnHorse_2.png
下一篇:动态控制全局变量ShowMissWhenHurtZero的值>
SetShowMissWhenHurtZero
动态控制全局变量ShowMissWhenHurtZero的值

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-05-08 00:00:00
此函数作用是动态控制全局变量ShowMissWhenHurtZero的值。

语法
Luacopy 复制
CL:SetShowMissWhenHurtZero(
    enable
)
参数
enable

bool

 
是否显示

true显示

false不显示

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:动态控制全局变量FightOnHorse的值
SetCastleTempFamily
设置临时占有指定城堡的行会

更新时间：2023-11-21 00:00:00
此函数设置城堡战开始后临时占有指定城堡的行会。

语法
Luacopy 复制
lualib:SetCastleTempFamily(
    strCastleName,
    strFamilyName
)

参数
strCastleName

string

 
城堡名

strFamilyName

string

 
临时占有城堡的行会的名字
设置为nil时，则清除已有的行会名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetCastleTempFamily("神歌城", "测试行会") --设置临时占有神歌城的行会
local castle_map = lualib:GetCastleTempFamily("神歌城") --获取临时占有神歌城的行会名字
lualib:Warn("临时占有的行会为"..castle_map)

--此示例代码运行成功如下图所示。

GetCastleTempFamily.png
ChatWindowSetCurChannel
设置聊天窗口的当前频道

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-10 00:00:00
此函数作用为设置聊天窗口的当前频道。

当聊天频道切换按钮使用自定义样式（非官方样式），调用此接口来通知客户端频道的切换 。

语法
Luacopy 复制
GUI:ChatWindowSetCurChannel(
    _HandleID,
    _Channel
)
参数
_HandleID

long

 
聊天框的句柄

_Channel

int

 
当前频道

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以神途国际演示服（区号109166），脚本文件ChatWindowEX.lua为例。

ChatWindowEX = {}
--……省略部分代码

ChatWindowEX.Channel =
{
    {"当前",  1, ""},
    {"组队(!!)",  2, "!!"},
    {"行会(!~)",  3, "!~"},
    {"喊话(!)",  4, "!"},
    {"喇叭(!<)",  5, "!<"},
    {"私聊(/)",  6, "/"}
}
--……省略部分代码

function ChatWindowEX.ChannelBtnOnClick(h)
    local _GUIHandle = 0
    local _CurChannel = GUI:WndGetParam(h) --获取频道切换按钮的自定义变量，即ChatWindowEX.Channel表中第二列的数字(1-6)
    local _GUIHandle = GUI:WndGetParentM(h)
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    end
    local _GUIEditHandle = GUI:WndFindChildM(ChatWindowEX.WndHandle, "ChatInputEdit")
    if _GUIEditHandle ~= 0 then
        GUI:EditSetTextM(_GUIEditHandle, ChatWindowEX.Channel[_CurChannel][3])
        GUI:WndSetActiveM(_GUIEditHandle, true);
        ChatWindowEX.ChatChannel = _CurChannel
        GUI:ChatWindowSetCurChannel(ChatWindowEX.WndHandle, _CurChannel) --设置聊天窗口的当前频道
    end
end
--……省略部分代码

ChatWindowEX.main()
下一篇:获取当前用户实名认证的状态>
IdCardVerifyState
获取当前用户实名认证的状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取当前实名认证的状态。

caution_icon注意
该接口需要在用户登录之后调用才会生效。

每次调用此接口需要间隔5秒钟，否则会返回上一次的查询结果。

语法
Luacopy 复制
GUI:IdCardVerifyState(
    _CallbackFuncName
)
参数
_CallbackFuncName

string

 
回调函数的名称

note_icon 备注
回调函数格式：CallbackFuncName(msg)

msg(int)：状态码

状态码具体含义如下所示：

0已实名认证

1实名认证中

2实名认证失败

3未实名认证

4请求账号未被授权

5游戏授权异常

9不存在该用户实名认证记录

10签名异常

11时间戳过期

90010通行证ID不能为空

90020时间戳不能为空

90021上报时间应该与发生时间间隔小于{30}秒

90030签名不能为空

100000网络错误、初始化错误等

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
GUI:IdCardVerifyState("CallbackFuncName")

function CallbackFuncName(msg)
    dbg("该用户的实名认证状态为"..msg)
end

--此示例代码运行成功如下图所示。

IdCardVerifyState.png
<上一篇:设置聊天窗口的当前频道下一篇:生成颜色值>
MakeARGB
生成颜色值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据设置的颜色计算一个整型的数值供其他接口使用。

通过传入的单个A，R，G，B颜色值返回一个整型的颜色值供其他接口使用。

note_icon 备注
此为早期接口，可使用相同功能的MakeColor函数。

CL类接口有同名函数，也可使用CL:MakeARGB进行调用。

语法
Luacopy 复制
GUI:MakeARGB(
    A,
    R,
    G,
    B
)
参数
A

int

 
颜色的透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

R

int

 
红色的颜色值

范围为0~255

G

int

 
绿色的颜色值

范围为0~255

B

int

 
蓝色的颜色值

范围为0~255

返回值
unsigned int

 
返回计算后的颜色值

note_icon 备注
程序将传入的A，R，G，B的值分别转换为十六进制，再将其组合后转换为十进制。

如A(255)，R(100)，G(250)，B(255)转换为十六进制A(FF)，R(64)，G(FA)，B(FF)，组合为“FF64FAFF”，最后返回十进制数“4284807935”。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local color = GUI:MakeARGB(255, 255, 255, 255)
dbg("颜色值为："..color)

--控制台将输出“颜色值为：4294967295”。
<上一篇:获取当前用户实名认证的状态下一篇:生成颜色值>
MakeColor
生成颜色值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据设置的颜色计算一个整型的数值供其他接口使用。

通过传入的单个R，G，B，A颜色值返回一个整型的颜色值供其他接口使用。

语法
Luacopy 复制
GUI:MakeColor(
    R,
    G,
    B,
    A
)
参数
R

int

 
红色的颜色值

范围为0~255

G

int

 
绿色的颜色值

范围为0~255

B

int

 
蓝色的颜色值

范围为0~255

A

int

 
颜色的透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

返回值
unsigned int

 
返回计算后的颜色值

note_icon 备注
程序将传入的A，R，G，B的值分别转换为十六进制，再将其组合后转换为十进制。

如A(255)，R(100)，G(250)，B(255)转换为十六进制A(FF)，R(64)，G(FA)，B(FF)，组合为“FF64FAFF”，最后返回十进制数“4284807935”。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local color = GUI:MakeColor(255, 255, 255, 255)
dbg("颜色值为："..color)

--控制台将输出“颜色值为：4294967295”。
<上一篇:生成颜色值