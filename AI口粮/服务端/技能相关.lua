AddSkill
给角色添加技能

更新时间：2022-05-05 00:00:00
此函数给角色添加技能。

语法
Luacopy 复制
lualib:AddSkill(
    strRole,
    strSkillKey
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strSkillKey

string

 
技能的索引名（KeyName）

note_icon 备注
若此参数的配置值为""，则会添加该角色对应职业的所有技能（不包括通用技能）。

同一技能链只能添加一个技能，会默认添加此技能链中最高等级的技能。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
若指定角色已学习了对应的技能，则会返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player) 
    local skillkey = "巨石火轮"
    if lualib:AddSkill(player, skillkey) then
        lualib:SysMsg_SendWarnMsg(player,"技能"..skillkey.."学习成功")
    else
        lualib:SysMsg_SendWarnMsg(player,"技能学习失败")
    end 
end

--此示例代码运行前效果如下图所示。

AddSkill_4.png

--此示例代码运行后效果如下图所示，同时游戏对话框中还会输出如下内容。

AddSkill_5.png

AddSkill_3.png
下一篇:判断目标是否可攻击>
CanAttackEx
判断目标是否可攻击

更新时间：2025-07-18 00:00:00
此函数判断目标是否可攻击。

此接口会考虑目标与攻击者是否处在安全区内。

语法
Luacopy 复制
lualib:CanAttackEx(
    actor_guid,
    target_guid
)

参数
actor_guid

string

 
攻击者的GUID

target_guid

string

 
目标的GUID

返回值
bool

 
true目标可被攻击

false目标不可被攻击

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
functionceshi(npc,player)
    --获取guid
    local playerGUID = lualib:Name2Guid("ceshi998")
    local Target_Name = lualib:Guid2Name(playerGUID)--根据目标角色的GUID获取目标角色的名称
    if lualib:CanAttackEx(player,playerGUID) then
        lualib:SysMsg_SendWarnMsg(player,Target_Name.."可以被攻击")
    else
        lualib:SysMsg_SendWarnMsg(player,"目标不可攻击")
    end
end

--只要有攻击者或者被攻击者有一个处于安全区，或者两个人都在安全区，目标不可攻击。
<上一篇:给角色添加技能下一篇:判断目标角色是否可被攻击>
CanAttack
判断目标角色是否可被攻击

更新时间：2021-11-19 00:00:00
此函数判断目标角色是否可被攻击。

语法
Luacopy 复制
lualib:CanAttack(
    actor_guid,
    target_guid
)

参数
actor_guid

string

 
攻击者的GUID

target_guid

string

 
目标角色的GUID

返回值
bool

 
true目标角色可被攻击

false目标角色不可被攻击

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Target_GUID = "ar8m197fhc0b" --目标角色的GUID
    local Target_Name = lualib:Guid2Name(Target_GUID) --根据目标角色的GUID获取目标角色的名称
    if lualib:CanAttack(player, Target_GUID) then
        lualib:SysMsg_SendWarnMsg(player,Target_Name.."可以被攻击")
    else
        lualib:SysMsg_SendWarnMsg(player,"目标不可攻击")
    end
end

--当目标可以被攻击时，此示例代码运行成功如下图所示，同时游戏内对话框会输入如下内容。

CanAttack.gif

CanAttack_2.png

--当目标不可被攻击时，此示例代码运行成功如下图所示。

CanAttack.png
<上一篇:判断目标是否可攻击下一篇:删除玩家所有技能>
DelAllSkill
删除玩家所有技能

更新时间：2021-11-19 00:00:00
此函数删除玩家所有技能。

语法
Luacopy 复制
lualib:DelAllSkill(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    if lualib:DelAllSkill(player) then
        lualib:SysMsg_SendWarnMsg(player,"玩家技能删除成功")
    else
        lualib:SysMsg_SendWarnMsg(player,"玩家技能删除失败")
    end
end

--此示例代码运行前效果如下图所示。

AddSkill.png

--此示例代码运行后效果如下图所示，同时游戏对话框中还会输出如下内容。

DelAllSkill.png

DelAllSkill_2.png
<上一篇:判断目标角色是否可被攻击下一篇:删除角色的某个技能>
DelSkill
删除角色的某个技能

更新时间：2022-06-16 00:00:00
此函数作用为删除角色的某个技能。

语法
Luacopy 复制
lualib:DelSkill(
    strPlayer,
    strSkillKey
)

参数
strPlayer

string

 
角色的GUID

角色可以为玩家或者怪物

strSkillKey

string

 
技能的索引名（KeyName）

返回值
bool

 
true删除成功

false删除失败

note_icon 备注
若指定角色没有对应的技能，则会返回false。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strPlayer对怪物的支持

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local skillkey = "巨石火轮"
    if lualib:DelSkill(player, skillkey) then
        lualib:SysMsg_SendWarnMsg(player,"技能"..skillkey.."删除成功")
    else
        lualib:SysMsg_SendWarnMsg(player,"技能删除失败")
    end
end

--此示例代码运行前效果如下图所示。

AddSkill_2.png

--此示例代码运行后效果如下图所示，同时游戏对话框中还会输出如下内容。

AddSkill.png

DelSkill.png
<上一篇:删除玩家所有技能下一篇:删除玩家非本职业技能（扩展）>
DelUnmatchedSkillEx
删除玩家非本职业技能（扩展）

更新时间：2021-11-26 00:00:00
此函数删除玩家非本职业的所有技能，不会删除通用职业技能。

语法
Luacopy 复制
lualib:DelUnmatchedSkillEx(
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
--以下示例代码执行前提如下所示：
--1.玩家职业为战士；
--2.技能“陨星灭世”为法师技能、技能“天庭之唤”为术士技能、技能“烈焰斩”为战士技能、技能“麒麟攻击”为通用职业技能。

DelUnmatchedSkill_4.png
function Warnprint(npc,player)
    if lualib:DelUnmatchedSkillEx(player) then
    lualib:SysMsg_SendWarnMsg(player,"成功删除非本职业技能")
    else
        lualib:SysMsg_SendWarnMsg(player,"技能删除失败")
    end
end

--此示例代码运行成功如下图所示（玩家通用职业技能不会被删除），同时游戏对话框中还会输出如下内容。

DelUnmatchedSkillEx_5.png

DelUnmatchedSkill_3.png
<上一篇:删除角色的某个技能下一篇:删除玩家非本职业技能>
DelUnmatchedSkill
删除玩家非本职业技能

更新时间：2021-11-26 00:00:00
此函数删除玩家非本职业的所有技能。

note_icon 备注
此接口执行后通用职业技能也会被删除。

语法
Luacopy 复制
lualib:DelUnmatchedSkill(
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
--以下示例代码执行前提如下所示：
--1.玩家职业为战士；
--2.技能“陨星灭世”为法师技能、技能“天庭之唤”为术士技能、技能“烈焰斩”为战士技能、技能“麒麟攻击”为通用职业技能。

DelUnmatchedSkill_4.png
function Warnprint(npc,player)
    if lualib:DelUnmatchedSkill(player) then
    lualib:SysMsg_SendWarnMsg(player,"成功删除非本职业技能")
    else
        lualib:SysMsg_SendWarnMsg(player,"技能删除失败")
    end
end

--此示例代码运行成功如下图所示，同时游戏对话框中还会输出如下内容。

DelUnmatchedSkill_5.png

DelUnmatchedSkill_3.png
<上一篇:删除玩家非本职业技能（扩展）下一篇:根据技能表配置直接释放技能击退效果>
DoRepelWithSkill
根据技能表配置直接释放技能击退效果

更新时间：2022-12-30 00:00:00
此函数根据技能模板表中的击退技能配置直接释放技能击退效果（不走技能流程，即无需检查指定技能是否可以释放）。

语法
Luacopy 复制
lualib:DoRepelWithSkill(
    actor_guid,
    target_list,
    strSkill,
    x,
    y
)
参数
actor_guid

string

 
释放者的GUID

target_list

table

 
目标的GUID列表

strSkill

string

 
技能的索引名（KeyName）

x

uint16

 
技能释放的X坐标

y

uint16

 
技能释放的Y坐标

返回值
bool

 
true击退效果释放成功

false击退效果释放失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local mapguid = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
local x = lualib:X(player) --获取玩家的X坐标
local y = lualib:Y(player) --获取玩家的Y坐标
local target_list ={}
target_list[1] = lualib:Map_GenSingleMonster(mapguid, x, y, 0, 5, "宠物狐妖", false) --在地图指定范围生成一只怪物
--对指定目标直接释放技能“退拒之环4级”的击退效果
if lualib:DoRepelWithSkill(player,target_list,"退拒之环4级",x,y) then
    lualib:Warn("执行成功")
else
    lualib:Warn("执行失败")
end

--此示例代码执行成功后，玩家成功对指定目标直接释放技能“退拒之环4级”的击退效果。
<上一篇:删除玩家非本职业技能下一篇:获取角色所有技能的ID>
GetAllSkills
获取角色所有技能的ID

更新时间：2021-11-19 00:00:00
此函数获取角色所有技能的ID。

语法
Luacopy 复制
lualib:GetAllSkills(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
table

 
返回技能ID

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

GetAllSkills.png
function Warnprint(npc, player)
    local list = lualib:GetAllSkills(player) --获取玩家所有技能的ID
    for i in list do
        lualib:SysMsg_SendWarnMsg(player, "技能ID："..i)
    end
end

--此示例代码运行成功如下图所示。

GetAllSkills_2.png
<上一篇:根据技能表配置直接释放技能击退效果下一篇:根据技能ID获取所属的技能链编号>
GetLinkageBySkillId
根据技能ID获取所属的技能链编号

更新时间：2021-11-26 00:00:00
此函数根据技能ID获取角色技能的技能链编号。

语法
Luacopy 复制
lualib:GetLinkageBySkillId(
    skill_id
)
参数
skill_id

uint16

 
技能ID

返回值
uint16

 
获取成功则返回技能链编号

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysWarnMsg(player, "陨星灭世2级的技能链为"..lualib:GetLinkageBySkillId(2171))
lualib:SysWarnMsg(player, "天庭之唤4级的技能链为"..lualib:GetLinkageBySkillId(3113))

--此示例代码运行成功如下图所示。

GetLinkageBySkillId.png
<上一篇:获取角色所有技能的ID下一篇:根据技能索引名获取所属的技能链编号>
GetLinkageBySkillKeyName
根据技能索引名获取所属的技能链编号

更新时间：2021-11-26 00:00:00
此函数根据技能索引名（KeyName）获取角色技能的技能链编号。

语法
Luacopy 复制
lualib:GetLinkageBySkillKeyName(
    skill_name
)
参数
skill_name

string

 
技能的索引名（KeyName）

返回值
uint16

 
获取成功则返回技能链编号

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysWarnMsg(player, "陨星灭世2级的技能链为"..lualib:GetLinkageBySkillKeyName("陨星灭世2级"))
lualib:SysWarnMsg(player, "天庭之唤3级的技能链为"..lualib:GetLinkageBySkillKeyName("天庭之唤3级"))

--此示例代码运行成功如下图所示。

GetLinkageBySkillKeyName.png
<上一篇:根据技能ID获取所属的技能链编号下一篇:获取角色拥有的技能>
GetSkillByLinkage
获取角色拥有的技能

更新时间：2021-11-19 00:00:00
此函数根据技能链编号获取角色拥有的技能的ID。

语法
Luacopy 复制
lualib:GetSkillByLinkage(
    strRole,
    wLinkage
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

wLinkage

uint16

 
技能链编号

返回值
uint16

 
获取成功则返回技能ID

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码的执行前提如下图所示（角色没有技能链编号为1066的技能）。

GetAllSkills.png
function Warnprint(npc, player)
    local Linkage_ID = {57, 48, 59, 1065, 1066} --技能链编号表
    for i = 1, #Linkage_ID do
        Skill_ID = lualib:GetSkillByLinkage(player, Linkage_ID[i]) --根据技能链编号获取角色拥有的技能的ID
        if Skill_ID ~= 0 then
            lualib:SysMsg_SendWarnMsg(player,  "ID为"..Linkage_ID[i].."的技能链对应的技能ID为："..Skill_ID)
        else
            lualib:SysMsg_SendWarnMsg(player, "ID为"..Linkage_ID[i].."的技能链对应的技能不存在")
        end
    end
end

--此示例代码运行成功如下图所示。

--若角色存在指定技能链编号对应的技能，则会返回对应技能的ID；若角色不存在指定技能链编号对应的技能，则会返回0。

GetSkillByLinkage.png
<上一篇:根据技能索引名获取所属的技能链编号下一篇:获取玩家技能的熟练度>
GetSkillExp
获取玩家技能的熟练度

更新时间：2021-11-19 00:00:00
此函数根据技能的索引名（KeyName）获取玩家技能的熟练度。

语法
Luacopy 复制
lualib:GetSkillExp(
    player_guid,
    skill_key_name
)

参数
player_guid

string

 
玩家角色的GUID

skill_key_name

string

 
技能的索引名（KeyName）

返回值
uint16

 
执行成功则返回玩家对应定技能的熟练度

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local skillExp = lualib:GetSkillExp(player, "冰爆漩涡4级")
    if skillExp ~= 0 then
        lualib:SysMsg_SendWarnMsg(player, "冰爆漩涡4级的熟练度为："..skillExp)
    else
        lualib:SysMsg_SendWarnMsg(player,"获取失败")
    end
end

--此示例代码运行成功如下图所示。

GetSkillExp.png
<上一篇:获取角色拥有的技能下一篇:判断角色是否拥有指定技能>
HasSkill
判断角色是否拥有指定技能

更新时间：2021-11-19 00:00:00
此函数判断角色是否拥有指定技能。

语法
Luacopy 复制
lualib:HasSkill(
    strRole,
    strSkillKey,
    bLinkage
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strSkillKey

string

 
技能的索引名（KeyName）

bLinkage

bool

 
是否判断同一技能链的其他技能

true判断同一技能链的其他技能

false不判断同一技能链的其他技能

返回值
bool

 
true角色拥有指定技能

false角色未拥有指定技能

note_icon 备注
当参数bLinkage设置为true时，若玩家拥有指定技能所在的技能链中的任一技能，则判定为拥有指定技能（即返回值为true）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示：

AddSkill.png
function Warnprint(npc,player)
    local skillKey = "冰爆漩涡4级"
    if lualib:HasSkill(player, skillKey, false) then
        lualib:SysMsg_SendWarnMsg(player, "玩家拥有"..skillKey.."技能")
    else
        lualib:SysMsg_SendWarnMsg(player,"玩家未拥有"..skillKey.."技能")
    end
end

--此示例代码运行成功如下图所示。

HasSkill.png
<上一篇:获取玩家技能的熟练度下一篇:获取玩家多少次普攻后可以触发重击>
Player_GetPowerHitCount
获取玩家多少次普攻后可以触发重击

更新时间：2024-07-26 00:00:00
此函数获取玩家多少次普攻后可以触发重击。

语法
Luacopy 复制
lualib:Player_GetPowerHitCount(
    player_guid
)
参数
player_guid

string

 
玩家GUID

返回值
INT32

 
多少次普攻后可以触发重击

note_icon 备注
没有调用lualib:Player_SetPowerHitCount设置过时返回值为0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local getCount = lualib:Player_GetPowerHitCount(player)
lualib:Warn("玩家"..getCount.."次普攻后可以触发重击")

--此示例代码运行成功控制台输出如下内容。

Player_GetPowerHitCount.png
<上一篇:判断角色是否拥有指定技能下一篇:获取角色正在冷却中的技能CD时间>
Player_GetSkillCDEx
获取角色正在冷却中的技能CD时间

更新时间：2021-11-19 00:00:00
此函数获取角色正在冷却中的技能CD时间。

语法
Luacopy 复制
lualib:Player_GetSkillCDEx(
    player_guid,
    skill_id
)
参数
player_guid

string

 
角色或者英雄的GUID

skill_id

uint16

 
技能ID

返回值
uint32

 
技能剩余CD时间

单位为毫秒（ms）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--陨星灭世技能、冰爆漩涡技能依次释放
lualib:SysWarnMsg(player, "陨星灭世剩余冷却时间为 "..lualib:Player_GetSkillCDEx(player, 2173).."ms")
lualib:SysWarnMsg(player, "冰爆漩涡剩余冷却时间为 "..lualib:Player_GetSkillCDEx(player, 2123).."ms")

--此示例代码运行成功如下图所示。

Player_GetSkillCDEx.png
<上一篇:获取玩家多少次普攻后可以触发重击下一篇:获取角色技能CD时间>
Player_GetSkillCD
获取角色技能CD时间

更新时间：2021-11-19 00:00:00
此函数获取角色技能CD时间。

语法
Luacopy 复制
lualib:Player_GetSkillCD(
    player_guid,
    skill_id
)
参数
player_guid

string

 
角色或者英雄的GUID

skill_id

uint16

 
技能ID

返回值
uint32

 
技能CD时间

单位为毫秒 （ms）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysWarnMsg(player, "技能CD时间："..lualib:Player_GetSkillCD(player, 2173)) --获取角色技能CD时间
lualib:Player_SetSkillCDEx(player, 2173, 100) --设置角色技能的CD时间
lualib:SysWarnMsg(player, "技能CD时间设置成功")
lualib:SysWarnMsg(player, "技能CD时间："..lualib:Player_GetSkillCD(player, 2173))--获取角色技能CD时间

--此示例代码运行成功如下图所示。

Player_SetSkillCDEx.png
<上一篇:获取角色正在冷却中的技能CD时间下一篇:设置玩家多少次普攻后可以触发重击>
Player_SetPowerHitCount
设置玩家多少次普攻后可以触发重击

更新时间：2024-07-26 00:00:00
此函数设置玩家多少次普攻后可以触发重击。

将重击术技能的“是否使用重击术固定几次出重击术”设置为“是”，然后使用此接口设置玩家多少次普攻后可以触发重击。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→技能模板表→基础配置区域。

Player_SetPowerHitCount.png
note_icon 备注
如果没有使用该函数设置，则以全局表字段配置数据为准。

语法
Luacopy 复制
lualib:Player_SetPowerHitCount(
    player_guid,
    count
)
参数
player_guid

string

 
玩家GUID

count

INT32

 
普攻次数，必须大于0。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将重击术技能的是否使用重击术固定几次出重击术设置为是，然后使用此接口设置玩家10次普攻后可以触发重击

Player_SetPowerHitCount.png
local setCount = 10
lualib:Player_SetPowerHitCount(player,setCount)

--玩家普攻10次后才会触发重击术技能。

Player_SetPowerHitCount_2.png
<上一篇:获取角色技能CD时间下一篇:设置角色技能CD时间（扩展）>
Player_SetSkillCDEx
设置角色技能CD时间（扩展）

更新时间：2021-11-19 00:00:00
此函数设置角色技能CD时间。

note_icon 备注
此接口设置的角色技能CD时间仅在本次登录期间有效，即在玩家返回角色选择界面或者退出游戏后失效。

语法
Luacopy 复制
lualib:Player_SetSkillCDEx(
    strPlayer,
    skill_id,
    cd_millisecond
)
参数
strPlayer

string

 
角色或者英雄的GUID

skill_id

uint16

 
技能ID

cd_millisecond

int32

 
技能CD时间

单位为毫秒 （ms）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysWarnMsg(player, "技能CD时间："..lualib:Player_GetSkillCD(player, 2173)) --获取角色技能CD时间
lualib:Player_SetSkillCDEx(player, 2173, 100) --设置角色技能的CD时间
lualib:SysWarnMsg(player, "技能CD时间设置成功")
lualib:SysWarnMsg(player, "技能CD时间："..lualib:Player_GetSkillCD(player, 2173)) --获取角色技能CD时间

--此示例代码运行成功如下图所示。

Player_SetSkillCDEx.png
<上一篇:设置玩家多少次普攻后可以触发重击下一篇:设置角色技能CD时间>
Player_SetSkillCD
设置角色技能CD时间

更新时间：2021-11-26 00:00:00
此函数设置角色技能CD时间。

note_icon 备注
此接口设置的角色技能CD时间仅生效一次。

语法
Luacopy 复制
lualib:Player_SetSkillCD(
    strPlayer,
    skill_id,
    cd_millisecond 
)
参数
strPlayer

string

 
角色或者英雄的GUID

skill_id

uint16

 
技能ID

cd_millisecond

uint32

 
技能CD时间

单位为毫秒（ms）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local SkillName = "爆炎剑诀4级"
    lualib:Player_SetSkillCD(player, lualib:SkillKey2ID(SkillName), 200000) --设置角色技能“爆炎剑诀4级”的CD时间
    lualib:SysMsg_SendWarnMsg(player, "技能"..SkillName.."的剩余CD时间为："..lualib:Player_GetSkillCDEx(player, Skill_ID).."ms") --获取技能“爆炎剑诀4级”的剩余CD时间
end

--此示例代码运行成功后，游戏对话框中会输出“技能爆炎剑诀4级的剩余CD时间为：1000ms”。
<上一篇:设置角色技能CD时间（扩展）下一篇:玩家对目标逻辑格释放技能>
Player_SpellGrid
玩家对目标逻辑格释放技能

更新时间：2021-11-19 00:00:00
此函数让玩家对目标逻辑格释放技能。

语法
Luacopy 复制
lualib:Player_SpellGrid(
    strPlayer,
    strSkill,
    x,
    y
)

参数
strPlayer

string

 
玩家角色的GUID

strSkill

string

 
技能的索引名（KeyName）

x

uint16

 
目标逻辑格的X坐标

y

uint16

 
目标逻辑格的Y坐标

返回值
bool

 
true技能释放成功

false技能释放失败

note_icon 备注
技能释放成功只表示服务端发送消息通知客户端释放此技能，具体客户端是否释放此技能以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    --设置玩家在逻辑格坐标为(140,170)的点释放技能“陨星灭世4级”
    if lualib:Player_SpellGrid(player, "陨星灭世4级", 140, 170) then
        lualib:SysMsg_SendWarnMsg(player, "技能释放中心点X坐标为："..lualib:Player_SpellPosX(player)) --获取玩家释放技能的中心点的X坐标
        lualib:SysMsg_SendWarnMsg(player, "技能释放中心点Y坐标为："..lualib:Player_SpellPosY(player)) --获取玩家释放技能的中心点的Y坐标
    else
        lualib:SysMsg_SendWarnMsg(player, "技能释放失败")
    end
end

--此示例代码运行成功如下图所示（玩家在逻辑格坐标为(140,170)的点释放技能“陨星灭世4级”）。

Player_SpellGrid.png
<上一篇:设置角色技能CD时间下一篇:获取玩家或英雄释放技能的中心点的X坐标>
Player_SpellPosX
获取玩家或英雄释放技能的中心点的X坐标

更新时间：2021-11-19 00:00:00
此函数获取玩家或英雄释放技能的中心点的X坐标。

语法
Luacopy 复制
lualib:Player_SpellPosX(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
uint16

 
执行成功则返回技能释放中心点的X坐标

执行失败返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    --设置玩家在逻辑格坐标为(140,170)的点释放技能“陨星灭世4级”
    if lualib:Player_SpellGrid(player, "陨星灭世4级", 140, 170) then
        lualib:SysMsg_SendWarnMsg(player, "技能释放中心点X坐标为："..lualib:Player_SpellPosX(player)) --获取玩家释放技能的中心点的X坐标
        lualib:SysMsg_SendWarnMsg(player, "技能释放中心点Y坐标为："..lualib:Player_SpellPosY(player)) --获取玩家释放技能的中心点的Y坐标
    else
        lualib:SysMsg_SendWarnMsg(player, "技能释放失败")
    end
end

--此示例代码运行成功如下图所示（玩家在逻辑格坐标为(140,170)的点释放技能“陨星灭世4级”）。

Player_SpellGrid.png
<上一篇:玩家对目标逻辑格释放技能下一篇:获取玩家或英雄释放技能的中心点的Y坐标>
Player_SpellPosY
获取玩家或英雄释放技能的中心点的Y坐标

更新时间：2021-11-19 00:00:00
此函数获取玩家或英雄释放技能的中心点的Y坐标。

语法
Luacopy 复制
lualib:Player_SpellPosY(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
uint16

 
执行成功则返回技能释放中心点的Y坐标

执行失败返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    --设置玩家在逻辑格坐标为(140,170)的点释放技能“陨星灭世4级”
    if lualib:Player_SpellGrid(player, "陨星灭世4级", 140, 170) then
        lualib:SysMsg_SendWarnMsg(player, "技能释放中心点X坐标为："..lualib:Player_SpellPosX(player)) --获取玩家释放技能的中心点的X坐标
        lualib:SysMsg_SendWarnMsg(player, "技能释放中心点Y坐标为："..lualib:Player_SpellPosY(player)) --获取玩家释放技能的中心点的Y坐标
    else
        lualib:SysMsg_SendWarnMsg(player, "技能释放失败")
    end
end

--此示例代码运行成功如下图所示（玩家在逻辑格坐标为(140,170)的点释放技能“陨星灭世4级”）。

Player_SpellGrid.png
<上一篇:获取玩家或英雄释放技能的中心点的X坐标下一篇:玩家对目标角色释放技能（新）>
Player_SpellTarget2
玩家对目标角色释放技能（新）

更新时间：2023-09-22 00:00:00
此函数让玩家对目标角色释放技能。

note_icon 备注
该接口修复了使用Player_SpellTarget后，客户端实际未对设置的目标角色释放技能的问题。

语法
Luacopy 复制
lualib:Player_SpellTarget2(
    strPlayer,
    strSkill,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

strSkill

string

 
技能的索引名（KeyName）

strTarget

string

 
目标角色的GUID

返回值
bool

 
true技能释放成功

false技能释放失败

note_icon 备注
技能释放成功只表示服务端发送消息通知客户端释放此技能，具体客户端是否释放此技能以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local skill_name = "陨星灭世4级"
    local Target_guid = "ar8m1g2njc02"
    if lualib:Player_SpellTarget2(player, skill_name, Target_guid) then
        lualib:SysMsg_SendWarnMsg(player, "成功对"..Target_guid.."释放"..skill_name.."技能")
    else
        lualib:SysMsg_SendWarnMsg(player, "技能释放失败")
    end
end

--此示例代码运行成功如下图所示。

Player_SpellTarget.png
<上一篇:获取玩家或英雄释放技能的中心点的Y坐标下一篇:玩家对目标角色释放技能>
Player_SpellTarget
玩家对目标角色释放技能

更新时间：2023-09-22 00:00:00
note_icon 备注
请使用新接口Player_SpellTarget2。
新接口修复了客户端实际未对设置的目标角色释放技能的问题。

此函数让玩家对目标角色释放技能。

语法
Luacopy 复制
lualib:Player_SpellTarget(
    strPlayer,
    strSkill,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

strSkill

string

 
技能的索引名（KeyName）

strTarget

string

 
目标角色的GUID

返回值
bool

 
true技能释放成功

false技能释放失败

note_icon 备注
技能释放成功只表示服务端发送消息通知客户端释放此技能，具体客户端是否释放此技能以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local skill_name = "陨星灭世4级"
    local Target_guid = "ar8m1g2njc02"
    if lualib:Player_SpellTarget(player, skill_name, Target_guid) then
        lualib:SysMsg_SendWarnMsg(player, "成功对"..Target_guid.."释放"..skill_name.."技能")
    else
        lualib:SysMsg_SendWarnMsg(player, "技能释放失败")
    end
end

--此示例代码运行成功如下图所示。

Player_SpellTarget.png
<上一篇:玩家对目标角色释放技能（新）下一篇:对目标添加通道技能>
Role_AddSkillChannel
对目标添加通道技能

更新时间：2023-11-06 00:00:00
此函数给目标位置添加一个通道类型的技能。

语法
Luacopy 复制
lualib:Role_AddSkillChannel(
    strRole,
    strSkill,
    X,
    Y
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、假人或怪物

strSkill

string

 
技能的索引名（KeyName）

note_icon 备注
若技能类型不为通道技能，则该接口会执行失败，并在服务器引擎中输出一条提示日志。

X

int

 
目标逻辑格的X坐标

Y

int

 
目标逻辑格的Y坐标

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
    if lualib:Role_AddSkillChannel(player,"烈焰火海1级",137,104) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end
<上一篇:玩家对目标角色释放技能下一篇:获取对象禁用技能链>
Role_GetForbiddenSkillLinkage
获取对象禁用技能链

更新时间：2025-01-22 00:00:00
此函数获取对象禁用技能链。

语法
Luacopy 复制
lualib:Role_GetForbiddenSkillLinkage(
    role_guid
)
参数
role_guid

string

 
对象的guid

返回值
table

 
执行成功则返回对应的禁用技能链ID（存储在lua表中），执行失败则返回空表。

table格式为{[1] = 禁用技能链ID,[2] = 禁用技能链ID}。

例如：{[1]=1,[2]=2}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local t_skill = {
        [1] = 9,
        [2] = 55,
    }
    lualib:Role_SetForbiddenSkillLinkage(player,t_skill)
    local p_limit = Role_GetForbiddenSkillLinkage(player)
    lualib:Warn("禁止释放技能链结果为"..serialize(p_limit))
end

--执行示例代码，如下图所示，被禁用技能链的相关技能都无法释放了，其余技能正常释放。

Role_SetForbiddenSkillLinkage.png

Role_SetForbiddenSkillLinkage_2.png

--再设置禁言技能链为空表后，技能可以正常释放。
<上一篇:对目标添加通道技能下一篇:获取角色技能链对应的伤害类型表>
Role_GetSkillLinkageDamageType
获取角色技能链对应的伤害类型表

更新时间：2021-11-26 00:00:00
此函数获取角色技能链对应的伤害类型表。

语法
Luacopy 复制
lualib:Role_GetSkillLinkageDamageType(
    role_guid
)
参数
role_guid

string

 
玩家角色的GUID

返回值
table

 
指定角色的技能链对应的伤害类型表

note_icon 备注
其中伤害类型的定义如下：

0不走伤害流程

1物攻伤害类型

2魔攻伤害类型

3咒术伤害类型

伤害类型表的格式为table，具体格式为{[技能链1编号]=技能链1伤害类型,[技能链2编号]=技能链2伤害类型}

例如：{[1]=1,[2]=2,[3]=3,[4]=0}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local SkillLinkage = {[59] = 1, [58] = 2, [57] = 3, [48] = 0}
if lualib:Role_SetSkillLinkageDamageType(player, SkillLinkage) then
    lualib:Warn("SkillLinkageDamageType = "..serialize(lualib:Role_GetSkillLinkageDamageType(player)))
end

--此示例代码运行成功如下图所示。

Role_SetSkillLinkageDamageType.png
<上一篇:获取对象禁用技能链下一篇:判断角色是否有指定的预存技能链>
Role_HasFireSkillWithLinkage
判断角色是否有指定的预存技能链

更新时间：2024-01-03 00:00:00
此函数判断角色当前状态下是否有指定的预存技能链。

note_icon 备注
适用于新的预存类技能，即技能在技能模板表中“是否是新的预存技能”配置了是。

对应选项访问路径为：游戏工具平台→游戏配置→技能模板表（选择高级模式）→其他区域。

语法
Luacopy 复制
lualib:Role_HasFireSkillWithLinkage(
    role_guid,
    skill_linkage
)

参数
role_guid

string

 
角色的GUID

角色可以为玩家角色或假人

skill_linkage

uint16

 
技能链ID

返回值
bool

 
true角色有预存技能链

false角色没有预存技能链

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    if lualib:HasFireSkillWithLinkage(player, 4) then
        lualib:Warn("有预存技能链")
    else
        lualib:Warn("没有预存技能链")
    end
end
<上一篇:获取角色技能链对应的伤害类型表下一篇:判断角色是否有预存技能>
Role_HasFireSkill
判断角色是否有预存技能

更新时间：2024-01-03 00:00:00
此函数判断角色当前状态下是否有预存技能。

语法
Luacopy 复制
lualib:Role_HasFireSkill(
    role_guid
)

参数
role_guid

string

 
角色的GUID

角色可以为玩家角色或假人

返回值
bool

 
true角色有预存技能

false角色没有预存技能

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    if lualib:Role_HasFireSkill(player) then
        lualib:Warn("有预存技能")
    else
        lualib:Warn("没有预存技能")
    end
end
<上一篇:判断角色是否有指定的预存技能链下一篇:设置对象禁用技能链>
Role_SetForbiddenSkillLinkage
设置对象禁用技能链

更新时间：2025-01-22 00:00:00
此函数设置对象禁用技能链。

语法
Luacopy 复制
lualib:Role_SetForbiddenSkillLinkage(
    role_guid,
    skill_linkage_table
)
参数
role_guid

string

 
对象的guid

skill_linkage_table

table

 
设置禁用的技能链table，例如：{[1]=1,[2]=2}

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local t_skill = {
        [1] = 9,
        [2] = 55,
    }
    lualib:Role_SetForbiddenSkillLinkage(player,t_skill)
    local p_limit = Role_GetForbiddenSkillLinkage(player)
    lualib:Warn("禁止释放技能链结果为"..serialize(p_limit))
end

--执行示例代码，如下图所示，被禁用技能链的相关技能都无法释放了，其余技能正常释放。

Role_SetForbiddenSkillLinkage.png

Role_SetForbiddenSkillLinkage_2.png

--再设置禁言技能链为空表后，技能可以正常释放。
<上一篇:判断角色是否有预存技能下一篇:设置角色技能链对应的伤害类型表>
Role_SetSkillLinkageDamageType
设置角色技能链对应的伤害类型表

更新时间：2021-11-26 00:00:00
此函数设置角色技能链对应的伤害类型表，可强制修改角色释放技能时的伤害类型。

语法
Luacopy 复制
lualib:Role_SetSkillLinkageDamageType(
    role_guid,
    linkage2Damage
)
参数
role_guid

string

 
玩家角色的GUID

linkage2Damage

table

 
技能链对应的伤害类型表

note_icon 备注
其中伤害类型的定义如下：

0不走伤害流程

1物攻伤害类型

2魔攻伤害类型

3咒术伤害类型

伤害类型表的格式为table，具体格式为{[技能链1编号]=技能链1伤害类型,[技能链2编号]=技能链2伤害类型}

例如：{[1]=1,[2]=2,[3]=3,[4]=0}

返回值
bool

 
true修改成功

false修改失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local SkillLinkage = {[59] = 1, [58] = 2, [57] = 3, [48] = 0}
if lualib:Role_SetSkillLinkageDamageType(player, SkillLinkage) then
    lualib:Warn("SkillLinkageDamageType = "..serialize(lualib:Role_GetSkillLinkageDamageType(player)))
end

--此示例代码运行成功如下图所示。

Role_SetSkillLinkageDamageType.png
<上一篇:设置对象禁用技能链下一篇:设置是否显示为暴击>
SetIsBrust
设置是否显示为暴击

更新时间：2021-11-19 00:00:00
此函数设置角色在释放技能时是否显示“暴击”字样。

note_icon 备注
每调用一次接口只对下次伤害显示生效。

语法
Luacopy 复制
lualib:SetIsBrust(
    actor_guid,
    is_brust
)

参数
actor_guid

string

 
技能释放者的GUID

is_brust

bool

 
是否显示“暴击”字样

true显示

false不显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--设置显示“暴击”字样
function Warnprint(npc,player)
    lualib:SetIsBrust(player, true) 
end

--此示例代码运行成功如下图所示。

SetIsBrust.png
--设置不显示“暴击”字样
function Warnprint(npc,player)
    lualib:SetIsBrust(player, false) 
end

--此示例代码运行成功如下图所示。

SetIsBrust_2.png
<上一篇:设置角色技能链对应的伤害类型表下一篇:设置玩家技能的熟练度>
SetSkillExp
设置玩家技能的熟练度

更新时间：2022-07-18 00:00:00
此函数设置玩家指定技能的熟练度。

语法
Luacopy 复制
lualib:SetSkillExp(
    player_guid,
    skill_key_name,
    skill_exp
)

参数
player_guid

string

 
玩家角色的GUID

skill_key_name

string

 
技能的索引名（KeyName）

skill_exp

uint16

 
要设置的技能熟练度

note_icon 备注
技能熟练度的上限由熟练度上限字段决定。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→技能模板表→基础配置→基础信息二区域。

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
    local SkillName = "爆炎剑诀4级"
    --设置技能“爆炎剑诀4级”的熟练度为300
    if lualib:SetSkillExp(player, SkillName, 300) then
        lualib:SysMsg_SendWarnMsg(player, "技能熟练度设置成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "设置技能熟练度失败")
    end
end

--此示例代码运行成功后，游戏对话框中会输出“技能熟练度设置成功”。
<上一篇:设置是否显示为暴击下一篇:根据技能的索引名获取技能的ID>
SkillKey2ID
根据技能的索引名获取技能的ID

更新时间：2021-11-19 00:00:00
此函数根据技能的索引名（KeyName）获取技能的ID。

语法
Luacopy 复制
lualib:SkillKey2ID(
    strSkillKey
)

参数
strSkillKey

string

 
技能的索引名（KeyName）

返回值
uint32

 
执行成功则返回对应技能的ID

执行失败或没有对应技能则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local skillKey = "冰爆漩涡4级"
    local skill_id = lualib:SkillKey2ID(skillKey) --根据技能的索引名（KeyName）获取技能的ID
    if skill_id ~= 0 then
        lualib:SysMsg_SendWarnMsg(player, skillKey.."的技能ID为："..skill_id)
    else
        lualib:SysMsg_SendWarnMsg(player, skillKey.."的技能ID查询失败")
    end
end

--此示例代码运行成功如下图所示（获取技能“冰爆漩涡4级”的ID）。

SkillKey2ID.png
<上一篇:设置玩家技能的熟练度下一篇:获取技能的配置表结构>
Skill_DataRow
获取技能的配置表结构

更新时间：2022-03-14 00:00:00
此函数根据技能的索引名（KeyName）获取该技能的配置表结构。

语法
Luacopy 复制
lualib:Skill_DataRow(
    skill_key
)
参数
skill_key

string

 
技能的索引名（KeyName）

返回值
table

 
技能的配置表结构

其定义请参见Skill模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("Skill_DataRow = "..json.encode(lualib:Skill_DataRow("十字冰刃"))) --获取技能“十字冰刃”的配置表结构

--此示例代码运行成功如下图所示。

Skill_DataRow.png
<上一篇:根据技能的索引名获取技能的ID
Amulet
获取玩家当前装备的法宝（守护）

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的法宝（守护）的GUID。

语法
Luacopy 复制
lualib:Amulet(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的法宝（守护）的GUID

执行出错或没有装备法宝（守护）则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Amulet(player) --获取玩家当前装备的法宝（守护）的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备法宝的GUID："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了法宝（守护）时，此示例代码运行成功如下图所示。

Amulet_3.png

--当玩家未装备法宝（守护）时，此示例代码运行成功如下图所示。

Armor_2.png
下一篇:让玩家穿装备>
ApplyEquipEx
让玩家穿装备

更新时间：2022-05-05 00:00:00
此函数让玩家根据装备的索引名（KeyName）穿戴装备。

玩家只能穿戴玩家自己背包中的装备。

note_icon 备注
此接口与接口TakeOn作用相同。

语法
Luacopy 复制
lualib:ApplyEquipEx(
    strPlayer,
    strItemKey
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
装备的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    --让玩家穿戴装备“战士100神衣服(男)”
    if lualib:ApplyEquipEx(player,"战士100神衣服(男)") then
        lualib:SysMsg_SendWarnMsg(player,"装备战士100神衣服(男)穿戴成功")
    else
        lualib:SysMsg_SendWarnMsg("装备不存在或穿戴失败")
    end
end

--此示例代码运行前效果如下图所示。

TakeOn.png

--此示例代码运行后效果如下图所示，同时游戏对话框中会输出如下内容。

TakeOn_2.png

TakeOn_3.png
<上一篇:获取玩家当前装备的法宝（守护）下一篇:获取玩家当前装备的衣服>
Armor
获取玩家当前装备的衣服

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的衣服的GUID。

语法
Luacopy 复制
lualib:Armor(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的衣服的GUID

执行出错或没有装备衣服则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Armor(player) --获取玩家当前装备的衣服的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备衣服的GUID："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了衣服时，此示例代码运行成功如下图所示。

Armor_3.png

--当玩家未装备衣服时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:让玩家穿装备下一篇:判断某件装备能否被修理>
CanFixEquip
判断某件装备能否被修理

更新时间：2022-07-18 00:00:00
此函数判断某件装备能否被修理。

某件物品能被修理需要同时满足以下条件：

1.该物品的主类型为装备；

2.该物品“可否修理”字段的配置为“是”；

   对应字段的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→不能从事的行为区域。

   CanFixEquip.png

3.该物品的耐久值大于0且小于最大耐久值。

语法
Luacopy 复制
lualib:CanFixEquip(
    strItem,
    iType
)

参数
strItem

string

 
装备的GUID

iType

int32

 
修理类型

1普通修理（修理后最大耐久值会下降）

2特殊修理（修理后最大耐久值不会下降）

返回值
bool

 
true能被修理

false不能被修理

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下所示。
--1.物品“小飞鞋”的主类型为杂货；
--2.物品“战士10白武器”的主类型为装备但不可维修；
--3.物品“战士10红武器”的主类型为装备且可以维修。
local itemlist = lualib:BagItemList(player, true, false, false) --获取玩家背包中所有物品的GUID列表
if itemlist ~= nil and itemlist ~= nil then
    for i = 1, #itemlist do
        local GUID = itemlist[i]
        local Keyname = lualib:KeyName(GUID) --获取背包中所有物品的索引名
        lualib:Item_SetDurability("", GUID, lualib:Item_GetMaxDurability("", GUID)/2) --设置物品的当前耐久值为最大耐久值的二分之一
        --判断物品是否可被修理
        lualib:SysMsg_SendWarnMsg(player, Keyname.."是否可被普修："..tostring(lualib:CanFixEquip(GUID, 1)))
        lualib:SysMsg_SendWarnMsg(player, Keyname.."是否可被特修："..tostring(lualib:CanFixEquip(GUID, 2)))
    end
end

--此示例代码运行成功如下图所示。

CanFixEquip_2.png
<上一篇:获取玩家当前装备的衣服下一篇:让玩家脱下装备>
DisableEquip
让玩家脱下装备

更新时间：2022-05-05 00:00:00
此函数让玩家根据装备的索引名（KeyName）脱下装备。

note_icon 备注
此接口与接口TakeOff作用相同。

语法
Luacopy 复制
lualib:DisableEquip(
    strPlayer,
    strItemKey
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
装备的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    --让玩家脱下装备“战士100神戒指”
    if lualib:DisableEquip(player,"战士100神戒指") then
        lualib:SysMsg_SendWarnMsg(player,"装备战士100神戒指成功脱下")
    else
        lualib:SysMsg_SendWarnMsg(player,"装备不存在或脱下失败")
    end
end

--此示例代码运行前效果如下图所示。

TakeOff.png

--此示例代码运行后效果如下图所示，同时游戏对话框中会输出如下内容。

TakeOff_2.png

TakeOff_3.png
<上一篇:判断某件装备能否被修理下一篇:获取角色的装备负重>
EquipWeight
获取角色的装备负重

更新时间：2021-11-19 00:00:00
此函数获取角色的装备负重。

语法
Luacopy 复制
lualib:EquipWeight(
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

 
是否获取对应角色的装备负重值上限

true是（即获取对应角色的装备负重值上限）

false否（即获取对应角色的当前装备负重值）

返回值
int32

 对应角色的装备负重值上限/当前装备负重值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,guid)
    local Topweight = lualib:EquipWeight(guid,true) --获取玩家的装备负重值上限
    local Newweight = lualib:EquipWeight(guid,false) --获取玩家的当前装备负重值
    lualib:SysWarnMsg(player,"您的装备负重上限为："..Topweight)
    lualib:SysWarnMsg(player,"您的当前装备负重为："..Newweight)
end

--此示例代码运行成功如下图所示。

EquipWeight.png
<上一篇:让玩家脱下装备下一篇:获取装备当前扩展属性条目数>
Equip_GetExtNum
获取装备当前扩展属性条目数

更新时间：2021-11-19 00:00:00
此函数获取装备当前扩展属性条目数。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_GetExtNum(
    player_guid,
    item_guid
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

返回值
int

 
装备当前扩展属性条目数

取值范围为[0，10]

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local GUID = lualib:Armor(player) --获取玩家当前装备的衣服的GUID
    lualib:SysMsg_SendWarnMsg(player, "当前装备衣服的扩展属性数目为："..tostring(lualib:Equip_GetExtNum(player, GUID))) --获取装备衣服当前扩展属性条目数
end

--此示例代码运行成功如下图所示。

Equip_GetExtNum.png
<上一篇:获取角色的装备负重下一篇:获取装备的某条扩展属性>
Equip_GetExtProp
获取装备的某条扩展属性

更新时间：2021-11-22 00:00:00
此函数获取装备的某条扩展属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_GetExtProp(
    player_guid,
    item_guid,
    index
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

index

uint16

 
属性索引

取值范围为[0，9]（共10条）

返回值
table

 
返回数据列表，存储在lua表中

数据列表中包括两个数据（0存储属性，1存储数据）

返回的table格式为{[0] = 属性的枚举值/属性的类型值,[1] = 属性值 }

具体请参见角色属性类型定义页面

note_icon 备注
若未获取到指定装备的GUID，则返回的table格式为{}。

若指定装备没有该条属性，则返回的table格式为{[1]=0,[0]=0}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local GUID = lualib:Armor(player) --获取玩家装备着的衣服的GUID
    lualib:Equip_SetExtProp("", GUID, 1, 15, 20) --设置衣服索引为1的扩展属性
    local list = lualib:Equip_GetExtProp(player,GUID,1) --获取衣服索引为1的扩展属性
    lualib:SysMsg_SendWarnMsg(player,"属性值："..list[1])
    lualib:SysMsg_SendWarnMsg(player,"属性的枚举值："..list[0])
end

--此示例代码运行成功如下图所示。

Equip_GetExtProp.png
<上一篇:获取装备当前扩展属性条目数下一篇:获取装备当前鉴定属性条目数>
Equip_GetIdentifyNum
获取装备当前鉴定属性条目数

更新时间：2021-11-19 00:00:00
此函数获取装备当前鉴定属性条目数。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_GetIdentifyNum(
    player_guid,
    item_guid
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

返回值
int

 
装备当前鉴定属性的条目数

取值范围为[0，3]

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local item_guid = lualib:Player_GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    local item_name = lualib:Player_GetEquipName(player,lua_site_shoes)
    local ident_num = lualib:Equip_GetIdentifyNum(player,item_guid)
    lualib:SysMsg_SendWarnMsg(player,item_name.."的鉴定条数为："..ident_num)
end

--此示例代码运行成功如下图所示。

Equip_GetIdentifyNum.png
<上一篇:获取装备的某条扩展属性下一篇:获取装备的某条鉴定属性>
Equip_GetIdentifyProp
获取装备的某条鉴定属性

更新时间：2021-11-22 00:00:00
此函数获取装备的某条鉴定属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_GetIdentifyProp(
    player_guid,
    item_guid,
    index
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

index

uint16

 
属性索引

取值范围为[0，2]（共3条）

返回值
table

 
返回数据列表，存储在lua表中

数据列表中包括两个数据（0存储属性，1存储数据）

返回的table格式为{[0] = 属性的枚举值/属性的类型值,[1] = 属性值 }

具体请参见角色属性类型定义页面

note_icon 备注
若未获取到指定装备的GUID，则返回的table格式为{}。

若指定装备没有该条属性，则返回的table格式为{[1]=0,[0]=0}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local GUID = lualib:Armor(player) --获取玩家装备着的衣服的GUID
    lualib:Equip_SetIdentifyProp(player, GUID, 0, 10, 1, 15, 2, 20) --设置衣服的鉴定属性
    local list = lualib:Equip_GetIdentifyProp(player,GUID,1) --获取衣服索引为1的鉴定属性
    lualib:SysMsg_SendWarnMsg(player,"属性值："..list[1])
    lualib:SysMsg_SendWarnMsg(player,"属性的枚举值："..list[0])
end

--此示例代码运行成功如下图所示。

Equip_GetIdentifyProp.png
<上一篇:获取装备当前鉴定属性条目数下一篇:获取装备的幸运诅咒值>
Equip_GetLuckCurse
获取装备的幸运诅咒值

更新时间：2021-11-19 00:00:00
此函数根据装备的GUID获取装备的幸运诅咒值。

语法
Luacopy 复制
lualib:Equip_GetLuckCurse(
    strPlayer,
    strItem
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
装备的GUID

返回值
int16

 
对应装备的幸运诅咒值

正数幸运值

负数诅咒值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local itemguid = lualib:Player_GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    local value = lualib:Equip_GetLuckCurse(player,itemguid) --获取鞋子的幸运诅咒值
    lualib:SysMsg_SendWarnMsg(player,"幸运诅咒值："..value)
end

--此示例代码运行成功如下图所示。

Equip_GetLuckCurse.png
<上一篇:获取装备的某条鉴定属性下一篇:获取装备的某条品质属性>
Equip_GetQualProp
获取装备的某条品质属性

更新时间：2021-11-22 00:00:00
此函数获取装备的某条品质属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_GetQualProp(
    player_guid,
    item_guid,
    index
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

index

uint16

 
属性索引

取值范围[0-5]（共6条）

返回值
table

 
返回数据列表，存储在lua表中

数据列表中包括两个数据（0存储属性，1存储数据）

返回的table格式为{[0] = 属性的枚举值/属性的类型值,[1] = 属性值 }

具体请参见角色属性类型定义页面

note_icon 备注
若未获取到指定装备的GUID，则返回的table格式为{}。

若指定装备没有该条属性，则返回的table格式为{[1]=0,[0]=0}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local GUID = lualib:Armor(player) --获取玩家装备着的衣服的GUID
    lualib:Equip_SetQualProp(player, GUID, 1, 11, 111) --设置衣服索引为1的品质属性
    local list = lualib:Equip_GetQualProp(player,GUID,1) --获取衣服索引为1的品质属性
    lualib:SysMsg_SendWarnMsg(player,"属性值："..list[1])
    lualib:SysMsg_SendWarnMsg(player,"属性的枚举值："..list[0])
end

--此示例代码运行成功如下图所示。

Equip_GetQualProp.png
<上一篇:获取装备的幸运诅咒值下一篇:获取装备精炼等级>
Equip_GetRefineLevel
获取装备精炼等级

更新时间：2021-11-19 00:00:00
此函数获取装备精炼等级。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_GetRefineLevel(
    player_guid,
    item_guid
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

返回值
uint8

 对应装备的精炼等级
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local itemguid = lualib:Player_GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    lualib:SysMsg_SendWarnMsg(player,"当前装备的精炼等级为:"..lualib:Equip_GetRefineLevel(player,itemguid)) --获取鞋子的精炼等级并打印
end

--此示例代码运行成功如下图所示。

Equip_GetRefineLevel.png
<上一篇:获取装备的某条品质属性下一篇:获取装备的精炼属性>
Equip_GetRefineProp
获取装备的精炼属性

更新时间：2021-11-19 00:00:00
此函数获取装备的精炼属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_GetRefineProp(
    player_guid,
    item_guid
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

返回值
table

 
返回数据列表，存储在lua表中

数据列表中包括两个数据（key存储属性，value存储数据）

返回的table格式为{[key] =value}

note_icon 备注
若未获取到指定装备的GUID或指定装备没有精炼属性，则返回的table格式为{}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local list = lualib:Equip_GetRefineProp(player, lualib:Player_GetItemGuid(player,lua_site_helmet)) --获取玩家装备着的头盔的精炼属性
    for key,value in pairs(list) do
        lualib:SysMsg_SendWarnMsg(player,"属性的枚举值为"..key)
        lualib:SysMsg_SendWarnMsg(player,"属性值为"..value)
    end
end

--此示例代码运行成功如下图所示。

Equip_GetRefineProp.png
<上一篇:获取装备精炼等级下一篇:设置装备的某条扩展属性>
Equip_SetExtProp
设置装备的某条扩展属性

更新时间：2021-11-22 00:00:00
此函数设置装备的某条扩展属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_SetExtProp(
    player_guid,
    item_guid,
    index,
    attr_name,
    attr_value
)

参数
player_guid

string

 
该参数现已无意义

默认填""即可

item_guid

string

 
装备的GUID

index

uint16

 
属性索引

取值范围为[0-9]

attr_name

uint16

 
属性的枚举值/属性的类型值

具体请参见角色属性类型定义页面

caution_icon 注意
不可设置动态属性（即枚举值300-499的属性）。

attr_value

int16

 
属性值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local itemguid = lualib:GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    if lualib:Equip_SetExtProp(player,itemguid,2,10,20) then
        lualib:SysMsg_SendWarnMsg(player,"成功设置属性")
    else
        lualib:SysMsg_SendWarnMsg(player,"设置属性失败")
    end
end

--此示例代码运行成功如下图所示。

Equip_SetExtProp.png
<上一篇:获取装备的精炼属性下一篇:设置装备的鉴定属性>
Equip_SetIdentifyProp
设置装备的鉴定属性

更新时间：2021-11-22 00:00:00
此函数设置装备的鉴定属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_SetIdentifyProp(
    player_guid,
    item_guid,
    att0,
    v0,
    att1,
    v1,
    att2,
    v2
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

att0

uint16

 
属性0的枚举值/属性0的类型值

具体请参见角色属性类型定义页面

v0

uint16

 
属性0的值

att1

uint16

 
属性1的枚举值/属性1的类型值

具体请参见角色属性类型定义页面

v1

uint16

 
属性1的值

att2

uint16

 
属性2的枚举值/属性2的类型值

具体请参见角色属性类型定义页面

v2

uint16

 
属性2的值

caution_icon 注意
不可设置动态属性（即枚举值300-499的属性）。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local GUID = lualib:Armor(player) --获取玩家装备着的衣服的GUID
    lualib:Equip_SetIdentifyProp(player, GUID, 0, 10, 1, 15, 2, 20) --设置衣服的鉴定属性
    local list = lualib:Equip_GetIdentifyProp(player,GUID,1) --获取衣服索引为1的鉴定属性
    lualib:SysMsg_SendWarnMsg(player,"属性值："..list[1])
    lualib:SysMsg_SendWarnMsg(player,"属性的枚举值："..list[0])
end

--此示例代码运行成功如下图所示。

Equip_GetIdentifyProp.png
<上一篇:设置装备的某条扩展属性下一篇:设置装备的幸运诅咒值>
Equip_SetLuckCurse
设置装备的幸运诅咒值

更新时间：2021-11-19 00:00:00
此函数根据装备的GUID设置该装备的幸运诅咒值。

note_icon 备注
此接口只能设置已经穿戴在玩家身上的装备的幸运诅咒值。

语法
Luacopy 复制
lualib:Equip_SetLuckCurse(
    strPlayer,
    strItem,
    iValue
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
装备的GUID

iValue

int32

 
幸运诅咒值

正数幸运值

负数诅咒值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local itemguid = lualib:GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    local value = 36
    local str = ""
    if value > 0 then
        str = "幸运"
    elseif value < 0 then
        str = "诅咒"
    end
	--设置鞋子的幸运诅咒值
    if lualib:Equip_SetLuckCurse(player,itemguid,value) then
        lualib:SysMsg_SendWarnMsg(player,"成功设置"..str.."的值为"..value)
    else
        lualib:SysMsg_SendWarnMsg(player,"设置"..str.."值失败")
    end
end

--此示例代码运行成功如下图所示。

Equip_SetLuckCurse.png
<上一篇:设置装备的鉴定属性下一篇:设置装备的某条品质属性>
Equip_SetQualProp
设置装备的某条品质属性

更新时间：2021-11-22 00:00:00
此函数设置装备的某条品质属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_SetQualProp(
    player_guid,
    item_guid,
    index,
    attr_name,
    attr_value
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

index

uint16

 
品质属性索引

取值范围[0-5]（共6条）

attr_name

uint16

 
属性的枚举值/属性的类型值

具体请参见角色属性类型定义页面

caution_icon 注意
不可设置动态属性（即枚举值300-499的属性）。

attr_value

int16

 
属性值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local itemguid = lualib:GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    if lualib:Equip_SetQualProp(player,itemguid,1,3,57) then
        lualib:SysMsg_SendWarnMsg(player,"成功设置品质属性")
    else
        lualib:SysMsg_SendWarnMsg(player,"设置品质属性失败")
    end
end

--此示例代码运行成功如下图所示。

Equip_SetQualProp.png
<上一篇:设置装备的幸运诅咒值下一篇:设置装备的精炼等级>
Equip_SetRefineLevel
设置装备的精炼等级

更新时间：2021-11-19 00:00:00
此函数装备的精炼等级。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_SetRefineLevel(
    player_guid,
    item_guid,
    level
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

level

uint8

 
精炼等级

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local itemguid = lualib:GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    --设置鞋子的精炼等级为10
    local level = 10
    if lualib:Equip_SetRefineLevel(player,itemguid,level) then
        lualib:SysMsg_SendWarnMsg(player,"成功设置精炼等级为"..level.."级")
    else
        lualib:SysMsg_SendWarnMsg(player,"设置精炼等级失败")
    end
end

--此示例代码运行成功如下图所示。

Equip_SetRefineLevel.png
<上一篇:设置装备的某条品质属性下一篇:设置装备的精炼属性>
Equip_SetRefineProp
设置装备的精炼属性

更新时间：2021-11-22 00:00:00
此函数装备的精炼属性。

note_icon 备注
只有装备有此属性。

语法
Luacopy 复制
lualib:Equip_SetRefineProp(
    player_guid,
    item_guid,
    attr_name,
    attr_value
)

参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

attr_name

uint16

 
属性的枚举值/属性的类型值

具体请参见角色属性类型定义页面

caution_icon 注意
不可设置动态属性（即枚举值300-499的属性）。

attr_value

int16

 
属性值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local itemguid =  lualib:GetEquipGuid(player,lua_site_shoes) --获取玩家装备着的鞋子的GUID
    if lualib:Equip_SetRefineProp(player,itemguid,3,20) then
        lualib:SysMsg_SendWarnMsg(player,"成功设置精炼属性")
    else
        lualib:SysMsg_SendWarnMsg(player,"设置精炼属性失败")
    end
end

--此示例代码运行成功如下图所示。

GetEquipGuid.png
<上一篇:设置装备的精炼等级下一篇:获取玩家当前装备的宝石>
Gem
获取玩家当前装备的宝石

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的宝石的GUID。

语法
Luacopy 复制
lualib:Gem(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的宝石的GUID

执行出错或没有装备宝石则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Gem(player) --获取玩家当前装备的宝石的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备的宝石GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了宝石时，此示例代码运行成功如下图所示。

Gem.png

--当玩家未装备宝石时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:设置装备的精炼属性下一篇:获取角色身上指定套装中装备数量（扩展）>
GetEquipSuitCountEx
获取角色身上指定套装中装备数量（扩展）

更新时间：2022-07-18 00:00:00
此函数根据套装表中的“计算套装件数类型”字段的配置的计算方式来计算角色身上指定套装中装备数量。

该字段的访问路径为：游戏工具平台→游戏配置→装备&道具→套装表→套装信息区域。

GetEquipSuitCountEx_3.png
语法
Luacopy 复制
lualib:GetEquipSuitCountEx(
    player_guid,
    equip_guid,
    item_id,
    suit_id
)
参数
player_guid

string

 
玩家角色的GUID

equip_guid

string

 
装备的GUID

item_id

uint16

 
装备的物品模板ID

suit_id

uint16

 
套装ID

note_icon 备注
equip_guid、item_id和suit_id三个参数填写任意一个即可(其余字符串类型的参数填""，数值类型的参数填0)。

返回值
uint8

 
角色身上指定套装中的装备数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendWarnMsg(player, "装备指定的套装数为"..lualib:GetEquipSuitCountEx(player, lualib:Item_GetBySite(player, 1), 0, 0))
lualib:SysMsg_SendWarnMsg(player, "物品id指定的套装数为"..lualib:GetEquipSuitCountEx(player, "", 606, 0))
lualib:SysMsg_SendWarnMsg(player, "套装id指定的套装数为"..lualib:GetEquipSuitCountEx(player, "", 0, 11))

--此示例代码运行成功如下图所示。

GetEquipSuitCountEx.png
<上一篇:获取玩家当前装备的宝石下一篇:获取角色身上指定套装中装备数量>
GetEquipSuitCount
获取角色身上指定套装中装备数量

更新时间：2021-11-19 00:00:00
此函数按数量计数获取角色身上指定套装中装备数量。

语法
Luacopy 复制
lualib:GetEquipSuitCount(
    player_guid,
    equip_guid,
    item_id,
    suit_id
)

参数
player_guid

string

 
玩家角色的GUID

equip_guid

string

 
装备的GUID

item_id

uint16

 
装备的物品模板ID

suit_id

uint16

 
套装ID

note_icon 备注
equip_guid、item_id和suit_id三个参数填写任意一个即可(其余字符串类型的参数填""，数值类型的参数填0)。

返回值
uint8

 角色身上指定套装中的装备数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示（玩家装备了2个类型相同的物品）。

GetEquipSuitCount.png
local GUID = lualib:Wrist(player, 0) --获取角色装备的左护腕GUID
lualib:SysMsg_SendWarnMsg(player, "获取套装装备数量："..tostring(lualib:GetEquipSuitCount(player, GUID, 0, 0))) --获取角色装备的左护腕所在的套装中的装备数量

--此示例代码运行成功如下图所示。

GetEquipSuitCount_2.png
<上一篇:获取角色身上指定套装中装备数量（扩展）下一篇:根据套装ID获取套装装备列表ID>
GetSuitItemListByID
根据套装ID获取套装装备列表ID

更新时间：2025-01-22 00:00:00
此函数根据套装ID获取套装装备列表ID。

语法
Luacopy 复制
lualib:GetSuitItemListByID(
    suit_id
)
参数
suit_id

UINT16

 
套装ID

返回值
table

 
执行成功则返回对应的套装装备列表ID（存储在lua表中），执行失败则返回空表。

table格式为{[1] = 套装装备ID,[2] = 套装装备ID}。

例如：{[1] = 212206, [2] = 212207}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local t_equip = lualib:GetSuitItemListByID(11)
    lualib:Warn("该套装包含的装备ID表为"..serialize(t_equip))
end

--执行示例代码，如下图所示正确获取了套装内包含的装备ID。

GetSuitItemListByID.png

GetSuitItemListByID_2.png

GetSuitItemListByID_3.png
<上一篇:获取角色身上指定套装中装备数量下一篇:获取玩家当前装备的头盔>
Helmet
获取玩家当前装备的头盔

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的头盔的GUID。

语法
Luacopy 复制
lualib:Helmet(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的头盔的GUID

执行出错或没有装备头盔则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Helmet(player) --获取玩家当前装备的头盔的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备的头盔GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了头盔时，此示例代码运行成功如下图所示。

Helmet.png

--当玩家未装备头盔时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:根据套装ID获取套装装备列表ID下一篇:获取玩家当前装备的符咒>
JuJu
获取玩家当前装备的符咒

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的符咒的GUID。

语法
Luacopy 复制
lualib:JuJu(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的符咒的GUID

执行出错或没有装备符咒则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:JuJu(player) --获取玩家当前装备的符咒的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备的符咒GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了符咒时，此示例代码运行成功如下图所示。

JuJu.png

--当玩家未装备符咒时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家当前装备的头盔下一篇:获取玩家当前装备的勋章>
Medal
获取玩家当前装备的勋章

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的勋章的GUID。

语法
Luacopy 复制
lualib:Medal(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的勋章的GUID

执行出错或没有装备勋章则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Medal(player) --获取玩家当前装备的勋章的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备的勋章GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了勋章时，此示例代码运行成功如下图所示。

Medal.png

--当玩家未装备勋章时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家当前装备的符咒下一篇:获取玩家当前装备的坐骑>
Mount
获取玩家当前装备的坐骑

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的坐骑的GUID。

语法
Luacopy 复制
lualib:Mount(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的坐骑的GUID

执行出错或没有装备坐骑则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Mount(player) --获取玩家当前装备的坐骑的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备的坐骑GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了坐骑时，此示例代码运行成功如下图所示。

Mount.png

--当玩家未装备坐骑时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家当前装备的勋章下一篇:获取玩家当前装备的项链>
Necklace
获取玩家当前装备的项链

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的项链的GUID。

语法
Luacopy 复制
lualib:Necklace(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的项链的GUID

执行出错或没有装备项链则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Necklace(player) --获取玩家当前装备的项链的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备的项链GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了项链时，此示例代码运行成功如下图所示。

Necklace.png

--当玩家未装备项链时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家当前装备的坐骑下一篇:修理玩家所有装备>
Player_FixEquip
修理玩家所有装备

更新时间：2022-07-18 00:00:00
此函数修理玩家所有装备。

某件物品能被修理需要同时满足以下条件：

1.该物品的主类型为装备；

2.该物品“可否修理”字段的配置为“是”；

   对应字段的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→不能从事的行为区域。

   CanFixEquip.png

3.该物品的耐久值大于0且小于最大耐久值。

语法
Luacopy 复制
lualib:Player_FixEquip(
    strPlayer,
    bAdv
)

参数
strPlayer

string

 
玩家角色的GUID

bAdv

bool

 
是否特修

true是（即特修该装备，修理后最大耐久值不会下降）

false否（即普修该装备，修理后最大耐久值会下降）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Wrist(player, 0) --获取角色装备的左护腕GUID
local GUID2 = lualib:Wrist(player, 1) --获取角色装备的右护腕GUID
lualib:SysMsg_SendWarnMsg(player, "左护腕的初始最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID1))) --获取角色左护腕的初始最大耐久
lualib:SysMsg_SendWarnMsg(player, "左护腕的当前耐久为："..tostring(lualib:Item_GetDurability("", GUID1))) --获取角色左护腕的当前耐久
lualib:SysMsg_SendWarnMsg(player, "右护腕的初始最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID2))) --获取角色右护腕的初始最大耐久
lualib:SysMsg_SendWarnMsg(player, "右护腕的当前耐久为："..tostring(lualib:Item_GetDurability("", GUID2))) --获取角色右护腕的当前耐久
lualib:SysMsg_SendWarnMsg(player, "设置左护腕当前耐久："..tostring(lualib:Item_SetDurability("", GUID1, 100))) --设置角色左护腕的当前耐久为100
lualib:SysMsg_SendWarnMsg(player, "设置右护腕当前耐久："..tostring(lualib:Item_SetDurability("", GUID2, 10))) --设置角色右护腕的当前耐久为10
lualib:Player_FixEquip(player, true) --特修玩家所有装备
lualib:SysMsg_SendWarnMsg(player, "左护腕的特修后最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID1))) --获取角色左护腕的特修后最大耐久
lualib:SysMsg_SendWarnMsg(player, "左护腕的特修后当前耐久为："..tostring(lualib:Item_GetDurability("", GUID1))) --获取角色左护腕的特修后当前耐久
lualib:SysMsg_SendWarnMsg(player, "右护腕的特修后最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID2))) --获取角色右护腕的特修后最大耐久
lualib:SysMsg_SendWarnMsg(player, "右护腕的特修后当前耐久为："..tostring(lualib:Item_GetDurability("", GUID2))) --获取角色右护腕的特修后当前耐久

--此示例代码运行成功如下图所示（特修后最大耐久值没有下降）。

Player_FixEquip.png

Player_FixEquip_2.png
<上一篇:获取玩家当前装备的项链下一篇:修理玩家指定装备>
Player_FixSingleEquip
修理玩家指定装备

更新时间：2022-07-18 00:00:00
此函数修理玩家指定的装备。

某件物品能被修理需要同时满足以下条件：

1.该物品的主类型为装备；

2.该物品“可否修理”字段的配置为“是”；

   对应字段的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→不能从事的行为区域。

   CanFixEquip.png

3.该物品的耐久值大于0且小于最大耐久值。

语法
Luacopy 复制
lualib:Player_FixSingleEquip(
    strPlayer,
    strItem,
    bAdv
)

参数
strPlayer

string

 
玩家角色的GUID

strItem

string

 
装备的GUID

bAdv

bool

 
是否特修

true是（即特修该装备，修理后最大耐久值不会下降）

false否（即普修该装备，修理后最大耐久值会下降）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--特修
local GUID1 = lualib:Wrist(player, 0) --获取角色装备的左护腕GUID
lualib:SysMsg_SendWarnMsg(player, "左护腕的初始最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID1))) --获取角色左护腕的初始最大耐久
lualib:SysMsg_SendWarnMsg(player, "左护腕的当前耐久为："..tostring(lualib:Item_GetDurability("", GUID1))) --获取角色左护腕的当前耐久
lualib:SysMsg_SendWarnMsg(player, "设置左护腕当前耐久："..tostring(lualib:Item_SetDurability("", GUID1, 100))) --设置角色左护腕的当前耐久为100
lualib:Player_FixEquip(player, true) --特修角色左护腕
lualib:SysMsg_SendWarnMsg(player, "左护腕的特修后最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID1))) --获取角色左护腕的特修后最大耐久
lualib:SysMsg_SendWarnMsg(player, "左护腕的特修后当前耐久为："..tostring(lualib:Item_GetDurability("", GUID1))) --获取角色左护腕的特修后当前耐久

--此示例代码运行成功如下图所示（特修后最大耐久值没有下降）。

Player_FixSingleEquip.png
--普修
local GUID1 = lualib:Wrist(player, 0) --获取角色装备的左护腕GUID
lualib:SysMsg_SendWarnMsg(player, "左护腕的初始最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID1))) --获取角色左护腕的初始最大耐久
lualib:SysMsg_SendWarnMsg(player, "左护腕的当前耐久为："..tostring(lualib:Item_GetDurability("", GUID1))) --获取角色左护腕的当前耐久
lualib:SysMsg_SendWarnMsg(player, "设置左护腕当前耐久："..tostring(lualib:Item_SetDurability("", GUID1, 100))) --设置角色左护腕的当前耐久为100
lualib:Player_FixEquip(player, false) --普修角色左护腕
lualib:SysMsg_SendWarnMsg(player, "左护腕的普修后最大耐久为："..tostring(lualib:Item_GetMaxDurability("", GUID1))) --获取角色左护腕的普修后最大耐久
lualib:SysMsg_SendWarnMsg(player, "左护腕的普修后当前耐久为："..tostring(lualib:Item_GetDurability("", GUID1))) --获取角色左护腕的普修后当前耐久

--此示例代码运行成功如下图所示（普修后最大耐久值下降）。

Player_FixSingleEquip_2.png
<上一篇:修理玩家所有装备下一篇:获取玩家某装备栏中装备的物品的GUID>
Player_GetEquipGuid
获取玩家某装备栏中装备的物品的GUID

更新时间：2021-11-19 00:00:00
此函数获取玩家某装备栏中装备的物品的GUID。

语法
Luacopy 复制
lualib:Player_GetEquipGuid(
    strPlayer,
    wSite
)

参数
strPlayer

string

 
玩家角色的GUID

wSite

uint16

 
装备位

请参考角色装备位类型定义

返回值
string

 对应装备位上的物品的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local wsite = 5
    lualib:SysMsg_SendWarnMsg(player,"当前装备衣服的GUID为：".. lualib:Player_GetEquipGuid(player,wsite)) --获取玩家衣服装备位上的物品的GUID
end

--此示例代码运行成功如下图所示。

Armor_3.png
<上一篇:修理玩家指定装备下一篇:获取玩家某装备栏中装备的物品的名称>
Player_GetEquipName
获取玩家某装备栏中装备的物品的名称

更新时间：2021-11-19 00:00:00
此函数获取玩家某装备栏中装备的物品的的名称（Name）。

语法
Luacopy 复制
lualib:Player_GetEquipName(
    strPlayer,
    wSite
)

参数
strPlayer

string

 
玩家角色的GUID

wSite

uint16

 
装备位

请参考角色装备位类型定义

返回值
string

 对应装备位上的物品的名称（Name）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--执行前提：玩家在衣服装备位上穿戴了装备“神兵◆憾地战甲”。
Player_GetEquipName.png
function Warnprint(npc,player)
    local wsite = 5
    lualib:SysMsg_SendWarnMsg(player,"当前装备衣服的Name为：".. lualib:Player_GetEquipName(player,wsite)) --获取玩家衣服装备位上的物品的名称
end

--此示例代码运行成功如下图所示。

Player_GetEquipName_2.png
<上一篇:获取玩家某装备栏中装备的物品的GUID下一篇:获取玩家某装备位上的物品的GUID>
Player_GetItemGuid
获取玩家某装备位上的物品的GUID

更新时间：2021-11-19 00:00:00
此函数获取玩家某装备位上的物品的GUID。

装备位包括装备栏的装备位、背包的装备位、仓库的装备位、高级仓库的装备位和自定义装备位。

参考 eRoleSite

语法
Luacopy 复制
lualib:Player_GetItemGuid(
    strPlayer,
    wSite
)

参数
strPlayer

string

 
对象的GUID

wSite

uint16

 
装备位

请参考角色装备位类型定义

返回值
string

 对应装备位上的物品的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local wsite = 12
    lualib:SysMsg_SendWarnMsg(player,"当前装备勋章的GUID为：".. lualib:Player_GetItemGuid(player,wsite)) --获取玩家勋章装备位上的物品的GUID
end

--此示例代码运行成功如下图所示。

Medal.png
<上一篇:获取玩家某装备栏中装备的物品的名称下一篇:获取玩家当前装备的戒指>
Ring
获取玩家当前装备的戒指

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备在对应装备位上的戒指的GUID。

语法
Luacopy 复制
lualib:Ring(
    strPlayer,
    sequ
)

参数
strPlayer

string

 
玩家角色的GUID

sequ

uint8

 
戒指装备的位置

0左边装备位

1右边装备位

返回值
string

 
执行成功则返回对应装备位上的戒指的GUID

执行出错或对应装备位没有装备戒指则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local sequ = 0
    local guid = lualib:Ring(player, sequ) --获取玩家当前左边装备位上的戒指的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备戒指的GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家在左边装备位上装备了戒指时，此示例代码运行成功如下图所示。

Ring.png

--当玩家未在左边装备位上装备戒指时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家某装备位上的物品的GUID下一篇:为自定义装备子类型设置多个自定义装备位>
SetCustomEquipSites
为自定义装备子类型设置多个自定义装备位

更新时间：2021-11-22 00:00:00
此函数为自定义装备子类型设置多个自定义装备位。

note_icon 备注
若自定义装备子类型未设置自定义装备位，则默认自定义装备子类型n对应的装备位为用户自定义装备位n（n∈[0,149]）。

语法
Luacopy 复制
lualib:SetCustomEquipSites(
    subtype2sites
)
参数
subtype2sites

table

 
自定义装备子类型对应自定义装备位的列表

具体请参见角色装备位类型定义页面和道具物品主类型子类型定义页面

table格式：{

[自定义装备子类型1的枚举值] = {自定义装备位1的枚举值, 自定义装备位2的枚举值, 自定义装备位3的枚举值},

[自定义装备子类型2的枚举值] = {自定义装备位4的枚举值, 自定义装备位5的枚举值}

}

例如：{[50] = {442, 443, 444}, [51] = {445, 446}}

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--执行前提1：下图中装备位由上而下依次为用户自定义装备位18、用户自定义装备位19和用户自定义装备位20。
--执行前提2：装备类型为自定义装备子类型19的装备只能放在用户自定义装备位19中，装备类型为自定义装备子类型20的装备只能放在用户自定义装备位20中。

SetCustomEquipSites_2.png
--设置自定义装备子类型19对应的装备位为用户自定义装备位20，自定义装备子类型20对应的装备位为用户自定义装备位18、用户自定义装备位19和用户自定义装备位20。
lualib:SetCustomEquipSites({[61] = {454},[62] = {452,453,454}})

--装备类型为自定义装备子类型19的装备只能放在用户自定义装备位20中，如下图所示。

SetCustomEquipSites_4.png

--装备类型为自定义装备子类型20的装备可以放在用户自定义装备位18、用户自定义装备位19或者用户自定义装备位20中，如下图所示。

SetCustomEquipSites.png

SetCustomEquipSites_3.png
<上一篇:获取玩家当前装备的戒指下一篇:设置装备位独立爆率>
SetDedicatedDropChance
设置装备位独立爆率

更新时间：2022-07-18 00:00:00
此函数在游戏运行中设置装备位的独立爆率。

此接口仅在“是否开启角色装备位独立爆率”开启下生效，并且可以通过“角色装备位独立爆率”对各个装备位的爆率进行初始设置。

“是否开启角色装备位独立爆率”，“角色装备位独立爆率”可通过游戏工具平台→游戏配置→全局表→全局模板表→掉落相关进行设置。

SetDedicatedDropChance

“角色装备位独立爆率”的格式：如"1:20|2:30"，各装备位以|分隔，分隔的具体装备位配置中，装备位和爆率以:分隔。爆率的单位根据以下设置项决定。

SetDedicatedDropChance_2

语法
Luacopy 复制
lualib:SetDedicatedDropChance(
    site,
    iValue
)
参数
site

uint16

 
装备位

请参考角色装备位类型定义

iValue

int

 
爆率

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:为自定义装备子类型设置多个自定义装备位下一篇:设置角色装备负重>
SetEquipWeight
设置角色装备负重

更新时间：2022-07-18 00:00:00
此函数设置角色装备负重。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetEquipWeight(
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

 
属性值（即要设置的装备负重值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的装备负重值上限）

false否（即修改当前的装备负重值）

note_icon 备注
当角色类型为玩家时，设置装备负重值上限无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetEquipWeight(player, 50, false) --设置角色当前的装备负重值为50
lualib:SetEquipWeight(player, 1000, true) --设置角色的装备负重值上限为1000
<上一篇:设置装备位独立爆率下一篇:获取玩家当前装备的鞋子>
Shoes
获取玩家当前装备的鞋子

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的鞋子的GUID。

语法
Luacopy 复制
lualib:Shoes(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的鞋子的GUID

执行出错或没有装备鞋子则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Shoes(player) --获取玩家当前装备的鞋子的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备的鞋子GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了鞋子时，此示例代码运行成功如下图所示。

Shoes.png

--当玩家未装备鞋子时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:设置角色装备负重下一篇:获取玩家当前装备的腰带（护肩）>
Shoulder
获取玩家当前装备的腰带（护肩）

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的腰带（护肩）的GUID。

语法
Luacopy 复制
lualib:Shoulder(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的腰带（护肩）的GUID

执行出错或没有装备腰带（护肩）则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Shoulder(player) --获取玩家当前装备的腰带（护肩）的GUID
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备腰带的GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了腰带（护肩）时，此示例代码运行成功如下图所示。

Shoulder.png

--当玩家未装备腰带（护肩）时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家当前装备的鞋子下一篇:让玩家脱下装备（扩展）>
TakeOffEx
让玩家脱下装备（扩展）

更新时间：2022-04-29 00:00:00
此函数让玩家根据装备的GUID或者索引名（KeyName）脱下装备。

语法
Luacopy 复制
lualib:TakeOffEx(
    strPlayer,
    strItemInfo
)

参数
strPlayer

string

 
玩家角色的GUID

strItemInfo

string

 
装备的GUID或者装备的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    --让玩家脱下已装备的衣服
    if lualib:TakeOffEx(player,lualib:Armor(player)) then
        lualib:SysMsg_SendWarnMsg(player,"装备"..lualib:Guid2Name(lualib:Armor(player)).."成功脱下")
    else
        lualib:SysMsg_SendWarnMsg(player,"装备不存在或脱下失败")
    end
end

--此示例代码运行前效果如下图所示。

TakeOffEx.png

--此示例代码运行后效果如下图所示，同时游戏对话框中还会打印相关内容。

TakeOffEx_2.png

TakeOffEx_3.png
<上一篇:获取玩家当前装备的腰带（护肩）下一篇:让玩家脱下装备>
TakeOff
让玩家脱下装备

更新时间：2022-04-29 00:00:00
此函数让玩家根据装备的索引名（KeyName）脱下装备。

note_icon 备注
此接口与接口DisableEquip作用相同。

语法
Luacopy 复制
lualib:TakeOff(
    strPlayer,
    strItemKey
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
装备的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    --让玩家脱下装备“战士100神戒指”
    if lualib:TakeOff(player,"战士100神戒指") then
        lualib:SysMsg_SendWarnMsg(player,"装备战士100神戒指成功脱下")
    else
        lualib:SysMsg_SendWarnMsg(player,"装备不存在或脱下失败")
    end
end

--此示例代码运行前效果如下图所示。

TakeOff.png

--此示例代码运行后效果如下图所示，同时游戏对话框中会输出如下内容。

TakeOff_2.png

TakeOff_3.png
<上一篇:让玩家脱下装备（扩展）下一篇:让玩家穿戴装备（扩展）>
TakeOnEx
让玩家穿戴装备（扩展）

更新时间：2022-04-29 00:00:00
此函数让玩家根据装备的GUID或者索引名（KeyName）穿戴装备。

玩家只能穿戴玩家自己背包中的装备。

语法
Luacopy 复制
lualib:TakeOnEx(
    strPlayer,
    strItemInfo,
    iSite
)

参数
strPlayer

string

 
玩家角色的GUID

strItemInfo

string

 
装备的GUID或者装备的索引名（KeyName）

iSite

int

 
装备位

具体请参考角色装备位类型定义

note_icon 备注
仅当装备为护腕或戒指时，此参数才会生效。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:TakeOnEx(player, "战士10白武器1", 1) then --玩家穿戴武器
    lualib:Warn("武器穿戴成功")
end
if lualib:TakeOnEx(player, "战士100神护手", 3) then --玩家穿戴左护腕
    lualib:Warn("护腕左穿戴成功")
end
if lualib:TakeOnEx(player, "战士100神护手", 4) then --玩家穿戴右护腕
    lualib:Warn("护腕右穿戴成功")
end
if lualib:TakeOnEx(player, "战士100神戒指", 10) then --玩家穿戴左戒指
    lualib:Warn("戒指左穿戴成功")
end
if lualib:TakeOnEx(player, "战士100神戒指", 11) then --玩家穿戴右戒指
    lualib:Warn("戒指右穿戴成功")
end

--此示例代码运行成功如下图所示。

TakeOnEx.png
<上一篇:让玩家脱下装备下一篇:让玩家穿戴装备>
TakeOn
让玩家穿戴装备

更新时间：2022-04-29 00:00:00
此函数让玩家根据装备的索引名（KeyName）穿戴装备。

玩家只能穿戴玩家自己背包中的装备。

note_icon 备注
此接口与接口ApplyEquipEx作用相同。

语法
Luacopy 复制
lualib:TakeOn(
    strPlayer,
    strItemKey
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
装备的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    --让玩家穿戴装备“战士100神衣服(男)”
    if lualib:TakeOn(player,"战士100神衣服(男)") then
        lualib:SysMsg_SendWarnMsg(player,"装备战士100神衣服(男)穿戴成功")
    else
        lualib:SysMsg_SendWarnMsg("装备不存在或穿戴失败")
    end
end

--此示例代码运行前效果如下图所示。

TakeOn.png

--此示例代码运行后效果如下图所示，同时游戏对话框中会输出如下内容。

TakeOn_2.png

TakeOn_3.png
<上一篇:让玩家穿戴装备（扩展）下一篇:获取玩家当前装备的武器>
Weapon
获取玩家当前装备的武器

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的武器的GUID。

语法
Luacopy 复制
lualib:Weapon(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的武器的GUID

执行出错或没有装备武器则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Weapon(player) --获取玩家当前装备的武器
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备武器的GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了武器时，此示例代码运行成功如下图所示。

Weapon.png

--当玩家未装备武器时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:让玩家穿戴装备下一篇:获取玩家当前装备的翅膀>
Wings
获取玩家当前装备的翅膀

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备的翅膀的GUID。

语法
Luacopy 复制
lualib:Wings(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回装备的翅膀的GUID

执行出错或没有装备翅膀则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local guid = lualib:Wings(player) --获取玩家当前装备的翅膀
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备翅膀的GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家装备了翅膀时，此示例代码运行成功如下图所示。

Wings.png

--当玩家未装备翅膀时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家当前装备的武器下一篇:获取玩家当前装备的护腕>
Wrist
获取玩家当前装备的护腕

更新时间：2021-11-19 00:00:00
此函数获取玩家当前装备在对应装备位上的护腕的GUID。

语法
Luacopy 复制
lualib:Wrist(
    strPlayer,
    sequ
)

参数
strPlayer

string

 
玩家角色的GUID

sequ

uint8

 
护腕装备的位置

0左边装备位

1右边装备位

返回值
string

 
执行成功则返回对应装备位上的护腕的GUID

执行出错或对应装备位没有装备护腕则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc,player)
    local sequ = 0
    local itemguid = lualib:Wrist(player,sequ) --获取玩家当前左边装备位上的护腕
    if guid ~="" then
        lualib:SysMsg_SendWarnMsg(player,"当前装备护腕的GUID为："..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"执行出错或没有装备")
    end
end

--当玩家在左边装备位上装备了护腕时，此示例代码运行成功如下图所示。

Wrist.png

--当玩家未在左边装备位上装备护腕时，此示例代码运行成功如下图所示。

Armor_2.png
<上一篇:获取玩家当前装备的翅膀
AddExp
给角色添加经验

更新时间：2022-01-20 00:00:00
此函数给角色添加经验。

参考 GetExp

note_icon 备注
此接口与接口Player_AddExp作用相同。

语法
Luacopy 复制
lualib:AddExp(
    strPlayer,
    iExp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家或者英雄的GUID

iExp

double

 
经验数量

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

 
v1.1

 
修改参数iExp的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetExp(player) --获取玩家改变前的经验值
    lualib:Warn("添加前  经验为："..code)

    --给玩家添加10点经验
    if lualib:AddExp(player,10, "添加经验:测试", "测试") then
        lualib:Warn("经验添加成功")
    else
        lualib:Warn("经验添加失败")
    end

    local code = lualib:GetExp(player) --获取玩家改变后的经验值
    lualib:Warn("添加后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

AddExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddExp_2.png

GetExp.png
下一篇:获取角色经验值（字符串版）>
GetExpStr
获取角色经验值（字符串版）

更新时间：2021-11-19 00:00:00
此函数获取角色经验值，返回字符串类型。

语法
Luacopy 复制
lualib:GetExpStr(
    strPlayer
)

参数
strPlayer

string

 
玩家或者英雄的GUID

返回值
string

 对应角色当前的经验值（为字符串格式）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetExpStr(player) --获取玩家改变前的经验值
    lualib:Warn("添加前  经验为："..code)

    --给玩家添加10点经验
    if lualib:Player_AddExpStr(player,"10", "添加经验:测试", "测试") then
        lualib:Warn("经验添加成功")
    else
        lualib:Warn("经验添加失败")
    end

    local code = lualib:GetExpStr(player) --获取玩家改变后的经验值
    lualib:Warn("添加后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

AddExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddExp_2.png

GetExp.png
<上一篇:给角色添加经验下一篇:获取角色经验值>
GetExp
获取角色经验值

更新时间：2021-11-19 00:00:00
此函数获取角色经验值。

参考 AddExp

语法
Luacopy 复制
lualib:GetExp(
    strPlayer
)

参数
strPlayer

string

 
玩家或者英雄的GUID

返回值
double

 对应角色当前的经验值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetExp(player) --获取玩家改变前的经验值
    lualib:Warn("添加前  经验为："..code)

    --给玩家添加10点经验
    if lualib:AddExp(player,10, "添加经验:测试", "测试") then
        lualib:Warn("经验添加成功")
    else
        lualib:Warn("经验添加失败")
    end

    local code = lualib:GetExp(player) --获取玩家改变后的经验值
    lualib:Warn("添加后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

AddExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddExp_2.png

GetExp.png
<上一篇:获取角色经验值（字符串版）下一篇:给角色添加经验（字符串版）>
Player_AddExpStr
给角色添加经验（字符串版）

更新时间：2021-11-19 00:00:00
此函数给角色添加经验。

语法
Luacopy 复制
lualib:Player_AddExpStr(
    strPlayer,
    str_exp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家或者英雄的GUID

str_exp

string

 
经验数量（为字符串格式）

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
function chuangjian(npc,player)
    local code = lualib:GetExpStr(player) --获取玩家改变前的经验值
    lualib:Warn("添加前  经验为："..code)

    --给玩家添加10点经验
    if lualib:Player_AddExpStr(player,"10", "添加经验:测试", "测试") then
        lualib:Warn("经验添加成功")
    else
        lualib:Warn("经验添加失败")
    end

    local code = lualib:GetExpStr(player) --获取玩家改变后的经验值
    lualib:Warn("添加后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

AddExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddExp_2.png

GetExp.png
<上一篇:获取角色经验值下一篇:给角色添加经验>
Player_AddExp
给角色添加经验

更新时间：2021-11-19 00:00:00
此函数给角色添加经验。

参考 GetExp

note_icon 备注
此接口与接口AddExp作用相同。

语法
Luacopy 复制
lualib:Player_AddExp(
    strPlayer,
    iExp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家或者英雄的GUID

iExp

double

 
经验数量

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

 
v1.1

 
修改参数iExp的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetExp(player) --获取玩家改变前的经验值
    lualib:Warn("添加前  经验为："..code)

    --给玩家添加10点经验
    if lualib:Player_AddExp(player,10, "添加经验:测试", "测试") then
        lualib:Warn("经验添加成功")
    else
        lualib:Warn("经验添加失败")
    end

    local code = lualib:GetExp(player) --获取玩家改变后的经验值
    lualib:Warn("添加后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

AddExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddExp_2.png

GetExp.png
<上一篇:给角色添加经验（字符串版）下一篇:强制添加玩家经验>
Player_ForceAddExp
强制添加玩家经验

更新时间：2025-11-28 17:59:00
此函数强制添加玩家经验。

caution_icon警告
此函数可以无视全局表字段“满级后是否不加经验”，强制添加玩家经验。

语法
Luacopy 复制
lualib:Player_ForceAddExp(
    strPlayer,
    iExp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iExp

double

 
经验数量

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
function addjy(npc,player)
    if lualib:Player_ForceAddExp(player,283057032,"无限制经验","系统")  then
        lualib:MsgBox(player,"此时加经验成功")
    else
        lualib:MsgBox(player,"此时加经验失败")
    end
end

--全句表字段“满级不加经验”设置开启，未运行此示例代码如下图所示，到达最高等级，杀怪，任务不再加经验。

Player_ForceAddExp.png

Player_ForceAddExp_2.png

--全句表字段“满级不加经验”设置开启，此示例代码运行成功如下图所示，到达最高等级，杀怪，任务继续加不会突破全局表等级限制，只会溢出经验显示。

Player_ForceAddExp_3.png

Player_ForceAddExp_4.png
<上一篇:给角色添加经验下一篇:获取玩家当前等级经验上限>
Player_GetExpLimit
获取玩家当前等级经验上限

更新时间：2021-11-19 00:00:00
此函数获取玩家当前等级的经验值上限。

语法
Luacopy 复制
lualib:Player_GetExpLimit(
    strPlayer
)

参数
strPlayer

string

 
玩家或者英雄的GUID

返回值
double

 对应角色当前等级的经验值上限
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
AddExp.png
function chuangjian(npc,player)
    local code = lualib:Player_GetExpLimit(player)
    lualib:Warn("玩家当前等级经验上限为："..code)
end

--此示例代码运行成功如下图所示。

Player_GetExpLimit.png
<上一篇:强制添加玩家经验下一篇:扣除角色经验（字符串版）>
Player_SubExpStr
扣除角色经验（字符串版）

更新时间：2021-11-19 00:00:00
此函数扣除角色经验。

语法
Luacopy 复制
lualib:Player_SubExpStr(
    strPlayer,
    str_exp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家或者英雄的GUID

str_exp

string

 
经验数量（为字符串格式）

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
function chuangjian(npc,player)
    local code = lualib:GetExpStr(player) --获取玩家改变前的经验值
    lualib:Warn("扣除前  经验为："..code)

    --扣除玩家7点经验
    if lualib:Player_SubExpStr(player,"7", "扣除经验:测试", "测试") then
        lualib:Warn("经验扣除成功")
    else
        lualib:Warn("经验扣除失败")
    end

    local code = lualib:GetExpStr(player) --获取玩家改变后的经验值
    lualib:Warn("扣除后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

Player_SubExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_SubExp_2.png

Player_SubExp_3.png
<上一篇:获取玩家当前等级经验上限下一篇:扣除角色经验>
Player_SubExp
扣除角色经验

更新时间：2021-11-19 00:00:00
此函数扣除角色经验。

note_icon 备注
此接口与接口SubExp作用相同。

语法
Luacopy 复制
lualib:Player_SubExp(
    strPlayer,
    iExp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家或者英雄的GUID

iExp

double

 
经验数量

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

 
v1.1

 
修改参数iExp的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetExp(player) --获取玩家改变前的经验值
    lualib:Warn("扣除前  经验为："..code)

    --扣除玩家7点经验
    if lualib:Player_SubExp(player,7, "扣除经验:测试", "测试") then
        lualib:Warn("经验扣除成功")
    else
        lualib:Warn("经验扣除失败")
    end

    local code = lualib:GetExp(player) --获取玩家改变后的经验值
    lualib:Warn("扣除后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

Player_SubExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_SubExp_2.png

Player_SubExp_3.png
<上一篇:扣除角色经验（字符串版）下一篇:扣除角色经验>
SubExp
扣除角色经验

更新时间：2021-11-19 00:00:00
此函数扣除角色经验。

note_icon 备注
此接口与接口Player_SubExp作用相同。

语法
Luacopy 复制
lualib:SubExp(
    strPlayer,
    iExp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家或者英雄的GUID

iExp

double

 
经验数量

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

 
v1.1

 
修改参数iExp的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetExp(player) --获取玩家改变前的经验值
    lualib:Warn("扣除前  经验为："..code)

    --扣除玩家7点经验
    if lualib:SubExp(player,7, "扣除经验:测试", "测试") then
        lualib:Warn("经验扣除成功")
    else
        lualib:Warn("经验扣除失败")
    end

    local code = lualib:GetExp(player) --获取玩家改变后的经验值
    lualib:Warn("扣除后  经验为："..code)
end

--此示例代码运行前效果如下图所示。

Player_SubExp.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_SubExp_2.png

Player_SubExp_3.png
<上一篇:扣除角色经验
AddBindIngot
给角色添加绑定元宝

更新时间：2021-11-19 00:00:00
此函数给角色添加绑定元宝。

参考 AddIngot GetBindIngot

语法
Luacopy 复制
lualib:AddBindIngot(
    strPlayer,
    iIngot,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int

 
元宝数量

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
function chuangjian(npc, player)
    local code = lualib:GetBindIngot(player) --获取玩家改变前的绑定元宝数量
    lualib:Warn("添加前 获取到玩家的绑定元宝为："..code)

    --给玩家添加50000绑定元宝
    if lualib:AddBindIngot(player,50000,"添加绑定元宝：测试","测试") then
        lualib:Warn("绑定元宝添加成功")
    else
        lualib:Warn("绑定元宝添加失败")
    end

    local code = lualib:GetBindIngot(player) --获取玩家改变后的绑定元宝数量
    lualib:Warn("添加后 获取到玩家的绑定元宝为："..code)
end

--此示例代码运行前效果如下图所示。

AddBindIngot.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddBindIngot_2.png

GetBindIngot.png
下一篇:给角色添加非绑定元宝>
AddIngot
给角色添加非绑定元宝

更新时间：2021-11-19 00:00:00
此函数给角色添加非绑定元宝。

参考 AddBindIngot GetIngot

语法
Luacopy 复制
lualib:AddIngot(
    strPlayer,
    iIngot,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int

 
元宝数量

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
function chuangjian(npc, player)
    local code = lualib:GetIngot(player) --获取玩家改变前的非绑定元宝数量
    lualib:Warn("添加前  获取到的玩家元宝为："..code)

    --给玩家添加50000非绑定元宝
    if lualib:AddIngot(player,50000,"添加元宝：测试","测试") then
        lualib:Warn("添加元宝 成功")
    else
        lualib:Warn("添加元宝 失败")
    end

    local code = lualib:GetIngot(player) --获取玩家改变后的非绑定元宝数量
    lualib:Warn("添加后  获取到的玩家元宝为："..code)
end

--此示例代码运行前效果如下图所示。

AddIngot.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddIngot_2.png

GetIngot.png
<上一篇:给角色添加绑定元宝下一篇:获取角色绑定元宝数量>
GetBindIngot
获取角色绑定元宝数量

更新时间：2021-11-19 00:00:00
此函数获取角色绑定元宝的数量。

参考 GetIngot AddBindIngot

语法
Luacopy 复制
lualib:GetBindIngot(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
double

 对应角色绑定元宝的数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local code = lualib:GetBindIngot(player) --获取玩家改变前的绑定元宝数量
    lualib:Warn("添加前 获取到玩家的绑定元宝为："..code)

    --给玩家添加50000绑定元宝
    if lualib:AddBindIngot(player,50000,"添加绑定元宝：测试","测试") then
        lualib:Warn("绑定元宝添加成功")
    else
        lualib:Warn("绑定元宝添加失败")
    end

    local code = lualib:GetBindIngot(player) --获取玩家改变后的绑定元宝数量
    lualib:Warn("添加后 获取到玩家的绑定元宝为："..code)
end

--此示例代码运行前效果如下图所示。

AddBindIngot.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddBindIngot_2.png

GetBindIngot.png
<上一篇:给角色添加非绑定元宝下一篇:获取角色非绑定元宝数量>
GetIngot
获取角色非绑定元宝数量

更新时间：2021-11-19 00:00:00
此函数获取角色非绑定元宝的数量。

参考 GetBindIngot AddIngot

语法
Luacopy 复制
lualib:GetIngot(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
double

 对应角色非绑定元宝的数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local code = lualib:GetIngot(player) --获取玩家改变前的非绑定元宝数量
    lualib:Warn("添加前  获取到的玩家元宝为："..code)

    --给玩家添加50000非绑定元宝
    if lualib:AddIngot(player,50000,"添加元宝：测试","测试") then
        lualib:Warn("添加元宝 成功")
    else
        lualib:Warn("添加元宝 失败")
    end

    local code = lualib:GetIngot(player) --获取玩家改变后的非绑定元宝数量
    lualib:Warn("添加后  获取到的玩家元宝为："..code)
end

--此示例代码运行前效果如下图所示。

AddIngot.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddIngot_2.png

GetIngot.png
<上一篇:获取角色绑定元宝数量下一篇:获取玩家充值元宝数量>
GetTotalBill
获取玩家充值元宝数量

更新时间：2021-11-19 00:00:00
此函数获取玩家充值的元宝数量。

语法
Luacopy 复制
lualib:GetTotalBill(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 对应玩家充值的元宝数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local code = lualib:GetTotalBill(player)
lualib:Warn("获取当前玩家充值的元宝数为："..code)

--此示例代码运行成功如下图所示。

GetTotalBill.png
<上一篇:获取角色非绑定元宝数量下一篇:给角色添加元宝>
Player_AddIngot
给角色添加元宝

更新时间：2021-11-19 00:00:00
此函数给角色添加元宝。

语法
Luacopy 复制
lualib:Player_AddIngot(
    strPlayer,
    iIngot,
    bBind,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int32

 
元宝数量

bBind

bool

 
是否为绑定元宝

true是

false否

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
function chuangjian(npc, player)
    local code = lualib:GetIngot(player) --获取玩家改变前的非绑定元宝数量
    lualib:Warn("添加前  获取到的玩家元宝为："..code)

    --给玩家添加20000非绑定元宝
    if lualib:Player_AddIngot(player,20000,false,"添加元宝：测试","测试") then
        lualib:Warn("添色元宝 成功")
    else
        lualib:Warn("添加元宝 失败")
    end

    local code = lualib:GetIngot(player) --获取玩家改变后的非绑定元宝数量
    lualib:Warn("添加后  获取到的玩家元宝为："..code)
end

--此示例代码运行前效果如下图所示。

Player_AddIngot.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_AddIngot_2.png

GetIngot_2.png
<上一篇:获取玩家充值元宝数量下一篇:判断角色的元宝数量是否足够>
Player_IsIngotEnough
判断角色的元宝数量是否足够

更新时间：2021-11-19 00:00:00
此函数判断角色当前的元宝数量是否足够。

语法
Luacopy 复制
lualib:Player_IsIngotEnough(
    strPlayer,
    iIngot,
    bBind
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int32

 
元宝数量

bBind

bool

 
是否为绑定元宝

true是

false否

返回值
bool

 
true元宝数量足够

false元宝数量不足

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local code = lualib:GetIngot(player) --获取玩家当前的非绑定元宝数量
    lualib:Warn("当前 元宝为："..code)

    --判断玩家非绑定元宝数量是否足够
    if lualib:Player_IsIngotEnough(player, 1000, false) then   
        lualib:Warn("元宝足够")
    else
        lualib:Warn("元宝不足够")
    end
end

--此示例代码运行成功如下图所示。

Player_IsIngotEnough.png
<上一篇:给角色添加元宝下一篇:扣除角色元宝>
Player_SubIngot
扣除角色元宝

更新时间：2021-11-19 00:00:00
此函数扣除角色元宝。

语法
Luacopy 复制
lualib:Player_SubIngot(
    strPlayer,
    iIngot,
    bBind,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int32

 
元宝数量

bBind

bool

 
是否为绑定元宝

true是

false否

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
function chuangjian(npc, player)
    --扣除玩家30000绑定元宝
    if lualib:Player_SubIngot(player, 30000, true,"扣除绑元:测试", "测试") then   
        lualib:Warn("扣除成功")
    else
        lualib:Warn("扣除失败")
    end
end

--此示例代码运行前效果如下图所示。

Player_SubIngot.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_SubIngot_2.png

Player_SubIngot_3.png
<上一篇:判断角色的元宝数量是否足够下一篇:扣除角色绑定元宝>
SubBindIngot
扣除角色绑定元宝

更新时间：2021-11-19 00:00:00
此函数扣除角色绑定元宝。

参考 SubIngot

语法
Luacopy 复制
lualib:SubBindIngot(
    strPlayer,
    iIngot,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int

 
元宝数量

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
function chuangjian(npc, player)
    --扣除玩家30000绑定元宝
    if lualib:SubBindIngot(player, 30000, "扣除绑元:测试", "测试") then   
        lualib:Warn("扣除成功")
    else
        lualib:Warn("扣除失败")
    end
end

--此示例代码运行前效果如下图所示。

Player_SubIngot.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_SubIngot_2.png

Player_SubIngot_3.png
<上一篇:扣除角色元宝下一篇:扣除角色非绑定元宝（扩展）>
SubIngotEx
扣除角色非绑定元宝（扩展）

更新时间：2021-11-19 00:00:00
此函数扣除角色非绑定元宝。

参考 SubIngot SubBindIngot

语法
Luacopy 复制
lualib:SubIngotEx(
    strPlayer,
    iIngot,
    byTo,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int

 
元宝数量

byTo

uint8

 
元宝去向

0给系统

1给玩家

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
function chuangjian(npc, player)
    --扣除玩家20000非绑定元宝，元宝去向为系统。
    if lualib:SubIngotEx(player, 20000,0,"扣除元宝:测试", "测试") then
        lualib:Warn("扣除成功")
    else
        lualib:Warn("扣除失败")
    end
end

--此示例代码运行前效果如下图所示。

SubIngotEx.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SubIngotEx_2.png

SubIngotEx_3.png
<上一篇:扣除角色绑定元宝下一篇:扣除角色非绑定元宝>
SubIngot
扣除角色非绑定元宝

更新时间：2021-11-19 00:00:00
此函数扣除角色非绑定元宝。

参考 SubBindIngot

语法
Luacopy 复制
lualib:SubIngot(
    strPlayer,
    iIngot,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIngot

int

 
元宝数量

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
function chuangjian(npc, player)
    --扣除玩家20000非绑定元宝
    if lualib:SubIngot(player, 20000,"扣除元宝:测试", "测试") then
        lualib:Warn("扣除成功")
    else
        lualib:Warn("扣除失败")
    end
end

--此示例代码运行前效果如下图所示。

SubIngotEx.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SubIngotEx_2.png

SubIngotEx_3.png
<上一篇:扣除角色非绑定元宝（扩展）
AddBindGold
给角色添加绑定金币

更新时间：2021-11-19 00:00:00
此函数给角色添加绑定金币。

参考 AddGold GetBindGold

语法
Luacopy 复制
lualib:AddBindGold(
    strPlayer,
    iGold,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

double

 
金币数量

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

 
v1.1

 
修改参数iGold的数据类型：从int修改为double

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local bind_gold = lualib:GetBindGold(player) --获取玩家改变前的绑定金币数量
    lualib:Warn("添加前  绑金为："..bind_gold)

    --给玩家添加11111绑定金币
    if lualib:AddBindGold(player, 11111,"添加绑金:测试", "测试") then   
        lualib:Warn("添加成功")
    else
        lualib:Warn("添加失败")
    end

    local bind_gold = lualib:GetBindGold(player) --获取玩家改变后的绑定金币数量
    lualib:Warn("添加后  绑金为："..bind_gold)
end

--此示例代码运行前效果如下图所示。

AddBindGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddBindGold_2.png

GetBindGold.png
下一篇:给角色添加仓库金币>
AddDeposit
给角色添加仓库金币

更新时间：2021-11-19 00:00:00
此函数给角色添加仓库金币。

参考 GetDeposit

语法
Luacopy 复制
lualib:AddDeposit(
    strPlayer,
    iGold,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

int

 
金币数量

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
function chuangjian(npc,player)
    local code = lualib:GetDeposit(player) --获取玩家改变前的仓库金币数量
    lualib:Warn("添加前  仓库金币："..code)

    --给玩家添加99个仓库金币
    if lualib:AddDeposit(player, 99,"添加仓库金币:测试", "测试") then
        lualib:Warn("仓库金币添加成功")
    else
        lualib:Warn("仓库金币添加失败")
    end

    local code = lualib:GetDeposit(player) --获取玩家改变后的仓库金币数量
    lualib:Warn("添加后  仓库金币："..code)
end

--此示例代码运行前效果如下图所示。

AddDeposit.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddDeposit_2.png

GetDeposit.png
<上一篇:给角色添加绑定金币下一篇:给角色添加非绑定金币>
AddGold
给角色添加非绑定金币

更新时间：2021-11-19 00:00:00
此函数给角色添加非绑定金币。

参考 AddBindGold GetGold

语法
Luacopy 复制
lualib:AddGold(
    strPlayer,
    iGold,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

double

 
金币数量

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

 
v1.1

 
修改参数iGold的数据类型：从int修改为double

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local gold = lualib:GetGold(player) --获取玩家改变前的非绑定金币数量
    lualib:Warn("添加前  金币为："..gold)

    --给玩家添加11111非绑定金币
    if lualib:AddGold(player, 11111,"添加金币:测试", "测试") then   
        lualib:Warn("添加成功")
    else
        lualib:Warn("添加失败")
    end

    local gold = lualib:GetGold(player) --获取玩家改变后的非绑定金币数量
    lualib:Warn("添加后  金币为："..gold)
end

--此示例代码运行前效果如下图所示。

AddGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddGold_2.png

GetGold.png
<上一篇:给角色添加仓库金币下一篇:获取角色绑定金币数量（字符串版）>
GetBindGoldStr
获取角色绑定金币数量（字符串版）

更新时间：2021-11-19 00:00:00
此函数获取角色绑定金币的数量，返回字符串格式。

参考 GetGold GetBindGold

语法
Luacopy 复制
lualib:GetBindGoldStr(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 对应玩家绑定金币的数量（为字符串格式）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local bind_gold = lualib:GetBindGoldStr(player) --获取玩家改变前的绑定金币数量
    lualib:Warn("添加前  绑金为："..bind_gold)

    --给玩家添加11111绑定金币
    if lualib:Player_AddGoldStr(player, "11111",true,"添加绑金:测试", "测试") then   
        lualib:Warn("添加成功")
    else
        lualib:Warn("添加失败")
    end

    local bind_gold = lualib:GetBindGoldStr(player) --获取玩家改变后的绑定金币数量
    lualib:Warn("添加后  绑金为："..bind_gold)
end

--此示例代码运行前效果如下图所示。

AddBindGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddBindGold_2.png

GetBindGold.png
<上一篇:给角色添加非绑定金币下一篇:获取角色绑定金币数量>
GetBindGold
获取角色绑定金币数量

更新时间：2021-11-19 00:00:00
此函数获取角色绑定金币的数量。

参考 GetGold AddBindGold

语法
Luacopy 复制
lualib:GetBindGold(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
double

 对应玩家绑定金币的数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local bind_gold = lualib:GetBindGold(player) --获取玩家改变前的绑定金币数量
    lualib:Warn("添加前  绑金为："..bind_gold)

    --给玩家添加11111绑定金币
    if lualib:AddBindGold(player, 11111,"添加绑金:测试", "测试") then   
        lualib:Warn("添加成功")
    else
        lualib:Warn("添加失败")
    end

    local bind_gold = lualib:GetBindGold(player) --获取玩家改变后的绑定金币数量
    lualib:Warn("添加后  绑金为："..bind_gold)
end

--此示例代码运行前效果如下图所示。

AddBindGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddBindGold_2.png

GetBindGold.png
<上一篇:获取角色绑定金币数量（字符串版）下一篇:获取角色仓库金币数量>
GetDeposit
获取角色仓库金币数量

更新时间：2021-11-19 00:00:00
此函数获取角色仓库金币的数量。

参考 AddDeposit

语法
Luacopy 复制
lualib:GetDeposit(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
double

 对应玩家仓库金币的数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetDeposit(player) --获取玩家改变前的仓库金币数量
    lualib:Warn("添加前  仓库金币："..code)

    --给玩家添加99个仓库金币
    if lualib:AddDeposit(player, 99,"添加仓库金币:测试", "测试") then
        lualib:Warn("仓库金币添加成功")
    else
        lualib:Warn("仓库金币添加失败")
    end

    local code = lualib:GetDeposit(player) --获取玩家改变后的仓库金币数量
    lualib:Warn("添加后  仓库金币："..code)
end

--此示例代码运行前效果如下图所示。

AddDeposit.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddDeposit_2.png

GetDeposit.png
<上一篇:获取角色绑定金币数量下一篇:获取角色非绑定金币数量（字符串版）>
GetGoldStr
获取角色非绑定金币数量（字符串版）

更新时间：2021-11-19 00:00:00
此函数获取角色非绑定金币的数量，返回字符串格式。

参考 GetGold GetBindGold

语法
Luacopy 复制
lualib:GetGoldStr(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 对应玩家非绑定金币的数量（为字符串格式）
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local gold = lualib:GetGoldStr(player) --获取玩家改变前的非绑定金币数量
    lualib:Warn("添加前  金币为："..gold)

    --给玩家添加11111非绑定金币
    if lualib:AddGold(player, 11111,"添加金币:测试", "测试") then   
        lualib:Warn("添加成功")
    else
        lualib:Warn("添加失败")
    end

    local gold = lualib:GetGoldStr(player) --获取玩家改变后的非绑定金币数量
    lualib:Warn("添加后  金币为："..gold)
end

--此示例代码运行前效果如下图所示。

AddGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddGold_2.png

GetGold.png
<上一篇:获取角色仓库金币数量下一篇:获取角色非绑定金币数量>
GetGold
获取角色非绑定金币数量

更新时间：2021-11-19 00:00:00
此函数获取角色非绑定金币的数量。

参考 GetBindGold AddGold

语法
Luacopy 复制
lualib:GetGold(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
double

 对应玩家非绑定金币的数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc, player)
    local gold = lualib:GetGold(player) --获取玩家改变前的非绑定金币数量
    lualib:Warn("添加前  金币为："..gold)

    --给玩家添加11111非绑定金币
    if lualib:AddGold(player, 11111,"添加金币:测试", "测试") then   
        lualib:Warn("添加成功")
    else
        lualib:Warn("添加失败")
    end

    local gold = lualib:GetGold(player) --获取玩家改变后的非绑定金币数量
    lualib:Warn("添加后  金币为："..gold)
end

--此示例代码运行前效果如下图所示。

AddGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddGold_2.png

GetGold.png
<上一篇:获取角色非绑定金币数量（字符串版）下一篇:获取金币类型物品的金币数量>
GetItemGold
获取金币类型物品的金币数量

更新时间：2021-11-19 00:00:00
此函数获取金币类型物品的金币数量。

参考 Map_GenGold ModifyItemGold

语法
Luacopy 复制
lualib:GetItemGold(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
int32

 
执行成功则返回物品对应的金币数量

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local MapGuid = lualib:MapGuid(player) --获取当前地图的GUID
    local ItemGuid = lualib:Map_GenGold(MapGuid,270,60,2000,true,20,5,MapGuid) --在地图上指定位置刷出2000金币
    local GoldNumber = lualib:GetItemGold(ItemGuid) --获取金币类型物品的金币数量
    lualib:Warn("获取金币类型物品的金币 为："..GoldNumber)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

GetItemGold.png

GetItemGold_2.png
<上一篇:获取角色非绑定金币数量下一篇:给角色添加金币（字符串版）>
Player_AddGoldStr
给角色添加金币（字符串版）

更新时间：2021-11-19 00:00:00
此函数给角色添加金币。

参考 AddGold AddBindGold

语法
Luacopy 复制
lualib:Player_AddGoldStr(
    strPlayer,
    str_gold,
    bBind,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

str_gold

string

 
金币数量（为字符串格式）

bBind

bool

 
是否为绑定金币

true是

false否

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
function chuangjian(npc, player)
    local gold = lualib:GetGoldStr(player) --获取玩家改变前的非绑定金币数量
    lualib:Warn("添加前  金币为："..gold)

    --给玩家添加11111非绑定金币
    if lualib:Player_AddGoldStr(player, "11111",false,"添加金币:测试", "测试") then   
        lualib:Warn("添加成功")
    else
        lualib:Warn("添加失败")
    end

    local gold = lualib:GetGold(player) --获取玩家改变后的非绑定金币数量
    lualib:Warn("添加后  金币为："..gold)
end

--此示例代码运行前效果如下图所示。

AddGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddGold_2.png

GetGold.png
<上一篇:获取金币类型物品的金币数量下一篇:给角色添加金币>
Player_AddGold
给角色添加金币

更新时间：2021-11-19 00:00:00
此函数给角色添加金币。

参考 AddGold AddBindGold

语法
Luacopy 复制
lualib:Player_AddGold(
    strPlayer,
    iGold,
    bBind,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

double

 
金币数量

bBind

bool

 
是否为绑定金币

true是

false否

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

 
v1.1

 
修改参数iGold的数据类型：从int32修改为double

示例代码
Luacopy 复制
--以45度角测试区（区号：416）中的钱袋.lua文件为例。  
local golds = {}
golds[65503] = 10000	--1W金币
golds[65502] = 20000	--2W金币
golds[65501] = 50000	--5W金币
golds[65500] = 100000	--10W金币
golds[65499] = 200000	--20W金币
golds[65498] = 500000	--50W金币

--使用钱袋道具增加金币
function main(player_guid, item_guid)
    local item_id = lualib:Item_GetID(player_guid, item_guid) --获取物品的模版ID

--……省略部分代码

    if golds[item_id] ~= nil then
        if not lualib:Player_AddGold(player_guid, golds[item_id], false, "加金币：使用钱袋道具", player_guid) then --给角色添加金币
            lualib:SysMsg_SendTipsMsg(player_guid, "添加金币失败！") --发送客户端左上角消息
            lualib:SysMsg_SendWarnMsg(player_guid, "添加金币失败！") --发送客户端底部警告消息
            return false            
        end
    lualib:SysMsg_SendTipsMsg(player_guid, "已获得"..golds[item_id].."个金币！") --发送客户端左上角消息
    lualib:SysMsg_SendPromptMsg(player_guid, "已获得"..golds[item_id].."个金币！") --发送客户端底部提示消息
    end

--……省略部分代码
end

--……省略部分代码

--此示例代码运行前效果如下图所示。

Player_AddGold.png

--此示例代码运行后效果如下图所示，同时游戏对话框中还会打印相关内容。

Player_AddGold_2.png

Player_AddGold_3.png
<上一篇:给角色添加金币（字符串版）下一篇:判断角色的金币数量是否足够>
Player_IsGoldEnough
判断角色的金币数量是否足够

更新时间：2021-12-28 00:00:00
此函数判断角色当前的金币数量是否足够。

语法
Luacopy 复制
lualib:Player_IsGoldEnough(
    strPlayer,
    iGold,
    bBind
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

double

 
金币数量

bBind

bool

 
是否为绑定金币

true是

false否

返回值
bool

 
true金币数量足够

false金币数量不足

版本历史
v1.0

 
首次发布

 
v1.1

 
修改参数iGold的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local gold = lualib:GetGold(player) --获取玩家当前的非绑定金币数量
    lualib:Warn("当前金币为："..gold)

    --判断玩家是否拥有99999非绑定金币
    if lualib:Player_IsGoldEnough(player,99999,false) then
        lualib:Warn("金币足够")
    else
        lualib:Warn("金币不够")
    end
end

--此示例代码运行成功如下图所示。

Player_IsGoldStrEnough.png
<上一篇:给角色添加金币下一篇:判断角色的金币数量是否足够（字符串版）>
Player_IsGoldStrEnough
判断角色的金币数量是否足够（字符串版）

更新时间：2021-11-19 00:00:00
此函数判断角色当前的金币数量是否足够。

语法
Luacopy 复制
lualib:Player_IsGoldStrEnough(
    strPlayer,
    str_gold,
    bBind
)

参数
strPlayer

string

 
玩家角色的GUID

str_gold

string

 
金币数量（为字符串格式）

bBind

bool

 
是否为绑定金币

true是

false否

返回值
bool

 
true金币数量足够

false金币数量不足

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local gold = lualib:GetGold(player) --获取玩家当前的非绑定金币数量
    lualib:Warn("当前金币为："..gold)

    --判断玩家是否拥有99999非绑定金币
    if lualib:Player_IsGoldStrEnough(player,"99999",false) then
        lualib:Warn("金币足够")
    else
        lualib:Warn("金币不够")
    end
end

--此示例代码运行成功如下图所示。

Player_IsGoldStrEnough.png
<上一篇:判断角色的金币数量是否足够下一篇:扣除角色金币（字符串版）>
Player_SubGoldStr
扣除角色金币（字符串版）

更新时间：2021-11-19 00:00:00
此函数扣除角色金币。

参考 SubGold SubBindGold

语法
Luacopy 复制
lualib:Player_SubGoldStr(
    strPlayer,
    str_gold,
    bBind,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

str_gold

string

 
金币数量（为字符串格式）

bBind

bool

 
是否为绑定金币

true是

false否

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
function chuangjian(npc,player)
    --扣除玩家2000绑定金币
    if lualib:Player_SubGoldStr(player,"2000",true,"扣除绑币：测试","测试") then
        lualib:Warn("扣除绑币 成功")
    else
        lualib:Warn("扣除绑币 失败")
    end
end

--此示例代码运行前效果如下图所示。

SubBindGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SubBindGold_2.png

SubBindGold_3.png
<上一篇:判断角色的金币数量是否足够（字符串版）下一篇:扣除角色金币>
Player_SubGold
扣除角色金币

更新时间：2021-11-19 00:00:00
此函数扣除角色金币。

参考 SubGold SubBindGold

语法
Luacopy 复制
lualib:Player_SubGold(
    strPlayer,
    iGold,
    bBind,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

double

 
金币数量

bBind

bool

 
是否为绑定金币

true是

false否

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

 
v1.1

 
修改参数iGold的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    --扣除玩家2000绑定金币
    if lualib:Player_SubGold(player,2000,true,"扣除绑币：测试","测试") then
        lualib:Warn("扣除绑币 成功")
    else
        lualib:Warn("扣除绑币 失败")
    end
end

--此示例代码运行前效果如下图所示。

SubBindGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SubBindGold_2.png

SubBindGold_3.png
<上一篇:扣除角色金币（字符串版）下一篇:扣除角色绑定金币>
SubBindGold
扣除角色绑定金币

更新时间：2021-11-19 00:00:00
此函数扣除角色绑定金币。

参考 SubGold

语法
Luacopy 复制
lualib:SubBindGold(
    strPlayer,
    iGold,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

double

 
金币数量

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

 
v1.1

 
修改参数iGold的数据类型：从int修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    --扣除玩家2000绑定金币
    if lualib:SubBindGold(player,2000,"扣除绑币：测试","测试") then
        lualib:Warn("扣除绑币 成功")
    else
        lualib:Warn("扣除绑币 失败")
    end
end

--此示例代码运行前效果如下图所示。

SubBindGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SubBindGold_2.png

SubBindGold_3.png
<上一篇:扣除角色金币下一篇:扣除角色仓库金币>
SubDeposit
扣除角色仓库金币

更新时间：2021-11-19 00:00:00
此函数扣除角色仓库金币。

语法
Luacopy 复制
lualib:SubDeposit(
    strPlayer,
    iGold,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

int

 
金币数量

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
function chuangjian(npc,player)
    local code = lualib:GetDeposit(player) --获取玩家改变前的仓库金币数量
    lualib:Warn("扣除前  仓库金币："..code)

    --扣除玩家9个仓库金币
    if lualib:SubDeposit(player, 9,"扣除仓库金币:测试", "测试") then
        lualib:Warn("扣除成功")
    else
        lualib:Warn("扣除失败")
    end

    local code = lualib:GetDeposit(player) --获取玩家改变后的仓库金币数量
    lualib:Warn("扣除后  仓库金币："..code)
end

--此示例代码运行前效果如下图所示。

SubDeposit.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SubDeposit_2.png

SubDeposit_3.png
<上一篇:扣除角色绑定金币下一篇:扣除角色非绑定金币>
SubGold
扣除角色非绑定金币

更新时间：2021-11-19 00:00:00
此函数扣除角色非绑定金币。

参考 SubBindGold

语法
Luacopy 复制
lualib:SubGold(
    strPlayer,
    iGold,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iGold

double

 
金币数量

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

 
v1.1

 
修改参数iGold的数据类型：从int修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    --扣除玩家2000非绑定金币
    if lualib:SubGold(player,2000,"扣除非绑定金币：测试","测试") then
        lualib:Warn("扣除非绑定金币 成功")
    else
        lualib:Warn("扣除非绑定金币 失败")
    end
end

--此示例代码运行前效果如下图所示。

SubGold.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

SubGold_2.png

SubGold_3.png
<上一篇:扣除角色仓库金币
AddIntegral
给角色添加积分

更新时间：2021-11-19 00:00:00
此函数给角色添加积分。

参考 GetIntegral

note_icon 备注
此接口与接口Player_AddIntegral作用相同。

语法
Luacopy 复制
lualib:AddIntegral(
    strPlayer,
    iIntegral,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIntegral

double

 
积分数量

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

 
v1.1

 
修改参数iIntegral的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetIntegral(player) --获取玩家改变前的积分数量
    lualib:Warn("扣除前  积分为："..code)

    --给玩家添加2000积分
    if lualib:AddIntegral(player,2000,"添加积分：测试","测试") then
        lualib:Warn("添加积分 成功")
    else
        lualib:Warn("添加积分 失败")
    end

    local code = lualib:GetIntegral(player) --获取玩家改变后的积分数量
    lualib:Warn("扣除后  积分为："..code)
end

--此示例代码运行前效果如下图所示。

AddIntegral.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddIntegral_2.png

AddIntegral_3.png
下一篇:获取角色积分数量>
GetIntegral
获取角色积分数量

更新时间：2021-11-19 00:00:00
此函数获取角色积分数量。

参考 AddIntegral

语法
Luacopy 复制
lualib:GetIntegral(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
double

 对应角色积分的数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetIntegral(player) --获取玩家改变前的积分数量
    lualib:Warn("扣除前  积分为："..code)

    --给玩家添加2000积分
    if lualib:AddIntegral(player,2000,"添加积分：测试","测试") then
        lualib:Warn("添加积分 成功")
    else
        lualib:Warn("添加积分 失败")
    end

    local code = lualib:GetIntegral(player) --获取玩家改变后的积分数量
    lualib:Warn("扣除后  积分为："..code)
end

--此示例代码运行前效果如下图所示。

AddIntegral.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddIntegral_2.png

AddIntegral_3.png
<上一篇:给角色添加积分下一篇:给角色添加积分>
Player_AddIntegral
给角色添加积分

更新时间：2021-11-19 00:00:00
此函数给角色添加积分。

参考 GetIntegral

note_icon 备注
此接口与接口AddIntegral作用相同。

语法
Luacopy 复制
lualib:Player_AddIntegral(
    strPlayer,
    iIntegral,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIntegral

double

 
积分数量

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

 
v1.1

 
修改参数iIntegral的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    local code = lualib:GetIntegral(player) --获取玩家改变前的积分数量
    lualib:Warn("扣除前  积分为："..code)

    --给玩家添加2000积分
    if lualib:Player_AddIntegral(player,2000,"添加积分：测试","测试") then
        lualib:Warn("添加积分 成功")
    else
        lualib:Warn("添加积分 失败")
    end

    local code = lualib:GetIntegral(player) --获取玩家改变后的积分数量
    lualib:Warn("扣除后  积分为："..code)
end

--此示例代码运行前效果如下图所示。

AddIntegral.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddIntegral_2.png

AddIntegral_3.png
<上一篇:获取角色积分数量下一篇:判断角色的积分数量是否足够>
Player_IsIntegralEnough
判断角色的积分数量是否足够

更新时间：2021-11-19 00:00:00
此函数判断角色当前的积分数量是否足够。

语法
Luacopy 复制
lualib:Player_IsIntegralEnough(
    strPlayer,
    iIntegral
)

参数
strPlayer

string

 
玩家角色的GUID

iIntegral

double

 
积分数量

返回值
bool

 
true积分数量足够

false积分数量不足

版本历史
v1.0

 
首次发布

 
v1.1

 
修改参数iIntegral的数据类型：从int32修改为double

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Player_IsIntegralEnough.png
function chuangjian(npc,player)
    local code = lualib:GetIntegral(player) --获取玩家当前的积分数量
    lualib:Warn("当前积分为："..code)

    --判断玩家积分数量是否足够
    if lualib:Player_IsIntegralEnough(player,50000) then
        lualib:Warn("足够")
    else
        lualib:Warn("不够")
    end

    if lualib:Player_IsIntegralEnough(player,200) then
        lualib:Warn("足够")
    else
        lualib:Warn("不够")
    end
end

--此示例代码运行成功如下图所示。


Player_IsIntegralEnough_2.png
<上一篇:给角色添加积分下一篇:扣除角色积分>
Player_SubIntegral
扣除角色积分

更新时间：2021-11-19 00:00:00
此函数扣除角色积分。

note_icon 备注
此接口与接口SubIntegral作用相同。

语法
Luacopy 复制
lualib:Player_SubIntegral(
    strPlayer,
    iIntegral,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIntegral

double

 
积分数量

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

 
v1.1

 
修改参数iIntegral的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    --扣除玩家4000积分
    if lualib:Player_SubIntegral(player,4000,"扣除积分:测试", "测试") then
        lualib:Warn("扣除成功")
    else
        lualib:Warn("扣除失败")
    end
end

--此示例代码运行前效果如下图所示。

Player_SubIntegral_2.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_SubIntegral.png

Player_SubIntegral_3.png
<上一篇:判断角色的积分数量是否足够下一篇:扣除角色积分>
SubIntegral
扣除角色积分

更新时间：2021-11-19 00:00:00
此函数扣除角色积分。

note_icon 备注
此接口与接口Player_SubIntegral作用相同。

语法
Luacopy 复制
lualib:SubIntegral(
    strPlayer,
    iIntegral,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iIntegral

double

 
积分数量

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

 
v1.1

 
修改参数iIntegral的数据类型：从int32修改为double

示例代码
Luacopy 复制
function chuangjian(npc,player)
    --扣除玩家4000积分
    if lualib:SubIntegral(player,4000,"扣除积分:测试", "测试") then
        lualib:Warn("扣除成功")
    else
        lualib:Warn("扣除失败")
    end
end

--此示例代码运行前效果如下图所示。

Player_SubIntegral_2.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Player_SubIntegral.png

Player_SubIntegral_3.png
<上一篇:扣除角色积分
DestroyDummy
清除假人

更新时间：2022-04-27 00:00:00
此函数将指定的假人从游戏世界中清除。

note_icon 备注
此接口可用于清除包括玩家的英雄在内的任何假人。

从数据库载入的假人，会自动保存数据变更至数据库。

语法
Luacopy 复制
lualib:DestroyDummy(
    dummy
)

参数
dummy

string

 
假人的GUID

返回值
bool

 
true清除成功

false清除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummyEx("测试假人3", 1, 1, Map_GUID, 151, 164, 500) --在当前地图的指定的坐标处生成一个假人
    if param ~= 0 then
        lualib:SysMsg_SendWarnMsg(player, "假人生成成功")
        lualib:AddTimerEx(player, 1111, 20000, 1, "TestDestroyDummy", param) --添加一个定时器，5秒后执行TestDestroyDummy()函数。
    else
        lualib:SysMsg_SendWarnMsg(player, "假人生成失败")
    end
end

function TestDestroyDummy(player, id, param)
    --清除假人
    if lualib:DestroyDummy(param) then
        lualib:SysMsg_SendWarnMsg(player, "假人删除成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "假人删除失败")
    end
end

--此示例代码运行成功如下图所示。

--生成假人

DestroyDummy_2.png

DestroyDummy.png

--10s后执行清除假人操作。

DestroyDummy_4.png

DestroyDummy_3.png
下一篇:指定假人锁定敌人>
DummyLockTarget
指定假人锁定敌人

更新时间：2022-04-27 00:00:00
此函数指定假人锁定敌人进行攻击。

指定的假人必须为有主人的假人，否则执行无效。

语法
Luacopy 复制
lualib:DummyLockTarget(
    dummy_guid,
    target_guid
)

参数
dummy_guid

string

 
假人的GUID

target_guid

string

 
目标的GUID

返回值
bool

 
true假人存在

false假人不存在或目标不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Boss_GUID = (lualib:MonstersByKey("个人食人统领", 2, true, true))[1] --获取BOSS的GUID
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 8, 18, player, 500) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyState(param, 3) --设置假人状态为战斗状态
    lualib:DummyLockTarget(param, Boss_GUID) --指定假人锁定敌人
end

--此示例代码运行成功如下图所示。

DummyLockTarget.gif
<上一篇:清除假人下一篇:让假人移动到指定位置>
DummyMove
让假人移动到指定位置

更新时间：2022-04-27 00:00:00
此函数让假人移动到当前地图的指定坐标。

语法
Luacopy 复制
lualib:DummyMove(
    dummy_guid,
    x,
    y
)

参数
dummy_guid

string

 
假人的GUID

x

uint16

 
移动点的X坐标

y

uint16

 
移动点的Y坐标

返回值
bool

 
true指令下达成功

false指令下达失败或者假人不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Map_GUID = lualib:MapGuid(player)  --获取玩家当前所在地图的GUID
local param = lualib:GenDummyEx("测试假人4", 1, 1, Map_GUID, 151, 164, 500) --在当前地图的指定的坐标处生成一个假人
if param ~= 0 then
    --让假人移动到指定位置
    if lualib:DummyMove(param, 125, 182) then
        lualib:SysMsg_SendWarnMsg(player, "假人移动命令下达成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "假人不存在")
    end
else
    lualib:SysMsg_SendWarnMsg(player, "假人生成失败")
end

--此示例代码运行成功如下图所示（假人移动到（125, 182）坐标的位置）。

DummyMove.png
<上一篇:指定假人锁定敌人下一篇:假人向指定坐标的方向跑动一步>
DummyRunOneStep
假人向指定坐标的方向跑动一步

更新时间：2024-05-17 00:00:00
此函数让假人向指定坐标的方向跑动一步。

note_icon 备注
无论指定的逻辑格坐标是否存在，角色仍会向坐标方向跑动一步。

语法
Luacopy 复制
lualib:DummyRunOneStep(
    dummy_guid,
    wX,
    wY
)

参数
dummy_guid

string

 
假人的GUID

wX

uint16

 
逻辑格的X坐标

wY

uint16

 
逻辑格的Y坐标

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
    local hero_guid = lualib:GetCurrentHero(player)
    if lualib:DummyRunOneStep(hero_guid,100,100) then
        lualib:Warn("执行成功") 
    else
        lualib:Warn("执行失败") 
    end
end

--此示例代码运行成功后英雄将朝着指定坐标的方向跑动一步。
<上一篇:让假人移动到指定位置下一篇:假人向指定坐标的方向移动一步>
DummyWalkOneStep
假人向指定坐标的方向移动一步

更新时间：2024-05-17 00:00:00
此函数让假人向指定坐标的方向移动一步。

note_icon 备注
无论指定的逻辑格坐标是否存在，角色仍会向坐标方向移动一步。

语法
Luacopy 复制
lualib:DummyWalkOneStep(
    dummy_guid,
    wX,
    wY
)

参数
dummy_guid

string

 
假人的GUID

wX

uint16

 
逻辑格的X坐标

wY

uint16

 
逻辑格的Y坐标

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
    local hero_guid = lualib:GetCurrentHero(player)
    if lualib:DummyWalkOneStep(hero_guid,100,100) then
        lualib:Warn("执行成功") 
    else
        lualib:Warn("执行失败") 
    end
end

--此示例代码运行成功后英雄将朝着指定坐标的方向走一步。
<上一篇:假人向指定坐标的方向跑动一步下一篇:生成假人（扩展）>
GenDummyEx
生成假人（扩展）

更新时间：2022-07-18 00:00:00
此函数直接在地图坐标处放置一个假人。

该假人既不可跳转Game Server，也不可保存数据。

全局模板表中的“生成假人时是否检查名字已被使用”选项可用于控制在使用此接口生成假人时是否会对假人名字进行检查。

1.当此选项配置为“是”时，代表在使用接口生成假人时会对假人名字进行检查，

   具体情况如下所示：

（1）若新生成的假人名字与当前服务器内玩家或假人名字重复，则会提示“名字不能重复！”；

（2）若新生成的假人名字与当前服务器内玩家或假人名字没有重复，则可正常生成假人。

2.当此选项配置为“否”时，代表在使用接口生成假人时不会对假人名字进行检查，为默认值。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

GenDummy.png
note_icon 备注
此接口与接口GenDummy的区别为此接口可以生成一个没有主人的假人。

caution_icon注意
请不要使用此接口创建的假人进行需保存数据的操作。

语法
Luacopy 复制
lualib:GenDummyEx(
    name,
    job,
    gender,
    map,
    x,
    y,
    life
)
参数
name

string

 
假人的名字

job

uint8

 
假人的职业

1战士

2法师

3术士

gender

uint8

 
假人的性别

1男性

2女性

map

string

 
生成目标地图的GUID

x

uint16

 
生成目标坐标X

y

uint16

 
生成目标坐标Y

life

uint32

 
假人的生命时间，单位为秒（s）

0表示假人永远存在

返回值
string

 
假人的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GenDummy("测试假人", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) + 1, player, 10)
lualib:GenDummy("测试假人", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) - 1, player, 10)
lualib:GenDummyEx("测试假人", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) - 1, lualib:Y(player) + 1, 10)
lualib:GenDummyEx("测试假人", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) - 1, lualib:Y(player) - 1, 10)

--当全局模板表中的“生成假人时是否检查名字已被使用”选项设置为“是”时，此示例代码执行效果如下图所示。

--使用接口生成假人时对假人名字进行检查，由于假人名字重复，所以只成功生成1个假人。

GenDummyEx_3.png

GenDummyEx_4.png

--当全局模板表中的“生成假人时是否检查名字已被使用”选项设置为“否”时，此示例代码执行效果如下图所示。

--使用接口生成假人时未对假人名字进行检查，成功生成4个假人。

GenDummyEx_2.png
<上一篇:假人向指定坐标的方向移动一步下一篇:生成假人>
GenDummy
生成假人

更新时间：2022-07-18 00:00:00
此函数在地图上指定的坐标处放置一个假人。

该假人既不可跳转Game Server，也不可保存数据。

全局模板表中的“生成假人时是否检查名字已被使用”选项可用于控制在使用此接口生成假人时是否会对假人名字进行检查。

1.当此选项配置为“是”时，代表在使用接口生成假人时会对假人名字进行检查，

   具体情况如下所示：

（1）若新生成的假人名字与当前服务器内玩家或假人名字重复，则会提示“名字不能重复！”；

（2）若新生成的假人名字与当前服务器内玩家或假人名字没有重复，则可正常生成假人。

2.当此选项配置为“否”时，代表在使用接口生成假人时不会对假人名字进行检查，为默认值。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

GenDummy.png
note_icon 备注
此接口与接口GenDummyEx的区别为接口GenDummyEx可以生成一个没有主人的假人。

caution_icon警告
请不要使用此接口创建的假人进行需保存数据的操作。

语法
Luacopy 复制
lualib:GenDummy(
    name,
    job,
    gender,
    map,
    x,
    y,
    player_guid,
    life
)

参数
name

string

 
假人的名字

job

uint8

 
假人的职业

1战士

2法师

3术士

gender

uint8

 
假人的性别

1男性

2女性

map

string

 
生成目标地图的GUID

x

uint16

 
生成目标坐标X

y

uint16

 
生成目标坐标Y

player_guid

string

 
假人主人的GUID

caution_icon 注意
当此参数为"0"时，会提示主人不存在，从而调用失败。

life

uint32

 
假人的生命时间，单位为秒（s）

0表示假人永远存在

返回值
string

 假人的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Boss_GUID = (lualib:MonstersByKey("个人食人统领", 2, true, true))[1] --获取BOSS的GUID
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 8, 18, player, 500) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyState(param, 3) --设置假人状态为战斗状态
    lualib:DummyLockTarget(param, Boss_GUID) --指定假人锁定敌人
end

--此示例代码运行成功如下图所示。

DummyLockTarget.gif
<上一篇:生成假人（扩展）下一篇:获取玩家的假人列表>
GetDummyList
获取玩家的假人列表

更新时间：2022-07-08 00:00:00
此函数作用为获取玩家假人的GUID列表。

语法
Luacopy 复制
lualib:GetDummyList(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
table

 
玩家假人的GUID列表

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GenDummy("冷饮1杯无", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) - 1, lualib:Y(player) - 1, player, 10) --在当前地图的指定的座标出生成假人1
lualib:GenDummy("冷饮2杯无", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) - 1, lualib:Y(player) + 1, player, 10) --在当前地图的指定的座标出生成假人2
lualib:GenDummy("冷饮3杯无", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) - 1, player, 10) --在当前地图的指定的座标出生成假人3
lualib:GenDummy("冷饮4杯无", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) + 1, player, 10) --在当前地图的指定的座标出生成假人4
lualib:Warn("list = "..serialize(lualib:GetDummyList(player))) --获取玩家的假人列表

--此示例代码运行成功如下图所示。

GetDummyList.png
<上一篇:生成假人下一篇:根据假人的GUID获取其主人的GUID>
GetDummyLord
根据假人的GUID获取其主人的GUID

更新时间：2022-04-27 00:00:00
此函数根据假人的GUID获取其主人的GUID。

语法
Luacopy 复制
lualib:GetDummyLord(
    dummy_guid
)
参数
dummy_guid

string

 
假人的GUID

返回值
string

 
该假人的主人的GUID

note_icon 备注
若假人的主人不存在或者假人的GUID不存在，则返回空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dummy_youzhu = lualib:GenDummy("有主假人", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player), lualib:Y(player), player, 60) --在当前地图的指定的坐标处生成一个有主假人
local lord_youzhu = lualib:GetDummyLord(dummy_youzhu) --根据假人的GUID获取其主人的GUID
--若其主人的GUID不为空字符串（""），则打印如下内容。
if lord_youzhu ~= "" then
    lualib:Warn("有主 "..lualib:Name(lord_youzhu))
end

local dummy_wuzhu = lualib:GenDummyEx("无主假人", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player), lualib:Y(player), 60) --在当前地图的指定的坐标处生成一个无主假人
local lord_wuzhu = lualib:GetDummyLord(wuzhu) --根据假人的GUID获取其主人的GUID
--若其主人的GUID为空字符串（""），则打印如下内容。
if lord_wuzhu == "" then
    lualib:Warn("无主")
end

--此示例代码运行成功如下图所示。

--有主假人成功获取其主人的GUID，无主假人获取的主人的GUID为空字符串（""）。

GetDummyLord.png
<上一篇:获取玩家的假人列表下一篇:获取玩家的假人数量>
GetDummyNum
获取玩家的假人数量

更新时间：2022-04-27 00:00:00
此函数获取玩家的假人数量。

语法
Luacopy 复制
lualib:GetDummyNum(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 
玩家的假人数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GenDummy("假人1", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) + 1, player, 10) --在当前地图的指定的座标出生成假人1
lualib:GenDummy("假人2", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) + 1, player, 10) --在当前地图的指定的座标出生成假人2
lualib:GenDummy("假人3", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2), lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) + 1, player, 10) --在当前地图的指定的座标出生成假人3
local dummy_num = lualib:GetDummyNum(player) --获取玩家的假人数量
lualib:Warn("dummy_num = "..dummy_num)

--此示例代码运行成功如下图所示。

GetDummyNum.png
<上一篇:根据假人的GUID获取其主人的GUID下一篇:获取摊位详细信息>
NewStall_GetStallInfo
获取摊位详细信息

更新时间：2026-02-13 19:29:00
此函数通过摊位GUID获取摊位的详细信息。

语法
Luacopy 复制
lualib:NewStall_GetStallInfo(
    stall_guid
)

参数
stall_guid

string

 
摊位GUID

返回值
table

 
摊位详细信息table，获取失败返回空表。包含以下字段：

owner_guid 摊主GUID

owner_name 摊主名称

stall_name 摊位名称

stall_type 摆摊类型（1=宠物摆摊，2=玩家摆摊）

pos_x 摊位X坐标

pos_y 摊位Y坐标

item_guids 在售物品GUID列表

{
    ["owner_guid"] = "100000000001j",
    ["owner_name"] = "玩家名称",
    ["stall_name"] = "我的摊位",
    ["stall_type"] = 2,
    ["pos_x"] = 100,
    ["pos_y"] = 50,
    ["item_guids"] = {"200000000001j", "200000000002j"}
}
版本历史
v1.0

 
首次发布

 
示例代码
Luacopy 复制
local player_guid = lualib:Name2Guid("我要摆摊")
local stall_guid = lualib:NewStall_GetStallGuidByPlayer(player_guid)
if stall_guid ~= "" then
    local info = lualib:NewStall_GetStallInfo(stall_guid)
    lualib:Warn(""..serialize(info))
else
    lualib:Warn("摊位不存在")
end

--执行示例代码，结果如图所示。
NewStall_GetStallInfo.png
<上一篇:获取玩家的假人数量下一篇:设置假人的AI配置>
SetDummyAIOption
设置假人的AI配置

更新时间：2022-07-19 00:00:00
此函数设置假人的AI配置。

note_icon 备注
详细的AI_table格式可以参考system文件夹下的DummyAi.lua脚本文件。

语法
Luacopy 复制
lualib:SetDummyAIOption(
    dummy,
    AI_table
)

参数
dummy

string

 
假人或英雄的GUID

AI_table

table

 
AI各项配置（使用int32数组表示）

表格式：{生命值百分比1,魔法值百分比1,生命值百分比2,与怪物之间的距离,死亡后尸体躺在地上的时间,攻击状态的范围,守护状态的范围,操作延迟时间,生命值百分比3,模拟网络延时,不使用普通攻击的等级,法师假人受伤减少的生命值}

例如：default_option = { 80, 50, 40, 3, 20, 6, 12, 0, 100, 20, 20, 1}

生命值百分比1：当生命值低于此百分比时，使用生命药水和回血技能（客户端控制喝药时无效）。

魔法值百分比1：当魔法值低于此百分比时，使用魔法药（客户端控制喝药时无效）。

生命值百分比2：当生命值低于此百分比时，使用瞬回药（客户端控制喝药时无效）。

与怪物之间的距离：当假人与怪物之间的距离小于此距离时（单位为逻辑格），术士假人和法师假人开始逃跑。

死亡后尸体躺在地上的时间：假人死亡后尸体躺在地上的时间，单位为秒（s）。

攻击状态的范围：假人攻击状态的范围，单位为逻辑格。

守护状态的范围：假人守护状态的范围，单位为逻辑格。

操作延迟时间：假人操作延迟时间使得假人动作频率不会过快，单位为毫秒（ms），范围为0-100。

生命值百分比3：当术士假人和法师假人生命值低于此百分比时，假人会逃跑。

模拟网络延时：模拟网络延时，单位为毫秒（ms）。

不使用普通攻击的等级：当术士假人和法师假人达到此等级及以上等级时，不再使用普通攻击。

法师假人受伤减少的生命值：当法师假人受伤减少的生命值达到此生命值时，会召唤分身。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local DummyAi_option = { 80, 50, 40, 3, 20, 6, 12, 0, 100, 20, 20, 1} 
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 8, 18, player, 500) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyState(param, 3) --设置假人状态为战斗状态 
    --设置假人的AI配置
    if lualib:SetDummyAIOption(param, DummyAi_option) then
        lualib:SysMsg_SendWarnMsg(player, "假人AI配置设置成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "假人AI配置设置失败")
    end
end

--此示例代码运行成功如下图所示。

SetDummyAIOption.png
<上一篇:获取摊位详细信息下一篇:设置假人的默认AI配置>
SetDummyDefaultAIOption
设置假人的默认AI配置

更新时间：2022-07-19 00:00:00
此函数设置假人的默认AI配置。

note_icon 备注
详细的AI_table格式可以参考system文件夹下的DummyAi.lua脚本文件。

语法
Luacopy 复制
lualib:SetDummyDefaultAIOption(
    AI_table
)

参数
AI_table

table

 
AI各项配置（使用int32数组表示）

表格式：{生命值百分比1,魔法值百分比1,生命值百分比2,与怪物之间的距离,死亡后尸体躺在地上的时间,攻击状态的范围,守护状态的范围,操作延迟时间,生命值百分比3,模拟网络延时,不使用普通攻击的等级,法师假人受伤减少的生命值}

例如：default_option = { 80, 50, 40, 3, 20, 6, 12, 0, 100, 20, 20, 1}

生命值百分比1：当生命值低于此百分比时，使用生命药水和回血技能（客户端控制喝药时无效）。

魔法值百分比1：当魔法值低于此百分比时，使用魔法药（客户端控制喝药时无效）。

生命值百分比2：当生命值低于此百分比时，使用瞬回药（客户端控制喝药时无效）。

与怪物之间的距离：当假人与怪物之间的距离小于此距离时（单位为逻辑格），术士假人和法师假人开始逃跑。

死亡后尸体躺在地上的时间：假人死亡后尸体躺在地上的时间，单位为秒（s）。

攻击状态的范围：假人攻击状态的范围，单位为逻辑格。

守护状态的范围：假人守护状态的范围，单位为逻辑格。

操作延迟时间：假人操作延迟时间使得假人动作频率不会过快，单位为毫秒（ms），范围为0-100。

生命值百分比3：当术士假人和法师假人生命值低于此百分比时，假人会逃跑。

模拟网络延时：模拟网络延时，单位为毫秒（ms）。

不使用普通攻击的等级：当术士假人和法师假人达到此等级及以上等级时，不再使用普通攻击。

法师假人受伤减少的生命值：当法师假人受伤减少的生命值达到此生命值时，会召唤分身。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local DummyAi_default_option = { 80, 50, 40, 3, 20, 6, 12, 0, 100, 20, 20, 1} 
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 8, 18, player, 500) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyState(param, 3) --设置假人状态为战斗状态 
    --设置假人的默认AI配置
    if lualib:SetDummyDefaultAIOption(DummyAi_default_option) then
        lualib:SysMsg_SendWarnMsg(player, "假人默认AI配置设置成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "假人默认AI配置设置失败")
    end
end

--此示例代码运行成功如下图所示。

SetDummyDefaultAIOption.png
<上一篇:设置假人的AI配置下一篇:设置假人的默认技能AI策略>
SetDummyDefaultSkillAI
设置假人的默认技能AI策略

更新时间：2022-04-27 00:00:00
此函数设置某职业的假人的默认技能AI策略。

语法
Luacopy 复制
lualib:SetDummyDefaultSkillAI(
    job,
    AI_table
)

参数
job

int32

 
假人职业

1战士

2法师

3术士

AI_table

table

 
表格式：{优先级,技能ID,策略1,策略2,策略3,策略4,策略5,使用概率,最大连续使用次数,使用间隔}

例如：tao_default_skill = { {0,0,lua_use_round_skill,lua_escape_move,lua_Use_Fail_Do_Abandon, lua_Use_Fail_Do _Abandon,lua_Use_Fail_Do_Abandon,100,1,1}}

优先级：技能施放的优先级。数字越小表示优先级越高，优先级相同的情况下，随机施放技能。

技能ID：技能编号，与技能模板表中的编号相对应。

策略1：技能使用策略。

策略2：跑位策略。

策略3：技能失败后策略，当技能施放位置不正确时采用的策略。

策略4：技能失败后策略，当技能无法施放时采用的策略。

策略5：技能失败后策略，当技能可以施放但不是最佳位置时采用的策略。

使用概率：技能施放的概率百分比（0 - 100）。非必填项，不填则默认为100。

最大连续使用次数：技能可连续施放的最大次数。非必填项，不填则不做限制使用。

使用间隔：其他技能的施放次数。在该技能下一轮施放前，程序会自动选择并施放其他技能。非必填项，不填则不做限制使用。

note_icon 备注
策略1-5的具体定义，请参见英雄AI技能策略。

官方示例脚本路径：script/system/DummyAi.lua 

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码i
Luacopy 复制
function Warnprint(npc, player)
    --技能使用策略
    lua_use_recover_skill = 0           --回复生命
    lua_use_add_buff_skill = 1          --增益BUFF
    lua_use_sub_buff_skill = 2          --减益BUFF
    lua_use_single_attack_skill = 3     --单体攻击
    lua_use_line_attack_skill = 4       --线型攻击
    lua_use_multi_attack_skill = 5      --群体攻击
    lua_use_trap_skill = 6              --陷阱类、烈焰火海
    lua_use_summon_skill = 7            --召唤类
    lua_use_round_skill = 8             --攻击周围、月弧弯刀、雷霆极光
    lua_use_liehuo_skill = 9            --烈焰斩
    lua_use_gongxin_skill = 10          --重击术
    lua_use_cisha_skill = 11            --风刺
    lua_use_push_skill = 12             --蛮力冲锋
    lua_use_remove_buff_skill = 13      --BUFF消除技能
    lua_use_hide_skill = 14             --隐形类技能
    lua_use_copy_skill = 15				--分身类技能

    --跑位策略
    lua_special_2_grid_move = 0     -- 寻找风刺位
    lua_max_distance_move = 1       -- 保持最大的攻击距离
    lua_min_distance_move = 2       -- 保持最小的攻击距离
    lua_help_lord_move = 3          -- 救援主人
    lua_escape_move = 4             -- 逃跑

    --技能失败后策略
    lua_Use_Fail_Do_Abandon = 0           -- 放弃
    lua_Use_Fail_Do_Move = 1              -- 跑位
    lua_Use_Fail_Do_Escape = 2            -- 逃跑
    lua_Use_Fail_Do_Desperately = 3       -- 拼命
    lua_Use_Fail_Do_Wait = 4              -- 等待
    local warrior_default_skill = {
        --月弧弯刀
        {30, 78, lua_use_round_skill, lua_min_distance_move, lua_Use_Fail_Do_Abandon, lua_Use_Fail_Do_Abandon, lua_Use_Fail_Do_Abandon},
        --普攻
        {100, 78, lua_use_single_attack_skill, lua_min_distance_move, lua_Use_Fail_Do_Move, lua_Use_Fail_Do_Escape, lua_Use_Fail_Do_Desperately},
    }
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 8, 18, player, 500) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyState(param, 3) --设置假人状态为战斗状态 
    --设置假人的默认技能AI策略
    if lualib:SetDummyDefaultSkillAI(1, warrior_default_skill) then
        lualib:SysMsg_SendWarnMsg(player, "战士职业假人默认技能AI策略配置成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "战士职业假人默认技能AI策略配置失败")
    end
end

--此示例代码运行成功如下图所示。

SetDummyDefaultSkillAI.png
<上一篇:设置假人的默认AI配置下一篇:设置假人的技能AI策略>
SetDummySkillAI
设置假人的技能AI策略

更新时间：2022-04-27 00:00:00
此函数设置假人的技能AI策略。

语法
Luacopy 复制
lualib:SetDummySkillAI(
    dummy,
    AI_table
)

参数
dummy

string

 
假人或英雄的GUID

AI_table

table

 
表格式：{优先级,技能ID,策略1,策略2,策略3,策略4,策略5,使用概率,最大连续使用次数,使用间隔}

例如：tao_default_skill = { { 0 , 0 ,lua_use_round_skill,lua_escape_move,lua_Use_Fail_Do_Abandon, lua_Use_Fail_Do _Abandon,lua_Use_Fail_Do_Abandon, 100 , 1 , 1 }}

优先级：技能施放的优先级。数字越小表示优先级越高，优先级相同的情况下，随机施放技能。

技能ID：技能编号，与技能模板表中的编号相对应。

策略1：技能使用策略。

策略2：跑位策略。

策略3：技能失败后策略，当技能施放位置不正确时采用的策略。

策略4：技能失败后策略，当技能无法施放时采用的策略。

策略5：技能失败后策略，当技能可以施放但不是最佳位置时采用的策略。

使用概率：技能施放的概率百分比（0 - 100）。非必填项，不填则默认为100。

最大连续使用次数：技能可连续施放的最大次数。非必填项，不填则不做限制使用。

使用间隔：其他技能的施放次数。在该技能下一轮施放前，程序会自动选择并施放其他技能。非必填项，不填则不做限制使用。

note_icon 备注
策略1-5的具体定义，请参见英雄AI技能策略。

官方示例脚本路径：script/system/DummyAi.lua

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    --技能使用策略
    lua_use_recover_skill = 0           --回复生命
    lua_use_add_buff_skill = 1          --增益BUFF
    lua_use_sub_buff_skill = 2          --减益BUFF
    lua_use_single_attack_skill = 3     --单体攻击
    lua_use_line_attack_skill = 4       --线型攻击
    lua_use_multi_attack_skill = 5      --群体攻击
    lua_use_trap_skill = 6              --陷阱类、烈焰火海
    lua_use_summon_skill = 7            --召唤类
    lua_use_round_skill = 8             --攻击周围、月弧弯刀、雷霆极光
    lua_use_liehuo_skill = 9            --烈焰斩
    lua_use_gongxin_skill = 10          --重击术
    lua_use_cisha_skill = 11            --风刺
    lua_use_push_skill = 12             --蛮力冲锋
    lua_use_remove_buff_skill = 13      --BUFF消除技能
    lua_use_hide_skill = 14             --隐形类技能
    lua_use_copy_skill = 15				--分身类技能

    --跑位策略
    lua_special_2_grid_move = 0     -- 寻找风刺位
    lua_max_distance_move = 1       -- 保持最大的攻击距离
    lua_min_distance_move = 2       -- 保持最小的攻击距离
    lua_help_lord_move = 3          -- 救援主人
    lua_escape_move = 4             -- 逃跑

    --技能失败后策略
    lua_Use_Fail_Do_Abandon = 0           -- 放弃
    lua_Use_Fail_Do_Move = 1              -- 跑位
    lua_Use_Fail_Do_Escape = 2            -- 逃跑
    lua_Use_Fail_Do_Desperately = 3       -- 拼命
    lua_Use_Fail_Do_Wait = 4              -- 等待
    local warrior_skill = {
        --月弧弯刀
        {30, 78, lua_use_round_skill, lua_min_distance_move, lua_Use_Fail_Do_Abandon, lua_Use_Fail_Do_Abandon, lua_Use_Fail_Do_Abandon},
        --普攻
        {100, 78, lua_use_single_attack_skill, lua_min_distance_move, lua_Use_Fail_Do_Move, lua_Use_Fail_Do_Escape, lua_Use_Fail_Do_Desperately},
    }
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 8, 18, player, 500) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyState(param, 3) --设置假人状态为战斗状态 
    --设置假人的技能AI策略
    if lualib:SetDummySkillAI(param, warrior_skill) then
        lualib:SysMsg_SendWarnMsg(player, "假人技能AI策略配置成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "假人技能AI策略配置失败")
    end
end

--此示例代码运行成功如下图所示。

SetDummySkillAI.png
<上一篇:设置假人的默认技能AI策略下一篇:设置是否允许假人独立存在>
SetDummyStandalone
设置是否允许假人独立存在

更新时间：2022-04-27 00:00:00
此函数设置是否允许假人独立存在。

caution_icon 注意
设置假人可以单独存在时，主人下线后假人和英雄还会保留在游戏中，但主人上线后游戏中的英雄会被移除。

请谨慎使用该接口。

语法
Luacopy 复制
lualib:SetDummyStandalone(
    dummy,
    opt
)
参数
dummy

string

 
假人或英雄的GUID

opt

bool

 
是否允许假人独立存在

true允许

false不允许

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 133, 143, player, 500000) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyStandalone(param, true) --设置允许假人独立存在
end

--此示例代码运行成功后，假人可以独立存在。

<上一篇:设置假人的技能AI策略下一篇:设置假人状态>
SetDummyState
设置假人状态

更新时间：2022-04-27 00:00:00
此函数设置假人状态，并同步到数据库服务器。

语法
Luacopy 复制
lualib:SetDummyState(
    dummy_guid,
    state
)

参数
dummy_guid

string

 
假人的GUID

state

int32

 
假人的状态

0休息

2跟随

3战斗

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Boss_GUID = (lualib:MonstersByKey("个人食人统领", 2, true, true))[1] --获取BOSS的GUID
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local param = lualib:GenDummy("测试假人", 2, 1, Map_GUID, 8, 18, player, 500) --在当前地图的指定的坐标处生成一个假人
    lualib:SetDummyState(param, 3) --设置假人状态为战斗状态
    lualib:DummyLockTarget(param, Boss_GUID) --指定假人锁定敌人
end

--此示例代码运行成功如下图所示。

DummyLockTarget.gif
<上一篇:设置是否允许假人独立存在下一篇:设置假人摆摊时的收购列表>
StallSetBuyList
设置假人摆摊时的收购列表

更新时间：2022-11-18 00:00:00
此函数设置假人摆摊时的收购列表（需要让假人先处于摆摊状态）。

语法
Luacopy 复制
lualib:StallSetBuyList(
    dummy,
    ids,
    nums,
    price_type,
    price
)
参数
dummy

string

 
假人的GUID

ids

table

 
商品的模板ID

具体格式：{商品1的模板ID,商品2的模板ID,...}

nums

table

 
商品的数量

具体格式：{商品1的数量,商品2的数量,...}

price_type

table

 
商品的价格类型

具体格式：{商品1的价格类型,商品2的价格类型,...}

0金币

1元宝

2积分

price

table

 
商品的价格

具体格式：{商品1的价格,商品2的价格,...}

返回值
bool

 
true摆摊成功

false摆摊失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
local x = lualib:X(player) --获取玩家当前所在点的X坐标
local y = lualib:Y(player) --获取玩家当前所在点的Y坐标
local param = lualib:GenDummy("wca123", 2, 1, map, x+1, y+1, player, 0) --在当前地图的指定的坐标处生成一个假人
lualib:SetLevel(param, 30) --设置假人等级为30级
lualib:AddItem(param, "羽毛", 20, false, "测试假人摆摊", player) --给假人添加20个羽毛
local GUID = lualib:BagItemList(param, true, false, false) --获取假人背包中所有物品的GUID列表
--设置假人摆摊
if lualib:StartStall(param,"测试假人摊位1",GUID,{1},{20}) then
    lualib:SysMsg_SendWarnMsg(player, "摆摊成功")
else
    lualib:SysMsg_SendWarnMsg(player, "摆摊失败")
end
--设置假人摆摊时的收购列表
if lualib:StallSetBuyList(param,{154},{10},{1},{200}) then
    lualib:SysMsg_SendWarnMsg(player, "设置假人收购列表成功")
else
    lualib:SysMsg_SendWarnMsg(player, "设置假人收购列表失败")
end

--此示例代码运行成功如下图所示。

StallSetBuyList.png

StartStall_2.png

StallSetBuyList_2.png
<上一篇:设置假人状态下一篇:假人摆摊>
StartStall
假人摆摊

更新时间：2022-04-27 00:00:00
此函数让假人开始摆摊，必须在可摆摊的区域才能成功执行摆摊操作。

语法
Luacopy 复制
lualib:StartStall(
    dummy,
    stall_name,
    goods,
    price_type,
    price
)

参数
dummy

string

 
假人的GUID

stall_name

string

 
摊位名称

goods

table

 
商品的GUID

caution_icon 注意
商品必须是假人包裹中的物品。

price_type

table

 
商品的价格类型

0金币

1元宝

2积分

price

table

 
商品的价格

note_icon 备注
商品的价格类型必须与商品的价格一一对应。

返回值
bool

 
true摆摊成功

false摆摊失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local Dummy = lualib:GenDummy("测试假人007", 2, 1, Map_GUID, 151, 157, player, 50) --在当前地图的指定的坐标处生成一个假人
    lualib:SetLevel(Dummy, 30) --设置假人等级为30级
    lualib:AddItem(Dummy, "高级灵元精粹", 20, false, "测试假人摆摊", player) --给假人添加20个高级灵元精粹
    local GUID = lualib:BagItemList(Dummy, true, false, false) --获取假人背包中所有物品的GUID列表
    --设置假人摆摊
    if lualib:StartStall(Dummy,"测试摊位",GUID,{1},{20}) then
        lualib:SysMsg_SendWarnMsg(player, "摆摊成功")
        lualib:AddTimerEx(player, 1111, 10000, 1, "TestStopStall", param) --添加定时器，10s后执行TestStopStall函数。
    else
        lualib:SysMsg_SendWarnMsg(player, "摆摊失败")
    end
end

--结束假人摆摊
function TestStopStall(player, id, Dummy)
    if lualib:StopStall(Dummy) then
        lualib:SysMsg_SendWarnMsg(player, "结束假人摆摊成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "结束假人摆摊失败")
    end
end

--此示例代码运行成功如下图所示。

--假人摆摊。

StartStall.png

StartStall_2.png

--10s后执行假人结束摆摊操作。

StopStall.png

StopStall_2.png
<上一篇:设置假人摆摊时的收购列表下一篇:结束假人摆摊>
StopStall
结束假人摆摊

更新时间：2022-04-27 00:00:00
此函数设置结束假人摆摊。

语法
Luacopy 复制
lualib:StopStall(
    dummy
)

参数
dummy

string

 
假人的GUID

返回值
bool

 
true结束摆摊成功

false结束摆摊失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    local Map_GUID = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
    local Dummy = lualib:GenDummy("测试假人007", 2, 1, Map_GUID, 151, 157, player, 50) --在当前地图的指定的坐标处生成一个假人
    lualib:SetLevel(Dummy, 30) --设置假人等级为30级
    lualib:AddItem(Dummy, "高级灵元精粹", 20, false, "测试假人摆摊", player) --给假人添加20个高级灵元精粹
    local GUID = lualib:BagItemList(Dummy, true, false, false) --获取假人背包中所有物品的GUID列表
    --设置假人摆摊
    if lualib:StartStall(Dummy,"测试摊位",GUID,{1},{20}) then
        lualib:SysMsg_SendWarnMsg(player, "摆摊成功")
        lualib:AddTimerEx(player, 1111, 10000, 1, "TestStopStall", param) --添加定时器，10s后执行TestStopStall函数。
    else
        lualib:SysMsg_SendWarnMsg(player, "摆摊失败")
    end
end

--结束假人摆摊
function TestStopStall(player, id, Dummy)
    if lualib:StopStall(Dummy) then
        lualib:SysMsg_SendWarnMsg(player, "结束假人摆摊成功")
    else
        lualib:SysMsg_SendWarnMsg(player, "结束假人摆摊失败")
    end
end

--此示例代码运行成功如下图所示。

--假人摆摊。

StartStall.png

StartStall_2.png

--10s后执行假人结束摆摊操作。

StopStall.png

StopStall_2.png
<上一篇:假人摆摊
AddHeroRage
增加英雄的怒气值

更新时间：2024-01-03 00:00:00
此函数增加英雄的怒气值。

语法
Luacopy 复制
lualib:AddHeroRage(
    hero_guid,
    iValue
)

参数
hero_guid

string

 
英雄的GUID

iValue

int64

 
增加的数值

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
    local hero_guid = lualib:GetCurrentHero(player)
    if lualib:AddHeroRage(hero_guid,10) then
        lualib:Warn("操作成功")
    else
        lualib:Warn("操作失败")
    end
end
下一篇:生成英雄的分身>
CopyHero
生成英雄的分身

更新时间：2021-11-19 00:00:00
此函数作用为生成英雄的分身。

语法
Luacopy 复制
lualib:CopyHero(
    hero_guid,
    life,
    callback,
    params
)

参数
hero_guid

string

 
英雄原身的GUID

life

uint32

 
分身的生命时间

单位为秒（s）

0表示永远存在

callback

string

 
分身生成成功后的回调函数

回调函数格式：function(player, err, hero, param)

player(string)：英雄主人的GUID

err(int)：错误码（0代表成功）

hero(string)：英雄的GUID

params(string)：预设的回调函数参数

params

string

 
预设的回调函数参数

返回值
string

 生成的英雄分身的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(npc, player)
    local hero = lualib:CopyHero("14mgm2ikvgg0v",60,"CopyHeroResult","你好") --生成英雄的分身
end

function CopyHeroResult(player, err, hero,param)
    lualib:Warn("英雄分身的GUID == : "..hero)
    lualib:Warn("err == : "..err)
end

--此示例代码运行成功如下图所示。

CopyHero.png
<上一篇:增加英雄的怒气值下一篇:创建英雄>
CreateHeroForPlayer
创建英雄

更新时间：2021-11-26 00:00:00
此函数为玩家角色创建一个英雄。

语法
Luacopy 复制
lualib:CreateHeroForPlayer(
    player,
    name,
    job,
    gender,
    callback,
    params
)

参数
player

string

 
玩家角色的GUID

name

string

 
英雄的姓名

job

uint8

 
英雄的职业

1战士

2法师

3术士

gender

uint8

 
英雄的性别

callback

string

 
创建完成后的回调函数

回调函数格式：function(player, err, hero, param)

player(string)：英雄主人的GUID

err(int)：错误码（0代表成功，非0代表不成功）

hero(string)：英雄的GUID

params(string)：预设的回调函数参数

params

string

 
预设的回调函数参数

返回值
bool

 
true创建成功

false创建失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否创建成功以回调函数为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    lualib:CreateHeroForPlayer(player,"英雄98k007",1,1,"CreateHeroResult","英雄98k007") --创建一个英雄
end

function CreateHeroResult(player, err, name)
    if err == 0 then          
        lualib:Warn("创建英雄成功")
    else          
        lualib:SysWarnMsg(player, "创建英雄"..name.."失败，错误码是"..err)
        lualib:Warn("创建英雄失败")
    end  
end

--此示例代码运行前效果如下图所示。

CreateHeroForPlayer.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

CreateHeroForPlayer_2.png

CreateHeroForPlayer_3.png
<上一篇:生成英雄的分身下一篇:删除英雄>
DeleteHeroForPlayer
删除英雄

更新时间：2021-11-19 00:00:00
此函数让玩家删除英雄。

语法
Luacopy 复制
lualib:DeleteHeroForPlayer(
    player,
    hero
)

参数
player

string

 
玩家角色的GUID

hero

string

 
英雄的GUID

返回值
bool

 
true删除成功

false删除失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否删除成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:DeleteHeroForPlayer(player,"14mgm1iq34s17") then
        lualib:Warn("删除成功")
    else
        lualib:Warn("删除失败")
    end
end

--此示例代码运行前效果如下图所示。

DeleteHeroForPlayer.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

DeleteHeroForPlayer_2.png

DeleteHeroForPlayer_3.png
<上一篇:创建英雄下一篇:载入玩家的某个英雄>
GenHeroForPlayer
载入玩家的某个英雄

更新时间：2021-11-22 00:00:00
此函数载入玩家的某个英雄。

note_icon 备注
若英雄已经被载入后再次使用此接口载入时，会将英雄踢出服务器并提示错误信息。

语法
Luacopy 复制
lualib:GenHeroForPlayer(
    player,
    hero,
    callback,
    params
)

参数
player

string

 
玩家角色的GUID

hero

string

 
英雄的GUID

callback

string

 
载入完成后的回调函数

回调函数格式：function(player, err, param, hero)

player(string)：英雄主人的GUID

err(int)：错误码（0代表成功，非0代表不成功）

params(string)：预设的回调函数参数

hero(string)：英雄的GUID

params

string

 
预设的回调函数参数

返回值
bool

 
true载入请求成功

false载入请求失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否载入成功以回调函数为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:CreateHeroForPlayer(player, "测试测试", lualib:GenRandom(1, 3), lualib:GenRandom(1, 2),  "CreateHeroResult", "") --创建一个英雄

function CreateHeroResult(player, err, hero, param)
    if err == 0 then
        lualib:GenHeroForPlayer(player, hero, "GenHeroResult", "") --载入英雄
        lualib:SysWarnMsg(player, "创建英雄"..hero.."成功")
    else
        lualib:SysWarnMsg(player, "创建英雄"..hero.."失败，错误码是"..err)
    end
end

function GenHeroResult(player, err, param, hero)
    lualib:SysWarnMsg(player, "载入英雄"..hero.."成功")
    lualib:SysWarnMsg(player, "英雄名："..lualib:Name(hero))
end

--此示例代码运行成功如下图所示。

GenHeroForPlayer_2.png
<上一篇:删除英雄下一篇:获取玩家召唤的英雄的GUID>
GetCurrentHero
获取玩家召唤的英雄的GUID

更新时间：2021-11-19 00:00:00
此函数获取玩家召唤的英雄的GUID。

当玩家召唤出多个英雄时，此接口会返回玩家最后一个召唤出来的英雄的GUID。

语法
Luacopy 复制
lualib:GetCurrentHero(
    player
)

参数
player

string

 
玩家角色的GUID

返回值
string

 
英雄存在则返回英雄的GUID

英雄不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local hero = lualib:GetCurrentHero(player)
lualib:Warn("当前英雄的GUID :"..hero)

--此示例代码运行成功如下图所示。

GetCurrentHero.png
<上一篇:载入玩家的某个英雄下一篇:获得英雄的分身数量>
GetHeroCopyNum
获得英雄的分身数量

更新时间：2021-11-19 00:00:00
此函数获得英雄的分身数量。

语法
Luacopy 复制
lualib:GetHeroCopyNum(
    hero_guid
)

参数
hero_guid

string

 
英雄的GUID

返回值
uint32

 英雄的分身数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
GetHeroCopyNum.png
local hero = lualib:GetCurrentHero(player) --获取玩家召唤的英雄的GUID
local num = lualib:GetHeroCopyNum(hero) --获取此英雄的分身数量
lualib:Warn("分身数量 =="..num)

--此示例代码运行成功如下图所示。

GetHeroCopyNum_2.png
<上一篇:获取玩家召唤的英雄的GUID下一篇:获取英雄主人的GUID>
GetHeroLord
获取英雄主人的GUID

更新时间：2023-05-26 00:00:00
此函数获取英雄主人的GUID。

语法
Luacopy 复制
lualib:GetHeroLord(
    hero
)

参数
hero

string

 
英雄的GUID

返回值
string

 英雄主人的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local hero = lualib:GetCurrentHero(player)
lualib:Warn("英雄的主人GUID =="..lualib:GetHeroLord(hero))

--此示例代码运行成功如下图所示。

GetHeroLord.png
<上一篇:获得英雄的分身数量下一篇:获取英雄的怒气值>
GetHeroRage
获取英雄的怒气值

更新时间：2021-11-19 00:00:00
此函数获取英雄的怒气值。

语法
Luacopy 复制
lualib:GetHeroRage(
    hero
)

参数
hero

string

 
英雄的GUID

返回值
int32

 
英雄存在则返回英雄当前的怒气值

英雄不存在则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:SetHeroRage("14mgm1iq34s1d","13") then --设置英雄的怒气值
        lualib:Warn("设置成功")
    else
        lualib:Warn("设置失败")
    end
    hero = lualib:GetHeroRage("14mgm1iq34s1d") --获取英雄的怒气值
    lualib:Warn("英雄的怒气值 == "..hero)
end

--此示例代码运行成功如下图所示。

SetHeroRage.png

GetHeroRage.png
<上一篇:获取英雄主人的GUID下一篇:获取英雄的状态（适用脚本控制英雄AI）>
GetHeroState
获取英雄的状态（适用脚本控制英雄AI）

更新时间：2024-05-17 00:00:00
此函数获取英雄的状态。

此函数仅适用于脚本控制英雄AI逻辑，即需在全局表中新的英雄AI脚本名填入了脚本文件名。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→英雄类别区域。

语法
Luacopy 复制
lualib:GetHeroState(
    hero_guid
)
参数
hero_guid

string

 
英雄的GUID

返回值
uint8

 
英雄的状态

0空闲

1客户端手动控制

2跟随

3攻击

4保卫

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local hero_guid = lualib:GetCurrentHero(player)
    local hero_state = lualib:GetHeroState(hero_guid) 
    lualib:Warn("英雄的当前状态序号为："..hero_state)
end

--当英雄处于空闲（休息）状态时，此示例代码将输出日志“英雄的当前状态序号为：0”
<上一篇:获取英雄的怒气值下一篇:获取英雄的状态>
GetHeroStatus
获取英雄的状态

更新时间：2024-05-17 00:00:00
此函数获取英雄的状态。

此函数仅适用于选择了全局表中英雄使用哪端AI，不适用于使用脚本控制英雄AI逻辑的方式。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→英雄类别区域。

如使用了脚本控制英雄AI逻辑，相关接口请参见GetHeroState。

语法
Luacopy 复制
lualib:GetHeroStatus(
    hero_guid
)
参数
hero_guid

string

 
英雄的GUID

返回值
uint8

 
英雄的状态

0空闲

1客户端手动控制

2走路

3攻击

4跟随

5保卫

6合击

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local heros = lualib:GetPlayerHeroList(player)
local hero_status = {[0] = "空闲", "客户端手动控制", "走路", "攻击", "跟随", "保卫", "合击"}
lualib:SysMsg_SendWarnMsg(player, "英雄 " .. heros[1].name .. " 的状态为 " .. hero_status[lualib:GetHeroStatus(heros[1].guid)])

--当英雄处于空闲（休息）状态时，此示例代码运行成功如下图所示。

GetHeroStatus.png

--当英雄处于攻击（战斗）状态时，此示例代码运行成功如下图所示。

GetHeroStatus_2.png

--当英雄处于跟随状态时，此示例代码运行成功如下图所示。

GetHeroStatus_3.png

--当英雄处于客户端手动控制状态时，此示例代码运行成功如下图所示。

GetHeroStatus_4.png

--当英雄处于保护状态时，此示例代码运行成功如下图所示。

GetHeroStatus_5.png

--当英雄处于合击状态时，此示例代码运行成功如下图所示。

GetHeroStatus_4.png
<上一篇:获取英雄的状态（适用脚本控制英雄AI）下一篇:获取英雄合击的目标的GUID>
GetJoinHitTarget
获取英雄合击的目标的GUID

更新时间：2021-11-19 00:00:00
此函数获取英雄合击的目标的GUID。

语法
Luacopy 复制
lualib:GetJoinHitTarget(
    hero_guid
)

参数
hero_guid

string

 
英雄的GUID

返回值
string

 
合击目标角色的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_prepare_joint_hit,"on_prepare_joint_hit")

function on_prepare_joint_hit(heroGuid,skillKeyname,targetGuid)
    lualib:Warn(""..heroGuid) --英雄的GUID
    lualib:Warn(""..skillKeyname) --合击技能的索引名
    lualib:Warn(""..targetGuid) --目标的GUID
    hero = lualib:GetJoinHitTarget(heroGuid) --获取英雄合击的目标的GUID
    lualib:Warn("合击目标的guid："..hero)
end

--此示例代码运行成功如下图所示（返回的合计目标的GUID与回调函数中返回的目标的GUID一致）。

GetJoinHitTarget.png
<上一篇:获取英雄的状态下一篇:获取玩家已经载入的英雄列表>
GetPlayerCurrentHeroList
获取玩家已经载入的英雄列表

更新时间：2022-04-27 00:00:00
此函数获取玩家已经载入的英雄列表。

语法
Luacopy 复制
lualib:GetPlayerCurrentHeroList(
    player
)

参数
player

string

 
玩家角色的GUID

返回值
table

 
英雄列表（列表中只包含英雄的GUID）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    heros = lualib:GetPlayerCurrentHeroList(player) --获取玩家已经载入的英雄列表
    lualib:Warn("载入列表"..serialize(heros))
end

--此示例代码运行成功如下图所示。

GetPlayerCurrentHeroList.png
<上一篇:获取英雄合击的目标的GUID下一篇:获取玩家所有的英雄列表>
GetPlayerHeroList
获取玩家所有的英雄列表

更新时间：2021-11-26 00:00:00
此函数获取玩家所有的英雄列表。

语法
Luacopy 复制
lualib:GetPlayerHeroList(
    player
)

参数
player

string

 
玩家角色的GUID

返回值
table

 
英雄列表

note_icon 备注
英雄列表中的每一项对应一个英雄的信息，具体信息内容如下所示：

gender：英雄的性别（1代表男性，2代表女性）

name：英雄的名字

level：英雄的等级

job：英雄的职业（1代表战士，2代表法师，3代表术士）

guid：英雄的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
GetPlayerHeroList_2.png
local hero = lualib:GetPlayerHeroList(player)
lualib:Warn(""..serialize(hero))

--此示例代码运行成功如下图所示。

GetPlayerHeroList.png
<上一篇:获取玩家已经载入的英雄列表下一篇:获取英雄主人的GUID>
HeroGetMaster
获取英雄主人的GUID

更新时间：2023-05-26 00:00:00
此函数获取英雄主人的GUID。

语法
Luacopy 复制
lualib:HeroGetMaster(
    hero_guid
)
参数
hero_guid

string

 
英雄的GUID

返回值
string

 
主人的GUID

note_icon 备注
当主人不存在（例如：主人下线但英雄仍在线）时，则会返回空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local hero = lualib:GetCurrentHero(player) --获取玩家召唤的英雄的GUID
lualib:Warn("主人的GUID为"..lualib:HeroGetMaster(hero)) --获取英雄主人的GUID

--此示例代码运行成功如下图所示。

HeroGetMaster.png
<上一篇:获取玩家所有的英雄列表下一篇:让英雄穿戴主人背包中的装备>
HeroTakeOnEquipFromMasterBag
让英雄穿戴主人背包中的装备

更新时间：2022-04-29 00:00:00
此函数让英雄穿戴主人背包中的装备。

caution_icon警告
执行期间会有脚本触发，触发里不要对英雄和主人背包进行操作。

语法
Luacopy 复制
lualib:HeroTakeOnEquipFromMasterBag(
    strHero,
    strItem,
    iSite
)

参数
strHero

string

 
英雄的GUID

strItem

string

 
物品的GUID或者物品的索引名（KeyName）

iSite

int

 
装备位

具体请参考角色装备位类型定义

note_icon 备注
仅当物品为护腕或戒指时，此参数才会生效。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
若物品的类型与指定的装备位不匹配，则会穿戴失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint1(npc, player)
    local item_site = lualib:Player_GetItemGuid(player,lua_site_bag_0) --获取主人背包第一个格子中物品的GUID
    local hero = lualib:HeroTakeOnEquipFromMasterBag("14mgm2ikvgg0v",item_site,4) --将主人背包第一个格子中物品的GUID装备到英雄身上
    if hero == true then
        lualib:Warn("装备成功")
    else 
        lualib:Warn("装备失败")
    end
end

--此示例代码运行成功如下图所示（主人背包中的护腕装备到英雄身上）。

HeroTakeOnEquipFromMasterBag.png
<上一篇:获取英雄主人的GUID下一篇:获取英雄的配置表结构>
Hero_DataRow
获取英雄的配置表结构

更新时间：2022-03-14 00:00:00
此函数根据英雄的职业和等级获取英雄的配置表结构。

语法
Luacopy 复制
lualib:Hero_DataRow(
    job,
    level
)

参数
job

uint8

 
英雄的职业

1战士

2法师

3术士

level

uint32

 
英雄的等级

返回值
table

 
英雄的配置表结构

其定义请参见Hero模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local hero_data = lualib:Hero_DataRow(1,10) --获取10级战士的英雄配置表结构
lualib:Warn(""..serialize(hero_data))

--此示例代码运行成功如下图所示。

Hero_DataRow.png
<上一篇:让英雄穿戴主人背包中的装备下一篇:获取主人给英雄指定的攻击目标>
Hero_GetLordSpecifiedTarget
获取主人给英雄指定的攻击目标

更新时间：2024-05-17 00:00:00
此函数获取主人给英雄指定的攻击目标。

语法
Luacopy 复制
lualib:Hero_GetLordSpecifiedTarget(
    hero_guid
)

参数
hero_guid

string

 
英雄的GUID

返回值
string

 
目标的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local hero_guid = lualib:GetCurrentHero(player)
    local result = lualib:Hero_GetLordSpecifiedTarget(hero_guid) 
    lualib:Warn("目标的GUID为"..result)
end
<上一篇:获取英雄的配置表结构下一篇:获取英雄保护的位置>
Hero_GetProtectPos
获取英雄保护的位置

更新时间：2024-05-17 00:00:00
此函数获取英雄保护的逻辑格位置。

语法
Luacopy 复制
lualib:Hero_GetProtectPos(
    hero_guid
)

参数
hero_guid

string

 
英雄的GUID

返回值
table

 
保护的逻辑格点坐标，为table格式。
具体格式为{[1]=横坐标,[2]=纵坐标}
例如：{[1] = 100, [2] = 200}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local hero_guid = lualib:GetCurrentHero(player)
    local result = lualib:Hero_GetProtectPos(hero_guid) 
    lualib:Warn("英雄的保护区域为"..serialize(result))
end
<上一篇:获取主人给英雄指定的攻击目标下一篇:英雄使用指定技能攻击指定目标>
Hero_Hit
英雄使用指定技能攻击指定目标

更新时间：2024-05-17 00:00:00
此函数让英雄使用指定的技能攻击指定的目标。

语法
Luacopy 复制
lualib:Hero_Hit(
    hero_guid,
    target_guid,
    skill_id
)

参数
hero_guid

string

 
英雄的GUID

target_guid

string

 
目标的GUID

skill_id

uint16

 
技能的ID

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
    local hero_guid = lualib:GetCurrentHero(player)
    lualib:AddSkill(hero_guid, "寒冰掌1级")
    if lualib:Hero_Hit(hero_guid,player,3152) then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end

--此示例代码运行成功后英雄将对指定目标施放技能。
<上一篇:获取英雄保护的位置下一篇:设置英雄的反隐侦测范围>
Hero_SetInvDetectRange
设置英雄的反隐侦测范围

更新时间：2023-11-13 00:00:00
此函数设置英雄的反隐侦测范围。

语法
Luacopy 复制
lualib:Hero_SetInvDetectRange(
    hero,
    inv_detect_range
)

参数
hero_guid

string

 
英雄的GUID

inv_detect_range

int8

 
反隐侦测的范围。
仅在使用接口lualib:Hero_SetInvDetect设置了英雄的反隐侦测类型为侦测范围内的目标时生效。

例如：某一时刻英雄自身所在逻辑格坐标为(100,100)，反隐侦测的范围为5，则实际会侦测的范围为(x,y)（其中x∈[-95,105],y∈[-95,105]）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local hero_guid = lualib:GetCurrentHero(player)
    lualib:Hero_SetInvDetect(hero_guid,2) --设置侦测类型为侦测范围内的目标
    lualib:Hero_SetInvDetectRange(hero_guid,5)
end
<上一篇:英雄使用指定技能攻击指定目标下一篇:设置英雄的反隐侦测类型>
Hero_SetInvDetect
设置英雄的反隐侦测类型

更新时间：2023-11-13 00:00:00
此函数设置英雄的反隐侦测类型。

语法
Luacopy 复制
lualib:Hero_SetInvDetect(
    hero,
    inv_detect_type
)

参数
hero_guid

string

 
英雄的GUID

inv_detect_type

int8

 
反隐侦测类型

-1引擎默认逻辑
默认的逻辑下，英雄具有侦测到隐身目标（无论自身是否受到攻击）的能力。

0不侦测
英雄不侦测隐身的目标。例如，英雄受到隐身目标的攻击时不会做出任何反应，如反击。

1侦测所有目标
英雄可侦测到隐身目标（自身受到攻击的情况下）。例如，英雄受到隐身目标的攻击时会进行反击。

2侦测范围内的目标
英雄可侦测到指定范围内的隐身目标（自身受到攻击的情况下）。 要设置侦测的范围，请参考接口lualib:Hero_SetInvDetectRange的说明。
返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local hero_guid = lualib:GetCurrentHero(player)
    lualib:Hero_SetInvDetect(hero_guid,0)
end   

--设为不侦测后，英雄无法侦测到处于隐身的目标
<上一篇:设置英雄的反隐侦测范围下一篇:给英雄设置主人指定的攻击目标>
Hero_SetLordSpecifiedTarget
给英雄设置主人指定的攻击目标

更新时间：2024-05-17 00:00:00
此函数给英雄设置以主人身份指定的攻击目标。

语法
Luacopy 复制
lualib:Hero_SetLordSpecifiedTarget(
    hero_guid,
    target_guid
)

参数
hero_guid

string

 
英雄的GUID

target_guid

string

 
目标的GUID

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
    local hero_guid = lualib:GetCurrentHero(player)
    if lualib:Hero_SetLordSpecifiedTarget(hero,"21egmaukdtcfg")  then
        lualib:Warn("执行成功")
    else
        lualib:Warn("执行失败")
    end
end
<上一篇:设置英雄的反隐侦测类型下一篇:判断英雄是否为分身>
IsHeroCopy
判断英雄是否为分身

更新时间：2021-11-19 00:00:00
此函数判断英雄是否为分身。

语法
Luacopy 复制
lualib:IsHeroCopy(
    hero_guid
)

参数
hero_guid

string

 
英雄的GUID

返回值
bool

 
true是英雄分身

false不是英雄分身

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:IsHeroCopy("14mgm1iq34s1d") then
        lualib:Warn("是英雄分身")
    else
        lualib:Warn("不是英雄分身")
    end
end

--此示例代码运行成功如下图所示。

IsHeroCopy.png
<上一篇:给英雄设置主人指定的攻击目标下一篇:设置英雄的怒气值>
SetHeroRage
设置英雄的怒气值

更新时间：2021-11-19 00:00:00
此函数设置英雄的怒气值。

语法
Luacopy 复制
lualib:SetHeroRage(
    hero,
    rage
)

参数
hero

string

 
英雄的GUID

rage

int32

 
怒气值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    if lualib:SetHeroRage("14mgm1iq34s1d","13") then --设置英雄的怒气值
        lualib:Warn("设置成功")
    else
        lualib:Warn("设置失败")
    end
    hero = lualib:GetHeroRage("14mgm1iq34s1d") --获取英雄的怒气值
    lualib:Warn("英雄的怒气值 == "..hero)
end

--此示例代码运行成功如下图所示。

SetHeroRage.png

GetHeroRage.png
<上一篇:判断英雄是否为分身下一篇:设置是否开启英雄的指定技能>
SetHeroSkillSwitch
设置是否开启英雄的指定技能

更新时间：2022-02-11 00:00:00
此函数设置是否开启英雄的指定技能。

语法
Luacopy 复制
lualib:SetHeroSkillSwitch(
    hero_guid,
    skill_id,
    enable
)
参数
hero_guid

string

 
英雄的GUID

skill_id

UINT16

 
技能ID

enable

bool

 
技能是否开启

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
--以下示例代码执行前提如下图所示（“月弧弯刀”技能为开启状态，“烈焰斩”技能为关闭状态）。

SetHeroSkillSwitch_2.png
local heros = lualib:GetPlayerHeroList(player) --获取玩家所有的英雄列表
for i = 1, #heros do
    if heros[i]["name"] == "热饮英雄" then
        lualib:GenHeroForPlayer(player, heros[i]["guid"], "GenHeroResult", "") --载入玩家的某个英雄，载入成功后回调GenHeroResult函数。
        break
    end
end

function GenHeroResult(player, err, param, hero)
    --设置关闭英雄的“月弧弯刀”技能
    if lualib:SetHeroSkillSwitch(hero, 78, false) then
        lualib:SysWarnMsg(player, "设置成功")
    end
    --设置开启英雄的“烈焰斩”技能
    if lualib:SetHeroSkillSwitch(hero, 1053, true) then
        lualib:SysWarnMsg(player, "设置成功")
    end
end

--此示例代码运行成功如下图所示（“月弧弯刀”技能为关闭状态，“烈焰斩”技能为开启状态）。

SetHeroSkillSwitch.png
<上一篇:设置英雄的怒气值下一篇:设置玩家已经载入的英雄状态>
SetHeroState
设置玩家已经载入的英雄状态

更新时间：2021-11-19 00:00:00
此函数设置玩家已经载入的英雄状态。

语法
Luacopy 复制
lualib:SetHeroState(
    player,
    hero,
    state
)

参数
player

string

 
玩家角色的GUID

hero

string

 
英雄的GUID

state

int32

 
英雄的状态

0发呆

1客户端控制

2跟随

3战斗

4守护

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Warnprint(npc, player)
    hero = lualib:GetHeroStatus("14mgm1iq34s1d") --获取英雄修改前的状态
    lualib:Warn("设置 前 状态 ："..hero)
    lualib:SetHeroState(player,"14mgm1iq34s1d",0) --设置玩家已经载入的英雄状态为发呆
    hero1 = lualib:GetHeroStatus("14mgm1iq34s1d") --获取英雄修改后的状态
    lualib:Warn("设置 后 状态 ："..hero1)
end

--此示例代码运行前效果如下图所示（英雄为战斗状态）。

SetHeroState.png

--此示例代码运行后效果如下图所示（英雄为发呆状态），同时游戏日志中还会打印相关内容。

SetHeroState_2.png

SetHeroState_3.png
<上一篇:设置是否开启英雄的指定技能下一篇:减少英雄的怒气值>
SubHeroRage
减少英雄的怒气值

更新时间：2024-01-03 00:00:00
此函数减少英雄的怒气值。

语法
Luacopy 复制
lualib:SubHeroRage(
    hero_guid,
    iValue
)

参数
hero_guid

string

 
英雄的GUID

iValue

int64

 
减少的数值

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
    local hero_guid = lualib:GetCurrentHero(player)
    if lualib:SubHeroRage(hero_guid,10) then
        lualib:Warn("操作成功")
    else
        lualib:Warn("操作失败")
    end
end
<上一篇:设置玩家已经载入的英雄状态
AllServantBetry
玩家所有宠物背叛

更新时间：2021-11-19 00:00:00
此函数执行玩家所有宠物背叛的操作，宠物背叛玩家后会攻击玩家。

语法
Luacopy 复制
lualib:AllServantBetry(
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
function test(npc,player)
    if lualib:AllServantBetry(player) then
        lualib:Warn("宠物背叛成功")
    else
        lualib:Warn("宠物背叛失败")
    end
end

--此示例代码运行前效果如下图所示（宠物均未背叛主人）。

AllServantBetry.png

--此示例代码运行后效果如下图所示（宠物全部背叛主人并攻击主人），同时游戏日志中还会打印相关内容。

AllServantBetry_2.png

AllServantBetry_3.png
下一篇:获取玩家某个宝宝背叛剩余时间>
GetServantBetrayLeftTime
获取玩家某个宝宝背叛剩余时间

更新时间：2025-12-19 18:43:00
此函数获取玩家某个宝宝背叛剩余时间，可以先调用Player_GetServantList取得玩家所有宝宝的GUID。

语法
Luacopy 复制
lualib:GetServantBetrayLeftTime(
    strPlayer,
    strServant
)

参数
strPlayer

string

 
玩家的GUID

strServant

string

 
宝宝的GUID

返回值
int64

 
背叛剩余时间，单位为秒，对于非捕捉的宝宝或者宝宝未配置背叛时间的情况则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function getTime(npc, player)
    local servants = lualib:Player_GetServantList(player)
    if #servants ~= 0 then
        for i = 1, #servants do
            lualib:SysMsg_SendBroadcastMsg("宠物名称：" .. lualib:Name(servants[i]) .. "，背叛时间：" .. lualib:GetServantBetrayLeftTime(player,servants[i]), "测试")
        end
    end
end

--使用诱惑捕捉可以叛变的宝宝，此示例代码运行后效果如下图所示，正常获取宝宝的叛变时间。

GetServantBetrayLeftTime.png
<上一篇:玩家所有宠物背叛下一篇:获取宠物的状态>
GetServantState
获取宠物的状态

更新时间：2021-11-19 00:00:00
此函数获取宠物的状态。

语法
Luacopy 复制
lualib:GetServantState(
    servant_guid
)

参数
servant_guid

string

 
宠物的GUID

返回值
uint32

 宠物当前的状态
7跟随状态

8休息状态

9战斗状态

10跳地图状态

11强制跟随状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(npc,player)
    state = lualib:GetServantState("2ar8m20h1r0nb") --获取宠物改变前的状态
    lualib:Warn("宠物的状态 前 == "..state)
    
    lualib:SetServantState("2ar8m20h1r0nb",9) --设置宠物为战斗状态
    
    state = lualib:GetServantState("2ar8m20h1r0nb") --获取宠物改变后的状态
    lualib:Warn("宠物的状态 后 == "..state)
end

--此示例代码运行前效果如下图所示（宠物处于休息状态）。

SetServantState_2.png

--此示例代码运行后效果如下图所示（宠物处于战斗状态），同时游戏日志中还会打印相关内容。

SetServantState.png

SetServantState_3.png
<上一篇:获取玩家某个宝宝背叛剩余时间下一篇:给玩家生成一个宠物（扩展2）>
Player_CatchEx2
给玩家生成一个宠物（扩展2）

更新时间：2025-12-31 15:39:00
此函数作用是给玩家生成一个宠物（扩展2），对应法师的召唤。

语法
Luacopy 复制
lualib:Player_CatchEx2(
    strPlayer,
    strServantKey,
    need_relive,
    betray_time_coff
)
参数
strPlayer

string

 
玩家的GUID

strServantKey

string

 
宝宝的KeyName

need_relive

bool

 
是否需要在捕捉后重新生成一个野怪

true重新生成

false不重新生成

betray_time_coff

UINT16

 
叛变时间系数，填0时无效，叛变时间系数为100%。

返回值
string

 
执行成功则返宝宝的GUID

执行出错或没有宝宝的GUID则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--使用接口诱惑，且重新生成野怪
function youhuo(npc,player)
    local guid =   lualib:Player_CatchEx2(player,"测试鸡",false,2152,200) 
    if guid ~= "" then    
        lualib:SysMsg_SendWarnMsg(player,"诱惑成功,guid:"..guid)
    else
        lualib:SysMsg_SendWarnMsg(player,"诱惑失败")
    end
end

--执行示例代码，如下图所示，生成了宝宝，也生成了怪物。

Player_CatchEx2.png

Player_CatchEx2_2.png
<上一篇:获取宠物的状态下一篇:给玩家生成一个宠物（扩展）>
Player_CatchEx
给玩家生成一个宠物（扩展）

更新时间：2023-04-25 00:00:00
此函数作用为给玩家生成一个宠物，类似法师的捕捉技能。

语法
Luacopy 复制
lualib:Player_CatchEx(
    strPlayer,
    strServantKey,
    need_relive
)

参数
strPlayer

string

 
玩家角色的GUID

strServantKey

string

 
宠物的索引名（KeyName）

need_relive

bool

 
该宠物死亡后是否作为一个野怪复活

true是

false否

返回值
string

 
执行成功则返回宠物的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(npc,player)
    servant = lualib:Player_CatchEx(player,"宠物猫",false) --给玩家生成一个宠物
    lualib:Warn("捕捉成功宠物 GUID == : ".. servant)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Player_Catch.png

Player_Catch_2.png
<上一篇:给玩家生成一个宠物（扩展2）下一篇:给玩家生成一个宠物>
Player_Catch
给玩家生成一个宠物

更新时间：2023-04-24 00:00:00
此函数作用为给玩家生成一个宠物，类似法师的捕捉技能。

语法
Luacopy 复制
lualib:Player_Catch(
    strPlayer,
    strServantKey
)

参数
strPlayer

string

 
玩家角色的GUID

strServantKey

string

 
宠物的索引名（KeyName）

返回值
string

 
执行成功则返回宠物的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(npc,player)
    servant = lualib:Player_Catch(player,"宠物精灵") --给玩家生成一个宠物
    lualib:Warn("捕捉成功宠物 GUID == : ".. servant)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Player_CatchEx_2.png

Player_CatchEx.png
<上一篇:给玩家生成一个宠物（扩展）下一篇:获取玩家的宠物数量>
Player_GetServantCount
获取玩家的宠物数量

更新时间：2021-11-19 00:00:00
此函数获取玩家的宠物数量。

语法
Luacopy 复制
lualib:Player_GetServantCount(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 宠物的数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码测试前提如下图所示。
Player_GetServantCount_2.png
function test(npc,player)
    local count= lualib:Player_GetServantCount(player) --获取玩家的宠物数量
    lualib:Warn("宠物个数 == : "..count)
end

--此示例代码运行成功如下图所示。

Player_GetServantCount.png
<上一篇:给玩家生成一个宠物下一篇:获取玩家召唤宠物的等级>
Player_GetServantLevel
获取玩家召唤宠物的等级

更新时间：2021-11-19 00:00:00
此函数获取玩家召唤宠物的等级。

语法
Luacopy 复制
lualib:Player_GetServantLevel(
    strServant
)

参数
strServant

string

 
宠物的GUID

返回值
int32

 
执行成功则返回该宠物的等级

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(npc,player)
    level = lualib:Player_GetServantLevel("2ar8m20h1r0no") --获取玩家宠物改变前的等级
    lualib:Warn("宠物等级 前 == : "..level)
    
    lualib:Player_SetServantLevel(player, 3) --设置玩家所有宠物等级为3

    level = lualib:Player_GetServantLevel("2ar8m20h1r0no") --获取玩家宠物改变后的等级
    lualib:Warn("宠物等级 后 == : "..level)
end

--此示例代码运行成功如下图所示。

Player_GetServantLevel.png
<上一篇:获取玩家的宠物数量下一篇:获取玩家的宠物的GUID列表>
Player_GetServantList
获取玩家的宠物的GUID列表

更新时间：2021-11-19 00:00:00
此函数获取玩家的宠物的GUID列表。

语法
Luacopy 复制
lualib:Player_GetServantList(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
宠物的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local servants = lualib:Player_GetServantList(player) --获取玩家所有宠物的GUID
if #servants ~= 0 then      
    lualib:ServantBetry(player, servants[1]) --设置第一个宠物背叛玩家
end

--此示例代码运行前效果如下图所示（所有宠物并未攻击玩家）。

ServantBetry.png

--此示例代码运行后效果如下图所示（宠物精灵背叛玩家并攻击玩家）。

ServantBetry.png
<上一篇:获取玩家召唤宠物的等级下一篇:判断玩家的宠物是否在附近>
Player_IsServantNear
判断玩家的宠物是否在附近

更新时间：2021-11-19 00:00:00
此函数判断玩家的宠物是否在玩家附近。

note_icon 备注
附近是指主人和宠物在同一GS上，不是指地理位置上的附近。

此接口暂无实际使用场景。

语法
Luacopy 复制
lualib:Player_IsServantNear(
    strPlayer,
    strMonster
)

参数
strPlayer

string

 
玩家角色的GUID

strMonster

string

 
宠物的GUID

返回值
bool

 
玩家的宠物是否在附近

true在附近

false不在附近

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
Player_IsServantNear.png
function test(npc,player)
    if  lualib:Player_IsServantNear(player,"2ar8m20h1r0np") then
        lualib:Warn("宠物在附近")
    else
        lualib:Warn("宠物不在附近")
    end
end

--此示例代码运行成功如下图所示（宠物处于休息状态）。

Player_IsServantNear_2.png
<上一篇:获取玩家的宠物的GUID列表下一篇:杀死玩家所有宠物>
Player_KillServant
杀死玩家所有宠物

更新时间：2021-11-19 00:00:00
此函数杀死玩家所有宠物。

语法
Luacopy 复制
lualib:Player_KillServant(
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
lualib:Player_KillServant(player) --杀死玩家所有宠物

--此示例代码运行前效果如下图所示。

Player_KillServant.png

--此示例代码运行后效果如下图所示。

Player_KillServant_2.png

<上一篇:判断玩家的宠物是否在附近下一篇:设置召唤宠物的等级>
Player_SetServantLevel
设置召唤宠物的等级

更新时间：2021-11-19 00:00:00
此函数设置召唤宠物的等级。

语法
Luacopy 复制
lualib:Player_SetServantLevel(
    strObject,
    byLevel
)

参数
strObject

string

 
若为玩家角色的GUID，则修改玩家所有的宠物等级。

若为宠物GUID，则修改宠物的等级。

byLevel

uint8

 
宠物的等级

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(npc,player)
    level = lualib:Player_GetServantLevel("2ar8m20h1r0no") --获取玩家宠物改变前的等级
    lualib:Warn("宠物等级 前 == : "..level)
    
    lualib:Player_SetServantLevel(player, 3) --设置玩家所有宠物等级为3

    level = lualib:Player_GetServantLevel("2ar8m20h1r0no") --获取玩家宠物改变后的等级
    lualib:Warn("宠物等级 后 == : "..level)
end

--此示例代码运行成功如下图所示。

Player_GetServantLevel.png
<上一篇:杀死玩家所有宠物下一篇:玩家召唤宠物>
Player_Summon
玩家召唤宠物

更新时间：2023-03-03 00:00:00
此函数作用为让玩家召唤宠物，类似术士的召唤技能。

语法
Luacopy 复制
lualib:Player_Summon(
    strPlayer,
    strServantKey,
    byLevel
)

参数
strPlayer

string

 
玩家角色的GUID

strServantKey

string

 
宠物的索引名（KeyName）

byLevel

uint8

 
宠物的等级

返回值
string

 
执行成功则返回宠物的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local servant_guid = lualib:Player_Summon(player, "宠物小飞龙", 1) --玩家召唤宠物
lualib:Servant_SetEnemyMode(servant_guid, 1) --设置该宠物的遇敌模式为新模式
if lualib:Servant_GetEnemyMode(servant_guid) == 0 then
    lualib:Warn("后台配置模式")
elseif lualib:Servant_GetEnemyMode(servant_guid) == 1 then
    lualib:Warn("新模式")
elseif lualib:Servant_GetEnemyMode(servant_guid) == 2 then
    lualib:Warn("老模式")
end

--此示例代码运行成功如下图所示。

Servant_GetEnemyMode.png
<上一篇:设置召唤宠物的等级下一篇:玩家捕捉宝宝>
Player_TamingEx
玩家捕捉宝宝

更新时间：2025-12-09 15:23:00
此函数作用是玩家捕捉宝宝、抓野怪。

语法
Luacopy 复制
lualib:Player_TamingEx(
    player_guid,
    monster_guid,
    skill_id,
    betray_time_coff
)
参数
player_guid

string

 
玩家的GUID

monster_guid

string

 
宝宝的GUID

skill_id

UINT16

 
释放的技能ID

betray_time_coff

UINT16

 
叛变时间系数

填0时无效，将使用技能表上的叛变时间系数

非0时生效，将覆盖技能表上的叛变时间系数

返回值
string

 
执行成功则返宝宝的GUID

执行出错或没有宝宝的GUID则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--使用接口诱惑宝宝，设计叛变时间系数
local guid = lualib:Player_TamingEx(player,"2ar8mh2m32099",2152,300)
if guid ~= "" then
    lualib:SysMsg_SendWarnMsg(player,"诱惑成功,guid:"..guid)
else
    lualib:SysMsg_SendWarnMsg(player,"诱惑失败")
end

--执行示例代码，如下图所示，诱惑正常，时间正常。

Player_TamingEx.png

Player_TamingEx_2.png
<上一篇:玩家召唤宠物下一篇:玩家捕捉怪物作为宠物>
Player_Taming
玩家捕捉怪物作为宠物

更新时间：2024-07-16 00:00:00
此函数作用为玩家捕捉怪物作为宠物。

此接口与接口Player_Catch的区别：接口Player_Catch的作用是给玩家生成一个宠物，而此接口的作用是玩家使用技能将野怪变成自己的宠物。

此技能可用于配置新的夺心诱惑技能，相关说明可参考FAQ：配置新的夺心诱惑技能的说明。

 

若要使用此接口成功捕捉怪物，则需要满足以下条件：

1.怪物模板表中的“捕捉”选项应配置为“可以捕捉”，如此才能触发脚本中的捕捉逻辑。

  玩家的等级应大于等于怪物模板表中的“捕捉等级”选项的配置值。

  相关选项的访问路径为：游戏工具平台→游戏配置→怪物→怪物模板表→宝宝相关区域。

Player_Taming.png
2.玩家拥有宠物的数量小于“最大可捕捉数量”选项的配置值。

  该选项的访问路径为：游戏工具平台→游戏配置→技能→技能模板表→常用技能配置→宝宝相关配置区域。

image_20200806183007.png
3.回调函数on_pre_catch的返回值为true。

语法
Luacopy 复制
lualib:Player_Taming(
    player_guid,
    monster_guid,
    skill_id
)
参数
player_guid

string

 
玩家角色的GUID

monster_guid

string

 
怪物的GUID

skill_id

uint16

 
释放的技能ID

返回值
string

 
执行成功则返回宠物的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家捕捉宝宝下一篇:玩家某个宠物背叛>
ServantBetry
玩家某个宠物背叛

更新时间：2021-11-19 00:00:00
此函数执行玩家某个宠物背叛的操作，宠物背叛玩家后会攻击玩家。

语法
Luacopy 复制
lualib:ServantBetry(
    strPlayer,
    strServant
)

参数
strPlayer

string

 
玩家角色的GUID

strServant

string

 
宠物的GUID

note_icon 备注
可先调用接口Player_GetServantList获取玩家所有宠物的GUID，再获取其中某一个宠物的GUID。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local servants = lualib:Player_GetServantList(player) --获取玩家所有宠物的GUID
if #servants ~= 0 then      
    lualib:ServantBetry(player, servants[1]) --设置第一个宠物背叛玩家
end

--此示例代码运行前效果如下图所示（所有宠物并未攻击玩家）。

ServantBetry.png

--此示例代码运行后效果如下图所示（宠物精灵背叛玩家并攻击玩家）。

ServantBetry.png
<上一篇:玩家捕捉怪物作为宠物下一篇:获取单个宠物的遇敌模式>
Servant_GetEnemyMode
获取单个宠物的遇敌模式

更新时间：2022-07-18 00:00:00
此函数获取单个宠物的遇敌模式。

语法
Luacopy 复制
lualib:Servant_GetEnemyMode(
    servant_guid
)
参数
servant_guid

string

 
宠物的GUID

返回值
uint8

 
宠物的遇敌模式

1使用新模式

2使用老模式

0使用后台配置模式（即全局表中“是否是新的随从敌我模式”字段的配置）

note_icon 备注
新模式为宠物跟随主人打怪。

老模式为宠物会自动判断目标是否为敌人，从而自动进行攻击。

全局表中“是否是新的随从敌我模式”字段的访问路径为游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local servant_guid = lualib:Player_Summon(player, "宠物小飞龙", 1) --玩家召唤宠物
lualib:Servant_SetEnemyMode(servant_guid, 1) --设置该宠物的遇敌模式为新模式
if lualib:Servant_GetEnemyMode(servant_guid) == 0 then
    lualib:Warn("后台配置模式")
elseif lualib:Servant_GetEnemyMode(servant_guid) == 1 then
    lualib:Warn("新模式")
elseif lualib:Servant_GetEnemyMode(servant_guid) == 2 then
    lualib:Warn("老模式")
end

--此示例代码运行成功如下图所示。

Servant_GetEnemyMode.png
<上一篇:玩家某个宠物背叛下一篇:判断宠物是否为玩家召唤的宠物>
Servant_IsSummon
判断宠物是否为玩家召唤的宠物

更新时间：2023-03-03 00:00:00
此函数判断宠物是否为玩家召唤出来的宠物。

若该宠物是玩家使用召唤类技能召唤出的宠物（或者使用接口Player_Summon召唤的宠物），则判定该宠物为玩家召唤出来的宠物；

若该宠物是玩家使用捕捉类技能捕捉的宠物（或者使用接口Player_Catch、Player_CatchEx、Player_Taming生成的宠物），则判定该宠物为玩家捕捉的宠物。

其中，召唤类技能是指“是否召唤”的配置为“是”的技能，捕捉类技能是指“是否捕捉”的配置为“是”的技能。

相关选项访问路径为：游戏工具平台→游戏配置→技能→技能模板表→常用技能配置→宝宝相关配置区域。

Servant_IsSummon.png
语法
Luacopy 复制
lualib:Servant_IsSummon(
    monster_guid
)
参数
monster_guid

string

 
宠物的GUID

返回值
bool

 
true该宠物为玩家召唤的宠物

false该宠物为玩家捕捉的宠物

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local servant_guid = lualib:Player_Summon(player, "宠物小飞龙", 1) --玩家召唤宠物小飞龙
--判断宠物是否为玩家召唤生成的宠物
if lualib:Servant_IsSummon(servant_guid) then
    lualib:Warn("该宠物为玩家召唤的宠物")
else
    lualib:Warn("该宠物为玩家捕捉的宠物")
end

--此示例代码运行成功如下图所示。

Servant_IsSummon_2.png
<上一篇:获取单个宠物的遇敌模式下一篇:设置单个宠物的遇敌模式>
Servant_SetEnemyMode
设置单个宠物的遇敌模式

更新时间：2022-07-18 00:00:00
此函数设置单个宠物的遇敌模式。

语法
Luacopy 复制
lualib:Servant_SetEnemyMode(
    servant_guid,
    enemy_mode
)
参数
servant_guid

string

 
宠物的GUID

enemy_mode

uint8

 
遇敌模式

1使用新模式

2使用老模式

0使用后台配置模式（即全局表中“是否是新的随从敌我模式”字段的配置）

note_icon 备注
新模式为宠物跟随主人打怪。

老模式为宠物会自动判断目标是否为敌人，从而自动进行攻击。

全局表中“是否是新的随从敌我模式”字段的访问路径为游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local servant_guid = lualib:Player_Summon(player, "宠物小飞龙", 1) --玩家召唤宠物并返回宠物的GUID
lualib:SetServantState(servant_guid, 9) --设置宠物为战斗状态
lualib:Servant_SetEnemyMode(servant_guid, 2) --设置此宠物的遇敌模式为老模式
<上一篇:判断宠物是否为玩家召唤的宠物下一篇:修改宠物主人的名字>
SetServantMasterName
修改宠物主人的名字

更新时间：2021-11-19 00:00:00
此函数修改宠物主人的名字。

note_icon 备注
此接口只会修改宠物主人的名字，但宠物的从属关系并未修改。

语法
Luacopy 复制
lualib:SetServantMasterName(
    servant_guid,
    master_name
)

参数
servant_guid

string

 
宠物的GUID

master_name

string

 
主人的名字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetServantMasterName("2ar8m20h1r0q1","四十七号土匪的改名")

--此示例代码运行前效果如下图所示。

SetServantMasterName_3.png

--此示例代码运行后效果如下图所示。

SetServantMasterName_4.png
<上一篇:设置单个宠物的遇敌模式下一篇:设置宠物禁止拾取的物品列表>
SetServantNotPickList
设置宠物禁止拾取的物品列表

更新时间：2021-11-19 00:00:00
此函数设置宠物禁止拾取的物品列表。

语法
Luacopy 复制
lualib:SetServantNotPickList(
    servant_guid,
    item_list
)
参数
servant_guid

string

 
宠物的GUID

item_list

table

 
禁止拾取的物品ID列表

table格式：{物品1的ID，物品2的ID}

note_icon 备注
若禁止拾取的物品列表为空，则代表默认可拾取所有物品。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local summon_guid = lualib:Player_Summon(player, "神兽4级", 1) --玩家召唤一只宠物
lualib:SetServantPickItem(summon_guid, true) --设置开启宠物自动捡物品功能
--设置宠物禁止拾取的物品列表
if lualib:SetServantNotPickList(summon_guid, {605,2294}) then
    lualib:SysMsg_SendWarnMsg(player, "设置宠物的禁止拾取列表成功！")
end

--此示例代码运行成功如下图所示（宠物不会拾取物品列表所列举的物品）。

SetServantNotPickList.png
<上一篇:修改宠物主人的名字下一篇:设置是否开启宠物自动捡物功能>
SetServantPickItem
设置是否开启宠物自动捡物功能

更新时间：2021-11-19 00:00:00
此函数设置是否开启宠物自动捡物功能。

语法
Luacopy 复制
lualib:SetServantPickItem(
    servant_guid,
    is_pick_item
)

参数
servant_guid

string

 
宠物的GUID

is_pick_item

bool

 
true打开自动捡物功能

false关闭自动捡物功能

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
    local servants = lualib:Player_GetServantList(player) --获取玩家所有宠物的GUID
    lualib:SetServantPickItem(servants[1], true) --设置开启宠物自动捡物功能
    lualib:SetServantPickListByType(servants[1],1,1,true) --在宠物的拾取列表中添加主类型为装备子类型为武器的物品
end

--此示例代码运行成功如下图所示。

SetServantPickListByType.gif
<上一篇:设置宠物禁止拾取的物品列表下一篇:宠物拾取列表中添加或删除某类型物品>
SetServantPickListByType
宠物拾取列表中添加或删除某类型物品

更新时间：2021-11-19 00:00:00
此函数在宠物的拾取列表中添加或删除指定类型的物品。

note_icon 备注
如果拾取列表为空，则默认拾取所有类型的物品。

添加了指定类型的物品后，则按照设置的类型生效。

语法
Luacopy 复制
lualib:SetServantPickListByType(
    servant_guid,
    type,
    subtype,
    add_or_del
)
参数
servant_guid

string

 
宠物的GUID

type

uint8

 
物品的主类型

subtype

uint8

 
物品的子类型

note_icon 备注
当该物品类型无子类型时，此参数填0即可。

add_or_del

bool

 
true添加到列表

false从列表中删除

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
    local servants = lualib:Player_GetServantList(player) --获取玩家所有宠物的GUID
    lualib:SetServantPickItem(servants[1], true) --设置开启宠物自动捡物功能
    lualib:SetServantPickListByType(servants[1],1,1,true) --在宠物的拾取列表中添加主类型为装备子类型为武器的物品
end

--此示例代码运行成功如下图所示。

SetServantPickListByType.gif
<上一篇:设置是否开启宠物自动捡物功能下一篇:宠物拾取列表中添加或删除某物品>
SetServantPickList
宠物拾取列表中添加或删除某物品

更新时间：2021-11-26 00:00:00
此函数在宠物的拾取列表中添加或删除指定的物品。

note_icon 备注
如果拾取列表为空，则默认拾取所有物品。

添加了指定的物品后，则按照设置的物品生效。

语法
Luacopy 复制
lualib:SetServantPickList(
    servant_guid,
    item_id,
    item_key_name,
    add_or_del
)

参数
servant_guid

string

 
宠物的GUID

item_id

uint16

 
物品的模板ID

item_key_name

string

 
物品的索引名（KeyName）

note_icon 备注
若通过物品的模板ID未找到指定物品，则通过物品的索引名（KeyName）查找。

add_or_del

bool

 
true添加到列表

false从列表中删除

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
    local servants = lualib:Player_GetServantList(player) --获取玩家所有宠物的GUID
    lualib:SetServantPickItem(servants[1], true) --设置开启宠物自动捡物功能
    lualib:SetServantPickList(servants[1],25055,"术士90紫武器",true) --在宠物的拾取列表中添加编号25055的物品
end

--此示例代码运行成功如下图所示。

SetServantPickList.gif
<上一篇:宠物拾取列表中添加或删除某类型物品下一篇:设置宠物的状态>
SetServantState
设置宠物的状态

更新时间：2021-11-19 00:00:00
此函数设置宠物的状态。

语法
Luacopy 复制
lualib:SetServantState(
    servant_guid,
    state
)

参数
servant_guid

string

 
宠物的GUID

state

uint32

 
宠物的状态

7跟随状态

8休息状态

9战斗状态

11强制跟随状态

note_icon 备注
当宠物处于跟随状态时，宠物自身有可能自动切换到其他状态；

当宠物处于强制跟随状态时，宠物自身不会自动切换到其他状态。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(npc,player)
    state = lualib:GetServantState("2ar8m20h1r0nb") --获取宠物改变前的状态
    lualib:Warn("宠物的状态 前 == "..state)
    
    lualib:SetServantState("2ar8m20h1r0nb",9) --设置宠物为战斗状态
    
    state = lualib:GetServantState("2ar8m20h1r0nb") --获取宠物改变后的状态
    lualib:Warn("宠物的状态 后 == "..state)
end

--此示例代码运行前效果如下图所示（宠物处于休息状态）。

SetServantState_2.png

--此示例代码运行后效果如下图所示（宠物处于战斗状态），同时游戏日志中还会打印相关内容。

SetServantState.png

SetServantState_3.png
<上一篇:宠物拾取列表中添加或删除某物品
GenTeam
创建队伍

更新时间：2021-11-19 00:00:00
此函数作用为创建队伍。

语法
Luacopy 复制
lualib:GenTeam(
    strLeader,
    tMembers
)

参数
strLeader

string

 
队长的名字（Name）

tMembers

table

 
队伍成员的名称（Name）列表

为table格式

caution_icon 注意
队长的名字不可出现在队伍成员名称列表中。

返回值
bool

 
true执行成功

note_icon 备注
该函数为异步函数，返回true只代表执行成功，具体是否创建成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player) 
    if lualib:GenTeam(lualib:Name(player), {"有雨0"}) then
        lualib:Warn("组队成功")
    else
        lualib:Warn("组队失败")
    end
end

--此示例代码运行前效果如下图所示。

GenTeam.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

GenTeam_2.png

GenTeam_3.png
下一篇:离开队伍>
LeaveTeam
离开队伍

更新时间：2021-11-19 00:00:00
此函数指定某个玩家离开队伍，即将某个玩家踢出队伍。

note_icon 备注
玩家不存在或者玩家没有队伍时也可调用此接口，但日志中会提示一个错误。

当被踢出的玩家角色为队长时，队伍会自动解散。

语法
Luacopy 复制
lualib:LeaveTeam(
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
lualib:LeaveTeam(player) --将玩家自己踢出队伍

--此示例代码运行前效果如下图所示（玩家自己是队长）。

LeaveTeam.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

LeaveTeam_2.png
<上一篇:创建队伍下一篇:获取玩家队伍的GUID>
Player_GetTeamGuid
获取玩家队伍的GUID

更新时间：2021-11-19 00:00:00
此函数获取玩家所在队伍的GUID。

语法
Luacopy 复制
lualib:Player_GetTeamGuid(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 玩家队伍的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player) 
    local GUID = lualib:Player_GetTeamGuid(player)
    if GUID ~= "" then
        lualib:Warn("玩家队伍的GUID == "..GUID)
    else
        lualib:Warn("获取失败")
    end
end

--此示例代码运行成功如下图所示。

Player_GetTeamGuid.png
<上一篇:离开队伍下一篇:获取玩家所有队友的GUID>
Player_GetTeamList
获取玩家所有队友的GUID

更新时间：2021-11-19 00:00:00
此函数获取玩家所有队友的GUID。

语法
Luacopy 复制
lualib:Player_GetTeamList(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
玩家队友的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local team_tb = lualib:Player_GetTeamList(player)
    for i = 1 ,#team_tb do 
        lualib:Warn(""..team_tb[i]) 
    end 
end

--此示例代码运行成功如下图所示。

Player_GetTeamList.png
<上一篇:获取玩家队伍的GUID下一篇:判断玩家是否处于组队状态>
Player_HasTeam
判断玩家是否处于组队状态

更新时间：2021-11-19 00:00:00
此函数判断指定玩家是否处于组队状态。

语法
Luacopy 复制
lualib:Player_HasTeam(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true玩家处于组队状态

false玩家未处于组队状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player) 
    if lualib:Player_HasTeam(player) then
        lualib:Warn("玩家处于组队状态")
    else
        lualib:Warn("玩家未处于组队状态")
    end
end

--此示例代码运行成功如下图所示。

Player_HasTeam_2.png
<上一篇:获取玩家所有队友的GUID下一篇:判断玩家是否为队长>
Player_IsTeamLeader
判断玩家是否为队长

更新时间：2021-11-19 00:00:00
此函数判断指定玩家是否为队长。

语法
Luacopy 复制
lualib:Player_IsTeamLeader(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家是队长

false指定玩家不是队长

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
Player_IsTeamLeader.png
function main(npc,player)
    if lualib:Player_IsTeamLeader(player) then
        lualib:Warn("是队长")
    else
        lualib:Warn("不是队长")
    end
end

--此示例代码运行成功如下图所示。

Player_IsTeamLeader_2.png
<上一篇:判断玩家是否处于组队状态下一篇:组队移交队长>
TeamChangeLeader
组队移交队长

更新时间：2022-10-14 00:00:00
此函数作用为将组队队长的职位移交给指定玩家角色。

语法
Luacopy 复制
lualib:TeamChangeLeader(
    player_guid
)
参数
player_guid

string

 
被移交队长的玩家的GUID

返回值
bool

 
true执行成功

false执行失败

caution_icon注意
该函数为异步函数，返回成功只代表请求投递成功，具体是否移交成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将组队队长的职位移交给当前玩家
if lualib:TeamChangeLeader(player) then
    lualib:Warn("执行成功")
else
    lualib:Warn("执行失败")
end

--此示例代码运行前效果如下图所示。

TeamChangeLeader.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

TeamChangeLeader_2.png

Player_DisableForbidTalk_2.png
<上一篇:判断玩家是否为队长下一篇:邀请玩家组队>
TeamInvite
邀请玩家组队

更新时间：2022-01-04 00:00:00
此函数作用为邀请玩家组队。

语法
Luacopy 复制
lualib:TeamInvite(
    inviter_guid,
    invitee_guid,
    need_agree
)

参数
inviter_guid

string

 
邀请者的GUID

invitee_guid

string

 
被邀请者的GUID

need_agree

bool

 
是否需要对方同意

true需要

false不需要

note_icon 备注
当此参数设置为false时，不会判断对方勾选的组队方式，直接组队。

当此参数设置为true时，会判断对方勾选的组队方式，具体判断规则如下：

若为自动组队，则不需要通过对方同意，直接组队。

若为手动组队或者拒绝组队，则会弹出“是否同意”的提示框。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:TeamInvite(player,"ar8m2448sg00",true)

--此示例代码运行成功如下图所示（被邀请的玩家勾选的组队方式为“手动组队”）。

TeamInvite.png
<上一篇:组队移交队长下一篇:根据队伍的GUID获取所有队员的GUID>
Team_GetMemberList
根据队伍的GUID获取所有队员的GUID

更新时间：2022-10-21 00:00:00
此函数根据队伍的GUID取得所有队员的GUID。

语法
Luacopy 复制
lualib:Team_GetMemberList(
    team_guid
)
参数
team_guid

string

 
队伍的GUID

返回值
table

 
队员的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Player_GetTeamGuid(player)
lualib:Warn("队伍的GUID为"..GUID)
local t_player =  lualib:Team_GetMemberList(GUID)
for i=1,#t_player do
    lualib:Warn("队员"..i.."的GUID为"..t_player[i])
end

--此示例代码运行成功如下图所示。

Team_GetMemberList.png
<上一篇:邀请玩家组队
AddTitleEx
给玩家添加称号（扩展）

更新时间：2022-07-18 00:00:00
此函数给玩家添加称号，并允许设置称号存在时限。

若要给玩家使用已添加的称号，可使用接口lualib:ApplyTitle。

语法
Luacopy 复制
lualib:AddTitleEx(
    strPlayer,
    wTitleID,
    dwTimes
)

参数
strPlayer

string

 
玩家角色的GUID

wTitleID

uint16

 
称号的ID

dwTimes

uint32

 
称号的持续时间

单位为秒（s）

note_icon 备注
若此参数设为0，则使用角色称号模板表中的存在时限选项的配置值。

对应选项的访问路径为：游戏工具平台→游戏配置→角色→角色称号模板表表区域。

AddTitleEx.png
返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
RemoveTitle_2.png
function main(npc,player)
    --判断玩家是否拥有“名动江湖”的称号。若未拥有则添加该称号（称号存在时限为1周），若已拥有则返回“您已拥有该称号”。
    if lualib:HasTitle(player, 1010) == false then  
        lualib:AddTitleEx(player, 1010,3600*24*7);
        lualib:Warn("领取成功")
    else  
       lualib:Warn("您已拥有该称号")
    end
end

--此示例代码运行成功如下图所示（玩家未拥有“名动江湖”的称号，则添加该称号）。

AddTitle.png
下一篇:给玩家添加称号>
AddTitle
给玩家添加称号

更新时间：2021-11-30 00:00:00
此函数给玩家添加称号。

若要给玩家使用已添加的称号，可使用接口lualib:ApplyTitle。

语法
Luacopy 复制
lualib:AddTitle(
    strPlayer,
    wTitleID
)

参数
strPlayer

string

 
玩家角色的GUID

wTitleID

uint16

 
称号的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
RemoveTitle_2.png
function test(npc,player)
    --判断玩家是否拥有“名动江湖”的称号。若未拥有则添加该称号，若已拥有则返回“您已拥有该称号”。
    if lualib:HasTitle(player, 1010) == false then  
        lualib:AddTitle(player, 1010);
        lualib:Warn("领取成功")
    else  
        lualib:Warn("您已拥有该称号")
    end
end

--此示例代码运行成功如下图所示（玩家未拥有“名动江湖”的称号，则添加该称号）。

AddTitle.png
<上一篇:给玩家添加称号（扩展）下一篇:给玩家使用称号>
ApplyTitle
给玩家使用称号

更新时间：2022-01-27 00:00:00
此函数给玩家使用指定称号，只能使用玩家已经拥有的称号。

若使用此接口去替换玩家正在使用的称号，则被取消的称号以及该称号对应的BUFF均会被移除。

若要添加玩家未拥有称号，可使用接口lualib:AddTitle和lualib:AddTitleEx。

语法
Luacopy 复制
lualib:ApplyTitle(
    strPlayer,
    wTitleID
)

参数
strPlayer

string

 
玩家角色的GUID

wTitleID

uint16

 
称号的ID

note_icon 备注
若此参数填0，则不会显示称号。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ApplyTitle(player, 1030) --给玩家使用指定称号

--此示例代码运行前效果如下图所示。

ApplyTitle.png

--此示例代码运行后效果如下图所示。

ApplyTitle_2.png
<上一篇:给玩家添加称号下一篇:获取玩家当前使用的称号>
GetTitle
获取玩家当前使用的称号

更新时间：2021-11-30 00:00:00
此函数获取指定玩家当前使用的称号的ID。

语法
Luacopy 复制
lualib:GetTitle(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
玩家当前使用称号则返回当前称号的ID

玩家当前未使用称号则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示，称号“傲视天地”的ID为1030。
ApplyTitle_2.png
function test(npc,player)
    --获取玩家当前使用的称号，若称号存在则打印对应的称号ID。
    local title = lualib:GetTitle(player)
    if title ~= 0 then
        lualib:Warn("称号ID"..title)
    end
end

--此示例代码运行成功如下图所示。

GetTitle.png
<上一篇:给玩家使用称号下一篇:玩家是否拥有指定称号>
HasTitle
玩家是否拥有指定称号

更新时间：2022-07-29 00:00:00
此函数判断玩家是否拥有指定称号。

语法
Luacopy 复制
lualib:HasTitle(
    strPlayer,
    wTitleID
)

参数
strPlayer

string

 
玩家角色的GUID

wTitleID

uint16

 
称号的ID

返回值
bool

 
true玩家拥有指定称号

false玩家未拥有指定称号或者玩家不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
RemoveTitle_2.png
function main(npc,player)
    --判断玩家是否拥有“名动江湖”的称号。若未拥有则添加该称号，若已拥有则返回“您已拥有该称号”。
    if lualib:HasTitle(player, 1010) == false then  
        lualib:AddTitle(player, 1010)
        lualib:Warn("领取成功")
    else  
       lualib:Warn("您已拥有该称号")
    end
end

--此示例代码运行成功如下图所示（玩家未拥有“名动江湖”的称号，则添加该称号）。

AddTitle.png
<上一篇:获取玩家当前使用的称号下一篇:获取玩家所有称号>
Player_GetAllTitles
获取玩家所有称号

更新时间：2022-07-18 00:00:00
此函数获取玩家所有称号。

语法
Luacopy 复制
lualib:Player_GetAllTitles(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
玩家所有称号列表

存储在lua表中

玩家所有称号列表中的每一项对应一个称号的信息，具体格式如下所示：

{
[1]={
[1]=称号1的ID,
[2]=称号1的名称,
[3]=称号1的剩余时间,
},
[2]={
[1]=称号2的ID,
[2]=称号2的名称,
[3]=称号2的剩余时间,
},
}

note_icon 备注
当称号的“存在时限”选项的配置值为0时，获取的称号信息的第三个数值为0。

当称号的“存在时限”选项的配置值不为0时，分为以下两种情况：

1.若称号的“是否使用绝对时间”选项的配置值为“绝对时间”，则获取的称号信息的第三个数值为该称号到期时间的时间戳，可使用接口lualib:Time2Str将获取的结果转换为字符串格式；

2.若称号的“是否使用绝对时间”选项的配置值为“相对时间”，则获取的称号信息的第三个数值为该称号的剩余时间，单位为秒（s）。

相关选项的访问路径为：游戏工具平台→游戏配置→角色→角色称号模板表→角色称号模板信息区域。

图 1 “存在时限”选项

Player_GetAllTitles_3.png
图 2 “是否使用绝对时间”选项

Player_GetAllTitles_2.png
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

--1.称号“测试称号索引”的存在时限为60s，并且使用了相对时间；

--2.称号“劳苦功高”的存在时限为0s，并且使用了绝对时间；

--3.称号“紫气逼人”的存在时限为3600s，并且使用了绝对时间。

Player_GetAllTitles_4.png
function test(npc,player)
    --获取玩家所有称号并打印
    local title = lualib:Player_GetAllTitles(player)
    for k,v in ipairs(title) do
        local title_id = v[1] --称号的ID
        local title_keyname = v[2] --称号的索引名（KeyName）
        local title_life = v[3] --称号的剩余时间
        lualib:Warn("ID == "..title_id)
        lualib:Warn("名字 == "..title_keyname)
        lualib:Warn("时间 == "..title_life)
    end
end

--此示例代码运行成功如下图所示。

Player_GetAllTitles.png
<上一篇:玩家是否拥有指定称号下一篇:移除玩家称号>
RemoveTitle
移除玩家称号

更新时间：2021-11-30 00:00:00
此函数移除玩家称号。

语法
Luacopy 复制
lualib:RemoveTitle(
    strPlayer,
    wTitleID
)

参数
strPlayer

string

 
玩家角色的GUID

wTitleID

uint16

 
称号的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--若玩家有称号“名动江湖”，则删除该称号。  
if lualib:HasTitle(player, 1010) then  
    lualib:RemoveTitle(player, 1010)
end

--此示例代码运行前效果如下图所示。

RemoveTitle.png

--此示例代码运行后效果如下图所示。

RemoveTitle_2.png
<上一篇:获取玩家所有称号下一篇:获取玩家的称谓>
TitleName
获取玩家的称谓

更新时间：2021-11-30 00:00:00
此函数获取玩家的称谓。

语法
Luacopy 复制
lualib:TitleName(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
玩家存在则返回玩家的称谓

玩家不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_SetAlias(player, "神一样的男人") --设置玩家的称谓为“神一样的男人”
lualib:SysMsg_SendWarnMsg(player, "TitleName = "..lualib:TitleName(player)) --获取玩家的称谓

--此示例代码运行成功如下图所示。

TitleName.png
<上一篇:移除玩家称号下一篇:根据称号的索引名获取该称号的配置表结构>
Title_DataRow
根据称号的索引名获取该称号的配置表结构

更新时间：2022-03-14 00:00:00
此函数根据称号的索引名（KeyName）获取该称号的配置表结构。

语法
Luacopy 复制
lualib:Title_DataRow(
    title_key
)
参数
title_key

string

 
称号的索引名（KeyName）

返回值
table

 
称号的配置表结构

其定义请参见Title模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local title_t = lualib:Title_DataRow("商界红人") --获取称号“商界红人”的配置表结构
lualib:Warn("="..json.encode(title_t))

--此示例代码运行成功如下图所示。

Title_DataRow.png
<上一篇:获取玩家的称谓
Achievement
获取角色的成就

更新时间：2022-03-30 00:00:00
此函数获取角色的成就属性值。

语法
Luacopy 复制
lualib:Achievement(
    strRole
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
int32

 
对应角色的成就属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function testprint(npc, player)
    lualib:SetAchievement(player,3) --设置玩家的成就属性值为3
    lualib:Warn("测试结果"..lualib:Achievement(player)) --获取玩家的成就属性值
end

--此示例代码运行成功如下图所示。

SetAchievement.png
下一篇:获取玩家成就状态>
GetPlayerGloryState
获取玩家成就状态

更新时间：2022-04-27 00:00:00
此函数获取玩家成就状态。

语法
Luacopy 复制
lualib:GetPlayerGloryState(
    strPlayer,
    dwGloryID
)

参数
strPlayer

string

 
玩家角色的GUID

dwGloryID

uint32

 
成就ID（即成就表中的编号选项）

note_icon 备注
编号选项的访问路径为：游戏工具平台→游戏配置→其他表格→成就表→成就信息区域

GetPlayerGloryState_2.png
返回值
uint32

 成就状态
0成就不存在

1未完成

2已完成

3已奖励

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local test = lualib:GetPlayerGloryState(player,3)
lualib:Warn("测试结果"..test)

--此示例代码运行成功如下图所示。

GetPlayerGloryState.png
<上一篇:获取角色的成就下一篇:产生一个成就的触发事件>
OnGloryTrigger
产生一个成就的触发事件

更新时间：2022-04-29 00:00:00
此函数产生一个成就的触发事件。

语法
Luacopy 复制
lualib:OnGloryTrigger(
    player_guid,
    action,
    item_guid,
    ref_value,
    descript,
    target_name
)

参数
player_guid

string

 
玩家角色的GUID

action

int32

 
触发类型

item_guid

string

 
物品的GUID

ref_value

int32

 
参考值

descript

string

 
相关描述

target_name

string

 
相关目标名称

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）中system.lua脚本文件中的check_player_login()函数为例。
function check_player_login(player)

--……省略部分代码

    local player_guild = lualib:GuildGuid(player)
    --角色上线时判断其是否有行会
    if player_guild ~= "0" and player_guild ~= "" then
        lualib:OnGloryTrigger(player, lua_glory_trigger_join_family, "", 0, "", "")
    end
end

--此示例代码运行成功后角色上线时判断该角色是否有行会。
<上一篇:获取玩家成就状态下一篇:设置角色成就>
SetAchievement
设置角色成就

更新时间：2022-07-18 00:00:00
此函数设置角色成就。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

语法
Luacopy 复制
lualib:SetAchievement(
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

 
属性值（即要设置的成就属性值）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function testprint(npc, player)
    lualib:SetAchievement(player,3) --设置玩家的成就属性值为3
    lualib:Warn("测试结果"..lualib:Achievement(player)) --获取玩家的成就属性值
end

--此示例代码运行成功如下图所示。

SetAchievement.png
<上一篇:产生一个成就的触发事件
AddInnerForce
增加角色内功值

更新时间：2025-05-16 00:00:00
此函数增加角色内功值。

语法
Luacopy 复制
lualib:AddInnerForce(
    strRole,
    iValue
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、英雄。

iValue

int64

 
增加的内功值

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
    lualib:Warn("增加前角色内功值为："..lualib:GetInnerForce(player,false))
    lualib:AddInnerForce(player,37)
    lualib:Warn("增加后角色内功值为："..lualib:GetInnerForce(player,false))
end

--执行示例代码，如下图所示，可增加角色指定内功值。

AddInnerForce.png
下一篇:获取角色内功经验值>
GetInnerForceExp
获取角色内功经验值

更新时间：2022-04-29 00:00:00
此函数获取角色内功经验值。

note_icon 备注
内功值和内功经验不同，内功值主要用于计算减伤值，内功经验主要用于升级内功等级。

语法
Luacopy 复制
lualib:GetInnerForceExp(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
double

 对应角色当前的内功经验值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local test1 = lualib:GetInnerForceExp(player) --获取修改前角色内功经验值
lualib:Warn("修改前角色内功经验值为："..test1)

lualib:Player_AddInnerForceExp(player,5000,"strDesc",player) --给角色添加内功经验

local test2 = lualib:GetInnerForceExp(player) --获取修改后角色内功经验值
lualib:Warn("修改后角色内功经验值为："..test2)

--此示例代码运行成功如下图所示。

GetInnerForceExp.png
<上一篇:增加角色内功值下一篇:获取角色内功值>
GetInnerForce
获取角色内功值

更新时间：2023-10-23 00:00:00
此函数获取角色的内功值。

note_icon 备注
内功值和内功经验不同，内功值主要用于计算减伤值，内功经验主要用于升级内功等级。

语法
Luacopy 复制
lualib:GetInnerForce(
    strRole,
    bIsLimit
)

参数
strRole

string

 
角色的GUID

角色可以为玩家或英雄

bIsLimit

bool

 
是否为属性上限

true是（即获取角色的内功值上限）

false否（即获取当前的内功值）

返回值
double

 角色当前内功值或内功值的上限
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    lualib:Warn("英雄guid为"..lualib:GetCurrentHero(player))
    local ngvalue = lualib:GetInnerForce(lualib:GetCurrentHero(player),false)
    lualib:Warn("当前内功值为"..ngvalue)
    lualib:SetInnerForce(lualib:GetCurrentHero(player),60,false) --
    local ngvalue = lualib:GetInnerForce(lualib:GetCurrentHero(player),false)
    lualib:Warn("设置后内功值为"..ngvalue)
end

--此示例代码运行成功如下图所示。

GetInnerForce
<上一篇:获取角色内功经验值下一篇:提升角色内功等级>
InnerForceLevelUp
提升角色内功等级

更新时间：2022-03-30 00:00:00
此函数作用为提升角色的内功等级。

caution_icon 注意
内功表中必须有连续内功等级的配置，否则可能会影响此接口的使用效果。

语法
Luacopy 复制
lualib:InnerForceLevelUp(
    strPlayer,
    type
)

参数
strPlayer

string

 
玩家角色的GUID

type

uint8

 
0内功等级提升一级

1内功等级提升至最高等级

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetInnerForceLevel(player, 100) --设置玩家内功等级为100级
lualib:SysWarnMsg(player, "当前内功等级为"..lualib:Attr(player, 156)) --获取角色当前内功等级

lualib:InnerForceLevelUp(player,0) --将角色的内功等级提升一级
lualib:SysWarnMsg(player, "当前内功等级为"..lualib:Attr(player, 156))

lualib:InnerForceLevelUp(player,1) --将角色的内功等级提升至最高等级
lualib:SysWarnMsg(player, "当前内功等级为"..lualib:Attr(player, 156))

--设置玩家的内功等级为100级，获取的结果如下图所示。

InnerForceLevelUp.png

--将角色的内功等级提升一级，获取的结果如下图所示。

InnerForceLevelUp_2.png

--将角色的内功等级提升至最高等级（内功表中配置的最高等级为104级），获取的结果如下图所示。

InnerForceLevelUp_3.png
<上一篇:获取角色内功值下一篇:获取内功的配置表结构>
InnerForce_DataRow
获取内功的配置表结构

更新时间：2022-03-30 00:00:00
此函数根据玩家的职业和等级获取对用的内功的配置表结构。

语法
Luacopy 复制
lualib:InnerForce_DataRow(
    job,
    level
)

参数
job

uint8

 
玩家的职业

1战士

2法师

3术士

level

uint32

 
等级

返回值
table

 
内功的配置表结构

其定义请参见InnerForce模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local InnerForce_data = lualib:InnerForce_DataRow(3,1) --获取1级术士的内功配置表结构
lualib:Warn(""..serialize(InnerForce_data))

--此示例代码运行成功如下图所示。

InnerForce_DataRow.png
<上一篇:提升角色内功等级下一篇:给角色添加内功经验>
Player_AddInnerForceExp
给角色添加内功经验

更新时间：2022-04-29 00:00:00
此函数给角色添加内功经验。

note_icon 备注
内功值和内功经验不同，内功值主要用于计算减伤值，内功经验主要用于升级内功等级。

caution_icon 注意
内功表中必须有连续内功等级的配置，否则可能会影响此接口的使用效果。

语法
Luacopy 复制
lualib:Player_AddInnerForceExp(
    strPlayer,
    iExp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iExp

double

 
经验数量

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

 
v1.1

 
修改参数iExp的数据类型：从int32修改为double

示例代码
Luacopy 复制
local test1 = lualib:GetInnerForceExp(player) --获取修改前角色内功经验值
lualib:Warn("修改前角色内功经验值为："..test1)

lualib:Player_AddInnerForceExp(player,5000,"strDesc",player) --给角色添加内功经验

local test2 = lualib:GetInnerForceExp(player) --获取修改后角色内功经验值
lualib:Warn("修改后角色内功经验值为："..test2)

--此示例代码运行成功如下图所示。

GetInnerForceExp.png
<上一篇:获取内功的配置表结构下一篇:扣除角色内功经验>
Player_SubInnerForceExp
扣除角色内功经验

更新时间：2022-04-29 00:00:00
此函数扣除角色内功经验。

note_icon 备注
内功值和内功经验不同，内功值主要用于计算减伤值，内功经验主要用于升级内功等级。

语法
Luacopy 复制
lualib:Player_SubInnerForceExp(
    strPlayer,
    iExp,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

iExp

double

 
经验数量

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

 
v1.1

 
修改参数iExp的数据类型：从int32修改为double

示例代码
Luacopy 复制
local test1 = lualib:GetInnerForceExp(player) --获取修改前角色内功经验值
lualib:Warn("修改前角色内功经验值为："..test1)

lualib:Player_SubInnerForceExp(player,500,"strDesc",player) --扣除角色内功经验

local test2 = lualib:GetInnerForceExp(player) --获取修改后角色内功经验值
lualib:Warn("修改后角色内功经验值为："..test2)

--此示例代码运行成功如下图所示。

GetInnerForceExp_2.png
<上一篇:给角色添加内功经验下一篇:向周围通知角色内功数值>
SendRoleInnerForceNtf
向周围通知角色内功数值

更新时间：2022-04-29 00:00:00
此函数向周围通知指定角色的内功数值。

note_icon 备注
内功值和内功经验不同，内功值主要用于计算减伤值，内功经验主要用于升级内功等级。

语法
Luacopy 复制
lualib:SendRoleInnerForceNtf(
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
lualib:SetInnerForce(player,2,false) --设置角色的内功值
lualib:SendRoleInnerForceNtf(player) --向周围通知角色内功数值

--此示例代码运行成功后其他角色可立即看到当前角色的内功条的变化。
<上一篇:扣除角色内功经验下一篇:设置玩家内功等级>
SetInnerForceLevel
设置玩家内功等级

更新时间：2022-03-30 00:00:00
此函数设置玩家内功等级。

语法
Luacopy 复制
lualib:SetInnerForceLevel(
    player_guid,
    level
)
参数
player_guid

string

 
玩家角色的GUID

level

uint32

 
内功等级

note_icon 备注
当设置等级高于内功表的最高等级时，无法生效，默认为原来的内功等级。

内功表的最高等级为游戏工具平台→游戏配置→角色→内功表中配置的最高等级。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）为例，此区内功等级配置上限为120级。

lualib:SysWarnMsg(player, "当前内功等级为"..lualib:Attr(player, 156)) --获取角色当前内功等级

lualib:SetInnerForceLevel(player, 120) --设置玩家内功等级为120级
lualib:SysWarnMsg(player, "当前内功等级为"..lualib:Attr(player, 156))

lualib:SetInnerForceLevel(player, 121) --设置玩家内功等级为121级
--设置等级高于内功表的最高等级时，无法生效，默认为原来的内功等级。
lualib:SysWarnMsg(player, "当前内功等级为"..lualib:Attr(player, 156)) 


--此示例代码运行成功如下图所示。

SetInnerForceLevel.png
<上一篇:向周围通知角色内功数值下一篇:设置角色内功值>
SetInnerForce
设置角色内功值

更新时间：2022-04-29 00:00:00
此函数设置角色内功值.所有的属性修改操作都会自动记录到日志服务器。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

note_icon 备注
内功值和内功经验不同，内功值主要用于计算减伤值，内功经验主要用于升级内功等级。

语法
Luacopy 复制
lualib:SetInnerForce(
    strRole,
    value,
    is_limit
)
参数
strRole

string

 
角色的GUID

角色可以为玩家或者英雄

value

int32

 
属性值（即要设置的内功值）

is_limit

bool

 
是否修改属性上限

true是（即修改角色的内功值上限）

false否（即修改当前的内功值）

note_icon 备注
当角色类型为玩家时，设置内功值上限无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetInnerForce(player,2,false) --设置角色的内功值
lualib:SendRoleInnerForceNtf(player) --向周围通知角色内功数值

--此示例代码运行成功后其他角色可立即看到当前角色的内功条的变化。
<上一篇:设置玩家内功等级下一篇:扣除角色内功值>
SubInnerForce
扣除角色内功值

更新时间：2025-05-16 00:00:00
此函数扣除角色内功值。

语法
Luacopy 复制
lualib:SubInnerForce(
    strRole,
    iValue
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、英雄。

iValue

int64

 
扣除的内功值

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
    lualib:Warn("扣除前角色内功值为："..lualib:GetInnerForce(player,false))
    lualib:SubInnerForce(player,37)
    lualib:Warn("扣除后角色内功值为："..lualib:GetInnerForce(player,false))
end

--执行示例代码，如下图所示，可扣除角色指定内功值。

SubInnerForce.png
<上一篇:设置角色内功值
AddAvataBuff
给角色添加变身BUFF

更新时间：2022-07-18 00:00:00
此函数给角色添加变身BUFF。

语法
Luacopy 复制
lualib:AddAvataBuff(
    strRole,
    iAvata,
    strBuffKey,
    strSkillKey,
    dwTimes
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

iAvata

int32

 
外形表中的编号

“编号”选项的访问路径为：游戏工具平台→表格管理→外形表→外形表编辑区域。

AddAvataBuff_2.png
strBuffKey

string

 
BUFF的索引名（KeyName）

strSkillKey

string

 
BUFF对应的技能索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒（s）

0代表无限时间

caution_icon注意
如果BUFF表中的TimeLimit（对应Buff模板表中的存在时限选项）等于0，则此参数自动失效。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表区域。

AddBuffWithAttrsLimit_6.png
返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddAvataBuff(player,161,"缩小变身","海魔砸晕",0)

--此示例代码运行成功如下图所示（玩家缩小）。

AddAvataBuff.png
下一篇:给角色添加可指定技能的BUFF>
AddBuff2
给角色添加可指定技能的BUFF

更新时间：2022-04-22 00:00:00
此函数给角色添加BUFF以及BUFF对应的技能，并且支持设置BUFF的实例属性1的拓展值。

语法
Luacopy 复制
lualib:AddBuff2(
    strRole,
    strHost,
    strBuffKey,
    strSkillKey,
    dwTimes,
    iAttr1
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strHost

string

 
对象的GUID（即BUFF的添加者）

strBuffKey

string

 
BUFF的索引名（KeyName）

strSkillKey

string

 
BUFF对应的技能索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒（s）

caution_icon 注意
添加BUFF的实际持续时间与“是否使用传入的时间加上时间系数作为BUFF的时间”选项、“存在时限”选项和“时间系数”选项的配置有关，具体请参见“是否使用传入的时间加上时间系数作为BUFF的时间”选项的配置说明。

上述选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

图 1 “时间系数”选项和“存在时限”选项

AddBuff_3.png
图 2 “是否使用传入的时间加上时间系数作为BUFF的时间”选项

AddBuff_3.png
iAttr1

int32

 
BUFF的实例属性1的拓展值

note_icon 备注
BUFF表必须要有配置对应的属性，否则将不会生效。

仅第一条属性可以由脚本改写，其它属性直接从配置中读取，脚本无法改写。

caution_icon 注意
添加BUFF的实际属性值与“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项和“Att系数”选项的配置有关，具体请参见“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项的配置说明。

上述选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

图 3 “Att1系数”选项

AddBuff_4.png
图 4 “是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项

AddBuff_5.png
返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下所示。

--“是否使用传入的时间加上时间系数作为BUFF的时间”选项和“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项均设置为“否”。

AddBuff2_3.png
lualib:AddBuff2(player,player,"测试蛊毒咒减血","蛊毒咒4级",10,-40)

--此示例代码运行前效果如下图所示。

--第一条属性的值为-60，其拓展值为-40，因此玩家添加此BUFF后会减100点血。

AddBuff2.png

--此示例代码运行后效果如下图所示。

AddBuff2_2.png

<上一篇:给角色添加变身BUFF下一篇:给角色添加BUFF（扩展）>
AddBuffEx
给角色添加BUFF（扩展）

更新时间：2022-07-18 00:00:00
此函数给角色添加BUFF，并且能够设置BUFF的实例属性1的值。

语法
Luacopy 复制
lualib:AddBuffEx(
    strRole,
    strBuffKey,
    dwTimes,
    iAttr1
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒（s）

0代表无限时间

caution_icon注意
如果BUFF表中的TimeLimit（对应Buff模板表中的“存在时限”）等于0，则此参数自动失效。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

AddBuffWithAttrsLimit_6.png
iAttr1

int

 
BUFF的实例属性1的拓展值

计算时，将属性的拓展值和Buff模板表中的属性值求和，即为设置后的新数值。

note_icon 备注
BUFF表必须要有配置对应的属性，否则将不会生效。

仅第一条属性可由脚本改写，其它属性直接从配置中读取，脚本无法改写。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetUseNewAttrCalcRule(1) --设置使用新的BUFF的属性计算规则
lualib:AddBuffEx(player, "蛊毒咒减血1级", 0, -100) --添加一个BUFF

--当BUFF的叠加层数为1层时的运行成功如下图所示。

SetUseNewAttrCalcRule.png

--当BUFF的叠加层数为3层时的运行成功如下图所示。

SetUseNewAttrCalcRule_2.png
<上一篇:给角色添加可指定技能的BUFF下一篇:给角色添加BUFF（扩展2）>
AddBuffWithAttrsEx2
给角色添加BUFF（扩展2）

更新时间：2022-04-22 00:00:00
此函数给角色添加BUFF并且支持设置BUFF中的多个实例属性的拓展值、触发的时间间隔和叠加层数，同时可以传递模拟BUFF释放者的GUID。

语法
Luacopy 复制
lualib:AddBuffWithAttrsEx2(
    strRole,
    strBuffKey,
    dwTimes,
    attrs,
    host_guid,
    interval,
    stacks
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒（s）

caution_icon注意
如果BUFF表中的TimeLimit字段（对应Buff模板表中的“存在时限”选项）等于0，则此参数自动失效。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

AddBuffWithAttrsLimit_6.png
attrs

table

 
BUFF的实例属性拓展值列表

为table格式，具体格式为{[属性1编号]=属性1拓展值,[属性2编号]=属性2拓展值}

例如：{[1]=2,[2]=3}会分别设置第1条属性的拓展值为2、第2条属性的拓展值为3。

注：若表中没有填写对应的属性编号，则默认从该BUFF的第一条属性开始。

计算时，将属性的拓展值和Buff模板表中的属性值求和即为设置后的新数值。

caution_icon 注意
要求BUFF表中有配置对应的属性，否则设置不能生效。

host_guid

string

 
释放者的GUID

interval

uint32

 
BUFF触发的时间间隔

单位为毫秒（ms）

填0代表使用Buff模板表中的“触发间隔”选项的配置值

caution_icon注意
如果BUFF表中的Interval字段（对应Buff模板表中的“触发间隔”选项）等于0，则此参数自动失效。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表区域。

AddBuffWithAttrsEx2.png
stacks

uint32

 
叠加层数

填0与填1效果相同，均代表叠加1层。

note_icon 备注
若此参数的配置值大于Buff模板表中的“叠加层数”选项的配置值，则以Buff模板表中的“叠加层数”选项的配置值为准。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表区域。

AddBuffWithAttrsEx2_5.png
返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

AddBuffWithAttrsEx2_6.png
lualib:AddTrigger("0", 449, "on_pre_add_buff") --添加触发器
lualib:SetUseNewAttrCalcRule(1) --设置使用新的BUFF的属性计算规则
local jiaren = lualib:GenDummy("测试假人",1,1,lualib:MapGuid(player),lualib:X(player) + 1,lualib:Y(player) + 1,player,10) --生成一个测试假人
local buff_table = {[1]=-40, [3]=4}
if lualib:AddBuffWithAttrsEx2(player, "测试蛊毒咒减血", 20, buff_table, jiaren, 5000, 3) then --给角色添加BUFF并且以假人作为BUFF的释放者
    lualib:SysMsg_SendWarnMsg(player, "添加Buff成功")
end

--角色添加BUFF前回调
function on_pre_add_buff(role, buff_id, host)
    lualib:Warn(lualib:Name(host).."对"..lualib:Name(role).."施放了BUFF[ID:"..buff_id.."]")
    return true
end

--此示例代码运行成功如下图所示，同时游戏日志和游戏内对话框中还会打印相关内容。

--第一条属性的值为-60，其拓展值为-40，叠加层数为3层并且使用了新的BUFF的属性计算规则，因此玩家添加此BUFF后会每5秒钟减300点血。

AddBuffWithAttrsEx2_2.png

AddBuffWithAttrsEx2_3.png

AddBuffWithAttrsEx2_4.png
<上一篇:给角色添加BUFF（扩展）下一篇:给角色添加可设置实例属性拓展值的BUFF（扩展）>
AddBuffWithAttrsEx
给角色添加可设置实例属性拓展值的BUFF（扩展）

更新时间：2022-07-18 00:00:00
此函数给角色添加BUFF并且支持设置BUFF中的多个实例属性的拓展值，可以传递模拟BUFF释放者的GUID。

语法
Luacopy 复制
lualib:AddBuffWithAttrsEx(
    strRole,
    strBuffKey,
    dwTimes,
    attrs,
    host_guid
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒

caution_icon注意
如果BUFF表中的TimeLimit（对应Buff模板表中的“存在时限”选项）等于0，则此参数自动失效。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

AddBuffWithAttrsLimit_6.png
attrs

table

 
BUFF的实例属性拓展值列表

为table格式，具体格式为{[属性1编号]=属性1拓展值,[属性2编号]=属性2拓展值}

例如：{[1]=2,[2]=3}会分别设置第1条属性的拓展值为2、第2条属性的拓展值为3。

注：若表中没有填写对应的属性编号，则默认从该BUFF的第一条属性开始。

计算时，将属性的拓展值和Buff模板表中的属性值求和即为设置后的新数值。

caution_icon 注意
要求BUFF表中有配置对应的属性，否则设置不能生效。

host_guid

string

 
释放者的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_pre_die, "on_trigger_pre_die")
local jiaren = lualib:GenDummy("测试假人",1,1,lualib:MapGuid(player),lualib:X(player) + 1,lualib:Y(player) + 1,player,30) --生成一个测试假人
local buff_table = {[1]=-10000, [3]=4}
if lualib:AddBuffWithAttrsEx(player, "蛊毒咒减血1级", 5, buff_table, jiaren) then --给角色添加BUFF且假人作为BUFF的释放者
    lualib:SysMsg_SendWarnMsg(player, "添加Buff成功")
end
--角色死亡之前回调
function on_trigger_pre_die(victim, killer)
    if lualib:RemoveTrigger(victim, lua_trigger_pre_die, "on_trigger_pre_die") then
        lualib:SysMsg_SendWarnMsg(victim, lualib:Name(killer).."杀死了你")
    end
end

--此示例代码运行成功如下图所示。

--给角色添加BUFF时将测试假人作为BUFF的释放者，角色因为此BUFF死亡则杀手就是对应的BUFF释放者（即测试假人）。

AddBuffWithAttrsEx.png
<上一篇:给角色添加BUFF（扩展2）下一篇:给角色添加持续时间不超过最大存在时限的BUFF>
AddBuffWithAttrsLimit
给角色添加持续时间不超过最大存在时限的BUFF

更新时间：2022-07-18 00:00:00
此函数给角色添加BUFF，且BUFF的持续时间不能超过该BUFF在Buff模板表中“最大存在时限”配置的值。

语法
Luacopy 复制
lualib:AddBuffWithAttrsLimit(
    strRole,
    strBuffKey,
    dwTimes,
    attrs,
    host_guid
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒（s）

0代表无限时间

caution_icon注意
此参数的值不可超过该BUFF在Buff模板表中“最大存在时限”选项配置的值。

若BUFF表中的TimeLimit字段（对应Buff模板表中的“存在时限”选项）或TimeLimitMax字段（对应Buff模板表中的“最大存在时限”）中任一字段值等于0，则参数dwTimes自动失效，对应BUFF的持续时间为以BUFF表中的TimeLimit字段的值为准。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

AddBuffWithAttrsLimit_6.png
AddBuffWithAttrsLimit_7.png
attrs

table

 
BUFF的实例属性拓展值列表

为table格式，具体格式为{[属性1编号]=属性1拓展值,[属性2编号]=属性2拓展值}

例如：{[1]=2,[2]=3}会分别设置第1条属性的拓展值为2、第2条属性的拓展值为3。

注：若表中没有填写对应的属性编号，则默认从该BUFF的第一条属性开始。

计算时，将属性的拓展值和Buff模板表中的属性值求和即为设置后的新数值。

caution_icon 注意
要求BUFF表中有配置对应的属性，否则设置不能生效。

host_guid

string

 
释放者的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码以BUFF“天下第一”为例。
--Buff模板表中配置的前四项属性值和最大存在时限如下图。

AddBuffWithAttrsLimit.png

AddBuffWithAttrsLimit_2.png
--以下示例代码运行前角色的物防上限/下限和魔防上限/下限如下图所示。

AddBuffWithAttrsLimit_3.png
if lualib:AddBuffWithAttrsLimit(player, "天下第一", 10, {100, 100, 100, 100}, player) then
    lualib:SysMsg_SendWarnMsg(player, "添加BUFF成功！")
end

--此示例代码运行成功如下图所示（物防上限/下限百分比和魔防上限/下限百分比均增加110%）。

AddBuffWithAttrsLimit_4.png

AddBuffWithAttrsLimit_5.png
<上一篇:给角色添加可设置实例属性拓展值的BUFF（扩展）下一篇:给角色添加可设置实例属性拓展值的BUFF>
AddBuffWithAttrs
给角色添加可设置实例属性拓展值的BUFF

更新时间：2022-07-18 00:00:00
此函数给角色添加BUFF并且支持设置BUFF中的多个实例属性的拓展值。

语法
Luacopy 复制
lualib:AddBuffWithAttrs(
    strRole,
    strBuffKey,
    dwTimes,
    attrs
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒（s）

0代表无限时间

caution_icon注意
如果BUFF表中的TimeLimit（对应Buff模板表中的存在时限字段）等于0，则此参数自动失效。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

AddBuffWithAttrsLimit_6.png
attrs

table

 
BUFF的实例属性拓展值列表

为table格式，具体格式为{[属性1编号]=属性1拓展值,[属性2编号]=属性2拓展值}

例如：{[1]=2,[2]=3}会分别设置第1条属性的拓展值为2、第2条属性的拓展值为3。

注：若表中没有填写对应的属性编号，则默认从该BUFF的第一条属性开始。

计算时，将属性的拓展值和Buff模板表中的属性值求和即为设置后的新数值。

caution_icon 注意
要求BUFF表中有配置对应的属性，否则设置不能生效。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysWarnMsg(player, "加BUFF前 Att196=" .. lualib:Attr(player, 196))
lualib:SysWarnMsg(player, "加BUFF前 Att550=" .. lualib:Attr(player, 550))
local ret = lualib:AddBuffWithAttrs(player, "脚本减血", 50, {-50, 50, 50})
lualib:SysWarnMsg(player, "加BUFF后 Att196=" .. lualib:Attr(player, 196))
lualib:SysWarnMsg(player, "加BUFF后 Att550=" .. lualib:Attr(player, 550))
lualib:SysWarnMsg(player, tostring(ret))

--示例代码以BUFF“脚本减血”为例。模板表中配置的前三项属性值如图。

AddBuffWithAttrs_3.png

--该BUFF的三项属性设置前后对比如下。


<上一篇:给角色添加持续时间不超过最大存在时限的BUFF下一篇:根据填写的BUFF参数类型添加BUFF（扩展）>
AddBuffWithParamsEx
根据填写的BUFF参数类型添加BUFF（扩展）

更新时间：2024-02-26 00:00:00
此函数根据填写的BUFF参数类型添加BUFF。

note_icon 备注
相比较接口AddBuffWithParams，该接口对Buff的添加关系结果进行了详细的定义。

语法
Luacopy 复制
lualib:AddBuffWithParamsEx(
    strRole,
    strBuffKey,
    params
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物、NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

params

table

 
BUFF的参数列表

为table格式，具体格式为{[参数1]=参数1的取值,[参数2]=参数2的取值}

具体参数说明如下：

time(uint32)：BUFF的持续时间，单位为秒（s），默认值为0。

attrs(table)：BUFF的实例属性拓展值列表，具体格式为{[属性1编号]=属性1拓展值,[属性2编号]=属性2拓展值}，默认为空表。

host(string)：释放者的GUID，默认值为0。

interval(uint32)：触发时间间隔，单位为毫秒（ms）（填0代表使用Buff模板表中的“触发间隔”选项的配置值），默认值为0。

stacks(uint32)：叠加层数（填0与填1效果相同，均代表叠加1层），默认值为0。

skill(string)：BUFF对应的技能索引名（KeyName），默认值为空字符串（""）。

例如：{["time"] = 0, ["attrs"] = {[1]=2, [2]=3}, ["host"] = "", ["interval"] = 0, ["stacks"] = 0, ["skill"] = ""}

caution_icon 注意
1.添加BUFF的实际持续时间与“是否使用传入的时间加上时间系数作为BUFF的时间”选项、“存在时限”选项和“时间系数”选项的配置有关，具体请参见“是否使用传入的时间加上时间系数作为BUFF的时间”选项的配置说明。

2.添加BUFF的实际属性值与“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项和“Att系数”选项的配置有关，具体请参见“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项的配置说明。

3.Buff模板表必须要有配置对应的属性，否则参数attrs将不会生效。

4.如果Buff模板表中的Interval字段（对应Buff模板表中的“触发间隔”选项）等于0，则参数Interval自动失效。

上述选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

图 1 “时间系数”选项和“存在时限”选项

AddBuff_3.png
图 2 “是否使用传入的时间加上时间系数作为BUFF的时间”选项

AddBuff_3.png
图 3 “Att1系数”选项

AddBuff_4.png
图 4 “是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项

AddBuff_5.png
图 5 “触发间隔”选项

AddBuffWithAttrsEx2.png
返回值
int

 
Buff添加的关系结果

0失败

1新增

2替换

3抵消

4忽略

5更新

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下所示。

--1.技能“棒打诸神”为魔攻类型的技能；

--2.“是否使用传入的时间加上时间系数作为BUFF的时间”选项和“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项均设置为“是”；

--3.相关选项的配置如下所示。

AddBuffWithParams_2.png
AddBuffWithParams_3.png
local result = lualib:AddBuffWithParamsEx(player, "测试系数", {
        ["time"] = 60,
        ["attrs"] = {[1] = 20, [2] = 30},
        ["host"] = player,
        ["interval"] = 1000,
        ["stacks"] = 0,
        ["skill"] = "棒打诸神"
    })
lualib:Warn("返回的数值为："..result)

--此示例代码运行成功如下图所示。同时，服务器日志将输出“返回的数值为：1”

--该角色的物防和魔防上限增加，添加的BUFF的存在时限增加。

AddBuffWithParams_4.png
<上一篇:给角色添加可设置实例属性拓展值的BUFF下一篇:根据填写的BUFF参数类型添加BUFF>
AddBuffWithParams
根据填写的BUFF参数类型添加BUFF

更新时间：2022-04-28 00:00:00
此函数根据填写的BUFF参数类型添加BUFF。

语法
Luacopy 复制
lualib:AddBuffWithParams(
    strRole,
    strBuffKey,
    params
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物、NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

params

table

 
BUFF的参数列表

为table格式，具体格式为{[参数1]=参数1的取值,[参数2]=参数2的取值}

具体参数说明如下：

time(uint32)：BUFF的持续时间，单位为秒（s），默认值为0。

attrs(table)：BUFF的实例属性拓展值列表，具体格式为{[属性1编号]=属性1拓展值,[属性2编号]=属性2拓展值}，默认为空表。

host(string)：释放者的GUID，默认值为0。

interval(uint32)：触发时间间隔，单位为毫秒（ms）（填0代表使用Buff模板表中的“触发间隔”选项的配置值），默认值为0。

stacks(uint32)：叠加层数（填0与填1效果相同，均代表叠加1层），默认值为0。

skill(string)：BUFF对应的技能索引名（KeyName），默认值为空字符串（""）。

例如：{["time"] = 0, ["attrs"] = {[1]=2, [2]=3}, ["host"] = "", ["interval"] = 0, ["stacks"] = 0, ["skill"] = ""}

caution_icon 注意
1.添加BUFF的实际持续时间与“是否使用传入的时间加上时间系数作为BUFF的时间”选项、“存在时限”选项和“时间系数”选项的配置有关，具体请参见“是否使用传入的时间加上时间系数作为BUFF的时间”选项的配置说明。

2.添加BUFF的实际属性值与“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项和“Att系数”选项的配置有关，具体请参见“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项的配置说明。

3.Buff模板表必须要有配置对应的属性，否则参数attrs将不会生效。

4.如果Buff模板表中的Interval字段（对应Buff模板表中的“触发间隔”选项）等于0，则参数Interval自动失效。

上述选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

图 1 “时间系数”选项和“存在时限”选项

AddBuff_3.png
图 2 “是否使用传入的时间加上时间系数作为BUFF的时间”选项

AddBuff_3.png
图 3 “Att1系数”选项

AddBuff_4.png
图 4 “是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项

AddBuff_5.png
图 5 “触发间隔”选项

AddBuffWithAttrsEx2.png
返回值
bool

 
true添加成功

fasle添加失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下所示。

--1.技能“棒打诸神”为魔攻类型的技能；

--2.“是否使用传入的时间加上时间系数作为BUFF的时间”选项和“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项均设置为“是”；

--3.相关选项的配置如下所示。

AddBuffWithParams_2.png
AddBuffWithParams_3.png
lualib:AddBuffWithParams(player, "测试系数", {
        ["time"] = 60,
        ["attrs"] = {[1] = 20, [2] = 30},
        ["host"] = player,
        ["interval"] = 1000,
        ["stacks"] = 0,
        ["skill"] = "棒打诸神"
    })

--此示例代码运行成功如下图所示。

--该角色的物防和魔防上限增加，添加的BUFF的存在时限增加。

AddBuffWithParams_4.png
<上一篇:根据填写的BUFF参数类型添加BUFF（扩展）下一篇:给角色添加BUFF>
AddBuff
给角色添加BUFF

更新时间：2022-07-18 00:00:00
此函数给角色添加BUFF。

语法
Luacopy 复制
lualib:AddBuff(
    strRole,
    strBuffKey,
    dwTimes
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

dwTimes

uint32

 
BUFF的持续时间

单位为秒（s）

0代表无限时间

caution_icon注意
如果BUFF表中的TimeLimit（对应Buff模板表中的“存在时限”选项）为0，则此参数自动失效。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

AddBuffWithAttrsLimit_6.png
返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddBuff(player,"天山雪莲",10) --添加BUFF“天山雪莲”，持续时间为10s。
lualib:SysPromptMsg(player,"BUFF天山雪莲叠加层数为"..lualib:BuffStack(player,218))

--若添加BUFF“天山雪莲”后的10s内，再进行一次施放，则获取的叠加层数为2。
<上一篇:根据填写的BUFF参数类型添加BUFF下一篇:获取BUFF的ID>
BuffKey2ID
获取BUFF的ID

更新时间：2022-03-30 00:00:00
此函数根据BUFF的索引名（KeyName）获取BUFF的ID。

语法
Luacopy 复制
lualib:BuffKey2ID(
    strBuffKey
)

参数
strBuffKey

string

 
BUFF的索引名（KeyName）

返回值
uint32

 
获取成功则返回BUFF的ID

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local BuffId = lualib:BuffKey2ID("缩小变身")
    lualib:Warn("BUFF的ID:"..BuffId)
end

--此示例代码运行成功如下图所示。

BuffKey2ID.png
<上一篇:给角色添加BUFF下一篇:获取角色指定BUFF的堆叠层数>
BuffStack
获取角色指定BUFF的堆叠层数

更新时间：2022-07-18 00:00:00
此函数获取角色指定BUFF的堆叠层数。

BUFF与BUFF之间为共存的关系时，该接口获取的数值为当前叠加的层数。

例如：当BUFF在其持续时间内，继续施放该BUFF，持续时间会进行叠加，堆叠层数也会叠加。

语法
Luacopy 复制
lualib:BuffStack(
    strRole,
    buff_id
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

buff_id

uint16

 
BUFF的ID

返回值
int32

 
BUFF的当前叠加层数

note_icon 备注
叠加层数的上限为指定BUFF的“叠加层数”选项的配置值。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域

BuffStack.png
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddBuff(player,"天山雪莲",10) --添加BUFF“天山雪莲”，持续时间为10s。
lualib:SysPromptMsg(player,"BUFF天山雪莲叠加层数为"..lualib:BuffStack(player,218))

--若添加BUFF“天山雪莲”后的10s内，再进行一次施放，则获取的叠加层数为2。
<上一篇:获取BUFF的ID下一篇:获取BUFF的配置表结构>
Buff_DataRow
获取BUFF的配置表结构

更新时间：2022-03-30 00:00:00
此函数根据BUFF的索引名（KeyName）获取该BUFF的配置表结构。

语法
Luacopy 复制
lualib:Buff_DataRow(
    buff_key
)
参数
buff_key

string

 
BUFF的索引名（KeyName）

返回值
table

 
BUFF的配置表结构

其定义请参见BUFF模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("Buff_DataRow = "..json.encode(lualib:Buff_DataRow("落马术"))) --获取“落马术”的配置表结构

--此示例代码运行成功部分输出如下图所示。

Buff_DataRow.png
<上一篇:获取角色指定BUFF的堆叠层数下一篇:删除角色BUFF>
DelBuff
删除角色BUFF

更新时间：2022-04-15 00:00:00
此函数删除角色指定BUFF。

语法
Luacopy 复制
lualib:DelBuff(
    strRole,
    strBuffKey
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

若此参数的配置值为""，则删除该角色所有的BUFF。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:DelBuff(player,"缩小变身") --删除“缩小变身”的特效

--此示例代码运行前效果如下图所示。

DelBuff.png

--此示例代码运行后效果如下图所示。

DelBuff_2.png
<上一篇:获取BUFF的配置表结构下一篇:获取BUFF的Att1属性的拓展值>
GetBuffAtt1
获取BUFF的Att1属性的拓展值

更新时间：2022-07-18 00:00:00
此函数获取BUFF的Att1属性的拓展值。

语法
Luacopy 复制
lualib:GetBuffAtt1(
    strRole,
    strBuffKey
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

返回值
int32

 
Att1属性的拓展值

note_icon 备注
若使用接口lualib:AddBuff2添加BUFF，则此接口的返回值情况如下所示：

1.当“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项设置为“是”时，此接口会返回接口lualib:AddBuff2设置的拓展值加上根据ATT系数计算的附加属性值。

2.当“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项设置为“否”时，分为以下两种情况：

①当接口lualib:AddBuff2设置的拓展值不为0时，则会直接返回Att1属性的拓展值；

②当接口lualib:AddBuff2设置的拓展值为0时，则会直接返回加上根据ATT系数计算的附加属性值；

3.附加属性值计算公式：附加属性值 = 角色攻击力 * Att1系数 / 100

   例如：某BUFF对应技能的攻击类型为魔攻，玩家的魔法攻击力为n(n∈[1,100])（在释放BUFF时，从自身的攻击的上下限之间取一个值）。

   当Att1系数为20时，则附加属性值为：n * 20%（n∈[1,100]）。

   当Att1系数为-20时，则附加属性值为：n *（-20%）(n∈[1,100])。

上述选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

图 1 “Att1系数”选项

AddBuff_4.png
图 2 “是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项

AddBuff_5.png
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下：
--“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项设置为“否”；
--BUFF“测试蛊毒咒减血”的Att1系数为-60，玩家的咒术攻击的上限和下限分别为514和380。
lualib:AddBuff2(player,player,"测试蛊毒咒减血","蛊毒咒4级",10,0) --给角色添加BUFF，并设置此BUFF的Att1属性的拓展值为0。
local test = lualib:GetBuffAtt1(player,"测试蛊毒咒减血") --获取BUFF的Att1属性的拓展值
lualib:Warn("Att1的拓展值:"..test)

--此示例代码运行成功如下图所示（因为BUFF的Att1属性的拓展值为0，所以会返回属性的附加属性值）。

GetBuffAtt1.png
<上一篇:删除角色BUFF下一篇:获取角色BUFF触发时间间隔>
GetBuffInterval
获取角色BUFF触发时间间隔

更新时间：2023-10-23 00:00:00
此函数获取角色BUFF触发时间间隔。

语法
Luacopy 复制
lualib:GetBuffInterval(
    strRole,
    strBuffKey
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

返回值
int

 
BUFF的触发时间间隔

单位为毫秒（ms）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:AddBuff(player,"蛊毒咒减血1级",19) --添加一个BUFF
    local time =  lualib:GetBuffInterval(player,"蛊毒咒减血1级") --获取BUFF的触发时间间隔
    lualib:Warn("BUFF的触发时间间隔是:"..tostring(test))
end

--此示例代码运行成功后，日志将会输出：

--BUFF的触发时间间隔是:2000
<上一篇:获取BUFF的Att1属性的拓展值下一篇:获取指定角色的BUFF列表>
GetBuffList
获取指定角色的BUFF列表

更新时间：2022-07-18 00:00:00
此函数获取指定角色的BUFF列表。

语法
Luacopy 复制
lualib:GetBuffList(
    role_guid
)

参数
role_guid

string

 
角色的GUID

返回值
table

 
角色的BUFF列表

存储在lua表，为table格式。

具体格式如下：

{

    [1]={["key"]=BUFF1的索引名（KeyName）,["life"]= BUFF1的存在时限,["att1"]=BUFF1的Att1属性的拓展值}

    [2]={["key"]=BUFF2的索引名（KeyName）,["life"]= BUFF2的存在时限,["att1"]=BUFF2的Att1属性的拓展值}

    ...

}

note_icon 备注
若使用接口lualib:AddBuff2添加BUFF，则参数“att1”的获取值情况如下所示：

1.当“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项设置为“是”时，参数“att1”会获取接口lualib:AddBuff2设置的拓展值加上根据ATT系数计算的附加属性值。

2.当“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项设置为“否”时，分为以下两种情况：

①当接口lualib:AddBuff2设置的拓展值不为0时，则参数“att1”会直接获取Att1属性的拓展值；

②当接口lualib:AddBuff2设置的拓展值为0时，则参数“att1”会直接获取根据ATT系数计算的附加属性值；

3.附加属性值计算公式：附加属性值 = 角色攻击力 * Att1系数 / 100

   例如：某BUFF对应技能的攻击类型为魔攻，玩家的魔法攻击力为n(n∈[1,100])（在释放BUFF时，从自身的攻击的上下限之间取一个值）。

   当Att1系数为20时，则附加属性值为：n * 20%（n∈[1,100]）。

   当Att1系数为-20时，则附加属性值为：n *（-20%）(n∈[1,100])。

上述选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

图 1 “Att1系数”选项

AddBuff_4.png
图 2 “是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项

AddBuff_5.png
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下：
--“是否使用传入的额外属性加上ATT系数作为BUFF的额外属性”选项设置为“否”；
--BUFF“测试蛊毒咒减血”的Att1系数为-60，玩家的咒术攻击的上限和下限分别为514和380；
--BUFF“测试蛊毒咒减血1”和“测试蛊毒咒减血2”的Att1系数均为0。
lualib:AddBuff2(player,player,"测试蛊毒咒减血","蛊毒咒4级",10,0) --给角色添加BUFF，并设置此BUFF的Att1属性的拓展值为0。
lualib:AddBuff2(player,player,"测试蛊毒咒减血1","蛊毒咒4级",10,0) --给角色添加BUFF，并设置此BUFF的Att1属性的拓展值为0。
lualib:AddBuff2(player,player,"测试蛊毒咒减血2","蛊毒咒4级",10,-100) --给角色添加BUFF，并设置此BUFF的Att1属性的拓展值为-100。
local t = lualib:GetBuffList(player) --获取玩家的BUFF列表
lualib:Warn("BUFF列表:"..serialize(t))

--此示例代码运行成功如下图所示。

--因为BUFF“测试蛊毒咒减血”和“测试蛊毒咒减血1”的Att1属性的拓展值为0，所以会返回属性的附加属性值。

--因为BUFF“测试蛊毒咒减血2”的Att1属性的拓展值不为0，所以会直接返回属性的拓展值。

GetBuffList.png
<上一篇:获取角色BUFF触发时间间隔下一篇:获取BUFF剩余时间>
GetBuffTime
获取BUFF剩余时间

更新时间：2022-03-30 00:00:00
此函数获取BUFF的剩余时间。

语法
Luacopy 复制
lualib:GetBuffTime(
    strRole,
    strBuffKey
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

返回值
int

 
BUFF的剩余时间

单位为秒（s）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:AddBuff(player,"蛊毒咒减血1级",19) --添加一个BUFF
    local test = lualib:GetBuffTime(player,"蛊毒咒减血1级") --获取BUFF的剩余时间
    lualib:Warn("BUFF剩余时间是:"..tostring(test))
end

--此示例代码运行成功如下图所示。

GetBuffTime.png
<上一篇:获取指定角色的BUFF列表下一篇:获取角色BUFF的实例属性拓展值列表>
GetBuffWithAttrs
获取角色BUFF的实例属性拓展值列表

更新时间：2022-03-30 00:00:00
此函数获取角色BUFF的实例属性拓展值列表。

语法
Luacopy 复制
lualib:GetBuffWithAttrs(
    strRole,
    strBuffKey
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

返回值
table

 
BUFF的实例属性拓展值列表

为table格式，具体格式为{[属性1编号]=属性1拓展值,[属性2编号]=属性2拓展值}

例如：{[1]=2,[2]=3}分别表示第1条属性的拓展值为2、第2条属性的拓展值为3。

注：若没有对应的属性编号，则默认从该BUFF的第一条属性开始。

note_icon 备注
执行此接口时，若角色身上没有添加指定BUFF，则会提示“角色里没有找到BUFF”，同时返回一个空表。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--角色身上添加了指定BUFF“双旦双倍经验”。
lualib:AddBuffWithAttrs(player, "双旦双倍经验", 86400, {20,50,50}) --给玩家添加BUFF并设置BUFF中的实例属性的拓展值
function GetTestAddBuff(player)
    local AttrTable = lualib:GetBuffWithAttrs(player,"双旦双倍经验") --获取玩家BUFF的实例属性拓展值列表
    lualib:Warn(""..serialize(AttrTable))
    for k, v in pairs(AttrTable) do
        lualib:Warn("Att "..k.." : "..v)
    end
end

--此示例代码运行成功如下图所示。

GetBuffWithAttrs.png
--角色身上未添加指定BUFF“双旦双倍经验”。
function GetTestAddBuff(player)
    local AttrTable = lualib:GetBuffWithAttrs(player,"双旦双倍经验") --获取玩家BUFF的实例属性拓展值列表
    lualib:Warn(""..serialize(AttrTable))
    for k, v in pairs(AttrTable) do
        lualib:Warn("Att "..k.." : "..v)
    end
end

--此示例代码运行成功如下图所示（提示未找到BUFF，同时返回一个空表）。

GetBuffWithAttrs_2.png
<上一篇:获取BUFF剩余时间下一篇:角色是否拥有指定BUFF>
HasBuff
角色是否拥有指定BUFF

更新时间：2022-03-30 00:00:00
此函数判断角色是否拥有指定BUFF。

语法
Luacopy 复制
lualib:HasBuff(
    strRole,
    strBuffKey
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的索引名（KeyName）

返回值
bool

 
true角色有指定BUFF

false角色没有指定BUFF

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:AddBuff(player,"蛊毒咒减血1级",0) --添加一个BUFF
    local test = lualib:HasBuff(player,"蛊毒咒减血1级") --判断玩家是否拥有指定BUFF
    lualib:Warn("拥有此BUFF："..tostring(test))
end

--此示例代码运行成功如下图所示。

HasBuff.png
<上一篇:获取角色BUFF的实例属性拓展值列表下一篇:设置角色指定BUFF的堆叠层数>
SetBuffStack
设置角色指定BUFF的堆叠层数

更新时间：2024-01-03 00:00:00
此函数设置角色指定BUFF的堆叠层数，且最终叠加层数不会超过BUFF模板表中预设的叠加层数。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域

BuffStack.png
语法
Luacopy 复制
lualib:SetBuffStack(
    strRole,
    buff_id,
    stack
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

buff_id

uint16

 
BUFF的模板ID

stack

int32

 
BUFF的叠加层数

此数值须大于0

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
    lualib:AddBuff(player,"手游金创药（小）",0)
    lualib:SetBuffStack(player,289,10)
    lualib:Warn("添加的BUFF叠加层数为："..lualib:BuffStack(player,289))
end  

--执行成功后，日志将输出：“添加的BUFF叠加层数为：10”
<上一篇:角色是否拥有指定BUFF下一篇:设置指定BUFF的剩余时间>
SetBuffTime
设置指定BUFF的剩余时间

更新时间：2022-07-18 00:00:00
此函数设置指定BUFF的剩余时间。

要注意BUFF模板表中的绝对时间或相对时间选项的配置。

当此选项的配置为0时，代表BUFF时间使用的是相对时间，即角色下线时停止计时上线后继续计时。

当此选项的配置为非0时，代表BUFF时间使用的是绝对时间，即角色下线时不停止计时继续计算BUFF时间。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表区域。

SetBuffTime_6.png
语法
Luacopy 复制
lualib:SetBuffTime(
    role,
    buff_key,
    buff_time
)
参数
role

string

 
角色的GUID

角色可以为玩家、怪物或者NPC

buff_key

string

 
BUFF的索引名（KeyName）

buff_time

uint32

 
BUFF的剩余时间

单位为秒（s）

caution_icon 注意
当BUFF时间使用的是绝对时间时，此参数请务必用使用接口lualib:GetAllTime加上想要设置的时间（如示例代码所示）。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码的执行前提：BUFF蛊毒咒减血1级的时间使用的是相对时间，BUFF群体蛊毒血咒1级的时间使用的是绝对时间。

SetBuffTime_7.png

SetBuffTime_8.png

--相对时间
if lualib:SetBuffTime(player, "蛊毒咒减血1级", 20) then
    lualib:SysMsg_SendWarnMsg(player, "BuffTime设置成功！")
end

--绝对时间
if lualib:SetBuffTime(player, "群体蛊毒血咒1级", lualib:GetAllTime() + 20) then
    lualib:SysMsg_SendWarnMsg(player, "BuffTime设置成功！")
end

--此示例代码运行前效果如下图所示(左边为BUFF蛊毒咒减血1级，右边为BUFF群体蛊毒血咒1级)。

SetBuffTime_4.png

--此示例代码运行后效果如下图所示(左边为BUFF蛊毒咒减血1级，右边为BUFF群体蛊毒血咒1级)。

SetBuffTime_5.png
<上一篇:设置角色指定BUFF的堆叠层数下一篇:设置角色BUFF的attr属性>
SetBuffWithAttrs
设置角色BUFF的attr属性

更新时间：2025-06-20 00:00:00
此函数设置角色BUFF的attr属性。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域

SetBuffWithAttrs.png
语法
Luacopy 复制
lualib:SetBuffWithAttrs(
    strRole,
    strBuffKey,
    attrs
)

参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

strBuffKey

string

 
BUFF的KeyName

attrs

table

 
BUFF的实例属性列表

存储在lua表中

返回的table形式为{[1] = 2, [2] = 3}

key为att序号，value对应模板表可配置的25个属性

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--给角色已有buff设置attr属性

SetBuffWithAttrs.png

function main(npc,player)
    lualib:SysWarnMsg(player, "设置BUFF属性前 Att196=" .. lualib:Attr(player, 196))
    lualib:SysWarnMsg(player, "设置BUFF属性前 Att550=" .. lualib:Attr(player, 550))
    local ret = lualib:SetBuffWithAttrs(player, "测试无敌", {[1]=1,[2]=1,[3]=50,[4]=50})
    lualib:SysWarnMsg(player, "设置BUFF属性后 Att196=" .. lualib:Attr(player, 196))
    lualib:SysWarnMsg(player, "设置BUFF属性后 Att550=" .. lualib:Attr(player, 550))
    lualib:SysWarnMsg(player, tostring(ret))
end

--此示例代码运行成功如下图所示。

SetBuffWithAttrs_2.png
<上一篇:设置指定BUFF的剩余时间下一篇:设置是否使用新的BUFF的属性计算规则>
SetUseNewAttrCalcRule
设置是否使用新的BUFF的属性计算规则

更新时间：2022-07-18 00:00:00
此函数设置是否使用新的BUFF的属性计算规则。

新规则为属性系数（Att系数）在BUFF叠加的每一层均有效，即属性总值=BUFF叠加层数为1层时的属性值*叠加层数。

旧规则为属性系数（Att系数）仅在BUFF叠加的的第一层生效，即属性总值=BUFF叠加层数为1层时的属性值+Att值*（叠加层数-1）。

BUFF叠加层数为1层时的属性值的计算方式如下所示：

例如：某BUFF，效果为-10点血（即扣10点血），对应技能攻击类型为魔攻，玩家的魔攻为n(n∈[1,100])（在释放BUFF时，从自身的攻击的上下限之间取一个值）。

当Att1系数为20时，则最终技能伤害为：-10+ n * 20%（n∈[1,100]）。若魔攻取100则最终技能伤害为加10点血。

当Att1系数为-20时，则最终技能伤害为：-10+ n *（-20%）(n∈[1,100])。若魔攻取100则最终技能伤害为扣30点血。

相关选项的访问路径为：游戏工具平台→游戏配置→技能→Buff模板表区域。

SetUseNewAttrCalcRule_4.png
语法
Luacopy 复制
lualib:SetUseNewAttrCalcRule(
    is_use
)
参数
is_use

uint8

 
是否使用新的BUFF的属性计算规则

1使用

0不使用

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetUseNewAttrCalcRule(1) --设置使用新的BUFF的属性计算规则
lualib:AddBuffEx(player, "蛊毒咒减血1级", 0, -100) --添加一个BUFF

--当BUFF的叠加层数为1层时的运行成功如下图所示。

SetUseNewAttrCalcRule.png

--当BUFF的叠加层数为3层时的运行成功如下图所示。

SetUseNewAttrCalcRule_2.png
<上一篇:设置角色BUFF的attr属性
Ride
玩家上马

更新时间：2022-08-23 00:00:00
此函数让玩家上马。

caution_icon警告
此接口执行后不能保证玩家上马成功，必须遵循乘骑规则。

此接口不建议单独使用，需要搭配回调函数on_ride_request或者on_post_ride来编写玩家上马相关的逻辑。

语法
Luacopy 复制
lualib:Ride(
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
--以官方45度美术资源展示（区号：3104）的system.lua脚本文件为例。
--……省略部分代码

function on_system_start()

--……省略部分代码

    lualib:AddTrigger("0",  363, "on_ride_request") --上马触发
    lualib:AddTrigger("0",  364, "on_unride_request") --下马触发

--……省略部分代码

end

--……省略部分代码

--上马
function on_ride_request(player)
    local buff_table = {"白茅人变身卡", "木器人变身卡", "花蜘蛛变身卡", "顽猴变身卡", "蛟人变身卡", "铁齿战将变身卡", "飞芒变身卡", "邪魔人偶变身卡", "树妖变身卡", "噬灵妖花变身卡", "妖面监工变身卡", "鬼面监工变身卡", "妖刀侍卫变身卡", "赤面猴变身卡", "绝道白猿变身卡", "巨蛾变身卡", "野狼变身卡", "神兽变身卡", "红面牛魔变身卡", "牛魔将军变身卡", "巨蛇变身卡", "黑水蛇变身卡", "白狼变身卡", "刀奴变身卡", "散兵变身卡", "沙石魔变身卡", "风魔变身卡", "夜行僧变身卡", "黑暗刺客变身卡", "梵天僧变身卡", "天原死士变身卡", "血禅师变身卡", "骷髅王变身卡", "飞刀骷髅变身卡", "骷髅战将变身卡", "尸奴工头变身卡", "僵尸变身卡", "雷暴僵尸变身卡", "墓地蛆虫变身卡", "幽冥尸王变身卡", "鹿变身卡", "千年树魔变身卡", "白茅怪人变身卡", "白茅邪人变身卡", "毒蜘蛛变身卡", "棘刺蜘蛛变身卡", "泼猴变身卡", "凶暴猿猴变身卡", "猿猴变身卡", "飞蛾变身卡", "毒蛾变身卡", "苍狼变身卡", "青蛇变身卡", "红蛇变身卡", "白蛇变身卡", "蟒蛇变身卡", "蛇蛟变身卡", "古怪刀客变身卡", "鬼面刀手变身卡", "双刀侩子手变身卡", "魔兵变身卡", "蓝兽变身卡", "妖僧变身卡", "鬼面武者变身卡", "影刺变身卡", "骷髅战士变身卡", "单刀骷髅变身卡", "大斧骷髅变身卡", "飞萤变身卡", "魔萤变身卡", "邪翅变身卡", "食人花变身卡", "天原勇士变身卡", "天原猛士变身卡", "黑面牛魔变身卡", "牛魔勇士变身卡", "牛魔守卫变身卡", "爬尸变身卡", "尸卫变身卡", "腐尸变身卡", "掘铲尸奴变身卡", "铁镐尸奴变身卡", "尸奴变身卡", "骷髅宝宝变身卡", "老母猪变身卡", "小猪变身卡", "羊变身卡", "牛变身卡", "鸡变身卡", "饿鬼蛛变身卡", "剧毒蛛变身卡", "魔蛇变身卡", "魔狼变身卡", "魔猿变身卡", "巨石傀儡变身卡", "牛魔侍卫变身卡", "魔化蜥蜴变身卡", "魔化蝎子变身卡", "魔化沙虫变身卡", "天魔妖蟒变身卡", "恶战天魔变身卡", "天魔奴仆变身卡", "夜灵变身卡", "天魔统领变身卡", "天魔守卫变身卡", "天魔妖道变身卡", "天魔先锋变身卡", "天魔神变身卡", "深海巨螯怪变身卡", "石甲鱼变身卡", "秘境海妖变身卡", "巨钳蟹变身卡", "海魔侍从变身卡", "海魔护卫变身卡", "秘境歌妖变身卡", "铁棘鱼变身卡", "铁螯怪变身卡", "巨人药剂", "武斗场麻布衣男", "武斗场麻布衣女", "武斗场轻型战衣男", "武斗场轻型战衣女", "武斗场元灵铠甲男", "武斗场元灵铠甲女", "武斗场轻便铠甲男", "武斗场轻便铠甲女", "武斗场黄金铠甲男", "武斗场黄金铠甲女", "武斗场赤峰战甲男", "武斗场赤峰战甲女", "武斗场百裂战甲男", "武斗场百裂战甲女", "武斗场熔岩战甲男", "武斗场熔岩战甲女", "武斗场龙鳞战甲男", "武斗场龙鳞战甲女", "武斗场见习法师袍男", "武斗场见习法师袍女", "武斗场紫绸长袍男", "武斗场紫绸长袍女", "武斗场魔力法袍男", "武斗场魔力法袍女", "武斗场阎罗长袍男", "武斗场阎罗长袍女", "武斗场圣灵法衣男", "武斗场圣灵法衣女", "武斗场火麟法袍男", "武斗场火麟法袍女", "武斗场璃梦法袍男", "武斗场璃梦法袍女", "武斗场乾坤道衣男", "武斗场乾坤道衣女", "武斗场天心道衣男", "武斗场天心道衣女", "武斗场降魔道衣男", "武斗场降魔道衣女", "武斗场光明道袍男", "武斗场光明道袍女", "武斗场太玄道袍男", "武斗场太玄道袍女", "武斗场玄清道衣男", "武斗场玄清道衣女", "武斗场天鼎道袍男", "武斗场天鼎道袍女", "武斗场变身", "缩小药剂", "变身2", "变猪术"}
    local hashorse = lualib:Attr(player, 200) --获取玩家属性“骑马开关”的值
    --属性值为1代表玩家处于骑乘状态
    if hashorse == 1 then
        lualib:MsgBox(player, "你已经处于骑乘状态了！")
        return
    end
    for i = 1, #buff_table do
        if lualib:HasBuff(player, buff_table[i]) == true then
            lualib:MsgBox(player, "变身状态无法骑马，请右键点击BUFF图标取消BUFF后再进行尝试")
            return
        end
    end
    lualib:ProgressBarStart(player, 6000, "上马中   ", "on_Horse_true", "on_Horse_false", "") --让玩家开启进度条
end

--进度条完成时回调函数
function on_Horse_true(player)
    lualib:Ride(player) --玩家上马
    return true
end

--进度条被打断时回调函数
function on_Horse_false(player)
    lualib:SysMsg_SendTriggerMsg(player, "上马被打断") --发送客户端底部触发消息
    return true
end

--下马
function on_unride_request(player)
    local hashorse = lualib:Attr(player, 200) --获取玩家属性“骑马开关”的值
    --属性值为0代表玩家处于非骑乘状态
    if hashorse == 0 then
        lualib:MsgBox(player, "你还没有骑乘，不能下马状态了！")
    else
        lualib:UnRide(player) --玩家下马
    end

    return true
end

--……省略部分代码

--此示例代码运行成功如下图所示（点击“骑乘”按钮，玩家可正常上马）。

Ride.gif
下一篇:玩家下马>
UnRide
玩家下马

更新时间：2022-08-23 00:00:00
此函数让玩家下马。

caution_icon警告
此接口不建议单独使用，需要搭配回调函数on_unride_request或者on_post_unride来编写玩家下马相关的逻辑。

语法
Luacopy 复制
lualib:UnRide(
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
--以官方45度美术资源展示（区号：3104）的system.lua脚本文件为例。
--……省略部分代码

function on_system_start()

--……省略部分代码

    lualib:AddTrigger("0",  363, "on_ride_request") --上马触发
    lualib:AddTrigger("0",  364, "on_unride_request") --下马触发

--……省略部分代码

end

--……省略部分代码

--上马
function on_ride_request(player)
    local buff_table = {"白茅人变身卡", "木器人变身卡", "花蜘蛛变身卡", "顽猴变身卡", "蛟人变身卡", "铁齿战将变身卡", "飞芒变身卡", "邪魔人偶变身卡", "树妖变身卡", "噬灵妖花变身卡", "妖面监工变身卡", "鬼面监工变身卡", "妖刀侍卫变身卡", "赤面猴变身卡", "绝道白猿变身卡", "巨蛾变身卡", "野狼变身卡", "神兽变身卡", "红面牛魔变身卡", "牛魔将军变身卡", "巨蛇变身卡", "黑水蛇变身卡", "白狼变身卡", "刀奴变身卡", "散兵变身卡", "沙石魔变身卡", "风魔变身卡", "夜行僧变身卡", "黑暗刺客变身卡", "梵天僧变身卡", "天原死士变身卡", "血禅师变身卡", "骷髅王变身卡", "飞刀骷髅变身卡", "骷髅战将变身卡", "尸奴工头变身卡", "僵尸变身卡", "雷暴僵尸变身卡", "墓地蛆虫变身卡", "幽冥尸王变身卡", "鹿变身卡", "千年树魔变身卡", "白茅怪人变身卡", "白茅邪人变身卡", "毒蜘蛛变身卡", "棘刺蜘蛛变身卡", "泼猴变身卡", "凶暴猿猴变身卡", "猿猴变身卡", "飞蛾变身卡", "毒蛾变身卡", "苍狼变身卡", "青蛇变身卡", "红蛇变身卡", "白蛇变身卡", "蟒蛇变身卡", "蛇蛟变身卡", "古怪刀客变身卡", "鬼面刀手变身卡", "双刀侩子手变身卡", "魔兵变身卡", "蓝兽变身卡", "妖僧变身卡", "鬼面武者变身卡", "影刺变身卡", "骷髅战士变身卡", "单刀骷髅变身卡", "大斧骷髅变身卡", "飞萤变身卡", "魔萤变身卡", "邪翅变身卡", "食人花变身卡", "天原勇士变身卡", "天原猛士变身卡", "黑面牛魔变身卡", "牛魔勇士变身卡", "牛魔守卫变身卡", "爬尸变身卡", "尸卫变身卡", "腐尸变身卡", "掘铲尸奴变身卡", "铁镐尸奴变身卡", "尸奴变身卡", "骷髅宝宝变身卡", "老母猪变身卡", "小猪变身卡", "羊变身卡", "牛变身卡", "鸡变身卡", "饿鬼蛛变身卡", "剧毒蛛变身卡", "魔蛇变身卡", "魔狼变身卡", "魔猿变身卡", "巨石傀儡变身卡", "牛魔侍卫变身卡", "魔化蜥蜴变身卡", "魔化蝎子变身卡", "魔化沙虫变身卡", "天魔妖蟒变身卡", "恶战天魔变身卡", "天魔奴仆变身卡", "夜灵变身卡", "天魔统领变身卡", "天魔守卫变身卡", "天魔妖道变身卡", "天魔先锋变身卡", "天魔神变身卡", "深海巨螯怪变身卡", "石甲鱼变身卡", "秘境海妖变身卡", "巨钳蟹变身卡", "海魔侍从变身卡", "海魔护卫变身卡", "秘境歌妖变身卡", "铁棘鱼变身卡", "铁螯怪变身卡", "巨人药剂", "武斗场麻布衣男", "武斗场麻布衣女", "武斗场轻型战衣男", "武斗场轻型战衣女", "武斗场元灵铠甲男", "武斗场元灵铠甲女", "武斗场轻便铠甲男", "武斗场轻便铠甲女", "武斗场黄金铠甲男", "武斗场黄金铠甲女", "武斗场赤峰战甲男", "武斗场赤峰战甲女", "武斗场百裂战甲男", "武斗场百裂战甲女", "武斗场熔岩战甲男", "武斗场熔岩战甲女", "武斗场龙鳞战甲男", "武斗场龙鳞战甲女", "武斗场见习法师袍男", "武斗场见习法师袍女", "武斗场紫绸长袍男", "武斗场紫绸长袍女", "武斗场魔力法袍男", "武斗场魔力法袍女", "武斗场阎罗长袍男", "武斗场阎罗长袍女", "武斗场圣灵法衣男", "武斗场圣灵法衣女", "武斗场火麟法袍男", "武斗场火麟法袍女", "武斗场璃梦法袍男", "武斗场璃梦法袍女", "武斗场乾坤道衣男", "武斗场乾坤道衣女", "武斗场天心道衣男", "武斗场天心道衣女", "武斗场降魔道衣男", "武斗场降魔道衣女", "武斗场光明道袍男", "武斗场光明道袍女", "武斗场太玄道袍男", "武斗场太玄道袍女", "武斗场玄清道衣男", "武斗场玄清道衣女", "武斗场天鼎道袍男", "武斗场天鼎道袍女", "武斗场变身", "缩小药剂", "变身2", "变猪术"}
    local hashorse = lualib:Attr(player, 200) --获取玩家属性“骑马开关”的值
    --属性值为1代表玩家处于骑乘状态
    if hashorse == 1 then
        lualib:MsgBox(player, "你已经处于骑乘状态了！")
        return
    end
    for i = 1, #buff_table do
        if lualib:HasBuff(player, buff_table[i]) == true then
            lualib:MsgBox(player, "变身状态无法骑马，请右键点击BUFF图标取消BUFF后再进行尝试")
            return
        end
    end
    lualib:ProgressBarStart(player, 6000, "上马中   ", "on_Horse_true", "on_Horse_false", "") --让玩家开启进度条
end

--进度条完成时回调函数
function on_Horse_true(player)
    lualib:Ride(player) --玩家上马
    return true
end

--进度条被打断时回调函数
function on_Horse_false(player)
    lualib:SysMsg_SendTriggerMsg(player, "上马被打断") --发送客户端底部触发消息
    return true
end

--下马
function on_unride_request(player)
    local hashorse = lualib:Attr(player, 200) --获取玩家属性“骑马开关”的值
    --属性值为0代表玩家处于非骑乘状态
    if hashorse == 0 then
        lualib:MsgBox(player, "你还没有骑乘，不能下马状态了！")
    else
        lualib:UnRide(player) --玩家下马
    end

    return true
end

--……省略部分代码

--此示例代码运行成功如下图所示（点击“骑乘”按钮，玩家可正常上马）。

Ride.gif
<上一篇:玩家上马
GetVipLevelRemain
获取VIP剩余时间

更新时间：2022-03-30 00:00:00
此函数获取VIP的剩余时间。

语法
Luacopy 复制
lualib:GetVipLevelRemain(
    strPlayer,
    iVipLevel
)

参数
strPlayer

string

 
玩家角色的GUID

iVipLevel

int

 
VIP等级

返回值
uint32

 
执行成功则返回VIP的剩余时间（单位为秒（s））

执行失败则返回0

note_icon 备注
当玩家自身的VIP等级小于参数iVipLevel的值时，接口返回值为0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local vip_lv = lualib:GetVipLevel(player) --获取玩家的VIP等级
    local remain = lualib:GetVipLevelRemain(player, vip_lv) --获取玩家VIP的剩余时间
    lualib:Warn("VIP的剩余时间："..remain)
end

--此示例代码运行成功如下图所示。

GetVipLevelRemain.png
下一篇:获取玩家的VIP等级>
GetVipLevel
获取玩家的VIP等级

更新时间：2022-03-30 00:00:00
此函数获取玩家的VIP等级。

语法
Luacopy 复制
lualib:GetVipLevel(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 对应玩家的VIP等级
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetVipLevel(player,7) --设置玩家的VIP等级为7级
    local test = lualib:GetVipLevel(player) --获取玩家的VIP等级
    lualib:Warn("当前VIP等级是："..test)
end

--此示例代码运行成功如下图所示。

GetVipLevel.png
<上一篇:获取VIP剩余时间下一篇:获取VIP功能剩余时间>
GetVipRemain
获取VIP功能剩余时间

更新时间：2022-03-30 00:00:00
此函数获取指定VIP功能的剩余时间。

语法
Luacopy 复制
lualib:GetVipRemain(
    strPlayer,
    iVipID
)

参数
strPlayer

string

 
玩家角色的GUID

iVipID

int

 
VIP功能的ID（即VIP商店表中的流水号选项）

note_icon 备注
流水号选项的访问路径为：游戏工具平台→游戏配置→其他表格→VIP商店→VIP商店信息区域

GetVipRemain.png
返回值
uint32

 
执行成功则返回指定VIP功能的剩余时间（单位为秒（s））

执行失败则返回0

note_icon 备注
仅在玩家获得指定的VIP功能后才可查询出对应功能的剩余时间。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
--要测试的VIP功能的ID（即流水号）为1， 适用的VIP等级为4级，购买持续时间604800秒（即7天）。

GetVipRemain_2.png

GetVipRemain_3.png
function WarnPrint(npc,player)
    lualib:SetVipLevel(player,4) --设置玩家的VIP等级为4
    lualib:SysWarnMsg(player,"时间"..lualib:GetVipRemain(player,1)) --获取VIP功能的剩余时间
end

--此示例代码运行成功如下图所示。

GetVipRemain_4.png
<上一篇:获取玩家的VIP等级下一篇:设置玩家的VIP等级>
SetVipLevel
设置玩家的VIP等级

更新时间：2022-03-30 00:00:00
此函数设置玩家的VIP等级。

语法
Luacopy 复制
lualib:SetVipLevel(
    strPlayer,
    iVipLevel
)

参数
strPlayer

string

 
玩家角色的GUID

iVipLevel

int

 
VIP等级

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    lualib:SetVipLevel(player,7) --设置玩家的VIP等级为7级
    local test = lualib:GetVipLevel(player) --获取玩家的VIP等级
    lualib:Warn("当前VIP等级是："..test)
end

--此示例代码运行成功如下图所示。

GetVipLevel.png
<上一篇:获取VIP功能剩余时间
