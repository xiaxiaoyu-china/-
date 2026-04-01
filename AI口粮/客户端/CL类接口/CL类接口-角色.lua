AllowAutoPickUpItem
设置自动挂机时是否允许角色自动拾取物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-11-08 00:00:00
此函数设置自动挂机时是否允许角色自动拾取物品。

其功能和全局变量AllowAutoPickUpItem相同，可使用该接口在游戏中动态修改设置。

语法
Luacopy 复制
CL:AllowAutoPickUpItem()

参数
_Value

bool

 
是否允许

true允许，角色在自动挂机时会自动拾取物品

false不允许，角色在自动挂机时不会自动拾取物品

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:AllowAutoPickUpItem(true)
下一篇:角色自动寻路>
AutoRunByPos
角色自动寻路

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-29 00:00:00
此函数让角色自动寻路到达指定的位置。

语法
Luacopy 复制
CL:AutoRunByPos( 
    MapName,
    X,
    Y
)

参数
MapName

string

 
地图的索引名（KeyName）

X

int

 
位置的横坐标

Y

int

 
位置的纵坐标

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AutoRunByPos("手游龙城",100,100)
<上一篇:设置自动挂机时是否允许角色自动拾取物品下一篇:取消选择已选中的对象>
CancelCurSelecet
取消选择已选中的对象

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数取消选择已选中的对象，如玩家角色，怪物等。

语法
Luacopy 复制
CL:CancelCurSelecet()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:角色自动寻路下一篇:取消选择并停止攻击已选中的对象>
CancelCurSelectAndStopAttack
取消选择并停止攻击已选中的对象

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-12-11 00:00:00
此函数取消选择并停止攻击已选中的对象，如玩家角色，怪物等。

语法
Luacopy 复制
CL:CancelCurSelectAndStopAttack()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:取消选择已选中的对象下一篇:改变攻击模式>
ChangeAttacMod
改变攻击模式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据指定的参数改变当前的攻击模式。

语法
Luacopy 复制
CL:ChangeAttacMod( 
    _AttacMod
)

参数
_AttacMod

int

 
攻击模式。

0全体模式

1和平模式

2组队模式

3行会模式

4PK模式

5联盟模式

6阵营模式

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ChangeAttacMod(0) --切换为全体模式
<上一篇:取消选择并停止攻击已选中的对象下一篇:对当前选中目标进行普攻攻击>
ClickCommonAttac
对当前选中目标进行普攻攻击

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-11-21 00:00:00
此函数模拟手游端的普攻按钮。例如，在控件的逻辑事件回调使用该接口，当遇到鼠标难以点击切换目标时，可先快捷键切换目标，再点选控件来进行切换攻击。

语法
Luacopy 复制
CL:ClickCommonAttac()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"testBtn",4000240016,200,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"点击普攻")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "testFunc")
    end
function testFunc()
	CL:ClickCommonAttac()
end

--先使用快捷键组合Ctrl + X切换目标，然后按住shift键点击创建的按钮即触发普攻。
<上一篇:改变攻击模式下一篇:跟随目标>
FollowRole
跟随目标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置跟随目标，效果等同于端游中右键目标角色头像点击“跟随”按钮，新增跟随失败后取消跟随的逻辑。

note_icon 备注
手游：

当左键点击地面移动时，自动取消跟随；

当摇杆移动时，不会取消跟随。

端游：

当鼠标左键点击地面移动时，自动取消跟随；

当鼠标右键点击地面移动时，不会取消跟随。

语法
Luacopy 复制
CL:FollowRole(
    _RoleGUID,
    _AbortOnFail
)
参数
_RoleGUID

string

 
跟随目标的GUID

note_icon 备注
填空字符串（""）则表示取消跟随目标。

_AbortOnFail

bool

 
跟随失败时是否取消跟随

true目标下线/跨地图/离开视野时脱离跟随

false保留跟随目标的GUID（即目标出现时继续跟随）

note_icon 备注
当目标重新出现时，需要重新移动一下摇杆（手游）或者鼠标右键点击地面（端游）才可以继续跟随。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:FollowRole("390992899369791489",true) --设置跟随目标且当目标下线/跨地图/离开视野时脱离跟随
<上一篇:对当前选中目标进行普攻攻击下一篇:获取当前自动战斗配置项>
GetCustomAutoBattleConfiguration
获取当前自动战斗配置项

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数获取当前自动战斗配置项。

该函数生效需要工具后台设置全局变量"使用新的自动战斗逻辑"

SetCustomAutoBattleConfiguration.png

相关接口请参见 SetCustomAutoBattleConfiguration。

语法
Luacopy 复制
CL:GetCustomAutoBattleConfiguration()
参数
无

返回值
string

 
自动战斗配置，格式是JSON字符串

点击自动战斗配置项定义了解更多信息。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str = {
    MOVE = {TIMES = 3,SKILLS = {50}},
    RESTORE = {THRESHOLD = 50, INTERVAL = 3, SKILLS = {9,24}},
    BUFF = {SKILLS = {75}},
    SUMMON = {SKILLS = {95,51}},
    DEBUFF = {SKILLS = {11}},
    AOE = {NUM = 3, SKILLS = {77,10}},
    NORMAL = {SKILLS = {6,3}},
}
CL:SetCustomAutoBattleConfiguration(json.encode(str),false)

local ret = CL:GetCustomAutoBattleConfiguration()
ret = json.decode(ret)
dbg(""..serialize(ret))

--如图所示可以正常获取到当前的设置。

GetCustomAutoBattleConfiguration.png
<上一篇:跟随目标下一篇:获取玩家角色是否处于持续跑步的状态>
GetKeepRunning
获取玩家角色是否处于持续跑步的状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

此函数获取玩家角色是否处于持续跑步的状态。

参考 SetKeepRunning

语法
Luacopy 复制
CL:GetKeepRunning()
参数
无

返回值
bool

 
玩家角色是否处于持续跑步的状态

true是

false否

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameMainBar.lua脚本文件中执行。
GameMainBar = {}

--……省略部分代码

function OpenAutoRun()
    local status = CL:GetKeepRunning() --获取玩家角色是否处于持续跑步的状态
    CL:SetKeepRunning(not status) --设置玩家角色是否处于持续跑步的状态
    if status then
        UI:Lua_ChatMsg("关闭持续跑步")
    else
        UI:Lua_ChatMsg("开启持续跑步")
    end
end

CL:HotKeyRegister("A", "持续跑步", "OpenAutoRun") --注册一个快捷键

GameMainBar.main()

--此示例代码运行成功如下图所示（按下快捷键“A”玩家开始持续奔跑，再次按下快捷键“A”玩家停止持续奔跑）。

SetKeepRunning.gif

SetKeepRunning.png
IsPressWalk
获取是否使用新的点击地面行走方式

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-05-19 00:00:00
此函数获取是否使用新的点击地面行走方式。

参考 SetPressWalk

语法
Luacopy 复制
CL:IsPressWalk()
参数
无

返回值
bool

 
是否使用新的点击地面行走方式

true是

false否

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
local ret = CL:IsPressWalk()
dbg("返回值为"..tostring(ret))

--在使用新的点击地面行走方式的前提下运行上述示例代码，控制台将输出如下内容。

IsPressWalk.png
<上一篇:获取玩家角色是否处于持续跑步的状态下一篇:解锁鼠标悬浮目标并拾取玩家脚下的物品>
MouseSelectAndPickUpItem
解锁鼠标悬浮目标并拾取玩家脚下的物品

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dsupport

更新时间：2022-03-18 00:00:00
此函数作用为锁定/解锁当前鼠标悬浮的目标以及拾取玩家脚下的物品，两个操作可同时进行。

可注册一个快捷键，与此接口配合使用。

锁定目标：当鼠标悬浮在目标上，按下快捷键可锁定目标；当鼠标悬浮在其他目标上，按下快捷键可切换到新的锁定目标。

解锁目标：当鼠标悬浮在空白处、玩家自己或者其他除人物和怪物所在的区域时，则解除锁定。

拾取物品：设定的一些不会自动拾取的物品，当玩家走到该物品上按下此快捷键，可以将此物品拾取到玩家背包中（代替了鼠标左键点击物品进行拾取的操作）。

语法
Luacopy 复制
CL:MouseSelectAndPickUpItem()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameMainBar.lua脚本文件中执行。
GameMainBar = {}

--……省略部分代码

function MouseSelectAndPickUpItem()
    CL:MouseSelectAndPickUpItem() --锁定/解锁鼠标悬浮目标或者拾取玩家脚下的物品
end

CL:HotKeyRegister("~", "鼠标锁定及拾取", "MouseSelectAndPickUpItem") --注册一个快捷键

GameMainBar.main()

--此示例代码运行成功如下图所示（按下快捷键“~”锁定当前鼠标悬浮的目标，鼠标悬浮在空白处再次按下快捷键“~”解锁该目标）。

MouseSelectAndPickUpItem.gif
<上一篇:获取是否使用新的点击地面行走方式下一篇:切换攻击模式>
OnAttackMode
切换攻击模式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数会循环切换当前的攻击模式。

攻击模式一般有组队、行会、联盟、阵营、全体、和平和善恶模式。

语法
Luacopy 复制
CL:OnAttackMode()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:解锁鼠标悬浮目标并拾取玩家脚下的物品下一篇:骑乘>
OnRide
骑乘

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行骑乘的动作。

如角色已再坐骑上，则取消骑乘工作。

语法
Luacopy 复制
CL:OnRide()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:切换攻击模式下一篇:自动战斗时目标周围的怪物数量达到N时自动释放群攻技能>
SetAOEAroundCount
自动战斗时目标周围的怪物数量达到N时自动释放群攻技能

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-04-03 00:00:00
此函数在角色自动挂机的情况下，当目标周围的怪物达到一定数量N时，释放范围性技能。

note_icon 备注
该接口针对法师术士的群攻群毒技能，不适用于战士的月弧弯刀等。

语法
Luacopy 复制
CL:SetAOEAroundCount(
    n
)
参数
n

int

 
周围怪物数量

note_icon 备注
默认值2, 小退后设置失效。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetAOEAroundCount(5)

--此示例代码运行成功如下图所示，参数设置5时，目标周围的怪物少于5只时，不会释放群攻技能。

SetAOEAroundCount.png
CL:SetAOEAroundCount(1)

--此示例代码运行成功如下图所示，参数设置1时，目标周围有1只怪物就会释放群攻技能。

SetAOEAroundCount_2.png
<上一篇:骑乘下一篇:设置自动挂机时是否会主动攻击敌对玩家>
SetAutoAttackSearchPlayer
设置自动挂机时是否会主动攻击敌对玩家

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-08-02 00:00:00
此函数设置玩家自动挂机时是否会主动攻击敌对玩家，同时设置主动攻击时的搜索范围。

语法
Luacopy 复制
CL:SetAutoAttackSearchPlayer(
    _Flag,
    _Distance
)
参数
_Flag

bool

 
是否会主动攻击敌对玩家

true会

false不会

_Distance

int

 
搜索范围的半径

单位为逻辑格

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetAutoAttackSearchPlayer(true,6) --设置玩家自动挂机时会主动攻击敌对玩家，设置搜索范围的半径为6个逻辑格。
<上一篇:自动战斗时目标周围的怪物数量达到N时自动释放群攻技能下一篇:设置点击地面时是否取消锁定的目标>
SetClickUnSelect
设置点击地面时是否取消锁定的目标

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dsupport

更新时间：2022-09-09 00:00:00
此函数设置点击地面时是否取消锁定的目标。

端游不开启“免Shift”时左键点击玩家的逻辑如下：

1.左键点击玩家后，会选中该玩家并显示血条和光圈；

2.选中玩家后，接着按住Shift键，便会跑步过去攻击该玩家；

3.选中玩家后，再次左键点击玩家，依旧选中该玩家，不会跑步过去攻击该玩家；

4.选中玩家后，左键点击地面，取消选中该玩家，并且去掉血条和光圈显示。

若不需要左键点击地面取消选中目标的效果，则可使用此接口进行设置。

语法
Luacopy 复制
CL:SetClickUnSelect(
    _Flag
)
参数
_Flag

bool

 
点击地面时是否取消锁定的目标

true点击地面时不再选中角色

false点击地面时仍然选中角色

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetClickUnSelect(true) --点击地面时不再选中角色

CL:SetClickUnSelect(false) --点击地面时仍然选中角色
<上一篇:设置自动挂机时是否会主动攻击敌对玩家下一篇:设置自动战斗配置项>
SetCustomAutoBattleConfiguration
设置自动战斗配置项

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数设置自动战斗配置项。

该函数生效需要工具后台设置全局变量"使用新的自动战斗逻辑"

SetCustomAutoBattleConfiguration.png

相关接口请参见 GetCustomAutoBattleConfiguration。

语法
Luacopy 复制
CL:SetCustomAutoBattleConfiguration(
    str,
    update
)
参数
str

string

 
自动战斗配置，格式是JSON字符串

点击自动战斗配置项定义了解更多信息。

update

bool

 
true仅更新现有

false全量替换

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制

local str = {
    MOVE = {TIMES = 3,SKILLS = {50}},
    RESTORE = {THRESHOLD = 50, INTERVAL = 3, SKILLS = {9,24}},
    BUFF = {SKILLS = {75}},
    SUMMON = {SKILLS = {95,51}},
    DEBUFF = {SKILLS = {11}},
    AOE = {NUM = 3, SKILLS = {77,10}},
    NORMAL = {SKILLS = {6,3}},
}
CL:SetCustomAutoBattleConfiguration(json.encode(str),false)

--如图所示MOVE瞬移正常，当以玩家为中心的逻辑格九宫格全部为阻挡点时，

--会自动尝试使用瞬移技能，使用时需要将地图模板表中"可穿人与可穿怪"字段关闭。

SetCustomAutoBattleConfiguration_2.png

SetCustomAutoBattleConfiguration_3.png

--如图所示治疗RESTORE正常，当血量少于设置的百分比后，间隔时间后，若玩家有设置技能链的技能，会自动释放，超过设定百分比后停止。

SetCustomAutoBattleConfiguration_4.png

--如图所示BUFF正常，玩家会自动释放设置好的BUFF。

SetCustomAutoBattleConfiguration_5.png

--如图所示召唤技能，当玩家存在召唤物时，不再释放召唤技能，可以正常释放。

SetCustomAutoBattleConfiguration_6.png

--如图所示NORMAL技能，设置技能后，条件符合时，会使用技能攻击，当蓝量不足后，玩家改为普攻攻击，当蓝量恢复至可以使用技能时，再次使用技能，可以正常释放切换。

SetCustomAutoBattleConfiguration_7.png

--如图所示群攻技能AOE，当目标怪物周围一个单位逻辑格内存在设置数量的怪物时，玩家会正常释放群攻技能。

SetCustomAutoBattleConfiguration_8.png

--如图所示DEBUFF技能正常，当目标身上没有指定buff后，会自动释放技能。

SetCustomAutoBattleConfiguration_9.png
<上一篇:设置点击地面时是否取消锁定的目标下一篇:设置玩家角色是否处于持续跑步的状态>
SetKeepRunning
设置玩家角色是否处于持续跑步的状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-03-10 00:00:00
此函数设置玩家角色是否处于持续跑步的状态。

参考 GetKeepRunning

语法
Luacopy 复制
CL:SetKeepRunning(
    _KeepRunning
)
参数
_KeepRunning

bool

 
玩家角色是否处于持续跑步的状态

true是

false否

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameMainBar.lua脚本文件中执行。
GameMainBar = {}

--……省略部分代码

function OpenAutoRun()
    local status = CL:GetKeepRunning() --获取玩家角色是否处于持续跑步的状态
    CL:SetKeepRunning(not status) --设置玩家角色是否处于持续跑步的状态
    if status then
        UI:Lua_ChatMsg("关闭持续跑步")
    else
        UI:Lua_ChatMsg("开启持续跑步")
    end
end

CL:HotKeyRegister("A", "持续跑步", "OpenAutoRun") --注册一个快捷键

GameMainBar.main()

--此示例代码运行成功如下图所示（按下快捷键“A”玩家开始持续奔跑，再次按下快捷键“A”玩家停止持续奔跑）。

SetKeepRunning.gif

SetKeepRunning.png
<上一篇:设置自动战斗配置项下一篇:自动挂机中角色周围指定范围内有怪物时不优先捡物>
SetNoPickupWhenMonstersAround
自动挂机中角色周围指定范围内有怪物时不优先捡物

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数设置在自动挂机的状态下，角色周围指定范围内若有怪物，不优先拾取掉落的物品。

语法
Luacopy 复制
CL:SetNoPickupWhenMonstersAround(
    _enable,
    _distance
)

参数
_enable

bool

 
true攻击怪物而不优先拾取掉落的物品

false优先拾取掉落的物品

_distance

int

 
逻辑格范围，数值应大于等于0

当为0时，即为角色自身所在点

当为其他数值时，以角色自身所在点为0点，向上下左右各方向扩展的逻辑格格数。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetNoPickupWhenMonstersAround(true, 4)

--如下图所示的红框即为设置的实际范围。

SetNoPickupWhenMonstersAround
<上一篇:设置玩家角色是否处于持续跑步的状态下一篇:设置玩家是否自动挂机>
SetPlayerAutoAttac
设置玩家是否自动挂机

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数设置玩家是否自动挂机。

语法
Luacopy 复制
CL:SetPlayerAutoAttac( 
    _Flg
)

参数
_Flg

bool

 
true开始挂机

false取消挂机

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPlayerAutoAttac(true) --设置玩家自动挂机

--此示例代码运行成功如下图所示。

SetPlayerAutoAttac
<上一篇:自动挂机中角色周围指定范围内有怪物时不优先捡物下一篇:设置是否使用新的点击地面行走方式>
SetPressWalk
设置是否使用新的点击地面行走方式

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-05-19 00:00:00
此函数设置是否使用新的点击地面行走方式，类似端游鼠标左键的逻辑。

此接口的效果会受到全局变量ClickGroundCanMove的影响，如果全局变量ClickGroundCanMove设置为false，则无法点击地面移动。

 

两种点击地面行走方式的区别：

新点击地面行走方式：

（1）点击1次朝指向方向走路移动1格，持续按压屏幕朝向按压方向持续行走，按压过程中可通过拖动按压位置改变移动方向；

（2）若目标点为玩家或者怪物，玩家到指定位置后不会对该目标进行攻击。

原点击地面行走方式：

（1）点击地面后自动寻路到所点击坐标，持续按压屏幕无效果；

（2）若目标点为玩家或者怪物，玩家自动寻路到指定位置后会直接对该目标进行攻击。

语法
Luacopy 复制
CL:SetPressWalk(
    flag
)
参数
flag

bool

 
是否使用新的点击地面行走方式

true是

false否

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
CL:SetPressWalk(true)

--此示例代码运行成功后，会使用新的点击地面行走方式。
<上一篇:设置玩家是否自动挂机下一篇:在一定范围内切换选中目标>
SwitchAttacObjD
在一定范围内切换选中目标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数循环切换场景中指定范围内可选中的目标类型。

在游戏中，选中相应的目标可进行攻击等动作。


设置此接口后，会优先在此接口设置的范围中搜寻可切换的目标，搜寻之后具体处理逻辑如下：

若搜寻到可切换的目标，则切换至该目标；

若未搜寻到可切换的目标，则按照接口CL:SwitchAttacObj的逻辑搜寻当前场景中可切换的目标。

语法
Luacopy 复制
CL:SwitchAttacObjD(
    _len,
    _Type
)
参数
_len

int

 
搜寻范围

单位为逻辑格

例如：角色所在位置的坐标为(10,10)，搜寻范围为5，则实际判断的搜寻点为(x,y)（其中x∈[5,15],y∈[5,15]）。

_Type

int

 
目标的类型

0人物和怪物

1只选中人物

2只选中怪物

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SwitchAttacObjD(7, 0)

--此示例代码运行成功如下图所示（玩家角色的坐标为（380,187），野狼的坐标为（386,182））。

SwitchAttacObjD.png
<上一篇:设置是否使用新的点击地面行走方式下一篇:切换选中目标>
SwitchAttacObj
切换选中目标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-30 00:00:00
此函数循环切换场景中可选中的目标类型。

在游戏中，选中相应的目标可进行攻击等动作。

若要设置在指定范围内切换选中目标，可使用接口CL:SwitchAttacObjD。

note_icon 备注
在2D手游中使用此接口后会出现无法自动识别自身攻击模式的问题，可使用全局变量SwitchAttacIsUseAtkMode设置是否使用修复后的逻辑。

语法
Luacopy 复制
CL:SwitchAttacObj( 
    _Type
)

参数
_Type

int

 
目标的类型

0人物和怪物

1只选中人物

2只选中怪物

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SwitchAttacObj(2)

--每执行一次，切换至下一个附件的目标。

SwitchAttacObj
<上一篇:在一定范围内切换选中目标下一篇:设置自动挂机时是否自动拾取全部物品>
UpdatePickUpAllItem
设置自动挂机时是否自动拾取全部物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-11-08 00:00:00
此函数设置自动挂机时是否自动拾取全部物品。

note_icon 备注
此接口仅在全局变量EnableCustomFilterMethods设置为false时有效。

语法
Luacopy 复制
CL:UpdatePickUpAllItem( 
    _Value
)

参数
_Value

bool

 
是否自动拾取全部物品

true自动拾取

false不自动拾取

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
CL:UpdatePickUpAllItem(true)
<上一篇:切换选中目标
AddAttackAutoUseSkill
添加自动施放技能链

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-04-04 00:00:00
此函数添加指定的技能链至自动施放技能列表。

语法
Luacopy 复制
CL:AddAttackAutoUseSkill( 
    _SkillLinkID
)

参数
_SkillLinkID

int

 
技能链ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddAttackAutoUseSkill(11) --以151750-手游45度测试区的技能表为例，技能连ID为11的技能链
下一篇:普攻并追击当前选中对象>
AttackCurSelectObject
普攻并追击当前选中对象

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数作用是普攻并追击当前选中对象。

note_icon 备注
攻击选中玩家时，若没有打开免shift或按下shift，则函数什么都不会做。

语法
Luacopy 复制
CL:AttackCurSelectObject()
参数
无

返回值
此函数无返回值。

 
note_icon 备注
此函数没有参数亦没有返回值，可使用CL:SetSelectByGuid等函数选中对象。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AttackCurSelectObject()

--执行接口后，免shift打开或者按住shift时，玩家普攻目标并追击。

AttackCurSelectObject.png

AttackCurSelectObject_2.png

--未开启免shift，执行代码玩家无动作。

AttackCurSelectObject_3.png
<上一篇:添加自动施放技能链下一篇:配置自动释放的BUFF技能>
ConfigureBuffAutoCaster
配置自动释放的BUFF技能

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-09-05 15:17:00
此函数配置自动释放的BUFF技能。

语法
Luacopy 复制
CL:ConfigureBuffAutoCaster(
    _Table
)
参数
_Table

table

 
自动释放的BUFF技能配置，其具体内容如下：

Luacopy 复制
local s = {}
s[123] = {} --技能链ID
s[3999] = {}
note_icon 备注
传入技能链，且不允许超过3个，按示例传递；不允许写成local s = {123, 3999}，不会生效。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local s = {}
s[3130] = {} --技能链ID
s[33031] = {} --技能链ID
-- s[30038] = {} --技能链ID
CL:ConfigureBuffAutoCaster(s)

--此示例代码运行成功如下图所示。

ConfigureBuffAutoCaster.png

ConfigureBuffAutoCaster_2.png
<上一篇:普攻并追击当前选中对象下一篇:移除自动施放技能列表中的技能链>
DelAttackAutoUseSkill
移除自动施放技能列表中的技能链

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-04-04 00:00:00
此函数移除自动施放技能列表中的技能链。

语法
Luacopy 复制
CL:DelAttackAutoUseSkill( 
    _SkillLinkID
)

参数
_SkillLinkID

int

 
技能链ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:DelAttackAutoUseSkill(11)  --以151750-手游45度测试区的技能表为例，技能连ID为11的技能链
<上一篇:配置自动释放的BUFF技能下一篇:禁用或解禁角色自身技能>
ForbidPlayerSelfSkill
禁用或解禁角色自身技能

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-04-04 00:00:00
此函数作用为禁用或解禁角色自身技能。

程序默认通过全局表LuaArg获取要设置的技能ID，具体请参见示例代码。

若无需显示技能被禁止时的提示，则可通过全局变量ShowForbidSkillTip（将其设置为false）来设置。

语法
Luacopy 复制
CL:ForbidPlayerSelfSkill( 
    _Forbid
)

参数
_Forbid

bool

 
是否禁用

true禁用技能

false开启技能

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

 
v1.2

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--程序通过LuaArg列表获取要设置的技能，填写技能ID。
local skillList =
{
    --以151750-手游45度测试区的技能表为例
	3010, --蛊毒咒技能
	3020, --神魂火符技能
}

LuaArg = skillList

CL:ForbidPlayerSelfSkill(true)

--禁用技能后，点击技能施放时，将提示“本地图无法使用该技能”。
<上一篇:移除自动施放技能列表中的技能链下一篇:设置指定职业的角色代替普攻的技能>
ForbidUseNormalAttack
设置指定职业的角色代替普攻的技能

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-06-08 00:00:00
此函数设置指定职业的角色代替普攻的技能。

用于代替普攻的技能必须为已学习技能，否则会提示“技能还没学习”的字样并且只能播放起手特效。

语法
Luacopy 复制
CL:ForbidUseNormalAttack(
    Roleid,
    Skillid
)
参数
Roleid

int

 
角色的职业

1战士

2法师

3术士

Skillid

int

 
代替普攻的技能ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:ForbidUseNormalAttack(2, 2001) --设置法师用于代替普攻的技能为“炎球术”
<上一篇:禁用或解禁角色自身技能下一篇:刷新技能的冷却时间>
ForceSkillInCD
刷新技能的冷却时间

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数刷新指定技能的冷却时间。

语法
Luacopy 复制
CL:ForceSkillInCD( 
    _SkillID
)

参数
_SkillID

unsigned int

 
技能ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ForceSkillInCD(3010) --手游45度测试区，技能“蛊毒咒”强制进入冷却

--技能“蛊毒咒”强制进入冷却。

ForceSkillInCD
<上一篇:设置指定职业的角色代替普攻的技能下一篇:获取是否开启技能自动施法全局开关>
GetAutoLockSkillEnable
获取是否开启技能自动施法全局开关

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2023-03-29 00:00:00
此函数获取是否开启技能自动施法全局开关。

参考 SetAutoLockSkillEnable SetAutoLockSkill GetAutoLockSkill

语法
Luacopy 复制
CL:GetAutoLockSkillEnable()
参数
无

返回值
bool

 
是否开启技能自动施法全局开关

true开启

false关闭

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameMainBar.lua脚本文件中执行。
GameMainBar = {}

--……省略部分代码

function OpenAutoLockSkill()
    local status = CL:GetAutoLockSkillEnable() --获取是否开启技能自动施法全局开关
    CL:SetAutoLockSkillEnable(not status) --设置是否开启技能自动施法全局开关
    if status then
        UI:Lua_ChatMsg("关闭连续施法")
    else
        UI:Lua_ChatMsg("开启连续施法")
    end
end

CL:HotKeyRegister("C", "连续施法", "OpenAutoLockSkill") --注册一个快捷键

GameMainBar.main()

--此示例代码运行成功后，按下快捷键“C”开启技能自动施法，再次按下快捷键“C”关闭技能自动施法。
<上一篇:刷新技能的冷却时间下一篇:判断指定技能是否支持自动施法>
GetAutoLockSkill
判断指定技能是否支持自动施法

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

此函数判断指定技能是否支持自动施法。

参考 SetAutoLockSkillEnable GetAutoLockSkillEnable SetAutoLockSkill

语法
Luacopy 复制
CL:GetAutoLockSkill(
    _SkillID
)
参数
_SkillID

ushort

 
技能ID

返回值
bool

 
指定技能是否支持自动施法

true支持

false不支持

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameSettingBasic.lua脚本文件中执行。
GameSettingBasic = {}

function GameSettingBasic.main()

--……省略部分代码

    GameSettingBasic.skillID = {
       --技能id
        2003,
        2123,
        2173,
    }

--……省略部分代码

    for i = 1, #GameSettingBasic.skillID do
        local name = ""
        if CL:GetSkillTemplatePropByID(GameSettingBasic.skillID[i], SKILL_PROP_NAME) then --根据ID获取技能的名称
            name = LuaRet
        end
        _GUIHandle = GUI:CheckBoxCreate(_Parent,"skillID"..i,4003030116, "连续施法："..name, 630, 50 + i*50)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, GameSettingBasic.skillID[i]) --设置复选框控件的自定义参数
            GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
            GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
            GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameSettingBasic.CheckSkillID") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
            GUI:CheckBoxSetCheck(_GUIHandle, CL:GetAutoLockSkill(GameSettingBasic.skillID[i])) --设置复选框控件的选中状态
        end
    end
    
    GameSettingBasic.UIInit(_Parent)
end

function GameSettingBasic.CheckSkillID(_Handle)
    local id = GUI:WndGetParam(_Handle) --获取复选框控件的自定义参数
    local status = GUI:CheckBoxGetCheck(_Handle) --获取复选框的选中状态
    CL:SetAutoLockSkill(id, status) --设置指定技能是否支持自动施法
end

--……省略部分代码

GameSettingBasic.main()

--此示例代码运行成功如下图所示（以技能“冰爆漩涡”为例）。

SetAutoLockSkill.png

SetAutoLockSkill.gif
GetAutoUseSkillClickTick
获取技能自动被点击的时间间隔

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dnot_support

更新时间：2023-06-02 00:00:00
此函数获取技能自动被点击的时间间隔。

参考 SetAutoUseSkillClickTick

语法
Luacopy 复制
CL:GetAutoUseSkillClickTick()
参数
无

返回值
int

 
技能自动被点击的时间间隔

单位为毫秒（ms）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetAutoUseSkillClickTick(5000) --设置技能自动被点击的时间间隔
dbg("间隔为"..CL:GetAutoUseSkillClickTick()) --获取技能自动被点击的时间间隔

--此示例代码运行成功如下图所示。

GetAutoUseSkillClickTick.png
<上一篇:判断指定技能是否支持自动施法下一篇:获取玩家身上是否存在指定的BUFF>
GetBuffIsExist
获取玩家身上是否存在指定的BUFF

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数获取玩家身上是否存在指定的BUFF。

语法
Luacopy 复制
CL:GetBuffIsExist(
    _StrRole,
    _BuffID
)
参数
_StrRole

string

 
玩家角色的GUID

_BuffID

int

 
BUFF的ID

返回值
bool

 
true指定BUFF存在

false指定BUFF不存在

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示，玩家添加了变小BUFF。
GetBuffIsExist.png
local role_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身的GUID
--获取玩家身上是否存在指定的BUFF
if CL:GetBuffIsExist(role_guid, 15104) then
    dbg("玩家拥有变小BUFF")
else
    dbg("玩家没有变小BUFF")
end

--此示例代码运行成功如下图所示。

GetBuffIsExist_2.png
<上一篇:获取技能自动被点击的时间间隔下一篇:获取BUFF剩余持续时间>
GetBuffLeftTime
获取BUFF剩余持续时间

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-06-08 00:00:00
此函数获取BUFF剩余持续时间。

语法
Luacopy 复制
CL:GetBuffLeftTime(
    _StrRole,
    _BuffID
)
参数
_StrRole

string

 
玩家角色的GUID

_BuffID

int

 
BUFF的ID

返回值
int

 
BUFF的剩余时间

单位为秒（s）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local role_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身的GUID
local buffTime = CL:GetBuffLeftTime(role_guid, 30110)
dbg("buffTime:"..buffTime)

--此示例代码运行成功如下图所示。

GetBuffLeftTime
<上一篇:获取玩家身上是否存在指定的BUFF下一篇:通过Buff索引名获取Buff信息>
GetBuffPropByKeyName
通过Buff索引名获取Buff信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-12-31 18:19:00
此函数通过Buff索引名获取Buff信息。

语法
Luacopy 复制
CL:GetBuffPropByKeyName(
    key_name,
    prop_type
)
参数
key_name

string

 
Buff索引名

prop_type

int

 
Buff的属性类型。

点击Buff属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetBuffPropByKeyName("测试buff",0)
dbg("测试buff的编号为："..LuaRet)
CL:GetBuffPropByKeyName("测试buff",3)
dbg("测试buff的组别为："..LuaRet)
CL:GetBuffPropByKeyName("测试buff",5)
dbg("测试buff的存在时限为："..LuaRet)

--此示例代码运行成功如下图所示。

GetBuffPropByKeyName.png
<上一篇:获取BUFF剩余持续时间下一篇:获取Buff属性>
GetBuffProp
获取Buff属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据Buff模板ID获取Buff属性值。

语法
Luacopy 复制
CL:GetBuffProp( 
    _BuffID,
    _PropType
)

参数
_BuffID

int

 
Buff的模板ID。

_PropType

int

 
Buff的属性类型。

点击Buff属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetBuffProp(145,1) --获取id为145的buff的名称
dbg("id为145的buff的名称："..LuaRet)

--此示例代码运行成功如下图所示。

GetBuffProp
<上一篇:通过Buff索引名获取Buff信息下一篇:获取对应技能的永久CD时间>
GetPermanentSkillCDTime
获取对应技能的永久CD时间

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-03-28 00:00:00
此函数获取对应技能的永久CD时间。

note_icon 备注
仅本次登录期间有效，即玩家返回角色选择界面或者退出游戏后失效。

语法
Luacopy 复制
CL:GetPermanentSkillCDTime(
    _SkillID
)
参数
_SkillID

unsigned short

 
技能ID

返回值
bool

 
true表示已设置对应技能的永久CD时间，并储存在变量LuaRet中，单位为毫秒（ms）。

false表示未设置对应技能的永久CD时间

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度测试区（区号151750），脚本文件RoleSkill.lua为例。
RoleSkill = {}
--……省略部分代码

function RoleSkill.SelSkill(Param)
--……省略部分代码

    _GUIHandle = GUI:WndFindWindow(_Parent,"CD")
    if _GUIHandle ~= 0 then
        GUI:RichEditClear(_GUIHandle)
        if not UI:Lua_GetSkillTemplatePropByID(SkillId,SKILL_PROP_CD) then return "err 1666"end
        local cd_time = LuaRet
        --获取对应技能的永久CD时间
        if (CL:GetPermanentSkillCDTime(SkillId)) then
            cd_time = LuaRet
        end
        local dot_num = 0
        local first = math.floor(cd_time / 1000)
        local second = cd_time/ 1000 - first
        local timeInSeconds = first + second
        if timeInSeconds > 0 then
            GUI:RichEditAppendString(_GUIHandle, "#COLOR<A:255,R:123,G:103,B:98>#".."冷却时间:#COLOR<A:255,R:35,G:211,B:0>#"..tostring(timeInSeconds).."秒")
        end
    end
--……省略部分代码

end
--……省略部分代码

RoleSkill.main()

--此示例代码运行成功如下图所示。

GetPermanentSkillCDTime.png
<上一篇:获取Buff属性下一篇:获取所有技能的熟练度>
GetPlayerSelfSkillList
获取所有技能的熟练度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数获取玩家自身角色所有技能的熟练度。

语法
Luacopy 复制
CL:GetPlayerSelfSkillList()

参数
无

 
返回值
操作结果

bool

 
true获取成功。

false获取失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的技能熟练度存储在全局变量LuaRet中。

LuaRet[i]i为技能编号（技能ID），值为对应技能的熟练度。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetPlayerSelfSkillList() then
    local skill_lv = LuaRet[1033] --“月弧弯刀”技能ID为1033
    dbg("熟练度："..skill_lv)
end

--控制台将输出：“熟练度：8”。

<上一篇:获取对应技能的永久CD时间下一篇:获取已预存技能的列表>
GetPrestoredSkillList
获取已预存技能的列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-04-22 00:00:00
此函数获取已预存技能的列表，即下图中框选部分的技能的列表。

GetPrestoredSkillList.png
语法
Luacopy 复制
CL:GetPrestoredSkillList()
参数
无

返回值
此函数无返回值。

note_icon 备注
获取的列表信息存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:GetPrestoredSkillList() --获取已预存技能的列表
dbg(""..serialize(LuaRet))

--此示例代码运行成功如下图所示。

GetPrestoredSkillList_2.png
<上一篇:获取所有技能的熟练度下一篇:获取红绿毒施放的状态>
GetRedGreenSkillState
获取红绿毒施放的状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2023-04-04 00:00:00
此函数获取装备位开销时的红绿毒施放状态。

参考 SetRedGreenSkillState

语法
Luacopy 复制
CL:GetRedGreenSkillState()
参数
无

返回值
int

 
红绿毒施放的状态

0不自动切换红绿毒

1自动切换红绿毒

2持续红毒

3持续绿毒

note_icon 备注
“持续红毒”仅在“符咒子类别”选项设置为“红毒”时生效。

“持续绿毒”仅在“符咒子类别”选项设置为“绿毒”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→基础信息→详细数据-其它类别区域。


版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameBattleSetting.lua脚本文件中执行。
GameBattleSetting = {}

function GameBattleSetting.main()

--……省略部分代码

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen0",4003030116,"取消自动红绿毒",150 + addX,300+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消自动红绿毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 0) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen1",4003030116,"自动红绿毒",20 + addX,330+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动红绿毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 1) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen2",4003030116,"持续红毒",150 + addX,330+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"持续红毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 2) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen3",4003030116,"持续绿毒",280 + addX,330+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"持续绿毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 3) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

--……省略部分代码
    
    GameSettingBasic.UIInit(_Parent)
end

--……省略部分代码

function GameBattleSetting.UIInit(_Handle)
    GameBattleSetting.WndHandle = _Handle
    GameBattleSetting.SetRedGreen(CL:GetRedGreenSkillState()) --获取复选框控件的初始状态

--……省略部分代码

end

function GameBattleSetting.RedGreenChange(_Handle)
    GameBattleSetting.SetRedGreen(GUI:WndGetParam(_Handle))
end

function GameBattleSetting.SetRedGreen(state)
    CL:SetRedGreenSkillState(state) --设置的红绿毒施放的状态
    CL:ShowTypeMsg(1, "设置红绿毒状态: "..state) --在聊天框中输出设置的红绿毒状态
    --设置RedGreen0控件、RedGreen1控件、RedGreen2控件和RedGreen3控件的选中状态不共存，只能勾选其中一个复选框控件。
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen0"), state == 0)
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen1"), state == 1)
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen2"), state == 2)
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen3"), state == 3)
end

--……省略部分代码

GameBattleSetting.main()

--此示例代码运行成功如下图所示。

SetRedGreenSkillState_2.png

SetRedGreenSkillState_3.png
<上一篇:获取已预存技能的列表下一篇:获取是否开启定向冲击>
GetRushUseMouseDir
获取是否开启定向冲击

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dsupport

更新时间：2023-04-04 00:00:00
此函数获取是否开启定向冲击。

手动施放“蛮力冲锋”技能时，具体施放方向如下：

若开启了定向冲击，则会朝向鼠标方向进行冲击；

若未开启定向冲击，则会朝向角色正前方进行冲击；

若开启了自动冲击，则会忽略是否开启定向冲击，默认朝向角色正前方进行冲击。

参考 SetRushUseMouseDir

语法
Luacopy 复制
CL:GetRushUseMouseDir()
参数
无

返回值
bool

 
是否开启定向冲击

true开启

false关闭

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameBattleSetting.lua脚本文件中执行。
GameBattleSetting = {}

function GameBattleSetting.main()

--……省略部分代码

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check_dingxiangyeman",4003030116,"定向冲击",20 + addX,100+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.Check_dingxiangyeman") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
        GUI:CheckBoxSetCheck(_GUIHandle, CL:GetRushUseMouseDir()) --使用接口CL:GetRushUseMouseDir获取当前是否开启了定向冲击，从而设置复选框控件的选中状态。
    end

--……省略部分代码
    
    GameSettingBasic.UIInit(_Parent)
end

function GameBattleSetting.Check_dingxiangyeman(_Handle)
    --之后根据复选框控件的选中状态设置是否开启定向冲击。
    local status = GUI:CheckBoxGetCheck(_Handle)
    CL:SetRushUseMouseDir(status)
end

--……省略部分代码

GameBattleSetting.main()

--此示例代码运行成功后效果如下图所示。

SetRushUseMouseDir.png

--未勾选“定向冲击”选项时，玩家手动施放“蛮力冲锋”技能的效果如下图所示。

SetRushUseMouseDir.gif

--勾选“定向冲击”选项，玩家手动施放“蛮力冲锋”技能的效果如下图所示。

SetRushUseMouseDir_2.gif
<上一篇:获取红绿毒施放的状态下一篇:获取技能配置的信息>
GetSkillDBData
获取技能配置的信息

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数根据技能ID获取该技能的配置信息。

语法
Luacopy 复制
CL:GetSkillDBData( 
    _SkillID,
    _DataType
)

参数
_SkillID

int

 
技能的ID。

_DataType

int

 
1目前仅支持获取是否攻击之前锁定的目标选项的设置。

返回值
string

 
是否攻击之前锁定的目标：

0否

1是

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取是否开启定向冲击下一篇:根据技能链ID获取技能>
GetSkillListByLinkID
根据技能链ID获取技能

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-09-27 00:00:00
此函数根据技能链ID获取技能。

语法
Luacopy 复制
CL:GetSkillListByLinkID(
    link_id
)
参数
link_id

uint16_t

 
技能链id索引名

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--技能模板表中技能链5对应的技能ID配置如下图所示。

GetSkillListByLinkID.png
CL:GetSkillListByLinkID(5)
dbg("技能链5对应的技能ID为："..serialize(LuaRet))

--此示例代码运行成功如下图所示，可以正常获取到技能链中包含的技能ID，与技能模板表中一致。

GetSkillListByLinkID_2.png
<上一篇:获取技能配置的信息下一篇:根据句柄获取技能的模板属性>
GetSkillPropByHandle
根据句柄获取技能的模板属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数根据技能的模板句柄获取该技能的模板属性。

语法
Luacopy 复制
CL:GetSkillPropByHandle(
    _SkillHandleID,
    _PropType
)

参数
_SkillHandleID

int

 
技能的模板句柄。

_PropType

int

 
技能的模板属性类型。

请点击技能模板属性，以了解更多信息。

返回值
操作结果

bool

 
true获取成功。

false获取失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local skill_temp_handle = CL:GetSkillTemplateHandleByID(1033)
if CL:GetSkillPropByHandle(skill_temp_handle, SKILL_PROP_KEYNAME) then
    dbg("该技能的索引名为："..LuaRet)
end

--控制台将输出：“该技能的索引名为：月弧弯刀4级”。
<上一篇:根据技能链ID获取技能下一篇:获取指定技能的快捷键索引>
GetSkillShortCut
获取指定技能的快捷键索引

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-12-10 00:00:00
此函数获取指定技能的快捷键索引。

语法
Luacopy 复制
CL:GetSkillShortCut(
    skill_id
)
参数
skill_id

uint16

 
技能ID

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的技能的快捷键索引存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
--技能ID为1063的技能为“裂地斩”
CL:SetSkillShortCut(15,1063) --设置技能“裂地斩”的快捷键
CL:GetSkillShortCut(1063) --获取技能“裂地斩”的快捷键
dbg("技能“裂地斩”的快捷键索引为："..LuaRet)

--此示例代码运行成功如下图所示，技能“裂地斩”的快捷键设置为组合按键“CTRL+F8”，同时控制台会输出如下内容。

SetSkillShortCut_2.png

GetSkillShortCut.png
<上一篇:根据句柄获取技能的模板属性下一篇:根据ID获取技能的模板句柄>
GetSkillTemplateHandleByID
根据ID获取技能的模板句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据技能的ID获取该技能的模板句柄。

语法
Luacopy 复制
CL:GetSkillTemplateHandleByID( 
    _ID
)

参数
_ID

int

 
技能的ID。

返回值
int

 
技能的模板句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local skill_temp_handle = CL:GetSkillTemplateHandleByID(1033)
dbg("技能的模板句柄为："..skill_temp_handle)

--控制台将输出：“技能的模板句柄为：611337744”。
<上一篇:获取指定技能的快捷键索引下一篇:根据ID获取技能的模板属性>
GetSkillTemplatePropByID
根据ID获取技能的模板属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数根据技能的ID获取该技能的模板属性。

语法
Luacopy 复制
CL:GetSkillTemplatePropByID( 
    _ID,
    _PropType
)

参数
_ID

int

 
技能的ID。

_PropType

int

 
技能的模板属性类型。

请点击技能模板属性，以了解更多信息。

返回值
操作结果

bool

 
true获取成功。

false获取失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetSkillTemplatePropByID(1033, SKILL_PROP_KEYNAME) then
    dbg("该技能的索引名为："..LuaRet)
end

--控制台将输出：“该技能的索引名为：月弧弯刀4级”。
<上一篇:根据ID获取技能的模板句柄下一篇:设置自动施放技能的间隔>
PlayerSelfAddAutoSkillInterval
设置自动施放技能的间隔

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2024-01-11 00:00:00
如使用了接口PlayerSelfAddAutoSkill添加玩家角色的技能至自动施放技能列表后，可再使用该接口设置自动施放的间隔。

设置后，技能会在每次冷却时间后，在所设置的间隔后再次施放。

语法
Luacopy 复制
CL:PlayerSelfAddAutoSkillInterval( 
    _SkillID,
    _Interval
)

参数
_SkillID

int

 
技能ID

_Interval

int

 
自动施放技能的间隔，单位为毫秒（ms）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:PlayerSelfAddAutoSkill(3010) --以151750-手游45度测试区的技能表为例，蛊毒咒技能
CL:PlayerSelfAddAutoSkillInterval(3010,5000) --设置自动施放技能的间隔为5秒
<上一篇:根据ID获取技能的模板属性下一篇:添加自动施放技能>
PlayerSelfAddAutoSkill
添加自动施放技能

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-04-04 00:00:00
此函数添加玩家角色自身的技能至自动施放技能列表。

设置后，该技能会在每次冷却时间后再次自动施放。

语法
Luacopy 复制
CL:PlayerSelfAddAutoSkill( 
    _SkillID
)

参数
_SkillID

int

 
技能ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:PlayerSelfAddAutoSkill(3010) --以151750-手游45度测试区的技能表为例，蛊毒咒技能
<上一篇:设置自动施放技能的间隔下一篇:移除自动施放技能>
PlayerSelfRemoveAutoSkill
移除自动施放技能

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-04-04 00:00:00
此函数从自动施放技能列表移除指定的玩家角色技能。

语法
Luacopy 复制
CL:PlayerSelfRemoveAutoSkill( 
    _SkillID
)

参数
_SkillID

int

 
技能ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:PlayerSelfRemoveAutoSkill(3010) --以151750-手游45度测试区的技能表为例，蛊毒咒技能
<上一篇:添加自动施放技能下一篇:自定义角色在自动挂机时施放的技能>
SetAutoAttacSkill
自定义角色在自动挂机时施放的技能

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2023-11-08 00:00:00
此函数作用为自定义法师或者术士角色在自动挂机时施放的技能。

调用此函数后，则会开启自动挂机时使用自定义技能链的功能。

该功能与原自动挂机技能施放的逻辑是相对独立的，即开启自动挂机时使用自定义技能链的功能时会关闭原自动挂机技能施放的逻辑。

语法
Luacopy 复制
CL:SetAutoAttacSkill(
    _Job,
    _AOE,
    _SkillList
)
参数
_Job

int

 
角色的职业

2法师

3术士

_AOE

bool

 
是否为范围性作用技能

true是

false否

_SkillList

string

 
技能链列表

note_icon 备注
若此参数的配置值为""，则代表关闭自动挂机使用自定义技能链的功能。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetAutoAttacSkill(3,false,"6") --设置术士角色在自动挂机时施放的技能
<上一篇:移除自动施放技能下一篇:设置是否开启技能自动施法全局开关>
SetAutoLockSkillEnable
设置是否开启技能自动施法全局开关

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2023-03-29 00:00:00
此函数设置是否开启技能自动施法全局开关。

开启技能自动施法全局开关后，需要使用接口CL:SetAutoLockSkill设置支持自动施法的技能，自动施法功能才可生效。

参考 GetAutoLockSkillEnable

语法
Luacopy 复制
CL:SetAutoLockSkillEnable(
    _Check
)
参数
_Check

bool

 
是否开启技能自动施法全局开关

true开启

false关闭

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameMainBar.lua脚本文件中执行。
GameMainBar = {}

--……省略部分代码

function OpenAutoLockSkill()
    local status = CL:GetAutoLockSkillEnable() --获取是否开启技能自动施法全局开关
    CL:SetAutoLockSkillEnable(not status) --设置是否开启技能自动施法全局开关
    if status then
        UI:Lua_ChatMsg("关闭连续施法")
    else
        UI:Lua_ChatMsg("开启连续施法")
    end
end

CL:HotKeyRegister("C", "连续施法", "OpenAutoLockSkill") --注册一个快捷键

GameMainBar.main()

--此示例代码运行成功后，按下快捷键“C”开启技能自动施法全局开关，再次按下快捷键“C”关闭技能自动施法全局开关。
<上一篇:自定义角色在自动挂机时施放的技能下一篇:设置指定技能是否支持自动施法>
SetAutoLockSkill
设置指定技能是否支持自动施法

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2023-03-29 00:00:00
此函数设置指定技能是否支持自动施法，设置后该技能可对指定目标自动连续施法，目标死亡后停止施法。

需要先使用接口CL:SetAutoLockSkillEnable开启技能自动施法全局开关后，再使用此接口设置支持自动施法的技能，自动施法功能才可生效。

参考 GetAutoLockSkill

语法
Luacopy 复制
CL:SetAutoLockSkill(
    _SkillID,
    _Check
)
参数
_SkillID

ushort

 
技能ID

_Check

bool

 
是否支持自动施法

true支持

false不支持

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameSettingBasic.lua脚本文件中执行。
GameSettingBasic = {}

function GameSettingBasic.main()

--……省略部分代码

    GameSettingBasic.skillID = {
       --技能id
        2003,
        2123,
        2173,
    }

--……省略部分代码

    for i = 1, #GameSettingBasic.skillID do
        local name = ""
        if CL:GetSkillTemplatePropByID(GameSettingBasic.skillID[i], SKILL_PROP_NAME) then --根据ID获取技能的名称
            name = LuaRet
        end
        _GUIHandle = GUI:CheckBoxCreate(_Parent,"skillID"..i,4003030116, "连续施法："..name, 630, 50 + i*50)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, GameSettingBasic.skillID[i]) --设置复选框控件的自定义参数
            GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
            GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
            GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameSettingBasic.CheckSkillID") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
            GUI:CheckBoxSetCheck(_GUIHandle, CL:GetAutoLockSkill(GameSettingBasic.skillID[i])) --设置复选框控件的选中状态
        end
    end
    
    GameSettingBasic.UIInit(_Parent)
end

function GameSettingBasic.CheckSkillID(_Handle)
    local id = GUI:WndGetParam(_Handle) --获取复选框控件的自定义参数
    local status = GUI:CheckBoxGetCheck(_Handle) --获取复选框的选中状态
    CL:SetAutoLockSkill(id, status) --设置指定技能是否支持自动施法
end

--……省略部分代码

GameSettingBasic.main()

--此示例代码运行成功如下图所示（以技能“冰爆漩涡”为例）。

SetAutoLockSkill.png

SetAutoLockSkill.gif
<上一篇:设置是否开启技能自动施法全局开关下一篇:设置技能自动被点击的时间间隔>
SetAutoUseSkillClickTick
设置技能自动被点击的时间间隔

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

更新时间：2023-06-02 00:00:00
选中目标并点击一次技能后，该技能可自动被点击。此接口可设置技能自动被点击的时间间隔。

此接口作用与全局变量AutoUseSkillClickTick作用相同，但此接口可在设置后立即生效，全局变量AutoUseSkillClickTick则需要在进入游戏之前设置才可生效。

此接口不支持开关类、召唤类和二段式类型的技能。

参考 GetAutoUseSkillClickTick

语法
Luacopy 复制
CL:SetAutoUseSkillClickTick(
    _ClickTick
)
参数
_ClickTick

int

 
时间间隔

单位为毫秒（ms），默认值为0（关闭技能自动被点击的功能）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
CL:SetAutoUseSkillClickTick(1000) --设置技能自动被点击的事件为1000ms（即1s）

--此示例代码运行后即时生效，无需重新进入游戏。
<上一篇:设置指定技能是否支持自动施法下一篇:设置手游自动练功的技能>
SetMobileTrainingSkillID
设置手游自动练功的技能

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数设置手游自动练功时施放的技能。

具体如何配置手游自动练功功能，可参考FAQ说明：如何设置手游自动练功功能。

语法
Luacopy 复制
CL:SetMobileTrainingSkillID(
    skillID
)
参数
skillID

int

 
技能ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMobileTrainingSkillID(185） --设置手游自动练功时施放的技能
<上一篇:设置技能自动被点击的时间间隔下一篇:设置红绿毒施放的状态>
SetRedGreenSkillState
设置红绿毒施放的状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2023-04-04 00:00:00
此函数设置并保存装备位开销时的红绿毒施放状态。

参考 GetRedGreenSkillState

语法
Luacopy 复制
CL:SetRedGreenSkillState(
    _State
)
参数
_State

int

 
红绿毒施放的状态

0不自动切换红绿毒

1自动切换红绿毒

2持续红毒

3持续绿毒

note_icon 备注
“持续红毒”仅在“符咒子类别”选项设置为“红毒”时生效。

“持续绿毒”仅在“符咒子类别”选项设置为“绿毒”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→基础信息→详细数据-其它类别区域。


返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameBattleSetting.lua脚本文件中执行。
GameBattleSetting = {}

function GameBattleSetting.main()

--……省略部分代码

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen0",4003030116,"取消自动红绿毒",150 + addX,300+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消自动红绿毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 0) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen1",4003030116,"自动红绿毒",20 + addX,330+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动红绿毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 1) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen2",4003030116,"持续红毒",150 + addX,330+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"持续红毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 2) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"RedGreen3",4003030116,"持续绿毒",280 + addX,330+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"持续绿毒") --设置复选框控件的文本内容
        GUI:WndSetParam(_GUIHandle, 3) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:CheckBoxSetCheck(_GUIHandle, false) --设置复选框控件为未选中状态
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.RedGreenChange") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

--……省略部分代码
    
    GameSettingBasic.UIInit(_Parent)
end

--……省略部分代码

function GameBattleSetting.UIInit(_Handle)
    GameBattleSetting.WndHandle = _Handle
    GameBattleSetting.SetRedGreen(CL:GetRedGreenSkillState()) --获取复选框控件的初始状态

--……省略部分代码

end

function GameBattleSetting.RedGreenChange(_Handle)
    GameBattleSetting.SetRedGreen(GUI:WndGetParam(_Handle))
end

function GameBattleSetting.SetRedGreen(state)
    CL:SetRedGreenSkillState(state) --设置的红绿毒施放的状态
    CL:ShowTypeMsg(1, "设置红绿毒状态: "..state) --在聊天框中输出设置的红绿毒状态
    --设置RedGreen0控件、RedGreen1控件、RedGreen2控件和RedGreen3控件的选中状态不共存，只能勾选其中一个复选框控件。
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen0"), state == 0)
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen1"), state == 1)
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen2"), state == 2)
    GUI:CheckBoxSetCheck(GetWindow(GameBattleSetting.WndHandle, "RedGreen3"), state == 3)
end

--……省略部分代码

GameBattleSetting.main()

--此示例代码运行成功如下图所示。

SetRedGreenSkillState_2.png

SetRedGreenSkillState_3.png
<上一篇:设置手游自动练功的技能下一篇:自定义BUFF的颜色>
SetRoleBuffColor
自定义BUFF的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-11-03 16:12:00
此函数作用为自定义角色添加BUFF时的模型变色效果。

语法
Luacopy 复制
CL:SetRoleBuffColor(
    _Colorid,
    _R,
    _G,
    _B,
    _A
)
参数
_Colorid

int

 
BUFF颜色ID

范围为7~206

SetRoleBuffColor.png
note_icon 备注
此参数需要与Buff模板表中的“模型变色”字段括号中的取值一致。

对应选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表区域。

自定义颜色必须设置index为0的初始颜色。

Luacopy 复制
CL:SetRoleBuffColor(0,255,255,255,255) --设置初始颜色
CL:SetRoleBuffColor(7,255,180,0,255) --设置自定义颜色
_R

int

 
红色的颜色值

范围为0~255

_G

int

 
绿色的颜色值

范围为0~255

_B

int

 
蓝色的颜色值

范围为0~255

_A

int

 
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
CL:SetRoleBuffColor(8,255,180,0,255)

--此示例代码运行成功后，添加BUFF前的效果如下图所示。

SetRoleBuffColor_3.png

--此示例代码运行成功后，添加配置好的BUFF后的效果如下图所示。

SetRoleBuffColor_2.png
<上一篇:设置红绿毒施放的状态下一篇:设置角色身上的BUFF描述>
SetRoleBuffTipDesc
设置角色身上的BUFF描述

更新时间：2022-06-08 00:00:00
此函数根据角色ID和BUFFID设置角色身上的BUFF描述。

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

语法
Luacopy 复制
CL:SetRoleBuffTipDesc(
    _RoleGUID,
    _BuffID,
    _BuffTipDesc
)
参数
_RoleGUID

string

 
角色的GUID

_BuffID

int

 
角色身上的BUFFID

_BuffTipDesc

string

 
要设置的BUFF描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

 
v1.2

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--TipLayout.lua文件
--……省略部分代码

function tipLayoutFunctionBuff()
--……省略部分代码

    if not UI:Lua_GetBuffProp(BuffID,BUFF_PROP_TIPS) then return "err 1713"end
    ret = ret..tipText2(LuaRet.."\n", nil, "system")
	
    --设置在BUFF的Tips中显示
    local desc = GetTipParam("BUFFTIPDESC")
    if desc ~= "" then
        ret = ret..tipSet(nil, 4)..tipText(desc.."\n")
    end
--……省略部分代码
end

--……省略部分代码

--OtherRoleHeadInfo.lua文件
OtherRoleHeadInfo = {}
--……省略部分代码

function OtherRoleHeadInfo.onChoosePlayer()
    local playerGUID = LuaParam[2]
    local guidType = LuaParam[1]
    CL:SetRoleBuffTipDesc(playerGUID, 201, "免疫伤害") --根据角色ID和BUFFID设置角色身上的BUFF描述
--……省略部分代码
end

--……省略部分代码
OtherRoleHeadInfo.main()

--此示例代码运行成功如下图所示。

SetRoleBuffTipDesc.png
<上一篇:自定义BUFF的颜色下一篇:设置技能“蛮力冲锋”动作的播放倍速>
SetRushActionRate
设置技能“蛮力冲锋”动作的播放倍速

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数设置施放技能“蛮力冲锋”时人物动作的播放倍速。

语法
Luacopy 复制
CL:SetRushActionRate(
    Rate
)
参数
Rate

float

 
人物动作的播放倍速（以人物的跑步速率为基础参照值）

1人物动作以人物的跑步速率进行播放

1.5人物动作以人物的跑步速率的1.5倍进行播放（为默认值）

2人物动作以人物的跑步速率的2倍进行播放

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetRushActionRate(2)

--此示例代码运行后，当角色施放技能“蛮力冲锋”时，人物的动作以人物的跑步速率的2倍进行播放。
<上一篇:设置角色身上的BUFF描述下一篇:设置“蛮力冲锋”技能残影的生成效果>
SetRushTrailConfig
设置“蛮力冲锋”技能残影的生成效果

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-02-24 00:00:00
此函数设置“蛮力冲锋”技能残影的生成效果。

此接口仅在全局变量EnableRushTrail设置为true时生效。

SetRushTrailConfig.png
语法
Luacopy 复制
CL:SetRushTrailConfig(
    config
)
参数
config

string

 
残影生成效果对应的字符串

此参数为字符串格式，值之间用英文逗号（“,”）隔开，格式为："alphaBegin,distance"。

具体说明如下：

1.字符串中的第1个值（alphaBegin）：残影生成时的透明度，范围为0-255，默认值为250；

2.字符串中的第2个值（distance）：残影播放的帧间距（即每隔几帧生成残影），范围为1-6，默认值为3。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
distance帧间隔范围修改为1-6

示例代码
Luacopy 复制
CL:SetRushTrailConfig("250,3") --设置残影生成时的透明度为250，且每隔3帧生成一次残影。
<上一篇:设置技能“蛮力冲锋”动作的播放倍速下一篇:设置是否开启定向冲击>
SetRushUseMouseDir
设置是否开启定向冲击

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dsupport

更新时间：2023-04-04 00:00:00
此函数设置是否开启定向冲击。

手动施放“蛮力冲锋”技能时，具体施放方向如下：

若开启了定向冲击，则会朝向鼠标方向进行冲击；

若未开启定向冲击，则会朝向角色正前方进行冲击；

若开启了自动冲击，则会忽略是否开启定向冲击，默认朝向角色正前方进行冲击。

参考 GetRushUseMouseDir

语法
Luacopy 复制
CL:SetRushUseMouseDir(
    _Check
)
参数
_Check

bool

 
是否开启定向冲击

true开启

false关闭

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameBattleSetting.lua脚本文件中执行。
GameBattleSetting = {}

function GameBattleSetting.main()

--……省略部分代码

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check_dingxiangyeman",4003030116,"定向冲击",20 + addX,100+ addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0) --设置窗体控件的自定义参数
        GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameBattleSetting.Check_dingxiangyeman") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
        GUI:CheckBoxSetCheck(_GUIHandle, CL:GetRushUseMouseDir()) --使用接口CL:GetRushUseMouseDir获取当前是否开启了定向冲击，从而设置复选框控件的选中状态。
    end

--……省略部分代码
    
    GameSettingBasic.UIInit(_Parent)
end

function GameBattleSetting.Check_dingxiangyeman(_Handle)
    --之后根据复选框控件的选中状态设置是否开启定向冲击。
    local status = GUI:CheckBoxGetCheck(_Handle)
    CL:SetRushUseMouseDir(status)
end

--……省略部分代码

GameBattleSetting.main()

--此示例代码运行成功后效果如下图所示。

SetRushUseMouseDir.png

--未勾选“定向冲击”选项时，玩家手动施放“蛮力冲锋”技能的效果如下图所示。

SetRushUseMouseDir.gif

--勾选“定向冲击”选项，玩家手动施放“蛮力冲锋”技能的效果如下图所示。

SetRushUseMouseDir_2.gif
<上一篇:设置“蛮力冲锋”技能残影的生成效果下一篇:设置优先使用的技能>
SetSkillFirstID
设置优先使用的技能

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2022-07-01 00:00:00
此函数设置角色优先使用的技能，如在正常不挂机的情况下打怪。

此接口仅在全局变量MageTaoFirstUseSkill设置为true时生效。

语法
Luacopy 复制
CL:SetSkillFirstID( 
    _Job,
    _SkillID
)

参数
_Job

int

 
角色的职业

2法师

3术士

note_icon 备注
暂不支持战士职业。

_SkillID

int

 
技能的ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetSkillFirstID(2,1053) --如在手游60度区，设置技能“烈焰斩”优先使用
<上一篇:设置是否开启定向冲击下一篇:设置技能栏中指定技能的快捷键>
SetSkillHotKeyMap
设置技能栏中指定技能的快捷键

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

更新时间：2023-08-04 00:00:00
此函数设置技能栏中指定技能的快捷键。

note_icon 备注
技能栏对应的控件在SkillBar.lua脚本文件中定义，为Skill0控件-Skill29控件。

其中，各个控件对应的技能栏中技能的默认快捷键说明如下：

Skill0控件-Skill9控件对应的技能栏中技能默认快捷键依次为1-9，0；

Skill10控件-Skill19控件对应的技能栏中技能默认快捷键依次为Ctrl+1~9，Ctrl+0；

Skill20控件-Skill29控件对应的技能栏中技能默认快捷键依次为Alt+1~9，Alt+0。

语法
Luacopy 复制
CL:SetSkillHotKeyMap(
    _Index,
    _KeyStr
)
参数
_Index

int

 
技能栏位置索引（范围为0-29）

SkillBar.lua脚本文件中的Skill0控件的索引值为0，以此类推。

_KeyStr

string

 
快捷键字符串（支持“主键”或者“附加键 + 主键”的形式）

主键：主键盘上字母键和数字键（0-9），F1-F12，以及符号`-=[]\;',./

附加键：CTRL键，SHIFT键，ALT键

例如：可以设置快捷键为"Q"或者"CTRL + F1"。

caution_icon 注意
快捷键字符串中的字母都为大写格式，否则不会生效。

组合键（“附加键 + 主键”）中的“＋”号前后各有一个空格，须按照规定格式填写（不能遗漏“＋”号前后的空格），否则不会生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
--将以下示例代码放在SkillBar.lua脚本文件中执行。
SkillBar = {}
function SkillBar.main()
    local _Parent = LuaGlobal["AttachPartent"]
    --设置有多少个技能框，默认为10个，最多为30个。
    GUI:WndSetUserData(_Parent, 30, 9) 

    local keyTable = {
        "Q","W","E","R","T",
        "CTRL + Q","CTRL + W","CTRL + E","CTRL + R","CTRL + T",
        "SHIFT + Q","SHIFT + W","SHIFT + E","SHIFT + R","SHIFT + T",
        "ALT + Q","ALT + W","ALT + E","ALT + R","ALT + T",
        "F1","F2","F3","F4","F5",
        "[","]","\\",";","'",
    }
    for i = 1, 30 do 
        CL:SetSkillHotKeyMap(i - 1,keyTable[i]) --设置技能栏中指定技能的快捷键
    end

--……省略部分代码

end

--……省略部分代码

SkillBar.main()

--此示例代码运行成功后，会keyTable中的顺序设置指定技能的快捷键。

--例如：Skill0控件对应的技能栏中技能快捷键为“Q”。
<上一篇:设置优先使用的技能下一篇:设置技能图标映射>
SetSkillImageIDMap
设置技能图标映射

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2023-03-29 00:00:00
此函数设置技能图标映射。

如在手游中，技能图标资源图外框为圆形，和端游中的方形外框稍有区别。可通过此函数设置映射关系。设置后，实际显示映射目标的图片资源。

icon_mobile icon_pc

语法
Luacopy 复制
CL:SetSkillImageIDMap( 
    _SrcImageID,
    _DecImageID
)

参数
_SrcImageID

unsigned int

 
源图片资源的ID。

_DecImageID

unsigned int

 
目标图片资源的ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetSkillImageIDMap(1892000009, 1850200012) --工具后台设置了技能图标资源1892000009，通过设置映射，游戏中实际显示的是资源1850200012。
<上一篇:设置技能栏中指定技能的快捷键下一篇:直接修改<设置某个技能是否根据鼠标选择的落点进行施放>的开关项>
SetSkillLockTargetListSetting
直接修改<设置某个技能是否根据鼠标选择的落点进行施放>的开关项

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2025-02-24 00:00:00
此函数作用是直接修改<设置某个技能是否根据鼠标选择的落点进行施放>的开关项。

note_icon 备注
对于同一技能链的一组技能ID，其模板表该设置选项应该一致。

详细设置参考如何在游戏设置中添加技能是否根据鼠标落点施放的选项？

语法
Luacopy 复制
CL:SetSkillLockTargetListSetting(
    index,
    val
)
参数
index

uint

 
复选框数字编号

val

uint

 
设置值

-1翻转设置（原来打开的关闭，原来关闭的打开）

0关闭

1打开

返回值
bool

 
true修改成功。

false修改失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在技能模版表的基础配置中设置技能根据鼠标的落点进行释放
SetSkillLockTargetListSetting.png

--编辑脚本文件GameBattleSetting.lua，在GameBattleSetting.main()方法中添加“自动巨石火轮”的复选框，设置复选框数字编号为37
GameBattleSetting = {}
--省略部分代码……
function GameBattleSetting.main()
    --省略部分代码……
_GUIHandle = GUI:CheckBoxCreate(_Parent, "SkillCheck37", 4010200086, "自动巨石火轮", posX + intervalX, posY + intervalY)
if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, 0xFFFFB783)
        GUI:WndSetVisible(_GUIHandle, job == 1)
end
    --省略部分代码……
    GameBattleSetting.UIInit(_Parent)
end


--添加全局变量LockTargetSkillList至LogicFunction.lua中的LoadLuaClientCfg()方法中。
function LoadLuaClientCfg()
    LuaGlobal["LockTargetSkillList"] = "37,34008"
end
LoadLuaClientCfg()

--调用接口CL:SetSkillLockTargetListSetting()，设置参数val值
if CL:SetSkillLockTargetListSetting(37, -1) then
    dbg("设置成功")
else
    dbg("设置失败")
end

--当接口CL:SetSkillLockTargetListSetting()的参数val值为0时，关闭技能根据鼠标选择的落点进行释放，点击技能后会对已选择的攻击目标立即释放。

SetSkillLockTargetListSetting_2.png
--当接口CL:SetSkillLockTargetListSetting()的参数val值为1时，打开技能根据鼠标选择的落点进行释放，点击技能后不会立即释放，需根据玩家选择的落点（地面或者攻击目标）进行释放。

SetSkillLockTargetListSetting_3.png
--当接口CL:SetSkillLockTargetListSetting()的参数val值为-1时，原来打开的关闭，原来关闭的打开。
<上一篇:设置技能图标映射下一篇:设置指定技能的快捷键>
SetSkillShortCut
设置指定技能的快捷键

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-12-10 00:00:00
此函数设置指定技能的快捷键。

caution_icon 注意
一个快捷键只能对应一种技能。

若不同的技能设置了相同的快捷键，则后设置的内容会覆盖之前设置的内容。

若同一技能设置了不同的快捷键，则后设置的内容会覆盖之前设置的内容。

语法
Luacopy 复制
CL:SetSkillShortCut(
    short_cut_key_index,
    skill_id
)
参数
short_cut_key_index

uint

 
快捷键索引

0-7分别代表按键F1-F8

8-15分别代表组合按键CTRL+F1-CTRL+F8

skill_id

uint16

 
技能ID

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
CL:SetSkillShortCut(15,1063) --设置技能“裂地斩”的快捷键

--此示例代码运行前，技能“裂地斩”未设置快捷键，效果如下图所示。

SetSkillShortCut.png

--此示例代码运行后，技能“裂地斩”的快捷键设置为组合按键“CTRL+F8”，效果如下图所示。

SetSkillShortCut_2.png
<上一篇:直接修改<设置某个技能是否根据鼠标选择的落点进行施放>的开关项下一篇:清除技能栏中绑定的技能或道具>
SkillBarClearDataByPos
清除技能栏中绑定的技能或道具

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-03-28 00:00:00
此函数清除技能栏中绑定的技能或道具。

语法
Luacopy 复制
CL:SkillBarClearDataByPos(
    _Pos
)
参数
_Pos

int

 
技能栏的位置

0代表第一个位置，以此类推。

返回值
bool

 
true清除成功

false清除失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
for i = 0, 8 do
    CL:SkillBarClearDataByPos(i)
end

--此示例代码运行成功前如下图所示。

SkillBarClearDataByPos1

--此示例代码运行成功后如下图所示。

SkillBarClearDataByPos2
<上一篇:设置指定技能的快捷键下一篇:获取技能栏指定位置物品的ID>
SkillBarGetItemIdByPos
获取技能栏指定位置物品的ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取技能栏指定位置物品的ID。

语法
Luacopy 复制
CL:SkillBarGetItemIdByPos( 
    _Pos
)

参数
_Pos

int

 
技能栏的位置。

0代表第一个位置，以此类推。

返回值
unsigned int

 
手游返回规则：

指定的位置存在数据且类型是物品，则返回该物品的ID，否则返回0。

端游返回规则：

指定的位置存在数据，则返回该物品或技能的ID，否则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_id = CL:SkillBarGetItemIdByPos(0)
dbg("技能栏第一个项目的ID为："..item_id)
<上一篇:清除技能栏中绑定的技能或道具下一篇:获取技能栏指定位置技能的ID>
SkillBarGetSkillIdByPos
获取技能栏指定位置技能的ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取技能栏指定位置技能的ID。

语法
Luacopy 复制
CL:SkillBarGetSkillIdByPos( 
    _Pos
)

参数
_Pos

int

 
技能栏的位置。

0代表第一个位置，以此类推。

返回值
unsigned int

 
指定的位置存在数据且类型是技能，则返回该技能的ID，否则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_id = CL:SkillBarGetSkillIdByPos(0)
if item_id == 0 then
    dbg("技能栏第一个项目为空或者不是技能")
else
    dbg("技能栏第一个技能的ID为："..item_id)
end
<上一篇:获取技能栏指定位置物品的ID下一篇:获取技能栏指定位置的数据类型>
SkillBarGetTypeByPos
获取技能栏指定位置的数据类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取技能栏指定位置的数据类型。

语法
Luacopy 复制
CL:SkillBarGetTypeByPos( 
    _Pos
)

参数
_Pos

int

 
技能栏的位置。

0代表第一个位置，以此类推。

返回值
属性

int

 
如指定的位置有存在数据，则返回其类型。否则返回0。

1物品

2技能

3英雄物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_type = CL:SkillBarGetTypeByPos(0)
if item_type == 0 then
    dbg("技能栏第一个项目为空")
else
    dbg("技能栏第一个项目的数据类型为："..item_type)
end
<上一篇:获取技能栏指定位置技能的ID下一篇:设置技能栏指定位置的数据>
SkillBarSetDataByPos
设置技能栏指定位置的数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置技能栏中指定位置的数据类型。

语法
Luacopy 复制
CL:SkillBarSetDataByPos( 
    _Pos,
    _Type,
    _TemplateID
)

参数
_Pos

int

 
技能栏的位置。

0代表第一个位置，以此类推。

_Type

int

 
数据的类型。

1物品

2技能

_TemplateID

int

 
物品或技能的ID。

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
if CL:SkillBarSetDataByPos(1, 1, 65504) then
    dbg("设置成功")
else
    dbg("设置失败")
end

--例如，设置第一位置为金条（ID在端游45度测试区为65504），效果如下图。

SkillBarSetDataByPos
<上一篇:获取技能栏指定位置的数据类型
CompareBetter
判断装备是否更优秀

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数判断指定的装备是否比玩家自己身上同类物品的品质更优秀。

语法
Luacopy 复制
CL:CompareBetter( 
    _ItemGUID
)

参数
_ItemGUID

string

 
物品的GUID。

返回值
bool

 
返回比较结果，更优秀为true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local itemGUIDTable = {}
if CL:GetPackageItemGUIDList() then --获取背包中的物品GUID列表
    itemGUIDTable = LuaRet
end

if CL:CompareBetter(itemGUIDTable[1]) then --判断第一个物品的品质
    dbg("品质高于自己身上装备！")
else
    dbg("品质低于自己身上装备！")
end

--根据自身的装备情况，控制台将会输出比较结果。
下一篇:获取破损装备列表>
GetBrokenEquiment
获取破损装备列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取破损装备的信息列表。

语法
Luacopy 复制
CL:GetBrokenEquiment()

参数
无

 
返回值
int

 
破损装备的数量。

如果破损装备数量大于0，获取的信息存储在全局变量LuaRet中。

i破损装备的索引号。

LuaRet[i][1]破损装备的描述，包含名称和耐久度值。

LuaRet[i][2]颜色RBG的十进制数值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local num_of_broken_equip = CL:GetBrokenEquiment()
dbg("第一个破损装备描述："..LuaRet[1][1])
dbg("第一个破损装备颜色："..LuaRet[1][2])

--例如，控制台将输出：
第一个破损装备描述：蚀魔靴子 0 /35000
第一个破损装备颜色：16711680
<上一篇:判断装备是否更优秀下一篇:获取角色自身装备的句柄列表>
GetEquimentItemDataList
获取角色自身装备的句柄列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取角色自身所有装备的GUIData句柄列表。

语法
Luacopy 复制
CL:GetEquimentItemDataList()

参数
无

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的信息存储在LuaRet中。

LuaRet[i]第i件装备的GUIData句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetEquimentItemDataList() then
    dbg("第一件装备GUIData句柄："..LuaRet[1])
    dbg("第二件装备GUIData句柄："..LuaRet[2])
    dbg("第三件装备GUIData句柄："..LuaRet[3])
end 

--此示例代码运行成功如下图所示。

GetEquimentItemDataList
<上一篇:获取破损装备列表下一篇:获取当前玩家指定装备位装备的GUIData句柄>
GetEquimentItemDataPart
获取当前玩家指定装备位装备的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前玩家（即玩家自身）指定装备位的装备的GUIData句柄。

语法
Luacopy 复制
CL:GetEquimentItemDataPart( 
    _PartType
)

参数
_PartType

int

 
装备位

返回值
int

 
装备的GUIData句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ItemCtrlHandle =CL:GetEquimentItemDataPart(1)
dbg("ItemGUIData句柄："..ItemCtrlHandle)

--此示例代码运行成功如下图所示。

GetEquimentItemDataPart
<上一篇:获取角色自身装备的句柄列表下一篇:获取指定等级的精炼套装属性>
GetItemRefineData
获取指定等级的精炼套装属性

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2022-01-14 00:00:00
此函数获取指定等级的精炼套装属性。

语法
Luacopy 复制
CL:GetItemRefineData(
    Level
)
参数
Level

int

 
精炼等级

返回值
此函数无返回值。

note_icon 备注
获取的属性信息存储在全局变量LuaRet中。

LuaRet[1]精炼套装属性1

LuaRet[2]精炼套装属性值1

LuaRet[3]精炼套装属性2

LuaRet[4]精炼套装属性值2

LuaRet[5]精炼套装属性3

LuaRet[6]精炼套装属性值3

LuaRet[7]精炼套装属性4

LuaRet[8]精炼套装属性值4

LuaRet[9]精炼套装属性5

LuaRet[10]精炼套装属性值5

LuaRet[11]精炼套装属性6

LuaRet[12]精炼套装属性值6

LuaRet[13]精炼套装属性7

LuaRet[14]精炼套装属性值7

LuaRet[15]精炼套装属性8

LuaRet[16]精炼套装属性值8

LuaRet[17]精炼套装属性9

LuaRet[18]精炼套装属性值9

LuaRet[19]精炼套装属性10

LuaRet[20]精炼套装属性值10

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

GetItemRefineData_2.png
CL:GetItemRefineData(15) --获取精炼等级为15级的精炼套装属性
dbg(serialize(LuaRet))

--此示例代码运行成功如下图所示。

GetItemRefineData.png
<上一篇:获取当前玩家指定装备位装备的GUIData句柄下一篇:获取选中玩家指定装备位装备的GUIData句柄>
GetOtherEquimentItemDataPart
获取选中玩家指定装备位装备的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数获取选中玩家指定装备位装备的GUIData句柄。

note_icon 备注
建议在OtherRoleEquiment.lua脚本文件中的OtherRoleEquiment.propData()函数中调用此接口。

语法
Luacopy 复制
CL:GetOtherEquimentItemDataPart(
    _PartType
)
参数
_PartType

int

 
装备位

返回值
int

 
装备的GUIData句柄

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以手游45度测试区（区号：151750）的OtherRoleEquiment.lua脚本文件为例。
OtherRoleEquiment = {}

--……省略部分代码

function OtherRoleEquiment.propData()
    local GUIData = CL:GetOtherEquimentItemDataPart(5)--获取衣服装备位的装备的GUIData句柄
    CL:GetItemGUIDataPropByType(GUIData,0)--获取该装备的GUID
    local GUID = LuaRet
    CL:GetItemEntityPropByGUID(GUID, ITEM_PROP_NAME)--获取该装备的名称
    local NAME = LuaRet
    dbg("装备的GUIData句柄："..GUIData)
    dbg("装备的GUID："..GUID)
    dbg("装备的名称："..NAME)

--……省略部分代码

end

--……省略部分代码

OtherRoleEquiment.main()

--打开选中玩家的角色面板后，示例代码运行成功效果如下图所示。

GetOtherEquimentItemDataPart.png
<上一篇:获取指定等级的精炼套装属性下一篇:获取自身指定装备位装备的GUID>
GetPlayerSelfEquipGUID
获取自身指定装备位装备的GUID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取玩家自身指定装备位中装备的GUID。

语法
Luacopy 复制
CL:GetPlayerSelfEquipGUID( 
    _PartType
)

参数
_PartType

int

 
装备位

返回值
string

 
指定装备位中装备的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _ItemCtrlHandle = CL:GetPlayerSelfEquipGUID(9)
dbg(“当前装备的项链的GUID：”_ItemCtrlHandle)

--控制台将输出“当前装备的项链的GUID：4818875631896989744”。
<上一篇:获取选中玩家指定装备位装备的GUIData句柄下一篇:获取目标玩家所有装备的GUIData句柄>
GetPlayerTargetEquipData
获取目标玩家所有装备的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取目标玩家所有装备的GUIData句柄列表。

语法
Luacopy 复制
CL:GetPlayerTargetEquipData()

参数
无

 
返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量LuaRet中。

LuaRet[i]第i个装备的GUIData句柄，i最大为64。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function OtherRoleEquiment.propData()
    if CL:GetPlayerTargetEquipData() then
        dbg("首个装备数据句柄："..LuaRet[1])
    else
        dbg("获取失败")
    end
end

--请将代码置入手游端本地脚本目录“GUILayout\OtherRoleEquiment.lua”的“OtherRoleEquiment.propData”函数中。查看任意玩家的装备，即可获取信息。
<上一篇:获取自身指定装备位装备的GUID下一篇:获取指定精炼等级的道具数量>
GetRefineItemBy
获取指定精炼等级的道具数量

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-09-26 18:03:00
此函数获取指定精炼等级的道具数量。

语法
Luacopy 复制
CL:GetRefineItemBy(
    lua_object
)
参数
lua_object

table

 
指定精炼等级等配置

Luacopy 复制
{
    refine_level=10, 
    match_type="equal",
    match_range="equipment", 
    return_item_guid=true
}
参数名	类型	是否必需	说明	可选值/默认值
refine_level	int	是	指定的精炼等级	
match_type	string	否	匹配规则，将道具精炼等级与refine_level按规则比较	"equal"（道具精炼等级等于refine_level，为默认值）
"greater_equal"（道具精炼等级大于等于refine_level）
match_range	string	否	匹配范围，查找指定面板的道具	"equipment"（角色装备面板，为默认值）
"package"（背包和大背包）
"all"（等同于"equipment|package"）
备注：以'|'连接，同时生效
return_item_guid	bool	否	是否返回道具的guid	true表示返回道具的guid
false表示不返回道具的guid，为默认值
role_guid	string	否	指定要查询的角色GUID	玩家自己的GUID，为默认值
备注：如果要获取其他玩家的装备面板数据，需要在OtherRoleEquiment.lua面板里的LUA_EVENT_OTHERROLEDATA事件触发之后。
返回值
bool

 
true获取成功

false获取失败

note_icon 备注
获取的属性信息存储在全局变量LuaRet中。

LuaRet["count"]满足要求的道具数量

LuaRet["guid"]包含道具的GUID的lua数组，其中元素道具的GUID的数据类型是string，由return_item_guid控制是否存在。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数role_guid

示例代码
Luacopy 复制
local id = CL:AddDelayTask("Timer()", 1000, 1)
function Timer()
  if CL:GetRefineItemBy({refine_level=3, match_type="equal", match_range="equipment", return_item_guid=true}) then
    dbg("refine count:"..LuaRet["count"])
    dbg("refine guid:"..serialize(LuaRet["guid"]))
  end
end
--设置靴子精炼等级3，衣服精炼等级3，战戒精炼等级3，项链精炼等级2，护腕精炼等级1，如下图所示。

GetRefineItemBy.pngGetRefineItemBy_2.pngGetRefineItemBy_3.png
GetRefineItemBy_4.pngGetRefineItemBy_5.png

--此示例代码运行成功如下图所示。

GetRefineItemBy_6.png

--设置refine_level=2，再次运行此示例代码如下图所示。

GetRefineItemBy_7.png

--查询其他玩家装备的精炼
--添加如下代码：
RegisterUIEvent(LUA_EVENT_OTHERROLEDATA,"OtherRoleEquipment_OtherRoleData",OtherRoleEquiment.propData)

function OtherRoleEquiment.propData()
--……省略部分代码
    local role_guid = LuaParam[6]
       if CL:GetRefineItemBy({
           refine_level = 1,
           match_type = "greater_equal",
           match_range = "equipment",
           return_item_guid = true,
           role_guid = role_guid
       }) then
           dbg("refine_count:" .. LuaRet["count"])
           dbg("refine_guid:" .. serialize(LuaRet["guid"]))
       end

--……省略部分代码
end

--此示例代码运行成功如下图所示。

GetRefineItemBy_8.png
<上一篇:获取目标玩家所有装备的GUIData句柄下一篇:根据套装ID获取装备ID列表>
GetSuitItemListByID
根据套装ID获取装备ID列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据套装ID获取该套装内所有装备的ID列表。

语法
Luacopy 复制
CL:GetSuitItemListByID( 
    _ID
)

参数
_ID

int

 
套装的ID。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的信息存储在全局变量LuaRet中。

LuaRet[i]第i件装备的ID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetSuitItemListByID(20) then
    for i = 1, #LuaRet do
        dbg("第"..i.."件装备的ID为"..LuaRet[i])
    end
end

--控制台将输出：
第1件装备的ID为20417 	
第2件装备的ID为20418 	
第3件装备的ID为20419 	
第4件装备的ID为20420 	
第5件装备的ID为20421 	
第6件装备的ID为20422 	
第7件装备的ID为20423 
<上一篇:获取指定精炼等级的道具数量下一篇:获取套装属性>
GetSuitPropByID
获取套装属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-18 00:00:00
此函数获取套装的指定属性。

语法
Luacopy 复制
CL:GetSuitPropByID( 
    _ID,
    _PropType
)

参数
_ID

int

 
套装模板ID，可从工具后台系统套装表中获取其编号。


GetSuitPropByID_2.png
_PropType

int

 
属性的类型。

点击套装属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetSuitPropByID(20,SUIT_PROP_NAME) then --获取套装名称
    dbg("套装名称："..LuaRet)
end	

--此示例代码运行成功如下图所示。

GetSuitPropByID
<上一篇:根据套装ID获取装备ID列表下一篇:获取所在查看装备的玩家角色GUID>
GetViewEquipTarPlayerGUID
获取所在查看装备的玩家角色GUID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取所在查看装备的玩家角色的GUID。

语法
Luacopy 复制
CL:GetViewEquipTarPlayerGUID()

参数
无

返回值
string

 
玩家角色的GUID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _ViewPlayerGUID = CL:GetViewEquipTarPlayerGUID() --获取正在查看装备的其它玩家的GUID
dbg("其他玩家的GUID:".._ViewPlayerGUID)

--请将代码置入手游端本地脚本目录“GUILayout\OtherRoleEquiment.lua”的“OtherRoleEquiment.propData”函数中。查看任意玩家的装备，即可获取信息。此示例代码运行成功如下图所示。

GetViewEquipTarPlayerGUID
<上一篇:获取套装属性下一篇:设置法宝与玩家的距离>
SetMagicWeaponOffset
设置法宝与玩家的距离

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置法宝与玩家的距离。

语法
Luacopy 复制
CL:SetMagicWeaponOffset( 
    _Offset
)

参数
_Offset

int

 
距离，单位为像素（px）。

正数表示以玩家原点，离玩家背后的距离；负值表示以玩家原点，离玩家正前方的距离。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMagicWeaponOffset(500) --设置法宝距玩家距离为背后500像素

--效果如下图所示。

SetMagicWeaponOffset
<上一篇:获取所在查看装备的玩家角色GUID下一篇:设置武器模型图片数据>
SetWeapBigIconDataEX
设置武器模型图片数据

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置武器模型图片数据。

语法
Luacopy 复制
CL:SetWeapBigIconDataEX( 
    _WeapImageID,
    _OffsetX,
    _OffsetY,
    _OffsetX1,
    _OffsetY1,
    _Scale
)

参数
_WeapImageID

uint

 
武器的模型图片资源ID

_OffsetX

int

 
Avatar控件的水平偏移量

_OffsetY

int

 
Avatar控件的垂直偏移量

_OffsetX1

int

 
装备画面控件的水平偏移量

_OffsetY1

int

 
装备画面控件的垂直偏移量

_Scale

int

 
武器模型整体缩放比例

将要设置的倍数乘以10000即为设置值

例如：

5000武器模型宽度和高度均缩小至原始尺寸的一半大小

10000武器模型宽度和高度均为原始尺寸

20000武器模型宽度和高度均放大1倍，为原始尺寸的2倍大小

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置法宝与玩家的距离下一篇:设置武器模型图片数据>
SetWeapBigIconData
设置武器模型图片数据

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置武器模型图片数据。

语法
Luacopy 复制
CL:SetWeapBigIconData( 
    _WeapImageID,
    _OffsetX,
    _OffsetY,
    _Scale
)

参数
_WeapImageID

uint

 
武器的模型图片资源ID

_OffsetX

int

 
Avatar控件的水平偏移量

_OffsetY

int

 
Avatar控件的垂直偏移量

_Scale

int

 
武器模型整体缩放比例

将要设置的倍数乘以10000即为设置值

例如：

5000武器模型宽度和高度均缩小至原始尺寸的一半大小

10000武器模型宽度和高度均为原始尺寸

20000武器模型宽度和高度均放大1倍，为原始尺寸的2倍大小

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--部分截取自手游45度测试区CommonScriptFun.lua
function LoadWeapBigIconData()
    CL:SetWeapBigIconData(1892500000, -249, -200, 11500)
    CL:SetWeapBigIconData(1892510000, -220, -170, 11500)
    CL:SetWeapBigIconData(1892520000, -249, -200, 11500)
    CL:SetWeapBigIconData(1892530000, -249, -200, 11500)
end
<上一篇:设置武器模型图片数据
GetFashionInfo
获取时装的配置信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-10-14 00:00:00
此函数根据时装的ID获取该时装的配置信息。

语法
Luacopy 复制
CL:GetFashionInfo( 
    _FashionId
)

参数
_FashionId

int

 
时装的ID

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量LuaRet中。

LuaRet[1][1]是否显示内观衣服，衣服固定为1；

LuaRet[1][2]衣服图片资源ID；

LuaRet[1][3]X轴偏移，衣服固定为0；

LuaRet[1][4]Y轴偏移，衣服固定为0；

LuaRet[2][1]是否显示内观武器；

LuaRet[2][2]武器图片资源ID；

LuaRet[2][3]X轴偏移；

LuaRet[2][4]Y轴偏移；

LuaRet[3][1]是否显示内观头发；

LuaRet[3][2]头发图片资源ID；

LuaRet[3][3]X轴偏移；

LuaRet[3][4]Y轴偏移；

LuaRet[4][1]是否显示内观翅膀；

LuaRet[4][2]翅膀图片资源ID；

LuaRet[4][3]X轴偏移；

LuaRet[4][4]Y轴偏移；

LuaRet[5][1]是否显示内观斗笠；

LuaRet[5][2]斗笠图片资源ID；

LuaRet[5][3]X轴偏移；

LuaRet[5][4]Y轴偏移；

LuaRet[6][1]是否显示内观盾牌；

LuaRet[6][2]盾牌图片资源ID；

LuaRet[6][3]X轴偏移；

LuaRet[6][4]Y轴偏移。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetFashionInfo(1) then
    dbg(""..serialize(LuaRet))
end

--此示例代码运行成功如下图所示。

GetFashionInfo.png
下一篇:获取角色当前是否显示时装>
GetPlayerShowFashion
获取角色当前是否显示时装

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-09-12 00:00:00
此函数获取角色当前是否显示时装。

语法
Luacopy 复制
CL:GetPlayerShowFashion(
    guid
)
参数
guid

string

 
角色guid

返回值
操作结果

bool

 
是否显示时装。

true显示时装

false不显示时装

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取时装的配置信息下一篇:获取角色当前是否显示武器时装>
GetPlayerShowWeaponFashion
获取角色当前是否显示武器时装

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-09-12 00:00:00
此函数获取角色当前是否显示武器时装。

语法
Luacopy 复制
CL:GetPlayerShowWeaponFashion(
    guid
)
参数
guid

string

 
角色guid

返回值
操作结果

bool

 
是否显示武器时装。

true显示武器时装

false不显示武器时装

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取角色当前是否显示时装下一篇:获取当前是否显示时装>
GetShowFashion
获取当前是否显示时装

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前是否显示时装。

语法
Luacopy 复制
CL:GetShowFashion()

参数
无

返回值
bool

 
true显示。

false不显示。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取角色当前是否显示武器时装下一篇:获取当前是否显示时装武器>
GetShowWeapFashion
获取当前是否显示时装武器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取是否显示时装武器的设置。

语法
Luacopy 复制
CL:GetShowWeapFashion()

参数
无

返回值
bool

 
true显示。

false不显示。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetShowWeapFashion() then
    dbg("当前设置为显示时装武器")
else
    dbg("当前设置不显示时装武器")
end
<上一篇:获取当前是否显示时装下一篇:设置是否显示时装>
ShowFashion
设置是否显示时装

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置是否显示时装。

语法
Luacopy 复制
CL:ShowFashion( 
    _Show
)

参数
_Show

bool

 
true显示时装。

false不显示时装。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前是否显示时装武器下一篇:设置是否显示时装武器>
ShowWeapFashion
设置是否显示时装武器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置是否显示时装武器。

语法
Luacopy 复制
CL:ShowWeapFashion( 
    _Show
)

参数
_Show

bool

 
true显示时装武器。

false不显示时装武器。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置是否显示时装
GetInnerProperty
获取内功属性

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数获取内功的属性。

语法
Luacopy 复制
CL:GetInnerProperty( 
    _level,
    _job,
    _prop
)

参数
_level

int

 
玩家角色的等级。

_job

int

 
职业。

1战士

2法师

3术士

_prop

int

 
属性类型：

1升级内容经验

2内功值

3内功恢复速度

4内功恢复间隔

5内功减伤百分比

返回值
bool

 
true获取成功。

false获取失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取窗口大小的数值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetInnerProperty(1000,1,2) then
    dbg("属性值为："..LuaRet)
else
    dbg("获取失败")
end
下一篇:升级内功>
InnerLevelUp
升级内功

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数升级角色的内功等级。

语法
Luacopy 复制
CL:InnerLevelUp( 
    _type
)

参数
_type

int

 
升级的类型。

0升一级。

1升到最高级。

返回值
bool

 
请注意，程序固定返回true。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取内功属性
CreateUIRenderItem
创建指示条

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数创建一个显示在角色上方的指示条。

游戏中，该指示条可应用在血量值、魔法值、怒气值、护盾值等场景。

若要调整指示条的偏移值，则可使用接口CL:SetItemOffset进行设置。

语法
Luacopy 复制
CL:CreateUIRenderItem(
    _PlayerGUID,
    _ID,
    _FrontImageID,
    _BackImageID,
    _OffsetX,
    _OffsetY    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

_FrontImageID

unsigned int

 
指示条前景图片资源ID

_BackImageID

unsigned int

 
指示条背景图片资源ID

_OffsetX

int

 
指示条在X轴方向上的偏移

_OffsetY

int

 
指示条在Y轴方向上的偏移

返回值
bool

 
true创建指示条成功

false创建指示条失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerGUID = CL:GetPlayerSelfGUID()
--创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
    dbg("创建成功")
else
    dbg("创建失败")
end	

--此示例代码运行成功如下图所示。

CreateUIRenderItem
下一篇:删除所有指示条>
DeleteAllUIRenderItem
删除所有指示条

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数删除指定角色所有自定义的指示条。

语法
Luacopy 复制
CL:DeleteAllUIRenderItem(
    _PlayerGUID    
)
参数
_PlayerGUID

string

 
目标角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerGUID = CL:GetPlayerSelfGUID()
CL:DeleteAllUIRenderItem(_PlayerGUID) --清除所有自定义指示条
<上一篇:创建指示条下一篇:删除指示条>
DeleteUIRenderItem
删除指示条

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数删除角色指定名称的指示条。

语法
Luacopy 复制
CL:DeleteUIRenderItem(
    _PlayerGUID,
    _ID    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerGUID = CL:GetPlayerSelfGUID()
  --创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
    if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
end		

CL:DeleteUIRenderItem(_PlayerGUID,"RenderItem1")
  
<上一篇:删除所有指示条下一篇:设置指示条的背景图>
SetItemBackImage
设置指示条的背景图

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数设置角色指定名称的指示条的背景图。

语法
Luacopy 复制
CL:SetItemBackImage(
    _PlayerGUID,
    _ID,
    _BackImageID,
    _Color    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

_BackImageID

unsigned int

 
指示条的背景图片资源ID

_Color

unsigned int

 
图片颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_GREENG为GlobalDefine.lua脚本文件中定义的颜色标记。
local _PlayerGUID = CL:GetPlayerSelfGUID()
--创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
    CL:SetItemFrontImage(_PlayerGUID, "RenderItem1", 1900190019, COLOR_GREENG) --设置前景图及颜色
    CL:SetItemBackImage(_PlayerGUID, "RenderItem1", 1857060021, COLOR_GREENG)--设置背景图及颜色
    CL:SetItemMaxValue(_PlayerGUID, "RenderItem1", 10)--最大值
    CL:SetItemCurValue(_PlayerGUID, "RenderItem1", 5)--当前值
end

--此示例代码运行成功如下图所示。

SetItemBackImage
<上一篇:删除指示条下一篇:设置指示条的当前值>
SetItemCurValue
设置指示条的当前值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数设置角色指定名称的指示条的当前值。

指示条的最大值可通过接口CL:SetItemMaxValue来设置。

指示条当前值设置成功后，程序会根据当前值和最大值计算比例，并按比例绘制前景图。

语法
Luacopy 复制
CL:SetItemCurValue(
    _PlayerGUID,
    _ID,
    _Value    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

_Value

int

 
指示条的当前值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerGUID = CL:GetPlayerSelfGUID()
  --创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
    CL:SetItemMaxValue(_PlayerGUID, "RenderItem1", 50)--最大值
    CL:SetItemCurValue(_PlayerGUID, "RenderItem1", 35)--当前值
end

--此示例代码运行成功如下图所示。


<上一篇:设置指示条的背景图下一篇:设置指示条的前景图>
SetItemFrontImage
设置指示条的前景图

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数设置角色指定名称的指示条的前景图。

语法
Luacopy 复制
CL:SetItemFrontImage(
    _PlayerGUID,
    _ID,
    _ImageID,
    _Color    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

_ImageID

unsigned int

 
指示条前景图片资源ID

_Color

unsigned int

 
图片颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_GREENG为GlobalDefine.lua脚本文件中定义的颜色标记。
--若要显示指示条前景图，需要设置指示条的最大值和当前值
local _PlayerGUID = CL:GetPlayerSelfGUID()
--创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
    CL:SetItemFrontImage(_PlayerGUID, "RenderItem1", 1900190019, COLOR_GREENG) --设置前景图及颜色
    CL:SetItemMaxValue(_PlayerGUID, "RenderItem1", 10)--最大值
    CL:SetItemCurValue(_PlayerGUID, "RenderItem1", 5)--当前值
end

--此示例代码运行成功如下图所示。

SetItemFrontImage
<上一篇:设置指示条的当前值下一篇:设置指示条的最大值>
SetItemMaxValue
设置指示条的最大值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数设置角色指定名称的指示条的最大值。

指示条的当前值可通过接口CL:SetItemCurValue来设置。

指示条最大值设置成功后，程序会根据当前值和最大值计算比例，并按比例绘制前景图。

语法
Luacopy 复制
CL:SetItemMaxValue(
    _PlayerGUID,
    _ID,
    _Value    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

_Value

int

 
指示条的最大值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerGUID = CL:GetPlayerSelfGUID()
  --创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
    CL:SetItemMaxValue(_PlayerGUID, "RenderItem1", 50)--最大值
    CL:SetItemCurValue(_PlayerGUID, "RenderItem1", 5)--当前值
end

--此示例代码运行成功如下图所示。

SetItemMaxValue
<上一篇:设置指示条的前景图下一篇:设置指示条的偏移>
SetItemOffset
设置指示条的偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数设置角色指定名称的指示条的偏移。

语法
Luacopy 复制
CL:SetItemOffset(
    _PlayerGUID,
    _ID,
    _OffsetX,
    _OffsetY    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

_OffsetX

int

 
指示条在X轴方向上的偏移

_OffsetY

int

 
指示条在Y轴方向上的偏移

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerGUID = CL:GetPlayerSelfGUID()
  --创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
    CL:SetItemMaxValue(_PlayerGUID, "RenderItem1", 50)--最大值
    CL:SetItemCurValue(_PlayerGUID, "RenderItem1", 35)--当前值
    CL:SetItemOffset(_PlayerGUID, "RenderItem1", 0, 40)--设置偏移
end

--此示例代码运行成功如下图所示。

SetItemOffset
<上一篇:设置指示条的最大值下一篇:设置指示条是否显示数值文本>
SetItemShowText
设置指示条是否显示数值文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-11-07 00:00:00
此函数设置是否显示指示条上的数值文本（当前值/最大值）。

SetItemShowText.png
语法
Luacopy 复制
CL:SetItemShowText(
    _PlayerGUID,
    _ID,
    _bShow    
)
参数
_PlayerGUID

string

 
目标角色的GUID

_ID

string

 
指示条的名称

_bShow

bool

 
是否显示数值文本

true显示

false不显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _PlayerGUID = CL:GetPlayerSelfGUID()
--创建（目标角色GUID，指示条名称ID，前景图ID，背景图ID，横向偏移X，纵向偏移Y）
if CL:CreateUIRenderItem(_PlayerGUID, "RenderItem1", 1900120000, 1900120001, 0, -110) then
    CL:SetItemMaxValue(_PlayerGUID, "RenderItem1", 50)--最大值
    CL:SetItemCurValue(_PlayerGUID, "RenderItem1", 35)--当前值
    CL:SetItemShowText(_PlayerGUID, "RenderItem1", true)--是否显示数值
end

--此示例代码运行成功如下图所示。

SetItemShowText
<上一篇:设置指示条的偏移
ChangeRoleColor
改变玩家颜色

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2026-02-14 12:55:00
此函数用于改变玩家的外观颜色。

语法
Luacopy 复制
CL:ChangeRoleColor(
    _GuidStr,
    _ColorStr,
    _Time
)

参数
_GuidStr

string

 
玩家GUID

_ColorStr

string

 
颜色值（如"FF0000"表示红色），支持改变透明度（argb顺序）

_Time

int

 
持续时间（毫秒），设0取消当前变色

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local role_guid = CL:GetPlayerSelfGUID()
-- 玩家变红色，持续5秒
CL:ChangeRoleColor(role_guid, "FF0000", 5000)

-- 玩家变蓝色，持续3秒
CL:ChangeRoleColor(role_guid, "0000FF", 3000)

-- 取消玩家变色
CL:ChangeRoleColor(role_guid, "", 0)
下一篇:设置是否重置“显示角色”相关接口的配置>
JumpMapResetShowHide
设置是否重置“显示角色”相关接口的配置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数设置跳转地图时是否重置“显示（或者隐藏）角色”相关接口的配置。

参考 IsJumpMapResetShowHide

 

“显示（或者隐藏）角色”相关接口如下所示：

1.OnShowHide：显示（或者隐藏）其他玩家

2.OnShowHideFamilyPlayer：显示（或者隐藏）同行会玩家

3.OnShowHideOtherMonster：显示（或者隐藏）其他怪物

语法
Luacopy 复制
CL:JumpMapResetShowHide(
    name,
    reset
)
参数
name

string

 
接口名称

此参数为字符串类型，可填写的接口名称如下所示：

"OnShowHide"

"OnShowHideFamilyPlayer"

"OnShowHideOtherMonster"

reset

bool

 
是否重置该接口的配置

true重置（为默认值）

false不重置

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对3D的支持

示例代码
Luacopy 复制
--执行前提：执行接口CL:OnShowHide()设置隐藏其他玩家。
CL:JumpMapResetShowHide("OnShowHide", false) --设置跳转地图后不重置接口OnShowHide的配置

--此示例代码运行成功后，玩家跳转地图后其他玩家仍为隐藏状态。
<上一篇:改变玩家颜色下一篇:设置在自动挂机时是否会自动躲怪>
SetAISafeDistance
设置在自动挂机时是否会自动躲怪

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-11-08 00:00:00
此函数设置术士和法师在自动挂机时是否会自动检测安全距离来躲避怪物，并且支持设置安全距离。

语法
Luacopy 复制
CL:SetAISafeDistance(
    IsUse,
    Distance
)
参数
IsUse

bool

 
设置自动挂机时术士和法师是否检测安全距离

true是

false否

Distance

int

 
安全距离

默认值为1，单位为逻辑格。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetAISafeDistance(true,3)

--此示例代码运行成功如下图所示。

--玩家在自动挂机时会自动检测安全距离来躲避怪物且安全距离为3个逻辑格。

SetAISafeDistance.gif
<上一篇:设置是否重置“显示角色”相关接口的配置下一篇:设置反击技能>
SetCounterAttackSkillLinkID
设置反击技能

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-10-25 00:00:00
此函数设置反击技能。

语法
Luacopy 复制
CL:SetCounterAttackSkillLinkID( 
    _SkillLinkID
)

参数
_SkillLinkID

int

 
技能链ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游和2D端游支持

示例代码
Luacopy 复制
CL:SetCounterAttackType(0)
CL:SetCounterAttackSkillLinkID(1060)

--非自动战斗时，正常普攻流程反击正常。

SetCounterAttackSkillLinkID.png

--使用接口设置了技能链后，玩家在反击时可以正常释放技能反击。

SetCounterAttackSkillLinkID_2.png

--使用无动作技能反击时目标没有动作，但可以正常释放技能。

SetCounterAttackSkillLinkID_3.png

--目标开启自动战斗时，攻击目标目标会正常反击，与未开启自动战斗时一致；在玩家被击杀或者丢失后，目标继续攻击怪物目标，自动战斗。

SetCounterAttackSkillLinkID_4.png
<上一篇:设置在自动挂机时是否会自动躲怪下一篇:设置自动反击>
SetCounterAttackType
设置自动反击

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数设置自动反击功能。

自动反击功能是指玩家被其他玩家或者怪物攻击并且受到伤害（包括不破防时受到的伤害）时会进行反击的功能。

不破防时受到的伤害是指攻方的攻击小于守方的防御时守方扣除的血量，可在游戏管理平台→游戏配置→全局表→全局模板表→其他设置→游戏配置区域的“不破防时算几点伤害”选项中进行配置，如图1所示。

图 1 “不破防时算几点伤害”选项

SetCounterAttackType.png
游戏内在勾选“免shift”设置选项的情况下，才可对其他玩家进行反击，如图2所示。

图 2 “免shift”设置选项

SetCounterAttackType_2.png
语法
Luacopy 复制
CL:SetCounterAttackType(
    _Value
)
参数
_Value

int

 
自动反击类型

-1关闭

0反击所有

1仅反击玩家

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--配置全局模板表字段“不破防时算几点伤害”并开启游戏内勾选“免shift”。

--当参数为-1时，玩家受到攻击不会自动反击。

SetCounterAttackType_3.png

--当参数设为0时，玩家在被别的玩家攻击时以及怪物攻击时会进行反击。

SetCounterAttackType_4.png

--当参数为1时，仅在玩家攻击时反击。

SetCounterAttackType_5.png
<上一篇:设置反击技能下一篇:设置自定义状态栏>
SetCustomStatusBar
设置自定义状态栏

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-09-04 17:45:00
此函数设置自定义状态栏，支持角色hp、角色mp、角色inner内功条、怪物hp。

语法
Luacopy 复制
CL:SetCustomStatusBar(
    _Table
)

参数
_Table

table

 
状态栏配置

Luacopy 复制
local table = {
    type = 0,
    imageid = 1850000039,
    offsetx = 0,
    offsety = 0,
    width = 42,
    height = 4,
    backimageid = 1850000040,
    backwidth = 42,
    backheight = 4
}
--type：0表示角色hp 1表示角色mp 2表示角色inner内功条 3表示怪物hp
--imageid：状态栏前景图片ID
--offsetx：血条前景图片对于背景图片的相对位置偏移X
--offsety：血条前景图片对于背景图片的相对位置偏移Y
--width：状态栏前景图片宽
--height：状态栏前景图片高
--backimageid：状态栏背景图片ID
--backwidth：状态栏背景图片宽
--backheight：状态栏背景图片高
返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local table = {
    type = 0,
    imageid = 1850000039,
    offsetx = 20,
    offsety = 0,
    width = 42,
    height = 4,
    backimageid = 1850000040,
    backwidth = 42,
    backheight = 4
}
CL:SetCustomStatusBar(table)

--未执行此示例代码，角色hp如下图所示。
SetCustomStatusBar.png

--此示例代码运行成功，角色hp如下图所示。
SetCustomStatusBar_2.png
<上一篇:设置自动反击下一篇:设置暴击图片和飘字相对角色的偏移量>
SetFixedCriticalHitOffset
设置暴击图片和飘字相对角色的偏移量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置角色自身或其他角色受到暴击时显示的暴击文字图片资源和减血量飘字相对角色位置的偏移量。

note_icon 备注
微端仅在飘字样式为新样式时才生效。请参见全局变量NewHurtNumStyle。

语法
Luacopy 复制
CL:SetFixedCriticalHitOffset(
    _Type,
    _PicOffsetX,
    _PicOffsetY,
    _NumOffsetX,
    _NumOffsetY
)
参数
_Type

unsigned int

 
设置暴击的类型

0玩家自身受到暴击

1攻击其他角色时的暴击

_PicOffsetX

int

 
暴击文字图片相对于角色位置的X偏移

_PicOffsetY

int

 
暴击文字图片相对于角色位置的Y偏移

_NumOffsetX

int

 
暴击减血飘字图片相对于角色位置的X偏移

_NumOffsetY

int

 
暴击减血飘字图片相对于角色位置的Y偏移

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游、3D端游支持

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetFixedCriticalHitOffset(0,0,-150,0,-250)
CL:SetRoleHurtNum(guid,1000,4,1)

--此示例代码运行成功如下图所示。

SetFixedCriticalHitOffset
<上一篇:设置自定义状态栏下一篇:修改玩家角色名字的颜色>
SetForcePlayerNameColorRGB
修改玩家角色名字的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数修改玩家角色名字的颜色。

语法
Luacopy 复制
CL:SetForcePlayerNameColorRGB( 
    _PlayerGUID,
    _force,
    _r,
    _g,
    _b
)

参数
_PlayerGUID

string

 
指定玩家角色的GUID

_force

bool

 
true改变颜色

false取消之前的设定

_r

int

 
红色的颜色值。

范围为0~255。

_g

int

 
绿色的颜色值。

范围为0~255。

_b

int

 
蓝色的颜色值。

范围为0~255。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID()
CL:SetForcePlayerNameColorRGB(guid,true,255,0,0) --名字设为红色

--此示例代码运行成功如下图所示。

SetForcePlayerNameColorRGB
<上一篇:设置暴击图片和飘字相对角色的偏移量下一篇:通用修改名字颜色>
SetForceRoleNameColorRGB
通用修改名字颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2026-02-28 19:36:00
此函数用于通用修改名字颜色，可以强制修改指定角色的名字颜色。

语法
Luacopy 复制
CL:SetForceRoleNameColorRGB( 
    _RoleGUID,
    _force,
    _r,
    _g,
    _b
)

参数
_RoleGUID

string

 
指定玩家角色的GUID或者怪物的GUID

_force

bool

 
true改变颜色

false取消之前的设定

_r

int

 
红色的颜色值。

范围为0~255。

_g

int

 
绿色的颜色值。

范围为0~255。

_b

int

 
蓝色的颜色值。

范围为0~255。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID()
CL:SetForceRoleNameColorRGB(guid,true,255,0,0) --名字设为红色

--此示例代码运行成功如下图所示。

SetForcePlayerNameColorRGB
<上一篇:修改玩家角色名字的颜色下一篇:设置玩家角色隐藏标志>
SetHideRoleFlag
设置玩家角色隐藏标志

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置玩家角色隐藏标志。

语法
Luacopy 复制
CL:SetHideRoleFlag( 
    _Flag
)

参数
_Flag

int

 
0表示取消设置。

1表示只隐藏其他玩家角色而不隐藏其宠物。

2表示只隐藏其他玩家角色的宠物而不隐藏玩家角色自身。

3表示同时隐藏玩家角色和宠物。

note_icon 备注
设置不会隐藏任何野怪。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetHideRoleFlag(3) --设置同时隐藏其他玩家角色和宠物。

--此示例代码成功效果如下图所示。

SetHideRoleFlag
<上一篇:通用修改名字颜色下一篇:设置伤害数字的显示方向>
SetHurtPictureNumDirection
设置伤害数字的显示方向

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-03-07 00:00:00
此函数设置伤害数字的显示方向。

note_icon 备注
该接口仅在HurtNumStyle=3时生效，请参见全局变量HurtNumStyle。

语法
Luacopy 复制
CL:SetHurtPictureNumDirection(
    _HurtType,
    _Direction
)
参数
_HurtType

int

 
伤害类型

具体请参见伤害类型定义

_Direction

int

 
显示方向

基准方向：正上方为初始方向，对应0号与 0°。

旋转方式：以顺时针方向每45°为一个单位递增。

编号范围：共8个方向，编号0-7，覆盖360°平面。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"test", 4010210000, 700,60)
if _GUIHandle ~= 0 then
  GUI:WndSetTextM(_GUIHandle,"飘血")
  GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Package.test")
  end
function Package.test()
  local guid = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
  CL:SetRoleHurtNum(guid,1000,0,0)
  CL:SetHurtPictureNumDirection(0, 1)
end

--设置全局变量HurtNumStyle=3。

--设置伤害类型为0，显示方向为1时，此示例代码运行后效果如下图所示。

SetHurtPictureNumDirection.png

--设置伤害类型为0，显示方向为0时，此示例代码运行后效果如下图所示。

SetHurtPictureNumDirection_2.png

--设置伤害类型为4，显示方向为1时，此示例代码运行后效果如下图所示。

SetHurtPictureNumDirection_3.png
<上一篇:设置玩家角色隐藏标志下一篇:设置伤害图片和飘字的偏移量>
SetHurtPictureNumOffset
设置伤害图片和飘字的偏移量

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置伤害图片和飘字相对于起始位置的偏移。

语法
Luacopy 复制
CL:SetHurtPictureNumOffset(
    _HurtType,
    _PictureOffsetX,
    _PictureOffsetY,
    _HurtNumX,
    _HurtNumY
)
参数
_HurtType

int

 
伤害类型

具体请参见伤害类型定义

_PictureOffsetX

int

 
伤害图片相对于起始位置的X偏移

正数向右偏移

负数向左偏移

_PictureOffsetY

int

 
伤害图片相对于起始位置的Y偏移

手游：正数向上偏移 负数向下偏移

端游：正数向下偏移 负数向上偏移

_HurtNumX

int

 
伤害飘字相对于起始位置的X偏移

正数向右偏移

负数向左偏移

_HurtNumY

int

 
伤害飘字相对于起始位置的Y偏移

手游：正数向上偏移 负数向下偏移

端游：正数向下偏移 负数向上偏移

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetHurtPictureNumOffset(1,100,-100,350,100)

--此示例代码运行前效果如下图所示。

SetHurtPictureNumOffset.png

--此示例代码运行后效果如下图所示。

SetHurtPictureNumOffset_2.png

<上一篇:设置伤害数字的显示方向下一篇:设置指定玩家或者英雄的名称>
SetOtherPlayerName
设置指定玩家或者英雄的名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-05-13 00:00:00
此函数设置指定玩家角色或者英雄的名称。

语法
Luacopy 复制
CL:SetOtherPlayerName( 
    _PlayerGUID,
    _NewName
)

参数
_PlayerGUID

string

 
指定玩家角色或者英雄的GUID

_NewName

string

 
新的角色名字

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对英雄的支持

示例代码
Luacopy 复制
local _ViewPlayerGUID = CL:GetViewEquipTarPlayerGUID() --获取正在查看装备的其它玩家的GUID
CL:SetOtherPlayerName(_ViewPlayerGUID,"千叶滑") --设置新名字“千叶滑”

--此示例代码运行成功如下图所示。

SetOtherPlayerName
<上一篇:设置伤害图片和飘字的偏移量下一篇:设置玩家角色自定义字符串变量>
SetPlayerCustomDataString
设置玩家角色自定义字符串变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-08-21 00:00:00
此函数设置玩家角色自定义字符串变量。

语法
Luacopy 复制
CL:SetPlayerCustomDataString( 
    _KeyName,
    _Data
)

参数
_KeyName

string

 
自定义变量的索引名

_Data

string

 
自定义变量的值

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
CL:SetPlayerCustomDataString("weekdays","星期一") --设置玩家角色自定义字符串变量
if CL:GetPlayerCustomDataString("weekdays") then
    dbg(LuaRet)
end

--控制台将输出：“星期一”。
<上一篇:设置指定玩家或者英雄的名称下一篇:设置玩家角色自定义整型变量>
SetPlayerCustomData
设置玩家角色自定义整型变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-21 00:00:00
此函数设置玩家角色自定义整型变量。

语法
Luacopy 复制
CL:SetPlayerCustomData( 
    _KeyName,
    _Data
)

参数
_KeyName

string

 
自定义变量的索引名

_Data

int

 
自定义变量的值

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPlayerCustomData("key",1123) --设置玩家角色自定义整型变量
if CL:GetPlayerCustomData("key") then
    dbg(LuaRet)
end

--控制台将输出：“1123”。
<上一篇:设置玩家角色自定义字符串变量下一篇:设置默认裸模>
SetPlayerDefaultAvatar
设置默认裸模

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-13 20:21:00
此函数用于设置默认裸模。

语法
Luacopy 复制
CL:SetPlayerDefaultAvatar(
    cnf
)
参数
cnf

table

 
Lua表对象，结构如下：

{
    body = { [Gender][Job] = model_id },
    shadow = { [Gender][Job] = model_id }
}

-- Gender: 1 = 男, 2 = 女
-- Job   : 1 = 战士, 2 = 法师, 3 = 道士
note_icon 备注
需要一次性提供完整的设置；若缺失字段，设置会失败（返回false）。

设置成功后，全局变量ManBodyID、WomenBodyID、ManShadowID、WomenShadowID将不再生效。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPlayerDefaultAvatar({
  body = {
      {25000, 25000, 25000}, -- 男： 战士、法师、道士
      {25500, 25500, 25500}  -- 女： 战士、法师、道士
  },
  shadow = {
      {25400, 25400, 25400}, -- 男： 战士、法师、道士
      {25900, 25900, 25900}  -- 女： 战士、法师、道士
  }
})

--此示例代码运行成功如下图所示。

--端游，设置前

SetPlayerDefaultAvatar

SetPlayerDefaultAvatar_2

--端游，设置后

SetPlayerDefaultAvatar_3

SetPlayerDefaultAvatar_4

--手游，设置前

SetPlayerDefaultAvatar_5

SetPlayerDefaultAvatar_6

--手游，设置后

SetPlayerDefaultAvatar_7

SetPlayerDefaultAvatar_8
<上一篇:设置玩家角色自定义整型变量下一篇:设置指定角色的VIP动画>
SetPlayerEventImageParam
设置指定角色的VIP动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置指定角色的VIP动画。

语法
Luacopy 复制
CL:SetPlayerEventImageParam( 
    _PlayerGUID,
    _ImageStartID,
    _ImageEndID,
    _AnimInterval,
    _ScaleX,
    _ScaleY
)

参数
_PlayerGUID

string

 
玩家角色的GUID。

_ImageStartID

uint

 
动画起始图片资源ID。

_ImageEndID

uint

 
动画结束图片资源ID。

_AnimInterval

uint

 
播放速度，为每一帧的间隔时间，单位为毫秒（ms）。

_ScaleX

float

 
横坐标缩放比例，范围0~1。

_ScaleY

float

 
纵坐标缩放比例，范围0~1。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = CL:GetPlayerSelfGUID()
CL:SetPlayerEventImageParam(player_guid,1115100000,1115100003,100,1,1)

--示例代码运行效果如下图。

SetPlayerEventImageParam
<上一篇:设置默认裸模下一篇:角色名字两侧添加图片>
SetPlayerNameSideImage
角色名字两侧添加图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数功能是给玩家角色名字的两侧添加一张图片。

玩家角色名字左侧或右侧也可同时添加文字或特效，请参见相关接口SetPlayerNameSideText和SetPlayerNameSideMagic。

添加文字、图片和特效后的效果如下图所示。

SetPlayerNameSide

note_icon 备注
同时添加多个对象时，其展示的规则如下：

名字左侧或右侧支持同时添加文字、图片和特效。同一侧同一类型的对象建议最多添加一个。
文字、图片或特效均需设置各自的左右偏移量。
三种添加对象的显示顺序为文字、图片和特效，左侧和右侧均为此顺序规则。
绘制层级相同时，按特效、图片、文字从下往上绘制。
语法
Luacopy 复制
CL:SetPlayerNameSideImage(
    _RoleGUID,
    _ImgID,
    _Type,
    _OffsetX,
    _OffsetY,
    _Layer
)
参数
_RoleGUID

string

 
玩家角色的GUID

_ImgID

unsigned int

 
图片资源ID

_Type

int

 
添加位置

0表示添加到名字左侧

1表示添加到名字右侧

_OffsetX

int

 
图片水平偏移

_OffsetY

int

 
图片垂直偏移

_Layer

int

 
绘制层级

如在同一侧同时添加了文字、图片或特效，添加对象有可能发生重叠。

该参数指定添加对象的绘制层级，值越大则层级也越大。

绘制层级相同时，按特效、图片、文字从下往上绘制。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local OtherRoleHeadInfo_choosePlayer = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetPlayerNameSideImage(OtherRoleHeadInfo_choosePlayer, 4010620000, 0, 0, 0, 0)
CL:SetPlayerNameSideImage(OtherRoleHeadInfo_choosePlayer, 4010620000, 1, 0, 0, 0)

--此示例代码运行成功如下图所示。

SetPlayerNameSideImage
<上一篇:设置指定角色的VIP动画下一篇:角色名字两侧添加特效>
SetPlayerNameSideMagic
角色名字两侧添加特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数功能是给玩家角色名字的两侧添加一个图片特效。

玩家角色名字左侧或右侧也可同时添加文字或图片，请参见相关接口SetPlayerNameSideText和SetPlayerNameSideImage。

添加文字、图片和特效后的效果如下图所示。

SetPlayerNameSide

note_icon 备注
同时添加多个对象时，其展示的规则如下：

名字左侧或右侧支持同时添加文字、图片和特效。同一侧同一类型的对象建议最多添加一个。
文字、图片或特效均需设置各自的左右偏移量。
三种添加对象的显示顺序为文字、图片和特效，左侧和右侧均为此顺序规则。
绘制层级相同时，按特效、图片、文字从下往上绘制。
语法
Luacopy 复制
CL:SetPlayerNameSideMagic(
    _RoleGUID,
    _ImgID,
    _Type,
    _OffsetX,
    _OffsetY,
    _Interval,
    _Layer
)
参数
_RoleGUID

string

 
玩家角色的GUID

_ImgID

unsigned int

 
特效图片的资源ID

_Type

int

 
添加位置

0表示添加到名字左侧

1表示添加到名字右侧

_OffsetX

int

 
图片特效的水平偏移

_OffsetY

int

 
图片特效的垂直偏移

_Interval

unsigned int

 
动画帧间隔，单位为毫秒。

若动画配置已经写入AnimSetting.xml中，则使用配置文件中的时间间隔。

_Layer

int

 
绘制层级

如在同一侧同时添加了文字、图片或特效，添加对象有可能发生重叠。

该参数指定添加对象的绘制层级，值越大则层级也越大。

绘制层级相同时，按特效、图片、文字从下往上绘制。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local OtherRoleHeadInfo_choosePlayer = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetPlayerNameSideMagic(OtherRoleHeadInfo_choosePlayer,3031200000, 0, 0, 0, 20, 0)
CL:SetPlayerNameSideMagic(OtherRoleHeadInfo_choosePlayer, 3031200000, 1, 0, 0, 20, 0)

--此示例代码运行成功如下图所示。

SetPlayerNameSideMagic
<上一篇:角色名字两侧添加图片下一篇:角色名字两侧添加文字>
SetPlayerNameSideText
角色名字两侧添加文字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数功能是给玩家角色名字的两侧添加一段文字。

玩家角色名字左侧或右侧也可同时添加图片或特效，请参见相关接口SetPlayerNameSideImage和SetPlayerNameSideMagic。

添加文字、图片和特效后的效果如下图所示。

SetPlayerNameSide

note_icon 备注
同时添加多个对象时，其展示的规则如下：

名字左侧或右侧支持同时添加文字、图片和特效。同一侧同一类型的对象建议最多添加一个。
文字、图片或特效均需设置各自的左右偏移量。
三种添加对象的显示顺序为文字、图片和特效，左侧和右侧均为此顺序规则。
绘制层级相同时，按特效、图片、文字从下往上绘制。
语法
Luacopy 复制
CL:SetPlayerNameSideText(
    _RoleGUID,
    _Text,
    _Type,
    _OffsetX,
    _OffsetY,
    _Color,
    _Layer
)
参数
_RoleGUID

string

 
玩家角色的GUID

_Text

string

 
文字内容

_Type

int

 
添加位置

0表示添加到名字左侧

1表示添加到名字右侧

_OffsetX

int

 
文字水平偏移

_OffsetY

int

 
文字垂直偏移

_Color

unsigned int

 
颜色值

_Layer

int

 
绘制层级

如在同一侧同时添加了文字、图片或特效，添加对象有可能发生重叠。

该参数指定添加对象的绘制层级，值越大则层级也越大。

绘制层级相同时，按特效、图片、文字从下往上绘制。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local OtherRoleHeadInfo_choosePlayer = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetPlayerNameSideText(OtherRoleHeadInfo_choosePlayer,"变猪",0,30,30,GUI:MakeARGB(255,255,0,0), 0)
CL:SetPlayerNameSideText(OtherRoleHeadInfo_choosePlayer,"变猪书哈",1,30,30,GUI:MakeARGB(255,255,255,0), 0)

--此示例代码运行成功如下图所示。

SetPlayerNameSideText
<上一篇:角色名字两侧添加特效下一篇:设置指定职业的玩家简装图片资源>
SetPlayerUniformAvatarWithJob
设置指定职业的玩家简装图片资源

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-09-01 00:00:00
此函数设置指定职业的玩家简装的图片资源。

note_icon 备注
使用此接口后不应再次调用接口CL:SetPlayerUniformAvatar，否则会覆盖之前设置的所有职业的简装模型。

语法
Luacopy 复制
CL:SetPlayerUniformAvatarWithJob(
    _male,
    _female,
    job
)
参数
_male

string

 
男性模型的图片资源

_female

string

 
女性模型的图片资源

note_icon 备注
参数_male和_female均为字符串格式，字符串中的每个参数均为由英文逗号分割的模型ID。

字符串中的每个参数以及含义如下表所示。

3D双端：

参数无需全部填写，根据需求按照下表中的顺序填写即可。

若需要配置的参数中间存在不需要配置的参数，将不需要配置的参数设置为0即可。

索引	参数名	含义
1	AVATAR_BODY	本体
2	AVATAR_ARMET	头盔
3	AVATAR_WING	翅膀
4	AVATAR_WEAP	武器
5	AVATAR_HORSE	坐骑
6	AVATAR_SHIELD	盾牌
2D手游：

9个参数无需全部填写，根据需求按照下表中的顺序填写即可。

若需要配置的参数中间存在不需要配置的参数，将不需要配置的参数设置为0即可。

索引	参数名	含义
1	AVATAR_BODY	本体
2	AVATAR_ARMET	头盔
3	AVATAR_WING	翅膀
4	AVATAR_WEAP	武器
5	AVATAR_HORSE	坐骑
6	AVATAR_SHIELD	盾牌
7	AVATAR_SHADOW	单独制作的角色影子
8	AVATAR_MOUNTPOST	暂不生效
9	AVATAR_HAT_HAIR	戴斗笠时的头发
2D端游：

11个参数无需全部填写，根据需求按照下表中的顺序填写即可。

若需要配置的参数中间存在不需要配置的参数，将不需要配置的参数设置为0即可。

索引	参数名	含义
1	AVATAR_BODY	本体
2	AVATAR_ARMET	头盔
3	AVATAR_WING	翅膀
4	AVATAR_WEAP	武器
5	AVATAR_HORSE	坐骑
6	AVATAR_SHIELD	盾牌
7	AVATAR_SHADOW	单独制作的角色影子
8	AVATAR_BODYEFFECT	本体特效
9	AVATAR_WEAPFFECT	武器特效
10	AVATAR_MOUNTEFFECT	坐骑特效
11	AVATAR_MOUNTPOST	暂不生效
job

int

 
角色的职业

1战士

2法师

3术士

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

 
v1.2

 
优化参数_male和_female的填写逻辑

示例代码
Luacopy 复制
CL:SetPlayerUniformAvatarWithJob("25002,0,0,0,0,0,0,0,0", "25502,0,0,0,0,0,0,0,0",1) --设置战士职业的玩家简装的图片资源
CL:SetPlayerUniformAvatarWithJob("25003,0,0,0,0,0,0,0,0", "25503,0,0,0,0,0,0,0,0",2) --设置法师职业的玩家简装的图片资源
CL:SetPlayerUniformAvatarWithJob("25004,0,0,0,0,0,0,0,0", "25504,0,0,0,0,0,0,0,0",3) --设置术士职业的玩家简装的图片资源

--此示例代码运行成功后，会根据玩家的性别和职业展现不同的简装效果。

--以法师职业的男性角色为例，简装效果如下图所示。

SetPlayerUniformAvatarWithJob.png
<上一篇:角色名字两侧添加文字下一篇:设置玩家简装的图片资源>
SetPlayerUniformAvatar
设置玩家简装的图片资源

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-07-21 00:00:00
此函数设置玩家简装所用图片资源。

如需设置指定职业的玩家简装的图片资源，则可使用接口CL:SetPlayerUniformAvatarWithJob进行设置。

语法
Luacopy 复制
CL:SetPlayerUniformAvatar( 
    _Male,
    _Female
)

参数
_Male

string

 
男性模型的图片资源

_Female

string

 
女性模型的图片资源

note_icon 备注
参数含义请参见接口CL:SetPlayerUniformAvatarWithJob的说明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function OnPlayerDataInit()
    if UserOnPlayerDataInit == nil then
        CL:SetPlayerUniformAvatar("25002,0,0,26000,0,0,0,0,0", "25502,0,0,26000,0,0,0,0,0") --玩家简装
        CL:SetMonsterUniformAvatar("6811,0,0,0,0,0,0,0,0")  --怪物简装
    else
        UserOnPlayerDataInit()
    end
end
<上一篇:设置指定职业的玩家简装图片资源下一篇:设置伤害飘字>
SetRoleHurtNum
设置伤害飘字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置伤害飘字。

语法
Luacopy 复制
CL:SetRoleHurtNum( 
    _RoleGUID,
    _AttackValue,
    _Type,
    _Dir
)

参数
_RoleGUID

string

 
玩家角色的GUID。

_AttackValue

int

 
伤害值。

_Type

int

 
伤害类型。

具体请参见伤害类型定义。

_Dir

int

 
飘字方向。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetRoleHurtNum(guid,1000,1,1) 

--此示例代码运行成功如下图所示。

SetRoleHurtNum
<上一篇:设置玩家简装的图片资源下一篇:设定选中角色的序号>
SetRoleSelectIndex
设定选中角色的序号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设定角色选择面板中选中角色的序号。

语法
Luacopy 复制
CL:SetRoleSelectIndex( 
    _Idx
)

参数
_Idx

int

 
角色的序号。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码片段来自SelectRole.lua
function SelectRole.SelectRoleImage(_Handle)
    local _RoleCount = #SelectRole.RoleList --得到角色列表数量
    if _RoleCount > 0 then
        if nil ~= _Handle then
            local _ButtonIdx = GUI:WndGetParam(_Handle) --得到角色选择按钮的序号
            SelectRole.SelectIndex = _ButtonIdx --即为角色的序号
            CL:SetRoleSelectIndex(SelectRole.SelectIndex) --设置选择角色
        end
    end
end
<上一篇:设置伤害飘字下一篇:设置角色头顶聊天气泡相关配置>
SetRoleTalkBubbleConfig
设置角色头顶聊天气泡相关配置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-03-04 00:00:00
此函数设置角色头顶聊天气泡相关配置。

语法
Luacopy 复制
CL:SetRoleTalkBubbleConfig(
    config
)
参数
config

string

 
详细配置，格式是JSON字符串

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local role_talk_bubble_config = {
    -- 气泡显示时长（秒）
    bubble_show_duration = 15,
    -- 气泡最大高度（像素）
    bubble_max_height = 300,
    -- 气泡整体偏移 (像素)
    bubble_offset_x = 20,
    bubble_offset_y = 30,

    -- 气泡背景图片
    bubble_top_image = 1856540000,
    bubble_middle_image = 1856540001, -- 纵向拉伸
    bubble_bottom_image = 1856540002,

    -- 显示内容与气泡框的间距（像素）
    padding_left = 10,
    padding_top = 10,
    padding_right = 10,
    padding_bottom = 10,

    -- 内容文本字体
    font_name = "SIMLI18", -- 字体名，对应FontSettting.xml的FontUseName字段

    --  内容行间距（像素）
    line_spacing = 2
}
    
CL:SetRoleTalkBubbleConfig(json.encode(role_talk_bubble_config))
--如下图所示运行上述代码前可以正常设置聊天气泡的字体、图片以及显示位置。

SetRoleTalkBubbleConfig.png
--如下图所示运行上述代码后。

SetRoleTalkBubbleConfig_2.png
--将X，Y值重新设置后，聊天气泡移动
bubble_offset_x = 110,
bubble_offset_y = 120,

SetRoleTalkBubbleConfig_3.png
--气泡显示时长（秒）
bubble_show_duration = 15,
--设置聊天气泡显示时长为15秒，15秒后气泡正常消失。

SetRoleTalkBubbleConfig_4.png

SetRoleTalkBubbleConfig_5.png
--气泡最大高度（像素）
bubble_max_height = 100,
--当聊天气泡达到最大高度后，超过该高度的内容不显示。

SetRoleTalkBubbleConfig_6.png
--显示内容与气泡框的间距（像素）
padding_left = 10,
padding_top = 10,
padding_right = 10,
padding_bottom = 10,
--当各间距为10时，效果如下。

SetRoleTalkBubbleConfig_7.png
--当各间距为20时，效果如下。

SetRoleTalkBubbleConfig_8.png
--内容行间距（像素）
line_spacing = 2
--行间距为2时

SetRoleTalkBubbleConfig_9.png
--设置行间距为10时，效果如下。

SetRoleTalkBubbleConfig_10.png
<上一篇:设定选中角色的序号下一篇:设置对象选中时的颜色>
SetSelctDrawColor
设置对象选中时的颜色

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置对象选中时的颜色。

语法
Luacopy 复制
CL:SetSelctDrawColor( 
    _r,
    _g,
    _b,
    _a
)

参数
_r

int

 
红色的颜色值。

范围为0~255。

_g

int

 
绿色的颜色值。

范围为0~255。

_b

int

 
蓝色的颜色值。

范围为0~255。

_a

int

 
颜色的透明度。

范围为0~255。0表示全透明，255表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetSelctDrawColor(255,0,0,255)--设置选中目标时红色高亮

--此示例代码运行成功如下图所示。

SetSelctDrawColor
<上一篇:设置角色头顶聊天气泡相关配置下一篇:根据角色的GUID选中目标角色>
SetSelectByGuid
根据角色的GUID选中目标角色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-02-24 00:00:00
此函数作用为根据角色的GUID选中目标角色。

note_icon 备注
此接口仅支持可选中的怪物、玩家对象和假人。

语法
Luacopy 复制
CL:SetSelectByGuid(
    str_guid
)
参数
str_guid

string

 
目标角色的GUID

返回值
bool

 
是否选中成功

true选中成功

false选中失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

 
v1.2

 
新增对2D假人支持

 
v1.3

 
新增对2D端游支持

示例代码
Luacopy 复制
local size = CL:GetNearMonsterListByCount(5,1) --获取屏幕范围内5个有主人怪物的列表
dbg("size:"..size) --打印获取的怪物个数
if size ~= 0 then
    servant = LuaRet
    dbg(""..CL:GBK2UTF8(serialize(servant))) --打印获取的怪物列表
    if CL:SetSelectByGuid(servant[1][4]) then --根据获取的第一个怪物的GUID来选中怪物
        dbg("选中"..CL:GBK2UTF8(servant[1][1]).."成功")
    else
        dbg("选中失败")
    end
end

--此示例代码运行成功如下图所示。

GetNearMonsterListByCount.png
<上一篇:设置对象选中时的颜色下一篇:设置选中某个玩家角色>
SetSelectPlayer
设置选中某个玩家角色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置某个玩家角色为选中状态。

语法
Luacopy 复制
CL:SetSelectPlayer( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色名称。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetNearPlayerListByCount(3) then --获取附件玩家列表
    dbg(LuaRet[1][1])
end
CL:SetSelectPlayer(LuaRet[1][1]) --设置离自己最近的玩家为选中状态

--此示例代码运行成功如下图所示。

SetSelectPlayer
<上一篇:根据角色的GUID选中目标角色下一篇:设置玩家角色自身隐身时的透明度>
SetSelfGhostColorAlpha
设置玩家角色自身隐身时的透明度

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-09-01 00:00:00
此函数设置玩家角色自身隐身时的透明度。

语法
Luacopy 复制
CL:SetSelfGhostColorAlpha(
    alpha
)
参数
alpha

int

 
隐身时的模型透明度

范围为0-255，0为全透明，255为不透明。默认值为80。

如果设置的数值不在上述范围内，则程序将自动使用默认值。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetSelfGhostColorAlpha(20) --设置自身隐身时的透明度

--此示例代码运行前效果如下图所示。

SetSelfGhostColorAlpha
<上一篇:设置选中某个玩家角色下一篇:设置需要突出显示的角色列表>
SetShowMarkRoleList
设置需要突出显示的角色列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-04-24 00:00:00
此函数设置需要突出显示的角色列表，具体效果如示例代码中所示。

如需修改突出显示的图片资源，则可使用全局变量RoleMarkImageID进行设置。

如需修改角色突出显示标记的高度，则可使用全局变量RoleMarkYOffset进行设置。

语法
Luacopy 复制
CL:SetShowMarkRoleList(
    config
)
参数
config

string

 
需要突出显示的角色名字列表（角色可以是玩家或者怪物）

为JSON格式的字符串（可由Lua的table类型通过json.encode转换为JSON格式的字符串）

Lua表的格式为：{"角色1的名字","角色2的名字","角色3的名字",...}

例如：{"testrole","鸡","鹿"}

note_icon 备注
此处应填写角色的名称，并非索引名。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local test={"鸡","练功\\n木人"}
CL:SetShowMarkRoleList(json.encode(test))

--此示例代码运行成功如下图所示。

SetShowMarkRoleList
<上一篇:设置玩家角色自身隐身时的透明度下一篇:设置可同屏玩家数量的最大值>
SetShowPlayerMaxNum
设置可同屏玩家数量的最大值

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数设置可同屏玩家数量的最大值。

当同屏玩家数量超过最大值时，只显示玩家的血条、名字和阴影，不显示人物模型。

参考 GetShowPlayerMaxNum

caution_icon 注意
当此接口设置的可同屏玩家数量的最大值过大时，可能会影响客户端的性能。

SetShowPlayerMaxNum.png
语法
Luacopy 复制
CL:SetShowPlayerMaxNum(
    _Num
)
参数
_Num

int

 
可同屏玩家数量的最大值

范围为0-300（默认值为100）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetShowPlayerMaxNum(100) --设置可同屏玩家数量的最大值为100
dbg("可同屏玩家数量的最大值为"..CL:GetShowPlayerMaxNum()) --获取可同屏玩家数量的最大值

--此示例代码运行成功如下图所示。

GetShowPlayerMaxNum.png
<上一篇:设置需要突出显示的角色列表下一篇:设置角色死亡后是否显示名字等信息>
SetShowPlayerNamesAfterDeath
设置角色死亡后是否显示名字等信息

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-02-04 00:00:00
此函数设置角色死亡后是否显示名字，行会，配偶和师徒名等信息。

客户端默认在角色死亡后，其尸体上方会显示这些信息。如不需要显示，则可使用该接口设置不显示。

语法
Luacopy 复制
CL:SetShowPlayerNamesAfterDeath( 
    _Flag
)

参数
_Flag

unsigned int

 
0表示不显示

0xffffffff表示显示

note_icon 备注
此参数不建议设置其他的任何数值。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetShowPlayerNamesAfterDeath(0) --设置角色死亡后尸体上不显示名字等信息

--此示例代码成功效果如下图所示。

SetShowPlayerNamesAfterDeath
<上一篇:设置可同屏玩家数量的最大值下一篇:设置角色名字后追加文本的颜色>
SetTextNearPlayerNameColor
设置角色名字后追加文本的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置角色名字后追加文本的颜色。

语法
Luacopy 复制
CL:SetTextNearPlayerNameColor( 
    _PlayerGUID,
    _r,
    _g,
    _b
)

参数
_PlayerGUID

string

 
玩家角色的GUID。

_r

int

 
红色的颜色值。

范围为0~255。

_g

int

 
绿色的颜色值。

范围为0~255。

_b

int

 
蓝色的颜色值。

范围为0~255。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID()
CL:SetTextNearPlayerName(guid,"新增内容") --名字后添加文本内容
CL:SetTextNearPlayerNameColor(guid,255,255,0) --设置文本内容的颜色为黄色

--此示例代码运行成功如下图所示。

SetTextNearPlayerNameColor
<上一篇:设置角色死亡后是否显示名字等信息下一篇:添加文本至角色名字后>
SetTextNearPlayerName
添加文本至角色名字后

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数添加文本至角色名字末尾。

语法
Luacopy 复制
CL:SetTextNearPlayerName( 
    _RoleGUID,
    _Text
)

参数
_RoleGUID

string

 
玩家角色的GUID。

_Text

string

 
添加的文本内容。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID()
CL:SetTextNearPlayerName(guid,"新增内容") --文字后添加文本内容

--此示例代码运行成功如下图所示。

SetTextNearPlayerName
<上一篇:设置角色名字后追加文本的颜色下一篇:设置角色回复血量的文字飘字的图片资源ID>
SetUserRoleHealImage
设置角色回复血量的文字飘字的图片资源ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-10-28 15:21:00
此函数设置角色回复血量时显示的文字飘字的图片资源ID。

正确显示回复血量的飘字特效的条件如下：

1.正确配置此接口和接口CL:SetUserRoleHealImage（设置角色回复血量的文字飘字的图片资源ID）。

2.服务端相关接口设置的血量变化量（对应参数为target_hp_ref）为正数；

3.服务端相关接口设置的伤害类型（对应参数为type）为37-46（对应伤害类型定义中索引号37-46）；

上述服务端相关接口包括：lualib:ShowRoleHPRefEx、lualib:ShowRoleHPRefExWithSkillID、lualib:ShowRoleHPRefAndMPRef和lualib:ShowRoleHPRefAndMPRefWithSkillID。

语法
Luacopy 复制
CL:SetUserRoleHealImage(
    _Idx,
    _ImageID
)
参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号37-46

_ImageID

unsigned int

 
文字飘字的图片资源ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

 
v1.2

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--服务端
lualib:ShowRoleHPRefEx("", player, 270, 37) --向周围通知角色血量的变化

--客户端（手游）
CL:SetUserRoleHealImage(0,4004800700) --设置文字飘字
CL:SetUserRoleHealNumImageName(0, "mp.png") --设置数字飘字

--此示例代码运行成功如下图所示。

SetUserRoleHealImage.png
<上一篇:添加文本至角色名字后下一篇:设置角色回复血量的数字飘字的图集资源名>
SetUserRoleHealNumImageName
设置角色回复血量的数字飘字的图集资源名

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-10-28 15:21:00
此函数设置角色回复血量时显示的数字飘字的图集资源名。

正确显示回复血量的飘字特效的条件如下：

1.正确配置此接口和接口CL:SetUserRoleHealImage（设置角色回复血量的文字飘字的图片资源ID）。

2.服务端相关接口设置的血量变化量（对应参数为target_hp_ref）为正数；

3.服务端相关接口设置的伤害类型（对应参数为type）为37-46（对应伤害类型定义中索引号37-46）；

上述服务端相关接口包括：lualib:ShowRoleHPRefEx、lualib:ShowRoleHPRefExWithSkillID、lualib:ShowRoleHPRefAndMPRef和lualib:ShowRoleHPRefAndMPRefWithSkillID。

语法
Luacopy 复制
CL:SetUserRoleHealNumImageName(
    _Idx,
    _NumImageName
)
参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号37-46

_NumImageName

string

 
数字飘字的图集资源名

请参见自定义飘字效果了解更多信息

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--服务端
lualib:ShowRoleHPRefEx("", player, 270, 37) --向周围通知角色血量的变化

--客户端
CL:SetUserRoleHealImage(0,4004800700) --设置文字飘字
CL:SetUserRoleHealNumImageName(0, "mp.png") --设置数字飘字

--此示例代码运行成功如下图所示。

SetUserRoleHealImage.png
<上一篇:设置角色回复血量的文字飘字的图片资源ID下一篇:设置角色回复血量飘字的起始图片资源ID和间隔>
SetUserRoleHealNumImage
设置角色回复血量飘字的起始图片资源ID和间隔

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-12-02 00:00:00
此函数设置角色回复血量时显示的数字飘字的起始图片资源ID和间隔。

正确显示回复血量的飘字特效的条件如下：

1.正确配置此接口和接口CL:SetUserRoleHealImage（设置角色回复血量的文字飘字的图片资源ID）。

2.服务端相关接口设置的血量变化量（对应参数为target_hp_ref）为正数；

3.服务端相关接口设置的伤害类型（对应参数为type）为37-46（对应伤害类型定义中索引号37-46）；

上述服务端相关接口包括：lualib:ShowRoleHPRefEx、lualib:ShowRoleHPRefExWithSkillID、lualib:ShowRoleHPRefAndMPRef和lualib:ShowRoleHPRefAndMPRefWithSkillID。

语法
Luacopy 复制
CL:SetUserRoleHealNumImage(
    _Idx,
    _ImageID,
    _Interval
)
参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号37-46

_ImageID

unsigned int

 
飘字的起始图片资源ID

_Interval

int

 
图片资源ID间隔

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--服务端
lualib:ShowRoleHPRefEx("", player, 270, 37) --向周围通知角色血量的变化

--客户端
CL:SetUserRoleHealImage(0,4004800700) --设置文字飘字
CL:SetUserRoleHealNumImage(0, 4004810200 ,1) --设置数字飘字的起始图片资源ID和间隔

--此示例代码运行成功如下图所示。

SetUserRoleHealNumImage.png
<上一篇:设置角色回复血量的数字飘字的图集资源名下一篇:设置角色额外伤害的图片>
SetUserRoleHurtImage2
设置角色额外伤害的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设定当角色受到额外伤害时展示的图片资源。

如下图效果。

SetUserRoleHurtImage

语法
Luacopy 复制
CL:SetUserRoleHurtImage2( 
    _Idx,
    _ImageID
)

参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号25-34

_ImageID

unsigned int

 
伤害图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetUserRoleHurtImage2(0, 1900415000)--3  切割伤害
CL:SetUserRoleHurtImage2(1, 1900415100)--4  剑阵伤害
CL:SetUserRoleHurtImage2(2, 1900415200)--5  煞气伤害
CL:SetUserRoleHurtImage2(3, 1900415300)--6  额外伤害
CL:SetUserRoleHurtImage2(4, 1900415600)--7  星座伤害
CL:SetUserRoleHurtImage2(5, 1900415400)--8  抵御伤害
CL:SetUserRoleHurtImage2(6, 1900415500)--9  伤害吸收
CL:SetRoleHurtNum(guid,1000,26,1) --设置伤害飘字

--此示例代码运行成功如下图所示。


<上一篇:设置角色回复血量飘字的起始图片资源ID和间隔下一篇:设置角色额外伤害的图片>
SetUserRoleHurtImage
设置角色额外伤害的图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设定当角色受到额外伤害时展示的图片资源。

如下图效果。

SetUserRoleHurtImage

语法
Luacopy 复制
CL:SetUserRoleHurtImage( 
    _Idx,
    _ImageID
)

参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号15-24

_ImageID

unsigned int

 
伤害图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetUserRoleHurtImage(0, 1900415000)--3  切割伤害
CL:SetUserRoleHurtImage(1, 1900415100)--4  剑阵伤害
CL:SetUserRoleHurtImage(2, 1900415200)--5  煞气伤害
CL:SetUserRoleHurtImage(3, 1900415300)--6  额外伤害
CL:SetUserRoleHurtImage(4, 1900415600)--7  星座伤害
CL:SetUserRoleHurtImage(5, 1900415400)--8  抵御伤害
CL:SetUserRoleHurtImage(6, 1900415500)--9  伤害吸收
CL:SetRoleHurtNum(guid,1000,15,1) --设置伤害飘字

--此示例代码运行成功如下图所示。

SetUserRoleHurtImage_2.png
<上一篇:设置角色额外伤害的图片下一篇:设置角色额外伤害的飘字起始图片资源ID和间隔>
SetUserRoleHurtNumImage2
设置角色额外伤害的飘字起始图片资源ID和间隔

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置角色受到额外伤害时显示的数字飘字的起始图片资源ID和间隔。

语法
Luacopy 复制
CL:SetUserRoleHurtNumImage2(
    _Idx,
    _ImageID,
    _Interval
)
参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号25-34

_ImageID

unsigned int

 
飘字的起始图片资源ID

_Interval

int

 
图片资源ID间隔

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetUserRoleHurtNumImage2(1, 1900460100, 1)

--此示例代码运行前效果如下图所示。

SetUserRoleHurtNumImage2.png
--此示例代码运行后效果如下图所示。
SetUserRoleHurtNumImage2_2.png
<上一篇:设置角色额外伤害的图片下一篇:设置角色额外伤害的飘字图集资源名>
SetUserRoleHurtNumImageName2
设置角色额外伤害的飘字图集资源名

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置角色受到额外伤害时显示的数字飘字的图集资源名。

语法
Luacopy 复制
CL:SetUserRoleHurtNumImageName2(
    _Idx,
    _NumImageName
)
参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号25-34

_NumImageName

string

 
飘字的图集资源名

请参见自定义飘字效果了解更多信息。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetUserRoleHurtImage2(0, 1900415000)--3  切割伤害
CL:SetUserRoleHurtImage2(1, 1900415100)--4  剑阵伤害
CL:SetUserRoleHurtImage2(2, 1900415200)--5  煞气伤害
CL:SetUserRoleHurtImage2(3, 1900415300)--6  额外伤害
CL:SetUserRoleHurtImage2(4, 1900415600)--7  星座伤害
CL:SetUserRoleHurtImage2(5, 1900415400)--8  抵御伤害
CL:SetUserRoleHurtImage2(6, 1900415500)--9  伤害吸收
CL:SetRoleHurtNum(guid,2000,26,1) --设置伤害飘字

CL:SetUserRoleHurtNumImageName2(1, "mp.png") --设置角色额外伤害的飘字图集资源名

--此示例代码运行前效果如下图所示。

SetUserRoleHurtNumImageName2.png
--此示例代码运行后效果如下图所示。
SetUserRoleHurtNumImageName2_2.png
<上一篇:设置角色额外伤害的飘字起始图片资源ID和间隔下一篇:设置角色额外伤害的飘字图集资源名>
SetUserRoleHurtNumImageName
设置角色额外伤害的飘字图集资源名

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置角色受到额外伤害时显示的数字飘字的图集资源名。

语法
Luacopy 复制
CL:SetUserRoleHurtNumImageName(
    _Idx,
    _NumImageName
)
参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号15-24

_NumImageName

string

 
飘字的图集资源名

请参见自定义飘字效果了解更多信息。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取玩家自己的GUID
CL:SetUserRoleHurtImage(0, 1900415000)--3  切割伤害
CL:SetUserRoleHurtImage(1, 1900415100)--4  剑阵伤害
CL:SetUserRoleHurtImage(2, 1900415200)--5  煞气伤害
CL:SetUserRoleHurtImage(3, 1900415300)--6  额外伤害
CL:SetUserRoleHurtImage(4, 1900415600)--7  星座伤害
CL:SetUserRoleHurtImage(5, 1900415400)--8  抵御伤害
CL:SetUserRoleHurtImage(6, 1900415500)--9  伤害吸收
CL:SetRoleHurtNum(guid,1000,15,1) --设置伤害飘字

CL:SetUserRoleHurtNumImageName(0, "mp.png") --设置角色额外伤害的飘字图集资源名

--此示例代码运行前效果如下图所示。

SetUserRoleHurtNumImageName.png
--此示例代码运行后效果如下图所示。
SetUserRoleHurtNumImageName_2.png
<上一篇:设置角色额外伤害的飘字图集资源名下一篇:设置角色额外伤害的飘字起始图片资源ID和间隔>
SetUserRoleHurtNumImage
设置角色额外伤害的飘字起始图片资源ID和间隔

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置角色受到额外伤害时显示的数字飘字的起始图片资源ID和间隔。

语法
Luacopy 复制
CL:SetUserRoleHurtNumImage(
    _Idx,
    _ImageID,
    _Interval
)
参数
_Idx

int

 
0-9伤害的索引号

对应伤害类型定义中索引号15-24

_ImageID

unsigned int

 
飘字的起始图片资源ID

_Interval

int

 
图片资源ID间隔

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetUserRoleHurtNumImage(0, 1900460100, 1)

--此示例代码运行前效果如下图所示。

SetUserRoleHurtNumImage.png
--此示例代码运行后效果如下图所示。
SetUserRoleHurtNumImage_2.png
<上一篇:设置角色额外伤害的飘字图集资源名下一篇:设置是否一直显示玩家角色的血条>
WhetherShowPlayerHP
设置是否一直显示玩家角色的血条

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-04-24 00:00:00
此函数设置是否一直显示玩家角色的血条。

语法
Luacopy 复制
CL:WhetherShowPlayerHP(
    val
)
参数
val

int

 
是否一直显示玩家角色的血条

-1保持原状

0一直不显示

1一直显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:WhetherShowPlayerHP(0) --设置一直不显示玩家角色的血条

--此示例代码运行前效果如下图所示。

WhetherShowPlayerHP_2.png

--此示例代码运行后效果如下图所示。

WhetherShowPlayerHP.png
<上一篇:设置角色额外伤害的飘字起始图片资源ID和间隔
AddCloudSyncPlayerCustomData
云挂机同步指定的本地自定义变量

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2025-08-27 00:00:00
此函数作用是云挂机同步指定的本地自定义变量。

note_icon 备注
对于2D，本地变量名以及变量值必须是ASCII（非中文），3D不做要求。

为了避免数据同步不及时，此函数建议放到LogicFunction.lua里调用。

caution_icon 注意
keyname如果需要修改，在端游和手游要同步修改，必须保持一致，不能只改一端。

语法
Luacopy 复制
CL:AddCloudSyncPlayerCustomData(
    keyname
)
参数
keyname

string

 
CL:SetPlayerCustomData、CL:SetPlayerCustomDataString、 CL:GetPlayerCustomData、CL:GetPlayerCustomDataString的自定义变量的索引名。

返回值
bool

 
true添加成功

false添加失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddDelayTask("Timer()", 1000, 1)
function Timer()
    CL:SetPlayerCustomDataString("testString","test")
    CL:SetPlayerCustomData("testInt",12345)
    CL:AddCloudSyncPlayerCustomData("testString")
    CL:AddCloudSyncPlayerCustomData("testInt")
end
--云挂机启动后在端游获取发送到服务端查看。
CL:AddDelayTask("Timer()", 1000, 1)
function Timer()
    local String = ""
    local Int = 0
    
    if CL:GetPlayerCustomDataString("testString") then
        String = LuaRet
    end
    if CL:GetPlayerCustomData("testInt") then
        Int = LuaRet
    end
    UI:Lua_SubmitForm("接口测试表单", "main", ""..String.."#"..tostring(Int))
end
--服务端代码：
lualib:SetFormAllowFunc({"main"})
function main(player, String,Int)
    local string = String
    local int = Int
    if string ~= "" then
        lualib:Warn("自定义字符串为"..string)
    end
    if int ~= "" then
        lualib:Warn("自定义整型为"..int)
    end
end

--如下图所示可以成功获取到上传的自定义变量的值。

AddCloudSyncPlayerCustomData.png
下一篇:获取当前选中角色的GUID>
GetCurSelectRoleGUID
获取当前选中角色的GUID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-25 00:00:00
此函数获取当前选中角色的GUID。

语法
Luacopy 复制
CL:GetCurSelectRoleGUID()
参数
无

返回值
string

 
若选中角色则返回选中角色的GUID

若没有选中角色则返回空字符串（""）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
dbg("当前选中角色的GUID为："..CL:GetCurSelectRoleGUID())

--此示例代码运行成功如下图所示。

GetCurSelectRoleGUID.png
<上一篇:云挂机同步指定的本地自定义变量下一篇:获取当前角色状态值>
GetCurStatus
获取当前角色状态值

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-07-18 00:00:00
此函数获取当前角色状态值。

语法
Luacopy 复制
CL:GetCurStatus()

参数
无

 
返回值
int

 
当前角色状态值

0待机

3战斗待机

4走

5跑

7攻击

9死亡

10技能

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前选中角色的GUID下一篇:获取杀手的GUID>
GetKillerGuid
获取杀手的GUID

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取杀手的GUID。

语法
Luacopy 复制
CL:GetKillerGuid()
参数
无

返回值
string

 
杀手的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _KillerGuid = CL:GetKillerGuid()
dbg("_KillerGuid:".._KillerGuid)

--此示例代码运行成功如下图所示。

GetKillerGuid
<上一篇:获取当前角色状态值下一篇:获取杀死自己玩家角色名>
GetKillerName
获取杀死自己玩家角色名

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取杀死自己玩家角色的名字。

语法
Luacopy 复制
CL:GetKillerName()

参数
无

 
返回值
string

 
玩家角色的名字。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _KillerName = CL:GetKillerName()
dbg("杀死自己玩家的名字:".._KillerName)

--此示例代码运行成功如下图所示。

_KillerName
<上一篇:获取杀手的GUID下一篇:获取角色拥有的所有称号>
GetMyTitleList
获取角色拥有的所有称号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-10-12 00:00:00
此函数获取玩家自身角色所拥有的全部称号。

语法
Luacopy 复制
CL:GetMyTitleList()

参数
无

 
返回值
bool

 
true执行成功

false执行失败

note_icon 备注
如操作成功，则获取的称号信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]称号ID；

LuaRet[i][2]称号名字；

LuaRet[i][3]称号描述；

LuaRet[i][4]是否加入未获得称号显示，0代表该称号不在角色未获取称号列表中显示，1代表该称号在角色未获取称号列表中显示。

LuaRet[5]来源；

LuaRet[6]Buff ID。

版本历史
v1.0

 
首次发布

 
v1.1

 
增加返回值中获取的内容：来源和Buff ID

示例代码
Luacopy 复制
CL:GetMyTitleList()

for i = 1,#LuaRet do
    dbg("称号ID为"..LuaRet[i][1]) --称号ID
    dbg("称号名字为："..LuaRet[i][2]) --称号名字
    dbg("称号描述为："..LuaRet[i][3]) --称号描述
    dbg("是否加入未获得称号显示："..LuaRet[i][4]) --是否加入未获得称号显示
    dbg("称号的来源："..LuaRet[i][5]) --称号的来源
    dbg("对应BUFFID为"..LuaRet[i][6]) --BUFFID
end

--此示例代码运行成功如下图所示。

GetMyTitleList.png
<上一篇:获取杀死自己玩家角色名下一篇:获取玩家角色的挂机状态>
GetPlayerAutoAttac
获取玩家角色的挂机状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前玩家角色是否正在挂机。

语法
Luacopy 复制
CL:GetPlayerAutoAttac()

参数
无

 
返回值
bool

 
true处于挂机状态

false未处于挂机状态

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对端游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取角色拥有的所有称号下一篇:获取玩家角色自定义字符串变量>
GetPlayerCustomDataString
获取玩家角色自定义字符串变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-08-21 00:00:00
此函数获取玩家角色自定义字符串变量。

语法
Luacopy 复制
CL:GetPlayerCustomDataString( 
    _KeyName
)

参数
_KeyName

string

 
自定义变量的索引名

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的自定义变量存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
CL:SetPlayerCustomDataString("weekdays","星期一") --设置玩家角色自定义字符串变量
if CL:GetPlayerCustomDataString("weekdays") then
    dbg(LuaRet)
end

--控制台将输出：“星期一”。
<上一篇:获取玩家角色的挂机状态下一篇:获取玩家角色自定义整型变量>
GetPlayerCustomData
获取玩家角色自定义整型变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-21 00:00:00
此函数获取玩家角色自定义整型变量。

语法
Luacopy 复制
CL:GetPlayerCustomData( 
    _KeyName
)

参数
_KeyName

string

 
自定义变量的索引名

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的自定义变量存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPlayerCustomData("key",1123) --设置玩家角色自定义整型变量
if CL:GetPlayerCustomData("key") then
    dbg(LuaRet)
end

--控制台将输出：“1123”。
<上一篇:获取玩家角色自定义字符串变量下一篇:获取服务器传回的玩家角色自定义整型变量>
GetPlayerCustomIntData
获取服务器传回的玩家角色自定义整型变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-21 00:00:00
此函数获取服务器传回的玩家角色自定义整型变量。

语法
Luacopy 复制
CL:GetPlayerCustomIntData( 
    _RoleGUID,
    _DataKey
)

参数
_RoleGUID

string

 
玩家角色的GUID。

_DataKey

string

 
自定义变量的索引名。

返回值
int

 
自定义的变量。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ret
if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then --获取玩家角色自身的GUID
    local self_reinlevel = CL:GetPlayerCustomIntData(LuaRet, "reinLevel") --获取转生的等级
    if self_reinlevel < rein_level then
        ret = ret..tipText("转生："..rein_level, 4294901760)
    else
        ret = ret..tipText("转生：", 4294573201)..tipText(rein_level)
    end	
end
<上一篇:获取玩家角色自定义整型变量下一篇:获取服务器传回的玩家角色自定义字符串变量>
GetPlayerCustomStringData
获取服务器传回的玩家角色自定义字符串变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-21 00:00:00
此函数获取服务器传回的玩家角色自定义字符串变量。

语法
Luacopy 复制
CL:GetPlayerCustomStringData( 
    _RoleGUID,
    _DataKey
)

参数
_RoleGUID

string

 
玩家角色的GUID

_DataKey

string

 
自定义变量的索引名

返回值
string

 
自定义的变量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取自身的GUID
local userdata = CL:GetPlayerCustomStringData(guid, "weekday")
dbg("自定义变量为："..userdata)
<上一篇:获取服务器传回的玩家角色自定义整型变量下一篇:获取玩家角色是否在摆摊>
GetPlayerInStallState
获取玩家角色是否在摆摊

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2022-05-27 00:00:00
此函数获取指定的玩家角色是否正在摆摊。

语法
Luacopy 复制
CL:GetPlayerInStallState( 
    _PlayerGUID
)

参数
_PlayerGUID

string

 
角色的GUID

返回值
bool

 
true处于摆摊状态

false未处于摆摊状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：当前查看装备的玩家正在摆摊。
local PlayerGUID = CL:GetViewEquipTarPlayerGUID() --获取所在查看装备的玩家角色的GUID
--判断该玩家角色是否在摆摊
if CL:GetPlayerInStallState(PlayerGUID) then
    dbg("该玩家角色正在摆摊")
else
    dbg("该玩家角色未在摆摊")	
end

--此示例代码运行成功如下图所示。

GetPlayerInStallState.png
<上一篇:获取服务器传回的玩家角色自定义字符串变量下一篇:获取角色的外观名字颜色>
GetPlayerNameColorByID
获取角色的外观名字颜色

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-02-03 00:00:00
此函数获取角色的外观名字颜色。

角色的外观名字是指角色在场景中显示的名字（如图1所示）。

图 1 外观名字

GetPlayerNameColorByID_2.png
角色的内观名字是指角色在角色面板中显示的名字（如图2所示）。

图 2 内观名字

GetPlayerNameColorByID_3.png
语法
Luacopy 复制
CL:GetPlayerNameColorByID(
    guidstr
)
参数
guidstr

string

 
角色的GUID

返回值
unsigned int

 
角色的外观名字颜色

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Guid = CL:GetCurSelectRoleGUID() --获取当前选中角色的GUID
dbg("角色的guid为"..Guid)
local NameColor = CL:GetPlayerNameColorByID(Guid) --获取该角色的外观名字颜色
dbg("角色的名字颜色为"..NameColor)

--此示例代码运行成功如下图所示。

GetPlayerNameColorByID.png
<上一篇:获取玩家角色是否在摆摊下一篇:获取其他玩家角色基本属性>
GetPlayerPropBase
获取其他玩家角色基本属性

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取指定的玩家角色的基本属性。

语法
Luacopy 复制
CL:GetPlayerPropBase( 
    _RoleGUID,
    _PropertyType
)

参数
_RoleGUID

string

 
角色的GUID。

_PropertyType

int

 
属性的类型。

点击玩家属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的数据存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function OtherRoleEquiment.propData()
    local PlayerGUID = CL:GetViewEquipTarPlayerGUID() --获取正在查看装备的其它玩家的GUID
    dbg("查看的玩家GUID:"..PlayerGUID)
    if CL:GetPlayerPropBase(PlayerGUID, 1) then --获取玩家的昵称
        dbg("该玩家的昵称:"..CL:GBK2UTF8(LuaRet)) 
    else
        dbg("获取失败")	
    end
end

--请将代码置入手游端本地脚本目录“GUILayout\OtherRoleEquiment.lua”的“OtherRoleEquiment.propData”函数中。查看任意玩家的装备，即可获取信息。
<上一篇:获取角色的外观名字颜色下一篇:获取其他玩家角色32位属性>
GetPlayerProperty32
获取其他玩家角色32位属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取指定的玩家角色的32位属性。

语法
Luacopy 复制
CL:GetPlayerProperty32( 
    _RoleGUID,
    _PropertyType
)

参数
_RoleGUID

string

 
角色的GUID。

_PropertyType

int

 
属性的类型。

点击玩家角色的32位属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的数据存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function OtherRoleEquiment.propData()
    local PlayerGUID = CL:GetViewEquipTarPlayerGUID()   --获取正在查看装备的其它玩家的GUID
    dbg("查看的玩家GUID:"..PlayerGUID)
    if CL:GetPlayerProperty32(PlayerGUID, ROLE_PROP32_LEVEL) then
        dbg("该玩家的等级:"..LuaRet)
    else
        dbg("获取失败")
    end
end

--请将代码置入手游端本地脚本目录“GUILayout\OtherRoleEquiment.lua”的“OtherRoleEquiment.propData”函数中。查看任意玩家的装备，即可获取信息。
<上一篇:获取其他玩家角色基本属性下一篇:获取其他玩家角色64位属性>
GetPlayerProperty64
获取其他玩家角色64位属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取指定的玩家角色的64位属性。

语法
Luacopy 复制
CL:GetPlayerProperty64( 
    _RoleGUID,
    _PropertyType
)

参数
_RoleGUID

string

 
角色的GUID。

_PropertyType

int

 
属性的类型。

点击玩家角色的64位属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的数据存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function OtherRoleEquiment.propData()
    local PlayerGUID = CL:GetViewEquipTarPlayerGUID()   --获取正在查看装备的其它玩家的GUID
    dbg("查看的玩家GUID:"..PlayerGUID)
    if CL:GetPlayerProperty32(PlayerGUID, ROLE_PROP64_EXP) then
        dbg("该玩家的经验:"..LuaRet)
    else
        dbg("获取失败")
    end
end

--请将代码置入手游端本地脚本目录“GUILayout\OtherRoleEquiment.lua”的“OtherRoleEquiment.propData”函数中。查看任意玩家的装备，即可获取信息
<上一篇:获取其他玩家角色32位属性下一篇:获取玩家角色自身的GUID>
GetPlayerSelfGUID
获取玩家角色自身的GUID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取玩家角色自身的GUID。

语法
Luacopy 复制
CL:GetPlayerSelfGUID()

参数
无

 
返回值
string

 
角色的GUID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local role_guid = CL:GetPlayerSelfGUID()
dbg(""..role_guid)

--控制台将输出：“66452126955372557”。
<上一篇:获取其他玩家角色64位属性下一篇:获取玩家角色自身的基本属性>
GetPlayerSelfPropBase
获取玩家角色自身的基本属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取玩家角色自身的基本属性。

语法
Luacopy 复制
CL:GetPlayerSelfPropBase( 
    _PropertyType
)

参数
_PropertyType

int

 
属性的类型。

点击玩家属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Gender
if CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then --获取角色性别
    _Gender = LuaRet
	dbg("角色性别：".._Gender) --1表示男性，2表示女性
end

--此示例代码运行成功如下图所示。

GetPlayerSelfPropBase
<上一篇:获取玩家角色自身的GUID下一篇:获取玩家角色自身的32位属性>
GetPlayerSelfProperty32
获取玩家角色自身的32位属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取玩家角色自身的32位属性。

语法
Luacopy 复制
CL:GetPlayerSelfProperty32( 
    _PropertyType
)

参数
_PropertyType

int

 
属性的类型。

点击玩家角色的32位属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Property 
if CL:GetPlayerSelfProperty32(ROLE_PROP32_HP) then --获取玩家血量
   Property = LuaRet
   dbg("玩家血量："..Property)
end 

--此示例代码运行成功如下图所示。

GetPlayerSelfProperty32
<上一篇:获取玩家角色自身的基本属性下一篇:获取玩家角色自身的64位属性>
GetPlayerSelfProperty64
获取玩家角色自身的64位属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-11-15 00:00:00
此函数获取玩家角色自身的64位属性。

语法
Luacopy 复制
CL:GetPlayerSelfProperty64( 
    _PropertyType
)

参数
_PropertyType

int

 
属性的类型。

点击玩家角色的64位属性了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中，类型是string。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local yb
if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then --获取玩家元宝数量
    yb = LuaRet
    dbg("玩家元宝数量："..yb)
end

--此示例代码运行成功如下图所示。

GetPlayerSelfProperty64
<上一篇:获取玩家角色自身的32位属性下一篇:获取当前玩家角色的状态>
GetPlayerStatus
获取当前玩家角色的状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前玩家角色在游戏中的状态，即未登录、选角色、游戏中或死亡。

语法
Luacopy 复制
CL:GetPlayerStatus()

参数
无

 
返回值
int

 
0未登录

1选角色

2游戏中

3死亡

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local role_status = CL:GetPlayerStatus()
dbg("现在的状态是："..role_status)

--控制台将输出：“现在的状态是：2”。
<上一篇:获取玩家角色自身的64位属性下一篇:随机获取角色名>
GetRandName
随机获取角色名

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数随机获取角色名。

该功能一般用于创建角色时随机取名。如下图界面。

GetRandName

语法
Luacopy 复制
CL:GetRandName( 
    gender
)

参数
gender

int

 
角色性别

1男性

2女性

返回值
string

 
随机的名字

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local rnd_player_name = CL:GetRandName(1)
dbg("随机名字:"..rnd_player_name)

--控制台将输出结果，例如：“随机名字:戚南弦”。
<上一篇:获取当前玩家角色的状态下一篇:获取可恢复角色列表>
GetRecoverRoleList
获取可恢复角色列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数获取可恢复角色的列表。

语法
Luacopy 复制
CL:GetRecoverRoleList()

参数
无

 
返回值
bool

 
true获取成功。

false获取失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的可恢复角色信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]玩家角色的GUID；

LuaRet[i][2]玩家角色的名字；

LuaRet[i][3]玩家角色的等级；

LuaRet[i][4]玩家角色的职业，1代表战士，2代表法师，3代表术士；

LuaRet[i][5]玩家角色的性别，1代表男，2代表女。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetRecoverRoleList() then
    dbg(LuaRet[1][1]) --玩家角色名字
else
    dbg("无可恢复的角色")	
end
<上一篇:随机获取角色名下一篇:获取指定玩家与自己关系>
GetRelationByPlayerGUID
获取指定玩家与自己关系

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数指定玩家与自己关系(同队、同帮会、同联盟、同阵营)。

语法
Luacopy 复制
CL:GetRelationByPlayerGUID(
    guid
)
参数
guid

string

 
玩家的GUID

返回值
操作结果

bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回获取成功或失败。如获取成功，获取的列表信息存储在全局变量LuaRet中。

LuaRet[1]是否是同队，true代表同队，false代表不同队。

LuaRet[2]是否是同帮会，true代表同帮会，false代表不同帮会。

LuaRet[3]是否是同联盟，true代表同联盟，false代表不同联盟。

LuaRet[4]否是同阵营，true代表同阵营，false代表不同阵营。

获取失败的原因可能有：guid不合法或不存在（不在视野内），guid不是其他玩家。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取可恢复角色列表下一篇:获取角色buff信息>
GetRoleBuffInfo
获取角色buff信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-02-24 00:00:00
此函数获取角色BUFF信息。

语法
Luacopy 复制
CL:GetRoleBuffInfo(
    role_id,
    buff_id
)
参数
role_id

string

 
角色的GUID

buff_id

uint16_t

 
BUFF的ID

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
获取的信息存储在全局变量LuaRet中。

LuaRet[1]BUFF的ID

LuaRet[2]堆叠数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local role_guid = CL:GetPlayerSelfGUID() 
local bool = CL:GetRoleBuffInfo(role_guid,15099)
dbg("bool = "..tostring(bool))
dbg("BUFF的ID为："..LuaRet[1].."-BUFF堆叠数量为"..LuaRet[2])

--可以正常获得角色指定ID的BUFF在角色身上的堆叠数量，最大可堆叠数量可通过BUFF模板表中字段叠加层数控制，结果如图所示。

GetRoleBuffInfo.png

GetRoleBuffInfo_2.png
<上一篇:获取指定玩家与自己关系下一篇:获取角色BUFF的ID列表>
GetRoleBuffList
获取角色BUFF的ID列表

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-11-28 18:01:00
此函数获取角色BUFF的ID列表。

语法
Luacopy 复制
CL:GetRoleBuffList(
    role_id
)
参数
role_id

string

 
角色的GUID

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
获取的信息存储在全局变量LuaRet中。

LuaRet[1]BUFF1的ID

LuaRet[2]BUFF2的ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local role_guid = CL:GetPlayerSelfGUID()
CL:GetRoleBuffList(role_guid)
bufflist = LuaRet
dbg(""..json.encode(bufflist))

--执行示例代码，结果如图所示。

GetRoleBuffList.png
<上一篇:获取角色buff信息下一篇:获取当前玩家角色的账号ID>
GetRoleLoginUserID
获取当前玩家角色的账号ID

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-08-02 00:00:00
此函数获取当前玩家角色的账号ID。

语法
Luacopy 复制
CL:GetRoleLoginUserID()
参数
无

返回值
string

 
当前玩家角色的账号ID

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

 
v1.2

 
新增对2D手游支持

示例代码
Luacopy 复制
--在LogicFunction.lua文件中添加PayMoneyUrlAppend函数。
function PayMoneyUrlAppend()
    local username = ""
    --获取当前登录的账号
    if UI:Lua_GetAccount() then
        username = LuaRet
    end
    local userid = CL:GetRoleLoginUserID() --获取当前玩家角色的账号ID
    local serverid = CL:GetGameServerID() --获取游戏区服ID
    local str = "&username="
    str = str..username
    str = str.."&sign="
    if UI:Lua_MD5String(""..userid..serverid..username) then
        str = str..LuaRet
    end
    return str
end

--此示例代码运行前，点击充值按钮，跳转页面效果如下图所示。

PayMoneyUrlAppend_2.png

--此示例代码运行后，点击充值按钮，跳转页面效果如下图所示。

PayMoneyUrlAppend.png
<上一篇:获取角色BUFF的ID列表下一篇:获取角色类型>
GetRoleTypeByGUID
获取角色类型

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-08-23 00:00:00
此函数通过GUID获取角色类型。

语法
Luacopy 复制
CL:GetRoleTypeByGUID(
    guid
)
参数
guid

string

 
角色的GUID

返回值
bool

 
true获取成功

false获取失败或者guid不存在

note_icon 备注
获取的信息存储在全局变量LuaRet中。

LuaRet[1]角色类型：

-1其他类型

0玩家

1假人

2怪物

3NPC

LuaRet[2]是否是英雄：

true英雄

false非英雄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetRoleTypeByGUID(string guid) then
    dbg("获取角色类型成功")
    dbg("角色类型为："..LuaRet[1].."-角色是否为英雄"..LuaRet[2])
else
    dbg("获取角色类型失败")
end

--玩家的GUID，结果如图所示。

GetRoleTypeByGUID.png

--怪物的GUID，结果如图所示。

GetRoleTypeByGUID_2.png
<上一篇:获取当前玩家角色的账号ID下一篇:获取角色列表>
GetSelectRoleList
获取角色列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-07-24 00:00:00
此函数获取玩家的角色列表信息。

语法
Luacopy 复制
CL:GetSelectRoleList( 
    _Tag,
    _CallBack
)

参数
_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
获取角色列表信息成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的角色列表信息存储在全局变量LuaParam中。

i为角色索引号。

LuaParam[1][i][1]玩家角色的名字；

LuaParam[1][i][2]玩家角色的等级；

LuaParam[1][i][3]玩家角色的职业，1代表战士，2代表法师，3代表术士；

LuaParam[1][i][4]玩家角色的性别，1代表男，2代表女；

LuaParam[1][i][5]是否最后一次登录的角色，1代表是，0代表否；

LuaParam[1][i][6]角色是否已跨服，true代表是，false代表否；

LuaParam[1][i][7]角色的状态，0代表从未进过游戏，1代表正常进入游戏，2代表已被删除，3代表已被永久删除，4代表未进游戏且已被删除，5代表跨服中，6代表已上架，7代表已拍下未支付；

LuaParam[1][i][8]角色的GUID。

LuaParam[1][i][9]自定义变量，字符串类型。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetSelectRoleList("SelectRole", "GetRoleList")

function GetRoleList()
    local Role_List = LuaParam[1][1]
    dbg("第一个角色名字为："..Role_List[1])
end
<上一篇:获取角色类型下一篇:获取当前角色经验值总数>
GetSelfUpgradeExp
获取当前角色经验值总数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前角色经验值总数。

语法
Luacopy 复制
CL:GetSelfUpgradeExp()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的数值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetSelfUpgradeExp() then
    dbg("当前角色的经验值总数为："..LuaRet)
end

--控制台将输出：“当前角色的经验值总数为：11885144”。

GetSelfUpgradeExp
<上一篇:获取角色列表下一篇:获取可同屏玩家数量的最大值>
GetShowPlayerMaxNum
获取可同屏玩家数量的最大值

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数获取可同屏玩家数量的最大值。

当同屏玩家数量超过最大值时，只显示玩家的血条、名字和阴影，不显示人物模型。

参考 SetShowPlayerMaxNum

SetShowPlayerMaxNum.png
语法
Luacopy 复制
CL:GetShowPlayerMaxNum()
参数
无

返回值
int

 
可同屏玩家数量的最大值

默认值为100

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetShowPlayerMaxNum(100) --设置可同屏玩家数量的最大值为100
dbg("可同屏玩家数量的最大值为"..CL:GetShowPlayerMaxNum()) --获取可同屏玩家数量的最大值

--此示例代码运行成功如下图所示。

GetShowPlayerMaxNum.png
<上一篇:获取当前角色经验值总数下一篇:获取称号模板表信息>
GetTitleList
获取称号模板表信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-10-12 00:00:00
此函数获取角色称号模板表中所有称号的信息。

角色称号模板表的访问路径为：游戏工具平台→游戏配置→角色→角色称号模板表→角色称号模板信息区域。

语法
Luacopy 复制
CL:GetTitleList()

参数
无

 
返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]称号ID（对应角色称号模板表中的“编号”选项）；

LuaRet[i][2]称号名称（对应角色称号模板表中的“名字”选项）；

LuaRet[i][3]称号描述（对应角色称号模板表中的“描述”选项）；

LuaRet[i][4]是否加入未获得称号显示（对应角色称号模板表中的“是否加入未获得称号显示”选项），0代表否，1代表是。

LuaRet[i][5]称号的来源（对应角色称号模板表中的“称号来源描述”选项）；

LuaRet[i][6]Buff ID。

版本历史
v1.0

 
首次发布

 
v1.1

 
增加返回值中获取的内容：称号的来源

 
v1.2

 
增加返回值中获取的内容：Buff ID

示例代码
Luacopy 复制
CL:GetTitleList()

for i = 1,#LuaRet do
    dbg("称号ID为"..LuaRet[i][1]) --称号ID
    dbg("称号名字为："..LuaRet[i][2]) --称号名字
    dbg("称号描述为："..LuaRet[i][3]) --称号描述
    dbg("是否加入未获得称号显示："..LuaRet[i][4]) --是否加入未获得称号显示
    dbg("称号的来源："..LuaRet[i][5]) --称号的来源
    dbg("对应BUFFID为"..LuaRet[i][6]) --BUFFID
end

--此示例代码运行成功如下图所示（只截取部分称号）。

GetTitleList.png
<上一篇:获取可同屏玩家数量的最大值下一篇:通过称号ID获取称号信息>
GetTitleTemplatePropByID
通过称号ID获取称号信息

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-10-12 00:00:00
此函数通过称号ID获取称号信息。

语法
Luacopy 复制
CL:GetTitleTemplatePropByID(
    id
)
参数
id

int

 
称号模板ID

返回值
bool

 
获取称号信息是否成功。

true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的属性列表信息存储在全局变量LuaRet中；

其中名称, 描述, 来源在PC端其返回GBK编码，而移动端则返回的是UTF8编码，这点和CL:GetTitleList和CL:GetMyTitleList不同。

LuaRet[1]称号ID；

LuaRet[2]名称；

LuaRet[3]描述；

LuaRet[4]是否加入未获得称号显示；

LuaRet[5]来源；

LuaRet[6]Buff ID；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetTitleTemplatePropByID(3170)
dbg("称号ID为"..LuaRet[1]) --称号ID
dbg("称号名字为："..LuaRet[2]) --称号名字
dbg("称号描述为："..LuaRet[3]) --称号描述
dbg("是否加入未获得称号显示："..LuaRet[4]) --是否加入未获得称号显示
dbg("称号的来源："..LuaRet[5]) --称号的来源
dbg("对应BUFFID为"..LuaRet[6]) --BUFFID

--此示例代码运行成功如下图所示。

GetTitleTemplatePropByID.png
<上一篇:获取称号模板表信息下一篇:获取是否重置“显示角色”相关接口的配置>
IsJumpMapResetShowHide
获取是否重置“显示角色”相关接口的配置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数获取跳转地图时是否重置“显示（或者隐藏）角色”相关接口的配置。

参考 JumpMapResetShowHide

语法
Luacopy 复制
CL:IsJumpMapResetShowHide(
    name
)
参数
name

string

 
接口名称

此参数为字符串类型，可填写的接口名称如下所示：

"OnShowHide"

"OnShowHideFamilyPlayer"

"OnShowHideOtherMonster"

返回值
bool

 
是否重置该接口的配置

true重置（为默认值）

false不重置

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对3D的支持

示例代码
Luacopy 复制
CL:JumpMapResetShowHide("OnShowHide", false) --设置跳转地图后不重置接口OnShowHide的配置
local ret = CL:IsJumpMapResetShowHide("OnShowHide")
dbg("是否重置："..tostring(ret))

--此示例代码运行成功如下图所示。

IsJumpMapResetShowHide.png
<上一篇:通过称号ID获取称号信息下一篇:获取可恢复角色列表>
RecoverRoleListReq
获取可恢复角色列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-07-24 00:00:00
此函数获取可恢复角色的列表。

note_icon 备注

如果要在原有的脚本RecoverRoleList.lua基础上修改

1、注意不要创建名为"RoleList"的控件，改为其他自定义名字，避免引擎修改RoleList控件的内容；

2、初始化请求CL:RecoverRoleListReq，等回调后动态创建列表项。

如果要完全实现自定义脚本

1、注意不要创建SelectRole.lua的"ResetRole"控件，改为其他自定义名字，避免引擎打开RecoverRoleList.lua脚本；

2、利用CL:RecoverRoleListReq、CL:RecoverRole即可实现恢复角色的完整功能。

语法
Luacopy 复制
CL:RecoverRoleListReq(
    _Tag,
    _CallBack
)

参数
_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

 
note_icon 备注
获取的可恢复角色信息存储在全局变量LuaParam中。

i为索引号。

LuaParam[1][i][1]玩家角色的GUID，字符串类型；

LuaParam[1][i][2]玩家角色的名字，字符串类型；

LuaParam[1][i][3]玩家角色的等级，整型；

LuaParam[1][i][4]玩家角色的职业，整型，1代表战士，2代表法师，3代表术士；

LuaParam[1][i][5]玩家角色的性别，整型，1代表男，2代表女。

LuaParam[1][i][6]玩家角色的删除时间，时间戳格式（秒），整型。

LuaParam[1][i][7]自定义变量，字符串类型。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--先给角色设置_RoleLoginCustomVar变量为“测量变量”
function set(npc, player)
  if lualib:SetStr(player, "_RoleLoginCustomVar", "测量变量") then
    return "设置成功"
  else 
    return "设置失败"
end


--删除角色后
CL:RecoverRoleListReq("RecoverRoleListReq", RecoverRoleList.GetRoleList) 
function RecoverRoleList.GetRoleList()
  dbg("第一个可恢复角色的_RoleLoginCustomVar变量为："..LuaParam[1][1][7])
end

--示例代码将在控制台输出“第一个可恢复角色的_RoleLoginCustomVar变量为：测量变量”
<上一篇:获取是否重置“显示角色”相关接口的配置下一篇:获取当前角色的自动寻路状态>
WhetherPlayerIsAutoMoving
获取当前角色的自动寻路状态

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-11-08 00:00:00
此函数获取当前角色的自动寻路状态。

note_icon 备注
此处的自动寻路是指打开地图点击任意坐标自动寻路或者自动寻路NPC，不包括自动挂机中的寻路。

语法
Luacopy 复制
CL:WhetherPlayerIsAutoMoving()
参数
无

返回值
bool

 
true当前角色处于自动寻路状态中

false当前角色未处于自动寻路状态中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
dbg("自动寻路状态返回值："..tostring(CL:WhetherPlayerIsAutoMoving()))

--当角色自动寻路NPC时，此示例代码运行成功后的结果如下图所示。

WhetherPlayerIsAutoMoving.png

--当角色自动挂机寻路时，此示例代码运行成功后的结果如下图所示。

WhetherPlayerIsAutoMoving_2.png
<上一篇:获取可恢复角色列表
AddActionToBindRole
向角色添加动画特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数向角色添加动画特效。

caution_icon 注意
在添加动画特效前，需使用CreateBindRoleImage函数进行创建。

程序默认通过全局表LuaArg获取动画特效的详细参数。

请参见示例代码起始的注释部分。

语法
Luacopy 复制
CL:AddActionToBindRole( 
    _RoleGUID,
    _ImageTag
)

参数
_RoleGUID

string

 
角色的GUID

_ImageTag

int

 
动画特效标签

返回值
int

 
添加成功则返回0

添加失败则返回-1

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游、3D端游支持

示例代码
Luacopy 复制
--[[
程序默认从名为LuaArg的全局表中获取动画特效的详细设置，具体说明如下。

声明表
local _Action = 
    {

    执行特效动作的标记，需要和之后的详细设置一一对应。
    0:停留；1:缩放；2:旋转；4:平移；8:颜色变化；16:透明度变化
    如果需要同时执行多种特效动作，可以将对应的标记值相加表示。
    _Flag,

    行为的执行时间，单位为毫秒
    _Time,

    缩放，如不需要该效果，不填写即可。
    范围均为0~1.0，1.0为原始大小。
    _SrcScaleX, --X方向起始缩放倍数
    _SrcScaleY, --Y方向起始缩放倍数
    _TarScaleX, --X方向最终缩放倍数
    _TarScaleY, --Y方向最终缩放倍数

    旋转，如不需要该效果，不填写即可。   
    单位为度。
    _SrcAngle,      --起始角度
    _TarAngle,      --结束角度

    平移，如不需要该效果，不填写即可。
    均为相对于角色的位置，单位为像素（px）。
    _SrcPosX,         --X方向起始位置
    _SrcPosY,         --Y方向起始位置
    _TarPosX,         --X方向目标位置
    _TarPosY,         --Y方向目标位置

    颜色变化，如不需要该效果，不填写即可。
    颜色值可以用系统定义的，也可使用MakeARGB()接口得到颜色。
    _SrcColor, --起始颜色  
    _TarColor, --结束颜色

    透明度变化，如不需要该效果，不填写即可。
    范围0~255,0为透明，255为不透明。
    _SrcAlpha,       --起始透明度
    _TarAlpha,       --目标透明度
    }

--]]

--以下为示例代码 
--示例代码中的COLOR_WHITE为GlobalDefine.lua脚本文件中定义的颜色标记。
local _GUID = CL:GetPlayerSelfGUID() --获取玩家自身的GUID
local _ImageTag = CL:CreateBindRoleImage(_GUID,3030900000,3030900006,0,0,COLOR_WHITE,0.5,0.5,0,100) --创建动画，获取动画标签
if _ImageTag > 0 then
    dbg("创建成功！")
    
    local _Action =  
	{
        _Flag = 1 + 4 + 8,
        _Time = 1500, --动作总计持续1.5秒

        --以下为缩放设置
        _SrcScaleX = 1.0,
        _SrcScaleY = 1.0,
        _TarScaleX = 0.5,
        _TarScaleY = 0.5,
        
        --以下为位置点设置
        _SrcPosX = 0,
        _SrcPosY = 0,
        _TarPosX = 100,
        _TarPosY = 100,

        --以下为颜色过渡设置
        _SrcColor = COLOR_WHITE,
        _TarColor = MakeARGB(255,255,0,0), --红色
        }
    LuaArg = _Action  
    CL:AddActionToBindRole(_GUID,_ImageTag) --添加动画
else
    dbg("创建失败！")
end

--动画的效果如下图。

AddActionToBindRole
下一篇:点击选中对象>
ClickPlayerObj
点击选中对象

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据对象GUID点击选中对象。

语法
Luacopy 复制
CL:ClickPlayerObj(
    guid,
    ctrlKey
)
参数
guid

string

 
对象GUID

ctrlKey

boolean

 
是否同时按Ctrl键。

返回值
boolean

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--例：激战boss地图对应的脚本文件--野外BOSS.lua中

function on_player_post_die(player,killer) --玩家死亡回调
local map = lualib:MapGuid(player) --获取玩家所在地图的guid
local players = lualib:Map_GetMapPlayers(map,false) --获取地图中所有玩家列表

    lualib:ShowFormWithContent(player, "脚本表单", "BossWildWnd.AtkObj("..serialize(players )..")") --传给客户端处理
    return ""
end

--客户端脚本BossWildWnd.lua中
BossWildWnd = {}
function BossWildWnd.AtkObj(players )	
local wguid = players[1][3]--第一个玩家的guid
    if UI:Lua_Str2GUID(wguid ) then
        local guid = LuaRet
        CL:ClickPlayerObj(guid,true)
    end
end
<上一篇:向角色添加动画特效下一篇:创建与角色绑定的图片动画>
CreateBindRoleImage
创建与角色绑定的图片动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数创建与指定角色绑定的图片动画。

caution_icon 注意
创建成功后，还需使用AddActionToBindRole函数进行添加到角色，查看特效的效果。

语法
Luacopy 复制
CL:CreateBindRoleImage( 
    _RoleGUID,
    _ImageIDStart,
    _ImageIDEnd,
    _PosX,
    _PosY,
    _Color,
    _AnchorX,
    _AnchorY,
    _LoopCount,
    _Delay
)

参数
_RoleGUID

string

 
角色的GUID

_ImageIDStart

unsigned int

 
动画起始的图片资源ID

_ImageIDEnd

unsigned int

 
动画结束的图片资源ID

note_icon 备注
如无需播放序列帧，值需要和_ImageIDStart相同。

caution_icon 注意
如循环次数有限，图片ID不能是AnimSetting.xml中对应的ID，否则序列帧会无限循环。

_PosX

int

 
相对于角色的初始横坐标

_PosY

int

 
相对于角色的初始纵坐标

_Color

unsigned int

 
初始颜色

具体请参见颜色字符串页面

_AnchorX

float

 
设置锚点的横坐标（范围为0~1）

如0.5表示X方向的中心点在图片的中点。

_AnchorY

float

 
设置锚点的纵坐标（范围为0~1）

如0.5表示Y方向的中心点在图片的中点。

_LoopCount

int

 
动画循环次数

若此参数填0，则循环播放动画。

_Delay

int

 
播放一帧所需的时间，单位为毫秒（ms）

返回值
int

 
创建成功则返回动画标签

创建失败则返回-1

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游、3D端游支持

示例代码
Luacopy 复制
--示例代码中的COLOR_WHITE为GlobalDefine.lua脚本文件中定义的颜色标记。
local _GUID = CL:GetPlayerSelfGUID() --获取玩家自身的GUID
local _ImageTag = CL:CreateBindRoleImage(_GUID,3030900000,3030900006,0,0,COLOR_WHITE,0.5,0.5,3,100)
if _ImageTag > 0 then
    dbg("创建成功，动画标签为：".._ImageTag) --打印创建的动画标签
end

--控制台将输出“创建成功，动画标签为：1000000000”。
<上一篇:点击选中对象下一篇:根据索引号删除角色>
DelRoleIndex
根据索引号删除角色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据角色选择面板中的序号执行删除角色操作。

语法
Luacopy 复制
CL:DelRoleIndex( 
    _Idx
)

参数
_Idx

int

 
角色的索引号，从0开始。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--一般情况下在选择角色界面中的删除角色按钮上使用，按钮自定义参数就是角色索引值 
CL:DelRoleIndex(2)
<上一篇:创建与角色绑定的图片动画下一篇:删除指定的角色>
DeleteRole
删除指定的角色

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-09-02 00:00:00
此函数根据指定的角色名执行删除角色的操作。

语法
Luacopy 复制
CL:DeleteRole( 
    _Name,
    _Tag,
    _CallBack
)

参数
_Name

string

 
要删除的角色名称

_Tag

string

 
自定义标签

用于区分不同作用的回调函数

_CallBack

string

 
删除角色成功后，执行的回调函数名。

程序同时会传递以下参数，保存于全局变量LuaParam中，由脚本进行后续的处理。

被删除角色的GUID(long)；错误码(int)；错误信息(string)

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
--以手游45度测试区（区号：151750）中的SelectRole.lua脚本文件为例。
SelectRole = {}

--……省略部分代码

function SelectRole.DelRole(_Handle)
    if nil ~= _Handle then
        local _ButtonIdx = GUI:WndGetParam(_Handle)
        CL:DeleteRole(SelectRole.RoleList[_ButtonIdx+1][1],"DeleteRole_Result","SelectRole.Callback")
        SelectRole._IsSelect = 1
    end
end

function  SelectRole.Callback()
    local guid = LuaParam[1]
    local code = LuaParam[2]
    local msg = LuaParam[3]
    dbg("玩家的GUID："..guid)
    dbg("错误码："..code)
    dbg("消息："..msg)
end

SelectRole.main()

--此示例代码运行成功后，可点击角色名字右上方的“×”按钮来删除对应角色，同时控制台中还会打印相关内容。

DeleteRole_2.png

DeleteRole.png
<上一篇:根据索引号删除角色下一篇:以指定的方式复活角色>
DoPlayerReliveByType
以指定的方式复活角色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-18 00:00:00
此函数设置以指定的方式复活角色。

语法
Luacopy 复制
CL:DoPlayerReliveByType( 
    _ReliveType
)

参数
_ReliveType

int

 
复活方式

1原地复活

2回城复活

3副本复活

caution_icon 注意
复活方式必须和地图支持的死亡复活方式（对应地图模板表中的“死亡弹出”选项）对应，否则无法按指定的方式复活角色。

对应选项访问路径为：游戏工具平台→游戏配置→地图→地图模板表→触发处理区域。

DoPlayerReliveByType.png
返回值
bool

 
true角色已按指定的方式复活

false角色无法按指定的方式复活

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）中的PlayerRelieve.lua脚本文件为例。
--以下示例代码执行前提如下图所示，当前地图的复活方式为“回到附近城市”（对应的选项值为1）。

DoPlayerReliveByType_3.png
--……省略部分代码

function PlayerReliveDoRelive1(_handle)
    local reliveOption = CL:GetMapOption()
    if reliveOption == 3 or reliveOption == 4 then
        CL:DoPlayerReliveByType(3) --副本复活
    else
        CL:DoPlayerReliveByType(2) --回城复活
    end
end

--……省略部分代码

--此示例代码运行成功如下图所示，玩家被杀死后的复活方式为“回城复活”。

DoPlayerReliveByType_2.png
<上一篇:删除指定的角色下一篇:复活角色>
DoPlayerRelive
复活角色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数向服务器请求复活角色。

在执行复活操作前，需判断角色的状态是死亡。

语法
Luacopy 复制
CL:DoPlayerRelive()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:以指定的方式复活角色下一篇:显示（或者隐藏）场景中的玩家>
OnShowHideEx
显示（或者隐藏）场景中的玩家

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-06 00:00:00
此函数显示（或者隐藏）场景中的玩家。

此接口设置的目标可以为玩家自己，也可以为其他玩家。

若指定玩家角色已经为隐藏状态，调用此接口则会显示该玩家角色。

语法
Luacopy 复制
CL:OnShowHideEx( 
    _OnlySelfGuild
)

参数
_OnlySelfGuild

bool

 
指定显示（或者隐藏）玩家自己或者其他玩家

true当前场景中显示（或者隐藏）玩家自己

false当前场景中显示（或者隐藏）其他玩家

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:复活角色下一篇:显示（或者隐藏）同行会玩家>
OnShowHideFamilyPlayer
显示（或者隐藏）同行会玩家

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-08-11 00:00:00
此函数显示（或者隐藏）同行会玩家。

具体显示和隐藏效果如图1、图2所示，以手游为例。

图 1 显示同行会玩家

OnShowHideFamilyPlayer.png
图 2 隐藏同行会玩家

OnShowHideFamilyPlayer_2.png
note_icon 备注
此接口的配置在跳转地图后会默认重置，如需跳转地图后不重置此接口的配置，可使用接口CL:JumpMapResetShowHide进行设置。

语法
Luacopy 复制
CL:OnShowHideFamilyPlayer()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:显示（或者隐藏）场景中的玩家下一篇:显示（或者隐藏）其他怪物>
OnShowHideOtherMonster
显示（或者隐藏）其他怪物

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-08-11 00:00:00
此函数显示（或者隐藏）其他怪物，包括所有非归属于自己的怪物。

具体显示和隐藏效果如图1、图2所示，以端游为例。

图 1 显示其他怪物

OnShowHideOtherMonster.png
图 2 隐藏其他怪物

OnShowHideOtherMonster_2.png
note_icon 备注
此接口的配置在跳转地图后会默认重置，如需跳转地图后不重置此接口的配置，可使用接口CL:JumpMapResetShowHide进行设置。

语法
Luacopy 复制
CL:OnShowHideOtherMonster()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:显示（或者隐藏）同行会玩家下一篇:显示（或者隐藏）其他玩家>
OnShowHide
显示（或者隐藏）其他玩家

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-11 00:00:00
此函数显示（或者隐藏）其他玩家。

若其他玩家已经为隐藏状态，调用此接口则会显示其他玩家。

note_icon 备注
此接口的配置在跳转地图后会默认重置，如需跳转地图后不重置此接口的配置，可使用接口CL:JumpMapResetShowHide进行设置。

语法
Luacopy 复制
CL:OnShowHide()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:显示（或者隐藏）其他怪物下一篇:恢复指定的角色>
RecoverRole
恢复指定的角色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行恢复指定角色的操作。

语法
Luacopy 复制
CL:RecoverRole( 
    _Name,
    _Tag,
    _CallBack
)

参数
_Name

string

 
要恢复的角色名称。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
恢复角色成功后，执行的回调函数名。

程序同时会传递以下参数，保存于全局变量LuaParam中，由脚本进行后续的处理。

是否成功(bool)；错误信息(string)；被恢复角色的GUID(long)；角色名字(string)；角色等级(int)；角色职业(int)；角色性别(int)

返回值
bool

 
恢复角色成功返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:RecoverRole("rolename", "RecoverRole_Result", "onRecoverRole") --"rolename"根据实际的角色名字传入

function onRecoverRole() --恢复角色成功后，取得传递回的参数
    local code = LuaParam[1]
    local msg = LuaParam[2]
    local guid = LuaParam[3]
    local name = LuaParam[4]
    local level = LuaParam[5]
    local job = LuaParam[6]
    local gender = LuaParam[7]
end
<上一篇:显示（或者隐藏）其他玩家下一篇:判断指定角色是否在安全区>
RoleInSafeZone
判断指定角色是否在安全区

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数判断指定角色是否在安全区。

语法
Luacopy 复制
CL:RoleInSafeZone(
    role_guid
)
参数
role_guid

string

 
角色的GUID

返回值
操作结果

bool

 
true在安全区

false不在安全区或角色的GUID不存在或不正确

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function OnPreTriggerProtect(index, role_guid)
    dbg("OnPreTriggerProtect:"..index.." role_guid:"..role_guid)
    if index == 0 and CL:RoleInSafeZone(role_guid) then
        dbg("RoleInSafeZone")
        return false
    end
    return true
end

--如图所示执行后触发保护条件使用道具，可以正常输出使用回调函数获取到的参数值，以及返回值。

OnPreTriggerProtect.png

OnPreTriggerProtect_2.png

--如图所示当玩家没有处于安全区时，没有输出打印内容。

OnPreTriggerProtect_3.png

--如图所示处于安全区时，正常执行打印内容。

OnPreTriggerProtect_4.png
<上一篇:恢复指定的角色下一篇:设置是否绘制玩家场景模型>
RoleSetDrawAvatar
设置是否绘制玩家场景模型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
设置是否绘制某个玩家的场景模型。

语法
Luacopy 复制
CL:RoleSetDrawAvatar( 
    _RoleGUID,
    _Flag
)

参数
_RoleGUID

string

 
玩家的GUID。

_Flag

bool

 
是否绘制。

true绘制模型。

false不绘制模型。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获得父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,700,500) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"隐藏角色模型") --设置文字内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "HideAvatar") --注册“鼠标左键点击”按钮事件发生时回调的函数
end

function HideAvatar()
    local _ViewPlayerGUID = CL:GetPlayerSelfGUID()--获取查看玩家的guid
    CL:RoleSetDrawAvatar(_ViewPlayerGUID,false)--设置隐藏玩家场景模型
end

--点击按钮，角色场景被隐藏，效果如下图。

RoleSetDrawAvatar
<上一篇:判断指定角色是否在安全区下一篇:保存玩家自定义变量>
SavePlayerCustomData
保存玩家自定义变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数保存玩家自定义变量到本地文件。

一般情况下，文件名为CustomSetting.xml，保存在游戏主目录\extra\Config中对用户的文件夹下。

语法
Luacopy 复制
CL:SavePlayerCustomData()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置是否绘制玩家场景模型




