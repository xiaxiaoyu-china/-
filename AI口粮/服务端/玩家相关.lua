Player_AddEffect
设置玩家特效

更新时间：2021-11-12 00:00:00
此函数设置玩家特效。

语法
Luacopy 复制
lualib:Player_AddEffect(
    player_guid,
    effect_type,
    effect_id
)

参数
player_guid

string

 
玩家角色的GUID

effect_type

uint8

 
特效位置

1武器

2身体

3坐骑

effect_id

uint16

 
特效ID（资源ID的前五位）

note_icon 备注
若资源ID的第1位为0，则默认填写资源ID的第2-5位（即省略第1位）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_AddEffect(player,1,9135) --给玩家武器添加特效

--此示例代码运行成功如下图所示。

Player_AddEffect.png
下一篇:设置角色攻击模式>
Player_ChangeAttackMode
设置角色攻击模式

更新时间：2021-09-08 00:00:00
此函数设置角色攻击模式。

参考 Player_GetAttackMode

语法
Luacopy 复制
lualib:Player_ChangeAttackMode(
    strPlayer,
    byMode
)

参数
strPlayer

string

 
玩家角色的GUID

byMode

uint8

 
攻击模式

0全体

1和平

2组队

3行会

4善恶

5联盟

6阵营

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Player_ChangeAttackMode(player,0) then --设置玩家的攻击模式为全体模式
        local mode = lualib:Player_GetAttackMode(player) --获取玩家的攻击模式
        lualib:Warn("设置成功，当前攻击模式为："..mode)
    else 
        lualib:Warn("设置失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Player_ChangeAttackMode.png

Player_ChangeAttackMode_2.png
<上一篇:设置玩家特效下一篇:设置玩家的称谓>
Player_SetAlias
设置玩家的称谓

更新时间：2021-09-08 00:00:00
此函数设置玩家的称谓。

参考 TitleName

语法
Luacopy 复制
lualib:Player_SetAlias(
    strPlayer,
    strAlias
)

参数
strPlayer

string

 
玩家角色的GUID

strAlias

string

 
称谓

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_SetAlias(player, "神一样的男人") --设置玩家的称谓为“神一样的男人”
lualib:SysMsg_SendWarnMsg(player, "TitleName = "..lualib:TitleName(player)) --获取玩家的称谓

--此示例代码运行成功如下图所示。

TitleName.png
<上一篇:设置角色攻击模式下一篇:设置是否允许玩家改变攻击模式>
Player_SetAttackModeLock
设置是否允许玩家改变攻击模式

更新时间：2021-09-08 00:00:00
此函数设置是否允许玩家改变攻击模式。

语法
Luacopy 复制
lualib:Player_SetAttackModeLock(
    player_guid,
    is_lock
)

参数
player_guid

string

 
玩家角色的GUID

is_lock

bool

 
是否锁定

true锁定（即不允许玩家改变攻击模式）

false未锁定（即允许玩家改变攻击模式）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_SetAttackModeLock(player,true) --设置不允许玩家改变攻击模式

--此示例代码运行成功如下图所示（点击下图框选部分无法修改攻击模式）。

Player_SetAttackModeLock.png
<上一篇:设置玩家的称谓下一篇:设置玩家的魅力值>
Player_SetBeauty
设置玩家的魅力值

更新时间：2021-10-18 00:00:00
此函数设置玩家的魅力值。

参考 Player_GetBeauty

语法
Luacopy 复制
lualib:Player_SetBeauty(
    player_guid,
    beauty_value
)
参数
player_guid

string

 
玩家角色的GUID

beauty_value

int32

 
要设置的魅力值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_SetBeauty(player, 123) --设置玩家的魅力值
local beauty = lualib:Player_GetBeauty(player) --获取玩家的魅力值
lualib:SysMsg_SendWarnMsg(player, "当前魅力值为："..beauty)

--获取玩家的自定义变量（__beauty变量）并打印
local types = {[0] = "数值型", "字符型"}  
local vars = lualib:VarList(player)  
for _, v in ipairs(vars) do      
    local type = v["Type"]      
    local key = v["Key"]      
    local value = v["Value"]   
    if key == "__beauty" then
        lualib:Warn("变量名:"..key..", 变量值:"..value..", 类型:"..types[type])
    end
end

--打印玩家的魅力值。

SetBeauty.png

--打印玩家的自定义变量（__beauty变量）。

GetBeauty.png
<上一篇:设置是否允许玩家改变攻击模式下一篇:禁止玩家在某个频道发言>
Player_SetForbidChannelTalk
禁止玩家在某个频道发言

更新时间：2021-09-08 00:00:00
此函数禁止玩家在某个频道发言。

caution_icon注意
禁言效果在服务器重启后失效。

语法
Luacopy 复制
lualib:Player_SetForbidChannelTalk(
    player_guid,
    channel
)
参数
player_guid

string

 
玩家角色的GUID

channel

int

 
要禁言的频道

1当前频道

2队伍频道

3行会频道

4地图频道

5点对点频道

6私聊频道

7小喇叭频道

8联盟频道

9阵营频道

10MOBA房间频道

11MOBA阵营频道

12全服频道

255所有频道

caution_icon 注意
此参数只能设置上述数值，设置其他数值无效。

返回值
bool

 
true禁言成功

false禁言失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--禁止玩家在所有频道发言。
local channel_type = {"当前频道", "组队频道", "行会频道", "地图频道", "点对点频道", "私聊频道", "小喇叭频道", "联盟频道", "阵营频道", "MOBA房间频道", "MOBA阵营频道", "全服频道", [255] = "所有频道"}
if lualib:Player_SetForbidChannelTalk(player, 255) then
    lualib:Warn(channel_type[255].." 禁言...")
end

--此示例代码运行成功如下图所示，并且该玩家在所有频道均不可发言。

Player_SetForbidChannelTalk.png
<上一篇:设置玩家的魅力值下一篇:设置玩家禁言的原因、类型和时间>
Player_SetForbidTalkType
设置玩家禁言的原因、类型和时间

更新时间：2021-09-08 00:00:00
此函数设置玩家禁言的原因、类型和时间。

参考 Player_DisableForbidTalkType

语法
Luacopy 复制
lualib:Player_SetForbidTalkType(
    strPlayer,
    strDesc,
    dwType,
    dwTimes
)

参数
strPlayer

string

 
玩家角色的GUID

strDesc

string

 
禁言原因

dwType

uint32

 
禁言类型

1文字禁言

2语音禁言

3文字和语音禁言

dwTimes

uint32

 
禁言时间

单位为秒（s）

caution_icon 注意
此参数请如实填写，否则会数据溢出。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否禁言成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_SetForbidTalkType(player, "辱骂GM, 禁言", 1, 70) then --设置玩家禁言的原因、类型和时间
    lualib:SysPromptMsg(player, "文字禁言成功")
else
    lualib:SysPromptMsg(player, "文字禁言失败")
end

--此示例代码运行成功如下图所示。

Player_SetForbidTalkType.png
<上一篇:禁止玩家在某个频道发言下一篇:设置玩家禁言的原因和时间>
Player_SetForbidTalk
设置玩家禁言的原因和时间

更新时间：2021-09-08 00:00:00
此函数设置玩家禁言的原因和时间。

参考 Player_DisableForbidTalk

语法
Luacopy 复制
lualib:Player_SetForbidTalk(
    strPlayer,
    strDesc,
    dwTimes
)

参数
strPlayer

string

 
玩家角色的GUID

strDesc

string

 
禁言原因

dwTimes

uint32

 
禁言时间

单位为秒（s）

caution_icon 注意
此参数请如实填写，否则会数据溢出。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否禁言成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_SetForbidTalk(player, "辱骂GM, 禁言", 70) then --设置玩家禁言的原因和时间
    lualib:SysPromptMsg(player, "禁言成功")
else
    lualib:SysPromptMsg(player, "禁言失败")
end

--此示例代码运行成功如下图所示。

Player_SetForbidTalk.png
<上一篇:设置玩家禁言的原因、类型和时间下一篇:设置角色是否进入幽灵模式（扩展）>
Player_SetGhostEx
设置角色是否进入幽灵模式（扩展）

更新时间：2023-08-11 00:00:00
此函数设置角色是否进入幽灵模式。

note_icon 备注
进入幽灵模式的角色，相当于处于隐形状态，可以穿透所有角色（包括玩家、怪物和NPC）并且不会有怪物的仇恨。

caution_icon 注意
此接口与接口lualib:Player_SetGhost的区别在于使用此接口后不会对玩家当前的客户端发出消失包和出现包，而使用接口lualib:Player_SetGhost后则会发出一次消失包再发一次出现包。

此接口与接口lualib:Role_SetGhost的区别在于接口lualib:Role_SetGhost可以设置怪物是否进入幽灵模式，但此接口只能对玩家进行设置。

语法
Luacopy 复制
lualib:Player_SetGhostEx(
    strPlayer,
    bActive
)
参数
strPlayer

string

 
角色的GUID

角色可以为玩家或者假人

bActive

bool

 
设置角色是否进入幽灵模式

true是

false否

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strPlayer对假人的支持

示例代码
Luacopy 复制
lualib:SetDynamicAttr(player, 0, 110, 10000) --设置玩家的攻击速度百分比为10000
lualib:AddTrigger(player, lua_trigger_pre_spell, "on_pre_spell")

function on_pre_spell(player, skill_id, skill_key)
    --设置玩家进入幽灵模式
    if lualib:Player_SetGhostEx(player, true) then
        lualib:SysPromptMsg(player, "玩家幽灵模式2")
    end
    return true
end

--此示例代码运行成功如下图所示（玩家处于高速攻击状态时，使用此接口进入幽灵模式时技能施放不会被打断）。

Player_SetGhostEx.png
<上一篇:设置玩家禁言的原因和时间下一篇:设置玩家是否进入幽灵模式>
Player_SetGhost
设置玩家是否进入幽灵模式

更新时间：2022-05-20 00:00:00
此函数设置玩家是否进入幽灵模式。

note_icon 备注
进入幽灵模式的玩家，相当于处于隐形状态，可以穿透所有角色（包括玩家、怪物和NPC）并且不会有怪物的仇恨。

caution_icon 注意
此接口与接口lualib:Player_SetGhostEx的区别在于使用接口lualib:Player_SetGhostEx后不会对玩家当前的客户端发出消失包和出现包，而使用此接口后则会发出一次消失包再发一次出现包。

语法
Luacopy 复制
lualib:Player_SetGhost(
    strPlayer,
    bActive
)

参数
strPlayer

string

 
玩家角色的GUID

bActive

bool

 
设置玩家是否进入幽灵模式

true是

false否

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Player_SetGhost(player, true) then --设置玩家进入幽灵模式
        lualib:SysPromptMsg(player, "设置玩家幽灵模式")
    end
end

--此示例代码运行前效果如下图所示。

Player_SetGhost.png

--此示例代码运行后效果如下图所示，同时游戏对话框中会输出如下内容。。

Player_SetGhost_3.png

Player_SetGhost_2.png
<上一篇:设置角色是否进入幽灵模式（扩展）下一篇:设置玩家是否进入无敌模式>
Player_SetInvincible
设置玩家是否进入无敌模式

更新时间：2021-09-08 00:00:00
此函数设置玩家是否进入无敌模式。

note_icon 备注
设置无敌模式后玩家会添加一个无敌BUFF（免疫一切伤害）。

语法
Luacopy 复制
lualib:Player_SetInvincible(
    strPlayer,
    bActive
)

参数
strPlayer

string

 
玩家角色的GUID

bActive

bool

 
设置玩家是否进入无敌模式

true是

false否

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Player_SetInvincible(player, true) then --设置玩家进入无敌模式
        lualib:SysPromptMsg(player, "你已进入无敌状态！")
    end
end

--此示例代码运行成功如下图所示，同时游戏对话框中会输出如下内容。

Player_SetInvincible.png

Player_SetInvincible_2.png
<上一篇:设置玩家是否进入幽灵模式下一篇:设置玩家名字的颜色>
Player_SetNameColor
设置玩家名字的颜色

更新时间：2021-09-08 00:00:00
此函数设置玩家名字的颜色。

语法
Luacopy 复制
lualib:Player_SetNameColor(
    strPlayer,
    strColor
)

参数
strPlayer

string

 
玩家角色的GUID

strColor

string

 
属性值（即要设置的颜色值）

具体请参见颜色字符串页面

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Player_SetNameColor(player, "RED") then --将玩家名字设置为红色
        lualib:SysPromptMsg(player, "你把名字设置成红色")
    end
end

--此示例代码运行前效果如下图所示。

Player_SetNameColor.png

--此示例代码运行后效果如下图所示，同时游戏对话框中会输出如下内容。

Player_SetNameColor_2.png

Player_SetNameColor_3.png
<上一篇:设置玩家是否进入无敌模式下一篇:设置玩家上次开盾后距离当前时间间隔>
Player_SetShieldInterval
设置玩家上次开盾后距离当前时间间隔

更新时间：2024-05-11 00:00:00
此函数设置玩家上次开盾后距离当前时间间隔。

语法
Luacopy 复制
lualib:Player_SetShieldInterval(
    player_guid,
    interval
)
参数
player_guid

string

 
玩家的GUID

interval

UINT32

 
冷却间隔，单位毫秒

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_logout(player)
    local skilltime = lualib:Player_GetShieldInterval(player)
    lualib:SetInt(player,"skill_time",skilltime)
    lualib:Warn("玩家上次开盾到下线时间为"..skilltime.."毫秒")
end
function on_login(player)
    local skilltime = GetInt(player,"skill_time")
    
lualib:Player_SetShieldInterval(player,skilltime)
end
--触发盾后玩家小退下线，打印玩家上次开盾到下线时间为3297毫秒。

Player_SetShieldInterval.png
--未达到盾的冷却，上线攻击该玩家发现玩家未刷出盾。

Player_SetShieldInterval_2.png
--等待冷却结束后，玩家正常刷盾。

Player_SetShieldInterval_3.png
<上一篇:设置玩家名字的颜色下一篇:设置角色是否进入幽灵模式>
Role_SetGhost
设置角色是否进入幽灵模式

更新时间：2022-05-20 00:00:00
此函数设置角色是否进入幽灵模式。

note_icon 备注
进入幽灵模式的角色，相当于处于隐形状态，可以穿透所有角色（包括玩家、怪物和NPC）并且不会有怪物的仇恨。

caution_icon 注意
此接口与接口lualib:Player_SetGhostEx的区别在于此接口可以设置怪物是否进入幽灵模式，但接口lualib:Player_SetGhostEx只能对玩家进行设置。

使用此接口后不会对玩家当前的客户端发出消失包和出现包，并且不会打断自动挂机。

语法
Luacopy 复制
lualib:Role_SetGhost(
    role_guid,
    bActive
)
参数
role_guid

string

 
角色的GUID

角色可以为玩家或者怪物

bActive

bool

 
设置角色是否进入幽灵模式

true是

false否

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Role_SetGhost(player, true) --设置指定玩家进入幽灵模式
lualib:Role_SetGhost("2ar8m5152ho86", true) --设置指定怪物进入幽灵模式

--此示例代码运行前效果如下图所示。

Role_SetGhost.png

--此示例代码运行后效果如下图所示，指定玩家和指定怪物均进入幽灵模式。

Role_SetGhost_2.png
<上一篇:设置玩家上次开盾后距离当前时间间隔下一篇:设置指定角色是否开启幸运影响防御的功能>
Role_SetLuckWithDef
设置指定角色是否开启幸运影响防御的功能

更新时间：2022-07-18 00:00:00
此函数设置指定角色是否开启幸运影响角色自身防御的功能。

此接口仅在选项“幸运是否影响防御”设置为“否”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→游戏限制区域。

Role_SetLuckWithDef.png
语法
Luacopy 复制
lualib:Role_SetLuckWithDef(
    role_guid,
    bwith
)
参数
role_guid

string

 
角色的GUID

bwith

bool

 
指定角色是否开启幸运影响角色自身防御的功能

true开启

false不开启

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Role_SetLuckWithDef(player, true) then
    lualib:SysWarnMsg(player, "设置成功")
    if lualib:Role_GetLuckWithDef(player) then
        lualib:SysWarnMsg(player, "角色幸运影响防御已开启")
    else
        lualib:SysWarnMsg(player, "角色幸运影响防御未开启")
    end
else
    lualib:SysWarnMsg(player, "设置失败")
end

--此示例代码运行成功如下图所示。

Role_GetLuckWithDef.png
<上一篇:设置角色是否进入幽灵模式下一篇:设置角色全局属性的上/下限>
SetAttrLimit
设置角色全局属性的上/下限

更新时间：2021-09-10 00:00:00
此函数设置角色全局属性的上/下限。

caution_icon注意
目前只支持角色移动速度基准值属性与攻击速度基准值属性。

语法
Luacopy 复制
lualib:SetAttrLimit(
    type,
    attr,
    attr_value
)
参数
type

int

 
要设置的类型

1设置属性下限

2设置属性上限

attr

int

 
要设置的属性

具体请参见角色属性类型定义页面

attr_value

int

 
要设置的属性值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("移动速度基准值 = "..lualib:Attr(player, 18)) --获取当前的移动速度基准值
lualib:SetAttrLimit(1, 18, 240) --设置移动速度基准值的下限为240
lualib:SetAttrLimit(2, 18, 260) --设置移动速度基准值的上限为260

--设置移动速度基准值在原来的基础上减少11。
--由于设置后的移动速度基准值小于移动速度基准值下限，则修改后的移动速度基准值即为移动速度基准值下限；
lualib:SetDynamicAttr(player, 0, 18, -11)
lualib:Warn("移动速度基准值min = "..lualib:Attr(player, 18)) --获取修改后的移动速度基准值

--设置移动速度基准值在原来的基础上增加11。
--由于设置后的移动速度基准值大于移动速度基准值上限，则修改后的移动速度基准值即为移动速度基准值上限。
lualib:SetDynamicAttr(player, 0, 18, 11)
lualib:Warn("移动速度基准值max = "..lualib:Attr(player, 18)) --获取修改后的移动速度基准值

--此示例代码运行成功如下图所示。

SetAttrLimit.png
<上一篇:设置指定角色是否开启幸运影响防御的功能下一篇:设置玩家自动回复的内容>
SetAutoReply
设置玩家自动回复的内容

更新时间：2021-09-08 00:00:00
此函数设置玩家自动回复的内容。

参考 DisableAutoReply

语法
Luacopy 复制
lualib:SetAutoReply(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家角色的GUID

strMsg

string

 
自动回复的内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetAutoReply(player, "这是设定的自动回复内容")
end

--此示例代码运行成功如下图所示。

SetAutoReply.png
<上一篇:设置角色全局属性的上/下限下一篇:设置角色腕力>
SetBrawn
设置角色腕力

更新时间：2022-07-18 00:00:00
此函数设置角色腕力。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetBrawn(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的腕力值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的腕力值上限）

false否（即修改当前的腕力值）

note_icon 备注
当角色类型为玩家时，设置腕力值上限无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetBrawn(player, 50, false) --设置角色当前的腕力值为50
lualib:SetBrawn(player, 100, true) --设置角色的腕力值上限为100
<上一篇:设置玩家自动回复的内容下一篇:设置角色的阵营>
SetCamp
设置角色的阵营

更新时间：2021-09-08 00:00:00
此函数设置角色的阵营。

参考 Camp

语法
Luacopy 复制
lualib:SetCamp(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
阵营值（即要设置的阵营值）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetCamp(player, 1) --将玩家的阵营值设置为1
    local zhenying = lualib:Camp(player) --获取玩家的阵营值
    play_name = lualib:Name(player)
    lualib:Warn("玩家 "..play_name.." 的阵营为："..zhenying)
end

--此示例代码运行成功如下图所示。

SetCamp.png
<上一篇:设置角色腕力下一篇:设置严格模式下误差百分比>
SetCheckModePct
设置严格模式下误差百分比

更新时间：2021-09-08 00:00:00
此函数设置严格模式下玩家移动或技能释放的时间间隔与基准的误差百分比。

默认情况下，当玩家处于严格模式时，只要移动或者技能释放的时间间隔小于基准值，就会丢包。

使用此接口设置与基准值的误差百分比后，只有当误差大于此百分比时才会丢包。

语法
Luacopy 复制
lualib:SetCheckModePct(
    player_guid,
    pct
)
参数
player_guid

string

 
玩家角色的GUID

pct

uint16

 
要设置的误差百分比

caution_icon注意
误差百分比请勿设置大于100的数值。

返回值
bool

 
是否设置成功

true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetNetCheck(player, true)
lualib:SysWarnMsg(player, "SetCheckModePct="..tostring(lualib:SetCheckModePct(player, 0)))

--示例代码运行结果如下。

SetCheckModePct
<上一篇:设置角色的阵营下一篇:设置角色方向（扩展）>
SetDirEx
设置角色方向（扩展）

更新时间：2021-09-08 00:00:00
此函数设置角色方向。

所有的属性修改操作都会自动记录到日志服务器。

参考 Dir

语法
Luacopy 复制
lualib:SetDirEx(
    strRole,
    iValue
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的方向值，范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetDirEx(player, 7) --设置玩家面向左上方向站立
lualib:SetDirEx("2ar8lvmc51k4i", 7) --设置怪物面向左上方向站立

--此示例代码运行成功如下图所示。

SetDirEx.png
<上一篇:设置严格模式下误差百分比下一篇:设置角色方向>
SetDir
设置角色方向

更新时间：2021-09-08 00:00:00
此函数设置角色方向。

caution_icon 注意
此接口有升级版本，请使用SetDirEx接口。

语法
Luacopy 复制
lualib:SetDir(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的方向值，范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetDir(player, 7) --设置玩家面向左上方向站立
end

--此示例代码运行成功如下图所示。

SetDir.png
<上一篇:设置角色方向（扩展）下一篇:批量设置玩家动态属性>
SetDynamicAttrBatch
批量设置玩家动态属性

更新时间：2025-03-31 00:00:00
此函数作用是批量设置玩家动态属性。

note_icon 备注
每次调用lualib:SetDynamicAttr设置动态属性会触发重新计算角色属性，如果在同一时间多次调用，会反复的进行角色属性计算，使用此批量设置动态属性的接口可以提高性能。

语法
Luacopy 复制
lualib:SetDynamicAttrBatch(
    strGUID,
    tDynamicAttrs
)
参数
strGUID

string

 
对象的GUID

对象可以为玩家、怪物或者物品

tDynamicAttrs

table

 
动态属性

格式为：{{site, attr_name, attr_value}, ... {site, attr_name, attr_value}}

其中site为动态属性编号0-199, attr_name为属性, attr_value为属性值

比如：lualib:SetDynamicAttrBatch(strPlayer, {{0, 3, 200}, {1, 5, 100}}) 等效于

lualib:SetDynamicAttr(strPlayer, 0, 3, 200)

lualib:SetDynamicAttr(strPlayer, 1, 5, 100)

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制

--未增加角色的动态属性物攻上下限，hp上限，mp上限前。

SetDynamicAttrBatch.png    
function main(npc,player)
    -- 增加角色的动态属性物攻上下限，hp上限，mp上限
    lualib:SetDynamicAttrBatch(player, {{37, 10, 1000}, {38, 11, 1000},{39, 3, 1000}, {40, 5, 1000}})
    
    local tAttrPair = lualib:GetDynamicAttr(player, 37)
    local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
    local tAttrPair = lualib:GetDynamicAttr(player, 38) 
    local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
    local tAttrPair = lualib:GetDynamicAttr(player, 39)
    local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
    local tAttrPair = lualib:GetDynamicAttr(player, 40) 
    local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
end

--执行示例代码增加角色的动态属性物攻上下限，hp上限，mp上限后。

SetDynamicAttrBatch_2.png

SetDynamicAttrBatch_3.png
<上一篇:设置角色方向下一篇:设置对象的动态属性>
SetDynamicAttr
设置对象的动态属性

更新时间：2024-03-15 00:00:00
此函数设置对象的动态属性。

动态属性可在游戏中动态调整对象对应的属性，设置的动态属性值会叠加在对象原有的属性值上。

note_icon 备注
当使用此接口为同一玩家/物品设置的动态属性的编号相同时，后设置的动态属性会覆盖之前设置的动态属性。

当使用此接口为同一玩家/物品设置的动态属性的编号不同但设置的属性相同时，动态属性的属性值会叠加。

参考 GetDynamicAttr

语法
Luacopy 复制
lualib:SetDynamicAttr(
    strGUID,
    iAttrSite,
    iAttrType,
    iAttrValue
)

参数
strGUID

string

 
对象的GUID

对象可以为玩家、怪物或者物品

iAttrSite

int32

 
动态属性编号（填写范围为0-199）

对应角色属性类型定义中枚举值在300至499与700至899且枚举值为偶数的属性（动态属性名）

iAttrType

int32

 
属性的枚举值/类型值

具体设置类型请参考角色属性类型定义

iAttrValue

int32

 
属性值

对应角色属性类型定义中枚举值在300至499与700至899且枚举值为奇数的属性（动态属性值）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

 
v1.1

 
动态属性编号填写范围：从0-99拓展到0-199

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。


lualib:SetDynamicAttr(player, 66, 50, 5) --设置第66条动态属性为属性幸运诅咒的值增加5
local tAttrPair = lualib:GetDynamicAttr(player, 66) --获取第66条动态属性的属性值
local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)

--此示例代码运行成功如下图所示。

SetDynamicAttr_2.png

SetDynamicAttr_3.png
<上一篇:批量设置玩家动态属性下一篇:设置角色活力>
SetEnergy
设置角色活力

更新时间：2022-07-18 00:00:00
此函数设置角色活力。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Energy

语法
Luacopy 复制
lualib:SetEnergy(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的活力值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的活力值上限）

false否（即修改当前的活力值）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetEnergy.png
function WarnPrint(npc,player)
    local hasEnergy = lualib:Energy(player, false) --获取玩家改变前的当前活力
    local hasmaxEnergy = lualib:Energy(player, true) --获取玩家改变前的活力上限
    lualib:Warn("玩家改变前当前活力为："..hasEnergy)
    lualib:Warn("玩家改变前活力上限为："..hasmaxEnergy)

    lualib:SetEnergy(player, 70, false) --将玩家当前的活力值设置为70
    lualib:SetEnergy(player, 1000, true) --将玩家的活力值上限设置为1000

    local hasEnergy = lualib:Energy(player, false)--获取玩家改变后的当前活力
    local hasmaxEnergy = lualib:Energy(player, true)--获取玩家改变后的活力上限
    lualib:Warn("玩家改变后当前活力为："..hasEnergy)
    lualib:Warn("玩家改变后活力上限为："..hasmaxEnergy)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

SetEnergy_2.png

SetEnergy_3.png
<上一篇:设置对象的动态属性下一篇:设置角色性别>
SetGender
设置角色性别

更新时间：2022-07-18 00:00:00
此函数设置角色性别。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Gender

语法
Luacopy 复制
lualib:SetGender(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的性别）

1男性

2女性

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local gender = lualib:Gender(player) --获取玩家改变前的性别
    lualib:Warn("玩家改变前的性别为："..gender)  
    if gender == 2 then 
        lualib:SetGender(player, 1) --将玩家的性别设置为男性
    elseif gender == 1 then 
        lualib:SetGender(player, 2) --将玩家的性别设置为女性
    end
    local lastgender = lualib:Gender(player) --获取玩家改变后的性别
    lualib:Warn("玩家改变后的性别为："..lastgender)  
end

--此示例代码运行前玩家的性别如下图所示。

SetGender.png

SetGender_2.png

--此示例代码运行后玩家的性别如下图所示，同时游戏日志中还会打印相关内容。

SetGender_3.png

SetGender_4.png

SetGender_5.png
<上一篇:设置角色活力下一篇:设置角色的头发颜色>
SetHairColor
设置角色的头发颜色

更新时间：2021-09-08 00:00:00
此函数设置角色的头发颜色。

参考 HairColor

语法
Luacopy 复制
lualib:SetHairColor(
    strRole,
    iHairColor
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iHairColor

int32

 
对应头发颜色的索引值

具体请参见头发颜色定义页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local HairColor = lualib:HairColor(player)
    lualib:Warn("玩家改变前的头发颜色为："..HairColor) --获取玩家改变前的头发颜色的索引值
    
    lualib:SetHairColor(player, 10) --设置玩家的头发颜色的索引值为10
    
    local lastHairColor = lualib:HairColor(player) --获取玩家改变后的头发颜色的索引值
    lualib:Warn("玩家改变后的头发颜色为："..lastHairColor)
end

--此示例代码运行前玩家的头发颜色如下图所示。

SetHairColor.png

--此示例代码运行后玩家的头发颜色如下图所示，同时游戏日志中还会打印相关内容。

SetHairColor_2.png

SetHairColor_3.png
<上一篇:设置角色性别下一篇:设置角色的发型>
SetHair
设置角色的发型

更新时间：2022-07-18 00:00:00
此函数设置角色发型。

参考 Hair

语法
Luacopy 复制
lualib:SetHair(
    strRole,
    iHair
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iHair

int32

 
发型编号

note_icon 备注
头发ID即对应头发资源ID前5位。

若资源ID的第1位为0，则默认填写资源ID的第2-5位（即省略第1位）。

男性：

当要设置的头发ID以07开头且头发ID-7000≤255时，发型编号=头发ID-7000；

当要设置的头发ID以27开头且指定物品的“外形男”字段的值为要设置的头发ID时，发型编号为该物品的物品编号。

字段“外形男”的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→客户端配置→详细数据-音效和图形。

女性：

当要设置的头发ID以07开头且头发ID-7050≤255时，发型编号=头发ID-7050；

当要设置的头发ID以27开头且指定物品的“外形女”字段的值为要设置的头发ID时，发型编号为该物品的物品编号。

字段“外形女”的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→客户端配置→详细数据-音效和图形。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local hair = lualib:Hair(player) --获取玩家改变前的发型编号
    lualib:Warn("玩家改变前的发型为："..hair)
    
    lualib:SetHair(player, 2) --设置玩家的发型编号为2
    
    local lasthair = lualib:Hair(player) --获取玩家改变后的发型编号
    lualib:Warn("玩家改变后的发型为："..lasthair)
end

--此示例代码运行前效果如下图所示。

SetHair_2.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SetHair.png

SetHair_3.png

--以下示例代码执行前提：物品编号为350的物品的“外形男”字段的值为27002。

SetHair_5.png
function WarnPrint(npc,player)
    lualib:SetHair(player, 350)
end

--此示例代码运行前效果如下图所示。

SetHair_4.png
<上一篇:设置角色的头发颜色下一篇:设置角色的头像>
SetHead
设置角色的头像

更新时间：2023-11-27 00:00:00
此函数设置角色头像。

参考 Head

语法
Luacopy 复制
lualib:SetHead(
    strRole,
    iHead
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iHead

int32

 
头像编号

范围为0-3

note_icon 备注
当角色为玩家时，头像编号为想要设置的图片资源ID减去某个起始图片的资源ID。

注：男性角色起始图片的资源ID为1989900000，女性角色起始图片的资源ID为1989905000。

当角色为怪物或者NPC时，设置不生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local HeadID = lualib:Head(player) --获取角色改变前的头像编号
    lualib:Warn("玩家改变前的头像ID为："..HeadID)  
    
    lualib:SetHead(player, 3) --设置角色的头像编号
    
    local lastHeadID = lualib:Head(player) --获取角色改变后的头像编号
    lualib:Warn("玩家改变后的头像ID为："..lastHeadID) 
end

--此示例代码运行前玩家的头像如下图所示。

SetHead.png

--此示例代码运行后玩家的头像如下图所示，同时游戏日志中还会打印相关内容。

SetHead_2.png

SetHead_3.png
<上一篇:设置角色的发型下一篇:设置角色生命值属性点数（HP属性点数）>
SetHpPoint
设置角色生命值属性点数（HP属性点数）

更新时间：2022-07-18 00:00:00
此函数设置角色生命值属性点数（HP属性点数）。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 HpPoint

语法
Luacopy 复制
lualib:SetHpPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的生命值属性点数（HP属性点数））

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetHpPoint(player, 50)  --设置角色HP属性点数为50

    local lasthp_point = lualib:HpPoint(player) --获取角色HP属性点数
    lualib:Warn("玩家改变后的HP属性点数为："..lasthp_point)
end

--此示例代码运行前，强化属性界面上的生命值属性点数（即HP属性点数）如下图所示。

SetHpPoint.png

--此示例代码运行后，强化属性界面上的生命值属性点数（即HP属性点数）如下图所示，同时游戏日志还会打印相关内容。

SetHpPoint_2.png

SetHpPoint_3.png
<上一篇:设置角色的头像下一篇:设置角色的生命值（HP值）>
SetHp
设置角色的生命值（HP值）

更新时间：2022-07-18 00:00:00
此函数设置角色的生命值（HP值）。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Hp

语法
Luacopy 复制
lualib:SetHp(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的生命值（HP值））

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的生命值（HP值）上限）

false否（即修改当前的生命值（HP值））

note_icon 备注
当角色类型为玩家或者怪物时，设置生命值（HP值）上限无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetHp(player, 500, false) --将玩家当前的HP值设置为500
    lualib:SetHp(player, 1000, true) --将玩家的HP上限设置为1000

    local hasHp = lualib:Hp(player, false)--获取玩家当前的HP值
    local hasmaxHp = lualib:Hp(player, true)--获取玩家的HP上限
    lualib:Warn("玩家当前HP为："..hasHp)
    lualib:Warn("玩家HP上限为："..hasmaxHp)
end

--此示例代码运行成功如下图所示(将玩家的HP上限设置为1000不生效)，同时游戏日志中还会打印相关内容。

SetHp.png

SetHp_2.png
<上一篇:设置角色生命值属性点数（HP属性点数）下一篇:设置角色职业>
SetJob
设置角色职业

更新时间：2022-07-18 00:00:00
此函数设置角色职业。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Job

语法
Luacopy 复制
lualib:SetJob(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的职业）

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
function WarnPrint(npc,player)
    local jobs = {"战士", "法师", "术士"}
    local job = lualib:Job(player) --获取玩家改变前的职业
    lualib:Warn("玩家改变前的职业为："..jobs[job])  

    lualib:SetJob(player, 2) --将玩家的职业设置为法师

    local lastjob = lualib:Job(player) --获取玩家改变后的职业
    lualib:Warn("玩家改变后的职业为："..jobs[lastjob])  
end

--此示例代码运行前玩家的职业如下图所示。

SetJob.png

--此示例代码运行后玩家的职业如下图所示，同时游戏日志中还会打印相关内容。

SetJob_2.png

SetJob_3.png
<上一篇:设置角色的生命值（HP值）下一篇:设置角色等级>
SetLevel
设置角色等级

更新时间：2022-07-18 00:00:00
此函数设置角色等级。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Level

语法
Luacopy 复制
lualib:SetLevel(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的等级）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local level = lualib:Level(player) --获取玩家改变前的等级
    lualib:Warn("玩家改变前的等级为："..level)  

    lualib:SetLevel(player, 30) --将玩家的等级设置为30级

    local lastlevel = lualib:Level(player) --获取玩家改变前后的等级
    lualib:Warn("玩家改变后的等级为："..lastlevel)  
end

--此示例代码运行前玩家的等级如下图所示。

SetLevel_2.png

--此示例代码运行后玩家的等级如下图所示，同时游戏日志中还会打印相关内容。

SetLevel_2.png

SetLevel_3.png
<上一篇:设置角色职业下一篇:设置角色的安全锁开关状态>
SetLockSwitch
设置角色的安全锁开关状态

更新时间：2021-09-08 00:00:00
此函数设置角色的安全锁开关状态。

参考 LockSwitch

语法
Luacopy 复制
lualib:SetLockSwitch(
    strRole,
    iLockStatus
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iLockStatus

int32

 
安全锁开关状态

0未解锁状态

1已解锁状态

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--若角色的安全锁为已解锁状态，则将其设置为未解锁状态；若角色的安全锁为未解锁状态，则将其设置为已解锁状态。
function WarnPrint(npc,player)
    local lock = lualib:LockSwitch(player) --获取角色的安全锁开关状态
    lualib:Warn("玩家安全锁开关状态为："..lock)
    if lock == 0 then
        lualib:SetLockSwitch(player, 1) --设置角色的安全锁为已解锁状态
    elseif lock == 1 then
        lualib:SetLockSwitch(player, 0) --设置角色的安全锁为未解锁状态
    end

    local lastlock = lualib:LockSwitch(player) --获取角色的安全锁开关状态
    lualib:Warn("玩家安全锁开关状态为："..lastlock)
end

--此示例代码运行成功如下图所示（0代表未解锁状态，1代表已解锁状态）。

SetLockSwitch.png
<上一篇:设置角色等级下一篇:设置角色幸运诅咒值>
SetLuckCurse
设置角色幸运诅咒值

更新时间：2022-07-18 00:00:00
此函数设置角色的幸运诅咒值。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetLuckCurse(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的幸运诅咒值）

正数幸运值

负数诅咒值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetLuckCurse(player, 5) --设置角色的幸运值为5
<上一篇:设置角色的安全锁开关状态下一篇:设置角色魔法攻击属性点数>
SetMagAtkPoint
设置角色魔法攻击属性点数

更新时间：2022-07-18 00:00:00
此函数设置角色魔法攻击属性点数。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 MagAtkPoint

语法
Luacopy 复制
lualib:SetMagAtkPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的魔法攻击属性点数）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetMagAtkPoint(player, 50) --设置角色魔法攻击属性点数为50

    local lastmagatk_point = lualib:MagAtkPoint(player) --获取角色魔法攻击属性点数
    lualib:Warn("玩家改变后的魔法攻击属性点数为："..lastmagatk_point)
end

--此示例代码运行前，强化属性界面上的魔法攻击属性点数如下图所示。

SetMagAtkPoint.png

--此示例代码运行后，强化属性界面上的魔法攻击属性点数如下图所示，同时游戏日志还会打印相关内容。

SetMagAtkPoint_2.png

SetMagAtkPoint_3.png
<上一篇:设置角色幸运诅咒值下一篇:设置角色的魔攻上限/下限值>
SetMagAtk
设置角色的魔攻上限/下限值

更新时间：2022-07-18 00:00:00
此函数设置角色的魔攻上限/下限值。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetMagAtk(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的魔攻上限/下限值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的魔攻上限值）

false否（即修改角色的魔攻下限值）

note_icon 备注
当角色类型为玩家时，设置魔攻上限值无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetMagAtk(player, 100, false) --设置角色的魔攻下限值为100
lualib:SetMagAtk(player, 1000, true) --设置角色的魔攻上限值为1000
<上一篇:设置角色魔法攻击属性点数下一篇:设置角色魔法防御属性点数>
SetMagDefPoint
设置角色魔法防御属性点数

更新时间：2022-07-18 00:00:00
此函数设置角色魔法防御属性点数。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 MagDefPoint

语法
Luacopy 复制
lualib:SetMagDefPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的魔法防御属性点数）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetMagDefPoint(player, 50) --设置角色魔法防御属性点数为50

    local lastmagdef_point = lualib:MagDefPoint(player) --获取角色魔法防御属性点数
    lualib:Warn("玩家改变后的魔法防御属性点数为："..lastmagdef_point)
end

--此示例代码运行前，强化属性界面上的魔法防御属性点数如下图所示。

SetMagDefPoint.png

--此示例代码运行后，强化属性界面上的魔法防御属性点数如下图所示，同时游戏日志还会打印相关内容。

SetMagDefPoint_2.png

SetMagDefPoint_3.png
<上一篇:设置角色的魔攻上限/下限值下一篇:设置角色的魔防上限/下限值>
SetMagDef
设置角色的魔防上限/下限值

更新时间：2022-07-18 00:00:00
此函数设置角色的魔防上限/下限值。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetMagDef(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的魔防上限/下限值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的魔防上限值）

false否（即修改角色的魔防下限值）

note_icon 备注
当角色类型为玩家时，设置魔防上限值无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetMagDef(player, 100, false) --设置角色的魔防下限值为100
lualib:SetMagDef(player, 1000, true) --设置角色的魔防上限值为1000
<上一篇:设置角色魔法防御属性点数下一篇:设置角色功勋>
SetMeritor
设置角色功勋

更新时间：2022-07-18 00:00:00
此函数设置角色功勋。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Meritor

语法
Luacopy 复制
lualib:SetMeritor(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的功勋值）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local hasMeritor  = lualib:Meritor(player) --获取玩家改变前的功勋值
    lualib:Warn("玩家的功勋为："..hasMeritor)
    
    lualib:SetMeritor(player, 100) --设置玩家的功勋值为100
    
    local hasMeritor  = lualib:Meritor(player) --获取玩家改变后的功勋值
    lualib:Warn("玩家的功勋为："..hasMeritor)
end

--此示例代码运行前玩家的功勋值如下图所示。

SetMeritor.png

--此示例代码运行后玩家的功勋值如下图所示，同时游戏日志中还会打印相关内容。

SetMeritor_2.png

SetMeritor_3.png
<上一篇:设置角色的魔防上限/下限值下一篇:设置角色魔法值属性点数（MP属性点数）>
SetMpPoint
设置角色魔法值属性点数（MP属性点数）

更新时间：2022-07-18 00:00:00
此函数设置角色魔法值属性点数（MP属性点数）。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 MpPoint

语法
Luacopy 复制
lualib:SetMpPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的魔法值属性点数（MP属性点数））

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetMpPoint(player, 50) --设置角色MP属性点数为50	

    local lastmp_point = lualib:MpPoint(player) --获取角色MP属性点数
    lualib:Warn("玩家改变后的MP属性点数为："..lastmp_point)
end

--此示例代码运行前，强化属性界面上的魔法值属性点数（即MP属性点数）如下图所示。

SetMpPoint.png

--此示例代码运行后，强化属性界面上的魔法值属性点数（即MP属性点数）如下图所示，同时游戏日志还会打印相关内容。

SetMpPoint_2.png

SetMpPoint_3.png
<上一篇:设置角色功勋下一篇:设置角色MP>
SetMp
设置角色MP

更新时间：2022-07-18 00:00:00
此函数设置角色的魔法值（MP值）。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Mp

语法
Luacopy 复制
lualib:SetMp(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值(即要设置的魔法值（MP值）)

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的魔法值（MP值）上限）

false否（即修改当前的魔法值（MP值））

note_icon 备注
当角色类型为玩家时，设置魔法值（MP值）上限无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetMP_3.png
function WarnPrint(npc,player)
    local cur_mp = lualib:Mp(player,false) --获取玩家改变前的当前MP
    lualib:Warn("玩家改变前的当前MP为："..cur_mp) 
    local max_mp = lualib:Mp(player,true) --获取玩家改变前的上限MP
    lualib:Warn("玩家改变前的上限MP为："..max_mp)	
    
    lualib:SetMp(player, 100, false) --将玩家当前的MP值设置为100
    lualib:SetMp(player, 1000, true) --将玩家的MP上限设置为1000

    local cur_mp = lualib:Mp(player,false) --获取玩家改变后的当前MP
    lualib:Warn("玩家改变后的当前MP为："..cur_mp)
    local max_mp = lualib:Mp(player,true) --获取玩家改变后的上限MP
    lualib:Warn("玩家改变后的上限MP为："..max_mp)
end

--此示例代码运行成功如下图所示(将玩家的MP上限设置为1000不生效)，同时游戏日志中还会打印相关内容。

SetMP_2.png

SetMP.png
<上一篇:设置角色魔法值属性点数（MP属性点数）下一篇:设置角色NPC面板的尺寸>
SetPanelSize
设置角色NPC面板的尺寸

更新时间：2021-09-08 00:00:00
此函数设置角色NPC面板的尺寸。

语法
Luacopy 复制
lualib:SetPanelSize(
    strRole,
    wWidth,
    wHeight
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

wWidth

uint16

 
面板的宽度

单位为像素（px）

wHeight

uint16

 
面板的高度

单位为像素（px）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    lualib:SetPanelSize(npc, 500, 100) --设置NPC面板尺寸为500*100

    local msg = ""
    msg = msg.."#OFFSET<X:0,Y:0># <@WarnPrint#1 *01*「服务端接口测试」>\n"
    return msg
end

--此示例代码运行前效果如下图所示（NPC面板尺寸为500*500）。

SetPanelSize_3.png

--此示例代码运行后效果如下图所示。

SetPanelSize_4.png
<上一篇:设置角色MP下一篇:设置角色物理攻击属性点数>
SetPhyAtkPoint
设置角色物理攻击属性点数

更新时间：2022-07-18 00:00:00
此函数设置角色物理攻击属性点数。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 PhyAtkPoint

语法
Luacopy 复制
lualib:SetPhyAtkPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的物理攻击属性点数）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetPhyAtkPoint(player, 50) --设置角色物理攻击属性点数为50

    local lastphyatk_point = lualib:PhyAtkPoint(player) --获取角色物理攻击属性点数
    lualib:Warn("玩家改变后的物理攻击属性点数为："..lastphyatk_point)
end

--此示例代码运行前，强化属性界面上的物理攻击属性点数如下图所示。

SetPhyAtkPoint.png

--此示例代码运行后，强化属性界面上的物理攻击属性点数如下图所示，同时游戏日志还会打印相关内容。

SetPhyAtkPoint_2.png

SetPhyAtkPoint_3.png
<上一篇:设置角色NPC面板的尺寸下一篇:设置角色的物攻上限/下限值>
SetPhyAtk
设置角色的物攻上限/下限值

更新时间：2022-07-18 00:00:00
此函数设置角色的物攻上限/下限值。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetPhyAtk(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的物攻上限/下限值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的物攻上限值）

false否（即修改角色的物攻下限值）

note_icon 备注
当角色类型为玩家时，设置物攻上限值无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetPhyAtk(player, 100, false) --设置角色的物攻下限值为100
lualib:SetPhyAtk(player, 1000, true) --设置角色的物攻上限值为1000
<上一篇:设置角色物理攻击属性点数下一篇:设置角色物理防御属性点数>
SetPhyDefPoint
设置角色物理防御属性点数

更新时间：2022-07-18 00:00:00
此函数设置角色物理防御属性点数。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 PhyDefPoint

语法
Luacopy 复制
lualib:SetPhyDefPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的物理防御属性点数）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetPhyDefPoint(player, 50) --设置角色物理防御属性点数为50

    local lastphydef_point = lualib:PhyDefPoint(player) --获取角色物理防御属性点数
    lualib:Warn("玩家改变后的物理防御属性点数为："..lastphydef_point)
end

--此示例代码运行前，强化属性界面上的物理防御属性点数如下图所示。

SetPhyDefPoint.png

--此示例代码运行后，强化属性界面上的物理防御属性点数如下图所示，同时游戏日志还会打印相关内容。

SetPhyDefPoint_2.png

SetPhyDefPoint_3.png
<上一篇:设置角色的物攻上限/下限值下一篇:设置角色的物防上限/下限值>
SetPhyDef
设置角色的物防上限/下限值

更新时间：2022-07-18 00:00:00
此函数设置角色的物防上限/下限值。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetPhyDef(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的物防上限/下限值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的物防上限值）

false否（即修改角色的物防下限值）

note_icon 备注
当角色类型为玩家时，设置物防上限值无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetPhyDef(player, 100, false) --设置角色的物防下限值为100
lualib:SetPhyDef(player, 1000, true) --设置角色的物防上限值为1000
<上一篇:设置角色物理防御属性点数下一篇:设置角色PK值>
SetPk
设置角色PK值

更新时间：2022-07-18 00:00:00
此函数设置角色PK值。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Pk

语法
Luacopy 复制
lualib:SetPk(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的PK值）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local Pk_point = lualib:Pk(player) --获取玩家改变前的PK值
    lualib:Warn("玩家改变前的角色Pk值为："..Pk_point)	
    
    lualib:SetPk(player, 50) --设置玩家的PK值为50	

    local lastPk_point = lualib:Pk(player) --获取玩家改变后的PK值
    lualib:Warn("玩家改变后的角色Pk值为："..lastPk_point) 	
end

--此示例代码运行前玩家的PK值如下图所示。

SetPK.png

--此示例代码运行后玩家的PK值如下图所示，同时游戏日志中还会打印相关内容。

SetPK_2.png

SetPK_4.png

SetPK_3.png
<上一篇:设置角色的物防上限/下限值下一篇:设置角色声望>
SetPrestige
设置角色声望

更新时间：2022-07-18 00:00:00
此函数设置角色声望。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 Prestige

语法
Luacopy 复制
lualib:SetPrestige(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的声望值）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local Prestige_point = lualib:Prestige(player) --获取玩家改变前的角色声望值
    lualib:Warn("玩家改变前的声望为："..Prestige_point)
    
    lualib:SetPrestige(player, 100) --设置玩家的声望值为100	

    local lastPrestige_point = lualib:Prestige(player) --获取玩家改变后的角色声望值
    lualib:Warn("玩家改变后的声望为："..lastPrestige_point) 	
end

--此示例代码运行前玩家的声望值如下图所示。

SetPrestige_2.png

--此示例代码运行后玩家的声望值如下图所示，同时游戏日志中还会打印相关内容。

SetPrestige_3.png

SetPrestige.png
<上一篇:设置角色PK值下一篇:设置角色剩余属性点数>
SetRemainPoint
设置角色剩余属性点数

更新时间：2022-07-18 00:00:00
此函数设置角色剩余属性点数。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 RemainPoint

语法
Luacopy 复制
lualib:SetRemainPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的剩余属性点数）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetRemainPoint(player, 50)  --设置角色剩余属性点数为50

    local lastRemain_point = lualib:RemainPoint(player) --获取角色剩余属性点数
    lualib:Warn("玩家改变后的剩余属性点数为："..lastRemain_point)
end

--此示例代码运行前，强化属性界面上的剩余属性点数如下图所示。

SetRemainPoint.png

--此示例代码运行后，强化属性界面上的剩余属性点数如下图所示，同时游戏日志还会打印相关内容。

SetRemainPoint_2.png

SetRemainPoint_3.png
<上一篇:设置角色声望下一篇:配置需要通知到客户端的玩家属性>
SetSelfNotifyAttrs
配置需要通知到客户端的玩家属性

更新时间：2024-05-22 00:00:00
此函数配置需要通知到客户端的玩家属性。

参考 RemoveSelfNotifyAttrs

caution_icon注意
玩家不存在的属性或者引擎已经配置过的属性无法配置。

语法
Luacopy 复制
lualib:SetSelfNotifyAttrs(
    attrs
)
参数
attrs

table

 
属性表（表中指定的属性将被通知到客户端）

table格式：{玩家属性1的类型值，玩家属性2的类型值}

相关信息请参见：角色属性类型定义

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码执行前提
--玩家成功购买VIP后会获得“角色vip购买时间”的属性，其属性值为购买VIP的时间戳。

SetSelfNotifyAttrs_2.png

SetSelfNotifyAttrs_4.png
--在游戏工具平台→游戏配置→技能→BUFF模板表中为索引名为“BUFF测试”的BUFF配置一条“忽略暴击率”的属性，其属性值为25。

SetSelfNotifyAttrs_3.png
--服务端
lualib:SetSelfNotifyAttrs({168, 202})
lualib:AddBuff(player, "BUFF测试", 0)

--客户端
if CL:GetPlayerProperty32(PlayerGUID, 168) then
    dbg("玩家的168号属性:"..LuaRet)
end
if CL:GetPlayerProperty32(PlayerGUID, 202) then
    dbg("玩家的202号属性:"..LuaRet)
end


--此示例代码运行成功如下图所示。

SetSelfNotifyAttrs.png
<上一篇:设置角色剩余属性点数下一篇:设置角色咒术攻击属性点数>
SetTaoAtkPoint
设置角色咒术攻击属性点数

更新时间：2022-07-18 00:00:00
此函数设置角色咒术攻击属性点数。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

参考 TaoAtkPoint

语法
Luacopy 复制
lualib:SetTaoAtkPoint(
    strRole,
    iValue
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要设置的咒术攻击属性点数）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetTaoAtkPoint(player, 50) --设置角色咒术攻击属性点数为50

    local lasttaoatk_point = lualib:TaoAtkPoint(player) --获取角色咒术攻击属性点数
    lualib:Warn("玩家改变后的咒术攻击属性点数为："..lasttaoatk_point)
end

--此示例代码运行前，强化属性界面上的咒术攻击属性点数如下图所示。

SetTaoAtkPoint.png

--此示例代码运行后，强化属性界面上的咒术攻击属性点数如下图所示，同时游戏日志还会打印相关内容。

SetTaoAtkPoint_2.png

SetTaoAtkPoint_3
<上一篇:配置需要通知到客户端的玩家属性下一篇:设置角色的术攻上限/下限值>
SetTaoAtk
设置角色的术攻上限/下限值

更新时间：2022-07-18 00:00:00
此函数设置角色的术攻上限/下限值。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetTaoAtk(
    strRole,
    iValue,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（既要设置的术攻上限/下限值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的术攻上限值）

false否（即修改角色的术攻下限值）

note_icon 备注
当角色类型为玩家时，设置术攻上限值无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetTaoAtk(player, 100, false) --设置角色的术攻下限值为100
lualib:SetTaoAtk(player, 1000, true) --设置角色的术攻上限值为1000
<上一篇:设置角色咒术攻击属性点数
Attr
获取角色属性值

更新时间：2021-09-08 00:00:00
此函数根据属性的枚举值/属性的类型值获取指定角色的属性值。

语法
Luacopy 复制
lualib:Attr(
    strRole,
    iAttrName
)

参数
strRole

string

 
角色的GUID

iAttrName

int32

 
属性的枚举值/属性的类型值

相关信息请参考角色属性类型定义

返回值
int32

 
获取成功则返回指定角色的指定属性的属性值

获取失败则返回0


版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Attr.png
function WarnPrint(npc,player)
    local Level = lualib:Attr(player, 0) --获取玩家等级
    lualib:Warn("玩家等级为："..Level)
end

--此示例代码运行成功如下图所示。

Attr_2.png
下一篇:获取角色的腕力>
Brawn
获取角色的腕力

更新时间：2021-09-08 00:00:00
此函数获取角色的腕力。

语法
Luacopy 复制
lualib:Brawn(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的腕力值上限

true是（即获取对应角色的腕力值上限）

false否（即获取对应角色的当前腕力值）

返回值
int32

 对应角色的腕力值上限/当前腕力值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Brawn_2.png
function WarnPrint(npc,player)
    local hasBrawn  = lualib:Brawn(player, false) --获取玩家当前腕力
    lualib:Warn("玩家当前腕力为："..hasBrawn)

    local hasmaxBrawn = lualib:Brawn(player, true) --获取玩家腕力值上限
    lualib:Warn("玩家腕力上限为："..hasmaxBrawn)
end

--此示例代码运行成功如下图所示。

Brawn.png
<上一篇:获取角色属性值下一篇:获取角色的阵营>
Camp
获取角色的阵营

更新时间：2021-09-08 00:00:00
此函数获取角色的阵营。

参考 SetCamp

语法
Luacopy 复制
lualib:Camp(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 
对应角色的阵营值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetCamp(player, 1) --将玩家的阵营值设置为1
    local zhenying = lualib:Camp(player) --获取玩家的阵营值
    play_name = lualib:Name(player)
    lualib:Warn("玩家 "..play_name.." 的阵营为："..zhenying)
end

--此示例代码运行成功如下图所示。

SetCamp.png
<上一篇:获取角色的腕力下一篇:获取角色的方向>
Dir
获取角色的方向

更新时间：2021-09-08 00:00:00
此函数获取角色的方向。

参考 SetDir SetDirEx

语法
Luacopy 复制
lualib:Dir(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 
获取成功则返回对应角色的方向值（0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码执行前提，玩家角色当前面向左边站立。
Dir.png
function WarnPrint(npc,player)
    local dir = lualib:Dir(player) --获取玩家的方向值
    lualib:Warn("当前角色的方向为："..dir)
end

--此示例代码运行成功如下图所示。

Dir_2.png
<上一篇:获取角色的阵营下一篇:获取角色的活力>
Energy
获取角色的活力

更新时间：2021-09-08 00:00:00
此函数获取角色的活力。

参考 SetEnergy

语法
Luacopy 复制
lualib:Energy(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的活力值上限

true是（即获取对应角色的活力值上限）

false否（即获取对应角色当前的活力值）

返回值
int32

 对应角色的活力值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetEnergy.png
function WarnPrint(npc,player)
    local hasEnergy = lualib:Energy(player, false) --获取玩家改变前的当前活力
    local hasmaxEnergy = lualib:Energy(player, true) --获取玩家改变前的活力上限
    lualib:Warn("玩家改变前当前活力为："..hasEnergy)
    lualib:Warn("玩家改变前活力上限为："..hasmaxEnergy)

    lualib:SetEnergy(player, 70, false) --将玩家当前的活力值设置为70
    lualib:SetEnergy(player, 1000, true) --将玩家的活力值上限设置为1000

    local hasEnergy = lualib:Energy(player, false)--获取玩家改变后的当前活力
    local hasmaxEnergy = lualib:Energy(player, true)--获取玩家改变后的活力上限
    lualib:Warn("玩家改变后当前活力为："..hasEnergy)
    lualib:Warn("玩家改变后活力上限为："..hasmaxEnergy)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

SetEnergy_2.png

SetEnergy_3.png
<上一篇:获取角色的方向下一篇:获取角色的性别>
Gender
获取角色的性别

更新时间：2021-09-08 00:00:00
此函数获取角色的性别。

参考 SetGender

语法
Luacopy 复制
lualib:Gender(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的性别
1男性

2女性

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local gender = lualib:Gender(player) --获取玩家改变前的性别
    lualib:Warn("玩家改变前的性别为："..gender)  
    if gender == 2 then 
        lualib:SetGender(player, 1) --将玩家的性别设置为男性
    elseif gender == 1 then 
        lualib:SetGender(player, 2) --将玩家的性别设置为女性
    end
    local lastgender = lualib:Gender(player) --获取玩家改变后的性别
    lualib:Warn("玩家改变后的性别为："..lastgender)  
end

--此示例代码运行前玩家的性别如下图所示。

SetGender.png

SetGender_2.png

--此示例代码运行后玩家的性别如下图所示，同时游戏日志中还会打印相关内容。

SetGender_3.png

SetGender_4.png

SetGender_5.png
<上一篇:获取角色的活力下一篇:获取当前区服游戏账号下的所有角色信息>
GetAccountRoleInfo
获取当前区服游戏账号下的所有角色信息

更新时间：2024-02-26 00:00:00
此函数获取当前区服游戏账号下的所有角色信息。

语法
Luacopy 复制
lualib:GetAccountRoleInfo(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
当前区服下所有角色的信息

存储在lua表中

列表中的每一项对应一个角色的信息，具体格式如下所示：

{
[1]={
["job"]=角色1的职业：1战士 2法师 3术士
["guid"]=角色1的GUID
["gender"]=角色1的性别：1男 2女
["status"]=角色1的状态：0从未进过游戏 1正常状态（包含被删除后恢复）
["hair"]=角色1的发型：数值的定义请参考接口lualib:SetHair的发型编号说明
["hair_color"]=角色1的发型颜色：数值的定义请参考接口lualib:SetHairColor的发型颜色索引说明
["name"]=角色1的名字
["head"]=角色1的头像编号：数值的定义请参考接口lualib:SetHead的头像编号说明
["level"]=角色1的等级
},
[2]={
["job"]=角色2的职业
["guid"]=角色2的GUID
["gender"]=角色2的性别
["status"]=角色2的状态
["hair"]=角色2的发型
["hair_color"]=角色2的发型颜色
["name"]=角色2的名字
["head"]=角色2的头像
["level"]=角色2的等级
},
}

note_icon 备注
角色发型获取到的是角色上线时数值。如在游戏中修改了发型，则需在下线保存后再次上线才会获取到。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function TestNPC_test(npc, player)
    local userInfo = lualib:GetAccountRoleInfo(player)
    tb_userInfo = serialize(userInfo)
    lualib:Warn("账号角色信息为："..tb_userInfo)
end

--此示例代码运行成功如下图所示。

GetAccountRoleInfo
<上一篇:获取角色的性别下一篇:获取玩家当日的活跃点数>
GetActiveCountToday
获取玩家当日的活跃点数

更新时间：2021-09-08 00:00:00
此函数获取玩家当日的活跃点数。

语法
Luacopy 复制
lualib:GetActiveCountToday(
    strPlayerName
)

参数
strPlayerName

string

 
玩家的名字

返回值
int

 
玩家存在则返回玩家当日的活跃点数

玩家不存在则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local playername = lualib:Name(player)
    local active_count_today = lualib:GetActiveCountToday(playername) --获取玩家当日的活跃点数
    lualib:Warn("玩家当日的活跃点数："..active_count_today)  
end

--此示例代码运行成功如下图所示。

GetActiveCountToday.png
<上一篇:获取当前区服游戏账号下的所有角色信息下一篇:获取玩家本次登录的活跃点数>
GetActiveCount
获取玩家本次登录的活跃点数

更新时间：2021-09-08 00:00:00
此函数获取玩家本次登录的活跃点数。

语法
Luacopy 复制
lualib:GetActiveCount(
    strPlayerName
)

参数
strPlayerName

string

 
玩家的名字

返回值
int

 
玩家存在则返回玩家本次登录的活跃点数

玩家不存在则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local playername = lualib:Name(player)
    local active_count = lualib:GetActiveCount(playername) --获取玩家本次登录的活跃点数
    lualib:Warn("玩家本次登录的活跃点数："..active_count)
end

--此示例代码运行成功如下图所示。

GetActiveCount.png
<上一篇:获取玩家当日的活跃点数下一篇:取得对象实体上存储的所有整型数值变量>
GetAllInts
取得对象实体上存储的所有整型数值变量

更新时间：2025-03-28 00:00:00
此函数作用是取得对象实体上存储的所有整型数值变量。

语法
Luacopy 复制
lualib:GetAllInts(
    strObject
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、英雄、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

返回值
table

 
返回所有整型数值变量，存储在lua表中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local mapGuid = lualib:MapGuid(player)
    lualib:SetInt(mapGuid,"test1",1)
    lualib:SetInt(mapGuid,"test2",2)
    lualib:SetInt(mapGuid,"test3",3)
    local AllInts = lualib:GetAllInts(mapGuid)
    lualib:Warn("存储的所有整型数值变量为："..serialize(AllInts))
end

--设置玩家所在地图地图整型数值变量，执行示例代码，如下图所示，获取玩家所在地图存储的所有整型数值变量。

GetAllInts.png
<上一篇:获取玩家本次登录的活跃点数下一篇:取得对象实体上存储的所有字符型变量>
GetAllStrs
取得对象实体上存储的所有字符型变量

更新时间：2025-03-28 00:00:00
此函数作用是取得对象实体上存储的所有字符型变量。

语法
Luacopy 复制
lualib:GetAllStrs(
    strObject
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、英雄、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

返回值
table

 
返回所有字符型变量，存储在lua表中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local mapGuid = lualib:MapGuid(player)
    lualib:SetStr(mapGuid,"test4","test4")
    lualib:SetStr(mapGuid,"test5","test5")
    lualib:SetStr(mapGuid,"test6","test6")
    local AllStrs = lualib:GetAllStrs(mapGuid)
    lualib:Warn("存储的所有字符型数值变量为："..serialize(AllStrs)) 
end

--设置玩家所在地图地图字符型变量，执行示例代码，如下图所示，获取玩家所在地图存储的所有字符型变量。

GetAllStrs.png
<上一篇:取得对象实体上存储的所有整型数值变量下一篇:获取角色身上Buff的释放者>
GetBuffHost
获取角色身上Buff的释放者

更新时间：2024-07-26 00:00:00
此函数获取角色身上Buff的释放者。

语法
Luacopy 复制
lualib:GetBuffHost(
    role,
    buff_key
)
参数
role

string

 
目标角色的GUID

buff_key

string

 
BUFF的索引名

返回值
string

 
BUFF释放者的GUID

note_icon 备注
角色不存在或者角色没有指定BUFF返回"", BUFF释放者不存在则返回"0"，正常情况下返回BUFF释放者的GUID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local role = "ar8md8e6pg02"
local buff_key = "蛊毒咒减血1级"
if lualib:HasBuff(role,buff_key) then
    lualib:Warn("目标有buff")
else
    lualib:Warn("目标无buff")
end
local buffHostGuid = lualib:GetBuffHost(role, buff_key)
lualib:Warn("角色身上BUff的释放者的GUID："..buffHostGuid)

--技能配置目标附加buff，玩家使用技能使目标身上有buff，然后使用此接口获取角色身上Buff的释放者。

GetBuffHost.png

GetBuffHost_2.png

--使用此接口可以获取角色身上Buff的释放者的GUID。

GetBuffHost_3.png

--接口返回值与释放者的GUID一致。

GetBuffHost_4.png
<上一篇:取得对象实体上存储的所有字符型变量下一篇:获取分身的真身的GUID>
GetCopyWho
获取分身的真身的GUID

更新时间：2021-09-08 00:00:00
此函数获取分身的真身的GUID。

语法
Luacopy 复制
lualib:GetCopyWho(
    copy_guid
)

参数
copy_guid

string

 
分身的GUID

返回值
string

 真身的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：测试英雄已生成一个分身。
GetCopyWho.png
function WarnPrint(npc,player)
    local TrueHeroGUID =lualib:GetCopyWho("1ar8m0gcuv001") --获取分身的真身的GUID
    lualib:Warn("分身的真身GUID为："..TrueHeroGUID)
end

--此示例代码运行成功如下图所示。

GetCopyWho_2.png
<上一篇:获取角色身上Buff的释放者下一篇:获取对象的动态属性>
GetDynamicAttr
获取对象的动态属性

更新时间：2024-03-15 00:00:00
此函数获取对象的动态属性。

参考 SetDynamicAttr

语法
Luacopy 复制
lualib:GetDynamicAttr(
    strGUID,
    iAttrSite
)

参数
strGUID

string

 
对象的GUID

对象可以为玩家、怪物或者物品

iAttrSite

int32

 
动态属性编号（填写范围为0-199）

对应角色属性类型定义中枚举值在300至499与700至899且枚举值为偶数的属性（动态属性名）

返回值
table

 
动态属性信息表

存储在lua表，为table格式。

具体格式：{["attr_name"]=属性的枚举值/类型值,["attr_value"]=属性值,}

note_icon 备注
属性的枚举值/类型值：具体可参考角色属性类型定义；

属性值：对应角色属性类型定义中枚举值在300至499与700至899且枚举值为奇数的属性（动态属性值）。

版本历史
v1.0

 
首次发布

 
v1.1

 
动态属性编号填写范围：从0-99拓展到0-199

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。


lualib:SetDynamicAttr(player, 66, 50, 5) --设置第66条动态属性为属性幸运诅咒的值增加5
local tAttrPair = lualib:GetDynamicAttr(player, 66) --获取第66条动态属性的属性值
local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)

--此示例代码运行成功如下图所示。

SetDynamicAttr_2.png

SetDynamicAttr_3.png
<上一篇:获取分身的真身的GUID下一篇:获取玩家物品的GUID列表>
GetItemsByKeys
获取玩家物品的GUID列表

更新时间：2022-05-05 00:00:00
此函数根据物品的索引名（KeyName）获取符合条件的物品的GUID列表。

语法
Luacopy 复制
lualib:GetItemsByKeys(
    strPlayer,
    strKeys,
    bEquip,
    bBag,
    bWarehouse,
    bWarehouseAdv
)

参数
strPlayer

string

 
玩家角色的GUID

strKeys

string

 
物品的索引名（KeyName）

note_icon 备注
当使用多个索引名（KeyName）时，格式为KeyName1#KeyName2···#KeyNameN。

bEquip

bool

 
是否查找装备栏

true是

false否

bBag

bool

 
是否查找背包

true是

false否

bWarehouse

bool

 
是否查找仓库

true是

false否

bWarehouseAdv

bool

 
是否查找高级仓库

true是

false否

返回值
table

 
符合条件的物品的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local guid_tb = lualib:GetItemsByKeys(player, "法师20绿武器#法师20金武器" , true, true, false, false) --获取玩家装备栏和背包中符合条件的物品的GUID列表
    for i = 1 ,#guid_tb do
        lualib:Warn(""..guid_tb[i])
    end 
end

--此示例代码运行成功如下图所示。

GetItemsByKeys.png
<上一篇:获取对象的动态属性下一篇:获取玩家或英雄的UUID>
GetPlayerUUID
获取玩家或英雄的UUID

更新时间：2021-09-08 00:00:00
此函数获取玩家或英雄的UUID。

note_icon 备注
UUID为通用唯一识别码，合区之后不会发生改变。

英雄只有被召唤出来才有UUID。

语法
Luacopy 复制
lualib:GetPlayerUUID(
    player_guid
)

参数
player_guid

string

 
玩家或英雄的GUID

返回值
string

 玩家或英雄的UUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local _UUID = lualib:GetPlayerUUID(player) --获取玩家的UUID 
    lualib:Warn("玩家的UUID为：".._UUID)
end

--此示例代码运行成功如下图所示。

GetPlayerUUID.png
<上一篇:获取玩家物品的GUID列表下一篇:获取角色属性参与倍数计算前的值>
GetRolePropBeforeCalc
获取角色属性参与倍数计算前的值

更新时间：2022-07-18 00:00:00
此函数获取角色属性参与倍数计算前的值。

此接口仅在全局模板表中的角色属性计算时, 是否保留乘以倍数之前的属性选项配置为保留时生效，并且可以通过角色属性倍数使用万分比选项对角色属性的万分比进行设置。

角色属性计算时, 是否保留乘以倍数之前的属性选项和角色属性倍数使用万分比选项可通过游戏工具平台→游戏配置→全局表→全局模板表→技能相关进行设置。

GetRolePropBeforeCalc_3.png
语法
Luacopy 复制
lualib:GetRolePropBeforeCalc(
    player_guid,
    attr
)
参数
player_guid

string

 
玩家角色的GUID

attr

int16

 
玩家属性

返回值
int32

 
要获取的属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysWarnMsg(player, "物攻上限(算上万分比)：" .. lualib:Attr(player, 10))
lualib:SysWarnMsg(player, "物攻上限万分比：" .. lualib:Attr(player, 87))
lualib:SysWarnMsg(player, "物攻上限(不算万分比)：" .. lualib:GetRolePropBeforeCalc(player, 10))

--此示例代码运行成功如下图所示。

GetRolePropBeforeCalc_2
<上一篇:获取玩家或英雄的UUID下一篇:获取指定类型的排行榜数据>
GetTopList
获取指定类型的排行榜数据

更新时间：2025-06-20 00:00:00
此函数获取指定类型的排行榜数据。

语法
Luacopy 复制
lualib:GetTopList(
    type
)
参数
type

uint8

 
排行榜类型

0,1,2,3：等级榜，依次为所有职业、战士、法师、术士。

4,5,6：魅力榜，依次为所有性别、男性、女性。

7,8,9,10：师徒榜，依次为所有职业、战士、法师、术士。

返回值
table

 
排行榜列表信息

存储在Lua表，为table格式。

具体格式如下：

{

[1]={

["level"]=排名第1的玩家的等级,

["job"]=排名第1的玩家的职业（1代表战士、2代表法师、3代表术士）,

["value"]=排名第1的玩家的魅力值（表示玩家身上的自定义变量__beauty的值）或者师徒值（表示玩家身上的自定义变量chushi的值）,

["gender"]=排名第1的玩家的性别（1代表男性、2代表女性）,

["family"]="排名第1的玩家的行会名字",

["guid"]="排名第1的玩家的GUID",

["name"]="排名第1的玩家的名字",

},

[2]={

["level"]=排名第2的玩家的等级,

["job"]=排名第2的玩家的职业（1代表战士、2代表法师、3代表术士）,

["value"]=排名第2的玩家的魅力值（表示玩家身上的自定义变量__beauty的值）或者师徒值（表示玩家身上的自定义变量chushi的值）,

["gender"]=排名第2的玩家的性别（1代表男性、2代表女性）,

["family"]="排名第2的玩家的行会名字",

["guid"]="排名第2的玩家的GUID",

["name"]="排名第2的玩家的名字",

},

...

}

note_icon 备注
当排行榜类型为等级榜时，value参数无意义。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local RankList = lualib:GetTopList(0) --获取所有职业玩家的等级排行榜数据
--打印等级排名前3位玩家的信息
for i=1,3 do
    lualib:Warn("排行榜第"..i.."位玩家的信息为"..serialize(RankList[i]))
end

--此示例代码运行成功如下图所示。

GetTopList.png
<上一篇:获取角色属性参与倍数计算前的值下一篇:获取角色的头发颜色>
HairColor
获取角色的头发颜色

更新时间：2021-09-08 00:00:00
此函数获取角色的头发颜色的索引值。

参考 SetHairColor

语法
Luacopy 复制
lualib:HairColor(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色头发颜色的索引值
具体请参见头发颜色定义页面

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local HairColor = lualib:HairColor(player)
    lualib:Warn("玩家改变前的头发颜色为："..HairColor) --获取玩家改变前的头发颜色的索引值
    
    lualib:SetHairColor(player, 10) --设置玩家的头发颜色的索引值为10
    
    local lastHairColor = lualib:HairColor(player) --获取玩家改变后的头发颜色的索引值
    lualib:Warn("玩家改变后的头发颜色为："..lastHairColor)
end

--此示例代码运行前玩家的头发颜色如下图所示。

SetHairColor.png

--此示例代码运行后玩家的头发颜色如下图所示，同时游戏日志中还会打印相关内容。

SetHairColor_2.png

SetHairColor_3.png
<上一篇:获取指定类型的排行榜数据下一篇:获取角色的发型编号>
Hair
获取角色的发型编号

更新时间：2021-09-08 00:00:00
此函数获取角色的发型编号。

参考 SetHair

语法
Luacopy 复制
lualib:Hair(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的发型编号
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local hair = lualib:Hair(player) --获取玩家改变前的发型编号
    lualib:Warn("玩家改变前的发型为："..hair)
    
    lualib:SetHair(player, 2) --设置玩家的发型编号为2
    
    local lasthair = lualib:Hair(player) --获取玩家改变后的发型编号
    lualib:Warn("玩家改变后的发型为："..lasthair)
end

--此示例代码运行前效果如下图所示。

SetHair_2.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SetHair.png

SetHair_3.png
<上一篇:获取角色的头发颜色下一篇:获取玩家的硬件码>
HardwareCode
获取玩家的硬件码

更新时间：2022-04-24 00:00:00
此函数获取玩家的硬件码。

语法
Luacopy 复制
lualib:HardwareCode(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
获取成功则返回玩家的硬件码

获取失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local computer = lualib:HardwareCode(player) --获取玩家的硬件码
    lualib:Warn("该玩家登录硬件码为："..computer)
end

--此示例代码运行成功如下图所示。

HardwareCode.png
<上一篇:获取角色的发型编号下一篇:获取角色的头像编号>
Head
获取角色的头像编号

更新时间：2021-09-08 00:00:00
此函数获取角色的头像编号。

参考 SetHead

语法
Luacopy 复制
lualib:Head(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的头像编号
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local HeadID = lualib:Head(player) --获取角色改变前的头像编号
    lualib:Warn("玩家改变前的头像ID为："..HeadID)  
    
    lualib:SetHead(player, 3) --设置角色的头像编号
    
    local lastHeadID = lualib:Head(player) --获取角色改变后的头像编号
    lualib:Warn("玩家改变后的头像ID为："..lastHeadID) 
end

--此示例代码运行前玩家的头像如下图所示。

SetHead.png

--此示例代码运行后玩家的头像如下图所示，同时游戏日志中还会打印相关内容。

SetHead_2.png

SetHead_3.png
<上一篇:获取玩家的硬件码下一篇:获取角色的生命值属性点数（HP属性点数）>
HpPoint
获取角色的生命值属性点数（HP属性点数）

更新时间：2021-12-01 00:00:00
此函数获取生命值属性点数（HP属性点数）。

参考 SetHpPoint

语法
Luacopy 复制
lualib:HpPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的生命值属性点数（HP属性点数）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetHpPoint(player, 50)  --设置角色HP属性点数为50

    local lasthp_point = lualib:HpPoint(player) --获取角色HP属性点数
    lualib:Warn("玩家改变后的HP属性点数为："..lasthp_point)
end

--此示例代码运行前，强化属性界面上的生命值属性点数（即HP属性点数）如下图所示。

SetHpPoint.png

--此示例代码运行后，强化属性界面上的生命值属性点数（即HP属性点数）如下图所示，同时游戏日志还会打印相关内容。

SetHpPoint_2.png

SetHpPoint_3.png
<上一篇:获取角色的头像编号下一篇:获取角色的生命值（HP值）>
Hp
获取角色的生命值（HP值）

更新时间：2021-12-13 00:00:00
此函数获取角色的生命值（HP值）。

语法
Luacopy 复制
lualib:Hp(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的生命值（HP值）上限

true是（即获取对应角色的生命值（HP值）上限）

false否（即获取对应角色当前的生命值（HP值））

返回值
int32

 对应角色的生命值（HP值）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetHp(player, 500, false) --将玩家当前的HP值设置为500
    lualib:SetHp(player, 1000, true) --将玩家的HP上限设置为1000

    local hasHp = lualib:Hp(player, false)--获取玩家当前的HP值
    local hasmaxHp = lualib:Hp(player, true)--获取玩家的HP上限
    lualib:Warn("玩家当前HP为："..hasHp)
    lualib:Warn("玩家HP上限为："..hasmaxHp)
end

--此示例代码运行成功如下图所示(将玩家的HP上限设置为1000不生效)，同时游戏日志中还会打印相关内容。

SetHp.png

SetHp_2.png
<上一篇:获取角色的生命值属性点数（HP属性点数）下一篇:获取玩家的IP字符串>
Ip
获取玩家的IP字符串

更新时间：2021-09-08 00:00:00
此函数获取玩家的IP字符串。

语法
Luacopy 复制
lualib:Ip(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回玩家的IP字符串

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local strIP = lualib:Ip(player) --获取玩家的IP字符串
    if strIP ~= "" then
        lualib:Warn("玩家的IP字符串为："..strIP)
    else 
        lualib:Warn("玩家的IP字符串不存在")
    end
end

--此示例代码运行成功如下图所示。

Ip.png
<上一篇:获取角色的生命值（HP值）下一篇:获取角色的职业>
Job
获取角色的职业

更新时间：2021-11-26 00:00:00
此函数获取角色的职业。

参考 SetJob

语法
Luacopy 复制
lualib:Job(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的职业
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local jobs = {"战士", "法师", "术士"}
    local job = lualib:Job(player) --获取玩家改变前的职业
    lualib:Warn("玩家改变前的职业为："..jobs[job])  

    lualib:SetJob(player, 2) --将玩家的职业设置为法师

    local lastjob = lualib:Job(player) --获取玩家改变后的职业
    lualib:Warn("玩家改变后的职业为："..jobs[lastjob])  
end

--此示例代码运行前玩家的职业如下图所示。

SetJob.png

--此示例代码运行后玩家的职业如下图所示，同时游戏日志中还会打印相关内容。

SetJob_2.png

SetJob_3.png
<上一篇:获取玩家的IP字符串下一篇:获取玩家的最后攻击时间TICK值>
LastAtkTime
获取玩家的最后攻击时间TICK值

更新时间：2021-12-17 00:00:00
此函数获取玩家的最后攻击时间TICK值（不保存数据库）。

语法
Luacopy 复制
lualib:LastAtkTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
最后攻击时间TICK值（即系统从开机到最后攻击时间所经过的毫秒数）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local AtkTime = lualib:LastAtkTime(player) --获取玩家最后攻击时间TICK值
    lualib:Warn("玩家最后攻击时间TICK值："..AtkTime)
end

--此示例代码运行成功如下图所示。

LastAtkTime.png
<上一篇:获取角色的职业下一篇:获取玩家的最后心跳包时间>
LastKeepPkgTime
获取玩家的最后心跳包时间

更新时间：2021-09-08 00:00:00
此函数获取玩家的最后心跳包时间。

语法
Luacopy 复制
lualib:LastKeepPkgTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 最后心跳包时间的时间戳
note_icon 备注
返回值的格式为UTC时间戳，可以使用接口lualib:Time2Str将获取的结果转换为字符串格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local KeepPkgTime = lualib:LastKeepPkgTime(player)
    lualib:Warn("玩家的最后心跳包时间："..KeepPkgTime)
    timeStr = lualib:Time2Str("%Y-%m-%d %H:%M", KeepPkgTime) --将心跳包时间从数值类型转化为字符串类型
    lualib:Warn("玩家的最后心跳包时间转字符串："..timeStr)
end


--此示例代码运行成功如下图所示。

LastKeepPkgTime_2.png
<上一篇:获取玩家的最后攻击时间TICK值下一篇:获取玩家的最后退出时间>
LastLogoutTime
获取玩家的最后退出时间

更新时间：2021-09-08 00:00:00
此函数获取玩家的最后退出时间，存放在数据库中。

语法
Luacopy 复制
lualib:LastLogoutTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 玩家最后退出时间的时间戳
note_icon 备注
返回值的格式为UTC时间戳，可以使用接口lualib:Time2Str将获取的结果转换为字符串格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local LogoutTime = lualib:LastLogoutTime(player)
    lualib:Warn("玩家的最后退出时间："..LogoutTime)
    timeStr = lualib:Time2Str("%Y-%m-%d %H:%M", LogoutTime) --将最后退出时间从数值类型转化为字符串类型
    lualib:Warn("玩家的最后退出时间转字符串："..timeStr)
end

--此示例代码运行成功如下图所示。

LastLogoutTime_2.png
<上一篇:获取玩家的最后心跳包时间下一篇:获取玩家的最后移动时的TICK值>
LastMoveTime
获取玩家的最后移动时的TICK值

更新时间：2021-12-17 00:00:00
此函数获取玩家的最后移动时的TICK值（不保存数据库）。

语法
Luacopy 复制
lualib:LastMoveTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
最后移动时间的TICK值（即系统从开机到最后移动时间所经过的毫秒数）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local MoveTime = lualib:LastMoveTime(player) --获取玩家的最后移动时的TICK值
    lualib:Warn("玩家的最后移动时间TICK值："..MoveTime)  
end

--此示例代码运行成功如下图所示。

LastMoveTime.png
<上一篇:获取玩家的最后退出时间下一篇:获取玩家的最后聊天时间TICK值>
LastTalkTime
获取玩家的最后聊天时间TICK值

更新时间：2021-12-17 00:00:00
此函数获取玩家的最后聊天时间TICK值（不保存数据库）。

语法
Luacopy 复制
lualib:LastTalkTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
最后聊天时间TICK值（即系统从开机到最后聊天时间所经过的毫秒数）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local TalkTime = lualib:LastTalkTime(player) --获取玩家的最后聊天时间TICK值
    lualib:Warn("玩家的最后聊天时间TICK值："..TalkTime)
end

--此示例代码运行成功如下图所示。

LastTalkTime.png
<上一篇:获取玩家的最后移动时的TICK值下一篇:获取角色的等级>
Level
获取角色的等级

更新时间：2021-09-08 00:00:00
此函数获取角色的等级。

参考 SetLevel

语法
Luacopy 复制
lualib:Level(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的等级
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local level = lualib:Level(player) --获取玩家改变前的等级
    lualib:Warn("玩家改变前的等级为："..level)  

    lualib:SetLevel(player, 30) --将玩家的等级设置为30级

    local lastlevel = lualib:Level(player) --获取玩家改变前后的等级
    lualib:Warn("玩家改变后的等级为："..lastlevel)  
end

--此示例代码运行前玩家的等级如下图所示。

SetLevel_2.png

--此示例代码运行后玩家的等级如下图所示，同时游戏日志中还会打印相关内容。

SetLevel_2.png

SetLevel_3.png
<上一篇:获取玩家的最后聊天时间TICK值下一篇:获取玩家的登录时间>
LoginTime
获取玩家的登录时间

更新时间：2022-04-24 00:00:00
此函数获取玩家的登录时间。

语法
Luacopy 复制
lualib:LoginTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
玩家登录时间的时间戳

note_icon 备注
返回值的格式为UTC时间戳，可以使用接口lualib:Time2Str将获取的结果转换为字符串格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local LoginTime = lualib:LoginTime(player)
    lualib:Warn("玩家的登录时间："..LoginTime)
    timeStr = lualib:Time2Str("%Y-%m-%d %H:%M", LoginTime) --将登录时间从数值类型转化为字符串类型
    lualib:Warn("玩家登录时间转字符串："..timeStr)
end

--此示例代码运行成功如下图所示。

LoginTime.png
<上一篇:获取角色的等级下一篇:获取角色的幸运诅咒值>
LuckCurse
获取角色的幸运诅咒值

更新时间：2021-09-08 00:00:00
此函数获取角色的幸运诅咒值。

语法
Luacopy 复制
lualib:LuckCurse(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 
对应角色的幸运诅咒值

正数幸运值

负数诅咒值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetLuckCurse.png
function WarnPrint(npc,player)
    local luck = lualib:LuckCurse(player) --获取玩家的幸运诅咒值
    lualib:Warn("玩家幸运诅咒值为："..luck)
end

--此示例代码运行成功如下图所示。

SetLuckCurse_2.png
<上一篇:获取玩家的登录时间下一篇:获取角色的魔法攻击属性点数>
MagAtkPoint
获取角色的魔法攻击属性点数

更新时间：2021-12-01 00:00:00
此函数获取角色的魔法攻击属性点数。

参考 SetMagAtkPoint

语法
Luacopy 复制
lualib:MagAtkPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的魔法攻击属性点数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetMagAtkPoint(player, 50) --设置角色魔法攻击属性点数为50

    local lastmagatk_point = lualib:MagAtkPoint(player) --获取角色魔法攻击属性点数
    lualib:Warn("玩家改变后的魔法攻击属性点数为："..lastmagatk_point)
end

--此示例代码运行前，强化属性界面上的魔法攻击属性点数如下图所示。

SetMagAtkPoint.png

--此示例代码运行后，强化属性界面上的魔法攻击属性点数如下图所示，同时游戏日志还会打印相关内容。

SetMagAtkPoint_2.png

SetMagAtkPoint_3.png
<上一篇:获取角色的幸运诅咒值下一篇:获取角色的魔攻上限/下限值>
MagAtk
获取角色的魔攻上限/下限值

更新时间：2021-09-08 00:00:00
此函数获取角色的魔攻上限/下限值。

语法
Luacopy 复制
lualib:MagAtk(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的魔攻上限值

true是（即获取对应角色的魔攻上限值）

false否（即获取对应角色的魔攻下限值）

返回值
int32

 对应角色的魔攻上限/下限值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetMagAtk.png
function WarnPrint(npc,player)
    local magatk_low = lualib:MagAtk(player,false) --获取玩家的魔攻下限值
    lualib:Warn("玩家的魔攻下限为："..magatk_low)
    local magatk_up = lualib:MagAtk(player,true) --获取玩家的魔攻上限值
    lualib:Warn("玩家的魔攻上限为："..magatk_up)
end

--此示例代码运行成功如下图所示。

SetMagAtk_2.png
<上一篇:获取角色的魔法攻击属性点数下一篇:获取角色的魔法防御属性点数>
MagDefPoint
获取角色的魔法防御属性点数

更新时间：2021-12-01 00:00:00
此函数获取角色的魔法防御属性点数。

参考 SetMagDefPoint

语法
Luacopy 复制
lualib:MagDefPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的魔法防御属性点数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetMagDefPoint(player, 50) --设置角色魔法防御属性点数为50

    local lastmagdef_point = lualib:MagDefPoint(player) --获取角色魔法防御属性点数
    lualib:Warn("玩家改变后的魔法防御属性点数为："..lastmagdef_point)
end

--此示例代码运行前，强化属性界面上的魔法防御属性点数如下图所示。

SetMagDefPoint.png

--此示例代码运行后，强化属性界面上的魔法防御属性点数如下图所示，同时游戏日志还会打印相关内容。

SetMagDefPoint_2.png

SetMagDefPoint_3.png
<上一篇:获取角色的魔攻上限/下限值下一篇:获取角色的魔防上限/下限值>
MagDef
获取角色的魔防上限/下限值

更新时间：2021-09-08 00:00:00
此函数获取角色的魔防上限/下限值。

语法
Luacopy 复制
lualib:MagDef(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的魔防上限值

true是（即获取对应角色的魔防上限值）

false否（即获取对应角色的魔防下限值）

返回值
int32

 对应角色的魔防上限/下限值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetMagDef.png
function WarnPrint(npc,player)
    local magdef_low = lualib:MagDef(player,false) --获取玩家的魔防下限值
    lualib:Warn("玩家的魔防下限为："..magdef_low)
    local magdef_up = lualib:MagDef(player,true) --获取玩家的魔防上限值
    lualib:Warn("玩家的魔防上限为："..magdef_up)
end

--此示例代码运行成功如下图所示。

SetMagDef_2.png
<上一篇:获取角色的魔法防御属性点数下一篇:获取角色的功勋>
Meritor
获取角色的功勋

更新时间：2021-09-08 00:00:00
此函数获取角色的功勋。

参考 SetMeritor

语法
Luacopy 复制
lualib:Meritor(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的功勋值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local hasMeritor  = lualib:Meritor(player) --获取玩家改变前的功勋值
    lualib:Warn("玩家的功勋为："..hasMeritor)
    
    lualib:SetMeritor(player, 100) --设置玩家的功勋值为100
    
    local hasMeritor  = lualib:Meritor(player) --获取玩家改变后的功勋值
    lualib:Warn("玩家的功勋为："..hasMeritor)
end

--此示例代码运行前玩家的功勋值如下图所示。

SetMeritor.png

--此示例代码运行后玩家的功勋值如下图所示，同时游戏日志中还会打印相关内容。

SetMeritor_2.png

SetMeritor_3.png
<上一篇:获取角色的魔防上限/下限值下一篇:获取角色的魔法值属性点数（MP属性点数）>
MpPoint
获取角色的魔法值属性点数（MP属性点数）

更新时间：2021-12-01 00:00:00
此函数获取角色的魔法值属性点数（MP属性点数）。

参考 SetMpPoint

语法
Luacopy 复制
lualib:MpPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的魔法值属性点数（MP属性点数）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetMpPoint(player, 50) --设置角色MP属性点数为50	

    local lastmp_point = lualib:MpPoint(player) --获取角色MP属性点数
    lualib:Warn("玩家改变后的MP属性点数为："..lastmp_point)
end

--此示例代码运行前，强化属性界面上的魔法值属性点数（即MP属性点数）如下图所示。

SetMpPoint.png

--此示例代码运行后，强化属性界面上的魔法值属性点数（即MP属性点数）如下图所示，同时游戏日志还会打印相关内容。

SetMpPoint_2.png

SetMpPoint_3.png
<上一篇:获取角色的功勋下一篇:获取角色的魔法值（MP值）>
Mp
获取角色的魔法值（MP值）

更新时间：2021-09-08 00:00:00
此函数获取角色的魔法值（MP值）。

参考 SetMp

语法
Luacopy 复制
lualib:Mp(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的魔法值（MP值）上限

true是（即获取对应角色的魔法值（MP值）上限）

false否（即获取对应角色当前的魔法值（MP值））

返回值
int32

 对应角色的魔法值（MP值）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetMP_3.png
function WarnPrint(npc,player)
    local cur_mp = lualib:Mp(player,false) --获取玩家改变前的当前MP
    lualib:Warn("玩家改变前的当前MP为："..cur_mp) 
    local max_mp = lualib:Mp(player,true) --获取玩家改变前的上限MP
    lualib:Warn("玩家改变前的上限MP为："..max_mp)	
    
    lualib:SetMp(player, 100, false) --将玩家当前的MP值设置为100
    lualib:SetMp(player, 1000, true) --将玩家的MP上限设置为1000

    local cur_mp = lualib:Mp(player,false) --获取玩家改变后的当前MP
    lualib:Warn("玩家改变后的当前MP为："..cur_mp)
    local max_mp = lualib:Mp(player,true) --获取玩家改变后的上限MP
    lualib:Warn("玩家改变后的上限MP为："..max_mp)
end

--此示例代码运行成功如下图所示(将玩家的MP上限设置为1000不生效)，同时游戏日志中还会打印相关内容。

SetMP_2.png

SetMP.png
<上一篇:获取角色的魔法值属性点数（MP属性点数）下一篇:获取玩家在线时间（扩展）>
OnlineTimeEx
获取玩家在线时间（扩展）

更新时间：2022-04-25 00:00:00
此函数获取玩家本次登录的当天在线时间。

语法
Luacopy 复制
lualib:OnlineTimeEx(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
获取成功则返回本次登录的当天在线时间（单位为秒（s））

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local OnlineTime = lualib:OnlineTimeEx(player) --玩家的本次登录的当天在线时间
    lualib:Warn("玩家的本次登录的当天在线时间为"..OnlineTime.."秒")
end

--此示例代码运行成功如下图所示。

OnlineTimeEx.png
<上一篇:获取角色的魔法值（MP值）下一篇:获取玩家在线时间（不包含离线挂机时间）（扩展）>
OnlineTimeWithoutOfflineTimeEx
获取玩家在线时间（不包含离线挂机时间）（扩展）

更新时间：2022-04-24 00:00:00
此函数获取玩家本次登录的当天在线时间（不包含离线挂机时间）。

语法
Luacopy 复制
lualib:OnlineTimeWithoutOfflineTimeEx(
    player
)
参数
player

string

 
玩家角色的GUID

返回值
int

 
获取成功则返回本次登录的当天在线时间（不包含离线挂机时间，单位为秒（s））

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local OnlineTime = lualib:OnlineTimeWithoutOfflineTimeEx(player) --玩家的本次登录的当天在线时间
    lualib:Warn("玩家本次登录的当天在线时间为"..OnlineTime.." 秒")  
end

--此示例代码运行成功如下图所示。

OnlineTimeWithoutOfflineTimeEx_2.png
<上一篇:获取玩家在线时间（扩展）下一篇:获取玩家在线时间（不包含离线挂机时间）>
OnlineTimeWithoutOfflineTime
获取玩家在线时间（不包含离线挂机时间）

更新时间：2022-04-24 00:00:00
此函数获取玩家本次登录的在线时间（不包含离线挂机时间）。

语法
Luacopy 复制
lualib:OnlineTimeWithoutOfflineTime(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int

 
获取成功则返回本次登录的在线时间（不包含离线挂机时间，单位为秒（s））

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local OnlineTime = lualib:OnlineTimeWithoutOfflineTime(player) --获取玩家的本次登录在线时间
    lualib:Warn("玩家本次登录在线时间为 "..OnlineTime.." 秒") 
end

--此示例代码运行成功如下图所示。

OnlineTimeWithoutOfflineTime_2.png
<上一篇:获取玩家在线时间（不包含离线挂机时间）（扩展）下一篇:获取玩家在线时间>
OnlineTime
获取玩家在线时间

更新时间：2022-04-24 00:00:00
此函数获取玩家本次登录的在线时间。

语法
Luacopy 复制
lualib:OnlineTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
获取成功则返回本次登录的在线时间（单位为秒（s））

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local OnlineTime = lualib:OnlineTime(player) --获取玩家的本次登录在线时间
    lualib:Warn("玩家的本次登录在线时间为"..OnlineTime.."秒")  
end

--此示例代码运行成功如下图所示。

OnlineTime.png
<上一篇:获取玩家在线时间（不包含离线挂机时间）下一篇:获取角色的物理攻击属性点数>
PhyAtkPoint
获取角色的物理攻击属性点数

更新时间：2021-12-01 00:00:00
此函数获取角色的物理攻击属性点数。

参考 SetPhyAtkPoint

语法
Luacopy 复制
lualib:PhyAtkPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的物理攻击属性点数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetPhyAtkPoint(player, 50) --设置角色物理攻击属性点数为50

    local lastphyatk_point = lualib:PhyAtkPoint(player) --获取角色物理攻击属性点数
    lualib:Warn("玩家改变后的物理攻击属性点数为："..lastphyatk_point)
end

--此示例代码运行前，强化属性界面上的物理攻击属性点数如下图所示。

SetPhyAtkPoint.png

--此示例代码运行后，强化属性界面上的物理攻击属性点数如下图所示，同时游戏日志还会打印相关内容。

SetPhyAtkPoint_2.png

SetPhyAtkPoint_3.png
<上一篇:获取玩家在线时间下一篇:获取角色的物攻上限/下限值>
PhyAtk
获取角色的物攻上限/下限值

更新时间：2021-09-08 00:00:00
此函数获取角色的物攻上限/下限值。

语法
Luacopy 复制
lualib:PhyAtk(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的物攻上限值

true是（即获取对应角色的物攻上限值）

false否（即获取对应角色的物攻下限值）

返回值
int32

 对应角色的物攻上限/下限值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetPhyAtk.png
function WarnPrint(npc,player)
    local phyatk_low = lualib:PhyAtk(player,false) --获取玩家的物攻下限值
    lualib:Warn("玩家的物攻下限为："..phyatk_low)
    local phyatk_up = lualib:PhyAtk(player,true) --获取玩家的物攻上限值
    lualib:Warn("玩家的物攻上限为："..phyatk_up)
end

--此示例代码运行成功如下图所示。

SetPhyAtk_2.png
<上一篇:获取角色的物理攻击属性点数下一篇:获取角色的物理防御属性点数>
PhyDefPoint
获取角色的物理防御属性点数

更新时间：2021-12-01 00:00:00
此函数获取角色的物理防御属性点数。

参考 SetPhyDefPoint

语法
Luacopy 复制
lualib:PhyDefPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的物理防御属性点数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetPhyDefPoint(player, 50) --设置角色物理防御属性点数为50

    local lastphydef_point = lualib:PhyDefPoint(player) --获取角色物理防御属性点数
    lualib:Warn("玩家改变后的物理防御属性点数为："..lastphydef_point)
end

--此示例代码运行前，强化属性界面上的物理防御属性点数如下图所示。

SetPhyDefPoint.png

--此示例代码运行后，强化属性界面上的物理防御属性点数如下图所示，同时游戏日志还会打印相关内容。

SetPhyDefPoint_2.png

SetPhyDefPoint_3.png
<上一篇:获取角色的物攻上限/下限值下一篇:获取角色的物防上限/下限值>
PhyDef
获取角色的物防上限/下限值

更新时间：2021-09-08 00:00:00
此函数获取角色的物防上限/下限值。

语法
Luacopy 复制
lualib:PhyDef(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的物防上限值

true是（即获取对应角色的物防上限值）

false否（即获取对应角色的物防下限值）

返回值
int32

 对应角色的物防上限/下限值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetPhyDef.png
function WarnPrint(npc,player)
    local phydef_low = lualib:PhyDef(player,false) --获取玩家的物防下限值
    lualib:Warn("玩家的物防下限为："..phydef_low)
    local phydef_up = lualib:PhyDef(player,true) --获取玩家的物防上限值
    lualib:Warn("玩家的物防上限为："..phydef_up)
end

--此示例代码运行成功如下图所示。

SetPhyDef_2.png
<上一篇:获取角色的物理防御属性点数下一篇:获取角色的PK值>
Pk
获取角色的PK值

更新时间：2021-09-08 00:00:00
此函数获取角色的PK值。

参考 SetPk

语法
Luacopy 复制
lualib:Pk(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的PK值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local Pk_point = lualib:Pk(player) --获取玩家改变前的PK值
    lualib:Warn("玩家改变前的角色Pk值为："..Pk_point)	
    
    lualib:SetPk(player, 50) --设置玩家的PK值为50	

    local lastPk_point = lualib:Pk(player) --获取玩家改变后的PK值
    lualib:Warn("玩家改变后的角色Pk值为："..lastPk_point) 	
end

--此示例代码运行前玩家的PK值如下图所示。

SetPK.png

--此示例代码运行后玩家的PK值如下图所示，同时游戏日志中还会打印相关内容。

SetPK_2.png

SetPK_4.png

SetPK_3.png
<上一篇:获取角色的物防上限/下限值下一篇:获取玩家所有装备栏的装备>
Player_GetAllEquipment
获取玩家所有装备栏的装备

更新时间：2025-10-17 18:16:00
此函数获取玩家所有装备栏的装备。

语法
Luacopy 复制
lualib:Player_GetAllEquipment(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
玩家所有装备位对应装备的名字与guid

存储在lua表中

具体格式如下所示：

{
[1]={
["name"]=装备1的名字,
["guid"]=装备1的guid,
},
[2]={
["name"]=装备2的名字,
["guid"]=装备2的guid,
},
}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function getAll(npc, player)
    local list = lualib:Player_GetAllEquipment(player)
    lualib:Warn(""..serialize(list))
end

--此示例代码运行成功如下图所示。

Player_GetAllEquipment.png
<上一篇:获取角色的PK值下一篇:获取玩家当前所有套装对应的装备列表>
Player_GetAllSuits
获取玩家当前所有套装对应的装备列表

更新时间：2025-10-31 18:38:00
此函数获取玩家当前所有套装对应的装备列表。

note_icon 备注
遍历当前穿戴装备，归类到对应的套装ID；若装备为通用件（UniversalItemForSuit!=0），则归入所有已发现的套装中。

语法
Luacopy 复制
lualib:Player_GetAllSuits(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
玩家所有装备位对应装备的名字与guid

存储在lua表中，键为套装ID，值为该套装的装备数组

具体格式如下所示：

{
[套装ID]={
[装备1]={
[1]={
["name"]=装备的名字,
["guid"]=装备的guid,
["is_universal"]=是否为通用件,
},
},
[装备2]={
[1]={
["name"]=装备的名字,
["guid"]=装备的guid,
["is_universal"]=是否为通用件,
},
},
},
}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function tzcs(npc,player)
    local t = lualib:Player_GetAllSuits(player)
    -- print the table
    for k, v in pairs(t) do
        lualib:Warn("suit_id: " .. k)
        for k2, v2 in pairs(v) do
            lualib:Warn("index" .. k2)
            for k3, v3 in pairs(v2) do
                lualib:Warn("guid: " .. v3["guid"])
                lualib:Warn("template_id: " .. v3["template_id"])    
                lualib:Warn("is_universal: " .. tostring(v3["is_universal"]))    
                lualib:Warn("--------------------------------")
            end
        end
        lualib:Warn("--------------------------------")
    end
end

--此示例代码运行成功如下图所示。

Player_GetAllSuits.png

Player_GetAllSuits_2.png
<上一篇:获取玩家所有装备栏的装备下一篇:获取玩家的攻击模式>
Player_GetAttackMode
获取玩家的攻击模式

更新时间：2021-09-08 00:00:00
此函数获取玩家的攻击模式。

参考 Player_ChangeAttackMode

语法
Luacopy 复制
lualib:Player_GetAttackMode(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
执行成功则返回对应玩家的攻击模式

note_icon 备注
攻击模式

0全体

1和平

2组队

3行会

4善恶

5联盟

6阵营

执行失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Player_ChangeAttackMode(player,0) then --设置玩家的攻击模式为全体模式
        local mode = lualib:Player_GetAttackMode(player) --获取玩家的攻击模式
        lualib:Warn("设置成功，当前攻击模式为："..mode)
    else 
        lualib:Warn("设置失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Player_ChangeAttackMode.png

Player_ChangeAttackMode_2.png
<上一篇:获取玩家当前所有套装对应的装备列表下一篇:获取玩家的魅力值>
Player_GetBeauty
获取玩家的魅力值

更新时间：2021-10-18 00:00:00
此函数获取玩家的魅力值。

参考 Player_SetBeauty

语法
Luacopy 复制
lualib:Player_GetBeauty(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
int32

 
玩家的魅力值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_SetBeauty(player, 123) --设置玩家的魅力值
local beauty = lualib:Player_GetBeauty(player) --获取玩家的魅力值
lualib:SysMsg_SendWarnMsg(player, "当前魅力值为："..beauty)

--获取玩家的自定义变量（__beauty变量）并打印
local types = {[0] = "数值型", "字符型"}  
local vars = lualib:VarList(player)  
for _, v in ipairs(vars) do      
    local type = v["Type"]      
    local key = v["Key"]      
    local value = v["Value"]   
    if key == "__beauty" then
        lualib:Warn("变量名:"..key..", 变量值:"..value..", 类型:"..types[type])
    end
end

--打印玩家的魅力值。

SetBeauty.png

--打印玩家的自定义变量（__beauty变量）。

GetBeauty.png
<上一篇:获取玩家的攻击模式下一篇:根据玩家的GUID获取角色的创建时间>
Player_GetCreateTime
根据玩家的GUID获取角色的创建时间

更新时间：2021-09-08 00:00:00
此函数根据玩家的GUID获取角色的创建时间。

语法
Luacopy 复制
lualib:Player_GetCreateTime(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 
创建时间

note_icon 备注
返回值的格式为UTC时间戳，可以使用接口lualib:Time2Str将获取的结果转换为字符串格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据玩家的GUID获取角色的创建时间，并通过接口lualib:Time2Str将获取的结果转换为字符串格式。
lualib:SysMsg_SendWarnMsg(player, "CreateTime = "..lualib:Time2Str("%Y-%m-%d %H:%M", lualib:Player_GetCreateTime(player))) 

--此示例代码运行成功如下图所示。

Player_GetCreateTime.png
<上一篇:获取玩家的魅力值下一篇:获取玩家当天总在线时间>
Player_GetOnlineTimeOfDay
获取玩家当天总在线时间

更新时间：2021-09-08 00:00:00
此函数获取玩家当天总在线时间（单位为秒）。

note_icon 备注
当天总在线时间不包含离线挂机时间。

语法
Luacopy 复制
lualib:Player_GetOnlineTimeOfDay(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 
当天总在线时间

单位为秒（为5的倍数）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("玩家 " .. lualib:Name(player) .. " 一天总在线时间为 " .. lualib:Player_GetOnlineTimeOfDay(player) .. " 秒")

--此示例代码运行成功如下图所示。

Player_GetOnlineTimeOfDay.png
<上一篇:根据玩家的GUID获取角色的创建时间下一篇:获取玩家在指定任务NPC处的任务状态>
Player_GetQuestStatusByNpc
获取玩家在指定任务NPC处的任务状态

更新时间：2024-04-03 00:00:00
此函数获取玩家在指定任务NPC处的任务状态。

语法
Luacopy 复制
lualib:Player_GetQuestStatusByNpc(
    player_guid,
    npc_guid
)
参数
player_guid

string

 
玩家的GUID

npc_guid

string

 
NPC的GUID

返回值
table

 
返回任务状态，存储在lua表中，具体格式如下所示：

{
[1]={
[1]=任务1的ID,
[2]=任务1的状态,
},
[2]={
[1]=任务2的ID,
[2]=任务2的状态,
},
}

lua表中每一项都是一个任务，第一个数字代表任务ID，第二个数字代表任务状态；

1表示可交任务。

2表示可接任务。

3表示尚不满足条件的可交任务。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    -- 获取任务状态
    local mapGuid = lualib:Map_GetMapGuid("手游新手村")
    local npcGuid = lualib:Map_GetMapNpc(mapGuid,"通用测试NPC")
    local questStatus = lualib:Player_GetQuestStatusByNpc(player,npcGuid)
    lualib:Warn("questStatus："..serialize(questStatus))
    -- 判断玩家是否完成指定任务
    local result = lualib:Player_IsCompleteQuest(player,1)
    lualib:Warn("result："..serialize(result))
end
--接受任务前：

Player_IsCompleteQuest.png

Player_IsCompleteQuest_2.png
--接受任务但未完成时：

Player_IsCompleteQuest_3.png

Player_IsCompleteQuest_4.png
--未提交任务时：

Player_IsCompleteQuest_5.png

Player_IsCompleteQuest_6.png
--提交任务后：

Player_IsCompleteQuest_7.png

Player_IsCompleteQuest_8.png
<上一篇:获取玩家当天总在线时间下一篇:获取玩家上次开盾后距离当前时间间隔>
Player_GetShieldInterval
获取玩家上次开盾后距离当前时间间隔

更新时间：2024-05-11 00:00:00
此函数获取玩家上次开盾后距离当前时间间隔。

语法
Luacopy 复制
lualib:Player_GetShieldInterval(
    player_guid
)
参数
player_guid

string

 
玩家的GUID

返回值
uint32

 
冷却间隔，单位毫秒

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local time = lualib:Player_GetShieldInterval(player)
lualib:Warn("玩家上次开盾距离当前时间为"..time.."毫秒")
--在技能模板表中给技能配好技能生效间隔为30000毫秒。

Player_GetShieldInterval.png
--玩家受击触发开盾距离执行代码的时间。

Player_GetShieldInterval_2.png
<上一篇:获取玩家在指定任务NPC处的任务状态下一篇:获取玩家是否是云挂机状态>
Player_IsCloudClient
获取玩家是否是云挂机状态

更新时间：2024-05-11 00:00:00
此函数获取玩家是否是云挂机状态。

语法
Luacopy 复制
lualib:Player_IsCloudClient(
    player_guid
)
参数
player_guid

string

 
玩家的GUID

返回值
操作结果

bool

 
云挂机状态。

true是云挂机状态

false不是云挂机状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local bool = lualib:Player_IsCloudClient("dhgmbgnnm005")
if bool == true then
    lualib:Warn("玩家云挂机中...")
else
    lualib:Warn("玩家非云挂机状态")
end
--使用客户端直接登录时，获取返回值为false，显示玩家不在云挂机状态。

Player_IsCloudClient.png
--使用登陆器的云挂机按钮进入游戏后，获取玩家状态显示正在云挂机中。

Player_IsCloudClient_2.png
Player_IsCloudClient_3.png
<上一篇:获取玩家上次开盾后距离当前时间间隔下一篇:获取角色的声望>
Prestige
获取角色的声望

更新时间：2021-09-08 00:00:00
此函数获取角色的声望。

参考 SetPrestige

语法
Luacopy 复制
lualib:Prestige(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的声望值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local Prestige_point = lualib:Prestige(player) --获取玩家改变前的角色声望值
    lualib:Warn("玩家改变前的声望为："..Prestige_point)
    
    lualib:SetPrestige(player, 100) --设置玩家的声望值为100	 

    local lastPrestige_point = lualib:Prestige(player) --获取玩家改变后的角色声望值
    lualib:Warn("玩家改变后的声望为："..lastPrestige_point) 	
end

--此示例代码运行前玩家的声望值如下图所示。

SetPrestige_2.png

--此示例代码运行后玩家的声望值如下图所示，同时游戏日志中还会打印相关内容。

SetPrestige_3.png

SetPrestige.png
<上一篇:获取玩家是否是云挂机状态下一篇:获取玩家复活地图的GUID>
ReliveMapGuid
获取玩家复活地图的GUID

更新时间：2021-09-08 00:00:00
此函数获取玩家复活地图的GUID。

语法
Luacopy 复制
lualib:ReliveMapGuid(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回玩家复活地图的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local re_map = lualib:ReliveMapGuid(player) --获取玩家复活地图的GUID
    if re_map ~= "" then      
        lualib:Warn("玩家复活地图的GUID:"..re_map)
    end
end

--此示例代码运行成功如下图所示。

ReliveMapGuid.png
<上一篇:获取角色的声望下一篇:获取玩家离开复活区前所在的坐标点>
RelivePoint
获取玩家离开复活区前所在的坐标点

更新时间：2021-12-24 00:00:00
此函数获取玩家离开复活区前所在的坐标点。

语法
Luacopy 复制
lualib:RelivePoint(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
玩家离开复活区前所在的逻辑格坐标点

存储在lua表中

为table格式，具体格式为{["x"]=横坐标,["y"]=纵坐标}

例如：{["x"]=1,["y"]=2}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local coordinate = lualib:RelivePoint(player) --获取玩家离开复活区前所在的逻辑格坐标点
lualib:Warn("玩家"..lualib:Name(player).."离开复活区前所在的坐标点： "..coordinate["x"]..","..coordinate["y"])

--此示例代码运行成功如下图所示。

RelivePoint.png
<上一篇:获取玩家复活地图的GUID下一篇:获取角色的剩余属性点数>
RemainPoint
获取角色的剩余属性点数

更新时间：2021-12-01 00:00:00
此函数获取角色的剩余属性点数。

参考 SetRemainPoint

语法
Luacopy 复制
lualib:RemainPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 剩余属性点数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetRemainPoint(player, 50)  --设置角色剩余属性点数为50

    local lastRemain_point = lualib:RemainPoint(player) --获取角色剩余属性点数
    lualib:Warn("玩家改变后的剩余属性点数为："..lastRemain_point)
end

--此示例代码运行前，强化属性界面上的剩余属性点数如下图所示。

SetRemainPoint.png

--此示例代码运行后，强化属性界面上的剩余属性点数如下图所示，同时游戏日志还会打印相关内容。

SetRemainPoint_2.png

SetRemainPoint_3.png
<上一篇:获取玩家离开复活区前所在的坐标点下一篇:获取指定属性排名第一的在线角色的GUID>
RoleRankTop
获取指定属性排名第一的在线角色的GUID

更新时间：2021-11-26 00:00:00
此函数获取指定属性排名第一并且当前在线的角色的GUID。

语法
Luacopy 复制
lualib:RoleRankTop(
    iType,
    iJob,
    iGender,
    iAttrName
)

参数
iType

int

 
角色的类型

0玩家

1英雄

iJob

int

 
角色的职业

0所有职业

1战士

2法师

3术士

iGender

int

 
角色的性别

0所有性别

1男性

2女性

iAttrName

int

 
要排名的属性类型

相关信息请参考角色属性类型定义

返回值
string

 
角色存在则返回角色的GUID

角色不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local playerGUID = lualib:RoleRankTop(0, 0, 0, 0) --获取等级排名第一的在线角色的GUID
    if playerGUID ~= "" then      
        lualib:Warn("排位第一的角色的GUID:"..playerGUID)
        lualib:Warn("排位第一的角色的名字:"..lualib:Name(playerGUID)) --获取此角色的名字
    end
end

--此示例代码运行成功如下图所示。

RoleRankTop.png
<上一篇:获取角色的剩余属性点数下一篇:根据职业和等级取得角色的配置表结构>
Role_DataRow
根据职业和等级取得角色的配置表结构

更新时间：2024-07-26 00:00:00
此函数根据职业和等级取得角色的配置表结构。

语法
Luacopy 复制
lualib:Role_DataRow(
    job,
    level
)
参数
job

UINT8

 
职业

1战士

2法师

3术士

level

UINT32

 
等级

返回值
table

 
指定职业和等级的角色配置表结构

其定义请参见Role模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local job = 1
local level = 1
local t_roleInfo = lualib:Role_DataRow(job,level)
lualib:Warn("角色的配置表结构："..serialize(t_roleInfo))

--此示例代码运行成功如下图所示。

Role_DataRow.png
<上一篇:获取指定属性排名第一的在线角色的GUID下一篇:获取最后一次角色攻击的对象GUID>
Role_GetAttackRole
获取最后一次角色攻击的对象GUID

更新时间：2025-08-08 00:00:00
此函数获取最后一次角色攻击的对象GUID。

语法
Luacopy 复制
lualib:Role_GetAttackRole(
    role_guid
)
参数
role_guid

string

 
角色的GUID，角色可以为玩家、怪物、NPC

返回值
string

 
对象guid

note_icon 备注
对象死亡或者攻击时间超过10秒则返回空字符串。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function gj(npc,player)
   
  local GUID =  lualib:Role_GetAttackRole(player)
  
  if GUID == "" then 
     lualib:SysWarnMsg(player,"对已经死亡，或者超过10S")
  else
     lualib:SysWarnMsg(player,"最后攻击的是："..lualib:KeyName(GUID)) 
  end
end

--执行示例代码，如下图所示，对象存活且上次攻击没超过10S，正常获取最后一次攻击对象的GUID。

Role_GetAttackRole.png

--执行示例代码，如下图所示，对象死亡或者超过10S返回值是""。

Role_GetAttackRole_2.png
<上一篇:根据职业和等级取得角色的配置表结构下一篇:获取指定角色最后一次攻击对象的GUID>
Role_GetBeAttackRole
获取指定角色最后一次攻击对象的GUID

更新时间：2024-01-03 00:00:00
此函数获取指定角色最后一次攻击对象的GUID。

语法
Luacopy 复制
lualib:Role_GetBeAttackRole(
    role_guid
)
参数
role_guid

string

 
角色的GUID
角色可以为玩家，假人，英雄或者怪物

返回值
string

 
角色最后一次攻击对象的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local attacked_role_guid = lualib:Role_GetBeAttackRole(player)
    lualib:Warn("最后一次攻击角色的GUID为："..attacked_role_guid)
end
<上一篇:获取最后一次角色攻击的对象GUID下一篇:获取指定角色是否开启幸运影响防御的功能>
Role_GetLuckWithDef
获取指定角色是否开启幸运影响防御的功能

更新时间：2022-07-18 00:00:00
此函数获取指定角色是否开启幸运影响角色自身防御的功能。

此接口仅在选项“幸运是否影响防御”设置为“否”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→游戏限制区域。

Role_SetLuckWithDef.png
语法
Luacopy 复制
lualib:Role_GetLuckWithDef(
    role_guid
)
参数
role_guid

string

 
角色的GUID

返回值
bool

 
指定角色是否开启幸运影响角色自身防御的功能

true开启

false不开启

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Role_SetLuckWithDef(player, true) then
    lualib:SysWarnMsg(player, "设置成功")
    if lualib:Role_GetLuckWithDef(player) then
        lualib:SysWarnMsg(player, "角色幸运影响防御已开启")
    else
        lualib:SysWarnMsg(player, "角色幸运影响防御未开启")
    end
else
    lualib:SysWarnMsg(player, "设置失败")
end

--此示例代码运行成功如下图所示。

Role_GetLuckWithDef.png
<上一篇:获取指定角色最后一次攻击对象的GUID下一篇:获取角色的咒术攻击属性点数>
TaoAtkPoint
获取角色的咒术攻击属性点数

更新时间：2021-12-01 00:00:00
此函数获取角色的咒术攻击属性点数。

参考 SetTaoAtkPoint

语法
Luacopy 复制
lualib:TaoAtkPoint(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 对应角色的咒术攻击属性点数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetTaoAtkPoint(player, 50) --设置角色咒术攻击属性点数为50

    local lasttaoatk_point = lualib:TaoAtkPoint(player) --获取角色咒术攻击属性点数
    lualib:Warn("玩家改变后的咒术攻击属性点数为："..lasttaoatk_point)
end

--此示例代码运行前，强化属性界面上的咒术攻击属性点数如下图所示。

SetTaoAtkPoint.png

--此示例代码运行后，强化属性界面上的咒术攻击属性点数如下图所示，同时游戏日志还会打印相关内容。

SetTaoAtkPoint_2.png

SetTaoAtkPoint_3
<上一篇:获取指定角色是否开启幸运影响防御的功能下一篇:获取角色的术攻上限/下限值>
TaoAtk
获取角色的术攻上限/下限值

更新时间：2021-11-26 00:00:00
此函数获取角色的术攻上限/下限值。

语法
Luacopy 复制
lualib:TaoAtk(
    strRole,
    bLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

bLimit

bool

 
是否获取对应角色的术攻上限值

true是（即获取对应角色的术攻上限值）

false否（即获取对应角色的术攻下限值）

返回值
int32

 对应角色的术攻上限/下限值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

SetTaoAtk.png
function WarnPrint(npc,player)
    local taoatk_low = lualib:TaoAtk(player,false) --获取玩家的术攻下限值
    lualib:Warn("玩家的术攻下限为："..taoatk_low)
    local taoatk_up = lualib:TaoAtk(player,true) --获取玩家的术攻上限值
    lualib:Warn("玩家的术攻上限为："..taoatk_up)
end

--此示例代码运行成功如下图所示。

SetTaoAtk_2.png
<上一篇:获取角色的咒术攻击属性点数下一篇:获取属性的类型名>
ToAttrName
获取属性的类型名

更新时间：2021-09-08 00:00:00
此函数根据属性的枚举值/属性的类型值获取属性的类型名。

note_icon 备注
此接口将属性由数值类型转化为字符串类型。

语法
Luacopy 复制
lualib:ToAttrName(
    iAttrName
)

参数
iAttrName

int32

 
属性的枚举值/属性的类型值

相关信息请参考角色属性类型定义

返回值
string

 
执行成功则返回属性类型名

执行失败则返回“未知属性”的文本

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local att_name = lualib:ToAttrName(9) --获取属性枚举值为9的属性类型名
    lualib:Warn("属性类型名："..att_name) 
end
--此示例代码运行成功如下图所示。

ToAttrName.png

function WarnPrint(npc,player)
    local att_name = lualib:ToAttrName(1111) --获取属性枚举值为1111的属性类型名
    lualib:Warn("属性类型名："..att_name) 
end

--此示例代码运行成功如下图所示。

--因为属性枚举值为1111的属性不存在，所以示例代码执行后返回“未知属性”的文本。

ToAttrName_2.png
<上一篇:获取角色的术攻上限/下限值下一篇:获取玩家在线时间的总和>
TotalTime
获取玩家在线时间的总和

更新时间：2021-09-08 00:00:00
此函数获取玩家在线时间的总和（包含离线挂机时间），并存储在数据库中。

语法
Luacopy 复制
lualib:TotalTime(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
执行成功则返回对应玩家在线时间的总和（单位为秒（s））

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local OnlineTime = lualib:TotalTime(player) --获取玩家在线时间的总和
    lualib:Warn("玩家总计在线时间为 "..OnlineTime.." 秒")
end

--此示例代码运行成功如下图所示。

TotalTime.png
<上一篇:获取属性的类型名
AddHp
增加角色的生命值（HP值）

更新时间：2022-04-27 00:00:00
此函数作用为增加角色的生命值（HP值）。

所有的属性修改操作都会自动记录到日志服务器。

参考 Hp

语法
Luacopy 复制
lualib:AddHp(
    strRole,
    iValue
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要增加的生命值（HP值））

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:AddHp(player, 100) then
    lualib:Warn(lualib:Name(player).."加血100")
end

--此示例代码运行前效果如下图所示。

AddHp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddHp_2.png

AddHp_3.png
下一篇:增加角色MP>
AddMp
增加角色MP

更新时间：2025-05-16 00:00:00
此函数作用是增加角色MP。

所有的属性修改操作都会自动记录到日志服务器。

语法
Luacopy 复制
lualib:AddMp(
    strRole,
    iValue
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物、NPC

iValue

int64

 
增加的血量

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local cur_mp = lualib:Mp(player,false) --获取玩家改变前的当前MP
    lualib:Warn("玩家改变前的当前MP为："..cur_mp)
    lualib:AddMp(player,500)
    local cur_mp = lualib:Mp(player,false) --获取玩家改变后的当前MP
    lualib:Warn("玩家改变后的当前MP为："..cur_mp)
end

--执行示例代码，如下图所示，角色增加的MP与设置增加的MP一致。

AddMp.png

<上一篇:增加角色的生命值（HP值）下一篇:清除角色或物品的动态属性>
ClearDynamicAttrs
清除角色或物品的动态属性

更新时间：2025-02-28 00:00:00
此函数清除角色或物品的动态属性。

语法
Luacopy 复制
lualib:ClearDynamicAttrs(
    strGUID
)

参数
strGUID

string

 
对象的GUID

对象可以为玩家、怪物或者物品

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    -- 获取人物动态属性
    local tAttrPair = lualib:GetDynamicAttr(player, 1) 
    local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
     tAttrPair = lualib:GetDynamicAttr(player, 2) 
    iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
     tAttrPair = lualib:GetDynamicAttr(player, 3) 
    iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
    tAttrPair = lualib:GetDynamicAttr(player, 4) 
    iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
end    
    
--如图所示未增加角色的动态属性物攻上下限，物防上限，血量前。



ClearDynamicAttrs_2.png

function main(npc,player)
    -- 设置人物的动态属性
    lualib:SetDynamicAttr(player, 1, 11, 500)
    lualib:SetDynamicAttr(player, 2, 6, 500)
    lualib:SetDynamicAttr(player, 3, 10, 500)
    lualib:SetDynamicAttr(player, 4, 3, 10000)
    -- 获取人物动态属性
    local tAttrPair = lualib:GetDynamicAttr(player, 1) 
    local iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
     tAttrPair = lualib:GetDynamicAttr(player, 2) 
    iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
     tAttrPair = lualib:GetDynamicAttr(player, 3) 
    iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
    tAttrPair = lualib:GetDynamicAttr(player, 4) 
    iAttrType, iAttrVale = tAttrPair["attr_name"], tAttrPair["attr_value"]
    lualib:Warn("属性 "..iAttrType.." 的值为："..iAttrVale)
end    
    
--如图所示执行示例代码增加角色的动态属性物攻上下限，物防上限，血量后。

ClearDynamicAttrs_3.png

ClearDynamicAttrs_4.png

function main(npc,player)
    -- 清除角色的动态属性
     lualib:ClearDynamicAttrs(player)
end    
    
--如图所示执行示例代码清除角色的动态属性。



ClearDynamicAttrs_2.png
<上一篇:增加角色MP下一篇:按排行榜类型清除排行榜>
ClearTopListByType
按排行榜类型清除排行榜

更新时间：2025-12-12 18:25:00
此函数作用为按排行榜类型清除排行榜。

语法
Luacopy 复制
lualib:ClearTopListByType(
    type
)
参数
type

int

 
排行榜类型

0等级榜

1战士等级榜

2法师等级榜

3术士等级榜

4魅力值榜

5男性魅力值榜

6女性魅力值榜

7师徒榜

8战士师徒榜

9法师师徒榜

10术士师徒榜

11战士兵器榜

12法师兵器榜

13术士兵器榜

返回值
bool

 
true清除成功

false清除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--清除战士等级榜单
function phbcq(npc,player)
    lualib:ClearTopListByType(1)
end

--此示例代码运行前效果如下图所示。

ClearTopListByType.png

--此示例代码运行后效果如下图所示，战士等级榜单已经清除。

ClearTopListByType_2.png
<上一篇:清除角色或物品的动态属性下一篇:清除排行榜>
ClearTopList
清除排行榜

更新时间：2022-04-27 00:00:00
此函数作用为清除排行榜。

执行此接口后，排行榜根据当前在线的玩家重新排位。

清除排行榜前效果如下图所示。

ClearTopList1

清除排行榜后效果如下图所示。

ClearTopList2

语法
Luacopy 复制
lualib:ClearTopList()
参数
无

返回值
bool

 
true清除成功

false清除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:ClearTopList() then
    lualib:SysMsg_SendWarnMsg(player, "清除成功")
else
    lualib:SysMsg_SendWarnMsg(player, "清除失败")
end

--此示例代码运行前效果如下图所示。

ClearTopList_2.png

--此示例代码运行后效果如下图所示，同时游戏对话框中还会打印相关内容。

ClearTopList_1.png

ClearTopList_3.png
<上一篇:按排行榜类型清除排行榜下一篇:删除对象实体上的整型数值变量>
DeleteInt
删除对象实体上的整型数值变量

更新时间：2025-05-06 00:00:00
此函数作用是删除对象实体上的整型数值变量。

语法
Luacopy 复制
lualib:DeleteInt(
    strObject,
    strKey
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、英雄、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

strKey

string

 
变量名

caution_icon 注意
变量名不能以"__"开头("__"为系统专用变量)。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local mapGuid = lualib:MapGuid(player)
    lualib:SetInt(mapGuid,"test1",1)
    lualib:SetInt(mapGuid,"test2",2)
    lualib:SetInt(mapGuid,"test3",3)
    local AllInts1 = lualib:GetAllInts(mapGuid)
    lualib:Warn("存储的所有整型数值变量为："..serialize(AllInts1))
    lualib:DeleteInt(mapGuid,"test1")
    local AllInts2 = lualib:GetAllInts(mapGuid)
    lualib:Warn("删除后存储的所有整型数值变量为："..serialize(AllInts2))
end

--执行示例代码，设置玩家所在地图整型数值变量，然后删除指定变量，如下图所示，删除成功。

DeleteInt.png
<上一篇:清除排行榜下一篇:删除对象实体上的字符型变量>
DeleteStr
删除对象实体上的字符型变量

更新时间：2025-05-06 00:00:00
此函数作用是删除对象实体上的字符型变量。

语法
Luacopy 复制
lualib:DeleteStr(
    strObject,
    strKey
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、英雄、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

strKey

string

 
变量名

caution_icon 注意
变量名不能以"__"开头("__"为系统专用变量)。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local mapGuid = lualib:MapGuid(player)    
    lualib:SetStr(mapGuid,"test4","test4")
    lualib:SetStr(mapGuid,"test5","test5")
    lualib:SetStr(mapGuid,"test6","test6")
    local AllStrs1 = lualib:GetAllStrs(mapGuid)
    lualib:Warn("存储的所有字符型数值变量为："..serialize(AllStrs1))
    lualib:DeleteStr(mapGuid,"test4")
    local AllStrs2 = lualib:GetAllStrs(mapGuid)
    lualib:Warn("删除后存储的所有字符型数值变量为："..serialize(AllStrs2))
end

--执行示例代码，设置玩家所在地图字符型变量，然后删除指定字符型变量，如下图所示，删除成功。

DeleteStr.png
<上一篇:删除对象实体上的整型数值变量下一篇:取消玩家自动回复>
DisableAutoReply
取消玩家自动回复

更新时间：2022-04-27 00:00:00
此函数取消玩家自动回复。

语法
Luacopy 复制
lualib:DisableAutoReply(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下所示。
SetAutoReply.png
function WarnPrint(npc,player)
    lualib:DisableAutoReply(player) --取消玩家自动回复
end

--此示例代码运行成功如下图所示。

DisableAutoReply.png
<上一篇:删除对象实体上的字符型变量下一篇:将玩家/英雄数据刷新到数据库服务器>
FlushPlayerData
将玩家/英雄数据刷新到数据库服务器

更新时间：2022-04-27 00:00:00
此函数将玩家或者英雄数据刷新到数据库服务器。

语法
Luacopy 复制
lualib:FlushPlayerData(
    player_guid
)

参数
player_guid

string

 
玩家或英雄的GUID

返回值
bool

 
true刷新成功

false刷新失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:FlushPlayerData(player) then
        lualib:Warn("刷新成功")
    else
        lualib:Warn("刷新失败")
    end
end

--此示例代码运行成功如下图所示。

FlushPlayerData.png
<上一篇:取消玩家自动回复下一篇:生成一个随机名字>
GenRandomName
生成一个随机名字

更新时间：2022-08-19 00:00:00
此函数作用为生成一个随机名字（一般用于假人）。

语法
Luacopy 复制
lualib:GenRandomName()
参数
无

返回值
string

 
一个随机生成的名字

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str = lualib:GenRandomName() --生成一个随机名字
lualib:MsgBox(player,""..str) --通知客户端显示消息框

--此示例代码运行成功如下图所示。

GenRandomName.png
<上一篇:将玩家/英雄数据刷新到数据库服务器下一篇:查询前多少名等级的玩家信息>
GetTopListGuids
查询前多少名等级的玩家信息

更新时间：2025-05-06 00:00:00
此函数作用是查询前多少名等级的玩家信息。

caution_icon注意
此函数只投递事件，结果将在回调中给出，调用只能投递一次，后续的多次调用将会直接失败。

语法
Luacopy 复制
lualib:GetTopListGuids(
    count,
    offset,
    callback,
    param
)
参数
count

UINT

 
玩家数量

offset

UINT

 
跳过多少名

callback

string

 
回调函数

回调函数格式：callback(code, table, param)

code(int)：1表示成功，其他数值表示失败

table(table)：玩家信息，table形式为{[1] = { ["name"] = "玩家1的名字", ["guid"] = "玩家1的GUID", ["level"] = 玩家1的等级}, [2] = { ["name"] = "玩家2的名字", ["guid"] = "玩家2的GUID", ["level"] = "玩家2的等级"}}

param(string)：自定义参数

param

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true投递成功

false投递失败，原因请查看日志

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    if lualib:GetTopListGuids(5,1,"callback","test_param") then
        lualib:Warn("投递成功")
    end
end

function callback(code,table,param)
    lualib:Warn("code："..code)
    if code == 1 then
        lualib:Warn("table："..serialize(table))
        lualib:Warn("param："..param)
    else 
        lualib:Warn("查询失败")
    end
end

--执行示例代码，如下图所示。
GetTopListGuids.png
<上一篇:生成一个随机名字下一篇:判断玩家是否处于珍视状态>
HasZhenshi
判断玩家是否处于珍视状态

更新时间：2022-07-18 00:00:00
此函数判断玩家是否处于珍视状态。

当玩家处于珍视状态时，会忽略怪物经验衰减等级和怪物经验衰减百分比字段的配置（即打怪时经验不会衰减）。

相关字段的访问路径为：游戏工具平台→游戏配置→怪物→怪物模板表→基础信息→基础信息区域。

image_20200824111250.png
语法
Luacopy 复制
lualib:HasZhenshi(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true玩家处于珍视状态

false玩家不处于珍视状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:HasZhenshi(player) then
        lualib:Warn("玩家处于珍视状态")
    else
        lualib:Warn("玩家不处于珍视状态")
    end 
end

--此示例代码运行成功如下图所示。

HasZhenshi.png
<上一篇:查询前多少名等级的玩家信息下一篇:通过玩家硬件码踢出玩家>
KickByHardwareCode
通过玩家硬件码踢出玩家

更新时间：2022-04-27 00:00:00
此函数通过玩家硬件码（Hardware Code）踢出玩家。

语法
Luacopy 复制
lualib:KickByHardwareCode(
    hardwarecode,
    reason
)
参数
hardwarecode

string

 
设备的硬件码（HardWare Code)

reason

string

 
踢人的原因（用于日志服务器记录）

返回值
int

 
踢出玩家的数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local code = lualib:HardwareCode(player) --获取玩家的硬件码
    lualib:Warn("玩家的硬件码为："..code)
    local number = lualib:KickByHardwareCode(code, "测试") --通过玩家硬件码踢出玩家
    lualib:Warn("踢出玩家个数："..number)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

KickByHardwareCode_2.png

KickByHardwareCode_3.png
<上一篇:判断玩家是否处于珍视状态下一篇:通过玩家IP地址踢出玩家>
KickByIp
通过玩家IP地址踢出玩家

更新时间：2022-04-27 00:00:00
此函数通过玩家IP地址踢出玩家。

语法
Luacopy 复制
lualib:KickByIp(
    ip,
    reason
)
参数
ip

string

 
玩家角色的IP地址

reason

string

 
踢人的原因（用于日志服务器记录）

返回值
int

 
踢出玩家的数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local playerIp = lualib:Ip(player) --获取玩家的IP字符串
    local number = lualib:KickByIp(playerIp, "测试") --通过玩家IP地址踢出玩家
    lualib:Warn("踢出玩家个数："..number)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

KickByHardwareCode_2.png

KickByIp_2.png
<上一篇:通过玩家硬件码踢出玩家下一篇:通过玩家角色名或账号名踢出玩家>
KickByName
通过玩家角色名或账号名踢出玩家

更新时间：2022-04-27 00:00:00
此函数通过玩家角色名或账号名踢出玩家。

语法
Luacopy 复制
lualib:KickByName(
    name,
    type,
    reason
)

参数
name

string

 
玩家的角色名或账号名

type

int32

 
类型

2按角色名踢

3按账号名踢

reason

string

 
踢人的原因（用于日志服务器记录）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--通过玩家角色名踢出玩家
function WarnPrint(npc,player)
    if lualib:KickByName("四十七号土匪", 2, "测试踢人") then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

KickByHardwareCode_2.png

KickByName.png

--通过玩家账号名踢出玩家
function WarnPrint(npc,player)
    if lualib:KickByName("sishiqihaotufei", 3, "测试踢人") then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

KickByHardwareCode_2.png

KickByName.png
<上一篇:通过玩家IP地址踢出玩家下一篇:立即杀死角色（扩展）>
KillEx
立即杀死角色（扩展）

更新时间：2022-04-27 00:00:00
此函数根据角色的GUID立即杀死角色，同时支持设置杀死角色的凶手。

语法
Luacopy 复制
lualib:KillEx(
    strRole,
    strKiller
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strKiller

string

 
凶手的GUID

角色可以为玩家、怪物或NPC

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:KillEx(player,npc) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Kill.png

KillEx.png
<上一篇:通过玩家角色名或账号名踢出玩家下一篇:立即杀死角色>
Kill
立即杀死角色

更新时间：2022-04-27 00:00:00
此函数根据角色的GUID立即杀死角色。

语法
Luacopy 复制
lualib:Kill(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Kill(player) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Kill.png

Kill_2.png
<上一篇:立即杀死角色（扩展）下一篇:引擎加载玩家（扩展）>
LoadPlayerEx
引擎加载玩家（扩展）

更新时间：2022-04-27 00:00:00
此函数作用为使用引擎加载玩家。

只能加载不在线的玩家。

语法
Luacopy 复制
lualib:LoadPlayerEx(
    player_name,
    func,
    param
)

参数
player_name

string

 
玩家的名字

func

string

 
执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：玩家的GUID

strParam(string)：自定义参数

param

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:LoadPlayerEx("四十七号土匪", "SetOffLinePlayers", "")
end

function SetOffLinePlayers(player)
    local name = lualib:Guid2Name(player)
    lualib:Warn("加载玩家的名字为："..name) 
end

--此示例代码运行成功如下图所示。

LoadPlayerEx.png
<上一篇:立即杀死角色下一篇:引擎加载玩家>
LoadPlayer
引擎加载玩家

更新时间：2022-04-27 00:00:00
此函数作用为使用引擎加载玩家。

只能加载不在线的玩家。

语法
Luacopy 复制
lualib:LoadPlayer(
    player_guid,
    func,
    param
)

参数
player_guid

string

 
玩家角色的GUID

func

string

 
加载玩家成功时执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：callbackfunc(Player, Param)

Player(string)：加载的玩家角色的GUID

Param(string)：自定义参数

param

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:LoadPlayer("ar8m04rq3o00", "SetOffLinePlayers", "")
end

function SetOffLinePlayers(player)
    local name = lualib:Guid2Name(player)
    lualib:Warn("加载玩家的名字为："..name) 
end

--此示例代码运行成功如下图所示。

LoadPlayer.png
<上一篇:引擎加载玩家（扩展）下一篇:获取角色的安全锁开关状态>
LockSwitch
获取角色的安全锁开关状态

更新时间：2022-04-27 00:00:00
此函数获取角色的安全锁开关状态。

参考 SetLockSwitch

语法
Luacopy 复制
lualib:LockSwitch(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 
对应角色的安全锁开关状态

0未解锁状态

1已解锁状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--若角色的安全锁为已解锁状态，则将其设置为未解锁状态；若角色的安全锁为未解锁状态，则将其设置为已解锁状态。
function WarnPrint(npc,player)
    local lock = lualib:LockSwitch(player) --获取角色的安全锁开关状态
    lualib:Warn("玩家安全锁开关状态为："..lock)
    if lock == 0 then
        lualib:SetLockSwitch(player, 1) --设置角色的安全锁为已解锁状态
    elseif lock == 1 then
        lualib:SetLockSwitch(player, 0) --设置角色的安全锁为未解锁状态
    end

    local lastlock = lualib:LockSwitch(player) --获取角色的安全锁开关状态
    lualib:Warn("玩家安全锁开关状态为："..lastlock)
end

--此示例代码运行成功如下图所示（0代表未解锁状态，1代表已解锁状态）。

SetLockSwitch.png
<上一篇:引擎加载玩家下一篇:根据玩家的角色名获取该玩家的GUID>
Name2Guid
根据玩家的角色名获取该玩家的GUID

更新时间：2022-04-27 00:00:00
此函数根据玩家的角色名（Name）获取该玩家的GUID。

caution_icon警告
此接口只能寻找在线玩家，若指定玩家不在线，则无法找到该玩家。

语法
Luacopy 复制
lualib:Name2Guid(
    strPlayerName
)

参数
strPlayerName

string

 
玩家的角色名（Name）

返回值
string

 
执行成功则返回玩家的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local playerGUID = lualib:Name2Guid("四十八号土匪")
    if playerGUID ~= "" then
        lualib:Warn("玩家的GUID为："..playerGUID) --当返回值不为""时，打印玩家的GUID。
    else
        lualib:Warn("玩家不存在或不在线") --当返回值为""时，打印“玩家不存在或不在线”的文字。
    end
end

--此示例代码运行成功如下图所示（玩家在线时）。

Name2Guid.png

--此示例代码运行成功如下图所示（玩家下线后）。

Name2Guid_2.png
<上一篇:获取角色的安全锁开关状态下一篇:修改玩家角色名（扩展）>
Player_ChangeNameEx
修改玩家角色名（扩展）

更新时间：2022-09-29 00:00:00
此函数作用为修改玩家角色名并强制玩家下线。

调用此接口时，会检查要修改的玩家名字与已存在的玩家（或者假人）名字是否重名。

caution_icon注意
如果改名成功则会立刻强制玩家下线。

语法
Luacopy 复制
lualib:Player_ChangeNameEx(
    strPlayer,
    strNewName
)
参数
strPlayer

string

 
玩家角色的GUID

strNewName

string

 
玩家的新角色名

返回值
bool

 
true发出改名请求成功

false发出改名请求失败

note_icon 备注
返回true时只代表发出改名请求，不代表改名成功，要等待事件触发。

版本历史
v1.0

 
首次发布

 
v1.1

 
优化重名检查逻辑

示例代码
Luacopy 复制
if lualib:Player_ChangeNameEx(player, "改名后的冷饮") then
    lualib:Warn(lualib:Name(player).." 成功改名！")
else
    lualib:Warn(lualib:Name(player).." 改名失败！")
end

--此示例代码运行成功如下图所示（玩家会被踢出服务器），同时游戏日志中还会打印相关内容。

Player_ChangeNameEx.png

Player_ChangeNameEx_4.png

Player_ChangeNameEx_3

Player_ChangeNameEx_2.png
<上一篇:根据玩家的角色名获取该玩家的GUID下一篇:修改玩家角色名>
Player_ChangeName
修改玩家角色名

更新时间：2022-09-29 00:00:00
此函数作用为修改玩家角色名，修改成功后重新登录游戏即可生效。

调用此接口时，会检查要修改的玩家名字与已存在的玩家（或者假人）名字是否重名。

语法
Luacopy 复制
lualib:Player_ChangeName(
    strPlayer,
    strNewName
)

参数
strPlayer

string

 
玩家角色的GUID

strNewName

string

 
玩家的新角色名

返回值
bool

 
true发出改名请求成功

false发出改名请求失败

note_icon 备注
返回true时只代表发出改名请求，不代表改名成功，要等待事件触发。

版本历史
v1.0

 
首次发布

 
v1.1

 
优化重名检查逻辑

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
Player_ChangeName.png
function WarnPrint(npc,player)
    lualib:AddTrigger("0", lua_trigger_player_change_name, "on_player_change_name") --添加一个触发器
    local name = lualib:Guid2Name(player) --获取玩家的名称
    lualib:Warn("玩家修改前的名字为："..name)
    if lualib:Player_ChangeName(player, "四十七号土匪的改名") then
        lualib:Warn("改名请求已经提交")
    else
        lualib:Warn("改名请求失败")
    end
end

function on_player_change_name(player, result, new_name)
    if result == 0 then
        lualib:Warn("改名成功")
    else
        lualib:Warn("失败，可能是重名或者名字包含屏蔽字")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Player_ChangeName_2.png

Player_ChangeName_4.png

Player_ChangeName_3.png


--若要修改的新角色名存在重名问题时，则会提示“角色名已存在”。

Player_ChangeName_6.png
<上一篇:修改玩家角色名（扩展）下一篇:以指定角色身份进行喊话>
Player_Chat
以指定角色身份进行喊话

更新时间：2022-09-16 00:00:00
此函数设置以指定角色身份进行喊话。

语法
Luacopy 复制
lualib:Player_Chat(
    player_guid,
    type,
    message
)
参数
player_guid

string

 
角色的GUID

角色可以为玩家、英雄或者假人

type

uint8

 
喊话类型

1当前

2队伍

3公会

4地图

5阵营

6小喇叭

note_icon 备注
英雄和假人目前仅支持在当前频道、地图频道和小喇叭频道发言。

message

string

 
喊话内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对英雄和假人的支持

示例代码
Luacopy 复制
lualib:Player_Chat(player, 2, "本人队伍喊话！")
lualib:Player_Chat(player, 3, "本人公会喊话！")
lualib:Player_Chat(player, 1, "本人当前喊话！")
lualib:Player_Chat(player, 4, "本人地图喊话！")
lualib:Player_Chat(player, 6, "本人小喇叭喊话！")

--此示例代码运行成功如下图所示。

Player_Chat.png
<上一篇:修改玩家角色名下一篇:删除玩家空邮件>
Player_DeleteEmptyMails
删除玩家空邮件

更新时间：2024-12-11 00:00:00
此函数作用是删除玩家空邮件。

语法
Luacopy 复制
lualib:Player_DeleteEmptyMails(
    player_guid,
    delete_unread
)
参数
player_guid

string

 
玩家的guid

delete_unread

bool

 
未读的空邮件是否也删除

true删除未读的空邮件

false不删除未读的空邮件

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    lualib:Player_DeleteEmptyMails(player,false)
end

-- 给玩家发送带有附件和空邮件，执行示例代码，看是否正常删除玩家邮件，参数未读是否生效。

Player_DeleteEmptyMails.png

--参数为false，执行示例代码，如下图所示已读的无附件邮件被删除，未读的无附件邮件没有删除。

Player_DeleteEmptyMails_2.png

--参数为true,执行示例代码，如下图所示已读和未读的无附件邮件都被删除，有附件邮件一直存在。

Player_DeleteEmptyMails_3.png
<上一篇:以指定角色身份进行喊话下一篇:取消玩家在某个频道的禁言>
Player_DisableForbidChannelTalk
取消玩家在某个频道的禁言

更新时间：2022-04-27 00:00:00
此函数取消玩家在某个频道的禁言。

语法
Luacopy 复制
lualib:Player_DisableForbidChannelTalk(
    player_guid,
    channel
)
参数
player_guid

string

 
玩家角色的GUID

channel

int

 
要取消禁言的频道

1当前频道

2队伍频道

3行会频道

4地图频道

5点对点频道

6私聊频道

7小喇叭频道

8联盟频道

9阵营频道

10MOBA房间频道

11MOBA阵营频道

12全服频道

255所有频道

caution_icon 注意
此参数只能设置上述数值，设置其他数值无效。

返回值
bool

 
true取消禁言成功

false取消禁言失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--取消玩家在所有频道的禁言。
local channel_type = {"当前频道", "组队频道", "行会频道", "地图频道", "点对点频道", "私聊频道", "小喇叭频道", "联盟频道", "阵营频道", "MOBA房间频道", "MOBA阵营频道", "全服频道", [255] = "所有频道"}
if lualib:Player_DisableForbidChannelTalk(player, 255) then
    lualib:Warn(channel_type[255].." 取消禁言...")
end

--此示例代码运行成功如下图所示，并且该玩家在所有频道均可发言。

Player_DisableForbidChannelTalk.png
<上一篇:删除玩家空邮件下一篇:取消玩家禁言类型>
Player_DisableForbidTalkType
取消玩家禁言类型

更新时间：2022-04-27 00:00:00
此函数取消玩家禁言类型。

语法
Luacopy 复制
lualib:Player_DisableForbidTalkType(
    strPlayer,
    dwType
)

参数
strPlayer

string

 
玩家角色的GUID

dwType

uint32

 
取消禁言类型

1文字禁言

2语音禁言

3文字和语音禁言

note_icon 备注
“取消文字禁言”和“取消语音禁言”只能取消对应的禁言类型，但“取消文字和语音禁言”可以取消任意一种禁言类型。

例如：玩家被设置为“文字禁言”，则可以通过“取消文字禁言”（或“取消文字和语音禁言”）来取消玩家的禁言类型。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否成功解除禁言以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前，玩家已经被设置为文字禁言10分钟。
function WarnPrint(npc,player)
    if lualib:Player_DisableForbidTalkType(player,1) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示（玩家被取消文字禁言），同时游戏日志中还会打印相关内容。

Player_DisableForbidTalk.png

Player_DisableForbidTalk_2.png
<上一篇:取消玩家在某个频道的禁言下一篇:取消玩家禁言>
Player_DisableForbidTalk
取消玩家禁言

更新时间：2022-04-27 00:00:00
此函数取消玩家禁言。

语法
Luacopy 复制
lualib:Player_DisableForbidTalk(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true返回成功

false返回失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否成功解除禁言以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前，玩家已经被设置为文字禁言10分钟。
function WarnPrint(npc,player)
    if lualib:Player_DisableForbidTalk(player) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示（玩家被取消文字禁言），同时游戏日志中还会打印相关内容。

Player_DisableForbidTalk.png

Player_DisableForbidTalk_2.png
<上一篇:取消玩家禁言类型下一篇:将目标玩家拉到自己面前>
Player_DragFromRole
将目标玩家拉到自己面前

更新时间：2022-04-27 00:00:00
此函数将目标玩家拉到自己面前。

语法
Luacopy 复制
lualib:Player_DragFromRole(
    strPlayer,
    strDestPlayerName
)

参数
strPlayer

string

 
玩家角色的GUID

strDestPlayerName

string

 
目标玩家的名字

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Player_DragFromRole(player, "四十八号土匪") then --将玩家“四十八号土匪”拉到面前
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Player_DragFromRole.gif

Player_DisableForbidTalk_2.png
<上一篇:取消玩家禁言下一篇:强制玩家丢弃物品（扩展）>
Player_DropItemEx
强制玩家丢弃物品（扩展）

更新时间：2022-04-27 00:00:00
此函数强制玩家丢弃指定物品，但只能丢弃玩家背包中的物品。

参考 DropItem

语法
Luacopy 复制
lualib:Player_DropItemEx(
    strPlayer,
    strItem
)

参数
strPlayer

string

 
玩家角色的GUID

strItem

string

 
物品的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local itemguid = lualib:Item_GetBySite(player, lua_site_bag_0) --获取背包中的第一个位置的物品的GUID

    if lualib:Player_DropItemEx(player, itemguid) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end	
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

--背包中的第一个位置的物品（即改名卡）被强制丢弃。

Player_DropItemEx.gif

Player_DisableForbidTalk_2.png
<上一篇:将目标玩家拉到自己面前下一篇:让玩家回城>
Player_GoHome
让玩家回城

更新时间：2022-04-27 00:00:00
此函数让玩家回城，返回复活地图。

caution_icon警告
该接口是异步的，接口返回时玩家还没有切换地图。

语法
Luacopy 复制
lualib:Player_GoHome(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    if lualib:Player_GoHome(player) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功如下图所示。

Player_GoHome.gif

Player_DisableForbidTalk_2.png
<上一篇:强制玩家丢弃物品（扩展）下一篇:让玩家行会里所有人执行一段脚本>
Player_GuildRunScript
让玩家行会里所有人执行一段脚本

更新时间：2022-04-27 00:00:00
此函数让玩家行会里所有人执行一段脚本。

语法
Luacopy 复制
lualib:Player_GuildRunScript(
    strPlayer,
    strCallBack,
    strParam
)

参数
strPlayer

string

 
玩家角色的GUID

strCallBack

string

 
执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：玩家角色的GUID

strParam(string)：自定义参数

strParam

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功只代表接口执行成功，具体脚本是否执行成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local name = lualib:Name(player) --获取玩家的名字
    if lualib:Player_GuildRunScript(player, "Setup", ""..name)  then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")	
    end
end

function Setup(player,playername)
    lualib:SysWarnMsg(player, "行会里执行操作的人是："..playername)   
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容（行会中的每个成员都会收到如下的提示信息）。

Player_GuildRunScript.png

Player_DisableForbidTalk_2.png
<上一篇:让玩家回城下一篇:判断玩家攻击模式是否被锁定>
Player_IsAttackModeLock
判断玩家攻击模式是否被锁定

更新时间：2022-04-27 00:00:00
此函数判断指定玩家攻击模式是否被锁定。

note_icon 备注
当玩家攻击模式被锁定时，不可切换攻击模式。

Player_SetAttackModeLock.png
语法
Luacopy 复制
lualib:Player_IsAttackModeLock(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
bool

 
true玩家攻击模式被锁定

false玩家攻击模式未被锁定

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提为玩家的攻击模式处于被锁定的状态。
function WarnPrint(npc,player)
    if lualib:Player_IsAttackModeLock(player) then
        lualib:Warn("玩家攻击模式锁定")
    else
        lualib:Warn("玩家攻击模式未锁定")
    end
end

--此示例代码运行成功如下图所示。

Player_IsAttackModeLock.png
<上一篇:让玩家行会里所有人执行一段脚本下一篇:判断玩家是否可使用物理攻击>
Player_IsCanAttack
判断玩家是否可使用物理攻击

更新时间：2022-04-27 00:00:00
此函数判断指定玩家是否可使用物理攻击。

语法
Luacopy 复制
lualib:Player_IsCanAttack(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家可以使用物理攻击

false指定玩家不可使用物理攻击

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendWarnMsg(player, "是否可使用物理攻击："..tostring(lualib:Player_IsCanAttack(player)))

--此示例代码运行成功如下图所示。

Player_IsCanAttack.png
<上一篇:判断玩家攻击模式是否被锁定下一篇:判断玩家是否可以移动>
Player_IsCanMove
判断玩家是否可以移动

更新时间：2022-04-27 00:00:00
此函数判断指定玩家是否可以移动。

语法
Luacopy 复制
lualib:Player_IsCanMove(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_IsCanMove(player) then
    lualib:SysMsg_SendWarnMsg(player, "玩家可移动")
else
    lualib:SysMsg_SendWarnMsg(player, "玩家不可移动")
end

--此示例代码运行成功如下图所示。

Player_IsCanMove.png
<上一篇:判断玩家是否可使用物理攻击下一篇:判断玩家是否能与NPC交互>
Player_IsCanNpcTalk
判断玩家是否能与NPC交互

更新时间：2022-04-27 00:00:00
此函数判断玩家是否能与NPC交互。

caution_icon 注意
此接口代码逻辑为空，功能尚未实现，请不要调用。

语法
Luacopy 复制
lualib:Player_IsCanNpcTalk(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:判断玩家是否可以移动下一篇:判断玩家是否能说话>
Player_IsCanTalk
判断玩家是否能说话

更新时间：2022-04-27 00:00:00
此函数判断玩家是否能说话。

caution_icon 注意
此接口代码逻辑为空，功能尚未实现，请不要调用。

语法
Luacopy 复制
lualib:Player_IsCanTalk(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:判断玩家是否能与NPC交互下一篇:判断玩家是否可以转向>
Player_IsCanTurn
判断玩家是否可以转向

更新时间：2022-04-27 00:00:00
此函数判断指定玩家是否可以转向。

语法
Luacopy 复制
lualib:Player_IsCanTurn(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家可以转向

false指定玩家不可转向

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_IsCanTurn(player) then
        lualib:SysMsg_SendWarnMsg(player, "玩家可以转向")
    else
        lualib:SysMsg_SendWarnMsg(player, "玩家不可转向")
    end
end

--此示例代码运行成功如下图所示。

Player_IsCanTurn.png
<上一篇:判断玩家是否能说话下一篇:判断玩家是否可使用物品>
Player_IsCanUseItem
判断玩家是否可使用物品

更新时间：2022-04-27 00:00:00
此函数判断指定玩家是否可以使用物品。

语法
Luacopy 复制
lualib:Player_IsCanUseItem(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家可以使用物品

false指定玩家不可使用物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_IsCanUseItem(player) then
        lualib:SysMsg_SendWarnMsg(player, "玩家可以使用物品")
    else
        lualib:SysMsg_SendWarnMsg(player, "玩家不可使用物品")
    end
end

--此示例代码运行成功如下图所示。

Player_IsCanUseItem.png
<上一篇:判断玩家是否可以转向下一篇:玩家是否完成指定任务>
Player_IsCompleteQuest
玩家是否完成指定任务

更新时间：2024-04-03 00:00:00
此函数玩家是否完成指定任务。

语法
Luacopy 复制
lualib:Player_IsCompleteQuest(
    player_guid,
    quest_id
)
参数
player_guid

string

 
玩家的GUID

quest_id

UINT16

 
指定任务ID

返回值
bool

 
true完成指定任务

false未完成指定任务

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    -- 获取任务状态
    local mapGuid = lualib:Map_GetMapGuid("手游新手村")
    local npcGuid = lualib:Map_GetMapNpc(mapGuid,"通用测试NPC")
    local questStatus = lualib:Player_GetQuestStatusByNpc(player,npcGuid)
    lualib:Warn("questStatus："..serialize(questStatus))
    -- 判断玩家是否完成指定任务
    local result = lualib:Player_IsCompleteQuest(player,1)
    lualib:Warn("result："..serialize(result))
end
--接受任务前：

Player_IsCompleteQuest.png

Player_IsCompleteQuest_2.png
--接受任务但未完成时：

Player_IsCompleteQuest_3.png

Player_IsCompleteQuest_4.png
--未提交任务时：

Player_IsCompleteQuest_5.png

Player_IsCompleteQuest_6.png
--提交任务后：

Player_IsCompleteQuest_7.png

Player_IsCompleteQuest_8.png
<上一篇:判断玩家是否可使用物品下一篇:判断玩家是否死亡>
Player_IsDie
判断玩家是否死亡

更新时间：2022-04-27 00:00:00
此函数判断指定玩家是否死亡。

语法
Luacopy 复制
lualib:Player_IsDie(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家处于死亡状态

false指定玩家处于存活状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_IsDie(player) then
        lualib:SysMsg_SendWarnMsg(player, "玩家死亡")
    else
        lualib:SysMsg_SendWarnMsg(player, "玩家存活")
    end
end

--此示例代码运行成功如下图所示。

Player_IsDie.png
<上一篇:玩家是否完成指定任务下一篇:判断玩家是否在读条中>
Player_IsDoingProgressBar
判断玩家是否在读条中

更新时间：2022-04-27 00:00:00
此函数判断玩家是否在读条中。

语法
Luacopy 复制
lualib:Player_IsDoingProgressBar(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
bool

 
true在读条中

false不在读条中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_IsDoingProgressBar(player) then
    lualib:SysMsg_SendWarnMsg(player, "进度条读条中...")
else
    lualib:SysMsg_SendWarnMsg(player, "进度条未读条")
end

--玩家在读取进度条时的运行效果如下图所示。

Player_IsDoingProgressBar.png

--玩家不在读取进度条时的运行效果如下图所示。

Player_IsDoingProgressBar_2.png
<上一篇:判断玩家是否死亡下一篇:根据玩家名字判断玩家是否被禁言>
Player_IsForbiddenChat
根据玩家名字判断玩家是否被禁言

更新时间：2024-06-18 00:00:00
此函数根据玩家名字判断玩家是否被禁言，并在回调函数中获取玩家的禁言状态。

caution_icon注意
本函数为异步函数，具体结果在回调函数中获取。

语法
Luacopy 复制
lualib:Player_IsForbiddenChat(
    player_name,
    func,
    params
)
参数
player_name

string

 
玩家的名字

func

string

 
回调函数名

回调函数格式：func(status, end_time, params)

status(int)：是否被禁言（1代表被禁言，0代表未被禁言）

end_time(uint32)：禁言结束时间

params(string)：预设的回调函数参数

reason(string)：禁言原因

note_icon 备注
回调函数中的参数end_time的格式为UTC时间戳，可以使用接口lualib:Time2Str将获取的时间戳转换为字符串格式。

若玩家未被禁言，则禁言结束时间（即回调函数中的参数end_time）为0。

params

string

 
预设的回调函数参数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增回调函数参数reason

示例代码
Luacopy 复制
--根据玩家名字判断玩家是否被禁言，并在回调函数中获取玩家的禁言状态。
function main(npc,player)
  if lualib:Player_SetForbidTalk(player, "辱骂GM, 禁言", 1000) then
      lualib:SysPromptMsg(player, "禁言成功")
  else
      lualib:SysPromptMsg(player, "禁言失败")
  end
  lualib:Player_IsForbiddenChat(lualib:Name(player),"TestForbidden",lualib:Name(player))
end    
function TestForbidden(status,end_time,params,reason)
    lualib:Warn("是否被禁言: "..status)
    lualib:Warn("禁言结束时间数值: "..end_time)
    lualib:Warn("禁言的原因: "..reason)
    timeStr = lualib:Time2Str("%Y-%m-%d %H:%M", end_time) --将禁言结束时间从数值类型转化为字符串类型
    lualib:Warn("禁言结束时间字符串: "..timeStr)
    lualib:Warn("传过来的参数: "..params)
end

--玩家被禁言时，示例代码运行成功如下图所示。

Player_IsForbiddenChat.png
<上一篇:判断玩家是否在读条中下一篇:判断玩家是否在本GS上>
Player_IsInGS
判断玩家是否在本GS上

更新时间：2022-04-27 00:00:00
此函数判断指定玩家是否在本GS上。

语法
Luacopy 复制
lualib:Player_IsInGS(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家在本GS上

false指定玩家不在本GS上

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_IsInGS(player) then
        lualib:SysMsg_SendWarnMsg(player, "玩家在本GS上")
    else
        lualib:SysMsg_SendWarnMsg(player, "玩家不在本GS上")
    end
end

--此示例代码运行成功如下图所示。

Player_IsInGS.png
<上一篇:根据玩家名字判断玩家是否被禁言下一篇:判断玩家是否在线>
Player_IsOnline
判断玩家是否在线

更新时间：2022-04-27 00:00:00
此函数判断指定玩家是否在线。

语法
Luacopy 复制
lualib:Player_IsOnline(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家在线

false指定玩家不在线

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_IsOnline(player) then
        lualib:SysMsg_SendWarnMsg(player, "玩家在线")
    else
        lualib:SysMsg_SendWarnMsg(player, "玩家不在线")
    end
end

--此示例代码运行成功如下图所示。

Player_IsOnline.png
<上一篇:判断玩家是否在本GS上下一篇:根据GUID判断指定角色是否为玩家>
Player_IsPlayer
根据GUID判断指定角色是否为玩家

更新时间：2023-04-13 00:00:00
此函数根据GUID判断指定角色是否为玩家。

语法
Luacopy 复制
lualib:Player_IsPlayer(
    strObject
)

参数
strObject

string

 
对象的GUID

返回值
bool

 
true指定角色是玩家

false指定角色不是玩家

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player)
local x = lualib:X(player) --获取角色当前位置的横坐标
local y = lualib:Y(player) --获取角色当前位置的纵坐标
local guid = lualib:Map_GenSingleCampMonster(map, x, y, 5, 1, "魔王降临100级", false, 1) --在指定地图的指定范围内刷一只怪
lualib:SysMsg_SendWarnMsg(player, "是否为玩家："..tostring(lualib:Player_IsPlayer(guid))) --根据获取的GUID判断该角色是否为玩家
local guid = "ar8m1g2njc02" --此GUID为玩家
lualib:SysMsg_SendWarnMsg(player, "是否为玩家："..tostring(lualib:Player_IsPlayer(guid))) --根据此GUID判断该角色是否为玩家

--此示例代码运行成功如下图所示（判断结果：第一个角色不是玩家，第二个角色为玩家）。

Player_IsPlayer.png
<上一篇:判断玩家是否在线下一篇:批量添加/删除玩家物品>
Player_ItemRequest
批量添加/删除玩家物品

更新时间：2022-04-29 00:00:00
此函数批量添加/删除玩家物品。

该接口支持事务处理，可保证添加/删除动作的完整性。

语法
Luacopy 复制
lualib:Player_ItemRequest(
    strPlayer,
    tName,
    tCount,
    tBind,
    tOpr,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

tName

table

 
物品的索引名（KeyName）表

例如：{"金砖小" , "羽毛"}

tCount

table

 
与索引名（KeyName）对应的数量表

例如：{1, 1}

tBind

table

 
与索引名（KeyName）对应的绑定类型表

绑定类型：0非绑定，1绑定，2绑定或者非绑定。

例如：{2, 1}

tOpr

table

 
与索引名（KeyName）对应的操作表

操作类型：0添加，1删除。

例如：{1, 0}

strDesc

string

 
动作的原因

strTarget

string

 
动作的发起者

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_ItemRequest(player, {"金砖小" , "羽毛"}, {1, 1}, {2, 2}, {1, 1}, "操作测试", "") then
        lualib:SysMsg_SendWarnMsg(player, "操作成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "操作失败")
    end
end

--此示例代码运行前效果如下图所示。

Player_ItemRequest.png

--此示例代码运行后效果如下图所示，同时游戏对话框中还会输出相关内容。

Player_ItemRequest_2.png

Player_ItemRequest_3.png
<上一篇:根据GUID判断指定角色是否为玩家下一篇:跳转到目标玩家面前>
Player_JumpToRole
跳转到目标玩家面前

更新时间：2022-04-27 00:00:00
此函数让指定玩家跳转到目标玩家面前。

语法
Luacopy 复制
lualib:Player_JumpToRole(
    strPlayer,
    strDestPlayerName
)

参数
strPlayer

string

 
玩家角色的GUID

strDestPlayerName

string

 
目标玩家的名字

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_JumpToRole(player, "就是玩儿1") then
        lualib:SysMsg_SendWarnMsg(player,"跳转成功")
    else
        lualib:SysMsg_SendWarnMsg(player,"跳转失败")
    end
end

--此示例代码运行成功如下图所示。

Player_MapMoveXYEx.png
<上一篇:批量添加/删除玩家物品下一篇:让玩家跳转到指定地图指定坐标范围内的随机点>
Player_MapMoveXYEx
让玩家跳转到指定地图指定坐标范围内的随机点

更新时间：2022-08-19 00:00:00
此函数让玩家跳转到指定地图指定坐标周围的指定范围内的随机点。

caution_icon注意
该接口是异步的，返回时玩家还未切换地图。

语法
Luacopy 复制
lualib:Player_MapMoveXYEx(
    strPlayer,
    strMapKey,
    wX,
    wY,
    range
)
参数
strPlayer

string

 
玩家角色的GUID

strMapKey

string

 
地图的索引名（KeyName）

note_icon 备注
如果地图的索引名为空字符串（""），则在玩家当前地图进行随机跳转。

wX

uint16

 
跳转点在地图上的X坐标

wY

uint16

 
跳转点在地图上的Y坐标

range

uint16

 
坐标范围

例如：指定的跳转点坐标为(0,0)，坐标范围为5，则实际可跳转的点的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，会定点跳转。

若此参数设置的跳转范围内没有可移动点，则会在跳转点坐标附近螺旋遍历坐标点直到找到可移动点。若未找到可移动点，则会返回跳转失败。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_MapMoveXYEx(player, "手游新手村", 32, 70, 2) then
    lualib:SysMsg_SendWarnMsg(player, "跳转成功")
end

--此示例代码运行成功如下图所示（地图“杏花谷”的关键字索引为“手游新手村”）。

Player_MapMoveXYEx.png

--玩家跳转的坐标点。

Player_MapMoveXYEx_2.png
<上一篇:跳转到目标玩家面前下一篇:让玩家跳转到指定地图指定坐标>
Player_MapMoveXY
让玩家跳转到指定地图指定坐标

更新时间：2022-05-05 00:00:00
此函数让玩家跳转到指定地图指定坐标。

caution_icon警告
该接口是异步的，接口返回时玩家还未切换地图。

语法
Luacopy 复制
lualib:Player_MapMoveXY(
    strPlayer,
    strMapKey,
    wX,
    wY,
    wRange
)

参数
strPlayer

string

 
玩家角色的GUID

strMapKey

string

 
地图的索引名（KeyName）

note_icon 备注
如果地图的索引名为空字符串（""）,则在玩家当前地图进行随机跳转。

wX

uint16

 
跳转点在地图上的X坐标

wY

uint16

 
跳转点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定的跳转点坐标为(0,0)，坐标范围为5，则实际可跳转的点的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当指定坐标无法跳转到时，会在指定坐标周围的一定范围（此范围由参数wRange指定）内按照从内到外的顺序寻找可跳转点。

当坐标范围（即参数wRange）设置为0且该坐标点无法到达时，则会跳转失败并且会在当前地图进行随机跳转。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_MapMoveXY(player, "手游新手村", 32, 70, 2) then
    lualib:SysMsg_SendWarnMsg(player, "跳转成功")
end

--此示例代码运行成功如下图所示（地图“杏花谷”的关键字索引为“手游新手村”）。

Player_MapMoveXYEx.png
<上一篇:让玩家跳转到指定地图指定坐标范围内的随机点下一篇:让玩家跳转到指定地图随机坐标>
Player_MapMove
让玩家跳转到指定地图随机坐标

更新时间：2022-05-05 00:00:00
此函数让玩家跳转到指定地图随机坐标。

caution_icon警告
该接口是异步的，接口返回时玩家还未切换地图。

语法
Luacopy 复制
lualib:Player_MapMove(
    strPlayer,
    strMapKey
)

参数
strPlayer

string

 
玩家角色的GUID

strMapKey

string

 
地图的索引名（KeyName）

note_icon 备注
如果地图的索引名为空字符串（""）,则在玩家当前地图进行随机跳转。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_MapMove(player, "手游新手村") then
    lualib:SysMsg_SendWarnMsg(player, "跳转成功")
end

--此示例代码运行成功如下图所示（地图“杏花谷”的关键字索引为“手游新手村”）。

Player_MapMoveXYEx.png
<上一篇:让玩家跳转到指定地图指定坐标下一篇:跳转到指定NPC附近>
Player_NpcMove
跳转到指定NPC附近

更新时间：2022-04-27 00:00:00
此函数让玩家跳转到指定NPC附近。

caution_icon警告
该接口是异步的，接口返回时玩家还没有切换地图。

语法
Luacopy 复制
lualib:Player_NpcMove(
    strPlayer,
    strNpcKey,
    wRange
)

参数
strPlayer

string

 
玩家角色的GUID

strNpcKey

string

 
NPC的索引名（KeyName）

wRange

uint16

 
坐标范围

例如：指定的跳转点坐标为(0,0)，坐标范围为5，则实际可跳转的点的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，会定点跳转。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_NpcMove(player,"南门守卫2", 5) then
        lualib:SysMsg_SendWarnMsg(player,"跳转成功")
    else
        lualib:SysMsg_SendWarnMsg(player,"跳转失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏对话框中还会打印相关内容。

Player_NpcMove.png

Player_MapMoveXYEx.png
<上一篇:让玩家跳转到指定地图随机坐标下一篇:玩家根据回调函数拾取指定的可捡物品>
Player_PickupAllByRadiusWithCallback
玩家根据回调函数拾取指定的可捡物品

更新时间：2022-04-27 00:00:00
此函数设置玩家可拾取地图上一定半径范围内的可捡物品，通过回调函数来设置指定的可捡物品是否需要被拾取。

语法
Luacopy 复制
lualib:Player_PickupAllByRadiusWithCallback(
    player_guid,
    radius_x,
    radius_y,
    callback,
    string,
    bool
)
参数
player_guid

string

 
玩家角色的GUID

radius_x

uint16

 
X方向半径

radius_y

uint16

 
Y方向半径

callback

string

 
回调函数名

回调函数格式：Callback(player_guid, item_guid, item_templateid, item_keyname, params)

player_guid(string)：玩家角色的GUID

item_guid(string)：要拾取物品的GUID

item_templateid(int)：要拾取物品的模板ID

item_keyname(string)：要拾取物品的索引名（KeyName）

params(string)：预设的回调函数参数

返回值为bool类型：true代表需要拾取，false代表不需要拾取。

params

string

 
预设的回调函数参数

bool

params

 
捡物失败时是否需要通知

true需要通知

false不需要通知

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_PickupAllByRadiusWithCallback(player, 2, 2, "test_callback", "test_param", true)

function test_callback(player, item, item_id, item_key, param)
    lualib:Warn("player = "..lualib:Name(player))
    lualib:Warn("item = "..lualib:Name(item))
    lualib:Warn("item_id = "..item_id)
    lualib:Warn("item_key = "..item_key)
    lualib:Warn("param = "..param)

    return true
end

--此示例代码运行前效果如下图所示。

Player_PickupAllByRadiusWithCallback.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_PickupAllByRadiusWithCallback_2.png

Player_PickupAllByRadiusWithCallback_3.png
<上一篇:跳转到指定NPC附近下一篇:玩家拾取指定的可捡物品（扩展）>
Player_PickupAllByRadiusWithKeyNameEx
玩家拾取指定的可捡物品（扩展）

更新时间：2022-04-29 00:00:00
此函数设置玩家可拾取地图上一定半径范围内的可捡物品，通过传入一个表来过滤需要捡起的物品。

在设置的拾取范围内的物品均为可捡物品。

note_icon 备注
与接口Player_PickupAllByRadiusWithKeyName相比，此接口在拾取物品时，不再提示捡物失败。

语法
Luacopy 复制
lualib:Player_PickupAllByRadiusWithKeyNameEx(
    player_guid,
    radius_x,
    radius_y,
    items
)
参数
player_guid

string

 
玩家角色的GUID

radius_x

uint16

 
X方向半径

radius_y

uint16

 
Y方向半径

items

table

 
物品过滤表（表中指定的物品为可拾取的物品）

table格式：{"物品1索引名","物品2索引名"}

若表格为空，则一定范围内所有可捡物品全部可以被拾取。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：深渊凭证为他人打怪掉落物品。
local items = {"高级灵元精粹", "高级转神石", "深渊凭证"}
lualib:Player_PickupAllByRadiusWithKeyNameEx(player, 5, 5, items)

--此示例代码运行前效果如下图所示。

Player_PickupAllByRadiusWithKeyNameEx.png

--此示例代码运行后如效果下图所示（设置范围内的高级灵元精粹和高级转神石被拾取，深渊凭证没有被拾取）。

Player_PickupAllByRadiusWithKeyNameEx_2.png
<上一篇:玩家根据回调函数拾取指定的可捡物品下一篇:玩家拾取指定的可捡物品>
Player_PickupAllByRadiusWithKeyName
玩家拾取指定的可捡物品

更新时间：2022-04-29 00:00:00
此函数设置玩家可拾取地图上一定半径范围内的可捡物品，通过传入一个表来过滤需要捡起的物品。

在设置的拾取范围内的物品均为可捡物品。

若在可捡物品中存在他人归属的物品，就会有捡物失败的通知。

Player_PickupAllByRadiusWithKeyName_3.png
语法
Luacopy 复制
lualib:Player_PickupAllByRadiusWithKeyName(
    player_guid,
    radius_x,
    radius_y,
    items
)
参数
player_guid

string

 
玩家角色的GUID

radius_x

uint16

 
X方向半径

radius_y

uint16

 
Y方向半径

items

table

 
物品过滤表（表中指定的物品为可拾取的物品）

table格式：{"物品1索引名","物品2索引名"}

若表格为空，则一定范围内所有可捡物品全部可以被拾取。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local items = {"测试毒药", "天元无为剑"}
lualib:Player_PickupAllByRadiusWithKeyName(player, 5, 5, items)

--此示例代码运行前效果如下图所示。

Player_PickupAllByRadiusWithKeyName.png

--此示例代码运行后效果如下图所示（设置范围内的测试毒药和天元无为剑被拾取）。

Player_PickupAllByRadiusWithKeyName_2.png
<上一篇:玩家拾取指定的可捡物品（扩展）下一篇:玩家拾取可捡物品>
Player_PickupAllByRadius
玩家拾取可捡物品

更新时间：2022-04-27 00:00:00
此函数设置玩家可拾取地图上一定半径范围内的可捡物品。

在设置的拾取范围内的物品均为可捡物品。

语法
Luacopy 复制
lualib:Player_PickupAllByRadius(
    player_guid,
    radius_x,
    radius_y
)

参数
player_guid

string

 
玩家角色的GUID

radius_x

uint16

 
X方向半径

radius_y

uint16

 
Y方向半径

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_PickupAllByRadius(player,10,10)

--此示例代码运行前效果如下图所示。

Player_PickupAllByRadius.png

--此示例代码运行后效果如下图所示。

Player_PickupAllByRadius_2.png
<上一篇:玩家拾取指定的可捡物品下一篇:让玩家或者假人复活>
Player_Relive
让玩家或者假人复活

更新时间：2022-08-05 00:00:00
此函数作用为让玩家或者假人复活。

语法
Luacopy 复制
lualib:Player_Relive(
    strPlayer,
    strMap,
    wX,
    wY,
    wRange,
    wHPPCT
)

参数
strPlayer

string

 
角色的GUID

角色可以为玩家或者假人

note_icon 备注
若此参数为假人的GUID，则需要在接口lualib:SetDummyAIOption的参数AI_table中，设置了假人死亡后尸体躺在地上的时间后此接口才可生效。

strMap

string

 
复活地图的GUID

wX

uint16

 
复活点在地图上的X坐标

wY

uint16

 
复活点在地图上的Y坐标

wRange

uint16

 
复活范围

例如：指定的复活点坐标为(0,0)，复活范围为5，则实际可复活的点的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

wHPPCT

uint16

 
复活时的血量百分比

note_icon 备注
当复活地图不存在时，角色会在当前地图的指定位置复活。

当复活点无法到达时，角色会在离复活点最近的空闲坐标点位置复活。

返回值
bool

 
true复活成功

false复活失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strPlayer对假人的支持

示例代码
Luacopy 复制
local GUID="ar8m1g2njc02"
lualib:Kill(GUID) --杀死指定玩家
local Map_KeyName="手游巫山城"
local Map_GUID=lualib:Map_GetMapGuid(Map_KeyName,5)
local Relive_x=50
local Relive_y=50
local Relive_range=20
local Relive_HP=60
--复活指定玩家
if lualib:Player_Relive(GUID,Map_Guid,Relive_x,Relive_y,Relive_range,Relive_HP) then
    lualib:SysMsg_SendWarnMsg(player,"玩家"..lualib:Guid2Name(GUID).."成功在"..Map_KeyName.."上坐标为：（"..Relive_x..","..Relive_y..")附近"..Relive_range.."距离内"..",复活血量为原来的"..Relive_HP.."%")
else
    lualib:SysMsg_SendWarnMsg(player,"玩家"..lualib:Guid2Name(GUID).."复活失败")
end

--此示例代码运行成功如下图所示。

Player_Relive.png
<上一篇:玩家拾取可捡物品下一篇:让玩家执行一段脚本>
Player_RunScript
让玩家执行一段脚本

更新时间：2022-04-27 00:00:00
此函数让玩家执行一段脚本。

语法
Luacopy 复制
lualib:Player_RunScript(
    strPlayer,
    strCallBack,
    strParam
)

参数
strPlayer

string

 
玩家的GUID

strCallBack

string

 
执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：玩家角色的GUID

strParam(string)：自定义参数

strParam

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数是异步函数，返回成功并不代表脚本执行成功。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_RunScript(player, "TestCallback", param) then
        lualib:SysMsg_SendWarnMsg(player, "脚本执行成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "脚本执行失败")
    end
end

function TestCallback(player,param)
    lualib:SysMsg_SendWarnMsg(player, "输出GUID:"..player)
end

--此示例代码运行成功如下图所示。

Player_RunScript.png
<上一篇:让玩家或者假人复活下一篇:玩家间交换包裹中的物品>
Player_SwapBagItems
玩家间交换包裹中的物品

更新时间：2022-04-27 00:00:00
此函数玩家间交换包裹中的物品。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

caution_icon警告
执行期间可能会有脚本触发，触发里不要进行包裹里的操作。

语法
Luacopy 复制
lualib:Player_SwapBagItems(
    srcPlayer,
    srcItems,
    dstPlayer,
    dstItems
)

参数
srcPlayer

string

 
源玩家角色的GUID

srcItems

table

 
源玩家角色物品GUID集合

dstPlayer

string

 
目标玩家角色的GUID

dstItems

table

 
目标玩家角色物品GUID集合

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:Player_SwapBagItems("ar8m1ivupc00", player, {lualib:Player_GetItemGuid(Player1_GUID, lua_site_bag_0)}, {lualib:Player_GetItemGuid(Player2_GUID, lua_site_bag_0)}) then
        lualib:SysMsg_SendWarnMsg(player, "交换成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "交换失败")
    end
end

--此示例代码运行前效果如下图所示（从上往下依次为玩家1的背包、玩家2的背包）。

Player_SwapBagItems.png

Player_SwapBagItems_3.png

--此示例代码运行后效果如下图所示（从上往下依次为玩家1的背包、玩家2的背包），同时玩家2游戏内的对话框中还会打印相关内容。

Player_SwapBagItems_2.png

Player_SwapBagItems_4.png

Player_SwapBagItems_5.png
<上一篇:让玩家执行一段脚本下一篇:让玩家队伍里所有人执行一段脚本>
Player_TeamRunScript
让玩家队伍里所有人执行一段脚本

更新时间：2022-04-27 00:00:00
此函数让玩家队伍里所有人执行一段脚本。

语法
Luacopy 复制
lualib:Player_TeamRunScript(
    strPlayer,
    strCallBack,
    strParam
)

参数
strPlayer

string

 
玩家的GUID

strCallBack

string

 
执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：玩家的GUID

strParam(string)：自定义参数

strParam

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true返回成功

false返回失败

note_icon 备注
该接口是异步的，接口返回成功并不代表脚本执行成功。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local param = "测试"
    if lualib:Player_TeamRunScript(player, "TestCallback", param) then
        lualib:SysMsg_SendWarnMsg(player, "执行成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "执行失败")
    end
end

function TestCallback(player, param)
    lualib:SysMsg_SendWarnMsg(player, param.."我的GUID为:"..player)
end

--此示例代码运行成功如下图所示。

Player_TeamRunScript.png
<上一篇:玩家间交换包裹中的物品下一篇:批量操作(添加/删除)玩家的物品、金币和元宝>
Player_TransactionRequest
批量操作(添加/删除)玩家的物品、金币和元宝

更新时间：2025-05-06 00:00:00
此函数作用是批量操作(添加/删除)玩家的物品、金币和元宝。

该接口支持事务处理，保证添加/删除动作的完整性。

语法
Luacopy 复制
lualib:Player_TransactionRequest(
    strPlayer,
    tRequest,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家的GUID

tRequest

table

 
请求的操作

JSON格式如下：

JSONcopy 复制
{
    items = {
        {name = "魔法力药水", count = 2, bind = 2, opr = 1},
        {name = "攻击力药水", count = 1, bind = 2, opr = 0},
        {name = "咒术力药水", count = 3, bind = 1, opr = 0}
    },

    gold = -1000,
    bind_gold = 1000,
    yuanbao = 50,
    bind_yuanbao = -50
}
--其中items为物品操作，类型为table
--其中每一项为一个物品操作，类型也是table
--每一个物品操作中有name, count, bind, opr四项
--分别为物品KeyName, 数量, 绑定类型(0 = 非绑定 1 = 绑定 2 = 绑定/非绑定), 操作类型(0 = 添加 1 =删除)
--gold为金币操作, 负值表示扣除, 正值表示增加
--bind_gold为绑定金币操作，负值表示扣除，正值表示增加
--yuanbao为元宝操作， 负值表示扣除，正值表示增加
--bind_yuanbao为绑定元宝操作，负值表示扣除，正值表示增加

strDesc

string

 
动作的原因

strTarget

string

 
动作的发起者

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local table = 
{
    items = {
        {name = "魔法力药水", count = 2, bind = 2, opr = 1},
        {name = "攻击力药水", count = 1, bind = 2, opr = 0},
        {name = "咒术力药水", count = 3, bind = 1, opr = 0}
    },
    gold = -1000,
    bind_gold = 1000,
    yuanbao = 50,
    bind_yuanbao = -50
}

function main(npc,player)
    lualib:Player_TransactionRequest(player,table,"测试",player)
end

--执行示例代码前玩家的物品、金币和元宝数如图所示。
Player_TransactionRequest.png

--执行示例代码后玩家的物品、金币和元宝数如图所示。
Player_TransactionRequest_2.png
<上一篇:让玩家队伍里所有人执行一段脚本下一篇:让玩家开启进度条>
ProgressBarStart
让玩家开启进度条

更新时间：2025-12-18 17:21:00
此函数让玩家开启进度条。

语法
Luacopy 复制
lualib:ProgressBarStart(
    strPlayer,
    dwDuration,
    strDesc,
    strCompleteCallBack,
    strAbortCallBack,
    strParam
)

参数
strPlayer

string

 
玩家角色的GUID

dwDuration

uint32

 
进度条的持续时间

strDesc

string

 
进度条的描述文字

strCompleteCallBack

string

 
成功开启进度条时执行的回调函数

此参数的填写格式：

函数名，代表运行当前文件中的指定函数。

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：玩家的GUID

strParam(string)：自定义参数

strAbortCallBack

string

 
开启进度条被打断时执行的回调函数

此参数的填写格式：

函数名，代表运行当前文件中的指定函数。

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：玩家的GUID

strParam(string)：自定义参数

strParam

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:ProgressBarStart(player, 5000, "测试", "Progress_Success", "Progress_False",text) then
        lualib:SysMsg_SendWarnMsg(player, "进度条打开成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "进度条打开失败")
    end
end

--成功开启进度条
function Progress_Success(player, text)
    lualib:SysMsg_SendWarnMsg(player, "输1出:"..param)
end

--开启进度条被打断
function Progress_False(player, text)
    lualib:SysMsg_SendWarnMsg(player, "输2出:"..param)
end

--此示例代码在成功开启进度条时的运行效果如下图所示。

ProgressBarStart_2.png

--此示例代码在开启进度条被打断时的运行效果如下图所示。

ProgressBarStart.png
<上一篇:批量操作(添加/删除)玩家的物品、金币和元宝下一篇:让玩家取消读取进度条>
ProgressBarStop
让玩家取消读取进度条

更新时间：2022-04-27 00:00:00
此函数让玩家取消读取进度条。

语法
Luacopy 复制
lualib:ProgressBarStop(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:ProgressBarStop(player) then
    lualib:SysMsg_SendWarnMsg(player, "成功取消进度条")
else
    lualib:SysMsg_SendWarnMsg(player, "进度条未读条")
end

--此示例代码在进度条被读取时的运行效果如下图所示。

ProgressBarStop.png

--此示例代码在进度条未被读取时的运行效果如下图所示。

ProgressBarStop_2.png
<上一篇:让玩家开启进度条下一篇:移除通知到客户端的玩家属性>
RemoveSelfNotifyAttrs
移除通知到客户端的玩家属性

更新时间：2022-07-18 00:00:00
此函数移除通知到客户端的玩家属性。

caution_icon注意
玩家不存在的属性或者引擎已经配置过的属性无法移除。

语法
Luacopy 复制
lualib:RemoveSelfNotifyAttrs(
    attrs
)
参数
attrs

table

 
属性表（表中指定的属性将不被通知到客户端）

table格式：{玩家属性1的类型值，玩家属性2的类型值}

相关信息请参见：角色属性类型定义

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码执行前提
--玩家成功购买VIP后会获得“角色vip购买时间”的属性，其属性值为购买VIP的时间戳。

SetSelfNotifyAttrs_2.png

SetSelfNotifyAttrs_4.png
--在游戏工具平台→游戏配置→技能→BUFF模板表中为索引名为“BUFF测试”的BUFF配置一条“忽略暴击率”的属性，其属性值为25。

SetSelfNotifyAttrs_3.png
--服务端
lualib:RemoveSelfNotifyAttrs({168, 202})
lualib:AddBuff(player, "BUFF测试", 0)

--客户端
if CL:GetPlayerProperty32(PlayerGUID, 168) then
    dbg("玩家的168号属性:"..LuaRet)
end
if CL:GetPlayerProperty32(PlayerGUID, 202) then
    dbg("玩家的202号属性:"..LuaRet)
end


--此示例代码运行成功如下图所示。
RemoveSelfNotifyAttrs.png
<上一篇:让玩家取消读取进度条下一篇:判断角色是否存活>
Role_IsAlive
判断角色是否存活

更新时间：2023-05-26 00:00:00
此函数判断角色是否存活。

语法
Luacopy 复制
lualib:Role_IsAlive(
    role_guid
)
参数
role_guid

string

 
角色的GUID

返回值
bool

 
true角色存活

false角色死亡

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--判断角色“测试3”是否存活
if lualib:Role_IsAlive(lualib:Name2Guid("测试3")) then
    lualib:Warn("角色存活") 
else
    lualib:Warn("角色死亡") 
end

--此示例代码运行成功如下图所示。

Role_IsAlive.png
<上一篇:移除通知到客户端的玩家属性下一篇:向周围通知角色血量>
SendRoleHPNtf
向周围通知角色血量

更新时间：2022-04-27 00:00:00
此函数向角色周围通知角色血量。

语法
Luacopy 复制
lualib:SendRoleHPNtf(
    strRole
)

参数
strRole

string

 
角色的GUID

角色只能是玩家或者怪物

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SendRoleHPNtf(player) --向周围通知角色血量

--此示例代码运行成功如下图所示。

SendRoleHPNtf.png
<上一篇:判断角色是否存活下一篇:向周围通知角色血量和蓝量的变化>
ShowRoleHPRefAndMPRefWithSkillID
向周围通知角色血量和蓝量的变化

更新时间：2022-11-30 00:00:00
此函数向角色周围通知角色血量和蓝量的变化。

语法
Luacopy 复制
lualib:ShowRoleHPRefAndMPRefWithSkillID(
    see,
    target,
    target_hp_ref,
    target_mp_ref,
    type,
    skill_id
)
参数
see

string

 
需要看到目标角色血量和蓝量变化的玩家的GUID

note_icon 备注
当此参数被设置为""时，周围所有玩家都会看到目标角色血量和蓝量变化。

target

string

 
血量和蓝量发生变化的角色的GUID（即头顶会出现扣血扣蓝的飘字的角色）

target_hp_ref

int32

 
血量的变化量（即头顶扣血的数值）

target_mp_ref

uint32

 
蓝量的变化量（即头顶扣蓝的数值）

type

int

 
伤害类型

0普通伤害（对应客户端伤害类型定义中的伤害类型self_small_num）

1暴击伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num）

2致命伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num2）

3附加伤害（对应客户端伤害类型定义中的伤害类型self_attach_num）

4-12附加伤害（对应客户端伤害类型定义中的伤害类型other_attach_num1至other_attach_num9）

37-46回复血量（对应客户端伤害类型定义中的伤害类型add_hp_num1至add_hp_num10）

skill_id

int16

 
要对目标角色释放的技能的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ShowRoleHPRefAndMPRefWithSkillID("", player, -100, -100, 0, 2030) --天雷术1级的技能ID：2030

--示例代码运行结果如下。

ShowRoleHPRefAndMPRefWithSkillID
<上一篇:向周围通知角色血量下一篇:向周围通知角色血量和蓝量的变化>
ShowRoleHPRefAndMPRef
向周围通知角色血量和蓝量的变化

更新时间：2022-11-29 00:00:00
此函数向角色周围通知角色血量和蓝量的变化。

语法
Luacopy 复制
lualib:ShowRoleHPRefAndMPRef(
    see,
    target,
    target_hp_ref,
    target_mp_ref,
    type
)
参数
see

string

 
需要看到目标角色血量和蓝量变化的玩家的GUID

note_icon 备注
当此参数被设置为""时，周围所有玩家都会看到目标角色血量和蓝量变化。

target

string

 
血量和蓝量发生变化的角色的GUID（即头顶会出现扣血扣蓝的飘字的角色）

target_hp_ref

int32

 
血量的变化量（即头顶扣血的数值）

target_mp_ref

uint32

 
蓝量的变化量（即头顶扣蓝的数值）

type

int

 
伤害类型

0普通伤害（对应客户端伤害类型定义中的伤害类型self_small_num）

1暴击伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num）

2致命伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num2）

3附加伤害（对应客户端伤害类型定义中的伤害类型self_attach_num）

4-12附加伤害（对应客户端伤害类型定义中的伤害类型other_attach_num1至other_attach_num9）

37-46回复血量（对应客户端伤害类型定义中的伤害类型add_hp_num1至add_hp_num10）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ShowRoleHPRefAndMPRef("", player, -100, -100, 0)

--示例代码运行结果如下。

ShowRoleHPRefAndMPRef
<上一篇:向周围通知角色血量和蓝量的变化下一篇:向周围通知角色血量的变化>
ShowRoleHPRefExWithSkillID
向周围通知角色血量的变化

更新时间：2022-11-29 00:00:00
此函数向角色周围通知角色血量的变化。

语法
Luacopy 复制
lualib:ShowRoleHPRefExWithSkillID(
    see,
    target,
    target_hp_ref,
    type,
    skill_id
)
参数
see

string

 
需要看到目标角色血量变化的玩家的GUID

note_icon 备注
当此参数被设置为""时，周围所有玩家都会看到目标角色血量变化。

target

string

 
血量发生变化的角色的GUID（即头顶会出现扣血的飘字的角色）

target_hp_ref

int32

 
血量的变化量（即头顶扣血的数值）

type

uint8

 
伤害类型

0普通伤害（对应客户端伤害类型定义中的伤害类型self_small_num）

1暴击伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num）

2致命伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num2）

3附加伤害（对应客户端伤害类型定义中的伤害类型self_attach_num）

4-12附加伤害（对应客户端伤害类型定义中的伤害类型other_attach_num1至other_attach_num9）

37-46回复血量（对应客户端伤害类型定义中的伤害类型add_hp_num1至add_hp_num10）

skill_id

int16

 
要对目标角色释放的技能的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ShowRoleHPRefExWithSkillID("", player, -100, 0, 2030) --天雷术1级的技能ID：2030

--此示例代码运行成功如下图所示。

ShowRoleHPRefExWithSkillID
<上一篇:向周围通知角色血量和蓝量的变化下一篇:向周围通知角色血量的变化（扩展）>
ShowRoleHPRefEx
向周围通知角色血量的变化（扩展）

更新时间：2022-11-29 00:00:00
此函数向角色周围通知角色血量的变化。

语法
Luacopy 复制
lualib:ShowRoleHPRefEx(
    see,
    target,
    target_hp_ref,
    type
)

参数
see

string

 
需要看到目标角色血量变化的玩家的GUID

note_icon 备注
当此参数被设置为""时，周围所有玩家都会看到目标角色血量变化。

target

string

 
血量发生变化的角色的GUID（即头顶会出现扣血的飘字的角色）

target_hp_ref

int32

 
血量的变化量（即头顶扣血的数值）

type

uint8

 
伤害类型

0普通伤害（对应客户端伤害类型定义中的伤害类型self_small_num）

1暴击伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num）

2致命伤害（对应客户端伤害类型定义中的伤害类型self_zheming_num2）

3附加伤害（对应客户端伤害类型定义中的伤害类型self_attach_num）

4-12附加伤害（对应客户端伤害类型定义中的伤害类型other_attach_num1至other_attach_num9）

37-46回复血量（对应客户端伤害类型定义中的伤害类型add_hp_num1至add_hp_num10）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ShowRoleHPRefEx("", player, -260, 0)

--此示例代码运行成功如下图所示。

ShowRoleHPRefEx.png
<上一篇:向周围通知角色血量的变化下一篇:向周围通知角色血量的变化>
ShowRoleHPRef
向周围通知角色血量的变化

更新时间：2022-04-27 00:00:00
此函数向角色周围通知角色血量的变化。

语法
Luacopy 复制
lualib:ShowRoleHPRef(
    see,
    target,
    target_hp_ref
)

参数
see

string

 
需要看到目标角色血量变化的玩家的GUID

note_icon 备注
当此参数被设置为""时，周围所有玩家都会看到目标角色血量变化。

target

string

 
血量发生变化的角色的GUID（即头顶会出现扣血的飘字的角色）

target_hp_ref

int32

 
血量的变化量（即头顶扣血的数值）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ShowRoleHPRef("", player, -270)

--此示例代码运行成功如下图所示。

ShowRoleHPRef.png
<上一篇:向周围通知角色血量的变化（扩展）下一篇:扣除角色的生命值（HP值）>
SubHp
扣除角色的生命值（HP值）

更新时间：2022-04-27 00:00:00
此函数扣除角色的生命值（HP值）。

所有的属性修改操作都会自动记录到日志服务器。

参考 Hp

语法
Luacopy 复制
lualib:SubHp(
    strRole,
    iValue,
    strKiller
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iValue

int32

 
属性值（即要扣除的生命值（HP值））

strKiller

string

 
攻击者的GUID

角色可以为玩家、怪物或NPC

返回值
bool

 
true扣除成功

false扣除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--扣除玩家100点生命值（HP值）
if lualib:SubHp(player, 100, monster) then
   lualib:Warn(lualib:Name(player).."扣血100")
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

SubHP.png

SubHP_2.png
<上一篇:向周围通知角色血量的变化下一篇:扣除角色MP>
SubMp
扣除角色MP

更新时间：2025-05-16 00:00:00
此函数作用是扣除角色MP。

所有的属性修改操作都会自动记录到日志服务器。

语法
Luacopy 复制
lualib:SubMp(
    strRole,
    iValue
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物、NPC

iValue

int64

 
扣除的蓝量

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local cur_mp = lualib:Mp(player,false) --获取玩家改变前的当前MP
    lualib:Warn("玩家改变前的当前MP为："..cur_mp)
    lualib:SubMp(player,500)
    local cur_mp = lualib:Mp(player,false) --获取玩家改变后的当前MP
    lualib:Warn("玩家改变后的当前MP为："..cur_mp)
end

--执行示例代码，如下图所示，角色扣除的MP与设置扣除的MP一致。

SubMp.png

<上一篇:扣除角色的生命值（HP值）下一篇:发送角色当前说话的内容>
SysRoleTalk
发送角色当前说话的内容

更新时间：2022-04-27 00:00:00
此函数作用为发送角色当前说话的内容，可跨GS调用。

语法
Luacopy 复制
lualib:SysRoleTalk(
    strRole,
    strMsg
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strMsg

string

 
消息内容

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    if lualib:SysRoleTalk(player, "说话测试") then
        lualib:SysMsg_SendWarnMsg(player, "执行成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "执行失败")
    end
end

--此示例代码运行成功如下图所示。

SysRoleTalk.png
<上一篇:扣除角色MP下一篇:角色转向>
Turn
角色转向

更新时间：2023-05-26 00:00:00
此函数作用为让角色转向。

语法
Luacopy 复制
lualib:Turn(
    role_guid,
    dir
)
参数
role_guid

string

 
角色的GUID

角色可以为玩家或者怪物

dir

uint8

 
指定方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0向上

1右上

2向右

3右下

4向下

5左下

6向左

7左上

返回值
bool

 
true转向成功

false转向失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Turn(player,6) then
    lualib:Warn("转向成功")
else
    lualib:Warn("转向失败")
end

--此示例代码运行前效果如下图所示（玩家朝向下方）。

Turn.png

--此示例代码运行后效果如下图所示（玩家朝向左边），同时游戏日志中还会打印相关内容。

Turn_2.png

Turn_3.png
<上一篇:发送角色当前说话的内容下一篇:根据玩家账号ID获取当前角色GUID>
UserId2Guid
根据玩家账号ID获取当前角色GUID

更新时间：2022-04-27 00:00:00
此函数根据玩家账号ID获取当前角色的GUID。

语法
Luacopy 复制
lualib:UserId2Guid(
    user_id
)
参数
user_id

uint32

 
玩家的账号ID

返回值
string

 
该账号当前登录角色的GUID

note_icon 备注
若该账号下未创建角色或者玩家的账号ID不存在，则返回空字符串（""） 。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local userID = lualib:UserID(player) --获取玩家的账号ID
    local GUID = lualib:UserId2Guid(userID) --根据玩家账号ID获取当前角色的GUID
    if GUID ~= "" then
        lualib:SysMsg_SendWarnMsg(player, "ID："..userID.."下当前登录的角色GUID为："..GUID)
    else
        lualib:SysMsg_SendWarnMsg(player, "获取失败或者此ID未创建角色")
    end
end

--此示例代码运行成功如下图所示。

UserId2Guid_2.png
<上一篇:角色转向







