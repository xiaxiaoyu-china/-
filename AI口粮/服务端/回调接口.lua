on_add_title
角色添加称号时回调

更新时间：2021-12-17 00:00:00
此函数角色添加称号时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_add_title(
    strRole,
    title_id
)
参数
strRole

string

 
角色的GUID

title_id

uint16

 
称号的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 463, "on_add_title") --角色添加称号时回调
lualib:AddTitle(player, 1) --给玩家添加称号

function on_add_title(role, title_id)
    lualib:Warn(lualib:Name(role).." 成功添加称号 "..title_id)
end

--此示例代码运行成功如下图所示。

on_add_title.png
下一篇:受攻击时回调（扩展）>
on_attack_ex
受攻击时回调（扩展）

更新时间：2022-05-05 00:00:00
此函数在受攻击时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_attack_ex(
    strRole,
    strAttacker,
    iHp,
    strSkillKey
)

参数
strRole

string

 
被攻击者的GUID

strAttacker

string

 
攻击者的GUID

iHp

int32

 
损失的血量

strSkillKey

string

 
攻击技能的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_attack_ex(self, actor, hp, skill_key)    
     -- 
end
<上一篇:角色添加称号时回调下一篇:受攻击时回调>
on_attack
受攻击时回调

更新时间：2021-09-07 00:00:00
此函数在受攻击时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_attack(
    strRole,
    strAttacker
)

参数
strRole

string

 
被攻击者的GUID

strAttacker

string

 
攻击者的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_attack(self, actor)  
    lualib:AddTimer(self, deleteBuffTimerID, deleteBuffTime, -1, "on_del_buff")  
    if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end  
    local hp_mul = get_hp_mul(self)  
    if hp_mul == -1 then 
        return 
    end  

    if (hp_mul > fts_atk_onhp[2]["min"]) and (hp_mul < fts_atk_onhp[2]["max"]) and (lualib:Monster_GetCustomVarInt(self, fts_atk_flag[2]) == 0) then  
        lualib:Monster_SpellTarget(self, fts_skill_id["梵天僧魔攻上升"], self)  
    end  

    if (hp_mul > fts_atk_onhp[1]["min"]) and (hp_mul < fts_atk_onhp[1]["max"]) and (lualib:Monster_GetCustomVarInt(self, fts_atk_flag[1]) == 0) then  
        lualib:Monster_SpellTarget(self, fts_skill_id["梵天僧攻速上升"], self)  
    end  

    for i = 1, #fts_atk_onhp, 1 do  
        if (hp_mul > fts_atk_onhp[i]["min"]) and (hp_mul <= fts_atk_onhp[i]["max"]) then  
            if lualib:Monster_GetCustomVarInt(self, fts_atk_flag[i]) == 0 then  
                disAllTimer(self)  
                lualib:AddTimer(self, fts_atk_timerid[i], fts_atk_time[i], -1, "atk_on_hp")  
                lualib:Monster_SetCustomVarInt(self, fts_atk_flag[i], 1)  
            end  
        end  
    end  
end
<上一篇:受攻击时回调（扩展）下一篇:命中计算回调>
on_calc_hit
命中计算回调

更新时间：2023-09-01 00:00:00
此函数为命中计算回调。

系统级回调，不需要手动添加触发器。

参考 eTriggerType

note_icon 备注
需要先将全局表字段“是否开启脚本计算命中”设置为是。

上述选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置中的杂项区域。

语法
Luacopy 复制
on_calc_hit(
    attacker,
    target,
    skill_id,
    is_hit
)

参数
attacker

string

 
攻击者的GUID

target

string

 
被攻击者的GUID

skill_id

uint16

 
技能ID

is_hit

bool

 
引擎计算的是否命中

返回值
bool

 
true命中

false未命中

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数is_hit

示例代码
Luacopy 复制
lualib:AddTrigger("0", 409, "on_calc_hit")

function on_calc_hit(attacker, target, skill_id, is_hit)
        lualib:Warn("攻击者GUID:"..attacker)
        lualib:Warn("目标GUID："..target)
        lualib:Warn("技能编号："..skill_id)
        if is_hit then
            lualib:Warn("命中")
        else
            lualib:Warn("未命中")
        end
end
<上一篇:受攻击时回调下一篇:角色抓宠物时回调>
on_catch
角色抓宠物时回调

更新时间：2021-09-07 00:00:00
此函数在角色抓宠物时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_catch(
    strRole,
    strTarget,
    wSkillID
)

参数
strRole

string

 
角色的GUID

strTarget

string

 
宠物的GUID

wSkillID

uint16

 
技能的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_catch(role, target, skill_id)      
    local str = "玩家[" .. lualib:Name(role) .. "]抓到了超级宠物[" .. lualib:Name(target) .. "]"      
    lualib:SysCenterMsg(1, str, "")  
end
<上一篇:命中计算回调下一篇:玩家改变宠物行动状态时回调>
on_change_servant_mode
玩家改变宠物行动状态时回调

更新时间：2023-03-17 00:00:00
此函数在玩家改变宠物行动状态时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_change_servant_mode(
    player,
    mode
)
参数
player

string

 
玩家角色的GUID

mode

uint8

 
宠物的当前行动状态

1休息

0攻击

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 479, "on_change_servant_mode")

function on_change_servant_mode(player,mode)
    lualib:Warn("玩家的guid为"..player)
    if mode==1 then
        lualib:Warn("休息")
    else
         lualib:Warn("攻击")
    end
end

--玩家切换宠物行动状态后，游戏日志中会打印相关内容，如下图所示。

on_change_servant_mode.png
<上一篇:角色抓宠物时回调下一篇:物品、NPC、怪物创建时回调>
on_create
物品、NPC、怪物创建时回调

更新时间：2024-04-03 00:00:00
此函数在物品、NPC、怪物创建时回调。

物品、NPC、怪物如果有挂载脚本，不需要手动添加触发器，会自动调用所挂载脚本里的on_create函数。

对于手动添加的触发函数，只有物品会调用该触发。

参考 eTriggerType

语法
Luacopy 复制
on_create(
    strObject
)

参数
strObject

string

 
对象的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_create(monster)  
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")  
    lualib:AddTimer(monster, 1, EscorterAward.talk_interval * 1000, -1, "on_talk")  
end
<上一篇:玩家改变宠物行动状态时回调下一篇:角色走伤害流程时回调>
on_damage_process
角色走伤害流程时回调

更新时间：2021-09-07 00:00:00
此函数在角色走伤害流程时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_damage_process(
    strRole,
    strTarget,
    wSkillID
)

参数
strRole

string

 
伤害者的GUID

strTarget

string

 
受害者的GUID

wSkillID

uint16

 
伤害技能的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_damage_process(role, target, skill_id)      
    -- role对target施放了ID为skill_id的技能  
end
<上一篇:物品、NPC、怪物创建时回调下一篇:角色挖肉时回调>
on_dig_meat
角色挖肉时回调

更新时间：2021-09-07 00:00:00
此函数在角色挖肉时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_dig_meat(
    strRole,
    strTarget,
    wSkillID
)

参数
strRole

string

 
角色的GUID

strTarget

string

 
怪物的GUID

wSkillID

uint16

 
挖肉技能的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_dig_meat, "on_dig_meat")   
function on_dig_meat(player, monster, skill_id)  
    -- 
end
<上一篇:角色走伤害流程时回调下一篇:获得成就奖励时触发>
on_glory_award
获得成就奖励时触发

更新时间：2025-09-10 17:14:00
此函数获得成就奖励时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
lualib:on_glory_award(
    strPlayer,
    strItems
)
参数
strPlayer

string

 
玩家guid

strItems

string

 
奖励物品

为JSON字符串格式，可反序列化为table格式。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 484, "on_glory_award")
function on_glory_award(player, strItems)
    lualib:Warn("获得成就奖励成功触发")
    lualib:Warn("奖励物品："..strItems)
end

--客户端玩家加入行会后领取成就奖励，触发器中的打印在后台显示

on_glory_award.png

--客户端包裹中新增成就奖励物品和奖励货币以及经验，说明成功领取奖励

on_glory_award_2.png

--后台成功打印触发器中的内容

on_glory_award_3.png
<上一篇:角色挖肉时回调下一篇:杀死角色时回调>
on_kill
杀死角色时回调

更新时间：2025-01-07 00:00:00
此函数在杀死角色时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_kill(
    strKiller,
    strRole,
    skill_id
)

参数
strKiller

string

 
杀手的GUID

strRole

string

 
受害者的GUID

skill_id

UINT16

 
使用的技能ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数skill_id

示例代码
Luacopy 复制
lualib:AddTrigger("0",  lua_trigger_kill, "on_kill")

function on_kill(killer, victim, skill_id)
    lualib:Warn("杀手的GUID:"..killer)
    lualib:Warn("受害者的GUID:"..victim)
    lualib:Warn("使用的技能ID:"..skill_id)
end

function post_apply(player,skill_id,target_x,target_y,target_list)
    lualib:Warn("技能ID"..skill_id)
end

--在杀死角色时回调触发器上新增技能ID参数，让一名角色使用技能杀死另一名角色，看是否能正常接收到杀死角色时的技能ID。

--此示例代码运行成功如下图所示，杀死角色时的技能ID能被正常接收。

on_kill.png

on_kill_2.png
<上一篇:获得成就奖励时触发下一篇:角色升级时回调>
on_level_up
角色升级时回调

更新时间：2021-09-07 00:00:00
此函数在角色升级时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_level_up(
    strRole,
    iLevel
)

参数
strRole

string

 
角色的GUID

iLevel

int32

 
角色现在的等级

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",  lua_trigger_level_up, "on_level_up")  
       
function on_level_up(player, level)  
    --省略部分代码  
    if tonumber(level) >= 30 then  
    local msg = "恭喜"  
    msg = msg.."「 "..lualib:KeyName(player).." 」 "  
    msg = msg.. "顺利达到"..tonumber(level).."级!!!"  
    lualib:SysMsg_SendBroadcastMsg("恭喜天藏英雄#OFFSET<x:1,y:0>##COLORCOLOR_GOLD#"..lualib:Name(player).."#COLOREND##OFFSET<x:2,y:0>#顺利达到"..tonumber(level).."级!!!!", "[系统告知]")</x:2,y:0></x:1,y:0>  
    <x:1,y:0><x:2,y:0>  

    lualib:SysMsg_SendTopMsg(1, msg)  

    lualib:SysMsg_SendCenterMsg(1, msg,"")  

    end  

    --省略部分代码  

    end  


</x:2,y:0></x:1,y:0>  
 
<上一篇:杀死角色时回调下一篇:玩家在商城消费时回调>
on_mall
玩家在商城消费时回调

更新时间：2021-09-07 00:00:00
此函数为玩家在商城消费时的回调函数。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_mall(
    strPlayer,
    iCostMoney,
    CostType,
    strItem
)

参数
strPlayer

string

 
玩家的GUID

iCostMoney

int32

 
当次消费的货币数量

CostType

int32

 
消费货币类型

0元宝

1绑定元宝

2积分

3金币

4绑定金币

strItem

string

 
购买物品的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_trigger_mall(player, yb, bind, item)          
    --省略部分代码            
    lualib:SysMsg_SendWarnMsg(player, "你在商城消费了"..yb.."元宝")          
    --省略部分代码        
end
<上一篇:角色升级时回调下一篇:角色挖矿时回调>
on_mining
角色挖矿时回调

更新时间：2022-05-05 00:00:00
此函数在角色挖矿时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_mining(
    strRole,
    strMapKey,
    wSkillID,
    strSkillName,
    wX,
    wY
)

参数
strRole

string

 
角色的GUID

strMapKey

string

 
挖矿地图的索引名（KeyName）

wSkillID

uint16

 
挖矿技能的ID

strSkillName

string

 
挖矿技能的名称（Name）

wX

uint16

 
施放挖矿技能的X坐标

wY

uint16

 
施放挖矿技能的Y坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_mining, "on_mining") --给角色添加触发器

function on_mining(strRole, strMapKey, wSkillID, strSkillName, wX, wY)
    lualib:SysMsg_SendWarnMsg(strRole, "strMapKey = "..strMapKey) --打印挖矿地图的关键字索引
end

--此示例代码运行成功如下图所示。

on_mining.png
<上一篇:玩家在商城消费时回调下一篇:角色移动时回调>
on_move
角色移动时回调

更新时间：2021-09-07 00:00:00
此函数在角色移动时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_move(
    strRole,
    wX,
    wY,
    wType
)

参数
strRole

string

 
角色的GUID

wX

uint16

 
移动的X坐标

wY

uint16

 
移动的Y坐标

wType

uint8

 
移动类型

0走

1跑

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_move(monster, x_ex, y_ex)
    x_ex = tonumber(x_ex)
    y_ex = tonumber(y_ex)
    local map = lualib:MapGuid(monster)
    local npcs = lualib:Map_GetRegionNpcs(map, x_ex, y_ex, 1, "宝箱幻影")
    local players = lualib:Map_GetRegionPlayers(map, x_ex, y_ex, 1, false)
    if #players >=1 then
        for _, v in pairs(players) do
            lualib:Map_JumpRnd(map, v)
        end
    end

    if #npcs ~= 0 then
        for _, u in pairs(npcs) do
            if lualib:X(u) == lualib:GetInt(monster, "fixed_x") or lualib:Y(u) == lualib:GetInt(monster, "fixed_y") then
                lualib:Npc_Remove(u)
                lualib:SetInt(map, "box_eaten", lualib:GetInt(map, "box_eaten") + 1)
                lualib:SysMsg_SendMapMsg(map, "一个宝箱真元被狼妖吞吃了, 勇士们加把劲啊!")
            end
        end
    end
end
s
<上一篇:角色挖矿时回调下一篇:玩家改名回调>
on_player_change_name
玩家改名回调

更新时间：2021-09-07 00:00:00
此函数在玩家改名时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_player_change_name(
    strPlayer,
    result,
    newName
)

参数
strPlayer

string

 
玩家角色的GUID

result

uint8

 
改名结果

0改名成功

1名字重复失败

newName

string

 
玩家的新角色名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

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


--若要修改的新角色名与玩家原本的角色名一致，则会改名失败。

Player_ChangeName_5.png

--若要修改的新角色名存在重名问题时，则会提示“角色名已存在”。

Player_ChangeName_6.png
<上一篇:角色移动时回调下一篇:玩家聊天时触发>
on_player_chat
玩家聊天时触发

更新时间：2021-09-07 00:00:00
此函数在玩家聊天时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_player_chat(
    player_guid,
    channel,
    message,
    target_guid
)
参数
player_guid

string

 
玩家角色的GUID

channel

uint8

 
聊天频道

1当前频道

2组队频道

3行会频道

4地图频道

5点对点聊天

6私聊频道

7小喇叭

8联盟

9阵营

10MOBA房间

11MOBA阵营

12全服频道

message

string

 
玩家的聊天信息

target_guid

string

 
目标玩家角色的GUID

note_icon 备注
此参数仅在私聊频道和点对点聊天中有具体数值，在其余频道中均为空值（""）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数target_guid

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_player_chat , "on_player_chat")

function on_player_chat(player_guid, channel, message,target_guid)
    local channel_type = {"当前频道", "组队频道", "行会频道", "地图频道", "点对点聊天", "私聊", "小喇叭", "联盟", "阵营", "moba房间", "moba阵营", "全服频道"}
    if target_guid == "" then
        lualib:Warn(channel_type[channel].." 中target_guid的值为空")
    else
        lualib:Warn(channel_type[channel].." 中target_guid的值为"..target_guid)
        lualib:Warn("目标名字为"..lualib:Name(target_guid)) --将目标玩家角色的GUID转化为目标玩家角色的名字
    end
    lualib:Warn("玩家 " .. lualib:Name(player_guid) .. " 在 " .. channel_type[channel] .. " 对 "..lualib:Name(target_guid).." 发言：" .. message)
end

--此示例代码运行成功如下图所示。

on_player_chat_4.png

on_player_chat_5.png

on_player_chat_6.png
<上一篇:玩家改名回调下一篇:玩家PK值改变后触发>
on_player_pk_change
玩家PK值改变后触发

更新时间：2025-05-06 00:00:00
此函数玩家PK值改变后触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
lualib:on_player_pk_change(
    player_guid,
    old_pk_value,
    new_pk_value
)
参数
player_guid

string

 
玩家guid

old_pk_value

UINT32

 
玩家改变前的PK值

new_pk_value

UINT32

 
玩家改变后的PK值

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_on_player_pk_change, "on_player_pk_change")  -- 玩家PK值改变后触发
function on_player_pk_change(player_guid,old_pk_value,new_pk_value)
    lualib:Warn("玩家的GUID为："..player_guid)
    lualib:Warn("玩家的PK值改变前为："..old_pk_value)
    lualib:Warn("玩家的PK值改变后为："..new_pk_value)
end

--改变玩家PK值后，示例代码被执行，结果如图所示。
on_player_pk_change.png
<上一篇:玩家聊天时触发下一篇:玩家发小喇叭时触发>
on_player_use_speaker
玩家发小喇叭时触发

更新时间：2026-02-13 19:38:00
此函数在玩家发小喇叭时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_player_use_speaker(
    player_guid,
    message
)

参数
player_guid

string

 
玩家GUID

message

string

 
小喇叭内容

返回值
INT32

 
发送范围控制

1只发给自己

0发给所有人（默认）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 注册触发器
lualib:AddTrigger("0", lua_trigger_on_player_use_speaker, "on_player_use_speaker")
function on_player_use_speaker(player,message)
    lualib:Warn("player:"..player)
    lualib:Warn("message:"..message)
    return 1
end

--执行示例代码，结果如图所示。
on_player_use_speaker.png
on_player_use_speaker_2.png
<上一篇:玩家PK值改变后触发下一篇:角色死亡时回调>
on_post_die
角色死亡时回调

更新时间：2021-09-07 00:00:00
此函数在角色死亡时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_die(
    strRole,
    strKiller
)

参数
strRole

string

 
角色的GUID

strKiller

string

 
杀手的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_post_die(monster, killer)        
    local mapguid = lualib:MapGuid(monster)        
    local keyname = lualib:KeyName(monster)        
    if keyname == "秘境破坏者8" or keyname == "封印破坏者8" then        
        lualib:SysMsg_SendMapMsg(mapguid, "恭喜你打败了破坏者的BOSS，赶快到[坐标：66.36]处点击副本内的翻牌NPC获取奖励！")        
        for k, v in pairs(left_monster) do        
            lualib:Map_ClearMonster(mapguid, 55, 55, 200, v, true, true)        
        end        
    lualib:Map_GenNpc(mapguid, "秘境守护者场内", 66, 36, 2, 4)        
    end  --死亡的时候清除掉触发器        
    lualib:ClearTrigger(monster)        
end
<上一篇:玩家发小喇叭时触发下一篇:角色爆某个具体的道具时回调>
on_post_drop_one
角色爆某个具体的道具时回调

更新时间：2021-09-07 00:00:00
此函数在角色爆某个具体的道具时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_drop_one(
    strMap,
    strRole,
    strItem,
    wItemID
)

参数
strMap

string

 
角色地图的GUID

strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

uint16

 
道具的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_post_drop_one(map, role, item, item_id)      
    local str = lualib:Name(role).."在"..lualib:Name(map).."("..lualib:X(role)..","..lualib:Y(role)..")爆出了["..lualib:Name(item).."]"      
    lualib:SysMsg_SendBroadcastMsg(str, "")  
end
<上一篇:角色死亡时回调下一篇:角色爆道具时回调>
on_post_drop
角色爆道具时回调

更新时间：2022-02-10 00:00:00
此函数在角色爆道具时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_drop(
    strRole,
    item_guid
)

参数
strRole

string

 
角色的GUID

item_guid

string

 
掉落物品的GUID列表

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

v1.1

 
新增参数item_guid掉落物品的GUID列表

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_post_drop, "on_post_drop")

function on_post_drop(strRole, item_guid)
    local t = json.decode(item_guid)
    for i = 1, #t do
        lualib:Warn(lualib:Name(strRole).." 爆出了 "..lualib:Name(t[i]))
    end
end

--此示例代码运行成功如下图所示。

on_post_drop.png

on_post_drop_2.png
<上一篇:角色爆某个具体的道具时回调下一篇:角色挖矿获得物品时回调>
on_post_mining_drop
角色挖矿获得物品时回调

更新时间：2021-09-24 00:00:00
此函数在角色挖矿获得物品时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_mining_drop(
    player_guid,
    item_guid,
    template_id,
    amount
)
参数
player_guid

string

 
角色的GUID

item_guid

string

 
物品的GUID

若掉落物品为金币，则物品的GUID为0。

template_id

uint16

 
上架物品的模板ID

amount

int32

 
获得物品的数量（一般指堆叠数量）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, 458, "on_pre_mining_drop")
lualib:AddTrigger(player, 459, "on_post_mining_drop")

function on_pre_mining_drop(player, template, amount)
    lualib:SysMsg_SendWarnMsg(player, "即将获得的物品模板id："..template.."   数量："..amount)
    return amount
end

function on_post_mining_drop(player, item, template, amount)
    lualib:SysMsg_SendWarnMsg(player, "已经获得的物品："..lualib:Name(item).."   模板id："..template.."   数量："..amount)
end

--此示例代码运行成功如下图所示。

on_pre_mining_drop.png
<上一篇:角色爆道具时回调下一篇:玩家死亡时回调>
on_post_player_die
玩家死亡时回调

更新时间：2021-09-07 00:00:00
此函数在玩家死亡时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_player_die(
    strPlayer,
    strKiller
)

参数
strPlayer

string

 
玩家的GUID

strKiller

string

 
杀手的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_post_player_die(player, killer)      
    print("玩家"..lualib:Name(player).."被"..lualib:Name(killer).."杀死")  
end
<上一篇:角色挖矿获得物品时回调下一篇:角色处理PK值时回调>
on_post_process_pk
角色处理PK值时回调

更新时间：2021-09-07 00:00:00
此函数在角色处理PK值时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_process_pk(
    strKiller,
    strVictim,
    iPKRef
)

参数
strKiller

string

 
杀手的GUID

strVictim

string

 
受害者的GUID

iPKRef

int32

 
得到的PK值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_post_process_pk(killer, victim, pk)      
    lualib:SysMsg_SendBroadcastMsg(lualib:Name(killer).."杀死了"..lualib:Name(victim).."得到"..pk.."点PK值", "")  
end
<上一篇:玩家死亡时回调下一篇:玩家上马后回调>
on_post_ride
玩家上马后回调

更新时间：2021-09-07 00:00:00
此函数在玩家上马后回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_ride(
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
lualib:AddTrigger("0", 454, "on_post_ride")

function on_post_ride(player)
    lualib:SysWarnMsg(player, "上马触发")
end

--此示例代码运行成功如下图所示。

on_post_ride.png
<上一篇:角色处理PK值时回调下一篇:玩家下马后回调>
on_post_unride
玩家下马后回调

更新时间：2021-09-07 00:00:00
此函数在玩家下马后回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_unride(
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
lualib:AddTrigger("0", 455, "on_post_unride")

function on_post_unride(player)
    lualib:SysWarnMsg(player, "下马触发")
end

--此示例代码运行成功如下图所示。

on_post_unride.png
<上一篇:玩家上马后回调下一篇:角色杀怪得到经验前回调>
on_pre_add_exp
角色杀怪得到经验前回调

更新时间：2025-12-12 18:39:00
此函数在角色杀怪得到经验前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_add_exp(
    strRole,
    iExp,
    strMonsterKeyName
)
参数
strRole

string

 
角色的GUID

iExp

int64

 
得到的经验值

strMonsterKeyName

string

 
怪物的KeyName

返回值
int64

 
返回新的经验值，可以修改角色获得的经验，返回负值或0则不加经验。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--开启全局表字段“是否使用角色杀怪获取经验之前回调”
lualib:AddTrigger("0", lua_trigger_pre_add_exp, "on_pre_add_exp") --角色杀怪获取经验之前回调

function on_pre_add_exp(role,exp,KeyName)
    lualib:SysMsg_SendBroadcastMsg("杀怪物获得经验："..exp, "")
    return exp
end 

--此示例代码运行成功如下图所示，经验值正常。

on_pre_add_exp.png

--返回值-1或者0不增加经验值。

on_pre_add_exp_2.png
<上一篇:玩家下马后回调下一篇:攻击者受到伤害即将损血前回调>
on_pre_attacker_harm
攻击者受到伤害即将损血前回调

更新时间：2021-12-07 00:00:00
此函数当攻击者受到伤害（例如被攻击者有反伤属性）即将损血前回调此接口。

参考 eTriggerType

caution_icon警告
注意返回正负数的区别。

如果系统、地图、角色分别都使用了这类触发器，生效顺序依次为系统、地图、角色。

语法
Luacopy 复制
on_pre_attacker_harm(
    strRole,
    strAttacker,
    iHp,
    strKillKey
)

参数
strRole

string

 
被攻击者的GUID

例如：玩家、怪物、英雄

strAttacker

string

 
攻击者的GUID

例如：玩家、怪物、英雄

iHp

int

 
攻击者血量的变化量（必为负数）

strKillKey

string

 
本次攻击所使用技能的索引名（KeyName）

返回值
int

 
攻击者的血量的变化量

若返回负数，则表示损血；若返回正数，则表示补血。

攻击者血量的变化量为整数，其数值与损/补的血量相对应。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:角色杀怪得到经验前回调下一篇:角色抓宠物之前回调>
on_pre_catch
角色抓宠物之前回调

更新时间：2021-09-07 00:00:00
此函数在角色抓宠物之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_catch(
    strRole,
    strTarget,
    wSkillID
)

参数
strRole

string

 
角色的GUID

strTarget

string

 
宠物的GUID

wSkillID

uint16

 
技能的ID

返回值
bool

 true = 允许角色捉宠物, false = 阻止角色捉宠物
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_catch(role, target, skill_id)      
    local master = lualib:Monster_GetMaster(target)      
    if master == "" then          
        return true      
    else          
        lualib:SysWarnMsg(player, "该BB已有主, 不能捕捉")          
    return false      
    end  
end
<上一篇:攻击者受到伤害即将损血前回调下一篇:玩家的武器被诅咒前回调>
on_pre_curse
玩家的武器被诅咒前回调

更新时间：2021-09-07 00:00:00
此函数当玩家的武器被诅咒之前回调此接口。

参考 eTriggerType

note_icon 备注
武器被诅咒是有概率的，所有并不是每次杀死目标都会触发。

语法
Luacopy 复制
on_pre_curse(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
bool

 
true允许武器被诅咒。

false阻止武器被诅咒。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_curse(player)      
    if xxx then          
        return false  --不诅咒      
    end      
    return true  --诅咒  
end
<上一篇:角色抓宠物之前回调下一篇:角色死亡之前回调>
on_pre_die
角色死亡之前回调

更新时间：2021-09-07 00:00:00
此函数在角色死亡之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_die(
    strRole,
    strKiller
)

参数
strRole

string

 
角色的GUID

strKiller

string

 
杀手的GUID

返回值
bool

 
true允许角色死亡

false阻止角色死亡

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(monster, lua_trigger_pre_die, "on_pre_die")  

function on_pre_die(monster, killer)  
    lualib:Debug("深渊奴仆on_pre_die")  
    CMonster:PreDie(monster, killer)  
    CMonster:ClearTimer(monster)  
    CMonster:ClearTrigger(monster)  
    return true  
end
<上一篇:玩家的武器被诅咒前回调下一篇:角色挖肉之前回调>
on_pre_dig_meat
角色挖肉之前回调

更新时间：2021-09-07 00:00:00
此函数在角色挖肉之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_dig_meat(
    strRole,
    strTarget,
    wSkillID
)

参数
strRole

string

 
角色的GUID

strTarget

string

 
怪物的GUID

wSkillID

uint16

 
挖肉技能的ID

返回值
bool

 
true允许角色挖肉。

false阻止角色挖肉。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_dig_meat(role, target, skill_id)      
    local map = lualib:MapGuid(role)      
    if lualib:KeyName(map) == "龙城" then          
        lualib:SysWarnMsg(role, "该地图不能挖肉")          
        return false      
    end      
    return true  
end
<上一篇:角色死亡之前回调下一篇:角色爆某个具体的道具之前回调>
on_pre_drop_one
角色爆某个具体的道具之前回调

更新时间：2022-07-18 00:00:00
此函数在角色爆某个具体的道具之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_drop_one(
    strMap,
    strRole,
    strItem,
    wItemID,
    index
)

参数
strMap

string

 
角色所在地图的GUID

strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

uint16

 
道具的ID

index

string

 
掉落索引

note_icon 备注
此参数对应的内容请参考游戏工具平台→游戏配置→怪物→怪物模板表→产出1中的掉落索引1字段。

只有怪物掉落的物品才有掉落索引，否则此参数为空。

返回值
bool

 
true允许角色爆装备

false阻止角色爆装备

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数index掉落索引

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_pre_drop_one, "on_pre_drop_one")

function on_pre_drop_one(strMap, strRole, strItem, wItemID, index)
   lualib:Warn(lualib:Name(strRole).." 在地图 "..lualib:Name(strMap).." 爆出装备 "..wItemID.." "..lualib:Name(strItem).." 掉落索引 "..index)
   return true
end

--此示例代码运行成功如下图所示（玩家击败怪物巨魔后爆出物品）。

on_pre_drop_one.png
<上一篇:角色挖肉之前回调下一篇:角色爆道具之前回调>
on_pre_drop
角色爆道具之前回调

更新时间：2021-09-07 00:00:00
此函数在角色爆道具之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_drop(
    strRole
)

参数
strRole

string

 
角色的GUID

返回值
bool

 
true允许角色爆装备

false阻止角色爆装备

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_drop(role)      
    local map = lualib:MapGuid(role)      
    if lualib:KeyName(map) == "龙城"then          
        print("该地图不爆道具")          
        return false      
    end            
    return true  
end
<上一篇:角色爆某个具体的道具之前回调下一篇:被攻击者受到伤害即将损血或损蓝前回调>
on_pre_harm_ex
被攻击者受到伤害即将损血或损蓝前回调

更新时间：2023-10-08 00:00:00
此函数在被攻击者受到伤害即将损血或损蓝前，回调此接口。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数对应游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项中的“使用新的角色受伤害前触发”字段。

当此字段设置为“是”时，则回调此函数；当此字段设置为“否”时，则回调函数on_pre_harm。

on_pre_harm_2.png
caution_icon警告
注意返回正负数的区别。

如果系统、地图、角色分别都使用了这类触发器，生效顺序依次为系统、地图、角色。

语法
Luacopy 复制
on_pre_harm_ex(
    strRole,
    strAttacker,
    iHp,
    iMp,
    iDefense,
    strKillKey,
    IsBurst,
    lucky_type,
    isBreakDef
)
参数
strRole

string

 
被攻击者的GUID

例如：玩家、怪物、英雄

strAttacker

string

 
攻击者的GUID

例如：玩家、怪物、英雄

iHp

int

 
被攻击者血量的变化量

iMp

int

 
被攻击者蓝量的变化量

note_icon 备注
参数iHp和参数iMp中至少有一个参数为负数。

iDefense

int

 
本次攻击被攻击者发挥出的防御值（必为正数）

strKillKey

string

 
本次攻击所使用的技能的索引名（KeyName）

IsBurst

uint8

 
本次攻击是否为暴击

1是

0否

lucky_type

int

 
幸运的类型

0普通

1诅咒

2幸运

isBreakDef

bool

 
是否破防

true是

false否

返回值
table

 
被攻击者的血/蓝量的变化量，存储在lua表中。

返回的table格式为{被攻击者血量的变化量,被攻击者蓝量的变化量}。

若返回负数，则表示损血/蓝；若返回正数，则表示补血/蓝。

被攻击者血量的变化量和被攻击者蓝量的变化量均为整数，其数值与损/补的血/蓝量相对应。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数lucky_type幸运的类型

 
v1.2

 
新增参数isBreakDef是否破防

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_role_pre_harm_ex , "on_pre_harm_ex")

function on_pre_harm_ex(strRole, strAttacker, iHp, iMp, iDefense, strKillKey, IsBurst, lucky_type, isbreakdef)
    local luckyType = {[0] = "普通", "诅咒", "幸运"}
    lualib:SysMsg_SendWarnMsg(strRole, "攻击者为："..lualib:Name(strAttacker))
    lualib:SysMsg_SendWarnMsg(strRole, "血量变化："..iHp)
    lualib:SysMsg_SendWarnMsg(strRole, "蓝量变化："..iMp)
    lualib:SysMsg_SendWarnMsg(strRole, "防御值："..iDefense)
    lualib:SysMsg_SendWarnMsg(strRole, "技能："..strKillKey)
    if IsBurst == 1 then
      lualib:SysMsg_SendWarnMsg(strRole, "暴击！")
    else
      lualib:SysMsg_SendWarnMsg(strRole, "无暴击！")
    end
    lualib:SysMsg_SendWarnMsg(strRole, "幸运类型："..luckyType[lucky_type])
    if isbreakdef then
      lualib:SysMsg_SendWarnMsg(strRole, "破防了")
      lualib:SysMsg_SendWarnMsg(strRole, "我的防御值为"..iDefense)
      lualib:SysMsg_SendWarnMsg(strRole, "攻击血量为"..iHp)
    else
      lualib:SysMsg_SendWarnMsg(strRole, "未破防")
      lualib:SysMsg_SendWarnMsg(strRole, "我的防御值为"..iDefense)
      lualib:SysMsg_SendWarnMsg(strRole, "攻击血量为"..iHp)
    end
    return {iHp, iMp}
end

--此示例代码运行成功如下图所示。

on_pre_harm_ex_2.png
<上一篇:角色爆道具之前回调下一篇:被攻击者受到伤害即将损血前回调>
on_pre_harm
被攻击者受到伤害即将损血前回调

更新时间：2023-10-08 00:00:00
此函数在被攻击者受到伤害即将损血前，回调此接口。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数对应游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项中的“使用新的角色受伤害前触发”字段。

当此字段设置为“是”时，则回调函数on_pre_harm_ex；当此字段设置为“否”时，则回调此函数。

on_pre_harm_2.png
caution_icon警告
注意返回正负数的区别。

如果系统、地图、角色分别都使用了这类触发器，生效顺序依次为系统、地图、角色。

语法
Luacopy 复制
on_pre_harm(
    strRole,
    strAttacker,
    iHp,
    iDefense,
    strKillKey,
    IsBurst,
    lucky_type,
    isBreakDef
)

参数
strRole

string

 
被攻击者的GUID

例如：玩家、怪物、英雄

strAttacker

string

 
攻击者的GUID

例如：玩家、怪物、英雄

iHp

int

 
被攻击者血量的变化量（必为负数）

iDefense

int

 
本次攻击被攻击者发挥出的防御值（必为正数）

strKillKey

string

 
本次攻击所使用的技能的索引名（KeyName）

IsBurst

int

 
本次攻击是否为暴击

1是

0否

lucky_type

int

 
幸运的类型

0普通

1诅咒

2幸运

isBreakDef

bool

 
是否破防

true是

false否

返回值
int

 
被攻击者的血量的变化量

若返回负数，则表示损血；若返回正数，则表示补血。

被攻击者血量的变化量为整数，其数值与损/补的血量相对应。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数lucky_type幸运的类型

 
v1.2

 
新增参数isBreakDef是否破防

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_role_pre_harm, "on_pre_harm")

function on_pre_harm(strRole, strAttacker, iHp, iDefense, strKillKey, IsBurst, lucky_type, isbreakdef)
    local luckyType = {[0] = "普通", "诅咒", "幸运"}
    lualib:SysMsg_SendWarnMsg(strRole, "攻击者为："..lualib:Name(strAttacker))
    lualib:SysMsg_SendWarnMsg(strRole, "血量变化："..iHp)
    lualib:SysMsg_SendWarnMsg(strRole, "防御值："..iDefense)
    lualib:SysMsg_SendWarnMsg(strRole, "技能："..strKillKey)
    if IsBurst == 1 then
        lualib:SysMsg_SendWarnMsg(strRole, "暴击！")
    else
        lualib:SysMsg_SendWarnMsg(strRole, "无暴击！")
    end
    lualib:SysMsg_SendWarnMsg(strRole, "幸运类型："..luckyType[lucky_type])
    if isbreakdef then
        lualib:SysMsg_SendWarnMsg(strRole, "破防了")
        lualib:SysMsg_SendWarnMsg(strRole, "我的防御值为"..iDefense)
        lualib:SysMsg_SendWarnMsg(strRole, "攻击血量为"..iHp)
    else
        lualib:SysMsg_SendWarnMsg(strRole, "未破防") 
        lualib:SysMsg_SendWarnMsg(strRole, "我的防御值为"..iDefense)
        lualib:SysMsg_SendWarnMsg(strRole, "攻击血量为"..iHp)
    end
    return iHp
end

--此示例代码运行成功如下图所示。

on_pre_harm.png
<上一篇:被攻击者受到伤害即将损血或损蓝前回调下一篇:玩家邀请组队前触发>
on_pre_invite_team
玩家邀请组队前触发

更新时间：2021-09-07 00:00:00
此函数在玩家邀请组队前触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_invite_team(
    player_guid,
    invite_guid
)
参数
player_guid

string

 
玩家角色的GUID

invite_guid

string

 
被邀请的玩家角色的GUID

返回值
bool

 
是否允许邀请组队

true允许邀请组队

false不允许邀请组队

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_pre_invite_team , "on_pre_invite_team")
function on_pre_invite_team(player_guid, invite_guid)
    if lualib:RemoveTrigger(player_guid, lua_trigger_pre_invite_team , "on_pre_invite_team") then
        lualib:Warn("玩家 " .. lualib:Name(player_guid) .. "正在尝试邀请 " .. lualib:Name(invite_guid))
        return true
    end
end

--此示例代码运行成功如下图所示。

on_pre_invite_team.png

on_pre_invite_team_2.png
<上一篇:被攻击者受到伤害即将损血前回调下一篇:角色升级前回调>
on_pre_level_up
角色升级前回调

更新时间：2021-09-07 00:00:00
此函数在角色升级前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_level_up(
    strRole,
    iLevel
)

参数
strRole

string

 
角色的GUID

iLevel

int32

 
角色现在的等级

返回值
bool

 
true角色正常升级。

false角色不升级，经验不扣。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家邀请组队前触发下一篇:玩家在商城消费之前回调>
on_pre_mall
玩家在商城消费之前回调

更新时间：2022-06-13 00:00:00
此函数在玩家在商城消费之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_mall(
    strPlayer,
    strItemKey,
    iNum,
    iPrice,
    byBind
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
道具的索引名（KeyName）

iNum

int32

 
购买数量

iPrice

int32

 
购买单价

type

uint8

 
消费货币类型

0元宝

1绑定元宝

2积分

3金币

4绑定金币

返回值
bool

 
true允许玩家购买

false阻止玩家购买

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_pre_mall, "on_pre_mall") --玩家在商城消费之前回调

function on_pre_mall(player, item_key, num, price, type)
    lualib:Warn("玩家："..lualib:Name(player))
    lualib:Warn("道具的索引名："..item_key)
    lualib:Warn("购买数量："..num)
    lualib:Warn("购买单价："..price)
    lualib:Warn("消费类型："..type)

    return true --允许玩家购买
end

--此示例代码运行成功如下图所示。

on_pre_mall.png
<上一篇:角色升级前回调下一篇:玩家在寄售行购买之前回调>
on_pre_market_buy
玩家在寄售行购买之前回调

更新时间：2021-09-07 00:00:00
此函数在玩家在寄售行购买之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_market_buy(
    strBuyer,
    strSeller,
    strItem,
    iAmount,
    iPrice,
    iMoneyType
)

参数
strBuyer

string

 
买家的GUID

strSeller

string

 
卖家的GUID

strItem

string

 
物品的GUID

iAmount

int32

 
购买总数量

iPrice

int32

 
购买总价

iMoneyType

int32

 
货币类型

0金币

1元宝

2积分

返回值
bool

 
true允许玩家购买

false阻止玩家购买

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家在商城消费之前回调下一篇:玩家在寄售行发布收购之前回调>
on_pre_market_delegate_buy
玩家在寄售行发布收购之前回调

更新时间：2022-06-09 00:00:00
此函数在玩家在寄售行发布收购之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_market_delegate_buy(
    strPlayer,
    strItemKey,
    iCount,
    iPrice,
    iMoneyType
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
要收购道具的索引名（KeyName）

iCount

int32

 
要收购道具的数量

iPrice

int32

 
收购单价

iMoneyType

int32

 
收购货币类型

0金币

1元宝

2积分

返回值
bool

 
true允许玩家收购

false阻止玩家收购

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 470, "on_pre_market_delegate_buy")

function on_pre_market_delegate_buy(player, item_key, count, price, type)
    local money = {[0] = "金币", "元宝", "积分"}
    lualib:Warn("player = "..lualib:Name(player))
    lualib:Warn("key = "..item_key)
    lualib:Warn("count = "..count)
    lualib:Warn("price = "..price)
    lualib:Warn("type = "..money[type])
    
    return true --允许玩家收购
end

--当返回值为true时，允许玩家收购物品并可进行交易，示例效果如下图所示。

on_pre_market_delegate_buy.png

on_pre_market_delegate_buy_2.png
on_pre_market_delegate_buy_3.png

--当返回值为false时，会组织玩家收购物品并提示交易失败，示例效果如下图所示。

on_pre_market_delegate_buy.png
on_pre_market_delegate_buy_4.png
on_pre_market_delegate_buy_5.png
<上一篇:玩家在寄售行购买之前回调下一篇:玩家在寄售行寄售之前回调>
on_pre_market_delegate_sell
玩家在寄售行寄售之前回调

更新时间：2023-03-17 00:00:00
此函数在玩家在寄售行寄售之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_market_delegate_sell(
    strPlayer,
    strItemKey,
    iNum,
    iPrice,
    iMoneyType
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
道具的索引名（KeyName）

iNum

int32

 
寄售数量

iPrice

int32

 
寄售单价

iMoneyType

int32

 
寄售货币类型

0金币

1元宝

2积分

item_guid

string

 
寄售物品的GUID

返回值
bool

 
true允许玩家寄售

false阻止玩家寄售

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数item_guid寄售物品的GUID

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家在寄售行发布收购之前回调下一篇:玩家在寄售行出售之前回调>
on_pre_market_sell
玩家在寄售行出售之前回调

更新时间：2021-09-07 00:00:00
此函数在玩家在寄售行出售之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_market_sell(
    strSeller,
    strBuyer,
    strItem,
    iAmount,
    iPrice,
    iMoneyType
)

参数
strSeller

string

 
卖家的GUID

strBuyer

string

 
买家的GUID

strItem

string

 
物品的GUID

iAmount

int32

 
出售总数量

iPrice

int32

 
出售总价

iMoneyType

int32

 
货币类型

0金币

1元宝

2积分

返回值
bool

 
true允许玩家出售

false阻止玩家出售

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家在寄售行寄售之前回调下一篇:角色挖矿获得物品前回调>
on_pre_mining_drop
角色挖矿获得物品前回调

更新时间：2021-09-24 00:00:00
此函数在角色挖矿获得物品前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_mining_drop(
    player_guid,
    template_id,
    amount
)
参数
player_guid

string

 
角色的GUID

template_id

uint16

 
上架物品的模板ID

amount

int32

 
获得物品的数量（一般指堆叠数量）

返回值
int32

 
掉落物品的数量

返回0则代表不掉落物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, 458, "on_pre_mining_drop")
lualib:AddTrigger(player, 459, "on_post_mining_drop")

function on_pre_mining_drop(player, template, amount)
    lualib:SysMsg_SendWarnMsg(player, "即将获得的物品模板id："..template.."   数量："..amount)
    return amount
end

function on_post_mining_drop(player, item, template, amount)
    lualib:SysMsg_SendWarnMsg(player, "已经获得的物品："..lualib:Name(item).."   模板id："..template.."   数量："..amount)
end

--此示例代码运行成功如下图所示。

on_pre_mining_drop.png
<上一篇:玩家在寄售行出售之前回调下一篇:角色挖矿前回调>
on_pre_mining
角色挖矿前回调

更新时间：2022-05-05 00:00:00
此函数在角色挖矿前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_mining(
    strRole,
    strMapKey,
    wSkillID,
    strSkillName,
    wX,
    wY
)

参数
strRole

string

 
角色的GUID

strMapKey

string

 
挖矿地图的索引名（KeyName）

wSkillID

uint16

 
挖矿技能的ID

strSkillName

string

 
挖矿技能的名称（Name）

wX

uint16

 
施放挖矿技能的X坐标

wY

uint16

 
施放挖矿技能的Y坐标

返回值
bool

 
true允许角色释放挖矿技能

false阻止角色释放挖矿技能

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_mining(player, map_key, skill_id, skill_key, x, y)      
    if map_key == "XXX" then          
        lualib:SysWarnMsg(player, "该地图不能挖矿")          
        return false      
    end      
    return true  
end
<上一篇:角色挖矿获得物品前回调下一篇:玩家进行P2P交易前回调>
on_pre_p2p_trade
玩家进行P2P交易前回调

更新时间：2023-03-08 00:00:00
此函数在玩家进行P2P交易前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_p2p_trade(
    strRequestor,
    strResponsor,
    strRequestorItems,
    strResponsorItems,
    iRequestorGold,
    iResponsorGold,
    strRequestorItemsGuid,
    strResponsorItemsGuid
)

参数
strRequestor

string

 
发起玩家的GUID

strResponsor

string

 
接受玩家的GUID

strRequestorItems

string

 
发起玩家交易的物品

格式为类似"[KeyName1, KeyName2, ...]"的JSON数组

strResponsorItems

string

 
接受玩家交易的物品

格式为类似"[KeyName1, KeyName2, ...]"的JSON数组

iRequestorGold

int32

 
发起玩家交易的金币数量

iResponsorGold

int32

 
接受玩家交易的金币数量

strRequestorItemsGuid

string

 
发起玩家交易的物品的GUID

格式为类似"[GUID1, GUID2, ...]"的JSON数组

strResponsorItemsGuid

string

 
接受玩家交易的物品的GUID

格式为类似"[GUID1, GUID2, ...]"的JSON数组

返回值
bool

 
true允许玩家进行P2P交易

false阻止玩家进行P2P交易

版本历史
v1.0

 
首次发布

 
v1.1

 
新增以下参数：

strRequestorItemsGuid

strResponsorItemsGuid

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_pre_p2p_trade, "on_pre_p2p_trade")

function on_pre_p2p_trade(strRequestor, strResponsor, strRequestorItems, strResponsorItems, iRequestorGold, iResponsorGold, strRequestorItemsGuid, strResponsorItemsGuid)
    lualib:Warn("发起玩家："..lualib:Name(strRequestor))
    lualib:Warn("发起玩家交易的物品key："..strRequestorItems)
    lualib:Warn("发起玩家交易的金币："..iRequestorGold)
    lualib:Warn("发起玩家交易的物品guid："..strRequestorItemsGuid)
    lualib:Warn("接受玩家："..lualib:Name(strResponsor))
    lualib:Warn("接受玩家交易的物品key："..strResponsorItems)
    lualib:Warn("接受玩家交易的金币："..iResponsorGold)
    lualib:Warn("接受玩家交易的物品guid："..strResponsorItemsGuid)

    return true
end

--此示例代码运行成功如下图所示。

on_pre_p2p_trade.png
<上一篇:角色挖矿前回调下一篇:玩家死亡之前回调>
on_pre_player_die
玩家死亡之前回调

更新时间：2021-09-07 00:00:00
此函数在玩家死亡之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_player_die(
    strPlayer,
    strKiller
)

参数
strPlayer

string

 
玩家的GUID

strKiller

string

 
杀手的GUID

返回值
bool

 
true允许玩家死亡

false阻止玩家死亡

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_player_die(player, killer)      
    if xxx then          
        return false  --玩家不死亡      
    end      
    return true  
end
<上一篇:玩家进行P2P交易前回调下一篇:玩家丢弃金币前回调>
on_pre_player_drop_gold
玩家丢弃金币前回调

更新时间：2021-09-07 00:00:00
此函数在玩家丢弃金币前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_player_drop_gold(
    strPlayer,
    gold
)

参数
strPlayer

string

 
玩家的GUID

gold

int32

 
金币数量

返回值
bool

 
true允许玩家丢金币。

false阻止玩家丢金币。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家死亡之前回调下一篇:角色复活之前回调>
on_pre_player_relive
角色复活之前回调

更新时间：2023-03-29 00:00:00
此函数在角色复活之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_player_relive(
    strRole,
    iType,
    skill
)

参数
strRole

string

 
角色的GUID

iType

int32

 
复活类型

0技能复活

1原地复活

2回城复活

3副本复活

skill

string

 
自定义将要被复活的逻辑

note_icon 备注
此参数仅在使用技能复活时生效。

返回值
bool

 
true允许角色复活

false阻止角色复活

版本历史
v1.0

 
首次发布

v1.1

 
新增参数skill自定义将要被复活的逻辑

示例代码
Luacopy 复制
function on_pre_player_relive(player)      
if xxx then          
    return false  --不复活      
end      
    return true  --复活  
end
<上一篇:玩家丢弃金币前回调下一篇:角色处理PK值之前回调>
on_pre_process_pk
角色处理PK值之前回调

更新时间：2021-09-07 00:00:00
此函数在角色处理PK值之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_process_pk(
    strKiller,
    strVictim
)

参数
strKiller

string

 
杀手的GUID

strVictim

string

 
受害者的GUID

返回值
bool

 
true允许角色得到PK值。

false阻止角色得到PK值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--PK不涨PK值  
function on_pre_process_pk(killer_guid, victim_guid)  
    return false  
end  
 
<上一篇:角色复活之前回调下一篇:目标回蓝前回调>
on_pre_restore_mp
目标回蓝前回调

更新时间：2022-06-23 00:00:00
此函数在目标回蓝前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_restore_mp(
    strTarget,
    iMp
)
参数
strTarget

string

 
被治疗者的GUID

iMp

int

 
被治疗者原本应恢复的蓝量

返回值
int

 
修改后被治疗者即将恢复的蓝量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示，被治疗者原始蓝量值为1。

on_pre_restore_mp.png
lualib:AddTrigger("0", 471, "on_pre_restore_mp")

function on_pre_restore_mp(target, mp)
    lualib:SysWarnMsg(target, "mp = "..mp)
    
    return 60 --返回值为60，代表被治疗者即将要恢复的蓝量值被修改为60。
end

--此示例代码运行成功如下图所示（被治疗者原即将要恢复的蓝量值被修改为60，同时打印被治疗者原本应恢复的蓝量值）。

on_pre_restore_mp_2.png

on_pre_restore_mp_3.png
<上一篇:角色处理PK值之前回调下一篇:目标回血前回调>
on_pre_restore
目标回血前回调

更新时间：2022-06-23 00:00:00
此函数在目标回血前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_restore(
    strTarget,
    iHp
)
参数
strTarget

string

 
被治疗者的GUID

iHp

int

 
被治疗者原本应恢复的血量

返回值
int

 
修改后被治疗者即将恢复的血量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_pre_restore, "on_pre_restore")

function on_pre_restore(strTarget, iHp)
    lualib:SysMsg_SendWarnMsg(strTarget, "原血量恢复值为"..iHp)
    return 1 --返回值为1，代表被治疗者即将要恢复的血量值被修改为1。
end

--此示例代码运行成功如下图所示（被治疗者原即将要恢复的血量值被修改为1，同时打印被治疗者原本应恢复的血量值）。

on_pre_restore_2.png

on_pre_restore.png
<上一篇:目标回蓝前回调下一篇:出售物品给NPC商店前回调（扩展）>
on_pre_shop_sell_ex
出售物品给NPC商店前回调（扩展）

更新时间：2022-05-05 00:00:00
此函数在在出售物品给NPC商店前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数仅在全局表中的“是否使用新的出售物品给NPC商店前触发”字段配置为“是”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

on_pre_shop_sell_ex.png
语法
Luacopy 复制
on_pre_shop_sell_ex(
    strPlayer,
    strItemKeyname,
    gold,
    item_guid
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKeyname

string

 
物品的索引名（KeyName）

gold

int32

 
金币数量

item_guid

string

 
物品的GUID

返回值
table

 
返回一个包含两个整数的表，为table格式。

其中第一个元素代表金币数量（必须为正数），第二个代表金币是否绑定（0代表不绑定，1代表绑定）。

caution_icon 注意
当返回的金币数量为负数时，则会阻止出售。

版本历史
v1.0

 
首次发布

v1.1

 
新增参数item_guid物品的GUID

示例代码
Luacopy 复制
--金币数量为正数。
lualib:AddTrigger(player, lua_trigger_pre_shop_sell_ex, "on_pre_shop_sell_ex")

function on_pre_shop_sell_ex(strPlayer, strItemKeyname, gold ,item_guid)
    local gold = 666 --金币数量为正数
    local bind = 1 --0代表金币，1代表绑定金币
    return {gold, bind}
end

--此示例代码运行成功后卖出物品会提示如下内容。

on_pre_shop_sell_ex_2.png
--金币数量为负数。
lualib:AddTrigger(player, lua_trigger_pre_shop_sell_ex, "on_pre_shop_sell_ex")

function on_pre_shop_sell_ex(strPlayer, strItemKeyname, gold ,item_guid)
    local gold = -666 --金币数量为负数
    local bind = 1 --0代表金币，1代表绑定金币
    return {gold, bind}
end

--此示例代码运行成功如下图所示。

on_pre_shop_sell_ex_3.png
<上一篇:目标回血前回调下一篇:出售物品给NPC商店前回调>
on_pre_shop_sell
出售物品给NPC商店前回调

更新时间：2022-05-05 00:00:00
此函数在出售物品给NPC商店前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数仅在全局表中的“是否使用新的出售物品给NPC商店前触发”字段配置为“否”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

on_pre_shop_sell.png
语法
Luacopy 复制
on_pre_shop_sell(
    strPlayer,
    strItemKeyname,
    gold
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKeyname

string

 
物品的索引名（KeyName）

gold

int32

 
金币数量

返回值
int32

 
玩家是否获得绑定金币

0获得非绑定金币

非0获得绑定金币

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:出售物品给NPC商店前回调（扩展）下一篇:角色放技能前回调>
on_pre_spell
角色放技能前回调

更新时间：2021-09-07 00:00:00
此函数在角色放技能前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_spell(
    strRole,
    wSkillID,
    strSkillName,
    wX,
    wY,
    strTarget,
    strSkillKeyName
)

参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能ID

strSkillName

string

 
技能的Name

wX

uint16

 
技能施放坐标X

wY

uint16

 
技能施放坐标Y

strTarget

string

 
技能施放目标

strSkillKeyName

string

 
技能的KeyName

返回值
bool

 
true允许角色放技能。

false阻止角色放技能。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_pre_spell, "on_pre_spell")    
function on_pre_spell(player, skill_id, skill_key)      
    if skill_id == 25 or skill_key == "普通物理攻击" then           
        lualib:SysWarnMsg(player, "不能平砍")          
        return false      
    end      
    return true  
end
<上一篇:出售物品给NPC商店前回调下一篇:购买摆摊者物品前回调>
on_pre_stall_buy
购买摆摊者物品前回调

更新时间：2021-09-07 00:00:00
此函数在购买摆摊者物品前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_stall_buy(
    buyer,
    stallOwner,
    item,
    price,
    amount,
    type
)

参数
buyer

string

 
买家的GUID

stallOwner

string

 
摊主的GUID

item

string

 
物品的GUID

price

double

 
总价格

amount

uint16

 
数量

type

uint8

 
货币类型

0金币

1元宝

2积分

返回值
double

 购买物品的总价格
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:角色放技能前回调下一篇:出售物品给摆摊者前回调>
on_pre_stall_sell
出售物品给摆摊者前回调

更新时间：2021-09-07 00:00:00
此函数在出售物品给摆摊者前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_stall_sell(
    seller,
    stallOwner,
    item,
    price,
    amount,
    type
)

参数
seller

string

 
卖家的GUID

stallOwner

string

 
摊主的GUID

item

string

 
物品的GUID

price

double

 
总价格

amount

uint16

 
数量

type

uint8

 
货币类型

0金币

1元宝

2积分

返回值
double

 卖出物品的总价格
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:购买摆摊者物品前回调下一篇:在玩家摆摊前回调>
on_pre_stall
在玩家摆摊前回调

更新时间：2023-06-12 00:00:00
此函数在玩家摆摊前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_stall(
    strPlayer,
    stall_name
)
参数
strPlayer

string

 
玩家的GUID

stall_name

string

 
摊位名称

返回值
bool

 
true允许玩家摆摊

false阻止玩家摆摊

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:出售物品给摆摊者前回调下一篇:玩家获得任务奖励时回调>
on_quest_award
玩家获得任务奖励时回调

更新时间：2023-03-29 00:00:00
此函数在玩家获得任务奖励时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_quest_award(
    player_guid,
    items,
    attr_exts,
    buffs,
    quest_id
)

参数
player_guid

string

 
玩家角色的GUID

items

string

 
奖励物品信息

为JSON字符串格式，可反序列化为table格式。

例如："[[template_id（物品的模板ID）, amount（物品的数量）]...]"。

attr_exts

string

 
奖励扩展属性信息

为JSON字符串格式，可反序列化为table格式。

例如："[[attr_ext_id（扩展属性ID）, value（扩展属性值）]...]"。

0经验

1元宝

2绑定元宝

3积分

4金币

5绑定金币

6仓库金币

7内功经验

buffs

string

 
奖励BUFF信息

为JSON字符串格式，可反序列化为table格式。

例如："[[buff_id（BUFF的ID）, time（BUFF的存在时限）]...]"。

quest_id

uint16

 
任务ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数quest_id任务ID

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
--完成任务ID为4对应的任务后，会获得1个2号技能箱子（模板ID为9881）、8000点经验和3000个绑定金币。
on_quest_award_2.png
lualib:AddTrigger("0", 418, "on_quest_award")

function on_quest_award(player, items, attr_exts, buffs, quest_id)
    lualib:Warn("player = "..lualib:Name(player))
    lualib:Warn("items = "..items)
    lualib:Warn("attr_exts = "..attr_exts)
    lualib:Warn("buffs = "..buffs)
    lualib:Warn("quest_id = "..quest_id)
end

--此示例代码运行成功如下图所示。

on_quest_award.png
<上一篇:在玩家摆摊前回调下一篇:角色删除称号时回调>
on_remove_title
角色删除称号时回调

更新时间：2021-12-17 00:00:00
此函数角色删除称号时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_remove_title(
    strRole,
    title_id
)
参数
strRole

string

 
角色的GUID

title_id

uint16

 
称号的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 464, "on_remove_title") --角色删除称号时回调
lualib:AddTitle(player, 1) --给玩家添加称号
lualib:RemoveTitle(player, 1) --移除玩家称号

function on_remove_title(role, title_id)
    lualib:Warn(lualib:Name(role).." 成功删除称号 "..title_id)
end

--此示例代码运行成功如下图所示。

on_remove_title.png
<上一篇:玩家获得任务奖励时回调下一篇:角色走恢复流程时回调>
on_restore_process
角色走恢复流程时回调

更新时间：2021-09-07 00:00:00
此函数在角色走恢复流程时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_restore_process(
    strRole,
    strTarget,
    wSkillID
)

参数
strRole

string

 
治疗者的GUID

strTarget

string

 
被治疗者的GUID

wSkillID

uint16

 
治疗技能的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_restore_process(role, target, skill_id) -- role对target施放了ID为skill_id的治疗技能  
end
<上一篇:角色删除称号时回调下一篇:收到上马请求时回调>
on_ride_request
收到上马请求时回调

更新时间：2021-09-07 00:00:00
此函数在收到上马请求时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_ride_request(
    strPlayer
)

参数
strPlayer

string

 
玩家GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_ride_request(player)            
    local hashorse = lualib:Attr(player, 200)            
    if hashorse == 1 then          
        lualib:MsgBox(player, "你已经处于骑乘状态了！")          
        return      
    end            
    --上马读条      
    lualib:ProgressBarStart(player, 1000, "上马中", "on_Horse_true", "on_Horse_false", "")      
end
<上一篇:角色走恢复流程时回调下一篇:宠物叛变回调>
on_servant_betry
宠物叛变回调

更新时间：2021-09-07 00:00:00
此函数在宠物叛变回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_servant_betry(
    strMonster
)

参数
strMonster

string

 
宠物的GUID

返回值
bool

 
true允许叛变。

false阻止叛变。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",  lua_trigger_servant_betry , "on_servant_betry")
<上一篇:收到上马请求时回调下一篇:宠物升级时触发>
on_servant_levelup
宠物升级时触发

更新时间：2021-09-07 00:00:00
此函数在为宠物升级时的回调函数。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_servant_levelup(
    servant_guid,
    servant_level
)
参数
servant_guid

string

 
宠物的GUID

servant_level

int32

 
宠物的新等级

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_servant_levelup, "on_servant_levelup")
function on_servant_levelup(servant_guid , servant_level)
    lualib:Warn("宠物的guid:"..servant_guid)
    lualib:Warn("宠物的新等级:"..servant_level)
end

--此示例代码运行成功如下图所示。

on_servant_levelup.png
<上一篇:宠物叛变回调下一篇:宠物状态改变时回调>
on_servant_state_change
宠物状态改变时回调

更新时间：2022-04-01 00:00:00
此函数在宠物状态改变时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数仅在怪物模板表中的“是否使用宝宝状态改变触发”选项设置为“是”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→怪物→怪物模板表→宝宝相关区域。

on_servant_state_change.png
语法
Luacopy 复制
on_servant_state_change(
    servant,
    old_estate,
    new_estate
)
参数
servant

string

 
宠物的GUID

old_estate

uint8

 
宠物原始的状态

0出生状态

7跟随状态

8休息状态

9战斗状态

11强制跟随状态

new_estate

uint8

 
宠物现在的状态

7跟随状态

8休息状态

9战斗状态

11强制跟随状态

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
on_servant_state_change.png
lualib:AddTrigger("0", 450, "on_servant_state_change")

function on_servant_state_change(servant, old_estate, new_estate)
    local state = {
        [7] = "跟随",
        [8] = "休息",
        [9] = "战斗",
    }
    lualib:Warn(lualib:Name(servant).." 的状态从 "..state[old_estate].." 变为 "..state[new_estate])
end

--此示例代码运行成功如下图所示。

on_servant_state_change_2.png
<上一篇:宠物升级时触发下一篇:角色召唤宠物时回调>
on_summon
角色召唤宠物时回调

更新时间：2023-03-29 00:00:00
此函数在角色召唤宠物时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_summon(
    strRole,
    wMonsterID,
    wLevel,
    strMonster
)

参数
strRole

string

 
角色的GUID

wMonsterID

uint16

 
宠物的ID

wLevel

uint16

 
宠物的召唤等级

strMonster

string

 
宠物的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strMonster宠物的GUID

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_summon,"on_summon")

function on_summon(strRole, wMonsterID, wLevel,strMonster)
    lualib:Warn("角色的GUID为"..strRole)
    lualib:Warn("宠物的ID为"..wMonsterID)
    lualib:Warn("宠物召唤等级为"..wLevel)
    lualib:Warn("宠物的GUID为"..strMonster)
end

function main(npc, player)
    local servant_guid = lualib:Player_Summon(player, "宠物小飞龙", 20) --玩家召唤宠物
end

--此示例代码运行成功如下图所示。

on_summon.png
<上一篇:宠物状态改变时回调下一篇:角色走瞬移流程时回调>
on_teleport
角色走瞬移流程时回调

更新时间：2021-09-07 00:00:00
此函数在角色走瞬移流程时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_teleport(
    strRole,
    wSkillID
)

参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_teleport(role, skill_id) -- role使用ID为skill_id的瞬移技能  
end
<上一篇:角色召唤宠物时回调下一篇:收到下马请求时回调>
on_unride_request
收到下马请求时回调

更新时间：2021-09-07 00:00:00
此函数在收到下马请求时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_unride_request(
    strPlayer
)

参数
strPlayer

string

 
玩家GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_unride_request(player)       
    local hashorse = lualib:Attr(player, 200)      
    if hashorse == 2 then          
        lualib:MsgBox(player, "你还没有骑乘，不能下马状态了！")      
    else          
        lualib:UnRide(player)      
    end        
    return true  
end
<上一篇:角色走瞬移流程时回调下一篇:角色处理PK值时回调>
post_process_pk
角色处理PK值时回调

更新时间：2021-09-07 00:00:00
此函数在角色处理PK值时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
post_process_pk(
    strKiller,
    strVictim,
    iPKRef
)

参数
strKiller

string

 
杀手的GUID

strVictim

string

 
受害者的GUID

iPKRef

int32

 
得到的PK值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function post_process_pk(killer, victim, pk)      
    print(lualib:Name(killer).."杀死了"..lualib:Name(victim).."增加"..pk.."点PK值")  
end
<上一篇:收到下马请求时回调下一篇:玩家变灰名前回调>
pre_add_gray
玩家变灰名前回调

更新时间：2021-09-07 00:00:00
此函数在玩家变灰名前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
pre_add_gray(
    actor_guid,
    target_guid
)

参数
actor_guid

string

 
要变灰名的玩家的guid

target_guid

string

 
要变灰名玩家的目标玩家的guid

返回值
bool

 
true允许变灰名。

false阻止变灰名。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:角色处理PK值时回调下一篇:玩家被打断读条前触发>
pre_cancel_processing
玩家被打断读条前触发

更新时间：2021-09-07 00:00:00
此函数在在玩家被打断读条前触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
pre_cancel_processing(
    role_guid,
    type,
    detail,
    duration,
    progress_desc,
    progress_complete_func_name,
    progress_abort_func_name,
    progress_params
)
参数
role_guid

string

 
玩家角色的GUID

type

uint8

 
打断类型

0移动打断读条

1离开地图打断读条

2受到攻击被打断读条

3释放技能打断读条

detail

string

 
打断详情

当打断类型为0时，为空字符串

当打断类型为1时，为地图的关键字索引（KeyName）

当打断类型为2时，为攻击者的GUID（攻击者可以为玩家、怪物或者英雄）

当打断类型为3时，为技能的索引名（KeyName）

duration

uint32

 
持续时间

单位为毫秒

progress_desc

string

 
读条的描述

progress_complete_func_name

string

 
读条结束时的回调函数名

progress_abort_func_name

string

 
读条被中断时的回调函数名

progress_params

string

 
读条的回调参数

返回值
bool

 
是否打断

true打断读条

false不能打断读条

版本历史
v1.0

 
首次发布

 
v1.1

 
新增以下参数：

duration

progress_desc

progress_complete_func_name

progress_abort_func_name

progress_params

示例代码
Luacopy 复制
lualib:ProgressBarStart(player, 1000, "上马中", "on_Horse_true", "on_Horse_false", "测试参数") --设置让玩家开启进度条
lualib:AddTrigger(player, lua_trigger_pre_cancel_processing, "pre_cancel_processing")
function pre_cancel_processing(role_guid, type, detail, duration, progress_desc, progress_complete_func_name, progress_abort_func_name, progress_params)
    if lualib:RemoveTrigger(role_guid, lua_trigger_pre_cancel_processing, "pre_cancel_processing") then
        lualib:SysMsg_SendWarnMsg(role_guid, "持续时间："..duration)
        lualib:SysMsg_SendWarnMsg(role_guid, "读条描述："..progress_desc)
        lualib:SysMsg_SendWarnMsg(role_guid, "读条结束回调函数名："..progress_complete_func_name)
        lualib:SysMsg_SendWarnMsg(role_guid, "读条中断回调函数名："..progress_abort_func_name)
        lualib:SysMsg_SendWarnMsg(role_guid, "读条回调参数："..progress_params)
        if type == 0 then
            lualib:SysMsg_SendWarnMsg(role_guid, "打断类型：移动打断")
            return false
        elseif type == 1 then
            lualib:SysMsg_SendWarnMsg(role_guid, "打断类型：离图打断")
            lualib:SysMsg_SendWarnMsg(role_guid, "地图名："..detail)
            return true
        elseif type == 3 then
            lualib:SysMsg_SendWarnMsg(role_guid, "打断类型：受击打断")
            lualib:SysMsg_SendWarnMsg(role_guid, "攻击者："..lualib:Name(detail))
            return false
        elseif type == 2 then
            lualib:SysMsg_SendWarnMsg(role_guid, "打断类型：释放技能打断")
            lualib:SysMsg_SendWarnMsg(role_guid, "技能为："..detail)
            return true
        else
            lualib:Warn("打断类型异常")
        end
    else
        lualib:Warn("移除触发器失败")
    end
end

--此示例代码运行成功如下图所示。

on_pre_cancel_processing.png

--打断类型为移动且不能打断读条的运行结果如下图所示。

pre_cancel_processing.png

--打断类型为离开地图且打断读条的运行结果如下图所示。

pre_cancel_processing_2.png

--打断类型为受到攻击且不能打断读条的运行结果如下图所示。

pre_cancel_processing_3.png

--打断类型为施放技能且打断读条的运行结果如下图所示。

pre_cancel_processing_4.png
<上一篇:玩家变灰名前回调下一篇:角色处理PK值之前回调>
pre_process_pk
角色处理PK值之前回调

更新时间：2021-09-07 00:00:00
此函数在角色处理PK值之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
pre_process_pk(
    strKiller,
    strVictim
)

参数
strKiller

string

 
杀手的GUID

strVictim

string

 
受害者的GUID

返回值
bool

 
true允许角色得到PK值。

false阻止角色得到PK值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_pk(killer, victim)      
    local x = lualib:X(killer)      
    local y = lualib:Y(killer)      
    if lualib:Level(victim) < 50 and x >= 236 and x <= 285 and y >= 188 and y <= 285 then          
        lualib:SysTriggerMsg(killer, "在龙城药店附近区域低于50级玩家死亡不受保护")          
        lualib:SysTriggerMsg(victim, "在龙城药店附近区域低于50级玩家死亡不受保护")          
        return false      
    else          
        return true      
    end 
end
<上一篇:玩家被打断读条前触发
on_dummy_client_lock_target
英雄从客户端锁定目标触发

更新时间：2021-09-13 00:00:00
此函数为英雄从客户端锁定目标触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_dummy_client_lock_target(
    dummy_guid,
    target_guid 
)
参数
dummy_guid

string

 
英雄GUID

target_guid

string

 
目标GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_dummy_client_lock_target, "on_dummy_client_lock_target") --英雄从客户端锁定目标触发.
function on_dummy_client_lock_target(hero, target)
    lualib:Warn("英雄"..hero)
    lualib:Warn("目标"..target)
end
下一篇:英雄自定义状态逻辑触发>
on_dummy_custom_state_logic
英雄自定义状态逻辑触发

更新时间：2021-09-07 00:00:00
此函数为英雄自定义状态逻辑触发。

非系统级回调，需要手动添加触发器。
参考 eTriggerType

语法
Luacopy 复制
on_dummy_custom_state_logic(
    dummy_guid,
    state 
)
参数
dummy_guid

string

 
英雄GUID

state

uint8

 
英雄状态

返回值
int

 
返回0时，英雄继续原来的状态处理逻辑；

返回其他值时，比如返回值为w，则英雄等待w毫秒后进行下一步行为，不会执行原来的逻辑，该状态下的行为由脚本在触发函数中接管。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_dummy_custom_state_logic, "on_dummy_custom_state_logic") --英雄自定义状态逻辑触发

function on_dummy_custom_state_logic(hero, state)
    lualib:Warn("英雄"..hero)
    lualib:Warn("状态"..state)

    return 0
end
<上一篇:英雄从客户端锁定目标触发下一篇:英雄被召唤时回调>
on_hero_load
英雄被召唤时回调

更新时间：2023-11-27 00:00:00
此函数在召唤英雄时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_hero_load(
    hero_guid,
    lord_guid
)
参数
hero_guid

string

 
英雄的GUID

lord_guid

string

 
主人的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",482, "on_hero_load")
function on_hero_load(hero_guid,lord_guid)
    lualib:Warn("英雄guid为"..hero_guid)
    lualib:Warn("玩家guid为"..lord_guid)
end 

--此示例代码运行成功如下图所示。

on_hero_load
<上一篇:英雄自定义状态逻辑触发下一篇:英雄事件给客户端发送消息时回调>
on_hero_ntf_msg
英雄事件给客户端发送消息时回调

更新时间：2021-09-13 00:00:00
此函数在英雄事件给客户端发送消息时回调，可自定义发送的消息内容。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_hero_ntf_msg(
    hero_guid,
    target_guid,
    type
)
参数
hero_guid

string

 
英雄的GUID

target_guid

string

 
最近一次攻击的角色的GUID

note_icon 备注
若英雄未攻击其他角色，则此参数为0。

type

uint8

 
事件类型

0英雄死亡

返回值
string

 
发送给客户端的消息内容

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 456, "on_hero_ntf_msg")

function on_hero_ntf_msg(hero, target, type)
    if type == 0 then
        lualib:Warn(lualib:Name(target).." 杀死了英雄 "..lualib:Name(hero))
    end
end

--此示例代码运行成功如下图所示。

on_hero_ntf_msg.png
<上一篇:英雄被召唤时回调下一篇:英雄死亡时回调>
on_post_dummy_die
英雄死亡时回调

更新时间：2021-09-07 00:00:00
此函数在英雄死亡时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_dummy_die(
    strDummy,
    strKiller
)

参数
strDummy

string

 
英雄的GUID

strKiller

string

 
杀手的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:英雄事件给客户端发送消息时回调下一篇:英雄死亡之前回调>
on_pre_dummy_die
英雄死亡之前回调

更新时间：2021-09-07 00:00:00
此函数在英雄死亡之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_dummy_die(
    strDummy,
    strKiller
)

参数
strDummy

string

 
英雄的GUID

strKiller

string

 
杀手的GUID

返回值
bool

 
true允许英雄死亡。

false阻止英雄死亡。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:英雄死亡时回调下一篇:英雄准备好合击时回调>
on_prepare_joint_hit
英雄准备好合击时回调

更新时间：2022-05-05 00:00:00
此函数在英雄准备好合击时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_prepare_joint_hit(
    heroGuid,
    skillKeyname,
    targetGuid
)

参数
heroGuid

string

 
英雄的GUID

skillKeyname

string

 
技能的索引名（Keyname）

targetGuid

string

 
目标的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:英雄死亡之前回调
on_calc_drop_pct
计算掉率触发

更新时间：2021-09-07 00:00:00
此函数在计算怪物死亡时掉率触发。

非系统级回调，需要手动添加触发器。

参考eTriggerType

语法
Luacopy 复制
on_calc_drop_pct(
    player_guid,
    monster_guid,
    pct
)
参数
player_guid

string

 
玩家GUID

monster_guid

string

 
怪物GUID

pct

int32

 
当前掉率

返回值
int32

 
脚本返回的掉率

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_calc_drop_pct, "on_calc_drop_pct") --注册掉率修改触发器

function on_calc_drop_pct(player,monsterGuid,pct) --回调函数
    lualib:SysWarnMsg(player, ""..lualib:Name(monsterGuid).."  "..pct )
    return pct
end 
下一篇:押送类怪物死亡时回调>
on_escorter_fail
押送类怪物死亡时回调

更新时间：2021-09-07 00:00:00
此函数在押送类怪物死亡时回调。

系统级回调，不需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_escorter_fail(
    strMonster,
    strMaster
)

参数
strMonster

string

 
怪物的GUID

strMaster

string

 
怪物所属玩家的GUID，多GS情况下有可能找不到玩家实体。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_escorter_fail(monster, master)      
    print("玩家"..lualib:Name(player).."押送的"..lualib:Name(monster).."死亡")  
end
<上一篇:计算掉率触发下一篇:押送类怪物离得过远时回调>
on_escorter_far
押送类怪物离得过远时回调

更新时间：2021-09-07 00:00:00
此函数在押送类怪物离得过远时回调。

系统级回调，不需要手动添加触发器。

参考 eTriggerType

note_icon 备注
怪物与玩家一直处于过远状态时，该触发器每10秒只会触发一次。

语法
Luacopy 复制
on_escorter_far(
    strMonster,
    strMaster
)

参数
strMonster

string

 
怪物的GUID

strMaster

string

 
怪物所属玩家的GUID，多GS情况下有可能找不到玩家实体。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_escorter_far(monster, master)      
    lualib:SysWarnMsg(master, "你的"..lualib:Name(monster).."距离过远")  
end
<上一篇:押送类怪物死亡时回调下一篇:怪物出现在地图时回调>
on_monster_appear
怪物出现在地图时回调

更新时间：2021-09-07 00:00:00
此函数在怪物出现在地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_monster_appear(
    strMonster,
    wMonsterID,
    strMonsterName,
    wX,
    wY
)

参数
strMonster

string

 
怪物的GUID

wMonsterID

uint16

 
怪物的ID

strMonsterName

string

 
怪物的Name

wX

uint16

 
怪物的X坐标

wY

uint16

 
怪物的Y坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_monster_appear(monster, id, key, x, y)      
    local map = lualib:MapGuid(monster)      
    lualib:SysMapMsg(map, "怪物["..key.."]出现在【"..lualib:Name(map).."】("..x..","..y..")")  
end
<上一篇:押送类怪物离得过远时回调下一篇:怪物出生时回调>
on_monster_born
怪物出生时回调

更新时间：2021-09-07 00:00:00
此函数在怪物出生时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_monster_born(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_monster_born(monster)    
     -- 
end
<上一篇:怪物出现在地图时回调下一篇:怪物被清理时回调>
on_monster_destory
怪物被清理时回调

更新时间：2023-05-19 00:00:00
此函数在怪物被清理时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_monster_destory(
    strMonster
)
参数
strMonster

string

 
怪物的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 480, "on_monster_destory")

function on_monster_destory(m_guid)
    lualib:Warn("怪物被清理时回调")
    lualib:Warn("怪物索引名为："..lualib:KeyName(m_guid)) 
end

--此示例代码运行成功如下图所示。

on_monster_destory.png
<上一篇:怪物出生时回调下一篇:怪物消失在地图时回调>
on_monster_disappear
怪物消失在地图时回调

更新时间：2021-09-07 00:00:00
此函数在怪物消失在地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_monster_disappear(
    strMonster,
    wMonsterID,
    strMonsterName,
    wX,
    wY
)

参数
strMonster

string

 
怪物的GUID

wMonsterID

uint16

 
怪物的ID

strMonsterName

string

 
怪物的Name

wX

uint16

 
怪物的X坐标

wY

uint16

 
怪物的Y坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_monster_disappear(monster, id, key, x, y)      
    local map = lualib:MapGuid(monster)      
    lualib:SysMapMsg(map, "怪物["..key.."]消失在【"..lualib:Name(map).."】("..x..","..y..")")  
end
<上一篇:怪物被清理时回调下一篇:怪物进入战斗状态时回调>
on_monster_in_fight
怪物进入战斗状态时回调

更新时间：2021-09-07 00:00:00
此函数在当怪物进入战斗状态时回调。

参考 eTriggerType

note_icon 备注
此回调为异步回调可通过设置过滤器指定某类怪物id的怪物进入战斗状态才回调。

语法
Luacopy 复制
on_monster_in_fight(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_monster_in_fight(monster)      
    lualib:SysMsg_SendRoleTalk(monster, "尔等屁民竟敢打我!!!")  
end
<上一篇:怪物消失在地图时回调下一篇:怪物退出战斗状态时回调>
on_monster_out_fight
怪物退出战斗状态时回调

更新时间：2021-09-07 00:00:00
此函数在当怪物退出战斗状态时回调。

参考 eTriggerType

note_icon 备注
此回调为异步回调可通过设置过滤器指定某类怪物id的怪物退出战斗状态才回调。

语法
Luacopy 复制
on_monster_out_fight(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_monster_out_fight(monster)      
    lualib:SysMsg_SendRoleTalk(monster, "有本事再跟爷爷大战三百回合")  
end
<上一篇:怪物进入战斗状态时回调下一篇:怪物释放技能时回调>
on_monster_spell
怪物释放技能时回调

更新时间：2021-09-07 00:00:00
此函数在怪物释放技能时回调。

非系统级回调，需要手动添加触发器。

参考eTriggerType

caution_icon 注意
此回调函数仅在接口lualib:SetUseMonsterSpellTrigger的参数is_use设置为true时生效。

语法
Luacopy 复制
on_monster_spell(
    strRole,
    wSkillID,
    strSkillName,
    strTarget,
    strSkillKeyName
)
参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能ID

strSkillName

string

 
技能的名称（Name）

strTarget

string

 
技能释放目标的GUID

strSkillKeyName

string

 
技能的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_monster_spell, "on_monster_spell")
lualib:SetUseMonsterSpellTrigger(true) --设置开启怪物释放技能触发

function on_monster_spell(strRole, wSkillID, strSkillName, strTarget, strSkillKeyName)
    lualib:Warn("技能ID为："..wSkillID)
    lualib:Warn("技能Name为："..strSkillName)
    lualib:Warn("技能KeyName为："..strSkillKeyName)
    lualib:Warn("技能施放目标为："..lualib:Name(strTarget))
end

--此示例代码运行成功如下图所示。

on_monster_spell.png
<上一篇:怪物退出战斗状态时回调下一篇:怪物死亡时回调>
on_post_monster_die
怪物死亡时回调

更新时间：2021-09-07 00:00:00
此函数在怪物死亡时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_monster_die(
    strMonster,
    strKiller
)

参数
strMonster

string

 
怪物的GUID

strKiller

string

 
杀手的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_post_monster_die(monster, killer)     
    print("怪物"..lualib:Name(monster).."被"..lualib:Name(killer).."杀死")  
end
<上一篇:怪物释放技能时回调下一篇:怪物死亡之前回调>
on_pre_monster_die
怪物死亡之前回调

更新时间：2021-09-07 00:00:00
此函数在怪物死亡之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_monster_die(
    strMonster,
    strKiller
)

参数
strMonster

string

 
怪物的GUID

strKiller

string

 
杀手的GUID

返回值
bool

 
true允许怪物死亡

false阻止怪物死亡

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_monster_die(monster, killer)      
    if xxx then          
        return false  --怪物不死亡      
    end      
    return true  
end
<上一篇:怪物死亡时回调
on_dungeon_end
副本地图销毁时回调

更新时间：2022-05-05 00:00:00
此函数在副本地图销毁时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_dungeon_end(
    strMap,
    strMapKey
)

参数
strMap

string

 
副本地图的GUID

strMapKey

string

 
副本地图的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_dungeon_end(map, keyname)
    result(map) 
end  
下一篇:玩家进入地图时回调>
on_enter_map
玩家进入地图时回调

更新时间：2021-09-07 00:00:00
此函数在玩家进入地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_enter_map(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_map_create(map_code)
    lualib:AddTrigger(map_code, lua_trigger_enter_map, "on_enter_map") 
end 

function on_enter_map(player)
    --省略部分代码
    lualib:SysMsg_SendTriggerMsg(player, "欢迎来到烈焰深渊一层，这个副本将在"..lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()).." 23:59:59后重置！")
    --省略部分代码 
end
<上一篇:副本地图销毁时回调下一篇:玩家离开地图时回调>
on_leave_map
玩家离开地图时回调

更新时间：2021-09-07 00:00:00
此函数在在玩家离开地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_leave_map(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_leave_map(player)
    --省略部分代码 
    local player_count = lualib:Map_GetPlayerCount(map_guid, false)
    if player_count == 0 then
        lualib:Map_DestroyDgn(map_guid) 
    end
    --省略部分代码 
end
<上一篇:玩家进入地图时回调下一篇:地图生成时回调>
on_map_create
地图生成时回调

更新时间：2022-05-05 00:00:00
此函数在地图生成时回调。

系统级回调，不用手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_map_create(
    strMap,
    strMapKey
)

参数
strMap

string

 
地图的GUID

strMapKey

string

 
地图的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
   
   
function on_map_create(map_guid, map_key)
    --省略部分代码 
    --刷新妖山暗穴四层宝箱NPC 
    for i = 1, ysax4_bx_npc_gen_count do 
        -- ysax4_bx_npc_guid[i] = lualib:Map_GenNpc(map_code, ysax4_bx_npc_gen_name, 130, 121, 5, 3) 
        ysax4_bx_npc_guid[i] = lualib:Map_GenNpcRnd(map_code, ysax4_bx_npc_gen_name)
        lualib:Print("妖山暗穴四层宝箱：[x,y] = ["..lualib:Npc_GetPosX(ysax4_bx_npc_guid[i])
        ..", "..lualib:Npc_GetPosY(ysax4_bx_npc_guid[i]).."]") 
    end 

    --妖山暗穴四层宝箱NPC定时器 
    local ret = lualib:AddTimer(map_code, lua_ysax4_map_bx_npc_timer, ysax4_bx_npc_gen_times, -1, "on_timer") 
    if ret == false then
        lualib:Print("妖山暗穴四层宝箱刷新定时器添加失败！") 
        return 
    end
    lualib:Print("妖山暗穴四层宝箱刷新定时器添加成功！")
    --省略部分代码 
end
<上一篇:玩家离开地图时回调下一篇:地图结束时回调>
on_map_destroy
地图结束时回调

更新时间：2022-05-05 00:00:00
此函数在地图结束时回调。

系统级回调，不用手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_map_destroy(
    strMap,
    strMapKey
)

参数
strMap

string

 
地图的GUID

strMapKey

string

 
地图的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_map_destroy()
    --省略部分代码 
    local ret = lualib:Map_SetOffTimer(map_code, lua_ysax4_map_bx_npc_timer) 
    if ret == false then 
        return 
    end
    --省略部分代码 
end
<上一篇:地图生成时回调下一篇:角色进入跳转点之前回调>
on_pre_enter_jump
角色进入跳转点之前回调

更新时间：2021-09-07 00:00:00
此函数在角色进入跳转点之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_enter_jump(
    strRole,
    strFromMap,
    strDestMap
)

参数
strRole

string

 
角色的GUID

strFromMap

string

 
源地图的GUID

strDestMap

string

 
目标地图的GUID

返回值
bool

 
true允许角色通过跳转点跳图。

false阻止角色通过跳转点跳图。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_map_create(map)  
    lualib:AddTrigger(map,  lua_trigger_pre_enter_jump, "on_pre_jump")  
end  

function on_pre_jump(player, from_map, to_map)  
    local x = lualib:Player_GetPosX(player)  
    local y = lualib:Player_GetPosY(player)  
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)  
    local defense = lualib:GetCastleOwnFamily(require_castle_name)  

    if lualib:IsInRegion(trans_point, x, y) then  
        if lualib:IO_GetCustomVarInt("castlewar_sgc_flag") == 0 then  
            lualib:SysMsg_SendPromptMsg(player, "灵元秘境尚未开启！")  
            lualib:NPCTalk(player, "灵元秘境尚未开启！\n \n<@leave *01*确定>")  
            return false  
        end  

        local enter_level = 35  
        if lualib:Player_GetIntProp(player,  lua_role_level) < enter_level then  
            lualib:SysMsg_SendPromptMsg(player, "进入灵元秘境需要35级以上！")  
            lualib:NPCTalk(player, "进入灵元秘境需要35级以上！\n \n<@leave *01*确定>")  
            return false  
        end  

        local enter_gold = 0  
        if my_family == defense and my_family ~= "" then  
            enter_gold = 80000  
        else  
            enter_gold = 100000  
        end  

        if not lualib:Player_IsGoldEnough(player, enter_gold, false) then  
            lualib:SysMsg_SendPromptMsg(player, "进入灵元秘境需要"..enter_gold.."传送费！")  
            lualib:NPCTalk(player, "进入灵元秘境需要"..enter_gold.."传送费！\n \n<@leave *01*确定>")  
            return false  
        else  
            local msg = "<@EnterWithMoney#"..enter_gold.." *01*进入灵元秘境扣除"..enter_gold.."传送费！>\n"  
            msg = msg.."<@leave *01*离开>"  
            lualib:NPCTalk(player, msg)  
            return false  
        end  

        if not lualib:Player_SubGold(player, enter_gold, false, "扣金币：进入灵元秘境", "神歌城") then  
            lualib:SysMsg_SendPromptMsg(player, "进入灵元秘境需要"..enter_gold.."传送费！")  
            lualib:NPCTalk(player, "进入灵元秘境需要"..enter_gold.."传送费！\n \n<@leave *01*确定>")  
            return false  
        end  

        lualib:SysMsg_SendPromptMsg(player, "进入灵元秘境，扣除"..enter_gold.."传送费！")  
        lualib:NPCTalk(player, "进入灵元秘境，扣除"..enter_gold.."传送费！\n \n<@leave *01*确定>")  
        return true  
    end  

if not lualib:IsCastleWarStart(require_castle_name) then return true end  
    if my_family == defense then return true end  
    local can_jump = true  

local monsters = {}  
    for _, v in pairs(castle_door) do  
        if lualib:IsInRegion(v, x, y) then  
monsters = lualib:Map_GetRegionMonsters(from_map, "", v[2], v[3], 1, true, true)  
if is_in_monsters(monsters, require_monster_name) then  
can_jump = false  
break  
end  
        end  
    end  

return can_jump  
end
<上一篇:地图结束时回调下一篇:角色跳转地图前回调>
on_pre_jump_map
角色跳转地图前回调

更新时间：2022-11-11 00:00:00
此函数在角色跳转地图前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_jump_map(
    strRole,
    strFromMap,
    strDestMap
)
参数
strRole

string

 
角色的GUID

strFromMap

string

 
源地图的GUID

strDestMap

string

 
目标地图的GUID

返回值
bool

 
true允许角色跳转地图

false阻止角色跳转地图

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_pre_jump_map, "on_pre_jump_map")

function on_pre_jump_map(strRole,strFromMap,strDestMap)
    lualib:Warn("玩家的GUID为"..strRole) --打印角色的GUID
    lualib:Warn("源地图为"..lualib:KeyName(strFromMap)) --打印源地图的索引名
    lualib:Warn("目标地图为"..lualib:KeyName(strDestMap)) --打印目标地图的索引名
    lualib:Warn("跳转地图前触发")
    return true --允许角色跳转地图
end

--此示例代码运行成功如下图所示。

on_pre_jump_map.png
<上一篇:角色进入跳转点之前回调下一篇:在地图执行刷怪操作前回调>
on_pre_map_refresh_monster
在地图执行刷怪操作前回调

更新时间：2022-02-25 00:00:00
此函数在地图执行刷怪操作前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_map_refresh_monster(
    strMap,
    strMapKey
)
参数
strMap

string

 
地图的GUID

strMapKey

string

 
地图的索引名（KeyName）

返回值
bool

 
是否需要刷怪

true需要刷怪

fasle不需要刷怪

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 467, "on_pre_map_refresh_monster")

local tb_ms = lualib:Map_GetRegionMonstersEx(map,"",{1, 0, 0, 800, 800},true,true) --第一次获取地图指定区域内的怪物列表
lualib:Warn("tb_ms1 = "..serialize(tb_ms))
local map = lualib:MapGuid(player) --获取对象当前地图的GUID
--根据怪物刷新表在地图上刷怪
if lualib:Map_RefreshMonster(lualib:KeyName(map)) then
    tb_ms = lualib:Map_GetRegionMonstersEx(map,"",{1, 0, 0, 800, 800},true,true) --第二次获取地图指定区域内的怪物列表
    lualib:Warn("tb_ms2 = "..serialize(tb_ms))
else
    lualib:Warn("刷怪失败")
end

function on_pre_map_refresh_monster(map, map_key)
    --确保地图的GUID与索引名相匹配。
    lualib:Warn("map = "..lualib:KeyName(map))
    lualib:Warn("map_key = "..map_key)
    
    return true
end

--此示例代码运行成功如下图所示。

--第一次获取怪物列表时为空，第二次获取的怪物列表为刚刷出的怪物的列表。

Map_RefreshMonster.png
<上一篇:角色跳转地图前回调
on_add_buff
角色添加BUFF时回调

更新时间：2021-09-07 00:00:00
此函数在角色添加BUFF时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_add_buff(
    strRole,
    wBuffID,
    strHost
)

参数
strRole

string

 
角色的GUID

wBuffID

uint16

 
BUFF的ID

strHost

string

 
施放BUFF角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_add_buff(role, buff_id, host)      
    --lualib:Name(host).."对"..lualib:Name(role).."施放了BUFF[ID:"..buff_id.."]"  
end
下一篇:角色添加技能时回调>
on_add_skill
角色添加技能时回调

更新时间：2021-09-07 00:00:00
此函数在角色添加技能时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_add_skill(
    strRole,
    wSkillID
)

参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_add_skill(role, skill_id)      
    print(lualib:Name(role).."学会了技能[ID:"..skill_id.."]")  
end
<上一篇:角色添加BUFF时回调下一篇:角色触发BUFF效果时回调>
on_apply_buff
角色触发BUFF效果时回调

更新时间：2021-09-07 00:00:00
此函数在角色触发BUFF效果时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_apply_buff(
    strRole,
    wBuffID
)

参数
strRole

string

 
角色的GUID

wBuffID

uint16

 
BUFF的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_apply_buff(player, buff_id)     
end
<上一篇:角色添加技能时回调下一篇:角色触发BUFF造成伤害前回调>
on_buff_pre_harm
角色触发BUFF造成伤害前回调

更新时间：2022-02-10 00:00:00
此函数在角色触发BUFF造成伤害前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_buff_pre_harm(
    strRole,
    wBuffID,
    hp,
    mp,
    strAttacker
)
参数
strRole

string

 
角色的GUID

wBuffID

uint16

 
BUFF的ID

hp

int

 
角色血量的变化量

mp

int

 
角色蓝量的变化量

note_icon 备注
参数hp和参数mp中至少有一个参数为负数。

strAttacker

string

 
攻击者的GUID

返回值
table

 
指定角色的血/蓝量的变化量，存储在lua表中。

返回的table格式为{指定角色血量的变化量,指定角色蓝量的变化量}。

若返回负数，则表示损血/蓝；若返回正数，则表示补血/蓝。

指定角色血量的变化量和指定角色蓝量的变化量均为整数，其数值与损/补的血/蓝量相对应。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strAttacker攻击者的GUID

示例代码
Luacopy 复制
lualib:AddTrigger("0", 453, "on_buff_pre_harm")

function on_buff_pre_harm(strRole, wBuffID, hp, mp, strAttacker)
    lualib:SysWarnMsg(strRole, "触发buffId："..wBuffID)
    lualib:SysWarnMsg(strRole, "触发原血量变化："..hp)
    lualib:SysWarnMsg(strRole, "触发原蓝量变化："..mp)
    lualib:SysWarnMsg(strRole, "攻击者："..lualib:Name(strAttacker))
    return {-100, -100}
end

--此示例代码运行成功如下图所示，同时游戏内对话框中还会打印相关内容。

on_buff_pre_harm_2.png

on_buff_pre_harm.png
<上一篇:角色触发BUFF效果时回调下一篇:是否处理破防和破盾触发>
on_check_ignore_def_and_imm
是否处理破防和破盾触发

更新时间：2021-09-07 00:00:00
此函数为是否处理破防和破盾触发。

非系统级回调，需要手动添加触发器。
参考 eTriggerType

语法
Luacopy 复制
on_check_ignore_def_and_imm(
    attacker,
    target,
    skill_id 
)
参数
attacker

string

 
攻击者GUID

target

string

 
被攻击者GUID

skill_id

uint16

 
技能ID

返回值
bool

 
true技能计算伤害会考虑攻击者忽略对方的防御和免疫盾，即破防与破盾。

false技能计算伤害不考虑破防和破盾。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_check_ignore_def_and_imm, "on_check_ignore_def_and_imm") --是否处理破防和破盾触发

function on_check_ignore_def_and_imm(attacker, target, skillid)
	return true --计算伤害时考虑破防和破盾
end
<上一篇:角色触发BUFF造成伤害前回调下一篇:角色添加BUFF前回调>
on_pre_add_buff
角色添加BUFF前回调

更新时间：2021-09-07 00:00:00
此函数在角色添加BUFF前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_add_buff(
    strRole,
    buff_id,
    strHost
)
参数
strRole

string

 
角色的GUID

buff_id

uint16

 
BUFF的ID

strHost

string

 
施放BUFF角色的GUID

返回值
bool

 
true施放BUFF成功

false施放BUFF失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 449, "on_pre_add_buff")

function on_pre_add_buff(role, buff_id, host)
   lualib:Warn(lualib:Name(host).."对"..lualib:Name(role).."施放了BUFF[ID:"..buff_id.."]")
   return false
end

--此示例代码运行成功如下图所示。

on_pre_add_buff.png
<上一篇:是否处理破防和破盾触发下一篇:角色开关技能前回调>
on_pre_switch_skill
角色开关技能前回调

更新时间：2023-11-15 00:00:00
此函数在角色开关技能前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_switch_skill(
    strRole,
    wSkillID,
    byActive
)

参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能的ID

byActive

bool

 
开关状态

true开

false关

返回值
bool

 
是否允许开关技能

true允许

false不允许

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",481, "on_pre_switch_skill")
function on_pre_switch_skill(player,skill_id,status)
    lualib:Warn("玩家guid为"..player)
    lualib:Warn("技能id为"..skill_id)
    if status then
        lualib:Warn("技能状态为开")
    else
        lualib:Warn("技能状态为关")
    end
    return true
end

--此示例代码运行成功如下图所示。

on_pre_switch_skill
<上一篇:角色添加BUFF前回调下一篇:角色删除BUFF时回调>
on_remove_buff
角色删除BUFF时回调

更新时间：2021-09-07 00:00:00
此函数在角色删除BUFF时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_remove_buff(
    strRole,
    wBuffID
)

参数
strRole

string

 
角色的GUID

wBuffID

uint16

 
BUFF的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_remove_buff(role, buff_id)  
    --lualib:Name(role).."的BUFF[ID:"..buff_id.."]消失了"  
end
<上一篇:角色开关技能前回调下一篇:角色删除技能时触发>
on_remove_skill
角色删除技能时触发

更新时间：2021-09-07 00:00:00
此函数在角色删除技能时触发。

非系统级回调，需要手动添加触发器。
参考 eTriggerType

语法
Luacopy 复制
on_remove_skill(
    strRole,
    wSkillID 
)
参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_remove_skill, "on_remove_skill") --删除技能时触发

function on_remove_skill(strRole, SkillID)
    lualib:Warn("删除了技能："..SkillID)
end
--添加触发器后，调用lualib:DelSkill(player,"独孤九剑")接口，删除技能，将输出“[WRN]删除了技能：272”。
<上一篇:角色删除BUFF时回调下一篇:角色放技能时回调>
on_spell
角色放技能时回调

更新时间：2022-05-05 00:00:00
此函数在角色放技能时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_spell(
    strRole,
    wSkillID,
    strSkillName,
    wX,
    wY,
    strTarget,
    strSkillKeyName
)

参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能ID

strSkillName

string

 
技能的名称（Name）

wX

uint16

 
施放技能的X坐标

wY

uint16

 
施放技能的Y坐标

strTarget

string

 
技能施放目标

strSkillKeyName

string

 
技能的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_spell(monster, timer_id, param)  
    local type = self.type[lualib:KeyName(monster)]  
    if type == nil then  
        lualib:Error("脚本与怪物不匹配！")  
        return  
    end  

    if lualib:Monster_IsDie(monster) then  
        lualib:ClearTimer(monster)  
        return  
    end  

    lualib:SysMsg_SendRoleTalk(monster, self.talk_table[lualib:GenRandom(1, #self.talk_table)])  
    local players = lualib:Map_GetRegionPlayers(lualib:MapGuid(monster), lualib:X(monster), lualib:Y(monster), self.skill_rang, true)  
    if players == nil or table.getn(players) <= 0 then  
        lualib:Debug("周围没有玩家！")  
        return   
    end  

    if not lualib:Monster_SpellTarget(monster, self.skill_table[type], players[lualib:GenRandom(1, #players)]) then  
        lualib:Error("深渊护卫施放技能失败！")  
    end  
    lualib:Debug("深渊护卫施放技能成功！")  
end
<上一篇:角色删除技能时触发下一篇:角色开关技能时回调>
on_switch_skill
角色开关技能时回调

更新时间：2021-09-07 00:00:00
此函数在角色开关技能时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_switch_skill(
    strRole,
    wSkillID,
    byActive
)

参数
strRole

string

 
角色的GUID

wSkillID

uint16

 
技能的ID

byActive

uint8

 
开关状态

0关

1开

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_switch_skill(role, skill_id, active)      
    local tb = {[0] = "关闭", "开启"}      
    print(lualib:Name(role)..tb[active].."了技能[ID:"..skill_id.."]")  
end
<上一篇:角色放技能时回调
on_apply_on_item
特殊道具使用在目标道具上回调

更新时间：2024-01-10 00:00:00
此函数在鼠标右键点击特殊类型道具（如精炼符，鉴定符等）后，当鼠标左键点击目标道具时回调。

非系统级回调，需要手动在物品绑定的脚本中添加触发。

语法
Luacopy 复制
on_apply_on_item(
    player,
    item,
    target_item
)

参数
player

string

 
角色的GUID

item

string

 
特殊道具的GUID

target_item

string

 
目标道具的GUID

返回值
bool

 
true允许对目标物品使用特殊道具

false不允许对目标物品使用特殊道具

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_apply_on_item(player, item, target_item)
    local itemName = lualib:KeyName(item)
    local targetName = lualib:Name(target_item)
    local targetKeyName = lualib:KeyName(target_item)
    local playerName = lualib:Name(player)
    --装备类型判断
    if lualib:Item_GetType(player, target_item) ~= 1 then
        lualib:SysMsg_SendWarnMsg(player, "不是装备不能精炼！")
        return false
    else
    if lualib:Item_GetSubType(player, target_item) == 5 then
        lualib:SysMsg_SendWarnMsg(player, "此类型装备不能精炼！")
        return false
    end
end
下一篇:角色物品堆叠数为0时回调>
on_item_amount_zero
角色物品堆叠数为0时回调

更新时间：2022-05-05 00:00:00
此函数在角色物品堆叠数为0时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_amount_zero(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_item_amount_zero(role, item, item_id, item_key)      
    print(lualib:Name(role).."的道具["..lualib:Name(item).."]堆叠为0")  
end
<上一篇:特殊道具使用在目标道具上回调下一篇:物品出现在地图时回调>
on_item_appear
物品出现在地图时回调

更新时间：2022-05-05 00:00:00
此函数在物品出现在地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_appear(
    strMap,
    strItem,
    wItemID,
    strItemKey,
    wX,
    wY
)

参数
strMap

string

 
地图的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

wX

uint16

 
物品的X坐标

wY

uint16

 
物品的Y坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(map, lua_trigger_item_appear, "on_trigger_item_appear")  
function on_trigger_item_appear(map, item, item_id, item_name, x, y)  
    --省略部分代码  
    if item_name ~= require_item then return end  

    local item_ = CItem:new()  
    item_:init(item_name)  
    item_:drop_notify(map, x, y)  
    --省略部分代码  
end
<上一篇:角色物品堆叠数为0时回调下一篇:角色使用道具时回调>
on_item_apply
角色使用道具时回调

更新时间：2022-05-05 00:00:00
此函数在角色使用道具时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_apply(
    strRole,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

wItemID

uint16

 
道具的ID

strItemKey

string

 
道具的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_item_apply(player, item_id, item_key)  

    if lualib:Level(player) < 20 then  
        lualib:SysMsg_SendPromptMsg(player, "20级以下不能使用")  
    end  

    if item_key == GoldBookName then  
        if lualib:Player_IsHasBuff(player, SilverQfBuffKeyname) then  
            lualib:SysMsg_SendPromptMsg(player, "你有更高级的祈福效果，使用失败")  
            return true  
        else  
            if not lualib:DelItem(player, GoldBookName, 1, 2, "祈福之地：使用祈福之书(金币)", "祈福之地") then  
                lualib:Error("删除祈福之书(金币)失败")  
            end  
        lualib:AddBuff(player, GoldQfBuffKeyname, 0)  
        end  
    elseif item_key == SilverBookName then  
        if lualib:Player_IsHasBuff(player, GoldQfBuffKeyname) then  
            local msg = ""  
            msg = msg .. "您已经有的金币祈福BUFF，元宝祈福BUFF会替换原来的金币祈福BUFF，是否替换？\n \n"  
            msg = msg .. "<@OK     *01* 确定>\n"  
            msg = msg .. "<@Cancel *01* 取消>\n"  
            lualib:NPCTalk(player, msg)  
            return true  
        else  
            if not lualib:DelItem(player, SilverBookName, 1, 2, "祈福之地：使用祈福之书(元宝)", "祈福之地") then  
                lualib:Error("删除祈福之书(元宝)失败")  
            end  
            lualib:AddBuff(player, SilverQfBuffKeyname, 0)  
        end  
    else  
        return true  
    end  
    return true  
end
<上一篇:物品出现在地图时回调下一篇:物品属性变化并通知客户端时回调>
on_item_attr_notify
物品属性变化并通知客户端时回调

更新时间：2022-12-16 00:00:00
此函数在物品属性变化并通知客户端时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_attr_notify(
    strRole,
    strItem,
    wItemID,
    strItemKey,
    attr,
    value
)
参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的模板ID

strItemKey

string

 
物品的索引名（KeyName）

attr

int

 
变化的属性

4使用次数

value

int

 
变化属性当前的属性值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 478, "on_item_attr_notify")

function on_item_attr_notify(strRole,strItem, wItemID,strItemKey, attr, value)
   lualib:Warn("角色的GUID为"..strRole)
   lualib:Warn("物品的GUID为"..strItem)
   lualib:Warn("物品的模板ID为"..wItemID)
   lualib:Warn("物品的索引名为"..strItemKey)
   lualib:Warn("变化的属性为"..attr)
   lualib:Warn("变化属性当前的属性值为"..value)
end

--当道具“飞行石”的使用次数发生改变时，游戏日志中会打印相关内容。

on_item_attr_notify_2.png

on_item_attr_notify.png
<上一篇:角色使用道具时回调下一篇:物品属性为0时回调（扩展）>
on_item_attr_zero_ex
物品属性为0时回调（扩展）

更新时间：2022-05-05 00:00:00
此函数在物品属性为0时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

caution_icon注意
此回调函数与回调函数on_item_attr_zero的区别是无论物品是否配置了“属性为0自动消失”的属性都可以触发此回调函数。

添加此触发后，原先的触发on_item_amount_zero，on_item_use_zero，on_item_dur_zero，on_item_dur_zero_ex自动失效。

语法
Luacopy 复制
on_item_attr_zero_ex(
    player_guid,
    item_guid,
    item_id,
    item_key_name,
    attr
)
参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
装备的GUID

item_id

UINT16

 
物品ID

item_key_name

string

 
物品的索引名（KeyName）

attr

int

 
物品为0的属性

1堆叠数

2耐久值

4使用次数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_item_attr_zero_ex, "on_item_attr_zero_ex")

function on_item_attr_zero_ex(player_guid, item_guid, item_id, item_key_name, attr)
    local type = {[1] = "堆叠数", [2] = "耐久值", [4] = "使用次数",}
    lualib:SysMsg_SendWarnMsg(player_guid, item_id.."号物品："..item_key_name.." "..lualib:Name(item_guid))
    lualib:SysMsg_SendWarnMsg(player_guid, type[attr].."：0")
end

--此示例代码运行成功如下图所示。

on_item_attr_zero_ex.png
<上一篇:物品属性变化并通知客户端时回调下一篇:角色物品属性为0时回调>
on_item_attr_zero
角色物品属性为0时回调

更新时间：2022-05-05 00:00:00
此函数在角色物品属性为0时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

caution_icon 注意
添加此触发后，原先的触发on_item_amount_zero，on_item_use_zero，on_item_dur_zero，on_item_dur_zero_ex自动失效。

语法
Luacopy 复制
on_item_attr_zero(
    strRole,
    strItem,
    wItemID,
    strItemKey,
    attr
)

参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

attr

int32

 
物品为0的属性

1堆叠数

2耐久值

4使用次数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:物品属性为0时回调（扩展）下一篇:物品消失在地图时回调>
on_item_disappear
物品消失在地图时回调

更新时间：2022-05-05 00:00:00
此函数在物品消失在地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_disappear(
    strMap,
    strItem,
    wItemID,
    strItemKey,
    wX,
    wY
)

参数
strMap

string

 
地图的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

wX

uint16

 
物品的X坐标

wY

uint16

 
物品的Y坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(map, lua_trigger_item_disappear, "on_item_disappear")   
function on_item_disappear(map, item, id, key, x, y)      
    local str = "道具["..lualib:Name(item).."]消失在【"..lualib:Name(map).."】("..x..", "..y..")"      
    lualib:SysMsg_SendBroadcastMsg(str, "")  
end
<上一篇:角色物品属性为0时回调下一篇:角色扔道具时回调>
on_item_drop
角色扔道具时回调

更新时间：2022-05-05 00:00:00
此函数在角色扔道具时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_drop(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

uint16

 
道具的ID

strItemKey

string

 
道具的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
   
lualib:AddTrigger(map, lua_trigger_item_drop, "on_trigger_item_drop")  

function on_trigger_item_drop(player, item, item_id, item_name)  
    if item_name ~= require_item then return end  

    local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)  
    if map == "" then return end  

    local item_ = CItem:new()  
    item_:init(item_name)  
    item_:drop_event(player, map)  
end
<上一篇:物品消失在地图时回调下一篇:角色装备耐久值变化并通知客户端时回调>
on_item_dur_notify
角色装备耐久值变化并通知客户端时回调

更新时间：2022-05-05 00:00:00
此函数在角色装备耐久值变化并通知客户端时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_dur_notify(
    strRole,
    strItem,
    wItemID,
    strItemKey,
    dur
)
参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

dur

uint32

 
物品的耐久值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_item_dur_notify, "on_item_dur_notify")

lualib:Item_SetDurability(player, lualib:Player_GetItemGuid(player,1), 20) --设置玩家武器装备位上的物品的耐久值为20
function on_item_dur_notify(strRole, strItem, wItemID, strItemKey, dur)
    lualib:Warn("角色: "..lualib:Name(strRole))
    lualib:Warn("物品: "..lualib:Name(strItem))
    lualib:Warn("物品ID: "..wItemID)
    lualib:Warn("物品的KeyName: "..strItemKey)
    lualib:Warn("物品的耐久度: "..dur)
end

--此示例代码运行成功如下图所示。

on_item_dur_notify.png
<上一篇:角色扔道具时回调下一篇:角色装备耐久为0时回调（扩展）>
on_item_dur_zero_ex
角色装备耐久为0时回调（扩展）

更新时间：2022-05-05 00:00:00
此函数在角色物品耐久为0时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

note_icon 备注
此回调和on_item_dur_zero的区别是此回调中增加装备耐久值，装备不会销毁 。

语法
Luacopy 复制
on_item_dur_zero_ex(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:角色装备耐久值变化并通知客户端时回调下一篇:角色装备耐久为0时回调>
on_item_dur_zero
角色装备耐久为0时回调

更新时间：2022-05-05 00:00:00
此函数在角色物品耐久为0时回调。

当角色装备耐久值为0时，装备会销毁。若此回调中给装备增加耐久值，装备仍会销毁。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

note_icon 备注
只有道具子类型为装备才会触发此回调。

语法
Luacopy 复制
on_item_dur_zero(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示，玩家装备了武器“神兵◆凤凰浴火”。

on_item_dur_zero_2.png
lualib:AddTrigger("0", lua_trigger_item_attr_zero, "on_item_dur_zero")
lualib:Item_SetDurability("0", lualib:Player_GetItemGuid(player,1), 0) --获取玩家武器装备位上的物品并将其当前耐久值设置为0

--触发回调函数on_item_dur_zero后，再给物品设置当前耐久值。
function on_item_dur_zero(role, item, item_id, item_key)
    lualib:Warn("on_item_dur_zero")
    lualib:Item_SetDurability(role,item,2)
end

--此示例代码运行成功后玩家的武器“神兵◆凤凰浴火”被删除，同时游戏内对话框和控制台会输出如下内容。

on_item_dur_zero_3.png

on_item_dur_zero.png

on_item_dur_zero_4.png
<上一篇:角色装备耐久为0时回调（扩展）下一篇:角色拾取道具时回调>
on_item_pickup
角色拾取道具时回调

更新时间：2022-05-05 00:00:00
此函数在角色拾取道具时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_pickup(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

uint16

 
道具的ID

strItemKey

string

 
道具的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
   
lualib:AddTrigger(map, lua_trigger_item_pickup, "on_item_pickup")  

function on_item_pickup(player, item, item_id, item_name)  
    if not lualib:Player_IsPlayer(player) then return end  
    if item_name ~= require_item then return end  

    local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)  
    if map == "" then return end  

    local item_ = CItem:new()  
    item_:init(item_name)  
    item_:pickup_event(player, map)  
    item_:pickup_notify(player)  
end
<上一篇:角色装备耐久为0时回调下一篇:角色物品时效到期时回调>
on_item_timeup
角色物品时效到期时回调

更新时间：2022-05-05 00:00:00
此函数在角色物品时效到期时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_timeup(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_item_timeup(role, item, item_id, item_key)      
    print(lualib:Name(role).."的道具["..lualib:Name(item).."]过期了")  
end
<上一篇:角色拾取道具时回调下一篇:角色物品使用次数为0时回调>
on_item_use_zero
角色物品使用次数为0时回调

更新时间：2022-05-05 00:00:00
此函数在角色物品使用次数为0时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_item_use_zero(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_item_use_zero(role, item, item_id, item_key)      
    print(lualib:Name(role).."的道具["..lualib:Name(item).."]使用次数为0")  
end
<上一篇:角色物品时效到期时回调下一篇:角色使用道具前回调>
on_pre_item_apply
角色使用道具前回调

更新时间：2022-05-05 00:00:00
此函数在角色使用道具前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_item_apply(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

uint16

 
道具的ID

strItemKey

string

 
道具的索引名（KeyName）

返回值
bool

 
true允许角色使用道具

false阻止角色使用道具

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(map, lua_trigger_pre_item_apply, "on_trigger_pre_item_apply")  

function on_trigger_pre_item_apply(player, item, item_id, item_name)  
    if item_name ~= require_item then return true end  

    local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)  
    local map_ = CMap:new()  
    map_:init(map)  

    local count = map_:get_count()  
    if count == 0 then  
        local item_ = CItem:new()  
        item_:init(require_item)  
        item_:drop_event(player, map)  
        lualib:DisableTimer(map, map_end_timer)  
        return true   
    else  
        lualib:SysMsg_SendWarnMsg(player, require_item.."构造太复杂了，"..count.."分钟后才可以打开！")  
        return false  
    end  
end
<上一篇:角色物品使用次数为0时回调下一篇:角色丢弃道具前回调>
on_pre_item_drop
角色丢弃道具前回调

更新时间：2022-05-05 00:00:00
此函数在角色丢弃道具前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_item_drop(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

uint16

 
道具的ID

strItemKey

string

 
道具的索引名（KeyName）

返回值
bool

 
true允许角色丢弃道具

false阻止角色丢弃道具

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_item_drop(player, item, item_id, item_key)    
    if item_key == "XXX" then         
        lualib:SysWarnMsg(player, "该道具不能丢弃")          
        return false      
    end      
    return true  
end
<上一篇:角色使用道具前回调下一篇:物品移动前回调>
on_pre_item_move
物品移动前回调

更新时间：2022-01-04 00:00:00
此函数在物品移动前回调。

非系统级回调，需要手动添加触发器。

参考eTriggerType

语法
Luacopy 复制
on_pre_item_move(
    strRole,
    strItem,
    wItemID,
    strItemKey,
    dst_site
)
参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

dst_site

uint16

 
目标装备位

具体请参见角色装备位类型定义页面

返回值
bool

 
true允许移动物品

false不允许移动物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 465, "on_pre_item_move")

function on_pre_item_move(role, item, item_id, item_key, dst_site)
    lualib:Warn("role = "..lualib:Name(role))
    lualib:Warn("item = "..lualib:Name(item))
    lualib:Warn("item_id = "..item_id)
    lualib:Warn("item_key = "..item_key)
    lualib:Warn("dst_site = "..dst_site)
    return false --不允许物品移动
end

--此示例代码运行成功如下图所示，同时游戏内对话框中还会打印相关内容。

on_pre_item_move.png

on_pre_item_move_2.png
<上一篇:角色丢弃道具前回调下一篇:角色拾取道具前回调>
on_pre_item_pickup
角色拾取道具前回调

更新时间：2022-05-05 00:00:00
此函数在角色拾取道具前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_item_pickup(
    strRole,
    strItem,
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

uint16

 
道具的ID

strItemKey

string

 
道具的索引名（KeyName）

返回值
bool

 
true允许角色拾取道具

false阻止角色拾取道具

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_item_pickup(player, item, item_id, item_key)      
    if item_key == "XXX" then          
        lualib:SysWarnMsg(player, "你不能拾取该道具")          
        return false      
    else          
        return true      
    end  
end
<上一篇:物品移动前回调下一篇:道具自检时回调>
on_timer_check
道具自检时回调

更新时间：2021-09-07 00:00:00
此函数在道具自检时回调。

系统级回调，不需要手动添加触发器。

参考 eTriggerType

note_icon 备注
只有属于玩家的道具才会触发自检回调。

语法
Luacopy 复制
on_timer_check(
    strItem
)

参数
strItem

string

 
道具的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--神歌.lua

local castle_weapon = "神歌"

function on_timer_check(item)
    local self = lualib:Item_GetRole(item)
    if self == "" then return end

    local count = lualib:ItemCountByKey(self, castle_weapon, true, true, true, 2)
    if count > 1 then 
        if not lualib:DelItemEx(self, castle_weapon, count - 1, 2, true, true, true, true, "删物品：神歌自检", "神歌") then
            lualib:SysMsg_SendWarnMsg(self, "扣除道具失败")
            return 
        end
        --lualib:DelItem(self, castle_weapon, count - 1, 2, "删物品：神歌自检", "神歌")
        lualib:SysMsg_SendWarnMsg(self, "这世间只有一把神歌！")
    end

    local weapon_owner = lualib:IO_GetCustomVarStr("神歌城_leader_weapon")
    if weapon_owner ~= self then 
        if not lualib:Item_Destroy(self, item, "删物品：神歌自检", "神歌") then
            lualib:SysMsg_SendWarnMsg(self, "扣除道具失败")
            return
        end

        lualib:SysMsg_SendWarnMsg(self, "镇城神器神歌已另择良主，望你好自为之！")
        lualib:SysMsg_SendCenterMsg(1, "镇城神器神歌已另择良主，玩家"..lualib:Name(self).."失去了对它的拥有权！", "")
        return
    end
end
<上一篇:角色拾取道具前回调下一篇:角色使用道具等级检查回调>
on_use_item_level_check
角色使用道具等级检查回调

更新时间：2025-12-31 15:39:00
此函数在角色使用道具等级检查回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_use_item_level_check(
    strRole,
    strItem, 
    wItemID,
    strItemKey
)

参数
strRole

string

 
角色的GUID

strItem

string

 
道具的GUID

wItemID

string

 
道具的ID

strItemKey

UINT16

 
道具的GUID

返回值
bool

 
true通过等级检查允许使用

false未通过等级检查阻止使用

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--添加触发器
lualib:AddTrigger("0", lua_trigger_use_item_level_check, "on_use_item_level_check")

function on_use_item_level_check(role,item_guid,item_id ,keyName)
    
    lualib:SysMsg_SendBroadcastMsg("role："..role, "")
    lualib:SysMsg_SendBroadcastMsg("item_id："..item_guid, "")
    lualib:SysMsg_SendBroadcastMsg("item_id："..item_id, "")
    lualib:SysMsg_SendBroadcastMsg("keyName："..keyName, "")
    return true
end

--执行示例代码，如下图所示，通过等级检查允许使用。

on_use_item_level_check.png
<上一篇:道具自检时回调
on_family_member_ntf
行会事件触发回调

更新时间：2022-02-10 00:00:00
此函数在行会增加成员、删除成员和编辑成员封号时都会触发回调。

参考 eTriggerType

语法
Luacopy 复制
on_family_member_ntf(
    family_guid,
    family_name,
    player_guid,
    opt,
    player_name,
    operator_guid
)

参数
family_guid

string

 
行会的GUID

family_name

string

 
行会名称

player_guid

string

 
玩家角色的GUID

note_icon 备注
此参数是指被执行“增加成员”、“删除成员”和“编辑成员封号”操作的玩家的GUID。

opt

uint32

 
事件类型

1添加成员

2删除成员

3编辑成员封号

player_name

string

 
玩家的名字

note_icon 备注
此参数是指被执行“增加成员”、“删除成员”和“编辑成员封号”操作的玩家的名字。

operator_guid

string

 
操作者的GUID

note_icon 备注
此参数是指执行“增加成员”、“删除成员”和“编辑成员封号”操作的玩家的GUID。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数player_name玩家的名字

 
v1.2

 
新增参数operator_guid操作者的GUID

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_family_member_ntf, "on_family_member_ntf")

function on_family_member_ntf(family_guid, family_name, player_guid, opt, player_name, operator_guid)
    lualib:Warn("行会的GUID : "..family_guid)
    lualib:Warn("行会名称 : "..family_name)
    lualib:Warn("玩家的GUID : "..player_guid)
    lualib:Warn("事件类型 : "..opt)
    lualib:Warn("玩家名字 : "..player_name)
    lualib:Warn("操作者的GUID : "..operator_guid)
end

--此示例代码运行成功如下图所示。

on_family_member_ntf_2.png
下一篇:行会公告改变时回调>
on_family_notice_changed
行会公告改变时回调

更新时间：2021-09-07 00:00:00
此函数在行会公告改变时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_family_notice_changed(
    family_name,
    family_notice
)

参数
family_name

string

 
行会名称

family_notice

string

 
行会公告内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:行会事件触发回调下一篇:行会事件给客户端发送消息时回调>
on_family_ntf_msg
行会事件给客户端发送消息时回调

更新时间：2021-10-19 00:00:00
此函数在行会事件给客户端发送消息时回调，可自定义发送的消息内容。

语法
Luacopy 复制
on_family_ntf_msg(
    player_guid,
    target_guid,
    type
)
参数
player_guid

string

 
玩家角色的GUID

target_guid

string

 
最近一次攻击的角色的GUID

note_icon 备注
若玩家未攻击其他角色，则此参数为0。

type

uint8

 
事件类型

0行会成员死亡

返回值
string

 
发送给客户端的消息内容

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 461, "on_family_ntf_msg")

function on_family_ntf_msg(player_guid, target_guid, type)
    lualib:Warn("角色："..player_guid)
    if target_guid ~= 0 then
        lualib:Warn("最近攻击的角色："..lualib:Name(target_guid))
    else
        lualib:Warn("最近攻击的角色：系统")
    end
    if type == 0 then
        lualib:Warn("事件类型 0：行会成员死亡")
    end
    return "测试发送行会信息"
end

--此示例代码运行成功如下图所示。

on_family_ntf_msg.png

on_family_ntf_msg_2.png
<上一篇:行会公告改变时回调下一篇:行会创建和销毁时回调>
on_family_ntf
行会创建和销毁时回调

更新时间：2021-09-07 00:00:00
此函数在行会创建和销毁时回调。

参考 eTriggerType

语法
Luacopy 复制
on_family_ntf(
    family_guid,
    family_name,
    opt_type,
    player_guid
)

参数
family_guid

string

 
行会的GUID

family_name

string

 
行会名称

opt_type

uint8

 
事件类型

0行会销毁

1行会创建

player_guid

string

 
创建或销毁行会的玩家GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:行会事件给客户端发送消息时回调下一篇:行会关系发生变化时回调>
on_family_relation_change
行会关系发生变化时回调

更新时间：2021-12-01 00:00:00
此函数在行会关系发生变化时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_family_relation_change(
    family1_guid,
    family1_name,
    family2_guid,
    family2_name,
    type
)
参数
family1_guid

string

 
行会1的GUID

family1_name

string

 
行会1的名称

family2_guid

string

 
行会2的GUID

family2_name

string

 
行会2的名称

type

uint8

 
行会关系变更类型

1建立结盟关系

2解除结盟关系

3建立敌对关系

4解除敌对关系

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

on_family_relation_change.png
lualib:AddTrigger("0", 462, "on_family_relation_change")

function on_family_relation_change(family1_guid, family1_name, family2_guid, family2_name, type)
    if lualib:Name(family1_guid) == family1_name and lualib:Name(family2_guid) == family2_name then
        if type == 1 then
            lualib:Warn(family1_name.." 与 "..family2_name.." 建立联盟")
        elseif type == 2 then
            lualib:Warn(family1_name.." 与 "..family2_name.." 解除结盟")
        elseif type == 3 then
            lualib:Warn(family1_name.." 与 "..family2_name.." 建立敌对")
        elseif type == 4 then
            lualib:Warn(family1_name.." 与 "..family2_name.." 解除敌对")
        end
    end
end

--此示例代码运行成功如下图所示。

on_family_relation_change_2.png
<上一篇:行会创建和销毁时回调下一篇:玩家加入行会前回调>
on_pre_add_family
玩家加入行会前回调

更新时间：2022-11-25 00:00:00
此函数在玩家加入行会前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_add_family(
    family_guid,
    family_name,
    player_guid,
    player_name,
    level,
    job,
    operator_guid
)
参数
family_guid

string

 
行会的GUID

family_name

string

 
行会的名字

player_guid

string

 
玩家角色的GUID

player_name

string

 
玩家角色的名字

level

uint32

 
玩家角色的等级

job

uint8

 
玩家角色的职业

1战士

2法师

3术士

operator_guid

string

 
操作者的GUID

返回值
bool

 
true加入行会成功

false加入行会失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 477, "on_pre_add_family")

function on_pre_add_family(family_guid,family_name,player_guid,player_name,level,job,operator_guid)
    lualib:Warn("行会的GUID为"..family_guid)
    lualib:Warn("行会的名字为"..family_name)
    lualib:Warn("玩家的GUID为"..player_guid)
    lualib:Warn("玩家的名字为"..player_name)
    lualib:Warn("玩家的等级为"..level)
    lualib:Warn("玩家的职业为"..job)
    lualib:Warn("操作者的GUID为"..operator_guid)
    
    return true --允许玩家加入行会
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

on_pre_add_family_2.png

on_pre_add_family.png
<上一篇:行会关系发生变化时回调下一篇:行会解散前回调>
on_pre_family_destroy
行会解散前回调

更新时间：2022-03-18 00:00:00
此函数在行会解散前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_family_destroy(
    player_guid,
    family_guid,
    family_name
)
参数
player_guid

string

 
行会会长的GUID

family_guid

string

 
行会的GUID

family_name

string

 
行会的名称

返回值
bool

 
是否解散行会

true解散行会

false不解散行会

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 466, "on_pre_family_destroy")

function on_pre_family_destroy(player, family, family_name)
    lualib:SysGuildMsg(family, lualib:Name(player).."*解散行会*"..family_name)
    return true --解散行会
end

--此示例代码运行成功如下图所示。

on_pre_family_destroy.png
<上一篇:玩家加入行会前回调下一篇:邀请玩家加入行会前回调>
on_pre_invite_family
邀请玩家加入行会前回调

更新时间：2021-09-07 00:00:00
此函数在邀请玩家加入行会前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_invite_family(
    player_guid,
    invite_name
)

参数
player_guid

string

 
邀请玩家的guid

invite_name

string

 
被邀请玩家的名字

返回值
bool

 
true允许此协议发送给中央服务器处理。

false阻止此协议转发。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:行会解散前回调下一篇:玩家申请加入行会前触发>
on_pre_join_family
玩家申请加入行会前触发

更新时间：2021-09-07 00:00:00
此函数在玩家申请加入行会前触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_join_family(
    player_guid,
    family_guid
)

参数
player_guid

string

 
要申请加入玩家的guid

family_guid

string

 
要加入行会的guid

返回值
bool

 
true允许此协议发送给中央服务器处理。

false阻止此协议转发。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:邀请玩家加入行会前回调下一篇:行会建立联盟或者敌对关系前回调>
on_pre_relate_family
行会建立联盟或者敌对关系前回调

更新时间：2021-09-07 00:00:00
此函数在行会建立联盟或者敌对关系前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_relate_family(
    my_family_name,
    other_family_name,
    relationship
)

参数
my_family_name

string

 
自己行会名称

other_family_name

string

 
要联盟或者敌对的行会名称

relationship

uint8

 
关系

1联盟

2敌对

返回值
bool

 
true允许行会联盟或者敌对。

false不允许行会联盟或者敌对。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家申请加入行会前触发
on_equip_distinguish_sites
玩家穿戴装备需要区别装备位时的触发

更新时间：2023-03-29 00:00:00
此函数为玩家穿戴装备需要区别装备位时的触发，用于戒指、护腕等需要区别左右的装备，可由脚本决定将其装备到左边或者右边。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_equip_distinguish_sites(
    playey_guid,
    item_guid,
    dest_site
)
参数
playey_guid

string

 
玩家角色的GUID

item_guid

string

 
要穿戴的装备的GUID

dest_site

uint16

 
要穿戴装备的目标位置

note_icon 备注
由客户端发起的穿戴如果程序有提供装备位，则此参数的值为程序已定义的装备位对应的枚举值，否则此参数的值为0。

若为鼠标左键发起的穿戴且穿戴的装备位为程序已定义的装备位，则此参数的值为鼠标左键所选择的装备位对应的枚举值；

若为鼠标右键发起的穿戴且穿戴的装备位为程序已定义的装备位，则此参数的值为装备当前穿戴的装备位对应的枚举值（装备穿戴的装备位会按照先左后右的顺序依次交替）；

若使用其他方式穿戴装备（例如将装备穿戴到自定义装备位上），则此参数的值为0。

返回值
int32

 
要穿戴的装备位

0使用引擎默认逻辑

其他返回具体装备位

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数dest_site要穿戴装备的目标位置

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_equip_distinguish_sites, "on_equip_distinguish_sites")

function on_equip_distinguish_sites(player,item)
    if lualib:Item_GetType(player,item) == lua_item_type_equip and lualib:Item_GetSubType(player,item) == lua_equip_wrist then
        --将护腕装备到左边
        return lua_site_wrist_0
    end
    if lualib:Item_GetType(player,item) == lua_item_type_equip and lualib:Item_GetSubType(player,item) == lua_equip_ring then
        --将戒指装备到右边
        return lua_site_ring_1
    end
    --使用引擎默认逻辑
    return 0
end

--此示例代码运行成功如下图所示。

on_equip_distinguish_sites.png
--测试参数dest_site
lualib:AddTrigger("0",lua_trigger_equip_distinguish_sites, "on_equip_distinguish_sites")

function on_equip_distinguish_sites(player, item, dest_site)
    lualib:Warn("原先目标位置："..dest_site)
    return dest_site
end

--使用鼠标左键发起的穿戴（护腕），参数dest_site的值为所选择的装备位对应的枚举值。

on_equip_distinguish_sites_3.png

--使用鼠标右键发起的穿戴（戒指），参数dest_site的值为戒指当前穿戴的装备位对应的枚举值（先左后右依次交替）。

on_equip_distinguish_sites_4.png

--将装备穿戴到自定义装备位上，参数dest_site的值为0。

on_equip_distinguish_sites_2.png
下一篇:角色穿上套装时回调>
on_equip_suit
角色穿上套装时回调

更新时间：2021-09-07 00:00:00
此函数在角色穿上套装时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_equip_suit(
    strRole,
    wSuitID
)

参数
strRole

string

 
角色的GUID

wSuitID

uint16

 
套装ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_equip_suit(role, suit_id)      
    print(lualib:Name(role).."穿齐了套装[ID:"..suit_id.."]")  
end
<上一篇:玩家穿戴装备需要区别装备位时的触发下一篇:角色穿戴装备回调>
on_post_equip
角色穿戴装备回调

更新时间：2022-05-05 00:00:00
此函数在角色穿戴装备回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_equip(
    strRole,
    strEquip,
    wEquipID,
    strEquipKey
)

参数
strRole

string

 
角色的GUID

strEquip

string

 
装备的GUID

wEquipID

uint16

 
装备的ID

strEquipKey

string

 
装备的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
   
function on_post_equip(player, item)  
    --省略部分代码  
    lualib:AddTimerEx(player, 928, 1, 1, "on_post_equip_ex", item)  
    return  
    --省略部分代码  
end
<上一篇:角色穿上套装时回调下一篇:角色脱下装备时回调>
on_post_un_equip
角色脱下装备时回调

更新时间：2022-05-05 00:00:00
此函数在角色脱下装备时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_post_un_equip(
    strRole,
    strEquip,
    wEquipID,
    strEquipKey
)

参数
strRole

string

 
角色的GUID

strEquip

string

 
装备的GUID

wEquipID

uint16

 
装备的ID

strEquipKey

string

 
装备的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_post_un_equip(player, item)  
    local keyname_req = "霸下玄龟"<span class="Apple-tab-span" style="white-space:pre"> </span>--装备的道具keyname  
    local keyname = lualib:KeyName(item)  
    local servant_Tb = {"坐骑召唤兽1", "坐骑召唤兽2", "坐骑召唤兽3", "坐骑召唤兽4", "坐骑召唤兽5"}  
    local has_servant = false  

    if keyname == keyname_req then  
        lualib:DisableTimer(player, 929)<span class="Apple-tab-span" style="white-space:pre"> </span>  
        if lualib:HasBuff(player, "辐射") then  
            lualib:DelBuff(player, "辐射")  
        end  

        local servants = lualib:Player_GetServantList(player)  
        if #servants ~= 0 then  
            for _, v in pairs(servants) do  
                for i = 1, 5 do  
                    if lualib:KeyName(v) == servant_Tb[i] then  
                        lualib:SetStr(player, "servant_called", v)  
                        has_servant = true  
                        break  
                    end  
                end  

                if has_servant then  
                    break  
                end  
            end  
        end  

        local servant = lualib:GetStr(player, "servant_called")  
        if servant ~= "" then  
            if lualib:Monster_IsExist(servant) then  
                if lualib:Monster_Remove(servant) then  
                    lualib:SetStr(player, "servant_called", "")  
                else  
                    lualib:Error("玩家["..lualib:Name(player).."]移除召唤兽["..servant.."]失败")  
                end  
            end  
        end  
    end  
    return  
end
<上一篇:角色穿戴装备回调下一篇:角色穿戴装备之前回调>
on_pre_equip
角色穿戴装备之前回调

更新时间：2022-04-12 00:00:00
此函数在角色穿戴装备之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_equip(
    strRole,
    strEquip,
    wEquipID,
    strEquipKey,
    dst_site
)

参数
strRole

string

 
角色的GUID

strEquip

string

 
装备的GUID

wEquipID

uint16

 
装备的ID

strEquipKey

string

 
装备的索引名（KeyName）

dst_site

uint16

 
目标装备位

具体请参见角色装备位类型定义页面

返回值
bool

 
true允许玩家穿装备

false阻止玩家穿装备

版本历史
v1.0

 
首次发布

v1.1

 
新增参数dst_site目标装备位

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_pre_equip, "on_pre_equip") --穿装备之前触发  
       
function on_pre_equip(player, strEquip, wEquipID, strEquipKey, dst_site)
    lualib:SysWarnMsg(player, "strEquip = "..strEquip)
    lualib:SysWarnMsg(player, "wEquipID = "..wEquipID)
    lualib:SysWarnMsg(player, "strEquipKey = "..strEquipKey)
    lualib:SysWarnMsg(player, "dst_site = "..dst_site)

    return true
end

--此示例代码运行成功如下图所示。

on_pre_equip.png
<上一篇:角色脱下装备时回调下一篇:角色装备耐久值发生变化前回调>
on_pre_modify_item_dur
角色装备耐久值发生变化前回调

更新时间：2023-09-11 00:00:00
此函数为角色装备耐久值发生变化前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_modify_item_dur(
    strRole,
    strItem,
    wItemID,
    strItemKey,
    dur,
    old_dur
)
参数
strRole

string

 
角色的GUID

strItem

string

 
物品的GUID

wItemID

uint16

 
物品的ID

strItemKey

string

 
物品的索引名（KeyName）

dur

uint32

 
物品的新耐久值，即发生变化后的耐久值

old_dur

uint32

 
物品的当前耐久值，即发生变化前的耐久值

返回值
int

 
最终修改后的耐久值

版本历史
v1.0

 
首次发布

 
v1.1

 
增加参数old_dur

示例代码
Luacopy 复制
function main(npc, player) 
    item = lualib:Weapon(player)  --获取玩家当前装备的武器
    lualib:Item_SetDurability("",item,2000) --设置该物品的当前耐久值为2000
end

lualib:AddTrigger("0",475, "on_pre_modify_item_dur")

function on_pre_modify_item_dur(role,item,id,keyname,num, old_num)
    lualib:Warn("装备耐久度触发器触发成功了")
    lualib:Warn("玩家GUID为"..role)
    lualib:Warn("物品GUID为"..item)
    lualib:Warn("物品ID为"..id)
    lualib:Warn("物品索引名为"..keyname)
    lualib:Warn("物品的新耐久值为"..num)
    lualib:Warn("物品的当前耐久度为"..old_num)
    
    if keyname == "战士100红武器" then
        num = num - 500
    end
    
    return num --最终修改后的耐久值为1500
end

--此示例代码运行成功如下图所示。


on_pre_modify_item_dur
<上一篇:角色穿戴装备之前回调下一篇:角色脱下装备之前回调>
on_pre_un_equip
角色脱下装备之前回调

更新时间：2022-08-19 00:00:00
此函数在角色脱下装备之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_un_equip(
    strRole,
    strEquip,
    wEquipID,
    strEquipKey
)

参数
strRole

string

 
角色的GUID

strEquip

string

 
装备的GUID

wEquipID

uint16

 
装备的ID

strEquipKey

string

 
装备的索引名（KeyName）

source

int

 
触发来源

0系统触发（例如：玩家死亡掉落装备）

1客户端触发（例如：玩家在客户端主动脱下装备）

2脚本触发（例如：使用接口TakeOff让玩家脱下装备的操作）

返回值
bool

 
true允许玩家脱下装备

false阻止玩家脱下装备

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数source触发来源

示例代码
Luacopy 复制
lualib:AddTrigger("0", 303, "on_pre_un_equip")

function on_pre_un_equip(player,item,item_id,key,source)
    lualib:Warn(player)
    lualib:Warn(item)
    lualib:Warn(item_id)
    lualib:Warn(key)
    lualib:Warn(source)
    return true
end

--当玩家死亡掉落装备时，此示例代码运行成功如下图所示（触发来源为0）。

on_pre_un_equip.png
<上一篇:角色装备耐久值发生变化前回调下一篇:角色脱下套装时回调>
on_un_equip_suit
角色脱下套装时回调

更新时间：2021-09-07 00:00:00
此函数在角色脱下套装时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_un_equip_suit(
    strRole,
    wSuitID
)

参数
strRole

string

 
角色的GUID

wSuitID

uint16

 
套装ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_un_equip_suit(role, suit_id)      
    print(lualib:Name(role).."脱下了套装[ID:"..suit_id.."]")  

end
<上一篇:角色脱下装备之前回调
on_join_team
玩家组队回调

更新时间：2023-03-29 00:00:00
此函数在玩家组队时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_join_team(
    strPlayer,
    team_guid
)

参数
strPlayer

string

 
玩家角色的GUID

team_guid

string

 
队伍的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数team_guid队伍的GUID

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_join_team,"on_join_team")

function on_join_team(player,guid)
    lualib:Warn("加入队伍的玩家为"..lualib:Guid2Name(player)) --获取组队玩家的名字
    lualib:Warn("队伍的GUID为"..guid)
end

--此示例代码运行成功如下图所示。

on_join_team.png
下一篇:玩家离队回调>
on_leave_team
玩家离队回调

更新时间：2023-03-29 00:00:00
此函数在玩家离队时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_leave_team(
    strPlayer,
    team_guid
)

参数
strPlayer

string

 
玩家角色的GUID

team_guid

string

 
队伍的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数team_guid队伍的GUID

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_leave_team,"on_leave_team")

function on_leave_team(player,guid)
    lualib:Warn("离开队伍的玩家为"..lualib:Guid2Name(player)) --获取离开队伍玩家的名字
    lualib:Warn("队伍的GUID为"..guid)
end

--此示例代码运行成功如下图所示。

on_leave_team.png
<上一篇:玩家组队回调下一篇:玩家离队前回调>
pre_leave_team
玩家离队前回调

更新时间：2025-09-10 17:14:00
此函数玩家离队前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
lualib:pre_leave_team(
    strPlayer,
    team_guid
)
参数
strPlayer

string

 
玩家guid

team_guid

string

 
队伍guid

返回值
bool

 
是否可以离队

true可以离队

false不可以离队

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制

lualib:AddTrigger("0",485, "pre_leave_team")
function pre_leave_team(player,team_guid)
    lualib:Warn("将要离开队伍的玩家为"..lualib:Guid2Name(player))
    lualib:Warn("队伍guid为"..team_guid)
    
    return false
end
pre_leave_team.png

--当回调函数返回false，点击“离开队伍”，未退出组队状态。
pre_leave_team_2.png
pre_leave_team_3.png

--当回调函数返回true，点击“离开队伍”，成功退出组队状态。
pre_leave_team_4.png
<上一篇:玩家离队回调
on_npc_appear
NPC出现在地图时回调

更新时间：2021-09-07 00:00:00
此函数在NPC出现在地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_npc_appear(
    strNPC,
    wNPCID,
    strNPCName,
    wX,
    wY
)

参数
strNPC

string

 
NPC的GUID

wNPCID

uint16

 
NPC的ID

strNPCName

string

 
NPC的Name

wX

uint16

 
NPC的X坐标

wY

uint16

 
NPC的Y坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(map, lua_trigger_npc_appear, "on_npc_appear")    
function on_npc_appear(npc, id, name, x, y)      --  
end
下一篇:玩家在NPC购买之后回调>
on_npc_buy
玩家在NPC购买之后回调

更新时间：2024-12-06 00:00:00
此函数玩家在NPC购买之后回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
lualib:on_npc_buy(
    strPlayer,
    strItemKey,
    iNum,
    iPrice,
    type,
    strNpc,
    buy_item_guid
)
参数
strPlayer

string

 
玩家的GUID

strItemKey

string

 
道具的索引名（KeyName）

iNum

INT32

 
购买数量

iPrice

INT32

 
购买总价

type

UINT8

 
购买货币类型

0经验

1元宝

2绑定元宝

3积分

4金币

5绑定金币

strNpc

string

 
NPC的GUID

table

buy_item_guid

 
购买物品的GUID的列表，可以用for循环遍历

返回值
bool

 
true允许玩家购买。

false阻止玩家购买。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_npc_buy,"on_npc_buy")
function on_npc_buy(player,strItemKey,iNum,iPrice,type,strNpc,buy_item_guid)
    lualib:Warn("玩家在NPC购买之后回调")
    for i = 1, #buy_item_guid do
        lualib:Warn("购买物品的GUID："..buy_item_guid[i])
    end
    return true
end

--在使用CQ风格的NPC商店和不使用CQ风格的NPC商店时，都正常打印出购买物品的GUID

--在使用CQ风格的NPC商店如图所示。
on_npc_buy.png
on_npc_buy_2.png

--不使用CQ风格的NPC商店时如图所示。
on_npc_buy_3.png
on_npc_buy_4.png
on_npc_buy_5.png
<上一篇:NPC出现在地图时回调下一篇:NPC消失在地图时回调>
on_npc_disappear
NPC消失在地图时回调

更新时间：2021-09-07 00:00:00
此函数在NPC消失在地图时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_npc_disappear(
    strNPC,
    wNPCID,
    strNPCName,
    wX,
    wY
)

参数
strNPC

string

 
NPC的GUID

wNPCID

uint16

 
NPC的ID

strNPCName

string

 
NPC的Name

wX

uint16

 
NPC的X坐标

wY

uint16

 
NPC的Y坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_npc_disappear(npc, npc_id, npc_key, npc_x, npc_y)  
    npc_count = npc_count - 1  
    if npc_count > 0 then  
        lualib:SysMsg_SendMapMsg(map_guid, "还剩"..npc_count.."只宝箱, 抓紧时间继续努力!")  
    else   
        lualib:DisableTimer(map_guid, 2)  
        lualib:Map_ClearMonster(map_guid, 38, 47, 25, monster_keyname, false, false)  

        lualib:AddTrigger(map_guid, lua_trigger_post_die, "on_post_die")  

        lualib:RemoveTrigger(map_guid, lua_trigger_npc_disappear, "on_npc_disappear")  
    end  
end
<上一篇:玩家在NPC购买之后回调下一篇:玩家从NPC处购买物品之前回调>
on_pre_npc_buy
玩家从NPC处购买物品之前回调

更新时间：2022-05-05 00:00:00
此函数在玩家从NPC处购买物品之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_npc_buy(
    strPlayer,
    strItemKey,
    iNum,
    iPrice,
    type,
    strNpc
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
道具的索引名（KeyName）

iNum

int32

 
购买数量

iPrice

int32

 
购买总价

type

uint8

 
购买货币类型

0经验

1元宝

2绑定元宝

3积分

4金币

5绑定金币

strNpc

string

 
NPC的GUID

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
<上一篇:NPC消失在地图时回调下一篇:玩家在NPC二手商店购买之前回调>
on_pre_npc_taobao_buy
玩家在NPC二手商店购买之前回调

更新时间：2025-09-10 17:14:00
此函数在玩家在NPC二手商店购买之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_npc_taobao_buy(
    strPlayer,
    strItemKey,
    iPrice,
    strNpc
)
参数
strPlayer

string

 
玩家的GUID

strItemKey

string

 
道具的KeyName

iPrice

int32

 
购买总价

strNpc

string

 
NPC的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--添加触发器on_pre_npc_taobao_buy，玩家在NPC二手市场卖出物品，再创建一个玩家来购买物品

lualib:AddTrigger("0", lua_trigger_pre_npc_taobao_buy, "on_pre_npc_taobao_buy")
function on_pre_npc_taobao_buy(strPlayer,strItemKey,iPrice,strNpc)
    lualib:Warn("玩家在NPC二手商店购买之前触发了"..iPrice)
    return false
end

on_pre_npc_taobao_buy.png

--触发器on_pre_npc_taobao_buy成功触发后

on_pre_npc_taobao_buy_2.png
<上一篇:玩家从NPC处购买物品之前回调
on_castle_war_end
攻城战关闭时回调

更新时间：2021-09-07 00:00:00
此函数在攻城战关闭时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_castle_war_end(
    strCastleName,
    strCastle,
    strBasilica
)

参数
strCastleName

string

 
攻城城堡的名字

strCastle

string

 
攻城城堡的GUID

strBasilica

string

 
攻城城堡皇宫的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_castle_war_end, "on_castle_war_end") 

    function on_castle_war_end(castle_name, dst_map_guid, basilica_map_guid)
    --省略部分代码
    lualib:SysMsg_SendBroadcastMsg("["..castle_name.."]攻城战结束了！", "系统通知") 
    local own_family = lualib:GetCastleOwnFamily(castle_name) 
    if own_family ~= "" then
        lualib:IO_SetCustomVarInt("castlewar_sgc_flag", 1) --灵元秘境要使用 
        lualib:SysMsg_SendBroadcastMsg("["..castle_name.."]被".."["..own_family.."]行会占领了！", "系统通知") 
    end
    --省略部分代码 
end
下一篇:攻城战申请成功时回调>
on_castle_war_init
攻城战申请成功时回调

更新时间：2021-09-07 00:00:00
此函数在攻城战申请成功时回调。

如果攻城战申请成功后系统重启了，则系统重启后也会回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_castle_war_init(
    strCastleName,
    strCastle,
    strBasilica
)

参数
strCastleName

string

 
攻城城堡的名字

strCastle

string

 
攻城城堡的GUID

strBasilica

string

 
攻城城堡皇宫的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:攻城战关闭时回调下一篇:攻城战开启时回调>
on_castle_war_start
攻城战开启时回调

更新时间：2021-09-07 00:00:00
此函数在攻城战开启时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_castle_war_start(
    strCastleName,
    strCastle,
    strBasilica
)

参数
strCastleName

string

 
攻城城堡的名字

strCastle

string

 
攻城城堡的GUID

strBasilica

string

 
攻城城堡皇宫的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_castle_war_start, "on_castle_war_start") 

function on_castle_war_start(castle_name, dst_map_guid, basilica_map_guid)
    --省略部分代码
    lualib:SysMsg_SendBroadcastMsg("["..castle_name.."]攻城战开始了！", "系统通知") 
    if not lualib:Map_ClearDgnItem(dst_map_guid) then
        lualib:Error("城堡地图GUID不存在！") 
        return 
    end
    --省略部分代码 
end
<上一篇:攻城战申请成功时回调
on_bangcle_hack_rpt
梆梆收到外挂报告时回调

更新时间：2021-09-07 00:00:00
此函数在梆梆收到外挂报告时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_bangcle_hack_rpt(
    strPlayer,
    strReport
)

参数
strPlayer

string

 
玩家的GUID

strReport

string

 
外挂报告内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:梆梆心跳超时回调>
on_bangcle_timeout
梆梆心跳超时回调

更新时间：2021-09-07 00:00:00
此函数在梆梆心跳超时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_bangcle_timeout(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:梆梆收到外挂报告时回调下一篇:GameGuard外挂检测失败时回调>
on_game_guard_check
GameGuard外挂检测失败时回调

更新时间：2021-09-07 00:00:00
此函数在GameGuard外挂检测失败时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_game_guard_check(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:梆梆心跳超时回调下一篇:GameGuard收到外挂报告时回调>
on_game_guard_hack_rpt
GameGuard收到外挂报告时回调

更新时间：2021-09-07 00:00:00
此函数在GameGuard收到外挂报告时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_game_guard_hack_rpt(
    strPlayer,
    strReport
)

参数
strPlayer

string

 
玩家的GUID

strReport

string

 
外挂报告内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:GameGuard外挂检测失败时回调下一篇:玩家检测到外挂行为时回调>
on_gp
玩家检测到外挂行为时回调

更新时间：2021-09-07 00:00:00
此函数在玩家检测到外挂行为时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_gp(
    strPlayer,
    iGPRuntime,
    iGPTotal,
    iAvgTick
)

参数
strPlayer

string

 
玩家的GUID

iGPRuntime

int32

 
当前违规行为次数

iGPTotal

int32

 
违规行为的总次数

iAvgTick

int32

 
单次违规差值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_gp, "on_gp") 

function on_gp(player, gp_runtime, gp, diff_avg_tick) 
    local content = "请爱护游戏环境！["..lualib:Name(player).."] 使用外挂，已被系统记录在案。"
    lualib:SysMsg_SendBroadcastMsg(content, "系统通知")
    lualib:SetFbdLogin(lualib:Name(player), 2, 600, content)
    lualib:KickByName(lualib:Name(player), 2, "外挂踢人")
end
<上一篇:GameGuard收到外挂报告时回调下一篇:客户端外挂检测时回调2>
on_hack_check2
客户端外挂检测时回调2

更新时间：2021-09-07 00:00:00
此函数在客户端外挂检测时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_hack_check2(
    strPlayer,
    c1,
    c2,
    c3,
    c4,
    c5,
    c6,
    c7,
    c8
)

参数
strPlayer

string

 
玩家的GUID

c1

int32

 
由客户端决定

c2

int32

 
由客户端决定

c3

int32

 
由客户端决定

c4

int32

 
由客户端决定

c5

int32

 
由客户端决定

c6

int32

 
由客户端决定

c7

int32

 
由客户端决定

c8

int32

 
由客户端决定

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家检测到外挂行为时回调下一篇:客户端外挂检测时回调>
on_hack_check
客户端外挂检测时回调

更新时间：2021-09-07 00:00:00
此函数在客户端外挂检测时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_hack_check(
    strPlayer,
    right,
    wrong
)

参数
strPlayer

string

 
玩家的GUID

right

int32

 
非外挂权重

wrong

int32

 
外挂权重

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--system.lua的 on_system_start函数中加入    
lualib:AddTrigger("0", lua_trigger_hack_check, "on_hack_check");        
function on_hack_check(player, a, b)      
    if b > 10 then          
        lualib:DelayCall(player, 1000 * lualib:GenRandom(10, 30), "挂机检查", "")      
    end  
end    
function 挂机检查(player)       
    lualib:Error("系统怀疑你可能在使用挂机程序，请回答以下验证码"); --发送验证码给他, 或其它惩罚方法  
end
<上一篇:客户端外挂检测时回调2下一篇:易盾手游反外挂检测出异常时回调>
on_yidun_hack_rpt
易盾手游反外挂检测出异常时回调

更新时间：2022-07-18 00:00:00
此函数在易盾手游反外挂检测出异常时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数仅在选项“是否开启易盾手游反作弊”设置为“是”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

image_20210723142611.png
语法
Luacopy 复制
on_yidun_hack_rpt(
    user_id,
    role_name,
    report
)
参数
user_id

uint32

 
玩家的账号ID

role_name

string

 
角色的名字

report

string

 
易盾的反外挂报告内容

具体请参见开启易盾反外挂（手游）说明页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 444, "on_yidun_hack_rpt")

function on_yidun_hack_rpt(user_id,role_name,info)
    lualib:Warn(info)
end

--此示例代码运行成功如下图所示。

on_yidun_hack_rpt.png
<上一篇:客户端外挂检测时回调下一篇:易盾手游反外挂心跳超时时回调>
on_yidun_heartbeat_rpt
易盾手游反外挂心跳超时时回调

更新时间：2022-07-18 00:00:00
此函数在易盾手游反外挂心跳超时时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数仅在选项“是否开启易盾手游反作弊”设置为“是”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

image_20210723142611.png
语法
Luacopy 复制
on_yidun_heartbeat_rpt(
    player_guid,
    type
)
参数
player_guid

string

 
玩家角色的GUID

type

int

 
心跳报告超时类型

0心跳数据解析失败

1心跳超时

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 443, "on_yidun_heartbeat_rpt")

function on_yidun_heartbeat_rpt(player_guid, type)
    lualib:Warn("心跳报告超时")
    lualib:SysMsg_SendWarnMsg(player_guid,"心跳报告超时类型："..type)
end

--此示例代码运行成功如下图所示。

on_yidun_heartbeat_rpt_2.png

on_yidun_heartbeat_rpt.png
<上一篇:易盾手游反外挂检测出异常时回调下一篇:易盾端游反外挂检测出异常时回调>
on_yidun_pc_hack_rpt
易盾端游反外挂检测出异常时回调

更新时间：2022-07-18 00:00:00
此函数在易盾端游反外挂检测出异常时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数仅在选项“是否开启易盾端游反作弊”设置为“是”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

image_20210929164038.png
语法
Luacopy 复制
on_yidun_pc_hack_rpt(
    user_id,
    role_name,
    report
)
参数
user_id

uint32

 
玩家的账号ID

role_name

string

 
角色的名字

report

string

 
易盾的反外挂报告内容

具体请参见开启易盾反外挂（端游）说明页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--……省略部分代码

function on_system_start()

--……省略部分代码

    lualib:AddTrigger("0", 457, "on_yidun_pc_hack_rpt")

--……省略部分代码
end

--……省略部分代码

function on_yidun_pc_hack_rpt(user_id,role_name,info)
    local guid=lualib:UserId2Guid(user_id) --根据玩家账号ID获取当前角色GUID
    lualib:Warn("name = "..lualib:Name(guid)) --根据玩家的GUID获取玩家名称
    lualib:Warn("info = "..info)
    lualib:KickByName(role_name, 2, "使用外挂") --通过玩家名称踢出玩家
end

--……省略部分代码

--此示例代码运行成功如下图所示，同时会输出外挂报告内容。

on_yidun_pc_hack_rpt.png

on_yidun_pc_hack_rpt_2.png
<上一篇:易盾手游反外挂心跳超时时回调下一篇:易盾端游反外挂心跳超时时回调>
on_yidun_pc_heartbeat_rpt
易盾端游反外挂心跳超时时回调

更新时间：2022-07-18 00:00:00
此函数在易盾端游反外挂心跳超时时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

此回调函数仅在选项“是否开启易盾端游反作弊”设置为“是”时生效。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

image_20210929164038.png
语法
Luacopy 复制
on_yidun_pc_heartbeat_rpt(
    player_guid,
    type
)
参数
player_guid

string

 
玩家角色的GUID

type

int

 
心跳报告超时类型

0心跳数据解析失败

1心跳超时

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 460, "on_yidun_pc_heartbeat_rpt")

function on_yidun_pc_heartbeat_rpt(player_guid, type)
    lualib:Warn("心跳报告超时")
    lualib:SysMsg_SendWarnMsg(player_guid,"心跳报告超时类型："..type)
end

--此示例代码运行成功如下图所示。

on_yidun_pc_heartbeat_rpt_2.png

on_yidun_pc_heartbeat_rpt.png
<上一篇:易盾端游反外挂检测出异常时回调
on_add_exp
角色杀怪得到经验时回调

更新时间：2023-02-24 00:00:00
此函数在角色杀怪得到经验时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_add_exp(
    strRole,
    iExp,
    strMonsterKeyName
)

参数
strRole

string

 
角色的GUID

iExp

int32

 
得到的经验值

strMonsterKeyName

string

 
怪物的索引名（KeyName）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
   
function on_add_exp(player, exp)  
    --省略部分代码  
    process_item_add_exp(player, tonumber(exp))  
    --省略部分代码  
end
下一篇:玩家杀怪自动加金币时回调>
on_auto_add_gold
玩家杀怪自动加金币时回调

更新时间：2022-05-05 00:00:00
此函数在玩家杀怪自动加金币时回调。

参考 eTriggerType

语法
Luacopy 复制
on_auto_add_gold(
    strPlayer,
    monster_KeyName,
    add_gold
)

参数
strPlayer

string

 
玩家角色的GUID

monster_KeyName

string

 
被杀怪物的索引名（KeyName）

add_gold

int

 
增加的金币数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:角色杀怪得到经验时回调下一篇:玩家在线充值时回调>
on_billin
玩家在线充值时回调

更新时间：2021-09-07 00:00:00
此函数在玩家在线充值时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_billin(
    strPlayer,
    iBillinIngot,
    desc
)

参数
strPlayer

string

 
玩家的GUID

iBillinIngot

int32

 
当次充值元宝数

desc

string

 
充值描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_trigger_billin(player, yb)         
    --省略部分代码            
    lualib:SysMsg_SendWarnMsg(player, "你充值了"..yb.."元宝")         
    --省略部分代码         
end
<上一篇:玩家杀怪自动加金币时回调下一篇:玩家充值时回调（扩展）>
on_billinex
玩家充值时回调（扩展）

更新时间：2021-09-07 00:00:00
此函数在玩家充值时(无论是否在线)回调。

参考 eTriggerType

语法
Luacopy 复制
on_billinex(
    userid,
    iBillinIngot,
    desc
)

参数
userid

uint32

 
账号id

iBillinIngot

int32

 
当次充值元宝数

desc

string

 
充值描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家在线充值时回调下一篇:扣元宝回调>
on_sub_ingot
扣元宝回调

更新时间：2021-09-07 00:00:00
此函数在扣元宝时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_sub_ingot(
    strPlayer,
    ingot,
    to
)

参数
strPlayer

string

 
玩家的GUID

ingot

int32

 
元宝数量

to

uint8

 
元宝去向

0给系统

1给玩家

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家充值时回调（扩展）下一篇:通用货币增加/减少时回调>
on_update_currency
通用货币增加/减少时回调

更新时间：2021-09-07 00:00:00
此函数在通用货币增加/减少时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_update_currency(
    strPlayer,
    ingot,
    type,
    desc,
    target
)
参数
strPlayer

string

 
玩家角色的GUID

ingot

double

 
通用货币增加/减少的数量

正数增加的数量

负数减少的数量

type

uint32

 
通用货币类型

0元宝

1绑定元宝

2积分

3金币

4绑定金币

desc

string

 
动作的发起描述

target

string

 
动作的发起者

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增以下参数：

desc

target

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_update_currency, "on_update_currency")

lualib:Player_AddIngot(player, 111, false, "引擎测试", "系统") --给玩家添加111元宝
lualib:Player_AddIngot(player, 222, true, "引擎测试", "系统") --给玩家添加222绑定元宝
lualib:Player_AddIntegral(player, 333, "引擎测试", "系统") --给玩家添加333积分
lualib:Player_AddGold(player, 444, false, "引擎测试", "系统") --给玩家添加444金币
lualib:Player_AddGold(player, 555, true, "引擎测试", "系统") --给玩家添加555绑定金币

lualib:Player_SubIngot(player, 11, false, "引擎测试", "系统") --给玩家减少11元宝
lualib:Player_SubIngot(player, 22, true, "引擎测试", "系统") --给玩家减少22绑定元宝
lualib:Player_SubIntegral(player, 33, "引擎测试", "系统") --给玩家减少33积分
lualib:Player_SubGold(player, 44, false, "引擎测试", "系统") --给玩家减少44金币
lualib:Player_SubGold(player, 55, true, "引擎测试", "系统") --给玩家减少55绑定金币

function on_update_currency(player, ingot, type, desc, target)
    local opt = {[0] = "元宝", "绑定元宝", "积分", "金币",  "绑定金币"}
    if ingot > 0 then
        lualib:Warn(lualib:Name(player).." 增加了 "..ingot.." "..opt[type].." "..desc.." "..target)
    else
        lualib:Warn(lualib:Name(player).." 减少了 "..(0-ingot).." "..opt[type].." "..desc.." "..target)
    end
end

--此示例代码运行成功如下图所示。

on_update_currency_2.png
<上一篇:扣元宝回调
on_fetch_mail
玩家接收邮件回调

更新时间：2022-05-05 00:00:00
此函数在玩家接收邮件时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_fetch_mail(
    receiver,
    gold,
    yuanbao,
    integral,
    item_keyname,
    item_amount,
    mail_guid,
    sender_name,
    type
)

参数
receiver

string

 
接收邮件者

gold

int32

 
金币

yuanbao

int32

 
元宝

integral

int32

 
积分

item_keyname

string

 
物品的索引名（KeyName）

item_amount

uint16

 
物品数量

mail_guid

string

 
邮件的GUID

sender_name

string

 
发送者

type

uint8

 
0系统

1用户

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:玩家提取邮件附件前触发>
on_pre_get_attachment_from_mail
玩家提取邮件附件前触发

更新时间：2021-09-07 00:00:00
此函数为玩家提取邮件附件前的回调函数。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_get_attachment_from_mail(
    player_guid,
    index,
    gold,
    yuanbao,
    integral,
    item_id,
    mail_guid,
    send_time
)
参数
player_guid

string

 
玩家角色的GUID

index

uint8

 
附件类型

1金币

2元宝

3-7物品

8积分

gold

int32

 
金币数量

yuanbao

int32

 
元宝数量

integral

int32

 
积分数量

item_id

uint8

 
物品模板ID

mail_guid

string

 
邮件的GUID

send_time

uint32

 
邮件发送时间的时间戳

返回值
bool

 
true允许提取邮件附件

false不允许提取邮件附件

版本历史
v1.0

 
首次发布

v1.1

 
新增参数send_time邮件发送时间的时间戳

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_pre_get_attachment_from_mail, "on_pre_get_attachment_from_mail")

function on_pre_get_attachment_from_mail(player, index, gold, yuanbao, integral, item_id, mail_guid, send_time)
    lualib:SysWarnMsg(player, "附件类型:"..index)
    lualib:SysWarnMsg(player, "金币数量:"..gold)
    lualib:SysWarnMsg(player, "元宝数量:"..yuanbao)
    lualib:SysWarnMsg(player, "积分数量:"..integral)
    lualib:SysWarnMsg(player, "物品模板ID:"..item_id)
    lualib:SysWarnMsg(player, "邮件guid:"..mail_guid)
    lualib:SysWarnMsg(player, "邮件发送时间:"..send_time)
    return true
end

--此示例代码运行成功如下图所示。

on_pre_get_attachment_from_mail.png
<上一篇:玩家接收邮件回调
on_moba_create_room
创建MOBA房间触发

更新时间：2021-09-07 00:00:00
此函数在创建MOBA房间时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_moba_create_room(
    player_guid,
    room_id
)
参数
player_guid

string

 
玩家角色的GUID

room_id

int32

 
房间ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_moba_create_room, "on_moba_create_room")
function on_moba_create_room(player,roomId)
    lualib:Warn(lualib:Name(player).." 创建 房间id = "..roomId)
end

--此示例代码运行成功如下图所示。

Moba_CreateRoom
下一篇:进入MOBA房间触发>
on_moba_enter_room
进入MOBA房间触发

更新时间：2021-09-07 00:00:00
此函数在进入MOBA房间时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_moba_enter_room(
    player_guid,
    room_id
)
参数
player_guid

string

 
玩家角色的GUID

room_id

int32

 
房间ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_moba_enter_room, "on_moba_enter_room")
function on_moba_enter_room(player,roomId)
    lualib:Warn(lualib:Name(player).." 进入 房间id = "..roomId)
end

--此示例代码运行成功如下图所示。

Moba_EnterRoom_2
<上一篇:创建MOBA房间触发下一篇:离开MOBA房间触发>
on_moba_exit_room
离开MOBA房间触发

更新时间：2021-09-07 00:00:00
此函数在离开MOBA房间时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_moba_exit_room(
    player_guid,
    room_id
)
参数
player_guid

string

 
玩家角色的GUID

room_id

int32

 
房间ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0",lua_trigger_moba_exit_room , "on_moba_exit_room")
function on_moba_exit_room(player,roomId)
    lualib:Warn(lualib:Name(player).." 离开 房间id = "..roomId)
end

--此示例代码运行成功如下图所示。


<上一篇:进入MOBA房间触发下一篇:玩家改变阵营触发>
on_moba_player_change_camp
玩家改变阵营触发

更新时间：2021-09-07 00:00:00
此函数在玩家改变阵营时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_moba_player_change_camp(
    player_guid,
    room_id,
    new_camp
)
参数
player_guid

string

 
玩家角色的GUID

room_id

int32

 
房间ID

new_camp

int16

 
改变后的阵营

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_moba_player_change_camp, "on_moba_player_change_camp")
function on_moba_player_change_camp(player,roomId,newCamp)
    lualib:Warn(lualib:Name(player).." 改变阵营 房间id = "..roomId.." 新阵营 = "..newCamp)
end

--此示例代码运行成功如下图所示。

Moba_SetPlayerCamp
<上一篇:离开MOBA房间触发下一篇:玩家改变准备状态触发>
on_moba_player_change_ready
玩家改变准备状态触发

更新时间：2021-09-07 00:00:00
此函数在玩家改变准备状态时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_moba_player_change_ready(
    player_guid,
    room_id,
    ready_status
)
参数
player_guid

string

 
玩家角色的GUID

room_id

int32

 
房间ID

ready_status

int16

 
改变后的状态

1已准备

0未准备

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_moba_player_change_ready, "on_moba_player_change_ready")
function on_moba_player_change_ready(player,roomId,newStatus)
    lualib:Warn(lualib:Name(player).." 改变状态 房间id = "..roomId.." 新状态 = "..newStatus)
end

--此示例代码运行成功如下图所示。


<上一篇:玩家改变阵营触发
on_shentubaoku_buy
玩家在神兔宝库购买物品时回调

更新时间：2023-03-17 00:00:00
此函数当玩家在神兔宝库购买物品时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_shentubaoku_buy(
    player_name,
    buyer_name,
    item_name
)
参数
player_name

string

 
上架者的名字

buyer_name

string

 
购买者的名字

item_name

string

 
购买的物品的名字

item_guid

string

 
购买的物品的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数item_guid购买的物品的GUID

示例代码
Luacopy 复制
lualib:AddTrigger("0", 451, "on_shentubaoku_buy")

function on_shentubaoku_buy(seller_name,buy_name ,item_name)
    
    local playerGUID = lualib:Name2Guid(buy_name)
    if playerGUID ~= "" then 
        local str = "MessageBox(1, '已收到神兔宝库购买的商品,请打开邮箱领取', 'CL:OnMailWindow()', nil, false)"
        lualib:ShowFormWithContent(playerGUID,"脚本表单",str)
    end
    
    lualib:Warn("购买触发  "..seller_name.."  "..buy_name.."  "..item_name)
end 

--此示例代码运行成功如下图所示。

on_shentubaoku_buy.png
下一篇:神兔宝库下架装备时回调>
on_shentubaoku_cancel_sell
神兔宝库下架装备时回调

更新时间：2022-01-07 00:00:00
此函数在神兔宝库下架装备时回调，用于自定义发送给玩家的邮件正文内容。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_shentubaoku_cancel_sell(
    seller_name,
    item_name,
    cancel_type,
    reason
)
参数
seller_name

string

 
取消上架的玩家的名字

item_name

string

 
装备的名字

cancel_type

int

 
下架场景的类型

0玩家主动下架

1离线玩家主动下架

2同帐号下其它角色下架

3主动下架时背包空间不足

4后台超时自动下架

5玩家在后台发起主动下架

6管理员下架

7神兔宝库关闭时下架

8帐号被封禁时下架

note_icon 备注
类型0-3为游戏内下架，优先将下架的装备发送到背包中，若无法发送则会发送到邮件中。

类型4-8为后台下架，会将下架的装备发送到邮件中。

reason

string

 
下架原因

返回值
string

 
要发送给玩家的邮件正文内容

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 448, "on_shentu_baoku_cancel_sell")

function on_shentu_baoku_cancel_sell(seller_name, item_name, cancel_type, reason)
    local msg = seller_name.." 下架物品："..item_name.."\n下架场景的类型："..cancel_type.."\n下架原因："..reason
    return msg
end

--此示例代码运行成功如下图所示。

on_shentubaoku_cancel_sell.png
<上一篇:玩家在神兔宝库购买物品时回调下一篇:神兔宝库上架物品前回调>
on_shentubaoku_pre_sell_item
神兔宝库上架物品前回调

更新时间：2022-01-07 00:00:00
此函数在神兔宝库上架物品前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_shentubaoku_pre_sell_item(
    strRole,
    item_guid,
    item_count
)
参数
strRole

string

 
角色的GUID

item_guid

string

 
上架物品的GUID

item_count

int32

 
上架物品的数量

返回值
bool

 
是否允许上架

true允许上架

false不允许上架

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 452, "on_shentubaoku_pre_sell_item")

function on_shentubaoku_pre_sell_item(player,ItemGUID,count)
    lualib:Warn("角色的GUID为："..player)
    lualib:Warn("角色的名字为："..lualib:Name(player))
    lualib:Warn("上架物品的GUID为："..ItemGUID)
    lualib:Warn("上架物品的名字为："..lualib:Name(ItemGUID))
    lualib:Warn("上架物品的数量为："..count)
    return true
end

--此示例代码运行成功如下图所示。

on_shentubaoku_pre_sell_item.png
<上一篇:神兔宝库下架装备时回调下一篇:神兔宝库上架角色前回调（扩展）>
on_shentubaoku_pre_sell_role_ex
神兔宝库上架角色前回调（扩展）

更新时间：2022-06-23 00:00:00
此函数在神兔宝库上架角色前回调，可将上架角色时的错误信息返回至神兔宝库后台。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_shentubaoku_pre_sell_role_ex(
    strRole,
    isOnline
)
参数
strRole

string

 
角色的GUID

isOnline

bool

 
该角色是否在线

true该角色在线

false该角色不在线

返回值
string

 
返回上架角色时的错误信息，并将错误信息返回至神兔宝库后台。

空字符串（""）允许上架该角色

非空阻止上架该角色

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--返回值为空字符串（""）
lualib:AddTrigger("0", 472, "on_shentubaoku_pre_sell_role_ex")

function on_shentubaoku_pre_sell_role_ex(player, isOnline)
    if isOnline then
        lualib:Warn(lualib:Name(player).." 在线角色上架判断...")
    else
        lualib:Warn(player.." 离线角色上架判断...")
    end
    
    return ""
end

--此示例代码运行成功如下图所示（允许上架该角色）。

on_shentubaoku_pre_sell_role_ex.png

--返回值不为空
lualib:AddTrigger("0", 472, "on_shentubaoku_pre_sell_role_ex")

function on_shentubaoku_pre_sell_role_ex(player, isOnline)
    if isOnline then
        lualib:Warn(lualib:Name(player).." 在线角色上架判断...")
    else
        lualib:Warn(player.." 离线角色上架判断...")
    end
    
    return "阻止上架测试"
end

--此示例代码运行成功后，会阻止上架该角色，并将错误信息返回至神兔宝库后台。
<上一篇:神兔宝库上架物品前回调下一篇:神兔宝库上架角色前回调>
on_shentubaoku_pre_sell_role
神兔宝库上架角色前回调

更新时间：2022-04-22 00:00:00
此函数在神兔宝库上架角色前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_shentubaoku_pre_sell_role(
    strRole,
    isOnline
)
参数
strRole

string

 
角色的GUID

isOnline

bool

 
该角色是否在线

true该角色在线

false该角色不在线

返回值
bool

 
true允许上架该角色

false不允许上架该角色

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 468, "on_shentubaoku_pre_sell_role")

function on_shentubaoku_pre_sell_role(player, isOnline)
    if isOnline then
        lualib:Warn(lualib:Name(player).."角色上架判断...")
    end
    
    return true
end

--此示例代码运行成功后，若该角色在线则允许上架该角色。

on_shentubaoku_pre_sell_role.png
<上一篇:神兔宝库上架角色前回调（扩展）
on_account_verified
用户完成实名认证时的触发

更新时间：2021-09-07 00:00:00
此函数为用户完成实名认证时的触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_account_verified(
    user_id
)
参数
user_id

uint32

 
用户账号ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:验证码结果回调>
on_captcha_result
验证码结果回调

更新时间：2021-09-07 00:00:00
此函数为验证码结果回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_captcha_result(
    strPlayer,
    result,
    reason
)

参数
strPlayer

string

 
玩家的GUID

result

uint8

 
验证码结果

0验证成功

1验证失败

reason

uint8

 
验证成功时指明额外信息

0无

1疑似外挂

验证失败时指明失败原因

0验证码输入错误

1验证超时

2玩家要求重试

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:用户完成实名认证时的触发下一篇:客户端版本过低时回调>
on_client_version_old
客户端版本过低时回调

更新时间：2023-08-11 00:00:00
此函数在客户端版本过低时回调。

目前当客户端版本号小于3200（对应2023年8月3日更新的客户端版本）时，便会回调此函数。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_client_version_old(
    strplayer,
    version,
    type
)
参数
strplayer

string

 
玩家角色的GUID

version

uint32

 
当前的客户端版本号

type

uint8

 
客户端类型

0端游

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--使用2022年5月11日更新的客户端版本时会回调此函数。
lualib:AddTrigger("0", 474, "on_client_version_old")

function on_client_version_old(player, version, type)
    lualib:Warn("客户端版本："..version)
    lualib:Warn("客户端类型："..type)
end

--此示例代码运行成功如下图所示。

on_client_version_old.png
<上一篇:验证码结果回调下一篇:通知防沉迷事件时回调>
on_fang_chen_mi
通知防沉迷事件时回调

更新时间：2021-09-07 00:00:00
此函数在通知防沉迷事件时回调。

在system.lua脚本中只要有此函数"on_fang_chen_mi"就回调。

参考 eTriggerType

语法
Luacopy 复制
on_fang_chen_mi(
    strPlayer,
    type,
    time
)

参数
strPlayer

string

 
玩家的GUID

type

uint32

 
防沉迷状态

0无经验

1一半经验

2全经验

time

int32

 
已进入防沉迷状态的时间，单位为秒。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:客户端版本过低时回调下一篇:新玩家首次进入游戏时回调>
on_first_in_game
新玩家首次进入游戏时回调

更新时间：2021-09-07 00:00:00
此函数在新玩家首次进入游戏时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_first_in_game(
    strPlayer
)

参数
strPlayer

string

 
新玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_first_in_game, "on_first_in_game") 

function on_first_in_game(player)
    --省略部分代码
    lualib:SysMsg_SendBroadcastMsg("一位新的英雄【"..lualib:Name(player).."】降临神途世界！","") 
    --体验测试 
    --省略部分代码 
end
<上一篇:通知防沉迷事件时回调下一篇:玩家进入游戏时回调>
on_login
玩家进入游戏时回调

更新时间：2021-09-07 00:00:00
此函数在玩家进入游戏时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_login(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_login, "on_login") 
   
--登入触发 
function on_login(player)

    lualib:SysMsg_SendMsgDlg(player, 2, "#COLORCOLOR_RED#温馨提示：你每天都可以：\n#COLOREND#1.去#COLORCOLOR_GOLD#天机老人#COLOREND#处领取[每日奖励]和[悬赏任务]\n2.去#COLORCOLOR_GOLD#神之翼#COLOREND#那里免费抽取[翅膀]\n3.去#COLORCOLOR_GOLD#封魔阵引路人#COLOREND#赚取个人积累经验和金币\n4.去#COLORCOLOR_GOLD#试炼教头#COLOREND#进行免费试炼\n\n#BUTTON0#我记住了#BUTTONEND#", 30, "meiritishi", "") 

end
<上一篇:新玩家首次进入游戏时回调下一篇:玩家退出游戏时回调>
on_logout
玩家退出游戏时回调

更新时间：2021-09-07 00:00:00
此函数在玩家退出游戏时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_logout(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_logout, "on_logout") 

--登出触发 
function on_logout(player)
   ... 
   local npc_guid_cangku = lualib:Player_GetCustomVarStr(player, "yang_cangkuguid_name") 
   local npc_guid_shangdian = lualib:Player_GetCustomVarStr(player, "yang_shangdianguid_name")
   ... 
end
<上一篇:玩家进入游戏时回调下一篇:跨服服务器消息回调>
on_migrate_zone_message
跨服服务器消息回调

更新时间：2021-09-07 00:00:00
此函数为跨服服务器消息回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_migrate_zone_message(
    src_zone_id,
    msg
)

参数
src_zone_id

uint32

 
源区id

msg

string

 
消息内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家退出游戏时回调下一篇:玩家退出游戏之前回调>
on_pre_logout
玩家退出游戏之前回调

更新时间：2021-12-17 00:00:00
此函数在玩家退出游戏之前回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_logout(
    strPlayer,
    iExitType
)

参数
strPlayer

string

 
玩家角色的GUID

iExitType

int32

 
玩家退出类型

1退出游戏

2返回角色界面

3跳服

8网络错误(例如客户端断线)

返回值
bool

 
true允许玩家退出游戏

false阻止玩家退出游戏

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_pre_logout(player, exit_type)      
    if tonumber(exit_type) ==1  or tonumber(exit_type) ==2 then          
        local rx = lualib:GenRandom(-8,8)          
        local ry = lualib:GenRandom(-8,8)          
        lualib:SetOffline(player, 259200)          
        local x = 237 + rx          
        local y = 228 + ry          
        lualib:Map_JumpXY(lualib:Map_GetMapGuid("龙城"), player, x, y, 10)          
        return false      
        end      
    return true  
end
<上一篇:跨服服务器消息回调下一篇:玩家重登录请求刷新时回调>
on_relogin_refresh_req
玩家重登录请求刷新时回调

更新时间：2021-09-07 00:00:00
此函数在玩家重登录请求刷新时回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_relogin_refresh_req(
    player
)

参数
player

cplayer *

 
玩家的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家退出游戏之前回调下一篇:客户端提交未被允许的表单时回调>
on_submit_not_allowed_form
客户端提交未被允许的表单时回调

更新时间：2023-06-16 00:00:00
此函数在客户端提交未被允许的表单函数时回调。

表单函数是否允许被客户端调用与全局模板表中的“是否默认表单都不允许使用回调函数”选项和接口lualib:SetFormAllowFunc有关，具体分为以下2种情况：

情况一：使用接口lualib:SetFormAllowFunc设置了指定表单中允许回调的函数

此时未使用接口lualib:SetFormAllowFunc设置的函数在被客户端调用时，会提示该函数未被允许调用，此回调函数会每分钟统计此类函数非法提交的次数。

情况二：未使用接口lualib:SetFormAllowFunc设置指定表单中允许回调的函数

此时表单中的函数是否可以被客户端调用，取决于全局模板表中的“是否默认表单都不允许使用回调函数”选项的配置。

（1）当该选项配置为“是”时，代表由客户端提交的表单中的回调函数都不允许使用。

此时任意表单中的函数在被客户端调用时，均会提示该函数未被允许调用，此回调函数会每分钟统计此类函数非法提交的次数。

（2）当该选项配置为“否”时，代表由客户端提交的表单中的回调函数都允许使用。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→游戏限制区域。

on_submit_not_allowed_form_3.png
非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_submit_not_allowed_form(
    strplayer,
    count
)
参数
strplayer

string

 
玩家角色的GUID

count

uint32

 
一分钟内客户端非法提交表单的次数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", 473, "on_submit_not_allowed_form")

function on_submit_not_allowed_form(player, count)
    lualib:SysWarnMsg(player, "非法提交表单次数："..count)
end

--此示例代码运行成功如下图所示。

on_submit_not_allowed_form.png

on_submit_not_allowed_form_2.png
<上一篇:玩家重登录请求刷新时回调下一篇:系统启动回调>
on_system_start
系统启动回调

更新时间：2021-09-07 00:00:00
此函数在系统启动时回调。

系统级回调，不用手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_system_start()

参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_system_start()
    --省略部分代码 
    --服务器首次启动执行 
    if lualib:IO_GetCustomVarInt("fuwuqishushihua") == 0 then
        lualib:IO_SetCustomVarInt("fuwuqishushihua",1) 

        --冲级比赛相关数据初始化 
        lualib:IO_SetCustomVarInt("chongjizhanshi40",20)
        lualib:IO_SetCustomVarInt("chongjifashi40",20)
        lualib:IO_SetCustomVarInt("chongjidaoshi40",20)
        lualib:IO_SetCustomVarInt("chongjizhanshi45",10)
        lualib:IO_SetCustomVarInt("chongjifashi45",10)
        lualib:IO_SetCustomVarInt("chongjidaoshi45",10)
        lualib:IO_SetCustomVarInt("chongjizhanshi50",1)
        lualib:IO_SetCustomVarInt("chongjifashi50",1)
        lualib:IO_SetCustomVarInt("chongjidaoshi50",1) 
    end
    --省略部分代码 
end  
<上一篇:客户端提交未被允许的表单时回调下一篇:系统关闭回调>
on_system_stop
系统关闭回调

更新时间：2021-09-07 00:00:00
此函数在系统关闭时回调。

系统级回调，不用手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_system_stop()

参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_system_stop()  --  
end
<上一篇:系统启动回调下一篇:目标区跨服数据迁移成功时回调>
on_target_data_migrate_success
目标区跨服数据迁移成功时回调

更新时间：2022-05-27 00:00:00
此函数在角色跨服且数据成功转移到跨服目标区后，会在目标区中回调。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_target_data_migrate_success(
    src_zone_id,
    userid,
    username,
    guid,
    rolename
)
参数
src_zone_id

uint32

 
源区的区服ID

userid

uint32

 
玩家的账号ID

username

string

 
玩家的账号名

guid

string

 
玩家角色的GUID

rolename

string

 
玩家的角色名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码需要在目标区中执行。
lualib:AddTrigger("0", 469, "on_target_data_migrate_success")

function on_target_data_migrate_success(src_zone_id, userid, username, guid, rolename)
    lualib:Warn("src_zone_id = "..src_zone_id)
    lualib:Warn("userid = "..userid)
    lualib:Warn("username = "..username)
    lualib:Warn("guid = "..guid)
    lualib:Warn("rolename = "..rolename)
end

--此示例代码运行成功如下图所示。

on_target_data_migrate_success.png
<上一篇:系统关闭回调
触发器类型定义
更新时间：2026-02-25 14:24:00
触发器类型定义请参见下表。

枚举值	类型值	类型名	备注
1	lua_trigger_system_start	系统启动时回调	
2	lua_trigger_first_in_game	第一次进游戏时回调	
3	lua_trigger_login	登录游戏时回调	
4	lua_trigger_logout	退出游戏时回调	
5	lua_trigger_castle_war_start	攻城战开始时回调	
6	lua_trigger_castle_war_end	攻城战结束时回调	
7	lua_trigger_castle_war_init	申请攻城战成功时回调	
8	lua_trigger_gp	检测到平均超速时回调	
9	lua_trigger_gp_one	检测到超速时回调	
200	lua_trigger_map_create	地图创建时回调	
201	lua_trigger_map_destroy	地图销毁时回调	
202	lua_trigger_enter_map	进入地图时回调	
203	lua_trigger_leave_map	离开地图时回调	
204	lua_trigger_item_appear	物品在地图上出现时回调	
205	lua_trigger_item_disappear	物品在地图上消失时回调	
206	lua_trigger_monster_appear	怪物在地图上出现时回调	
207	lua_trigger_monster_disappear	怪物在地图上消失时回调	
208	lua_trigger_npc_appear	NPC在地图上出现时回调	
209	lua_trigger_npc_disappear	NPC在地图上消失时回调	
300	lua_trigger_level_up	升级时回调	
301	lua_trigger_pre_equip	穿装备之前回调	
302	lua_trigger_post_equip	穿装备之后回调	
303	lua_trigger_pre_un_equip	脱装备之前回调	
304	lua_trigger_post_un_equip	脱装备之后回调	
305	lua_trigger_move	移动时回调	
306	lua_trigger_pre_spell	使用技能之前回调	
307	lua_trigger_spell	使用技能之后回调	
308	lua_trigger_pre_mining	挖矿之前回调	
309	lua_trigger_mining	挖矿之后回调	
310	lua_trigger_pre_item_apply	使用物品之前回调	
311	lua_trigger_item_apply	使用物品之后回调	
312	lua_trigger_pre_item_pickup	拾取物品之前回调	
313	lua_trigger_item_pickup	拾取物品之后回调	
314	lua_trigger_pre_item_drop	主动扔物品之前回调	
315	lua_trigger_item_drop	主动扔物品之后回调	
316	lua_trigger_pre_die	死亡之前回调	
317	lua_trigger_post_die	死亡之后回调	
318	lua_trigger_kill	杀死角色时回调	
319	lua_trigger_attack	受攻击时回调	
322	lua_trigger_damage_process	走伤害处理流程时回调	
323	lua_trigger_restore_process	走恢复处理流程时回调	
324	lua_trigger_teleport	瞬移时回调	
325	lua_trigger_pre_catch	捉宠物之前回调	
326	lua_trigger_catch	捉宠物之后回调	
327	lua_trigger_pre_dig_meat	挖肉之前回调	
328	lua_trigger_dig_meat	挖肉之后回调	
329	lua_trigger_add_buff	添加BUFF时回调	
330	lua_trigger_remove_buff	删除BUFF时回调	
331	lua_trigger_pre_drop	要爆东西之前回调	
332	lua_trigger_post_drop	要爆东西之后回调	
333	lua_trigger_pre_drop_one	爆某个具体物品之前回调	
334	lua_trigger_post_drop_one	爆某个具体物品之后回调	
335	lua_trigger_add_skill	添加技能时回调	
336	lua_trigger_switch_skill	开关技能时回调	
337	lua_trigger_summon	召唤宠物时回调	
338	lua_trigger_pre_process_pk	处理PK值之前回调	
339	lua_trigger_post_process_pk	处理PK值之后回调	
340	lua_trigger_create	怪物、物品、NPC创建时回调	在相应的对象挂载的脚本中增加on_create函数即可，此触发器无需手动添加。
343	lua_trigger_pre_enter_jump	进入跳转点之前回调	
344	lua_trigger_equip_suit	装备套装时回调	
345	lua_trigger_un_equip_suit	脱掉套装时回调	
346	lua_trigger_item_amount_zero	物品堆叠数为0时回调	
347	lua_trigger_item_use_zero	物品使用次数为0时回调	
348	lua_trigger_item_dur_zero	物品耐久为0时回调	
349	lua_trigger_item_timeup	物品时效过期时回调	
350	lua_trigger_add_exp	杀怪得到经验时回调	
351	lua_trigger_monster_born	怪物出生时回调	
352	lua_trigger_player_relive	玩家复活前回调	
353	lua_trigger_dungeon_end	副本结束时回调	
354	lua_trigger_timer_check	道具自检时回调	
356	lua_trigger_player_pre_die	玩家死亡之前回调	
357	lua_trigger_player_post_die	玩家死亡之后回调	
358	lua_trigger_monster_pre_die	怪物死亡之前回调	
359	lua_trigger_monster_post_die	怪物死亡之后回调	
360	lua_trigger_attack_ex	受攻击时回调（on_attack加强版，多了扣血值与技能参数）	
361	lua_trigger_system_stop	系统停止时回调	
362	lua_trigger_pre_logout	退出游戏之前回调	
363	lua_trigger_ride_request	收到上马请求时回调	
364	lua_trigger_unride_request	收到下马请求时回调	
365	lua_trigger_billin	充值回调（只有玩家在线才会回调）	
366	lua_trigger_mall	商城消费之后回调	
367	lua_trigger_pre_mall	商城消费之前回调	
368	lua_trigger_escorter_fail	护送怪失败时回调	
369	lua_trigger_escorter_far	护送怪过远时回调	
370	lua_trigger_apply_buff	buff触发回调	
371	lua_trigger_monster_in_fight	怪物进入战斗状态触发	
372	lua_trigger_monster_out_fight	怪物退出战斗状态触发	
373	lua_trigger_player_pre_curse	武器被诅咒前触发	
374	lua_trigger_role_pre_harm	角色受到伤害时触发（返回固定伤害数值）	
375	lua_trigger_pre_npc_buy	玩家NPC处购买物品前触发（返回值决定是否可以购买物品）	
376	lua_trigger_npc_buy	玩家NPC处购买物品触发	
377	lua_trigger_pre_stall	玩家摆摊前触发	
378	lua_trigger_hack_check	外挂检测触发	
379	lua_trigger_auto_add_gold	杀怪自动加金币	
380	lua_trigger_hack_check2	外挂检查	
381	lua_trigger_family_member_ntf	行会事件	
382	lua_trigger_pre_stall_buy	购买摆摊物品前触发	
383	lua_trigger_family_ntf	行会创建和销毁触发	
384	lua_trigger_item_dur_zero_ex	耐久为0删除扩展	
385	lua_trigger_dummy_pre_die	假人死亡前触发	
386	lua_trigger_dummy_post_die	假人死亡后触发	
387	lua_trigger_item_attr_zero	物品属性变为0触发	
388	lua_trigger_attacker_pre_harm	攻击者受到伤害时触发（返回固定伤害数值）	
389	lua_trigger_pre_level_up	角色升级前触发	
390	lua_trigger_pre_add_gray	角色变灰名前触发	
391	lua_trigger_pre_join_family	申请加入行会前触发	
392	lua_trigger_pre_invite_family	邀请加入行会前触发	
393	lua_trigger_pre_relate_family	行会敌对联盟前触发	
394	lua_trigger_billin_ex	玩家充值回调（无论玩家是否在线）	
395	lua_trigger_player_change_name	玩家改名结果触发	
396	lua_trigger_sub_ingot	玩家扣元宝触发	
397	lua_trigger_servant_betry	宠物叛变触发	
398	lua_trigger_captcha_result	验证码结果触发	
399	lua_trigger_pre_p2p_trade	玩家进行P2P交易前触发	
400	lua_trigger_pre_market_delegate_sell	寄售行寄售前触发	
401	lua_trigger_pre_market_buy	寄售行购买前触发	
402	lua_trigger_pre_market_sell	寄售行出售前触发	
405	lua_trigger_relogin_refresh_req	重登录刷新请求触发	
408	lua_trigger_pre_player_drop_gold	玩家丢金币前触发	
409	lua_trigger_calc_hit	脚本计算命中触发	
410	lua_trigger_family_notice_changed	行会公告改变触发	
411	lua_trigger_migrate_zone_message	收到跨服服务器消息触发	
412	lua_trigger_join_team	加入队伍触发	
413	lua_trigger_leave_team	离开队伍触发	
414	lua_trigger_pre_stall_sell	出售物品给摆摊收购前触发	
415	lua_trigger_pre_shop_sell	出售物品给NPC商店前触发	
416	lua_trigger_prepare_joint_hit	英雄准备好合击触发	
417	lua_trigger_fetch_mail	玩家领取邮件触发	
418	lua_trigger_quest_award	玩家任务奖励触发	
419	lua_trigger_check_ignore_def_and_imm	是否处理破防和破盾触发	
420	lua_trigger_dummy_client_lock_target	英雄从客户端锁定目标触发	
421	lua_trigger_dummy_custom_state_logic	英雄自定义状态逻辑触发	
422	lua_trigger_remove_skill	删除技能触发	
423	lua_trigger_calc_drop_pct	计算掉落概率触发	
425	lua_trigger_account_verified	实名认证触发	
426	lua_trigger_moba_create_room	创建MOBA房间触发	
427	lua_trigger_moba_enter_room	进入MOBA房间触发	
428	lua_trigger_moba_exit_room	离开MOBA房间触发	
429	lua_trigger_moba_player_change_camp	玩家改变阵营触发	
430	lua_trigger_moba_player_change_ready	玩家改变准备状态触发	
431	lua_trigger_servant_levelup	宠物升级时触发	
432	lua_trigger_pre_get_attachment_from_mail	玩家提取邮件附件前触发	
435	lua_trigger_role_pre_harm_ex	角色受到伤害时触发（返回固定伤害数值）	
436	lua_trigger_pre_cancel_processing	玩家被打断读条前触发	
437	lua_trigger_pre_invite_team	玩家邀请组队前触发	
438	lua_trigger_player_chat	玩家聊天时触发	
439	lua_trigger_equip_distinguish_sites	玩家穿戴装备需要区别装备位时触发	
440	lua_trigger_monster_spell	怪物施放技能时触发	
441	lua_trigger_pre_restore	目标回血前触发	
442	lua_trigger_update_currency	通用货币增加/减少时触发	
443	lua_trigger_yidun_heartbeat_rpt	易盾反外挂心跳超时时触发	
444	lua_trigger_yidun_hack_rpt	易盾反外挂检测出异常时触发	
445	lua_trigger_item_dur_notify	角色装备耐久值变化并通知客户端时触发	
446	lua_trigger_item_attr_zero_ex	物品属性为0时触发	
447	lua_trigger_pre_shop_sell_ex	出售物品给NPC商店前触发	
448	lua_trigger_shentubaoku_cancel_sell	神兔宝库下架装备时触发	
449	lua_trigger_pre_add_buff	角色添加BUFF前触发	
450	lua_trigger_servant_state_change	宠物状态改变时触发	
451	lua_trigger_shentubaoku_buy	玩家在神兔宝库购买物品时触发	
452	lua_trigger_shentubaoku_pre_sell_item	神兔宝库上架物品前触发	
453	lua_trigger_buff_pre_harm	角色触发BUFF造成伤害前触发	
454	lua_trigger_post_ride	玩家上马后触发	
455	lua_trigger_post_unride	玩家下马后触发	
456	lua_trigger_hero_ntf_msg	英雄事件给客户端发送消息时触发	
457	lua_trigger_yidun_pc_hack_rpt	易盾端游反外挂检测出异常时触发	
458	lua_trigger_pre_mining_drop	角色挖矿获得物品前触发	
459	lua_trigger_on_mining_drop	角色挖矿获得物品时触发	
460	lua_trigger_yidun_pc_heartbeat_rpt	易盾端游反外挂心跳超时时触发	
461	lua_trigger_family_ntf_msg	行会事件给客户端发送消息时触发	
462	lua_trigger_family_relation_change	行会关系发生变化时触发	
463	lua_trigger_add_title	角色添加称号时触发	
464	lua_trigger_remove_title	角色删除称号时触发	
465	lua_trigger_pre_item_move	物品移动前触发	
466	lua_trigger_pre_family_destroy	行会解散前触发	
467	lua_trigger_pre_map_refresh_monster	在地图执行刷怪操作前触发	
468	lua_trigger_shentubaoku_pre_sell_role	神兔宝库上架角色前触发	
469	lua_trigger_target_data_migrate_success	目标区跨服数据迁移成功时触发	
470	lua_trigger_pre_market_delegate_buy	玩家在寄售行发布收购之前触发	
471	lua_trigger_pre_restore_mp	目标回蓝前触发	
472	lua_trigger_shentubaoku_pre_sell_role_ex	神兔宝库上架角色前触发（扩展）	可将上架角色时的错误信息返回至神兔宝库后台
473	lua_trigger_submit_not_allowed_form	客户端提交未被允许的表单时触发	
474	lua_trigger_client_version_old	客户端版本过低时触发	
475	lua_trigger_pre_modify_item_dur	角色装备耐久值变化前触发	
476	lua_trigger_pre_jump_map	角色跳转地图前触发	
477	lua_trigger_pre_add_family	玩家加入行会前触发	
478	lua_trigger_item_attr_notify	物品属性变化并通知客户端时触发	
479	lua_trigger_change_servant_mode	玩家改变宠物行动状态时触发	
480	lua_trigger_monster_destroy	怪物被清理时触发	
481	lua_trigger_on_pre_switch_skill	角色开关技能前触发	
482	lua_trigger_on_hero_load	召唤英雄时触发	
483	lua_trigger_pre_npc_taobao_buy	npc二手商店淘宝购买前触发	
484	lua_trigger_on_glory_award	获得成就奖励时触发	
485	lua_trigger_pre_leave_team	离队前触发	
486	lua_trigger_on_player_pk_change	玩家PK值改变后触发	
487	lua_trigger_on_flying_sword_hit	飞剑击中时触发	
488	lua_trigger_pre_add_exp	打怪加经验前触发	
489	lua_trigger_use_item_level_check	使用道具前等级检查触发	
490	lua_trigger_on_player_use_speaker	玩家发小喇叭时触发	
491	lua_trigger_pre_new_stall_start	新摆摊系统开摊前触发	
492	lua_trigger_pre_new_stall_close	新摆摊系统收摊前触发	
493	lua_trigger_pre_new_stall_buy	新摆摊系统购买前触发	
494	lua_trigger_pre_new_stall_takedown	新摆摊系统下架前触发	
部分触发器类型已无效，具体请参见下表。

枚举值	类型值	类型名	备注
341	lua_trigger_destroy	怪物、物品、NPC销毁时回调	已失效
355	lua_trigger_add_exp_all	任何原因得到经验时触发	
caution_icon 注意
请勿使用此触发器，否则会造成服务器宕机。

403	lua_trigger_game_guard_check	外挂检测失败触发	已失效
404	lua_trigger_game_guard_hack_rpt	GameGuard外挂列表触发	已失效
406	lua_trigger_bangcle_hack_rpt	Bangcle外挂报告触发	已失效
407	lua_trigger_bangcle_timeout	Bangcle心跳超时触发	已失效
433	lua_trigger_anticheat_hack	检测出玩家使用外挂时触发	已失效
434	lua_trigger_anticheat_timeout	外挂检测失败时触发	已失效
下一篇:角色属性类型定义>
角色属性类型定义
更新时间：2025-09-10 17:36:00
note_icon 备注
可动态设置的角色属性类型可通过SetDynamicAttr接口来进行设置。

需要手动配置通知到客户端的角色属性类型可通过SetSelfNotifyAttrs接口和RemoveSelfNotifyAttrs接口来进行配置。

基准值相关的角色属性不会受到对应的百分比相关的角色属性的影响。

角色HP、MP和攻防类属性的计算方式： 最终属性值结果 = （ 初始值 * （ 100 + 百分比 ） * （ 100 + 扩展百分比 ） ） + 基准值。

枚举值	类型值	类型名	是否可动态设置	是否需要手动配置通知到客户端
0	lua_role_level	等级	否	否
1	lua_role_job	职业	否	否
2	lua_role_hp	当前hp	否	否
3	lua_role_max_hp	hp上限	是	否
4	lua_role_mp	当前mp	否	否
5	lua_role_max_mp	mp上限	是	否
6	lua_role_max_phy_def	物防上限	是	否
7	lua_role_min_phy_def	物防下限	是	否
8	lua_role_max_mag_def	魔防上限	是	否
9	lua_role_min_mag_def	魔防下限	是	否
10	lua_role_max_phy_atk	物攻上限	是	否
11	lua_role_min_phy_atk	物攻下限	是	否
12	lua_role_max_mag_atk	魔攻上限	是	否
13	lua_role_min_mag_atk	魔攻下限	是	否
14	lua_role_max_tao_atk	咒术上限	是	否
15	lua_role_min_tao_atk	咒术下限	是	否
16	lua_role_hit	命中	是	否
17	lua_role_miss	闪避	是	否
18	lua_role_move_speed	移动速度，基准值	是	否
19	lua_role_attack_speed	攻击速度，基准值	是	否
20	lua_role_weight	当前背包负重	是	否
21	lua_role_max_weight	上限背包负重	是	否
22	lua_role_equip_weight	当前装备负重	是	否
23	lua_role_max_equip_weight	上限装备负重	是	否
24	lua_role_brawn	腕力	是	否
25	lua_role_max_brawn	上限腕力	是	否
26	lua_role_point	剩余属性点	否	否
27	lua_role_point_hp	剩余属性点加HP	否	否
28	lua_role_point_mp	剩余属性点加MP	否	否
29	lua_role_point_phy_atk	剩余属性点加物攻	否	否
30	lua_role_point_mag_atk	剩余属性点加魔攻	否	否
31	lua_role_point_tao_atk	剩余属性点加咒术	否	否
32	lua_role_point_phy_def	剩余属性点加物防	否	否
33	lua_role_point_mag_def	剩余属性点加魔防	否	否
34	lua_role_ele_1_atk	属性攻击（金）	是	否
35	lua_role_ele_2_atk	属性攻击（木）	是	否
36	lua_role_ele_3_atk	属性攻击（水）	是	否
37	lua_role_ele_4_atk	属性攻击（火）	是	否
38	lua_role_ele_5_atk	属性攻击（土）	是	否
39	lua_role_ele_1_def	属性防御（金）	是	否
40	lua_role_ele_2_def	属性防御（木）	是	否
41	lua_role_ele_3_def	属性防御（水）	是	否
42	lua_role_ele_4_def	属性防御（火）	是	否
43	lua_role_ele_5_def	属性防御（土）	是	否
44	lua_role_hp_rec	hp回复值	是	否
45	lua_role_mp_rec	mp回复值	是	否
46	lua_role_poison_rec	中毒恢复值	是	否
47	lua_role_energy	活力	否	否
48	lua_role_max_energy	活力上限	否	否
49	lua_role_burst	暴击率	是	否
50	lua_role_luck_curse	幸运诅咒	是	否
51	lua_role_pk	PK值	否	否
52	lua_role_prestige	声望	否	否
53	lua_role_meritorious	功勋	否	否
54	lua_role_achievement	成就	否	否
55	lua_role_reincarnation	转生标记	否	否
56	lua_role_rein_hp	转生后HP	否	是
57	lua_role_rein_mp	转生后MP	否	是
58	lua_role_rein_max_phy_def	转生后物防上限	否	是
59	lua_role_rein_min_phy_def	转生后物防下限	否	是
60	lua_role_rein_max_mag_def	转生魔防上限	否	是
61	lua_role_rein_min_mag_def	转生魔防下限	否	是
62	lua_role_rein_max_phy_atk	转生物攻上限	否	是
63	lua_role_rein_min_phy_atk	转生物攻下限	否	是
64	lua_role_rein_max_mag_atk	转生魔攻上限	否	是
65	lua_role_rein_min_mag_atk	转生魔攻下限	否	是
66	lua_role_rein_max_tao_atk	转生咒术上限	否	是
67	lua_role_rein_min_tao_atk	转生咒术下限	否	是
68	lua_role_rein_hit	转生命中	否	是
69	lua_role_rein_miss	转生闪避	否	是
70	lua_role_rein_burst	转生暴击率	否	是
71	lua_role_rein_weight	转生背包负重	否	是
72	lua_role_rein_equip_weight	转生装备负重	否	是
73	lua_role_rein_brawn	转生腕力	否	是
74	lua_role_bag_size_0	包裹0大小	否	否
75	lua_role_bag_size_1	包裹1大小	否	否
76	lua_role_bag_size_2	包裹2大小	否	否
77	lua_role_bag_size_3	包裹3大小	否	否
78	lua_role_bag_size_4	包裹4大小	否	否
79	lua_role_warehouse_size	玩家的仓库大小	否	否
80	lua_role_warehouse_adv_size	玩家高级仓库大小	否	否
81	lua_role_max_hp_pct	hp百分比	是	否
82	lua_role_max_mp_pct	mp百分比	是	否
83	lua_role_max_phy_def_pct	物防上限百分比	是	否
84	lua_role_min_phy_def_pct	物防下限百分比	是	否
85	lua_role_max_mag_def_pct	魔防上限百分比	是	否
86	lua_role_min_mag_def_pct	魔防下限百分比	是	否
87	lua_role_max_phy_atk_pct	物攻上限百分比	是	否
88	lua_role_min_phy_atk_pct	物攻下限百分比	是	否
89	lua_role_max_mag_atk_pct	魔攻上限百分比	是	否
90	lua_role_min_mag_atk_pct	魔攻下限百分比	是	否
91	lua_role_max_tao_atk_pct	咒术上限百分比	是	否
92	lua_role_min_tao_atk_pct	咒术下限百分比	是	否
93	lua_role_ele_1_atk_pct	属性攻击（金）百分比	是	否
94	lua_role_ele_2_atk_pct	属性攻击（木）百分比	是	否
95	lua_role_ele_3_atk_pct	属性攻击（水）百分比	是	否
96	lua_role_ele_4_atk_pct	属性攻击（火）百分比	是	否
97	lua_role_ele_5_atk_pct	属性攻击（土）百分比	是	否
98	lua_role_ele_1_def_pct	属性防御（金）百分比	是	否
99	lua_role_ele_2_def_pct	属性防御（木）百分比	是	否
100	lua_role_ele_3_def_pct	属性防御（水）百分比	是	否
101	lua_role_ele_4_def_pct	属性防御（火）百分比	是	否
102	lua_role_ele_5_def_pct	属性防御（土）百分比	是	否
103	lua_role_max_weight_pct	背包负重百分比	是	否
104	lua_role_max_equip_weight_pct	装备负重百分比	是	否
105	lua_role_max_brawn_pct	腕力百分比	是	否
106	lua_role_hp_rec_pct	hp回复速度百分比	是	否
107	lua_role_mp_rec_pct	mp回复速度百分比	是	否
108	lua_role_poison_rec_pct	中毒恢复速度百分比	是	否
109	lua_role_move_speed_pct	移动速度百分比	是	否
110	lua_role_attack_speed_pct	攻击速度百分比	是	否
111	lua_role_suck_hp	吸血	是	否
112	lua_role_suck_hp_pct	吸血百分比	是	否
113	lua_role_suck_max_hp_pct	吸血上限百分比	是	否
114	lua_role_suck_mp	吸魔	是	否
115	lua_role_suck_mp_pct	吸魔百分比	是	否
116	lua_role_suck_max_mp_pct	吸魔上限百分比	是	否
117	lua_role_ref_phy	物理伤害反射	是	否
118	lua_role_ref_phy_pct	物理伤害反射百分比	是	否
119	lua_role_ref_mag	魔法伤害反射数值	是	否
120	lua_role_ref_mag_pct	魔法伤害反射百分比	是	否
121	lua_role_imm_mag	魔法伤害减免数值	是	否
122	lua_role_imm_mag_pct	魔法伤害减免百分比	是	否
123	lua_role_imm_phy	物理伤害减免数值	是	否
124	lua_role_imm_phy_pct	物理伤害减免百分比	是	否
125	lua_role_atk_mode	攻击类型	否	否
126	lua_role_can_walk	能走路	否	是
127	lua_role_can_run	能跑步	否	是
128	lua_role_can_turn	能转向	否	是
129	lua_role_can_jump_map	能跳地图	否	是
130	lua_role_can_phy_atk	能物理攻击	否	是
131	lua_role_can_mag_atk	能魔法攻击	否	是
132	lua_role_can_use_item	能使用道具(包括换装)	否	是
133	lua_role_is_phy_imm	物理免疫	否	是
134	lua_role_is_mag_imm	魔法免疫	否	是
135	lua_role_is_stealth	隐形	否	是
136	lua_role_has_mana_shield	有流光护盾	否	是
137	lua_role_has_collide	处于冲撞状态	否	是
138	lua_role_has_repelled	处于击退状态	否	是
139	lua_role_can_push	能否被推	否	是
140	lua_role_can_use_skill	能否使用技能	否	是
141	lua_role_is_black	是否为黑名	否	是
142	lua_role_has_imm_shield	有减免盾	否	是
143	lua_role_imm_shield	减免盾多少值，BUFF消失	否	是
144	lua_role_has_bag_guard	有包裹防掉落	否	是
145	lua_role_has_equip_guard	有装备防掉落	否	是
146	lua_role_is_gray	灰名	否	是
147	lua_role_is_chaos	混沌状态	否	是
148	lua_role_is_poisoning	是否中毒	否	是
149	lua_role_is_ghost	是否进入幽灵状态	否	是
150	lua_role_is_pk	是否pk状态	否	是
151	lua_role_can_through	是否可以穿人穿怪	否	否
152	lua_role_can_zhenshi	是否珍视	否	是
153	lua_role_can_opt_bag	是否可以操作包裹	否	否
154	lua_role_can_change_atk_mode	是否可以改变攻击类型	否	否
155	lua_role_inner_force	角色内功值	否	否
156	lua_role_inner_force_lv	角色内功等级	否	否
157	lua_role_inner_force_rec	内功恢复速度	是	否
158	lua_role_inner_force_rec_pct	内功恢复速度百分比	是	是
159	lua_role_max_inner_force	角色最大内功值	是	否
160	lua_role_inner_force_exp_pct	内功经验倍数	是	是
161	lua_role_inner_force_derate_pct	内功减伤百分比	是	是
162	lua_role_big_bag_size	大包裹大小	否	否
163	lua_role_is_pretending_dead	是否假死状态	否	否
164	lua_role_is_ignore_inv_detect	是否无视侦测隐形	否	是
165	lua_role_can_be_through	是否可被穿透	否	是
166	lua_role_burst_coff	暴击加成	是	否
167	lua_role_only_show_mp	是否显示魔法蓝条
1代表是；0代表否	是	否
168	lua_role_ignore_burst	忽略暴击率	是	是
180	lua_role_has_team	有队伍	否	是
181	lua_role_gender	性别	否	否
182	lua_role_head	头像	否	否
183	lua_role_hair	头发	否	否
184	lua_role_hair_color	头发颜色	否	否
185	lua_role_gm_level	gm等级	否	是
186	lua_role_identify	鉴定积分	否	否
187	lua_role_title	称号	否	否
188	lua_role_gold_settlement	金币结算: 1金币结算；0绑币结算	否	否
189	lua_role_stall	0: 未摆摊；1: 摆摊准备；2: 摆摊中	否	是
190	lua_role_friend_switch	0: 不可加好友；1: 可加好友	否	否
191	lua_role_team_switch	0: 不接收队伍邀请；1: 接收队伍邀请	否	否
192	lua_role_has_family	有行会	否	是
193	lua_role_exp_pct	经验倍数	是	否
194	lua_role_mag_miss	魔法闪避	是	否
195	lua_role_intensity	装备强度	否	否
196	lua_role_attack_pct	攻击力倍数	是	否
197	lua_role_defense_pct	防御力倍数	是	否
198	lua_role_gp_runtime	反外挂运行时计时器	否	是
199	lua_role_gp	反外挂总计数器	否	是
200	lua_role_ride_switch	骑马开关	否	否
201	lua_role_vip_level	角色vip等级	否	否
202	lua_role_vip_buytimes	角色vip购买时间	否	是
203	lua_role_lock_switch	锁开关	否	否
204	lua_role_effect1	武器发光位置	是	是
205	lua_role_effect2	身体发光位置	否	是
206	lua_role_effect3	马蹄发光位置	否	是
207	lua_role_effect4	预留发光位置1	否	是
208	lua_role_effect5	预留发光位置2	否	是
209	lua_role_camp	阵营	否	否
210	lua_role_avatar	外形	否	是
211	lua_role_rage	怒气	否	否
212	lua_role_max_rage	怒气上限	否	否
213	lua_role_hunt_drop_pct	怪物掉落倍数	是	否
214	lua_role_ignore_def	忽视目标防御常数	是	是
215	lua_role_ignore_def_pct	忽视目标防御百分比	是	否
216	lua_role_ignore_imm	忽视目标减免盾常数	是	否
217	lua_role_ignore_imm_pct	忽视目标减免盾百分比	是	否
218	lua_role_ignore_def_valid	忽视目标防御生效概率百分比	是	否
219	lua_role_igonre_imm_valid	忽视目标减免盾生效概率百分比	是	否
220	lua_role_fashion_switch	时装开关	否	否
221	lua_role_fashion_weapon_switch	时装武器开关	否	否
222	lua_role_ignore_mag_imm_pct	忽视目标魔法减免百分比	是	否
223	lua_role_ignore_phy_imm_pct	忽视目标物理减免百分比	是	否
224	lua_role_ignore_ref	忽视目标反射伤害数值	是	否
225	lua_role_ignore_ref_pct	忽视目标反射伤害百分比	是	否
226	lua_role_ignore_mag_miss	忽视目标魔法闪避	是	否
227	lua_role_max_hp_base	HP上限基准值	是	否
228	lua_role_max_mp_base	MP上限基准值	是	否
229	lua_role_max_phy_def_base	物防上限基准值	是	否
230	lua_role_min_phy_def_base	物防下限基准值	是	否
231	lua_role_max_mag_def_base	魔防上限基准值	是	否
232	lua_role_min_mag_def_base	魔防下限基准值	是	否
233	lua_role_max_phy_atk_base	物攻上限基准值	是	否
234	lua_role_min_phy_atk_base	物攻下限基准值	是	否
235	lua_role_max_mag_atk_base	魔攻上限基准值	是	否
236	lua_role_min_mag_atk_base	魔攻下限基准值	是	否
237	lua_role_max_tao_atk_base	术攻上限基准值	是	否
238	lua_role_min_tao_atk_base	术攻下限基准值	是	否
239	lua_role_max_hp_pct_ex	HP上限扩展百分比	是	否
240	lua_role_max_mp_pct_ex	MP上限扩展百分比	是	否
241	lua_role_max_phy_def_pct_ex	物防上限扩展百分比	是	否
242	lua_role_min_phy_def_pct_ex	物防下限扩展百分比	是	否
243	lua_role_max_mag_def_pct_ex	魔防上限扩展百分比	是	否
244	lua_role_min_mag_def_pct_ex	魔防下限扩展百分比	是	否
245	lua_role_max_phy_atk_pct_ex	物攻上限扩展百分比	是	否
246	lua_role_min_phy_atk_pct_ex	物攻下限扩展百分比	是	否
247	lua_role_max_mag_atk_pct_ex	魔攻上限扩展百分比	是	否
248	lua_role_min_mag_atk_pct_ex	魔攻下限扩展百分比	是	否
249	lua_role_max_tao_atk_pct_ex	术攻上限扩展百分比	是	否
250	lua_role_min_tao_atk_pct_ex	术攻下限扩展百分比	是	否
251	lua_role_extra_proficiency_inc	技能的额外熟练度增量	是	否
252	lua_role_ignore_phy_def	忽视目标物理防御常数	是	否
253	lua_role_ignore_phy_def_pct	忽视目标物理防御百分比	是	否
254	lua_role_ignore_mag_def	忽视目标魔法防御常数	是	否
255	lua_role_ignore_mag_def_pct	忽视目标魔法防御百分比	是	否
256	lua_role_ignore_ele_1_def	忽视属性防御1（金相性防御）	是	否
257	lua_role_ignore_ele_2_def	忽视属性防御2（木相性防御）	是	否
258	lua_role_ignore_ele_3_def	忽视属性防御3（水相性防御）	是	否
259	lua_role_ignore_ele_4_def	忽视属性防御4（火相性防御）	是	否
260	lua_role_ignore_ele_5_def	忽视属性防御5（土相性防御）	是	否
261	lua_role_ignore_ele_1_def_pct	忽视属性防御百分比1（金相性防御）	是	否
262	lua_role_ignore_ele_2_def_pct	忽视属性防御百分比2（木相性防御）	是	否
263	lua_role_ignore_ele_3_def_pct	忽视属性防御百分比3（水相性防御）	是	否
264	lua_role_ignore_ele_4_def_pct	忽视属性防御百分比4（火相性防御）	是	否
265	lua_role_ignore_ele_5_def_pct	忽视属性防御百分比5（土相性防御）	是	否
266	lua_role_spell_speed_pct	施法速度	是	否
267	lua_role_ignore_burst_coff	忽视暴击攻击系数，用于忽视166号属性(lua_role_burst_coff)	是	否
300	lua_role_dyn_att0	动态属性名0	否	是
301	lua_role_dyn_value0	动态属性值0	否	是
302	lua_role_dyn_att1	动态属性名1	否	是
303	lua_role_dyn_value1	动态属性值1	否	是
304	lua_role_dyn_att2	动态属性名2	否	是
305	lua_role_dyn_value2	动态属性值2	否	是
306	lua_role_dyn_att3	动态属性名3	否	是
307	lua_role_dyn_value3	动态属性值3	否	是
308	lua_role_dyn_att4	动态属性名4	否	是
309	lua_role_dyn_value4	动态属性值4	否	是
310	lua_role_dyn_att5	动态属性名5	否	是
311	lua_role_dyn_value5	动态属性值5	否	是
312	lua_role_dyn_att6	动态属性名6	否	是
313	lua_role_dyn_value6	动态属性值6	否	是
314	lua_role_dyn_att7	动态属性名7	否	是
315	lua_role_dyn_value7	动态属性值7	否	是
316	lua_role_dyn_att8	动态属性名8	否	是
317	lua_role_dyn_value8	动态属性值8	否	是
318	lua_role_dyn_att9	动态属性名9	否	是
319	lua_role_dyn_value9	动态属性值9	否	是
320	lua_role_dyn_att10	动态属性名10	否	是
321	lua_role_dyn_value10	动态属性值10	否	是
322	lua_role_dyn_att11	动态属性名11	否	是
323	lua_role_dyn_value11	动态属性值11	否	是
324	lua_role_dyn_att12	动态属性名12	否	是
325	lua_role_dyn_value12	动态属性值12	否	是
326	lua_role_dyn_att13	动态属性名13	否	是
327	lua_role_dyn_value13	动态属性值13	否	是
328	lua_role_dyn_att14	动态属性名14	否	是
329	lua_role_dyn_value14	动态属性值14	否	是
330	lua_role_dyn_att15	动态属性名15	否	是
331	lua_role_dyn_value15	动态属性值15	否	是
332	lua_role_dyn_att16	动态属性名16	否	是
333	lua_role_dyn_value16	动态属性值16	否	是
334	lua_role_dyn_att17	动态属性名17	否	是
335	lua_role_dyn_value17	动态属性值17	否	是
336	lua_role_dyn_att18	动态属性名18	否	是
337	lua_role_dyn_value18	动态属性值18	否	是
338	lua_role_dyn_att19	动态属性名19	否	是
339	lua_role_dyn_value19	动态属性值19	否	是
340	lua_role_dyn_att20	动态属性名20	否	是
341	lua_role_dyn_value20	动态属性值20	否	是
342	lua_role_dyn_att21	动态属性名21	否	是
343	lua_role_dyn_value21	动态属性值21	否	是
344	lua_role_dyn_att22	动态属性名22	否	是
345	lua_role_dyn_value22	动态属性值22	否	是
346	lua_role_dyn_att23	动态属性名23	否	是
347	lua_role_dyn_value23	动态属性值23	否	是
348	lua_role_dyn_att24	动态属性名24	否	是
349	lua_role_dyn_value24	动态属性值24	否	是
350	lua_role_dyn_att25	动态属性名25	否	是
351	lua_role_dyn_value25	动态属性值25	否	是
352	lua_role_dyn_att26	动态属性名26	否	是
353	lua_role_dyn_value26	动态属性值26	否	是
354	lua_role_dyn_att27	动态属性名27	否	是
355	lua_role_dyn_value27	动态属性值27	否	是
356	lua_role_dyn_att28	动态属性名28	否	是
357	lua_role_dyn_value28	动态属性值28	否	是
358	lua_role_dyn_att29	动态属性名29	否	是
359	lua_role_dyn_value29	动态属性值29	否	是
360	lua_role_dyn_att30	动态属性名30	否	是
361	lua_role_dyn_value30	动态属性值30	否	是
362	lua_role_dyn_att31	动态属性名31	否	是
363	lua_role_dyn_value31	动态属性值31	否	是
364	lua_role_dyn_att32	动态属性名32	否	是
365	lua_role_dyn_value32	动态属性值32	否	是
366	lua_role_dyn_att33	动态属性名33	否	是
367	lua_role_dyn_value33	动态属性值33	否	是
368	lua_role_dyn_att34	动态属性名34	否	是
369	lua_role_dyn_value34	动态属性值34	否	是
370	lua_role_dyn_att35	动态属性名35	否	是
371	lua_role_dyn_value35	动态属性值35	否	是
372	lua_role_dyn_att36	动态属性名36	否	是
373	lua_role_dyn_value36	动态属性值36	否	是
374	lua_role_dyn_att37	动态属性名37	否	是
375	lua_role_dyn_value37	动态属性值37	否	是
376	lua_role_dyn_att38	动态属性名38	否	是
377	lua_role_dyn_value38	动态属性值38	否	是
378	lua_role_dyn_att39	动态属性名39	否	是
379	lua_role_dyn_value39	动态属性值39	否	是
380	lua_role_dyn_att40	动态属性名40	否	是
381	lua_role_dyn_value40	动态属性值40	否	是
382	lua_role_dyn_att41	动态属性名41	否	是
383	lua_role_dyn_value41	动态属性值41	否	是
384	lua_role_dyn_att42	动态属性名42	否	是
385	lua_role_dyn_value42	动态属性值42	否	是
386	lua_role_dyn_att43	动态属性名43	否	是
387	lua_role_dyn_value43	动态属性值43	否	是
388	lua_role_dyn_att44	动态属性名44	否	是
389	lua_role_dyn_value44	动态属性值44	否	是
390	lua_role_dyn_att45	动态属性名45	否	是
391	lua_role_dyn_value45	动态属性值45	否	是
392	lua_role_dyn_att46	动态属性名46	否	是
393	lua_role_dyn_value46	动态属性值46	否	是
394	lua_role_dyn_att47	动态属性名47	否	是
395	lua_role_dyn_value47	动态属性值47	否	是
396	lua_role_dyn_att48	动态属性名48	否	是
397	lua_role_dyn_value48	动态属性值48	否	是
398	lua_role_dyn_att49	动态属性名49	否	是
399	lua_role_dyn_value49	动态属性值49	否	是
400	lua_role_dyn_att50	动态属性名50	否	是
401	lua_role_dyn_value50	动态属性值50	否	是
402	lua_role_dyn_att51	动态属性名51	否	是
403	lua_role_dyn_value51	动态属性值51	否	是
404	lua_role_dyn_att52	动态属性名52	否	是
405	lua_role_dyn_value52	动态属性值52	否	是
406	lua_role_dyn_att53	动态属性名53	否	是
407	lua_role_dyn_value53	动态属性值53	否	是
408	lua_role_dyn_att54	动态属性名54	否	是
409	lua_role_dyn_value54	动态属性值54	否	是
410	lua_role_dyn_att55	动态属性名55	否	是
411	lua_role_dyn_value55	动态属性值55	否	是
412	lua_role_dyn_att56	动态属性名56	否	是
413	lua_role_dyn_value56	动态属性值56	否	是
414	lua_role_dyn_att57	动态属性名57	否	是
415	lua_role_dyn_value57	动态属性值57	否	是
416	lua_role_dyn_att58	动态属性名58	否	是
417	lua_role_dyn_value58	动态属性值58	否	是
418	lua_role_dyn_att59	动态属性名59	否	是
419	lua_role_dyn_value59	动态属性值59	否	是
420	lua_role_dyn_att60	动态属性名60	否	是
421	lua_role_dyn_value60	动态属性值60	否	是
422	lua_role_dyn_att61	动态属性名61	否	是
423	lua_role_dyn_value61	动态属性值61	否	是
424	lua_role_dyn_att62	动态属性名62	否	是
425	lua_role_dyn_value62	动态属性值62	否	是
426	lua_role_dyn_att63	动态属性名63	否	是
427	lua_role_dyn_value63	动态属性值63	否	是
428	lua_role_dyn_att64	动态属性名64	否	是
429	lua_role_dyn_value64	动态属性值64	否	是
430	lua_role_dyn_att65	动态属性名65	否	是
431	lua_role_dyn_value65	动态属性值65	否	是
432	lua_role_dyn_att66	动态属性名66	否	是
433	lua_role_dyn_value66	动态属性值66	否	是
434	lua_role_dyn_att67	动态属性名67	否	是
435	lua_role_dyn_value67	动态属性值67	否	是
436	lua_role_dyn_att68	动态属性名68	否	是
437	lua_role_dyn_value68	动态属性值68	否	是
438	lua_role_dyn_att69	动态属性名69	否	是
439	lua_role_dyn_value69	动态属性值69	否	是
440	lua_role_dyn_att70	动态属性名70	否	是
441	lua_role_dyn_value70	动态属性值70	否	是
442	lua_role_dyn_att71	动态属性名71	否	是
443	lua_role_dyn_value71	动态属性值71	否	是
444	lua_role_dyn_att72	动态属性名72	否	是
445	lua_role_dyn_value72	动态属性值72	否	是
446	lua_role_dyn_att73	动态属性名73	否	是
447	lua_role_dyn_value73	动态属性值73	否	是
448	lua_role_dyn_att74	动态属性名74	否	是
449	lua_role_dyn_value74	动态属性值74	否	是
450	lua_role_dyn_att75	动态属性名75	否	是
451	lua_role_dyn_value75	动态属性值75	否	是
452	lua_role_dyn_att76	动态属性名76	否	是
453	lua_role_dyn_value76	动态属性值76	否	是
454	lua_role_dyn_att77	动态属性名77	否	是
455	lua_role_dyn_value77	动态属性值77	否	是
456	lua_role_dyn_att78	动态属性名78	否	是
457	lua_role_dyn_value78	动态属性值78	否	是
458	lua_role_dyn_att79	动态属性名79	否	是
459	lua_role_dyn_value79	动态属性值79	否	是
460	lua_role_dyn_att80	动态属性名80	否	是
461	lua_role_dyn_value80	动态属性值80	否	是
462	lua_role_dyn_att81	动态属性名81	否	是
463	lua_role_dyn_value81	动态属性值81	否	是
464	lua_role_dyn_att82	动态属性名82	否	是
465	lua_role_dyn_value82	动态属性值82	否	是
466	lua_role_dyn_att83	动态属性名83	否	是
467	lua_role_dyn_value83	动态属性值83	否	是
468	lua_role_dyn_att84	动态属性名84	否	是
469	lua_role_dyn_value84	动态属性值84	否	是
470	lua_role_dyn_att85	动态属性名85	否	是
471	lua_role_dyn_value85	动态属性值85	否	是
472	lua_role_dyn_att86	动态属性名86	否	是
473	lua_role_dyn_value86	动态属性值86	否	是
474	lua_role_dyn_att87	动态属性名87	否	是
475	lua_role_dyn_value87	动态属性值87	否	是
476	lua_role_dyn_att88	动态属性名88	否	是
477	lua_role_dyn_value88	动态属性值88	否	是
478	lua_role_dyn_att89	动态属性名89	否	是
479	lua_role_dyn_value89	动态属性值89	否	是
480	lua_role_dyn_att90	动态属性名90	否	是
481	lua_role_dyn_value90	动态属性值90	否	是
482	lua_role_dyn_att91	动态属性名91	否	是
483	lua_role_dyn_value91	动态属性值91	否	是
484	lua_role_dyn_att92	动态属性名92	否	是
485	lua_role_dyn_value92	动态属性值92	否	是
486	lua_role_dyn_att93	动态属性名93	否	是
487	lua_role_dyn_value93	动态属性值93	否	是
488	lua_role_dyn_att94	动态属性名94	否	是
489	lua_role_dyn_value94	动态属性值94	否	是
490	lua_role_dyn_att95	动态属性名95	否	是
491	lua_role_dyn_value95	动态属性值95	否	是
492	lua_role_dyn_att96	动态属性名96	否	是
493	lua_role_dyn_value96	动态属性值96	否	是
494	lua_role_dyn_att97	动态属性名97	否	是
495	lua_role_dyn_value97	动态属性值97	否	是
496	lua_role_dyn_att98	动态属性名98	否	是
497	lua_role_dyn_value98	动态属性值98	否	是
498	lua_role_dyn_att99	动态属性名99	否	是
499	lua_role_dyn_value99	动态属性值99	否	是
500	lua_role_custom_att_0	自定义属性0	是	否
501	lua_role_custom_att_1	自定义属性1	是	否
502	lua_role_custom_att_2	自定义属性2	是	否
503	lua_role_custom_att_3	自定义属性3	是	否
504	lua_role_custom_att_4	自定义属性4	是	否
505	lua_role_custom_att_5	自定义属性5	是	否
506	lua_role_custom_att_6	自定义属性6	是	否
507	lua_role_custom_att_7	自定义属性7	是	否
508	lua_role_custom_att_8	自定义属性8	是	否
509	lua_role_custom_att_9	自定义属性9	是	否
510	lua_role_custom_att_10	自定义属性10	是	否
511	lua_role_custom_att_11	自定义属性11	是	否
512	lua_role_custom_att_12	自定义属性12	是	否
513	lua_role_custom_att_13	自定义属性13	是	否
514	lua_role_custom_att_14	自定义属性14	是	否
515	lua_role_custom_att_15	自定义属性15	是	否
516	lua_role_custom_att_16	自定义属性16	是	否
517	lua_role_custom_att_17	自定义属性17	是	否
518	lua_role_custom_att_18	自定义属性18	是	否
519	lua_role_custom_att_19	自定义属性19	是	否
520	lua_role_custom_att_20	自定义属性20	是	否
521	lua_role_custom_att_21	自定义属性21	是	否
522	lua_role_custom_att_22	自定义属性22	是	否
523	lua_role_custom_att_23	自定义属性23	是	否
524	lua_role_custom_att_24	自定义属性24	是	否
525	lua_role_custom_att_25	自定义属性25	是	否
526	lua_role_custom_att_26	自定义属性26	是	否
527	lua_role_custom_att_27	自定义属性27	是	否
528	lua_role_custom_att_28	自定义属性28	是	否
529	lua_role_custom_att_29	自定义属性29	是	否
530	lua_role_custom_att_30	自定义属性30	是	否
531	lua_role_custom_att_31	自定义属性31	是	否
532	lua_role_custom_att_32	自定义属性32	是	否
533	lua_role_custom_att_33	自定义属性33	是	否
534	lua_role_custom_att_34	自定义属性34	是	否
535	lua_role_custom_att_35	自定义属性35	是	否
536	lua_role_custom_att_36	自定义属性36	是	否
537	lua_role_custom_att_37	自定义属性37	是	否
538	lua_role_custom_att_38	自定义属性38	是	否
539	lua_role_custom_att_39	自定义属性39	是	否
540	lua_role_custom_att_40	自定义属性40	是	否
541	lua_role_custom_att_41	自定义属性41	是	否
542	lua_role_custom_att_42	自定义属性42	是	否
543	lua_role_custom_att_43	自定义属性43	是	否
544	lua_role_custom_att_44	自定义属性44	是	否
545	lua_role_custom_att_45	自定义属性45	是	否
546	lua_role_custom_att_46	自定义属性46	是	否
547	lua_role_custom_att_47	自定义属性47	是	否
548	lua_role_custom_att_48	自定义属性48	是	否
549	lua_role_custom_att_49	自定义属性49	是	否
550	lua_role_custom_att_50	自定义属性50	是	否
551	lua_role_custom_att_51	自定义属性51	是	否
552	lua_role_custom_att_52	自定义属性52	是	否
553	lua_role_custom_att_53	自定义属性53	是	否
554	lua_role_custom_att_54	自定义属性54	是	否
555	lua_role_custom_att_55	自定义属性55	是	否
556	lua_role_custom_att_56	自定义属性56	是	否
557	lua_role_custom_att_57	自定义属性57	是	否
558	lua_role_custom_att_58	自定义属性58	是	否
559	lua_role_custom_att_59	自定义属性59	是	否
560	lua_role_custom_att_60	自定义属性60	是	否
561	lua_role_custom_att_61	自定义属性61	是	否
562	lua_role_custom_att_62	自定义属性62	是	否
563	lua_role_custom_att_63	自定义属性63	是	否
564	lua_role_custom_att_64	自定义属性64	是	否
565	lua_role_custom_att_65	自定义属性65	是	否
566	lua_role_custom_att_66	自定义属性66	是	否
567	lua_role_custom_att_67	自定义属性67	是	否
568	lua_role_custom_att_68	自定义属性68	是	否
569	lua_role_custom_att_69	自定义属性69	是	否
570	lua_role_custom_att_70	自定义属性70	是	否
571	lua_role_custom_att_71	自定义属性71	是	否
572	lua_role_custom_att_72	自定义属性72	是	否
573	lua_role_custom_att_73	自定义属性73	是	否
574	lua_role_custom_att_74	自定义属性74	是	否
575	lua_role_custom_att_75	自定义属性75	是	否
576	lua_role_custom_att_76	自定义属性76	是	否
577	lua_role_custom_att_77	自定义属性77	是	否
578	lua_role_custom_att_78	自定义属性78	是	否
579	lua_role_custom_att_79	自定义属性79	是	否
580	lua_role_custom_att_80	自定义属性80	是	否
581	lua_role_custom_att_81	自定义属性81	是	否
582	lua_role_custom_att_82	自定义属性82	是	否
583	lua_role_custom_att_83	自定义属性83	是	否
584	lua_role_custom_att_84	自定义属性84	是	否
585	lua_role_custom_att_85	自定义属性85	是	否
586	lua_role_custom_att_86	自定义属性86	是	否
587	lua_role_custom_att_87	自定义属性87	是	否
588	lua_role_custom_att_88	自定义属性88	是	否
589	lua_role_custom_att_89	自定义属性89	是	否
590	lua_role_custom_att_90	自定义属性90	是	否
591	lua_role_custom_att_91	自定义属性91	是	否
592	lua_role_custom_att_92	自定义属性92	是	否
593	lua_role_custom_att_93	自定义属性93	是	否
594	lua_role_custom_att_94	自定义属性94	是	否
595	lua_role_custom_att_95	自定义属性95	是	否
596	lua_role_custom_att_96	自定义属性96	是	否
597	lua_role_custom_att_97	自定义属性97	是	否
598	lua_role_custom_att_98	自定义属性98	是	否
599	lua_role_custom_att_99	自定义属性99	是	否
600	lua_role_custom_att_100	自定义属性100	是	否
601	lua_role_custom_att_101	自定义属性101	是	否
602	lua_role_custom_att_102	自定义属性102	是	否
603	lua_role_custom_att_103	自定义属性103	是	否
604	lua_role_custom_att_104	自定义属性104	是	否
605	lua_role_custom_att_105	自定义属性105	是	否
606	lua_role_custom_att_106	自定义属性106	是	否
607	lua_role_custom_att_107	自定义属性107	是	否
608	lua_role_custom_att_108	自定义属性108	是	否
609	lua_role_custom_att_109	自定义属性109	是	否
610	lua_role_custom_att_110	自定义属性110	是	否
611	lua_role_custom_att_111	自定义属性111	是	否
612	lua_role_custom_att_112	自定义属性112	是	否
613	lua_role_custom_att_113	自定义属性113	是	否
614	lua_role_custom_att_114	自定义属性114	是	否
615	lua_role_custom_att_115	自定义属性115	是	否
616	lua_role_custom_att_116	自定义属性116	是	否
617	lua_role_custom_att_117	自定义属性117	是	否
618	lua_role_custom_att_118	自定义属性118	是	否
619	lua_role_custom_att_119	自定义属性119	是	否
620	lua_role_custom_att_120	自定义属性120	是	否
621	lua_role_custom_att_121	自定义属性121	是	否
622	lua_role_custom_att_122	自定义属性122	是	否
623	lua_role_custom_att_123	自定义属性123	是	否
624	lua_role_custom_att_124	自定义属性124	是	否
625	lua_role_custom_att_125	自定义属性125	是	否
626	lua_role_custom_att_126	自定义属性126	是	否
627	lua_role_custom_att_127	自定义属性127	是	否
628	lua_role_custom_att_128	自定义属性128	是	否
629	lua_role_custom_att_129	自定义属性129	是	否
630	lua_role_custom_att_130	自定义属性130	是	否
631	lua_role_custom_att_131	自定义属性131	是	否
632	lua_role_custom_att_132	自定义属性132	是	否
633	lua_role_custom_att_133	自定义属性133	是	否
634	lua_role_custom_att_134	自定义属性134	是	否
635	lua_role_custom_att_135	自定义属性135	是	否
636	lua_role_custom_att_136	自定义属性136	是	否
637	lua_role_custom_att_137	自定义属性137	是	否
638	lua_role_custom_att_138	自定义属性138	是	否
639	lua_role_custom_att_139	自定义属性139	是	否
640	lua_role_custom_att_140	自定义属性140	是	否
641	lua_role_custom_att_141	自定义属性141	是	否
642	lua_role_custom_att_142	自定义属性142	是	否
643	lua_role_custom_att_143	自定义属性143	是	否
644	lua_role_custom_att_144	自定义属性144	是	否
645	lua_role_custom_att_145	自定义属性145	是	否
646	lua_role_custom_att_146	自定义属性146	是	否
647	lua_role_custom_att_147	自定义属性147	是	否
648	lua_role_custom_att_148	自定义属性148	是	否
649	lua_role_custom_att_149	自定义属性149	是	否
650	lua_role_custom_att_150	自定义属性150	是	否
651	lua_role_custom_att_151	自定义属性151	是	否
652	lua_role_custom_att_152	自定义属性152	是	否
653	lua_role_custom_att_153	自定义属性153	是	否
654	lua_role_custom_att_154	自定义属性154	是	否
655	lua_role_custom_att_155	自定义属性155	是	否
656	lua_role_custom_att_156	自定义属性156	是	否
657	lua_role_custom_att_157	自定义属性157	是	否
658	lua_role_custom_att_158	自定义属性158	是	否
659	lua_role_custom_att_159	自定义属性159	是	否
660	lua_role_custom_att_160	自定义属性160	是	否
661	lua_role_custom_att_161	自定义属性161	是	否
662	lua_role_custom_att_162	自定义属性162	是	否
663	lua_role_custom_att_163	自定义属性163	是	否
664	lua_role_custom_att_164	自定义属性164	是	否
665	lua_role_custom_att_165	自定义属性165	是	否
666	lua_role_custom_att_166	自定义属性166	是	否
667	lua_role_custom_att_167	自定义属性167	是	否
668	lua_role_custom_att_168	自定义属性168	是	否
669	lua_role_custom_att_169	自定义属性169	是	否
670	lua_role_custom_att_170	自定义属性170	是	否
671	lua_role_custom_att_171	自定义属性171	是	否
672	lua_role_custom_att_172	自定义属性172	是	否
673	lua_role_custom_att_173	自定义属性173	是	否
674	lua_role_custom_att_174	自定义属性174	是	否
675	lua_role_custom_att_175	自定义属性175	是	否
676	lua_role_custom_att_176	自定义属性176	是	否
677	lua_role_custom_att_177	自定义属性177	是	否
678	lua_role_custom_att_178	自定义属性178	是	否
679	lua_role_custom_att_179	自定义属性179	是	否
680	lua_role_custom_att_180	自定义属性180	是	否
681	lua_role_custom_att_181	自定义属性181	是	否
682	lua_role_custom_att_182	自定义属性182	是	否
683	lua_role_custom_att_183	自定义属性183	是	否
684	lua_role_custom_att_184	自定义属性184	是	否
685	lua_role_custom_att_185	自定义属性185	是	否
686	lua_role_custom_att_186	自定义属性186	是	否
687	lua_role_custom_att_187	自定义属性187	是	否
688	lua_role_custom_att_188	自定义属性188	是	否
689	lua_role_custom_att_189	自定义属性189	是	否
690	lua_role_custom_att_190	自定义属性190	是	否
691	lua_role_custom_att_191	自定义属性191	是	否
692	lua_role_custom_att_192	自定义属性192	是	否
693	lua_role_custom_att_193	自定义属性193	是	否
694	lua_role_custom_att_194	自定义属性194	是	否
695	lua_role_custom_att_195	自定义属性195	是	否
696	lua_role_custom_att_196	自定义属性196	是	否
697	lua_role_custom_att_197	自定义属性197	是	否
698	lua_role_custom_att_198	自定义属性198	是	否
699	lua_role_custom_att_199	自定义属性199	是	否
700	lua_role_dyn_att100	动态属性名100	否	是
701	lua_role_dyn_value100	动态属性值100	否	是
702	lua_role_dyn_att101	动态属性名101	否	是
703	lua_role_dyn_value101	动态属性值101	否	是
704	lua_role_dyn_att102	动态属性名102	否	是
705	lua_role_dyn_value102	动态属性值102	否	是
706	lua_role_dyn_att103	动态属性名103	否	是
707	lua_role_dyn_value103	动态属性值103	否	是
708	lua_role_dyn_att104	动态属性名104	否	是
709	lua_role_dyn_value104	动态属性值104	否	是
710	lua_role_dyn_att105	动态属性名105	否	是
711	lua_role_dyn_value105	动态属性值105	否	是
712	lua_role_dyn_att106	动态属性名106	否	是
713	lua_role_dyn_value106	动态属性值106	否	是
714	lua_role_dyn_att107	动态属性名107	否	是
715	lua_role_dyn_value107	动态属性值107	否	是
716	lua_role_dyn_att108	动态属性名108	否	是
717	lua_role_dyn_value108	动态属性值108	否	是
718	lua_role_dyn_att109	动态属性名109	否	是
719	lua_role_dyn_value109	动态属性值109	否	是
720	lua_role_dyn_att110	动态属性名110	否	是
721	lua_role_dyn_value110	动态属性值110	否	是
722	lua_role_dyn_att111	动态属性名111	否	是
723	lua_role_dyn_value111	动态属性值111	否	是
724	lua_role_dyn_att112	动态属性名112	否	是
725	lua_role_dyn_value112	动态属性值112	否	是
726	lua_role_dyn_att113	动态属性名113	否	是
727	lua_role_dyn_value113	动态属性值113	否	是
728	lua_role_dyn_att114	动态属性名114	否	是
729	lua_role_dyn_value114	动态属性值114	否	是
730	lua_role_dyn_att115	动态属性名115	否	是
731	lua_role_dyn_value115	动态属性值115	否	是
732	lua_role_dyn_att116	动态属性名116	否	是
733	lua_role_dyn_value116	动态属性值116	否	是
734	lua_role_dyn_att117	动态属性名117	否	是
735	lua_role_dyn_value117	动态属性值117	否	是
736	lua_role_dyn_att118	动态属性名118	否	是
737	lua_role_dyn_value118	动态属性值118	否	是
738	lua_role_dyn_att119	动态属性名119	否	是
739	lua_role_dyn_value119	动态属性值119	否	是
740	lua_role_dyn_att120	动态属性名120	否	是
741	lua_role_dyn_value120	动态属性值120	否	是
742	lua_role_dyn_att121	动态属性名121	否	是
743	lua_role_dyn_value121	动态属性值121	否	是
744	lua_role_dyn_att122	动态属性名122	否	是
745	lua_role_dyn_value122	动态属性值122	否	是
746	lua_role_dyn_att123	动态属性名123	否	是
747	lua_role_dyn_value123	动态属性值123	否	是
748	lua_role_dyn_att124	动态属性名124	否	是
749	lua_role_dyn_value124	动态属性值124	否	是
750	lua_role_dyn_att125	动态属性名125	否	是
751	lua_role_dyn_value125	动态属性值125	否	是
752	lua_role_dyn_att126	动态属性名126	否	是
753	lua_role_dyn_value126	动态属性值126	否	是
754	lua_role_dyn_att127	动态属性名127	否	是
755	lua_role_dyn_value127	动态属性值127	否	是
756	lua_role_dyn_att128	动态属性名128	否	是
757	lua_role_dyn_value128	动态属性值128	否	是
758	lua_role_dyn_att129	动态属性名129	否	是
759	lua_role_dyn_value129	动态属性值129	否	是
760	lua_role_dyn_att130	动态属性名130	否	是
761	lua_role_dyn_value130	动态属性值130	否	是
762	lua_role_dyn_att131	动态属性名131	否	是
763	lua_role_dyn_value131	动态属性值131	否	是
764	lua_role_dyn_att132	动态属性名132	否	是
765	lua_role_dyn_value132	动态属性值132	否	是
766	lua_role_dyn_att133	动态属性名133	否	是
767	lua_role_dyn_value133	动态属性值133	否	是
768	lua_role_dyn_att134	动态属性名134	否	是
769	lua_role_dyn_value134	动态属性值134	否	是
770	lua_role_dyn_att135	动态属性名135	否	是
771	lua_role_dyn_value135	动态属性值135	否	是
772	lua_role_dyn_att136	动态属性名136	否	是
773	lua_role_dyn_value136	动态属性值136	否	是
774	lua_role_dyn_att137	动态属性名137	否	是
775	lua_role_dyn_value137	动态属性值137	否	是
776	lua_role_dyn_att138	动态属性名138	否	是
777	lua_role_dyn_value138	动态属性值138	否	是
778	lua_role_dyn_att139	动态属性名139	否	是
779	lua_role_dyn_value139	动态属性值139	否	是
780	lua_role_dyn_att140	动态属性名140	否	是
781	lua_role_dyn_value140	动态属性值140	否	是
782	lua_role_dyn_att141	动态属性名141	否	是
783	lua_role_dyn_value141	动态属性值141	否	是
784	lua_role_dyn_att142	动态属性名142	否	是
785	lua_role_dyn_value142	动态属性值142	否	是
786	lua_role_dyn_att143	动态属性名143	否	是
787	lua_role_dyn_value143	动态属性值143	否	是
788	lua_role_dyn_att144	动态属性名144	否	是
789	lua_role_dyn_value144	动态属性值144	否	是
790	lua_role_dyn_att145	动态属性名145	否	是
791	lua_role_dyn_value145	动态属性值145	否	是
792	lua_role_dyn_att146	动态属性名146	否	是
793	lua_role_dyn_value146	动态属性值146	否	是
794	lua_role_dyn_att147	动态属性名147	否	是
795	lua_role_dyn_value147	动态属性值147	否	是
796	lua_role_dyn_att148	动态属性名148	否	是
797	lua_role_dyn_value148	动态属性值148	否	是
798	lua_role_dyn_att149	动态属性名149	否	是
799	lua_role_dyn_value149	动态属性值149	否	是
800	lua_role_dyn_att150	动态属性名150	否	是
801	lua_role_dyn_value150	动态属性值150	否	是
802	lua_role_dyn_att151	动态属性名151	否	是
803	lua_role_dyn_value151	动态属性值151	否	是
804	lua_role_dyn_att152	动态属性名152	否	是
805	lua_role_dyn_value152	动态属性值152	否	是
806	lua_role_dyn_att153	动态属性名153	否	是
807	lua_role_dyn_value153	动态属性值153	否	是
808	lua_role_dyn_att154	动态属性名154	否	是
809	lua_role_dyn_value154	动态属性值154	否	是
810	lua_role_dyn_att155	动态属性名155	否	是
811	lua_role_dyn_value155	动态属性值155	否	是
812	lua_role_dyn_att156	动态属性名156	否	是
813	lua_role_dyn_value156	动态属性值156	否	是
814	lua_role_dyn_att157	动态属性名157	否	是
815	lua_role_dyn_value157	动态属性值157	否	是
816	lua_role_dyn_att158	动态属性名158	否	是
817	lua_role_dyn_value158	动态属性值158	否	是
818	lua_role_dyn_att159	动态属性名159	否	是
819	lua_role_dyn_value159	动态属性值159	否	是
820	lua_role_dyn_att160	动态属性名160	否	是
821	lua_role_dyn_value160	动态属性值160	否	是
822	lua_role_dyn_att161	动态属性名161	否	是
823	lua_role_dyn_value161	动态属性值161	否	是
824	lua_role_dyn_att162	动态属性名162	否	是
825	lua_role_dyn_value162	动态属性值162	否	是
826	lua_role_dyn_att163	动态属性名163	否	是
827	lua_role_dyn_value163	动态属性值163	否	是
828	lua_role_dyn_att164	动态属性名164	否	是
829	lua_role_dyn_value164	动态属性值164	否	是
830	lua_role_dyn_att165	动态属性名165	否	是
831	lua_role_dyn_value165	动态属性值165	否	是
832	lua_role_dyn_att166	动态属性名166	否	是
833	lua_role_dyn_value166	动态属性值166	否	是
834	lua_role_dyn_att167	动态属性名167	否	是
835	lua_role_dyn_value167	动态属性值167	否	是
836	lua_role_dyn_att168	动态属性名168	否	是
837	lua_role_dyn_value168	动态属性值168	否	是
838	lua_role_dyn_att169	动态属性名169	否	是
839	lua_role_dyn_value169	动态属性值169	否	是
840	lua_role_dyn_att170	动态属性名170	否	是
841	lua_role_dyn_value170	动态属性值170	否	是
842	lua_role_dyn_att171	动态属性名171	否	是
843	lua_role_dyn_value171	动态属性值171	否	是
844	lua_role_dyn_att172	动态属性名172	否	是
845	lua_role_dyn_value172	动态属性值172	否	是
846	lua_role_dyn_att173	动态属性名173	否	是
847	lua_role_dyn_value173	动态属性值173	否	是
848	lua_role_dyn_att174	动态属性名174	否	是
849	lua_role_dyn_value174	动态属性值174	否	是
850	lua_role_dyn_att175	动态属性名175	否	是
851	lua_role_dyn_value175	动态属性值175	否	是
852	lua_role_dyn_att176	动态属性名176	否	是
853	lua_role_dyn_value176	动态属性值176	否	是
854	lua_role_dyn_att177	动态属性名177	否	是
855	lua_role_dyn_value177	动态属性值177	否	是
856	lua_role_dyn_att178	动态属性名178	否	是
857	lua_role_dyn_value178	动态属性值178	否	是
858	lua_role_dyn_att179	动态属性名179	否	是
859	lua_role_dyn_value179	动态属性值179	否	是
860	lua_role_dyn_att180	动态属性名180	否	是
861	lua_role_dyn_value180	动态属性值180	否	是
862	lua_role_dyn_att181	动态属性名181	否	是
863	lua_role_dyn_value181	动态属性值181	否	是
864	lua_role_dyn_att182	动态属性名182	否	是
865	lua_role_dyn_value182	动态属性值182	否	是
866	lua_role_dyn_att183	动态属性名183	否	是
867	lua_role_dyn_value183	动态属性值183	否	是
868	lua_role_dyn_att184	动态属性名184	否	是
869	lua_role_dyn_value184	动态属性值184	否	是
870	lua_role_dyn_att185	动态属性名185	否	是
871	lua_role_dyn_value185	动态属性值185	否	是
872	lua_role_dyn_att186	动态属性名186	否	是
873	lua_role_dyn_value186	动态属性值186	否	是
874	lua_role_dyn_att187	动态属性名187	否	是
875	lua_role_dyn_value187	动态属性值187	否	是
876	lua_role_dyn_att188	动态属性名188	否	是
877	lua_role_dyn_value188	动态属性值188	否	是
878	lua_role_dyn_att189	动态属性名189	否	是
879	lua_role_dyn_value189	动态属性值189	否	是
880	lua_role_dyn_att190	动态属性名190	否	是
881	lua_role_dyn_value190	动态属性值190	否	是
882	lua_role_dyn_att191	动态属性名191	否	是
883	lua_role_dyn_value191	动态属性值191	否	是
884	lua_role_dyn_att192	动态属性名192	否	是
885	lua_role_dyn_value192	动态属性值192	否	是
886	lua_role_dyn_att193	动态属性名193	否	是
887	lua_role_dyn_value193	动态属性值193	否	是
888	lua_role_dyn_att194	动态属性名194	否	是
889	lua_role_dyn_value194	动态属性值194	否	是
890	lua_role_dyn_att195	动态属性名195	否	是
891	lua_role_dyn_value195	动态属性值195	否	是
892	lua_role_dyn_att196	动态属性名196	否	是
893	lua_role_dyn_value196	动态属性值196	否	是
894	lua_role_dyn_att197	动态属性名197	否	是
895	lua_role_dyn_value197	动态属性值197	否	是
896	lua_role_dyn_att198	动态属性名198	否	是
897	lua_role_dyn_value198	动态属性值198	否	是
898	lua_role_dyn_att199	动态属性名199	否	是
899	lua_role_dyn_value199	动态属性值199	否	是
<上一篇:触发器类型定义下一篇:角色装备位类型定义>
角色装备位类型定义
更新时间：2024-05-23 00:00:00
枚举值	类型值	类型名
1	lua_site_weapon	武器装备位
2	lua_site_helmet	头盔装备位
3	lua_site_wrist_0	护腕0装备位
4	lua_site_wrist_1	护腕1装备位
5	lua_site_armor	衣服装备位
6	lua_site_juju	符咒装备位
7	lua_site_shoes	鞋子装备位
8	lua_site_shoulder	腰带（护肩）装备位
9	lua_site_necklace	项链装备位
10	lua_site_ring_0	戒指0装备位
11	lua_site_ring_1	戒指1装备位
12	lua_site_medal	勋章装备位
13	lua_site_gem	宝石装备位
14	lua_site_wings	翅膀装备位
15	lua_site_amulet	法宝（守护）装备位
16	lua_site_mount	坐骑装备位
17	lua_site_shield	盾牌装备位
18	lua_site_fashion	时装装备位
19	lua_site_hat	斗笠装备位
20	lua_site_gloves	手套装备位
21	lua_site_jewelry	珠宝装备位
22	lua_site_bag_0	背包0第一个格子的site
62	lua_site_bag_1	背包1第一个格子的site
102	lua_site_bag_2	背包2第一个格子的site
142	lua_site_bag_3	背包3第一个格子的site
182	lua_site_bag_4	背包4第一个格子的site
222	lua_site_warehouse	仓库第一个格子的site
262	lua_site_warehouse_adv	高级仓库第一个格子的site
406	lua_site_expand_0	背包0扩充位置的site
407	lua_site_expand_1	背包1扩充位置的site
408	lua_site_expand_2	背包2扩充位置的site
409	lua_site_expand_3	背包3扩充位置的site
410	lua_site_expand_4	背包4扩充位置的site
411	lua_site_glasses	眼镜装备位
412	lua_site_bracelet_0	手镯0装备位
413	lua_site_bracelet_1	手镯1装备位
414	lua_site_mask	面甲装备位
415	lua_site_kneelet	护膝装备位
416	lua_site_chestplate	护胸装备位
417	lua_site_cloak	披风装备位
418	lua_site_earrings	耳环装备位
419	lua_site_headwear	头饰装备位
420	lua_site_legguard	护腿装备位
421	lua_site_jade	玉佩装备位
422	lua_site_instrument	乐器装备位
423	lua_site_hangings	挂饰装备位
424	lua_site_fashion_weapon	时装武器装备位
425	site_equip_reserved_1	预留装备位1
426	site_equip_reserved_2	预留装备位2
427	site_equip_reserved_3	预留装备位3
428	site_equip_reserved_4	预留装备位4
429	site_equip_reserved_5	预留装备位5
430	site_equip_reserved_6	预留装备位6
431	site_equip_reserved_7	预留装备位7
432	site_equip_reserved_8	预留装备位8
433	site_equip_reserved_9	预留装备位9
434	lua_site_equip_custom_0	用户自定义装备位0
435	lua_site_equip_custom_1	用户自定义装备位1
436	lua_site_equip_custom_2	用户自定义装备位2
437	lua_site_equip_custom_3	用户自定义装备位3
438	lua_site_equip_custom_4	用户自定义装备位4
439	lua_site_equip_custom_5	用户自定义装备位5
440	lua_site_equip_custom_6	用户自定义装备位6
441	lua_site_equip_custom_7	用户自定义装备位7
442	lua_site_equip_custom_8	用户自定义装备位8
443	lua_site_equip_custom_9	用户自定义装备位9
444	lua_site_equip_custom_10	用户自定义装备位10
445	lua_site_equip_custom_11	用户自定义装备位11
446	lua_site_equip_custom_12	用户自定义装备位12
447	lua_site_equip_custom_13	用户自定义装备位13
448	lua_site_equip_custom_14	用户自定义装备位14
449	lua_site_equip_custom_15	用户自定义装备位15
450	lua_site_equip_custom_16	用户自定义装备位16
451	lua_site_equip_custom_17	用户自定义装备位17
452	lua_site_equip_custom_18	用户自定义装备位18
453	lua_site_equip_custom_19	用户自定义装备位19
454	lua_site_equip_custom_20	用户自定义装备位20
455	lua_site_equip_custom_21	用户自定义装备位21
456	lua_site_equip_custom_22	用户自定义装备位22
457	lua_site_equip_custom_23	用户自定义装备位23
458	lua_site_equip_custom_24	用户自定义装备位24
459	lua_site_equip_custom_25	用户自定义装备位25
460	lua_site_equip_custom_26	用户自定义装备位26
461	lua_site_equip_custom_27	用户自定义装备位27
462	lua_site_equip_custom_28	用户自定义装备位28
463	lua_site_equip_custom_29	用户自定义装备位29
464	lua_site_equip_custom_30	用户自定义装备位30
465	lua_site_equip_custom_31	用户自定义装备位31
466	lua_site_equip_custom_32	用户自定义装备位32
467	lua_site_equip_custom_33	用户自定义装备位33
468	lua_site_equip_custom_34	用户自定义装备位34
469	lua_site_equip_custom_35	用户自定义装备位35
470	lua_site_equip_custom_36	用户自定义装备位36
471	lua_site_equip_custom_37	用户自定义装备位37
472	lua_site_equip_custom_38	用户自定义装备位38
473	lua_site_equip_custom_39	用户自定义装备位39
474	lua_site_equip_custom_40	用户自定义装备位40
475	lua_site_equip_custom_41	用户自定义装备位41
476	lua_site_equip_custom_42	用户自定义装备位42
477	lua_site_equip_custom_43	用户自定义装备位43
478	lua_site_equip_custom_44	用户自定义装备位44
479	lua_site_equip_custom_45	用户自定义装备位45
480	lua_site_equip_custom_46	用户自定义装备位46
481	lua_site_equip_custom_47	用户自定义装备位47
482	lua_site_equip_custom_48	用户自定义装备位48
483	lua_site_equip_custom_49	用户自定义装备位49
484	lua_site_equip_custom_50	用户自定义装备位50
485	lua_site_equip_custom_51	用户自定义装备位51
486	lua_site_equip_custom_52	用户自定义装备位52
487	lua_site_equip_custom_53	用户自定义装备位53
488	lua_site_equip_custom_54	用户自定义装备位54
489	lua_site_equip_custom_55	用户自定义装备位55
490	lua_site_equip_custom_56	用户自定义装备位56
491	lua_site_equip_custom_57	用户自定义装备位57
492	lua_site_equip_custom_58	用户自定义装备位58
493	lua_site_equip_custom_59	用户自定义装备位59
494	lua_site_equip_custom_60	用户自定义装备位60
495	lua_site_equip_custom_61	用户自定义装备位61
496	lua_site_equip_custom_62	用户自定义装备位62
497	lua_site_equip_custom_63	用户自定义装备位63
498	lua_site_equip_custom_64	用户自定义装备位64
499	lua_site_equip_custom_65	用户自定义装备位65
500	lua_site_equip_custom_66	用户自定义装备位66
501	lua_site_equip_custom_67	用户自定义装备位67
502	lua_site_equip_custom_68	用户自定义装备位68
503	lua_site_equip_custom_69	用户自定义装备位69
504	lua_site_equip_custom_70	用户自定义装备位70
505	lua_site_equip_custom_71	用户自定义装备位71
506	lua_site_equip_custom_72	用户自定义装备位72
507	lua_site_equip_custom_73	用户自定义装备位73
508	lua_site_equip_custom_74	用户自定义装备位74
509	lua_site_equip_custom_75	用户自定义装备位75
510	lua_site_equip_custom_76	用户自定义装备位76
511	lua_site_equip_custom_77	用户自定义装备位77
512	lua_site_equip_custom_78	用户自定义装备位78
513	lua_site_equip_custom_79	用户自定义装备位79
514	lua_site_equip_custom_80	用户自定义装备位80
515	lua_site_equip_custom_81	用户自定义装备位81
516	lua_site_equip_custom_82	用户自定义装备位82
517	lua_site_equip_custom_83	用户自定义装备位83
518	lua_site_equip_custom_84	用户自定义装备位84
519	lua_site_equip_custom_85	用户自定义装备位85
520	lua_site_equip_custom_86	用户自定义装备位86
521	lua_site_equip_custom_87	用户自定义装备位87
522	lua_site_equip_custom_88	用户自定义装备位88
523	lua_site_equip_custom_89	用户自定义装备位89
524	lua_site_equip_custom_90	用户自定义装备位90
525	lua_site_equip_custom_91	用户自定义装备位91
526	lua_site_equip_custom_92	用户自定义装备位92
527	lua_site_equip_custom_93	用户自定义装备位93
528	lua_site_equip_custom_94	用户自定义装备位94
529	lua_site_equip_custom_95	用户自定义装备位95
530	lua_site_equip_custom_96	用户自定义装备位96
531	lua_site_equip_custom_97	用户自定义装备位97
532	lua_site_equip_custom_98	用户自定义装备位98
533	lua_site_equip_custom_99	用户自定义装备位99
534	lua_site_equip_custom_100	用户自定义装备位100
535	lua_site_equip_custom_101	用户自定义装备位101
536	lua_site_equip_custom_102	用户自定义装备位102
537	lua_site_equip_custom_103	用户自定义装备位103
538	lua_site_equip_custom_104	用户自定义装备位104
539	lua_site_equip_custom_105	用户自定义装备位105
540	lua_site_equip_custom_106	用户自定义装备位106
541	lua_site_equip_custom_107	用户自定义装备位107
542	lua_site_equip_custom_108	用户自定义装备位108
543	lua_site_equip_custom_109	用户自定义装备位109
544	lua_site_equip_custom_110	用户自定义装备位110
545	lua_site_equip_custom_111	用户自定义装备位111
546	lua_site_equip_custom_112	用户自定义装备位112
547	lua_site_equip_custom_113	用户自定义装备位113
548	lua_site_equip_custom_114	用户自定义装备位114
549	lua_site_equip_custom_115	用户自定义装备位115
550	lua_site_equip_custom_116	用户自定义装备位116
551	lua_site_equip_custom_117	用户自定义装备位117
552	lua_site_equip_custom_118	用户自定义装备位118
553	lua_site_equip_custom_119	用户自定义装备位119
554	lua_site_equip_custom_120	用户自定义装备位120
555	lua_site_equip_custom_121	用户自定义装备位121
556	lua_site_equip_custom_122	用户自定义装备位122
557	lua_site_equip_custom_123	用户自定义装备位123
558	lua_site_equip_custom_124	用户自定义装备位124
559	lua_site_equip_custom_125	用户自定义装备位125
560	lua_site_equip_custom_126	用户自定义装备位126
561	lua_site_equip_custom_127	用户自定义装备位127
562	lua_site_equip_custom_128	用户自定义装备位128
563	lua_site_equip_custom_129	用户自定义装备位129
564	lua_site_equip_custom_130	用户自定义装备位130
565	lua_site_equip_custom_131	用户自定义装备位131
566	lua_site_equip_custom_132	用户自定义装备位132
567	lua_site_equip_custom_133	用户自定义装备位133
568	lua_site_equip_custom_134	用户自定义装备位134
569	lua_site_equip_custom_135	用户自定义装备位135
570	lua_site_equip_custom_136	用户自定义装备位136
571	lua_site_equip_custom_137	用户自定义装备位137
572	lua_site_equip_custom_138	用户自定义装备位138
573	lua_site_equip_custom_139	用户自定义装备位139
574	lua_site_equip_custom_140	用户自定义装备位140
575	lua_site_equip_custom_141	用户自定义装备位141
576	lua_site_equip_custom_142	用户自定义装备位142
577	lua_site_equip_custom_143	用户自定义装备位143
578	lua_site_equip_custom_144	用户自定义装备位144
579	lua_site_equip_custom_145	用户自定义装备位145
580	lua_site_equip_custom_146	用户自定义装备位146
581	lua_site_equip_custom_147	用户自定义装备位147
582	lua_site_equip_custom_148	用户自定义装备位148
583	lua_site_equip_custom_149	用户自定义装备位149
584	lua_site_big_bag	大背包第一个格子的site
1414	lua_site_second_weapon	副手武器装备位
note_icon 备注
其中大背包最多支持800个装备位。

<上一篇:角色属性类型定义下一篇:日志类型定义>
日志类型定义
更新时间：2022-04-24 00:00:00
日志类型定义请参见下表。

相关接口请参见：LogDetailWithId和LogWithId。

枚举值	类型值	类型名	备注
2	lua_log_action_item_site_error	位置修正失败	
3	lua_log_action_item_error	物品出现错误（系统自动删除）	
4	lua_log_action_buff_error	BUFF出现错误	
5	lua_log_action_item_stream	物品序列化删除	
6	lua_log_action_crash	程序异常	
9	lua_log_action_bag_item_site_error	背包物品格子错误	
12	lua_log_action_item_site_dup	物品的Site重复	
1000	lua_log_action_player_die	玩家死亡	
1001	lua_log_action_player_chat	玩家聊天	
1002	lua_log_action_player_level_up	玩家升级	
1003	lua_log_action_player_exp	玩家增加或者减少经验	
1004	lua_log_action_player_ingot	玩家增加或者减少非绑定元宝	
1005	lua_log_action_player_bind_ingot	玩家增加或者减少绑定元宝	
1006	lua_log_action_player_integral	玩家增加或者减少积分	
1007	lua_log_action_player_gold	玩家增加或者减少非绑定金币	
1008	lua_log_action_player_bind_gold	玩家增加或者减少绑定金币	
1009	lua_log_action_player_gold_deposit	玩家增加或者减少仓库金币	
1010	lua_log_action_player_use_item	玩家使用物品	
1011	lua_log_action_player_buy_item	玩家购买物品	
1012	lua_log_action_player_sell_item	玩家出售物品	
1013	lua_log_action_player_drop_item	玩家掉落物品	
1014	lua_log_action_player_pickup_item	玩家拾取物品	
1015	lua_log_action_player_mall_item	玩家在商城消费	
1016	lua_log_action_player_enter_map	玩家进入地图	
1017	lua_log_action_player_leave_map	玩家离开地图	
1018	lua_log_action_player_die_drop_item	玩家死亡时掉落物品	
1019	lua_log_action_player_trade_p2p_item	玩家进行p2p交易	
1020	lua_log_action_player_trade_stall_item	玩家摆摊	
1021	lua_log_action_player_login	玩家登录游戏	
1022	lua_log_action_player_logout	玩家退出游戏	
1023	lua_log_action_player_item_dur_zero	玩家装备耐久为0	
1024	lua_log_action_player_item_usecount_zero	玩家物品使用次数为0	
1025	lua_log_action_player_item_time_zero	玩家物品时限为0	
1026	lua_log_action_player_user_cmd	执行自定义GM命令	
1027	lua_log_action_player_gm_cmd	执行GM命令	
1028	lua_log_action_player_market_sell	玩家在寄售行出售物品	
1029	lua_log_action_player_market_buy	玩家在寄售行购买物品	
1030	lua_log_action_player_market_delegate	玩家在寄售行收购	
1031	lua_log_action_player_mail_pick	玩家提取邮件附件	
1032	lua_log_action_player_mail_send	玩家发送邮件	
1033	lua_log_action_player_item_e2e	物品从装备栏移动到装备栏	
1034	lua_log_action_player_item_e2b	物品从装备栏移动到背包	
1035	lua_log_action_player_item_b2e	物品从背包移动到装备栏	
1036	lua_log_action_player_item_b2b	物品从背包移动到背包	
1037	lua_log_action_player_item_b2w	物品从背包移动到仓库	
1038	lua_log_action_player_item_b2wa	物品从背包移动到高级仓库	
1039	lua_log_action_player_item_be2be	物品从拓展背包移动到拓展背包	
1040	lua_log_action_player_item_b2be	物品从背包移动到拓展背包	
1041	lua_log_action_player_item_be2b	物品从拓展背包移动到背包	
1042	lua_log_action_player_item_w2w	物品从仓库移动到仓库	
1043	lua_log_action_player_item_w2b	物品从仓库移动到背包	
1044	lua_log_action_player_item_wa2wa	物品从高级仓库移动到高级仓库	
1045	lua_log_action_player_item_wa2b	物品从高级仓库移动到背包	
1046	lua_log_action_player_item_amount_zero	玩家物品数量为0	
1047	lua_log_action_player_kick	踢出玩家	
1051	lua_log_action_player_dig_item	玩家挖肉	
1052	lua_log_action_player_mine_item	玩家挖矿	
1053	lua_log_action_player_gm_item	GM刷物品	
1054	lua_log_action_player_gm_map_item	GM刷地图物品	
1055	lua_log_action_player_item_drop_map_auto	物品自动掉落在地图上	
1056	lua_log_action_player_item_drop_unknown	未知掉落	
1057	lua_log_action_player_identify_item	鉴定物品	
1058	lua_log_action_player_modify_attr	修改玩家属性	
1059	lua_log_action_player_trade_stall_item_in	摆摊买入物品	
1060	lua_log_action_destroy_item_stack	堆叠物品销毁	
1061	lua_log_action_player_item_p2h	物品从主人包裹移动到英雄包裹	
1062	lua_log_action_player_item_h2p	物品从英雄包裹移动到主人包裹	
1063	lua_log_action_player_item_h2h	英雄之间交换物品	
1064	lua_log_action_player_mail_delete	玩家删除邮件	
1065	lua_log_action_player_item_split	物品拆分	
1400	lua_log_action_player_relive	玩家复活	
1500	lua_log_action_player_arrange_b	背包整理	
1501	lua_log_action_player_arrange_w	仓库整理	
1502	lua_log_action_player_arrange_wa	高级仓库整理	
1600	lua_log_action_player_buff_add	玩家添加BUFF	
1601	lua_log_action_player_buff_remove	玩家删除BUFF	
1602	lua_log_action_player_load_json_fail	从Json字符串转化为物品实体失败	
1800	lua_log_action_player_quest_accept	玩家接受任务	
1801	lua_log_action_player_quest_accomplish	玩家提交任务	
1802	lua_log_action_player_quest_track_change	任务追踪变更	
1803	lua_log_action_player_quest_drop	玩家放弃任务	
1804	lua_log_action_player_gp	玩家数据异常	
1805	lua_log_action_player_gp_drop	玩家数据异常丢包	
1806	lua_log_action_player_gp_detail	玩家数据异常详情	
1808	lua_log_action_player_learn_skill	玩家获取技能	
1810	lua_log_action_player_family_create	玩家创建行会	
1811	lua_log_action_player_family_join	玩家加入行会	
1812	lua_log_action_player_family_leave	玩家离开行会	
1813	lua_log_action_player_family_expell	玩家被驱逐出行会	
1814	lua_log_action_player_family_promote	行会称号提升	
1815	lua_log_action_player_family_destroy	玩家解散行会	
1816	lua_log_action_player_active	活跃度记录	
1817	lua_log_action_player_gp_one	严格模式惩罚	
1819	lua_log_action_player_submit_form	提交表单	
1820	lua_log_action_player_select_npc	玩家选中NPC	
1821	lua_log_action_player_npc_talk	打开NPC面板	
1822	lua_log_action_player_captcha	验证码记录	
1833	lua_log_action_player_anticheat_hack_rpt	检测出玩家使用外挂	
1834	lua_log_action_player_anticheat_timeout	外挂检测失败	
1835	lua_log_action_player_yidun_heartbeat_rpt	手游易盾反外挂心跳超时	
1836	lua_log_action_player_yidun_hack_rpt	手游易盾反外挂检测出异常	
1837	lua_log_action_cangbaoge_up	在神兔宝库上架物品	
1838	lua_log_action_cangbaoge_down	在神兔宝库下架物品	
1839	lua_log_action_cangbaoge_buy	在神兔宝库购买物品	
1840	lua_log_action_player_yidun_pc_hack_rpt	端游易盾反外挂检测出异常	
1841	lua_log_action_player_yidun_pc_heartbeat_rpt	端游易盾反外挂心跳超时	
1842	lua_log_action_set_forbid_login	封禁玩家	
1843	lua_log_action_dis_forbid_login	解除封禁	
2000	lua_log_action_monster_die	怪物死亡	
2001	lua_log_action_monster_die_drop_item	怪物死亡掉落物品	
2002	lua_log_action_monster_die_drop_gold	怪物死亡掉落金币	
2003	lua_log_action_monster_relive	怪物复活	
2004	lua_log_action_monster_script_gen	脚本生成怪物	
2005	lua_log_action_monster_betry	宠物背叛	
2006	lua_log_action_monster_catch	捕捉宠物	
3000	lua_log_action_script_add_item	脚本添加物品	
3001	lua_log_action_script_remove_item	脚本删除物品	
4000	lua_log_action_map_drop_item	地图上掉落物品	
4001	lua_log_action_map_drop_gold	地图上掉落金币	
4002	lua_log_action_map_item_expire	地图上物品到期	
5000	lua_log_action_castle_init_war	攻城战申请成功	
5001	lua_log_action_castle_starting_war	开始攻城战	
5002	lua_log_action_castle_ending_war	关闭攻城战	
5003	lua_log_action_castle_stop_war	停止攻城战	
5004	lua_log_action_castle_temp_family	行会临时占有城堡	
30000	lua_log_action_user_define_start	用户定义开始	
30001	lua_log_action_script_timeout	脚本超时	
部分日志类型已无效，具体请参见下表。

枚举值	类型值
1	lua_log_action_item_site_fixed
7	lua_log_action_item_to_json_one
8	lua_log_action_item_to_json
10	lua_log_action_item_guid_error
11	lua_log_action_item_guid_dup
1048	lua_log_action_player_create
1049	lua_log_action_player_delete
1050	lua_log_action_player_recover
1807	lua_log_action_player_kill
1809	lua_log_action_player_join_team
1818	lua_log_action_gmbox
1823	lua_log_action_player_behavior_ntf
1824	lua_log_action_player_npc_talk_leaf_talk
1825	lua_log_action_player_teleport_home
1826	lua_log_action_player_teleport_random
1827	lua_log_action_player_flee_when_meeting_player
1828	lua_log_action_player_fly_when_pack_full
1829	lua_log_action_player_game_guard_check
1830	lua_log_action_player_game_guard_hack_rpt
1831	lua_log_action_player_bangcle_hack_rpt
1832	lua_log_action_player_bangcle_timeout
5500	lua_log_action_glory_finish
10000	lua_log_action_test
<上一篇:角色装备位类型定义下一篇:错误码类型定义>
错误码类型定义
更新时间：2022-11-08 00:00:00
在某些客户端逻辑事件中，可能需要获取到错误码来进行相关操作，错误码的相关信息可在下表中查询。

错误码类型定义请参见下表。

枚举值	类型值	错误码对应的提示内容	备注
0	ERR_OK	成功	
1	ERR_SYSTEM	系统错误	
2	ERR_UNKNOW	未知错误	
3	ERR_ALREADYONLINE	账号已在线	
4	ERR_INLOADUSERDATA	账号信息加载中	
5	ERR_DATABASEERR	数据库操作失败	
6	ERR_NOUSERDATA	无账号数据	
7	ERR_NOROLEDATA	无角色数据	
8	ERR_ROLEDELLIMIT	每日只能删除一个角色	
9	ERR_CREATEMAXROLE	达到创建角色最大数	
10	ERR_USESTATEWRONG	角色状态错误	
11	ERR_ROLENAMEEXIST	角色名已存在	
12	ERR_LOGINTIMEOUT	账号登录超时	
13	ERR_ROLEINCREATE	角色创建中	
14	ERR_ROLEGENDER	非法的角色性别	
15	ERR_ROLEJOB	非法的角色职业	
16	ERR_GETROLEDATA	获取角色数据失败	
17	ERR_NOROLEINLIST	角色列表中无此角色	
18	ERR_ROLEDESTROY	角色已删除	
19	ERR_ALREADYINGAME	角色已经在游戏中	
20	ERR_GSNOTEXIST	Game Server不存在	
21	ERR_SELECTTIMEOUT	选角色超时	
22	ERR_CREATETIMEOUT	创建角色超时	
23	ERR_ENTERGSTIMEOUT	进入Game Server超时	
24	ERR_ROLEACTIONFAIL	角色执行错误	
25	ERR_UNKNOWEXITTYPE	未知的下线类型	
26	ERR_NOMAPDATA	找不到地图信息	
27	ERR_MOVEFAIL	移动失败	
28	ERR_MOVETOOFAST	移动速度太快	
29	ERR_MOVESTIFF	移动时处于僵直状态	
30	ERR_TURNFAIL	转向失败	
31	ERR_TURNSTIFF	转向时处于硬直状态	
32	ERR_NOMOVABLEPOINT	没有可移动点	
33	ERR_REPEATLOGIN	同一帐号重复登录	
34	ERR_NOGRID	没有逻辑格信息	
35	ERR_NOMONSTER	没有怪物信息	
36	ERR_TARGETTOOFAR	目标距离太远	
37	ERR_NOGMCMD	GM指令不存在	
38	ERR_EXEGMCMDFAIL	GM指令执行失败	
39	ERR_GMCMDNORIGHT	无权限执行GM指令	
40	ERR_RULECHECKFAIL	地图规则检查失败	
41	ERR_BANWORD	请不要使用敏感词	
42	ERR_ILLEGALITY	包含非法字符	
43	ERR_BAG_MAPPINGS	背包映射异常	
44	ERR_VERIFY_FAIL_AGAIN	验证码输入有误，请重试	
45	ERR_VERIFY_FAIL_CANCEL	验证码输入有误	
46	ERR_LOGIN_WRONG_USER	无此用户	
47	ERR_LOGIN_WRONG_PASSWORD	密码输入有误	
48	ERR_NOUSCMD	用户指令不存在	
49	ERR_NOUSSCRIPT	用户指令脚本不存在	
50	ERR_EXECUSCMDFAIL	用户指令执行失败	
51	ERR_MOVE_PUNISH_CONTINUOUS	移动连续异常惩罚	
52	ERR_MOVE_PUNISH_SAMPLING	移动采样异常惩罚	
53	ERR_MS_PUNISH_SAMPLING	MS采样异常惩罚	
54	ERR_GS_KICK_PLAYER	GS踢人具体原因在协议中描述	
55	ERR_GP_PUNISH	反外挂惩罚	
56	ERR_SVR_STOP	服务器停止	
57	ERR_NAME_LENGTH	名字太短	
58	ERR_CREATE_ROLE_IN_COMBAT	不能在对战区创建角色	
59	ERR_GS_OVERLOAD	GS人数已达上限	
60	ERR_GS_MIGRATE_DATA	GS迁移玩家数据	
61	ERR_USERDATA_ABNORMAL	账号数据异常	
62	ERR_CREATE_ROLE_IN_CFG	暂时关闭创建角色功能	
1000	ERR_ITEM_NOT_ENOUGH	物品不足	
1001	ERR_ITEM_SPACE_FULL	您的包裹已经满了！	
1002	ERR_ITEM_ADD	物品添加失败	
1003	ERR_ITEM_DESTROY	物品删除失败	
1004	ERR_ITEM_MOVE	物品移动失败	
1005	ERR_ITEM_SPLIT	物品拆分失败	
1006	ERR_ITEM_BIND	物品绑定失败	
1007	ERR_ITEM_APPLY	物品使用失败	
1008	ERR_ITEM_SCRIPT_NOT_EXIST	物品脚本不存在	
1009	ERR_ITEM_CANT_EQUIP	该物品不可装备	
1010	ERR_ITEM_NOT_EQUIP_SITE	目标位置不是装备位	
1011	ERR_ITEM_EQUIP_NOT_SUIT_SITE	装备不匹配装备位	
1012	ERR_ITEM_EQUIP_JOB	职业不匹配	
1013	ERR_ITEM_EQUIP_GENDER	性别不匹配	
1014	ERR_ITEM_EQUIP_LEVEL	未达到装备等级	
1015	ERR_ITEM_EQUIP_BIND_TYPE	装备绑定类型不匹配	
1016	ERR_ITEM_EQUIP_WEIGHT	装备负重不足	
1017	ERR_ITEM_MAX_BRAWN	腕力不足	
1018	ERR_ITEM_MAX_PHY_ATK	物理攻击不足	
1019	ERR_ITEM_MAX_MAG_ATK	魔法攻击不足	
1020	ERR_ITEM_MAX_TAO_ATK	咒术攻击不足	
1021	ERR_ITEM_ARRANGE	物品整理失败	
1022	ERR_ITEM_PICKUP	拾取失败	
1023	ERR_ITEM_PICKUP_OWNER	该物品目前不属于你	
1024	ERR_ITEM_PICKUP_TEAM	你不在可拾取人的队伍中	
1025	ERR_ITEM_DROP	物品丢弃失败	
1026	ERR_ITEM_DROP_NOT_BAG_SITE	物品不在背包不可丢弃	
1027	ERR_ITEM_DROP_MAP	当前地图不可丢弃物品	
1028	ERR_ITEM_DROP_ITEM	该物品不可丢弃	
1029	ERR_ITEM_TIE_UP	物品打捆失败	
1030	ERR_ITEM_ENHANCE_OK	强化完成	
1031	ERR_ITEM_ENHANCE_MUST_WEAPON	只有武器才能强化	
1032	ERR_ITEM_ENHANCE_DISABLE	该武器不可强化	
1033	ERR_ITEM_ENHANCE_UPGRADING	强化物品已经处于升级中	
1034	ERR_ITEM_ENHANCE_MAX_LEVEL	已经强化到最高等级	
1035	ERR_ITEM_ENHANCE_ITEM	强化物品首饰不正确	
1036	ERR_ITEM_ENHANCE_MATERIAL	强化物品材料不正确	
1037	ERR_ITEM_DRILL_OK	打孔完成	
1038	ERR_ITEM_DRILL_MUST_EQUIP	只有装备才能打孔	
1039	ERR_ITEM_DRILL_DISABLE	该装备不可打孔	
1040	ERR_ITEM_DRILL_MATERIAL	需要打孔材料	
1041	ERR_ITEM_DRILL_FULL	装备孔数量已达到上限	
1042	ERR_ITEM_DRILL_RATE	打孔失败	
1043	ERR_ITEM_SYNTHESIS_OK	装备合成成功	
1044	ERR_ITEM_SYNTHESIS_MATERIAL	合成材料不正确	
1045	ERR_ITEM_SYNTHESIS_GEM_ENOUGH	合成宝石不足	
1046	ERR_ITEM_SYNTHESIS_GEM_ID	宝石类型不相同	
1047	ERR_ITEM_SYNTHESIS_CANT	物品不可合成	
1048	ERR_ITEM_SYNTHESIS_LEVEL	合成符不正确	
1049	ERR_ITEM_SYNTHESIS_RATE	合成失败	
1050	ERR_ITEM_EMBED_OK	宝石镶嵌成功	
1051	ERR_ITEM_EMBED_DISABLE	宝石不可镶嵌	
1052	ERR_ITEM_EMBED_FULL	物品镶嵌已满	
1053	ERR_ITEM_EMBED_MATERIAL	镶嵌材料不正确	
1054	ERR_ITEM_EMBED_MISMATCH	宝石不匹配	
1055	ERR_ITEM_EMBED_RATE	镶嵌失败	
1056	ERR_ITEM_DIG_OK	宝石摘除成功	
1057	ERR_ITEM_DIG_SLOT	宝石槽位不正确	
1058	ERR_ITEM_DIG_MATERIAL	摘除材料不正确	
1059	ERR_ITEM_DIG_MATERIAL_LEVEL	宝石摘除符等级不符	
1060	ERR_ITEM_IDENTIFY_OK	装备解封印成功	
1061	ERR_ITEM_IDENTIFY_DISABLE	该装备不可解封印	
1062	ERR_ITEM_REFINE_OK	装备精炼成功	
1063	ERR_ITEM_REFINE_DISABLE	该装备不可精炼	
1064	ERR_ITEM_REFINE_TOP_LEVEL	该装备已精炼到顶级	
1065	ERR_ITEM_REFINE_LEVEL	精炼等级不正确	
1066	ERR_ITEM_REFINE_MATERIAL	精炼材料不正确	
1067	ERR_ITEM_REFINE_NOT_ENOUGH	精炼材料不足	
1068	ERR_ITEM_REFINE_RATE	精炼失败	
1069	ERR_ITEM_REPAIR_OK	装备修理成功	
1070	ERR_ITEM_REPAIR_DISABLE	该装备不可修理	
1071	ERR_ITEM_REPAIR_INFINITE	该装备耐久无限	
1072	ERR_ITEM_REPAIR_MAX_DURABILITY	该装备耐久已满	
1073	ERR_ITEM_NOT_EXIST	该物品不存在	
1074	ERR_ITEM_DUP_SITE	发现重合物品	
1075	ERR_ITEM_USEZEROAUTODEL	使用次数为零自动删除	
1076	ERR_ITEM_DURZEROAUTODEL	持久为零自动删除	
1077	ERR_ITEM_TIMEUPAUTODEL	物品使用时间到自动删除	
1078	ERR_ITEM_BAG_WEIGHT	你背不动这么多东西	
1079	ERR_ITEM_GUID_MAPPING	发现物品GUID映射不一致	
1080	ERR_ITEM_NO_DATA_ROW	物品模板不存在	
1081	ERR_ITEM_SITE	物品位置发生异常	
1082	ERR_ITEM_AMOUNT	物品数量发生异常	
1083	ERR_ITEM_EXPIRED	物品已经过期	
1084	ERR_ITEM_CREATE_BAG	创建包裹失败	
1085	ERR_ITEM_SWAP	交换物品失败	
1086	ERR_ITEM_ADD_BIND_TYPE	添加物品绑定类型错误	
1087	ERR_ITEM_DROP_IN_SAFE	安全区不可丢弃物品	
1088	ERR_ITEM_BAG_OPT	包裹已锁定	
1089	ERR_ITEM_FORBID_HERO_BAG	物品禁止进入英雄包裹	
1090	ERR_ITEM_GOLD_DROP	金币丢弃失败	
1091	ERR_ITEM_CANNOT_ARRANGE	禁止摆摊中整理背包	
1100	ERR_SKILL_NOT_EXIST	技能不存在	
1101	ERR_SKILL_NOT_LEARNED	技能还没学习	
1102	ERR_SKILL_NO_TARGET	目标不存在	
1103	ERR_SKILL_SWITCH	技能开关失败	
1104	ERR_SKILL_CD_CHAIN	技能还在冷却	
1105	ERR_SKILL_COST_ATTR	技能属性开销不足	
1106	ERR_SKILL_COST_ITEM	技能物品开销不足	
1107	ERR_SKILL_NEED_WEAPON	技能需要武器	
1108	ERR_SKILL_JUJU	需要正确的符咒	
1109	ERR_SKILL_CAST_DISTANCE	技能施放距离不符	
1110	ERR_SKILL_MISS	技能MISS	
1111	ERR_SKILL_ROLE_DEAD	玩家已死	
1112	ERR_SKILL_CANT_PHY_ATK	不能使用物理攻击	
1113	ERR_SKILL_CANT_MAG_ATK	不能使用魔法攻击	
1114	ERR_SKILL_COLLIDE	处于冲撞状态不能使用技能	
1115	ERR_SKILL_REPELLED	处于击退状态不能使用技能	
1116	ERR_SKILL_FIRE_ACTIVE	烈焰生效	
1117	ERR_SKILL_FIRE_EXPIRE	烈焰已过期	
1118	ERR_SKILL_CANT_USE	技能不可使用	
1119	ERR_SKILL_DIG_MEAT	没有挖到任何物品	
1120	ERR_SKILL_POWER_HIT_ACTIVE	重击允许	
1121	ERR_SKILL_POWER_HIT_DONE	重击结束	
1122	ERR_SKILL_ATTACK_TIME	普攻时间未到	
1123	ERR_SKILL_FIRE_EMPTY	烈焰击空	
1124	ERR_SKILL_POWER_DISABLE	重击时机未到	
1125	ERR_SKILL_POWER_EMPTY	重击击空	
1126	ERR_SKILL_CISHA_EMPTY	风刺击空	
1127	ERR_SKILL_BANYUE_EMPTY	月弧击空	
1128	ERR_SKILL_NORMAL_EMPTY	普攻击空	
1129	ERR_SKILL_REPEL_COLLIDE	冲撞打断	
1130	ERR_SKILL_SCRIPT_NOT_EXIST	技能脚本不存在	
1131	ERR_SKILL_UNVALID	技能被禁止	
1200	ERR_BUFF_NOT_EXIST	BUFF不存在	
1201	ERR_BUFF_CANT_CANCEL	BUFF不能取消	
1300	ERR_TEAM_ALREADY_EXIST	队伍已存在，队伍创建失败	
1301	ERR_TEAM_MAP	该地图不可组队	
1302	ERR_TEAM_TARGET_MAP	对方所在地图不可组队	
1303	ERR_TEAM_SWITCH_REFUSE	对方不允许组队	
1304	ERR_TEAM_NO_PLAYER	玩家不存在或已下线	
1305	ERR_TEAM_TARGET_HAS_TEAM	对方已经有队伍	
1306	ERR_TEAM_TARGET_NO_TEAM	对方没有队伍	
1307	ERR_TEAM_NO_RIGHT	没有权限	
1308	ERR_TEAM_FULL	队伍已满	
1309	ERR_TEAM_INVITER_OFFLINE	邀请者已经下线	
1310	ERR_TEAM_INVITE_EXPIRE	邀请已过期	
1311	ERR_TEAM_REFUSE	对方拒绝组队	
1312	ERR_TEAM_TARGET_LEADER_OFFLINE	对方队长不在线	
1313	ERR_TEAM_JOIN_REFUSE	对方队长拒绝了您加入队伍的请求	
1314	ERR_TEAM_INVITE_TIME	邀请过于频繁	
1315	ERR_TEAM_JOIN_TIME	申请过于频繁	
1316	ERR_TEAM_AUTH_TIME	权限变更过于频繁	
1317	ERR_TEAM_QUERY_TIME	队伍查询过于频繁	
1318	ERR_TEAM_JOIN_EXPIRE	申请已过期	
1400	ERR_QUICK_BAR_ITEM_NOT_EXIST	物品不存在	
1401	ERR_QUICK_BAR_SKILL_NOT_EXIST	技能不存在	
1500	ERR_DEPOSIT_SAVE_OK	存金币成功	
1501	ERR_DEPOSIT_TALK_OK	取金币成功	
1502	ERR_DEPOSIT_DROP_OK	丢金币成功	
1503	ERR_DEPOSIT_NOT_ENOUGH_GOLD	金币不足	
1600	ERR_TRADE_P2P_OK	交易成功	
1601	ERR_TRADE_P2P_TRADING	对方正在交易中	
1602	ERR_TRADE_P2P_INVITE_EXPIRE	交易邀请已过期	
1603	ERR_TRADE_P2P_REFUSE	对方拒绝了您的交易请求	
1604	ERR_TRADE_P2P_NOT_ENOUGH_GOLD	没有足够的金币	
1605	ERR_TRADE_P2P_GOLD_FULL	金币溢出	
1606	ERR_TRADE_P2P_DATA	交易数据已变更	
1607	ERR_TRADE_P2P_ITEM_BIND	绑定物品不可交易	
1608	ERR_TRADE_P2P_ITEM_TRADABLE	该物品不可交易	
1609	ERR_TRADE_P2P_ITEM_SITE	物品必须在背包中	
1610	ERR_TRADE_P2P_DUP_ITEM	交易数据已上架	
1611	ERR_TRADE_P2P_FAILED	交易失败	
1612	ERR_TRADE_P2P_GOLD_LOCK	金币未解锁	
1613	ERR_TRADE_P2P_LEVEL    	交易双方等级不够	
1620	ERR_TRADE_STALL_OK	摆摊成功	
1621	ERR_TRADE_STALL_LEVEL	摆摊等级不足	
1622	ERR_TRADE_STALL_PK_RED	红名不可摆摊	
1623	ERR_TRADE_STALL_PK_BLACK	黑名不可摆摊	
1624	ERR_TRADE_STALL_GOLD_COST	摆摊金币不足	
1625	ERR_TRADE_STALL_GRID	该位置不可摆摊	
1626	ERR_TRADE_STALL_REFUSE	附近已经有人摆摊	
1627	ERR_TRADE_STALL_NOT_READY	摆摊未准备	
1628	ERR_TRADE_STALL_ITEM	摆摊物品有误	
1629	ERR_TRADE_STALL_PRICE_LESS_ZERO	摆摊物品单价不可小于0	
1630	ERR_TRADE_STALL_PRICE_TYPE	摆摊物品价格类型不符	
1631	ERR_TRADE_STALL_ITEM_AMOUNT	物品数量为零不可上架	
1632	ERR_TRADE_STALL_ITEM_BIND	已绑定物品不可摆摊销售	
1633	ERR_TRADE_STALL_ITEM_TRADABLE	该物品不可交易	
1634	ERR_TRADE_STALL_ITEM_SITE	摆摊时物品必须在背包中	
1635	ERR_TRADE_STALL_ARRANGE	不在摆摊状态不可上下架	
1636	ERR_TRADE_STALL_TARGET_NOT_START	对方尚未开始摆摊	
1637	ERR_TRADE_STALL_ITEM_DATA	物品数据已变更	
1638	ERR_TRADE_STALL_ITEM_NOT_ENOUGH	物品数量不足	
1639	ERR_TRADE_STALL_ITEM_NOT_SELL	物品没有上架	
1640	ERR_TRADE_STALL_READY_CD	摆摊准备冷却时间未到	
1641	ERR_TRADE_STALL_ITEM_NOT_BUY	摊位不收购该物品	
1642	ERR_TRADE_STALL_ITEM_MAX_BUY_AMOUNT	达到收购数量上限	
1643	ERR_TRADE_STALL_OWNER_BAG_FULL	摊主背包已满	
1650	ERR_ROLE_OK	成功	
1651	ERR_ROLE_NOT_ENOUGH_POINT	属性点不足	
1652	ERR_ROLE_QUERY_NULL	目标不存在或不在线	
1653	ERR_ROLE_LC_DOWN	你的武器被诅咒	
1654	ERR_ROLE_DROP_GRID	地上空间不足，无法丢弃	
1655	ERR_ROLE_SITE	无效的背包位置	
1656	ERR_ROLE_REQUEST_SEG_TO_FAST	物品请求过快	
1657	ERR_ROLE_PK	PK值上升	
1658	ERR_ROLE_ARRANGE_BAG_TOO_FAST	物品整理过于频繁	
1659	ERR_ROLE_PK_PROTECTED	正当防卫规则保护	
1660	ERR_ROLE_QUEST_QUERY_TOO_FAST	任务查询过于频繁	
1661	ERR_ROLE_MOVE_ITEM_TOO_FAST	物品移动过于频繁	
1662	ERR_ROLE_RIDE_TOO_FAST	骑马操作过于频繁	
1663	ERR_ROLE_RIDE_NULL	请先装备坐骑	
1664	ERR_ROLE_RIDE_DIE	坐骑已死	
1665	ERR_ROLE_RIDE_NOT_USE	骑乘状态下不可使用	
1666	ERR_ROLE_FASHION_TOO_FAST	时装操作过于频繁	
1667	ERR_ROLE_FASHION_NULL	请先装备时装	
1668	ERR_ROLE_FASHION_DIE	时装耐久不足	
1669	ERR_ROLE_FASHION_WEAPON_TOO_FAST	时装武器操作过于频繁	
1670	ERR_ROLE_FASHION_WEAPON_NULL	请先装备时装武器	
1671	ERR_ROLE_FASHION_WEAPON_DIE	时装武器耐久不足	
1700	ERR_NODGNDATA	副本数据找不到	
1701	ERR_NODGNMAP	副本地图不存在	
1702	ERR_CHECKDGNMAP	副本地图检查失败	
1800	ERR_VIP_ENABLE	VIP已经激活	
1801	ERR_VIP_INVALID    	VIP等级无效	
1802	ERR_VIP_INGOT	元宝不足	
1803	ERR_VIP_ITEM_ENABLE    	VIP道具已激活	
1804	ERR_VIP_ITEM_BUY	VIP道具已购买	
1805	ERR_VIP_ITEM_INVALID	VIP道具无效	
1806	ERR_VIP_ITEM_NOTSELL	VIP道具已下架	
1807	ERR_VIP_ITEM_DISABLE	VIP道具不能单买	
1808	ERR_VIP_APPLY	VIP道具未激活	
1809	ERR_VIP_SCRIPT	VIP道具脚本不存在	
1900	ERR_DUMMY_NO_ACCESS	没有控制英雄的权限	
1901	ERR_DUMMY_TOO_FAR	距离英雄太远	
1902	ERR_DUMMY_NOT_ATTACK	英雄不在攻击状态	
1903	ERR_DUMMY_NOT_JOINT_SKILL	不是合击技能	
1904	ERR_DUMMY_HAS_JOINT	已经准备合击了	
1905	ERR_DUMMY_NOT_ENOUGH_XP	怒气未满	
1906	ERR_HERO_LORD_OFFLINE	主人不在线	
1907	ERR_MAP_CANT_GEN_HERO	地图禁止召唤英雄	
2300	ERR_ETASK_FULL	任务已满	
2301	ERR_QUEST_IN_FINISHED	任务已经完成过了	
2302	ERR_QUEST_IN_CURRENT	任务已经接过了	
2303	ERR_QUEST_REQ_WEEK_COUNT	本周可接次数已满	
2304	ERR_QUEST_REQ_DAY_COUNT	今日可接次数已满	
2305	ERR_QUEST_REQ_TIME	任务需求时间不符	
2306	ERR_QUEST_REQ_LEVEL	任务需求等级不符	
2307	ERR_QUEST_REQ_ATT	任务需求属性不符	
2308	ERR_QUEST_REQ_PROLOGUE	任务需求前置不符	
2309	ERR_QUEST_REQ_ITEM	任务需求物品不符	
2310	ERR_QUEST_REQ_JOB	任务需求职业不符	
2311	ERR_QUEST_REQ_GENDER	任务需求性别不符	
2312	ERR_QUEST_NOT_IN_CURRENT	任务没有接过	
2313	ERR_QUEST_CONSISTENCY	任务已变更	
2314	ERR_QUEST_SELECT_INDEX	选择的物品索引不正确	
2315	ERR_QUEST_ACHIEVE_TIME	任务已超时	
2316	ERR_QUEST_ACHIEVE_GROUP_HUNTING	任务完成组打怪计数不符	
2317	ERR_QUEST_ACHIEVE_HUNTING	任务完成打怪计数不符	
2318	ERR_QUEST_ACHIEVE_HUNTLEVEL	任务完成打等级怪计数不符	
2319	ERR_QUEST_ACHIEVE_GROUP_ITEM	任务完成组物品收集计数不符	
2320	ERR_QUEST_ACHIEVE_ITEM	任务完成物品收集计数不符	
2321	ERR_QUEST_ACHIEVE_APPLY_ITEM	任务完成物品使用计数不符	
2322	ERR_QUEST_ACHIEVE_NPC	任务完成NPC拜访计数不符	
2323	ERR_QUEST_REQ_SCRIPT	任务需求脚本不符	
2324	ERR_QUEST_ACHIEVE_SCRIPT	任务完成脚本不符	
2325	ERR_QUEST_ACHIEVE_LEVEL	任务完成等级不符	
2326	ERR_QUEST_NULL	任务不存在	
2327	ERR_QUEST_FORCE_READY	任务无法强制完成	
2400	ERR_NORELIVEMAP	找不到复活地图	
2401	ERR_ATKTOOFAST	攻击频率过快	
2402	ERR_NOTARGET	找不到目标	
2403	ERR_NODATATYPE	无此数据类型	
2500	ERR_NPC_NOSHOP	商店不存在	
2501	ERR_NPC_NOITEM	商品不存在	
2502	ERR_NPC_ITEMNOENOUGH	商品数量不足	
2503	ERR_NPC_TOOFAR	距离NPC太远	
2504	ERR_NPC_NO_ACCEPT	本店不收购此类物品	
2505	ERR_NPC_NO_REPAIR	本店不维修此类物品	
2506	ERR_NPC_MUST_BIND	只能使用绑定金币购买	
2507	ERR_NPC_MUST_UNBIND	只能使用金币购买	
2508	ERR_NPC_MUST_BIND_INGOT	只能使用绑定元宝购买	
2509	ERR_NPC_MUST_UNBIND_INGOT	只能使用元宝购买	
2600	ERR_MAP_ITEM_FORBID	本地图禁止使用此物品	
2601	ERR_MAP_SKILL_FORBID	本地图禁止使用此技能	
2602	ERR_MAP_RIDE_FORBID	地图禁止使用坐骑	
3000	ERR_EXP_NOT_ENOUGH	经验不足	
3001	ERR_INGOT_NOT_ENOUGH	元宝不足	
3002	ERR_BIND_INGOT_NOT_ENOUGH	绑定元宝不足	
3003	ERR_INTEGRAL_NOT_ENOUGH	积分不足	
3004	ERR_GOLD_NOT_ENOUGH	金币不足	
3005	ERR_BIND_GOLD_NOT_ENOUGH	绑定金币不足	
3006	ERR_LOCKSWITCH	财产未解锁	
3007	ERR_OWNER_INGOT_NOT_ENOUGH	摊主元宝不足	
3008	ERR_OWNER_GOLD_NOT_ENOUGH	摊主金币不足	
3100	ERR_MAIL_MAILBOX_FULL	对方收件箱已满	
3101	ERR_MAIL_NO_MAIL	不存在的邮件	
3102	ERR_MAIL_NO_ATTACH	没有这个附件或附件已经领取	
3103	ERR_MAIL_NO_PLAYER	没有这个玩家	
3104	ERR_MAIL_NOT_EMPTY	邮件中还有附件未领取	
3150	ERR_MARKET_MAX_NUM	委托数量已经到达上限	
3151	ERR_MARKET_MAX_COUNT	你收购这么多货，想干啥呢	
3152	ERR_MARKET_NOT_EXIST	该笔挂单不存在或已撤销	
3153	ERR_MARKET_ITEM_MATCH	对方没有收购该物品	
3154	ERR_MARKET_ITEM_MUCH	对方没有收购这么多数量	
3155	ERR_MARKET_UNIT	物品单位数量与总数不匹配	
3156	ERR_MARKET_CANT_PURCHASE	不能收购该物品	
3157	ERR_MARKET_PRICE_ERROR	总价格错误	
3500	ERR_FAMILY_HAS_JOINED	对方已经加入过行会了	
3501	ERR_FAMILY_LOW_LEVEL	在行会中级别不够	
3502	ERR_FAMILY_NO_FAMILY	您没有加入任何行会	
3503	ERR_FAMILY_OFFLINE	对方不在线	
3504	ERR_FAMILY_NOT_EXSIT	该行会不存在	
3505	ERR_FAMILY_IN_FAMILY	您已经有行会了	
3506	ERR_FAMILY_NOT_MEMBER	您不是本行会成员	
3507	ERR_FAMILY_TITLE_NOT_EXSIT	不存在的封号	
3508	ERR_FAMILY_NOT_EMPTY	行会中还有成员存在	
3509	ERR_FAMILY_LEADER_OFFLINE	对方会长不在线	
3510	ERR_FAMILY_HAS_ALLY	已经是联盟行会了	
3511	ERR_FAMILY_HAS_ENEMY	已经是敌对行会了	
3512	ERR_FAMILY_ALLY_WITH_ENEMY	不能和敌对行会结盟	
3513	ERR_FAMILY_ENEMY_WITH_ALLY	请先解除行会联盟	
3514	ERR_FAMILY_NO_ENOUGH_TITLE	该职位人数已满	
3515	ERR_FAMILY_IS_NOT_SUBLEADER	对方不是副会长	
3516	ERR_FAMILY_IS_NOT_INIT	行会系统正在初始化，请稍候再试	
3517	ERR_FAMILY_NAME_EXSIT	行会名称已经存在，请重新想一个吧	
3518	ERR_FAMILY_ALLY_MAX	已经达到最大的联盟行会数	
3519	ERR_FAMILY_P_ALLY_MAX	对方已经达到最大的联盟行会数	
3520	ERR_FAMILY_ENEMY_MAX	已经达到最大的敌对行会数	
3521	ERR_FAMILY_LEADER_CANT_LEAVE	行会会长不能脱离行会	
3522	ERR_FAMILY_TEXT_TOO_LONG	文本超过最大长度	
3523	ERR_FAMILY_SAME_TITLE	封号名称不能相同	
3524	ERR_FAMILY_MAX_TITLE_MEMBER	该封号人数达到上限	
3525	ERR_FAMILY_MAX_MEMBER_NUM	行会人数已满	
3526	ERR_FAMILY_SELF	不能和自己结盟或敌对	
3527	ERR_FAMILY_LEVEL	等级不足	
3528	ERR_FAMILY_NO_RELATION	行会之间没关系	
3529	ERR_FAMILY_END	行会错误码结束符	
3531	ERR_SPEAKER_NOT_EXIST	缺少小喇叭道具	
3532	ERR_FORBIDLOGIN_IP	IP禁止登录	
3533	ERR_FORBIDLOGIN_NAME	角色禁止登录	
3534	ERR_FORBIDLOGIN_ACCOUNT	帐号禁止登录	
3535	ERR_FORBIDLOGIN_HARDWARE	硬件码禁止登录	
3536	ERR_GLORY_LEVEL	等级不足	
3537	ERR_GLORY_UNFINISH	成就未完成	
3538	ERR_GLORY_HAS_AWARDED	奖励已经领取	
3539	ERR_MONSTER_ALLOC	分配Monster*失败	
3540	ERR_MONSTER_BORNPOS	怪物没有出生点	
3541	ERR_MONSTER_APPEAR	怪物出现包错误	
3542	ERR_MONSTER_NOTMAP	怪物没有地图信息	
3543	ERR_MONSTER_NOTCONFIG	怪物没有模板信息	
3544	ERR_UCMD_OK	用户指令执行成功	
3545	ERR_UCMD_FAIL	用户指令执行失败	
3546	ERR_MIGRATE_IN_DEAL	同账号上一个数据迁移处理中	
3547	ERR_MIGRATE_TIMEOUT	数据迁移超时	
3548	ERR_MIGRATE_LOGIC	数据迁移逻辑错误	
3549	ERR_MIGRATE_NO_MD	数据迁移连接中转服务器失败	
3550	ERR_MIGRATE_NO_DST	数据迁移连接目标区服务器失败	
3551	ERR_MIGRATE_NO_ACK	数据迁移目标区无应答	
3552	ERR_MIGRATE_AGENT	数据迁移只能在同一个代理的区之间	
3553	ERR_MIGRATE_TYPE	数据迁移只能在测试区或正式区之间	
3554	ERR_MIGRATE_SVR_INFO	数据迁移找不到目标区的配置信息	
3555	ERR_FAMILY_NO_JOIN_REQUEST	没有加入行会的请求	
3556	ERR_INNER_FORCE_LEVEL_UP_FAILED	内功升级失败	
3600	ERR_MOBA_NO_VALID_ROOM_ID	无可用的房间号	
3601	ERR_MOBA_ALREADY_IN_ROOM	已经在房间中	
3602	ERR_MOBA_NO_ROOM	房间不存在	
3603	ERR_MOBA_MAX_ROOM_MEMBER	房间人数已满	
3604	ERR_MOBA_ROOM_PWD	房间密码错误	
3605	ERR_MOBA_ROOM_NAME_DUPLICATE	房间名字重复	
3606	ERR_MOBA_INVALID_ROOM_OP	非法的房间操作	
3607	ERR_MOBA_ROOM_STATE_CANT_OP	此房间状态下不能进行该操作	
3608	ERR_MOBA_ROOM_MEMBER_NOT_EXIST	房间成员不存在	
3609	ERR_MOBA_SET_VICE_HOST	只能提升对方阵营玩家为副房主	
3610	ERR_MOBA_ROOM_MODE	房间模式错误	
3611	ERR_MOBA_ROOM_VS_NUM	房间对战人数错误	
3612	ERR_MOBA_ALREADY_IN_GAME	此房间已经在游戏中	
3700	ERR_MIGRATE_ROLE_NAME_EXIST	跨服时角色名已存在	
3800	ERR_CANG_BAO_GE_SELL_ITEM_NOT_EXIST	神兔宝库上架物品不存在	
3801	ERR_CANG_BAO_GE_SELL_ON_STALL	摆摊中禁止上架	
3802	ERR_CANG_BAO_GE_SELL_ITEM_PRICE	神兔宝库物品价格错误	
3803	ERR_CANG_BAO_GE_NOT_INIT	神兔宝库还未初始化完成	
3804	ERR_CANG_BAO_GE_ITEM_TYPE_ERR	上架物品类型错误	
3805	ERR_CANG_BAO_GE_ITEM_MUST_IN_BAG	上架物品必须在背包中	
3806	ERR_CANG_BAO_GE_ITEM_MUST_NOT_TIMELIMIT	上架物品必须不是限时物品	
3807	ERR_PLAYER_REALNAME_STATUS_ERR	玩家没有实名	
3808	ERR_FORBIDLOGIN_IDCARD	身份证禁止登录	
3809	ERR_CANG_BAO_GE_NOT_SATISFY	不符合上架条件	
3810	ERR_FORBIDLOGIN_ONLINE_LIMIT	同时在线账号数已达上限	
<上一篇:日志类型定义
BUFF模板属性定义
更新时间：2024-09-14 00:00:00
BUFF模板属性的定义请参见下表。

属性字段对应选项在Buff模板表中，其访问路径为游戏工具平台→游戏配置→技能→Buff模板表区域。

相关接口请参见：Buff_DataRow。

属性字段	描述	备注
Id	BUFFID	
Name	名称	
KeyName	索引名	
Group	组别	
GroupPriority	组内优先级	
DelOnAttack	被攻击是否删除	
DelOnSpell	攻击是否删除	
TimeLimit	存在时限	
TimeLimitMax	最大存在时限	
Interval	触发间隔	
InitElapse	是否立即生效	
UseAbsTime	绝对时间或相对时间	
TimeCoff	时间系数	
NameColor	名字颜色	
Stack	叠加层数	
Att1	Att1	
AttValue1	Att值1	
Att1Coff	Att1系数	
Att2	Att2	
AttValue2	Att值2	
Att2Coff	Att2系数	
Att3	Att3	
AttValue3	Att值3	
Att3Coff	Att3系数	
Att4	Att4	
AttValue4	Att值4	
Att4Coff	Att4系数	
Att5	Att5	
AttValue5	Att值5	
Att5Coff	Att5系数	
Att6	Att6	
AttValue6	Att值6	
Att6Coff	Att6系数	
Att7	Att7	
AttValue7	Att值7	
Att7Coff	Att7系数	
Att8	Att8	
AttValue8	Att值8	
Att8Coff	Att8系数	
Att9	Att9	
AttValue9	Att值9	
Att9Coff	Att9系数	
Att10	Att10	
AttValue10	Att值10	
Att10Coff	Att10系数	
Att11	Att11	
AttValue11	Att值11	
Att11Coff	Att11系数	
Att12	Att12	
AttValue12	Att值12	
Att12Coff	Att12系数	
Att13	Att13	
AttValue13	Att值13	
Att13Coff	Att13系数	
Att14	Att14	
AttValue14	Att值14	
Att14Coff	Att14系数	
Att15	Att15	
AttValue15	Att值15	
Att15Coff	Att15系数	
Att16	Att16	
AttValue16	Att值16	
Att16Coff	Att16系数	
Att17	Att17	
AttValue17	Att值17	
Att17Coff	Att17系数	
Att18	Att18	
AttValue18	Att值18	
Att18Coff	Att18系数	
Att19	Att19	
AttValue19	Att值19	
Att19Coff	Att19系数	
Att20	Att20	
AttValue20	Att值20	
Att20Coff	Att20系数	
Att21	Att21	
AttValue21	Att值21	
Att21Coff	Att21系数	
Att22	Att22	
AttValue22	Att值22	
Att22Coff	Att22系数	
Att23	Att23	
AttValue23	Att值23	
Att23Coff	Att23系数	
Att24	Att24	
AttValue24	Att值24	
Att24Coff	Att24系数	
Att25	Att25	
AttValue25	Att值25	
Att25Coff	Att25系数	
ClientShow	是否客户端显示	
Icon	BUFF图标	
OfflineSave	是否下线保存	
DieAutoDel	死亡自动删除	
OnRidingCanUse	骑马时是否可用	
SaveLog	是否写记录	
CanCancel	客户端是否可手动点掉	
MagicEffect	BUFF特效	
DisappearEffect	BUFF消失特效	
HasImmShield	是否有减免盾	
HasManaShield	是否有魔盾	
ImmShield	减免盾百分比值	
IsStealth	是否有隐身	
ChangeColor	模型变色	
CanLockMonster	是否锁妖咒	
CanTimeStack	是否时间叠加	
CanEffectStack	是否效果叠加	
HpFullAutoCancel	HP满后是否自动删除	
MpFullAutoCancel	MP满后是否自动删除	
JumpMapSave	跳图是否保存	
DisappearStealth	移动后是否消失	若要设置BUFF在角色移动后可以消失，需要同时满足以下3个条件：
在指定的Buff模板表中，将字段移动后是否消失设置为“消失”；
Buff_DataRow_4.png
在指定的Buff模板表中，将字段是否有隐身设置为“是”；
Buff_DataRow_2.png
在指定的Buff模板表中，为指定BUFF配置一个隐形属性，并将属性值设置为1。
Buff_DataRow_3.png
IsLive	死亡时可否添加BUFF	
HPPctKill	Hp增减百分比	
HPPctKillRate	Hp增减几率	
MPPctKill	MP增减百分比	
MPPctKillRate	MP增减几率	
Prompt	提示信息	
E1	武器位置发光特效	
E2	衣服位置发光特效	
E3	马蹄位置发光特效	
Script	回调脚本	
OtherHide	是否对他人隐藏BUFF特效	
UnvalidSkills	禁用技能	
AutoDelRange	多少格内自动删除	
ReAddBuff	删除后自动添加一个新的BUFF	
Avatar	改变外形	
Tips	BUFFTIPS	
下一篇:成就触发类型定义>
成就触发类型定义
更新时间：2021-09-07 00:00:00
在引擎中定义的成就触发类型请参见下表。

相关接口请参见：OnGloryTrigger

索引值	成就类型	描述
1	glory_trigger_wield_equip	使用装备，也包括从背包穿戴装备或替换装备栏中已有穿戴的装备
2	glory_trigger_kill_monster	杀怪
3	glory_trigger_level_up	等级提升
4	glory_trigger_dig	挖肉
5	glory_trigger_learn_skill	学习技能
6	glory_trigger_use_item	使用物品
7	glory_trigger_finish_glory	完成成就
8	glory_trigger_join_team	加入队伍
9	glory_trigger_market_delegat	寄售行委托
10	glory_trigger_enter_map	进入地图
11	glory_trigger_trade_stall_sell	摆摊出售
12	glory_trigger_join_family	加入行会
13	glory_trigger_join_war	参加行会战
14	glory_trigger_join_castle	参加攻城战
15	glory_trigger_vip	成为VIP
16	glory_trigger_trade_stall_buy	摆摊购买
<上一篇:BUFF模板属性定义下一篇:道具主类型和子类型定义>
道具主类型和子类型定义
更新时间：2021-09-07 00:00:00
主类型
在引擎中定义的道具主类型请参见下表。

相关接口请参见：SetServantPickListByType

枚举值	主类型	描述
1	lua_item_type_equip	装备
2	lua_item_type_consumable	消耗品
3	lua_item_type_finite	有限品
4	lua_item_type_material	材料
5	lua_item_type_sundries	杂货
6	lua_item_type_bag	包裹
7	lua_item_type_warehouse_adv	高级金库
8	lua_item_type_gold	金币
9	lua_item_type_bundle	打捆物品
10	lua_item_type_skill	技能特效类物品
11	lua_item_type_script	脚本物品
子类型
装备
在引擎中定义的装备子类型请参见下表。

枚举值	子类型	描述
1	lua_equip_weapon	武器
2	lua_equip_helmet	头盔
3	lua_equip_wrist	护腕
4	lua_equip_armor	衣服
5	lua_equip_juju	符咒
6	lua_equip_shoes	鞋子
7	lua_equip_shoulder	腰带（护肩）
8	lua_equip_necklace	项链
9	lua_equip_ring	戒指
10	lua_equip_medal	勋章
11	lua_equip_gem	宝石
12	lua_equip_wings	翅膀
13	lua_equip_amulet	法宝（守护）
14	lua_equip_mount	坐骑
15	lua_equip_shield	盾牌
16	lua_equip_fashion	时装
17	lua_equip_hat	斗笠
18	lua_equip_gloves	手套
19	lua_equip_jewelry	珠宝
20	lua_equip_glasses	眼镜
21	lua_equip_bracelet	手镯
22	lua_equip_mask	面甲
23	lua_equip_kneelet	护膝
24	lua_equip_chestplate	护胸
25	lua_equip_cloak	披风
26	lua_equip_earrings	耳环
27	lua_equip_headwear	头饰
28	lua_equip_legguard	护腿
29	lua_equip_jade	玉佩
30	lua_equip_instrument	乐器
31	lua_equip_hangings	挂饰
32	lua_equip_fashion_weapon	时装武器
33	lua_equip_reserved_1	保留位1
34	lua_equip_reserved_2	保留位2
35	lua_equip_reserved_3	保留位3
36	lua_equip_reserved_4	保留位4
37	lua_equip_reserved_5	保留位5
38	lua_equip_reserved_6	保留位6
39	lua_equip_reserved_7	保留位7
40	lua_equip_reserved_8	保留位8
41	lua_equip_reserved_9	保留位9
42	lua_equip_custom_0	自定义0
note_icon 备注
最多支持150个自定义子分类，即 equip_custom_0 至equip_custom_149。

材料
在引擎中定义的材料子类型请参见下表。

枚举值	子类型	描述
1	lua_material_weapon_upgrade	升级武器材料
2	lua_material_reserved	保留未使用
3	lua_material_identify	鉴定装备材料
4	lua_material_drill	装备打孔材料
5	lua_material_lucky	附加武器祝福材料
6	lua_material_gem	宝石
7	lua_material_synthesis	宝石合成符
8	lua_material_dig	宝石摘除符
9	lua_material_embed	宝石镶嵌符
10	lua_material_refine	装备精练材料
11	lua_material_refine_lucky	装备精练幸运符材料
12	lua_material_speaker	喇叭
13	lua_material_refine_transform	装备精练转移材料
14	lua_material_refine_imm	装备精练符
15	lua_material_identify_imm	装备鉴定符
16	lua_material_horse	未开光马
17	lua_material_identify_horse	开光印
<上一篇:成就触发类型定义下一篇:英雄AI技能策略>
英雄AI技能策略
更新时间：2021-11-26 00:00:00
英雄AI技能策略请参见下表。

相关接口请参见：SetDummyDefaultSkillAI、SetDummySkillAI

技能使用策略
索引值	策略类型	描述
0	lua_use_recover_skill	回复生命
1	lua_use_add_buff_skill	增益BUFF
2	lua_use_sub_buff_skill	减益BUFF
3	lua_use_single_attack_skill	单体攻击
4	lua_use_line_attack_skill	线型攻击
5	lua_use_multi_attack_skill	群体攻击
6	lua_use_trap_skill	陷阱类、烈焰火海技能
7	lua_use_summon_skill	召唤类技能
8	lua_use_round_skill	攻击周围、月弧弯刀、雷霆极光
9	lua_use_liehuo_skill	烈焰斩技能
10	lua_use_gongxin_skill	重击术技能
11	lua_use_cisha_skill	风刺技能
12	lua_use_push_skill	蛮力冲锋技能
13	lua_use_remove_buff_skill	BUFF消除技能
14	lua_use_hide_skill	隐形类技能
15	lua_use_copy_skill	分身类技能
跑位策略
索引值	策略类型	描述
0	lua_special_2_grid_move	寻找风刺位
1	lua_max_distance_move	保持最大的攻击距离
2	lua_min_distance_move	保持最小的攻击距离
3	lua_help_lord_move	救援主人
4	lua_escape_move	逃跑
技能失败后策略
索引值	策略类型	描述
0	lua_Use_Fail_Do_Abandon	放弃
1	lua_Use_Fail_Do_Move	跑位
2	lua_Use_Fail_Do_Escape	逃跑
3	lua_Use_Fail_Do_Desperately	拼命，即强制施放技能
4	lua_Use_Fail_Do_Wait	等待
<上一篇:道具主类型和子类型定义下一篇:Skill模板属性定义>
Skill模板属性定义
更新时间：2022-07-18 00:00:00
Skill模板属性的定义请参见下表。

属性字段对应选项在技能模板表中，其访问路径为游戏工具平台→游戏配置→技能→技能模板表区域。

相关接口请参见：Skill_DataRow。

属性字段	描述	备注
Id	编号	
Name	名称	
KeyName	索引名	
Type	类型	
Job	职业	
CommonAttack	是否普通攻击	
NeedInstance	是否需要实例	
DamageType	伤害类型	
Process	是否有技能类型计算	
Switch	是否为开关技能	
NormalAttack	是否玩家普攻	
NormalAttackType	普攻类型	
FireTime	预存烈焰斩时间	
Script	技能回调脚本	
Block	是否判断魔法阻挡	
NeedWeapon	需要武器类型	
Proficiency	熟练度上限	
Linkage	技能链	
Level	技能等级	
NextLevel	下一等级技能ID	
RoleLevel	角色等级限定	
GongShaRate	重击术频率	
CDType	CD类型	
CD	冷却时间	
Chain	冷却组	
ChainCD	冷却组CD	
UseAttackSpeed	攻速流程	
ClientCD	客户端CD	
Icon	技能图标	
Site	技能图标位置	
ShapeParam1	范围形状参数1	
ShapeParam2	范围形状参数2	
Shape	能力搜寻范围形状	
NeedTarget	是否需要目标才能释放	
MaxTarget	最多目标数量	
ExtParam1	形状附加参数1	
MaxCastDistance	施法最大距离	
MinCastDistance	施法最小距离	
Ready	准备时间	
Auto	自动重复能力	
SkillId	技能特效	
BegEffectID	起始动画编号	
ProEffectID	过程动画编号	
BruiseEffectID	受击动画编号	
EndEffectID	收手动画编号	
SeverDelay	是否收到服务器回应后才播特效	
Target_Place	是否锁定目标	
BeforeCaging	是否攻击之前锁定的目标	
HeroOrMasterPanel	面板选择	
SelfRelease	是否可对自己释放	
SkillOnGrid	是否根据鼠标落点打逻辑格	
NeedTargetClient	客户端是否需要目标才能释放	
MouseTurn	客户端是否根据鼠标位置转向	
Initiative	是否客户端主动释放	
Inner	是否系统触发使用	
OnRidingCanUse	骑马时是否可用	
IsCancelProcess	是否打断进度条	
FlyTrack	是否忽略误差范围	
FlyErrorRange	技能最大误差	
IgnorePlayer	是否忽略玩家	
IgnoreServant	是否忽略人物宝宝	
DamagePriority	伤害目标优先级	
RestorePriority	治疗目标优先级	
LockErrorRange	技能起手锁定最大误差	
SelfBuffRate	自身BUFF成功率	
SelfBuffId	自己附加BUFF1	
SelfBuffTime	自身BUFF的存在时间	
SelfBuffValue1	自身BUFF的ATT1值	
BuffRate	目标BUFF成功率	
BuffId	目标附加BUFF1	
BuffTime	目标BUFF的存在时间	
BuffValue1	目标BUFF的ATT1值	
GroupRate	组技能概率	
Rate	成功率	
TestBuffLevel	BUFF测试目标等级	
Channel	是否为通道技能	
ChannelItem	对应通道道具	
ChannelFire	是否为烈焰火海类通道	
Interval	触发间隔	
TimeLimit	存在时限	
TimeCoff	通道技能时间系数	
MaxTime	通道技能最大存在时限	
HjDamageType	合击伤害类型	
HeroXp	每秒消耗怒气值	
HeroTargetDisMax	英雄与目标距离最大值	
HeroTargetDisMin	英雄与目标距离最小值	
HeroMasterDisMax	主人与英雄距离最大值	
HeroMasterDisMin	主人与英雄距离最小值	
MasterTargetDisMax	主人与目标距离最大值	
MasterTargetDisMin	主人与目标距离最小值	
LordDamage	主人攻击加成百分比	
HjCalcType	合击计算方式	
BloodSuckRate	吸血概率	
BloodSuckPercent	吸血百分比	
MagicSuckRate	吸蓝概率	
MagicSuckPercent	吸蓝百分比	
SuckType	吸血吸蓝的方式	
DisableSuckHpMp	是否吸血吸魔失效	
ItemSlot	装备位物品开销	
JuJuType	符咒类别	
ItemId	道具开销ID	
ItemAmount	堆叠品开销	
ItemUseCount	有限品开销	
CostType	道具消耗方式	
Catch	是否捕捉	
CatchNum	最大可捕捉数量	
SummonNew	是否召唤	
SummonId	召唤怪ID	
SummonOnSpellPos	是否按指定位置召唤	
Collide	击退方式	
BeatGrid	击退格数	
RepelCmpType	击退类型	
RepelLevel	击退等级	
CollideBuffId	冲撞成功后给自己附加BUFF	
CollideTargetBuffId	冲撞成功后给目标附加BUFF	
RepelledCanUse	击退是否可用	
CollideCanUse	冲撞是否可用技能	
Relive	是否复活目标	
TeleportType	瞬移方式	
TeleportRadiusX	随机移动半径X	
TeleportRadiusY	随机移动半径Y	
TriggerStealth	是否触发隐身	
TriggerGroup	触发组	
Group	组ID	
GroupPriority	组优先级	
DigMeat	是否挖肉技能	
Mining	是否为挖矿技能	
HitTrigger	是否受击触发	
TriggerRate	触发几率	
SubAttackRate	减免伤害百分比	
SubTimeCancel	减免几次后消失	
SubAttackCancel	减免多少伤害后消失	
NextAddTime	下次生效毫秒数	
A	随机值小	
B	随机值大	
C	基础随机值小	
D	基础随机值大	
E	攻击力百分比系数	
DamageCoff	技能等级系数	
IgnoreDefPct	忽视防御百分比	
IgnoreTargetImmPct	忽略减免百分比	
IgnoreHit	是否无视对方闪避	
CostAtt1	消耗1	
CostAttValue1	消耗值1	
CostAtt2	消耗2	
CostAttValue2	消耗值2	
CostAtt3	消耗3	
CostAttValue3	消耗值3	
Fly	是否有延时	
FlyType	延时类型	
FlySpeed	飞行速度	
FixedFlyTime	延时固定时间	
FlyFindTarget	延时搜索目标类型	
PassiveAtt1	被动属性1	
PassiveAttValue1	值1	
PassiveAtt2	被动属性2	
PassiveAttValue2	值2	
PassiveAtt3	被动属性3	
PassiveAttValue3	值3	
PassiveAtt4	被动属性4	
PassiveAttValue4	值4	
PassiveAtt5	被动属性5	
PassiveAttValue5	值5	
StiffCD	硬直时间	
ClientStiffCD	客户端硬直	
Hatred	仇恨	
FixedHatred	固定仇恨值	
RestoreType	恢复类型	
HPRestore	瞬回HP当前数值	
HPRestorePct	瞬回HP上限百分比	
MPRestore	瞬回MP当前数值	
MPRestorePct	瞬回MP上限百分比	
RestoreCoff	治疗系数	
RestoreValue	治疗附加	
PctKill	是否秒杀	
HPPctKill	Hp秒杀百分比	
HPPctKillRate	Hp秒杀几率	
MonsterDamageId	怪物技能加成匹配ID	
RunningCanUse	跑动过程中是否不能释放	
LordSkillId	主人合击释放技能ID	
CDOfflineSave	技能CD下线是否保存	
ProficiencyRange	熟练度递增范围	
<上一篇:英雄AI技能策略下一篇:Monster模板属性定义>
Monster模板属性定义
更新时间：2022-07-18 00:00:00
Monster模板属性的定义请参见下表。

属性字段对应选项在怪物模板表中，其访问路径为游戏工具平台→游戏配置→怪物→怪物模板表区域。

相关接口请参见：Monster_DataRow。

属性字段	描述	备注
Id	怪物编号	
Name	名称	
KeyName	关键字索引	
Type	类型	
Model	模型	
Head	小头像	
Race	种族	
Level	等级	
Exp	怪物经验	
Script	脚本编号	
InnerForceExp	怪物内功经验	
InnerForceInterval	内功回复间隔	
DigCount	挖肉次数	
DigTime	挖肉后尸体存在时间	
ExpSubLevel	怪物经验衰减等级	
ExpLevelPct	怪物经验衰减百分比	
BornBuff	怪物出生时自带的BUFFID	
StatNotify	怪物进入战斗改变是否广播	
InFightBuff	进入战斗状态添加的BUFFID	
OutFightBuff	退出战斗状态添加的BUFFID	
NameColor	名字自定义颜色	
TimeReborn	重生时间	
RebornRange	重生范围	
RefreshMagic	刷新特效	
Magic	怪物特效	
DieMagic	死亡特效	
ExistTime	怪物存在时间	
CorpseTime	尸体存在时间	
Transparency	鼠标选取方式	
BodySize	体形	
SaveLog	是否写入log数据库	
Extraction	等级抽取怪	
CanTalk	是否可对话	
ShowIcon	显示鼠标图标类型	
Direction	固定方向	
UseCustomVarAppearance	是否开启自定义变量外观	
HateRemember	怪物仇恨保持时长	
DodgeFireWall	行走时是否避开烈焰火海	
KeepServantGenTime	重新捕捉是否保留叛变时间	
HP	配置生命	
MP	配置魔法	
MaxPhyAtk	配置物攻上限	
MinPhyAtk	配置物攻下限	
MaxMagAtk	配置魔攻上限	
MinMagAtk	配置魔攻下限	
MaxPhyDef	配置物防上限	
MinPhyDef	配置物防下限	
MaxMagDef	配置魔防上限	
MinMagDef	配置魔防下限	
EA1	配置属性金相性攻击	
EA2	配置属性木相性攻击	
EA3	配置属性水相性攻击	
EA4	配置属性火相性攻击	
EA5	配置属性土相性攻击	
ED1	配置属性金相性防御	
ED2	配置属性木相性防御	
ED3	配置属性水相性防御	
ED4	配置属性火相性防御	
ED5	配置属性土相性防御	
Hit	配置准确（命中）	
Miss	配置敏捷（闪避）	
LC	配置幸运/诅咒	
Burst	配置暴击率	
HPRec	配置生命回复值	
MPRec	配置魔法回复值	
Interval	回复间隔	
AtkType	攻击类型	
FigType	战斗类型	
InvDetect	侦测隐形	
InvDetectRange	侦测隐形范围	
VieRange	视野	
TraRange	追踪距离	
MovRange	活动范围	
MovTime	活动间隔	
AttackSpeed	攻击速度	
AttackReady	攻击准备时间	
MoveSpeed	移动速度	
MoveReady	移动准备时间	
Step	步长间隔	
StepWait	步长间隔等待时间	
Back	后仰时间	
EscapeStep	躲避步长	
EscapeRate	躲避概率	
CanAtk	是否可被攻击	
CanPctKill	能否被秒杀	
CanLockMonster	是否受锁妖咒影响	
MonsterDamageId1	技能加成匹配ID1	
MonsterDamageCoff1	技能加成倍数1	
MonsterDamageId2	技能加成匹配ID2	
MonsterDamageCoff2	技能加成倍数2	
MonsterDamageId3	技能加成匹配ID3	
MonsterDamageCoff3	技能加成倍数3	
MonsterDamageId4	技能加成匹配ID4	
MonsterDamageCoff4	技能加成倍数4	
MonsterDamageId5	技能加成匹配ID5	
MonsterDamageCoff5	技能加成倍数5	
Skill1	怪物技能1	
Skill2	怪物技能2	
Skill3	怪物技能3	
Skill4	怪物技能4	
Skill5	怪物技能5	
Skill1Rate	怪物技能1权重	
Skill2Rate	怪物技能2权重	
Skill3Rate	怪物技能3权重	
Skill4Rate	怪物技能4权重	
Skill5Rate	怪物技能5权重	
Catch	捕捉	
Summon	召唤	
CatchLevel	捕捉等级	
DontShowMasterName	是否不显示主人名字	
PetTime	宠物存在时间	
MaxStack	最大存在数量	
BetTime	宠物叛变时间	
BornIdleTime	出生待机时间	
RemoveWhenMasterFarAway	是否在离主人太远时删除	
RemoveWhenMasterDead	是否在主人死亡时删除	
Drop	掉落索引1	
Dig	挖肉文本	
DropCount1	掉落包1掉落次数	
DropRate	掉落索引1组概率因子	
Drop2	掉落索引2	
DropCount2	掉落包2掉落次数	
Drop2Rate	掉落索引2组概率因子	
Drop3	掉落索引3	
DropCount3	掉落包3掉落次数	
Drop3Rate	掉落索引3组概率因子	
Drop4	掉落索引4	
DropCount4	掉落包4掉落次数	
Drop4Rate	掉落索引4组概率因子	
Drop5	掉落索引5	
DropCount5	掉落包5掉落次数	
Drop5Rate	掉落索引5组概率因子	
<上一篇:Skill模板属性定义下一篇:Item模板属性定义>
Item模板属性定义
更新时间：2025-12-12 18:48:00
Item模板属性的定义请参见下表。

属性字段对应选项在道具模板表中，其访问路径为游戏工具平台→游戏配置→装备&道具→道具模板表区域。

相关接口请参见：Item_DataRow。

属性字段	描述	备注
Id	物品编号	
Name	名称	
KeyName	索引名	
Type	主类型	
SubType	子类型	
Script	脚本编号	
BundleDstId	打捆对应物品ID	
Bundle	打捆数量	
SellPrice	出售价格	
BuyPrice	买入价格	
SkillId	触发技能	
UseCount	使用数量	
WeaponType	武器类型	
JuJuType	符咒类别	
LogicType	逻辑排列类别	
LogicSubType	逻辑排列子类别	
DurZeroAutoDel	耐久为0是否自动消失	
UseZeroAutoDel	使用次数为0是否自动消失	
TimeUpAutoDel	存在时限为0是否消失	
Stack	叠加数量	
BindType	绑定类型	
TimeLimit	存在时限	
UseAbsTime	绝对时间或相对时间	
SpeDrop	特殊掉落	
Level	使用等级	
Job	使用职业	
Gender	使用性别	
PhyLimit	物攻限制	
MagLimit	魔攻限制	
TaoLimit	咒术限制	
BuffId1	道具自身携带的BUFF1	
BuffId2	道具自身携带的BUFF2	
BuffId3	道具自身携带的BUFF3	
BuffId4	道具自身携带的BUFF4	
BuffId5	道具自身携带的BUFF5	
BuffId6	道具自身携带的BUFF6	
BuffId7	道具自身携带的BUFF7	
BuffId8	道具自身携带的BUFF8	
BuffId9	道具自身携带的BUFF9	
BuffId10	道具自身携带的BUFF10	
SelfWeight	重量	
Durability	配置耐久度	
HP	生命	
MP	魔法	
MaxPhyDef	物防上限	
MinPhyDef	物防下限	
MaxMagDef	魔防上限	
MinMagDef	魔防下限	
MaxPhyAtk	物攻上限	
MinPhyAtk	物攻下限	
MaxMagAtk	魔攻上限	
MinMagAtk	魔攻下限	
MaxTaoAtk	术攻上限	
MinTaoAtk	术攻下限	
EA1	金相性攻击	
EA2	木相性攻击	
EA3	水相性攻击	
EA4	火相性攻击	
EA5	土相性攻击	
ED1	金相性防御	
ED2	木相性防御	
ED3	水相性防御	
ED4	火相性防御	
ED5	土相性防御	
Weight	配置背包负重	
EquipWeight	配置穿戴负重	
Brawn	腕力	
Hit	准确（命中）	
Miss	敏捷（闪避）	
MagMiss	魔法躲避	
Burst	暴击率	
LC	幸运/诅咒	
MoveSpeed	移动速度百分比	
AttackSpeed	攻击速度百分比	
HPRec	生命回复值	
MPRec	魔法回复值	
Intensity	强度	
SuckHp	吸血	
SuckHpPct	吸血百分比	
SuckMaxHpPct	吸血上限百分比	
SuckMp	吸魔	
SuckMpPct	吸魔百分比	
SuckMaxMpPct	吸魔上限百分比	
RefPhy	物理伤害反射	
RefPhyPct	物理伤害反射百分比	
RefMag	魔法伤害反射数值	
RefMagPct	魔法伤害反射百分比	
ImmMag	魔法伤害减免数值	
ImmMagPct	魔法伤害减免百分比	
ImmPhy	物理伤害减免数值	
ImmPhyPct	物理伤害减免百分比	
IsPhyImm	物理免疫	
IsMagImm	魔法免疫	
Dropable	可否丢弃	
Storable	可否放入仓库	
Repairable	可否修理	
Sellable	可否出售	
CanAuction	可否拍卖	
CanPurchase	可否收购	
CanShortcut	可否放入快捷栏	
Identify	可否鉴定	
Drillable	可否打孔	
CanUnEquip	可否卸下	
CanRefine	可否精炼	
CanEnhance	可否强化	
Tradable	是否可交易	
SaveLog	是否保存记录	
Brief	物品介绍	
Desc	物品说明	
TipDrop	掉落提示	
TipSell	出售提示	
Confirmation	使用是否确认	
WhetherShowinHack	是否显示在内挂	
WhetherPick	是否自动拾取	
WhetherShowinEarth	是否自动显示	
WhetherAcuraTip	是否极品提示	
BigIcon	角色模型图片	
TipsIcon	大图标编号	
Icon	图标编号	
DropIcon	掉落图标编号	
AvatarMan	外形男	
AvatarWomen	外形女	
WingAvatarMan	翅膀模型男	
WingAvatarWomen	翅膀模型女	
ShadowAvatarMan	男阴影	
ShadowAvatarWomen	女阴影	
NaQiSound	拿起/拾取音效	
FangXiaSound	放下音效	
ShiYongSound	使用音效	
CutSound	挥砍音效	
HitSound	命中音效	
DiaoLuoSound	掉落音效	注意：该字段已无效，请不要使用。请使用DiaoLuoSound2字段。
DiaoLuoSound2	掉落音效	
Attr1	装备属性1	
Attr1Value	装备属性1的值	
Attr2	装备属性2	
Attr2Value	装备属性2的值	
Attr3	装备属性3	
Attr3Value	装备属性3的值	
Attr4	装备属性4	
Attr4Value	装备属性4的值	
Attr5	装备属性5	
Attr5Value	装备属性5的值	
Attr6	装备属性6	
Attr6Value	装备属性6的值	
Attr7	装备属性7	
Attr7Value	装备属性7的值	
Attr8	装备属性8	
Attr8Value	装备属性8的值	
Attr9	装备属性9	
Attr9Value	装备属性9的值	
Attr10	装备属性10	
Attr10Value	装备属性10的值	
Effect	使用特效编号	
Suit	套装编号	
UniversalItemForSuit	是否是套装通用装备	
SynthesisId	合成后生成的新宝石ID	
GemDigLevel	宝石摘除符等级	
GemSynthesisLevel	宝石合成符等级	
GemTao	术士生效比率	
GemLevel	宝石等级	
GemAtt1	宝石属性类型	
GemMage	法师生效比率	
GemWarrior	战士生效比率	
GemAttValue1	宝石属性数值	
GemMatch	宝石与装备子类型匹配关系	
GemType	宝石效果类型	
Rate	材料概率加成	
E1	武器位置发光特效	
E2	衣服位置发光特效	
E3	马蹄位置发光特效	
WarehouseSize	开启仓库格子数	
BagSize	开启背包格子数	
RefineCostDur	精炼失败掉落耐久	
MaxDrill	配置打孔数量上限	
Track	跟踪级别	
Quality	品质	
Color	道具颜色	
ShopType	出售修理类型	
User	使用者范畴	
XpRec	每秒回复怒气值	
ItemIdentifier	物品标识	
DragType	拖放类型	
IsForbidHeroBag	是否禁止进入英雄包裹	
ShowHair	显示设置	
SceneEffectId	在场景物品上播放的图片ID	
DropDurabilityMode	杀怪掉落物品的耐久初始方式	
ClothWingMan	衣服翅膀男	
ClothWingWomen	衣服翅膀女	
<上一篇:Monster模板属性定义下一篇:Hero模板属性定义>
Hero模板属性定义
更新时间：2022-07-18 00:00:00
Hero模板属性的定义请参见下表。

属性字段对应选项在英雄模板表中，其访问路径为游戏工具平台→游戏配置→角色→英雄模板表区域。

相关接口请参见：Hero_DataRow。

属性字段	描述	备注
Level	当前等级	
Job	职业	
UpgradeExp	升级经验	
HP	配置生命	
MP	配置魔法	
Weight	配置背包负重	
EquipWeight	配置装备负重	
Brawn	腕力重量	
MaxPhyAtk	配置物攻上限	
MinPhyAtk	配置物攻下限	
MaxMagAtk	配置魔攻上限	
MinMagAtk	配置魔攻下限	
MaxTaoAtk	配置术攻上限	
MinTaoAtk	配置术攻下限	
MaxPhyDef	配置物防上限	
MinPhyDef	配置物防下限	
MaxMagDef	配置魔防上限	
MinMagDef	配置魔防下限	
Hit	配置准确（命中）	
Miss	配置敏捷（闪避）	
LC	配置幸运/诅咒	
Burst	配置暴击率	
Poison	配置中毒回复速度	
HPRec	配置生命回复速度	
MPRec	配置魔法回复速度	
Interval	回复间隔	
MoveSpeed	移动速度	
AttackSpeed	攻击速度	
HeroXp	怒气	
HeroXpMax	怒气上限	
MpInterval	魔法回复间隔	
<上一篇:Item模板属性定义下一篇:InnerForce模板属性定义>
InnerForce模板属性定义
更新时间：2022-07-18 00:00:00
InnerForce模板属性的定义请参见下表。

属性字段对应选项在内功表中，其访问路径为游戏工具平台→游戏配置→角色→内功表区域。

相关接口请参见：InnerForce_DataRow。

属性字段	描述	备注
Level	当前等级	
Job	职业	
UpgradeExp	升级内功经验	
InnerForceValue	配置内功值	
InnerForceRec	内功恢复速度	
Interval	内功恢复间隔	
DeratePct	内功减伤百分比	
<上一篇:Hero模板属性定义下一篇:Campaign模板属性定义>
Campaign模板属性定义
更新时间：2022-07-18 00:00:00
Campaign模板属性的定义请参见下表。

属性字段对应选项在活动管理表中，其访问路径为游戏工具平台→游戏配置→其他表格→活动管理区域。

相关接口请参见：Campaign_DataRow。

属性字段	描述	备注
Id	编号	
Name	活动名称	
Type	活动时间类型	
Count	活动次数	
Begin	开始时间(显示用)	
End	结束时间(显示用)	
RealBegin	开始时间(真实用)	
Duration	活动持继时间	
MinLevel	参与最小等级	
MaxLevel	参与最小等级	
Desc	活动描述	
Npc	相关NPC	
Map	活动NPC所在地图	
Award	获得奖励	
Script	脚本编号	
BeginDeclType	开始是否宣告	
BeginDecl	开始宣告详细	
EndDeclType	结束是否宣告	
EndDecl	结束宣告详细	
OneTime	是否只显示一次	
IsPlan	是否是计划任务	
<上一篇:InnerForce模板属性定义下一篇:怪物刷新表属性定义>
怪物刷新表属性定义
更新时间：2022-07-18 00:00:00
怪物刷新表属性的定义请参见下表。

属性字段对应选项在怪物刷新表中，其访问路径为游戏工具平台→游戏配置→怪物→怪物刷新表区域。

相关接口请参见：Monster_Gen_DataRow、Monster_Gen_DataRow_By_Map和Monster_Gen_DataRow_By_Monster。

属性字段	描述	备注
left	X坐标	怪物刷新点的X坐标
top	Y坐标	怪物刷新点的Y坐标
width	宽	怪物刷新范围（矩形）的宽
单位为逻辑格
height	高	怪物刷新范围（矩形）的高
单位为逻辑格
KeyName	怪物索引名	
map_name	地图名索引名	
direction	怪物朝向	怪物刷新时的默认朝向（0上方，1右上方，2右方，3右下方，4下方，5左下方，6左方，7左上方，8随机方向）
当此字段的配置与怪物模板表中的Direction字段的配置冲突时，若怪物模板表中的Direction字段的配置为“随机方向”则以怪物刷新表中的配置为准，否则以怪物模板表中的配置为准。
number	刷新数量	
reborn	怪物刷新时间	单位为毫秒（ms）
reborn_ex	怪物刷新时间浮动	单位为毫秒（ms）
<上一篇:Campaign模板属性定义下一篇:Map模板属性定义>
Map模板属性定义
更新时间：2025-12-12 18:25:00
Map模板属性的定义请参见下表。

属性字段对应选项在地图模板表中，其访问路径为游戏工具平台→游戏配置→地图→地图模板表区域。

相关接口请参见：Map_DataRow。

属性字段	描述	备注
Id	地图编号	
GSIndex	Game Server索引	
KeyName	关键字索引	
MapType	地图类型	0代表普通地图，1代表副本地图。
Name	地图名称	
Script	地图脚本	
MaxLevel	进入最大等级	
MinLevel	进入最小等级	
PKMax	PK值最大限制	
PKMin	PK值最小限制	
Job	职业限制	0代表通用职业，1代表战士，2代表法师，3代表术士。
Gender	性别限制	0代表不限，1代表男性，2代表女性。
SkillId	禁用ID技能	
SkillType	禁用类技能	
ItemId	禁用ID道具	
ItemType	禁用类道具	
CanTalk	禁止喊话	
Team	可否组队	1代表可以，0代表不可以。
Ride	是否允许骑马	1代表是，0代表否。
Hero	可否召唤英雄	1代表可以，0代表不可以。
Dropable	可否丢弃物品	1代表可以，0代表不可以。
Talk	可否聊天	1代表可以，0代表不可以。
CrossHuman	是否允许穿人	1代表是，0代表否。
CrossMonster	是否允许穿怪	1代表是，0代表否。
KillPk	杀人是否增加PK值	1代表是，0代表否。
TOffline	离线自动传送	
TX	对应地图的X坐标	
TY	对应地图的Y坐标	
Option	死亡弹出	
ShowUI	进入地图是否弹UI	0代表不弹UI；0以上的数字代表对应的UI编号，在进入地图时会打开对应UI。
MapBg	地图背景	
MiniMap	缩略图资源ID	
Logic	地图逻辑格文件名	
ShowBigThumbnail	显示放大的缩略图	1代表是，0代表否。
CustomMiniMap	自定义小地图	
LightXr	视野范围Xr	
LightYr	视野范围Yr	
BagDrop	死亡是否有包裹掉落	1代表是，0代表否。
EquipDrop	死亡是否有装备掉落	1代表是，0代表否。
P2PTrade	是否可以P2P交易	0代表是，1代表否。
Mask	是否有遮罩	1代表海底遮罩，0代表无遮罩。
EnterEffect	进入场景特效	
LeftEffect	离开场景特效	
BackPic	背景图资源编号	
CustomUse0	自定义字段0	
<上一篇:怪物刷新表属性定义下一篇:Title模板属性定义>
Title模板属性定义
更新时间：2024-06-12 00:00:00
Title模板属性的定义请参见下表。

属性字段对应选项在角色称号模板表中，其访问路径为游戏工具平台→游戏配置→角色→角色称号模板表区域。

相关接口请参见：Title_DataRow。

属性字段	描述	备注
Id	编号	
KeyName	索引名	
Name	名字	
Size	面板结构位置	
Priority	优先级	
BuffId	BUFF ID	
Tips	描述	
TipsSource	称号来源描述	
TetelShow	是否加入未获得称号显示	1代表是，0代表否。
Color	字体颜色	
HasShowName	是否显示头顶名字	1代表是，0代表否。
TimeLimit	存在时限	
UseAbsTime	是否使用绝对时间	1代表使用绝对时间，0代表相对时间。
ColorString	字体颜色字符串	
<上一篇:Map模板属性定义下一篇:Role模板属性定义>
Role模板属性定义
更新时间：2024-07-26 00:00:00
Role模板属性的定义请参见下表。

属性字段对应选项在角色模板表中，其访问路径为游戏工具平台→游戏配置→角色→角色模板表区域。

相关接口请参见：Role_DataRow。

属性字段	描述	备注
Level	当前等级	
Job	职业	
UpgradeExp	升级经验	
HP	配置生命	
MP	配置魔法	
Weight	配置背包负重	
EquipWeight	配置装备负重	
Brawn	腕力重量	
MaxPhyAtk	配置物攻上限	
MinPhyAtk	配置物攻下限	
MaxMagAtk	配置魔攻上限	
MinMagAtk	配置魔攻下限	
MaxTaoAtk	配置术攻上限	
MinTaoAtk	配置术攻下限	
MaxPhyDef	配置物防上限	
MinPhyDef	配置物防下限	
MaxMagDef	配置魔防上限	
MinMagDef	配置魔防下限	
Hit	配置准确（命中）	
Miss	配置敏捷（闪避）	
LC	配置幸运/诅咒	
Burst	配置暴击率	
Poison	配置中毒回复速度	
HPRec	配置生命回复速度	
MPRec	配置魔法回复速度	
Interval	回复间隔	
MoveSpeed	移动速度	
AttackSpeed	攻击速度	
MpInterval	魔法回复间隔	
<上一篇:Title模板属性定义下一篇:商城表属性定义>
商城表属性定义
更新时间：2025-09-26 17:45:00
商城表属性的定义请参见下表。

属性字段对应选项在商城表中，其访问路径为游戏工具平台→游戏配置→装备&道具→商城表区域。

相关接口请参见：Mall_DataRows。

属性字段	描述	备注
ID	编号	
KeyName	道具索引名	
Price	原价格	
Discount	折扣	
Number	限购数量	
Hot	是否热销	
Page	页签分类	
CostType	消费类型	
textDesc	文字说明	
NotSell	是否下架	
IntegralNum	积分数量	
OrderNum	排序	
<上一篇:Role模板属性定义

以下是历史接口，很多都已经废弃，请悉知
GetLocalTime
获取所有的秒数

更新时间：2021-11-15 00:00:00
此函数获取从1970年1月1日0时0分0到现在经过的秒数（UTC时间）。

参考 GetAllTime

caution_icon注意
此接口为已过期，禁止使用。

此接口的代替接口为GetAllTime。

语法
Luacopy 复制
lualib:GetLocalTime()
参数
无

返回值
uint32

 
时间秒数

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:获取所有的秒数>
GetTime
获取所有的秒数

更新时间：2021-11-15 00:00:00
此函数获取从1970年1月1日0时0分0到现在经过的秒数（UTC时间）。

参考 GetAllTime

caution_icon注意
此接口为已过期，禁止使用。

此接口的代替接口为GetAllTime。

语法
Luacopy 复制
lualib:GetTime()
参数
无

返回值
uint32

 
时间秒数

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取所有的秒数下一篇:从数据库中删除整型数值变量>
IO_ClearCustomVarInt
从数据库中删除整型数值变量

更新时间：2021-11-15 00:00:00
此函数从数据库中删除整型数值变量。

caution_icon注意
此接口已过期，禁止使用。

语法
Luacopy 复制
lualib:IO_ClearCustomVarInt(
    strKey
)
参数
strKey

string

 
变量名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--从数据库中删除自定义变量fuwuqishushihua
lualib:IO_ClearCustomVarInt("fuwuqishushihua")
<上一篇:获取所有的秒数下一篇:从数据库中删除字符型变量>
IO_ClearCustomVarStr
从数据库中删除字符型变量

更新时间：2021-11-15 00:00:00
此函数从数据库中删除字符型变量。

caution_icon注意
此接口已过期，禁止使用。

语法
Luacopy 复制
lualib:IO_ClearCustomVarStr(
    strKey
)
参数
strKey

string

 
变量名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--删除字符型自定义变量zhanlingcishu
lualib:IO_ClearCustomVarStr("zhanlingcishu")
<上一篇:从数据库中删除整型数值变量下一篇:从数据库中读取整型数值变量>
IO_GetCustomVarInt
从数据库中读取整型数值变量

更新时间：2021-11-15 00:00:00
此函数从数据库中读取整型数值变量。

参考 GetDBNum

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetDBNum。

语法
Luacopy 复制
lualib:IO_GetCustomVarInt(
    strKey
)
参数
strKey

string

 
变量名

返回值
int

 
变量值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--system.lua
function on_system_start()
    --服务器第一次启动执行
    if lualib:IO_GetCustomVarInt("fuwuqishushihua") == 0 then
        lualib:IO_SetCustomVarInt("fuwuqishushihua",1)
        --冲级比赛相关数据初始化
        lualib:IO_SetCustomVarInt("chongjizhanshi40",20)
        lualib:IO_SetCustomVarInt("chongjifashi40",20)
        lualib:IO_SetCustomVarInt("chongjidaoshi40",20)
        lualib:IO_SetCustomVarInt("chongjizhanshi45",10)
        lualib:IO_SetCustomVarInt("chongjifashi45",10)
        lualib:IO_SetCustomVarInt("chongjidaoshi45",10)
        lualib:IO_SetCustomVarInt("chongjizhanshi50",1)
        lualib:IO_SetCustomVarInt("chongjifashi50",1)
        lualib:IO_SetCustomVarInt("chongjidaoshi50",1)
    end
--……省略部分代码
end
<上一篇:从数据库中删除字符型变量下一篇:从数据库中读取字符型变量>
IO_GetCustomVarStr
从数据库中读取字符型变量

更新时间：2021-11-15 00:00:00
此函数从数据库中读取字符型变量。

参考 GetDBStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetDBStr。

语法
Luacopy 复制
lualib:IO_GetCustomVarStr(
    strKey
)
参数
strKey

string

 
变量名

返回值
string

 
变量值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--system.lua  

--获取神歌城城堡拥有者的行会名
local own_family = lualib:GetCastleOwnFamily(castle_name)
--通过从数据库中读取自定义（字符型）变量"shengechengzhanling"，该变量记录着原神歌城占领者的行会名。
local family = lualib:IO_GetCustomVarStr("shengechengzhanling")
--比较两者，若两者相同，则在数据库自定义变量(数值型)"zhanlingcishu"+1，表示占领次数+1。
--若两者不同，将数据库中自定义变量（字符型）"shengechengzhanling"设为own_family，表示占领神歌城的行会改为当前占有者，次数为1。
if own_family == family then
    local abc = lualib:IO_GetCustomVarInt("zhanlingcishu")
    lualib:IO_SetCustomVarInt("zhanlingcishu", abc + 1)
else
    lualib:IO_SetCustomVarStr("shengechengzhanling", own_family)
    lualib:IO_SetCustomVarInt("zhanlingcishu", 1)
end
<上一篇:从数据库中读取整型数值变量下一篇:在数据库中存储整型数值变量>
IO_SetCustomVarInt
在数据库中存储整型数值变量

更新时间：2021-11-15 00:00:00
此函数在数据库中存储整型数值变量。

参考 SetDBNum

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetDBNum。

语法
Luacopy 复制
lualib:IO_SetCustomVarInt(
    strKey,
    iValue
)
参数
strKey

string

 
变量名

iValue

int

 
变量值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--system.lua
function on_system_start()
    --服务器第一次启动执行
    if lualib:IO_GetCustomVarInt("fuwuqishushihua") == 0 then
        lualib:IO_SetCustomVarInt("fuwuqishushihua",1)
        --冲级比赛相关数据初始化
        lualib:IO_SetCustomVarInt("chongjizhanshi40",20)
        lualib:IO_SetCustomVarInt("chongjifashi40",20)
        lualib:IO_SetCustomVarInt("chongjidaoshi40",20)
        lualib:IO_SetCustomVarInt("chongjizhanshi45",10)
        lualib:IO_SetCustomVarInt("chongjifashi45",10)
        lualib:IO_SetCustomVarInt("chongjidaoshi45",10)
        lualib:IO_SetCustomVarInt("chongjizhanshi50",1)
        lualib:IO_SetCustomVarInt("chongjifashi50",1)
        lualib:IO_SetCustomVarInt("chongjidaoshi50",1)
    end
--……省略部分代码
end
<上一篇:从数据库中读取字符型变量下一篇:在数据库中存储字符型变量>
IO_SetCustomVarStr
在数据库中存储字符型变量

更新时间：2021-11-15 00:00:00
此函数在数据库中存储字符型变量。

参考 SetDBStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetDBStr。

语法
Luacopy 复制
lualib:IO_SetCustomVarStr(
    strKey,
    iValue
)
参数
strKey

string

 
变量名

iValue

string

 
变量值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--system.lua  

--获取神歌城城堡拥有者的行会名
local own_family = lualib:GetCastleOwnFamily(castle_name)
--通过从数据库中读取自定义（字符型）变量"shengechengzhanling"，该变量记录着原神歌城占领者的行会名。
local family = lualib:IO_GetCustomVarStr("shengechengzhanling")
--比较两者，若两者相同，则在数据库自定义变量(数值型)"zhanlingcishu"+1，表示占领次数+1。
--若两者不同，将数据库中自定义变量（字符型）"shengechengzhanling"设为own_family，表示占领神歌城的行会改为当前占有者，次数为1。
if own_family == family then
    local abc = lualib:IO_GetCustomVarInt("zhanlingcishu")
    lualib:IO_SetCustomVarInt("zhanlingcishu", abc + 1)
else
    lualib:IO_SetCustomVarStr("shengechengzhanling", own_family)
    lualib:IO_SetCustomVarInt("zhanlingcishu", 1)
end
<上一篇:在数据库中存储整型数值变量下一篇:GS给CS发送频道消息>
NotifyCSChannelMsg
GS给CS发送频道消息

更新时间：2021-11-15 00:00:00
此函数作用为GS和CS发送频道消息。

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口曾经用来扩展服务器的功能，脚本作者不要使用。

语法
Luacopy 复制
lualib:NotifyCSChannelMsg(
    wChannelType,
    strParam,
    strMsg
)
参数
wChannelType

uint16

 
频道类型

strParam

string

 
参数

strMsg

string

 
消息内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:在数据库中存储字符型变量
ApplyEquip
让玩家穿装备

更新时间：2022-05-05 00:00:00
此函数让玩家穿戴背包中的装备。

参考 TakeOn

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为TakeOn。

语法
Luacopy 复制
lualib:ApplyEquip(
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
此函数无示例代码。
下一篇:给角色添加BUFF>
Player_AddBuff
给角色添加BUFF

更新时间：2021-11-15 00:00:00
此函数给角色添加BUFF。

参考 AddBuff

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为AddBuff。

语法
Luacopy 复制
lualib:Player_AddBuff(
    strPlayer,
    strBuffKey,
    dwTimes
)
参数
strPlayer

string

 
玩家角色的GUID

strBuffKey

string

 
BUFF的索引名（KeyName）

若此参数的值为""，则删除所有BUFF。
dwTimes

uint32

 
BUFF的持继时间

单位为秒（s）

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
<上一篇:让玩家穿装备下一篇:给角色添加技能>
Player_AddSkill
给角色添加技能

更新时间：2021-11-15 00:00:00
此函数给角色添加技能。

参考 AddSkill

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为AddSkill。

语法
Luacopy 复制
lualib:Player_AddSkill(
    strPlayer,
    strSkillKey
)
参数
strPlayer

string

 
玩家角色的GUID

strSkillKey

string

 
技能的索引名（KeyName）

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
<上一篇:给角色添加BUFF下一篇:设置玩家的性别>
Player_ChangeGender
设置玩家的性别

更新时间：2021-11-15 00:00:00
此函数设置玩家的性别。

参考 SetGender

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Player_ChangeGender(
    strPlayer,
    dwGender
)
参数
strPlayer

string

 
玩家角色的GUID

dwGender

uint32

 
玩家的性别

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给角色添加技能下一篇:设置玩家的职业>
Player_ChangeJob
设置玩家的职业

更新时间：2021-11-15 00:00:00
此函数设置玩家的职业。

参考 SetJob

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Player_ChangeJob(
    strPlayer,
    dwJob
)
参数
strPlayer

string

 
玩家角色的GUID

dwJob

uint32

 
玩家的职业

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置玩家的性别下一篇:清空玩家背包>
Player_ClearBag
清空玩家背包

更新时间：2021-11-15 00:00:00
此函数清空玩家背包。

参考 ClearBag

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为ClearBag。

语法
Luacopy 复制
lualib:Player_ClearBag(
    strPlayer,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家角色的GUID

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
此函数无示例代码。
<上一篇:设置玩家的职业下一篇:删除角色BUFF>
Player_DelBuff
删除角色BUFF

更新时间：2021-11-15 00:00:00
此函数删除角色BUFF。

参考 DelBuff

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为DelBuff。

语法
Luacopy 复制
lualib:Player_DelBuff(
    strPlayer,
    strBuffKey
)
参数
strPlayer

string

 
玩家角色的GUID

strBuffKey

string

 
BUFF的索引名（KeyName）

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
<上一篇:清空玩家背包下一篇:删除玩家背包中的绑定物品>
Player_DestroyItemBind
删除玩家背包中的绑定物品

更新时间：2022-05-05 00:00:00
此函数删除玩家背包中的绑定物品。

参考 DelItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为DelItem。

语法
Luacopy 复制
lualib:Player_DestroyItemBind(
    strPlayer,
    strItemKey,
    iCount,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

iCount

int32

 
删除数量

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
此函数无示例代码。
<上一篇:删除角色BUFF下一篇:删除玩家背包中的非绑定物品>
Player_DestroyItemUnbind
删除玩家背包中的非绑定物品

更新时间：2022-05-05 00:00:00
此函数删除玩家背包中的非绑定物品。

参考 DelItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为DelItem。

语法
Luacopy 复制
lualib:Player_DestroyItemUnbind(
    strPlayer,
    strItemKey,
    iCount,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

iCount

int32

 
删除数量

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
此函数无示例代码。
<上一篇:删除玩家背包中的绑定物品下一篇:删除玩家物品>
Player_DestroyItem
删除玩家物品

更新时间：2022-05-05 00:00:00
此函数删除玩家背包中的物品（忽略绑定类型）。

参考 DelItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为DelItem。

语法
Luacopy 复制
lualib:Player_DestroyItem(
    strPlayer,
    strItemKey,
    iCount,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

iCount

int32

 
删除数量

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
此函数无示例代码。
<上一篇:删除玩家背包中的非绑定物品下一篇:丢弃玩家背包中的物品>
Player_DropItem
丢弃玩家背包中的物品

更新时间：2022-05-05 00:00:00
此函数丢弃玩家背包中的物品。

参考 DropItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为DropItem。

语法
Luacopy 复制
lualib:Player_DropItem(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

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
<上一篇:删除玩家物品下一篇:获取玩家的账号ID>
Player_GetAccountID
获取玩家的账号ID

更新时间：2021-11-15 00:00:00
此函数获取玩家的账号ID。

参考 UserID

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

此接口的代替接口为UserID。

语法
Luacopy 复制
lualib:Player_GetAccountID(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
获取成功则返回对应玩家的账号ID

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--充值礼包.lua
local id = tostring(lualib:Player_GetAccountID(player)) --获取玩家的账号ID并转换为字符串格式
<上一篇:丢弃玩家背包中的物品下一篇:获取玩家背包空格子数量>
Player_GetBagFree
获取玩家背包空格子数量

更新时间：2021-11-15 00:00:00
此函数获取玩家背包空格子数量。

参考 GetBagFree GetBagFreeEx BagFree

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetBagFreeEx。

语法
Luacopy 复制
lualib:Player_GetBagFree(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
获取成功则返回背包空格子数

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的账号ID下一篇:获取玩家背包所有物品的GUID列表>
Player_GetBagItemList
获取玩家背包所有物品的GUID列表

更新时间：2021-11-15 00:00:00
此函数获取玩家背包所有物品的GUID列表。

参考 BagItemList

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为BagItemList。

语法
Luacopy 复制
lualib:Player_GetBagItemList(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
背包中所有物品的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家背包空格子数量下一篇:获取玩家背包大小>
Player_GetBagSize
获取玩家背包大小

更新时间：2021-11-15 00:00:00
此函数获取玩家背包大小.该接口已过期,使用GetBagSizeEx代替。

参考 GetBagSize GetBagSizeEx BagSize

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetBagSizeEx。

语法
Luacopy 复制
lualib:Player_GetBagSize(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
获取成功则返回背包大小

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家背包所有物品的GUID列表下一篇:获取玩家实体上存储的整型数值变量>
Player_GetCustomVarInt
获取玩家实体上存储的整型数值变量

更新时间：2021-11-15 00:00:00
此函数获取玩家实体上存储的整型数值变量。

参考 GetInt

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为GetInt。

语法
Luacopy 复制
lualib:Player_GetCustomVarInt(
    strPlayer,
    strKey
)
参数
strPlayer

string

 
玩家角色的GUID

strKey

string

 
变量名

返回值
int32

 
变量值

若变量不存在，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家背包大小下一篇:获取玩家实体上存储的字符型变量>
Player_GetCustomVarStr
获取玩家实体上存储的字符型变量

更新时间：2021-11-15 00:00:00
此函数获取玩家实体上存储的字符型变量。

参考 GetStr

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为GetStr。

语法
Luacopy 复制
lualib:Player_GetCustomVarStr(
    strPlayer,
    strKey
)
参数
strPlayer

string

 
玩家角色的GUID

strKey

string

 
变量名

返回值
string

 
变量值

若变量不存在，则返回""。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家实体上存储的整型数值变量下一篇:获取玩家的方向>
Player_GetDir
获取玩家的方向

更新时间：2021-11-15 00:00:00
此函数获取玩家的方向。

参考 Dir

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

此接口的代替接口为Dir。

语法
Luacopy 复制
lualib:Player_GetDir(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int16

 
获取成功则返回对应玩家的方向值

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家实体上存储的字符型变量下一篇:计算玩家间的距离>
Player_GetDistance
计算玩家间的距离

更新时间：2021-11-15 00:00:00
此函数计算玩家间的距离。

参考 Distance

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Distance。

语法
Luacopy 复制
lualib:Player_GetDistance(
    strPlayer1,
    strPlayer2
)
参数
strPlayer1

string

 
玩家角色1的GUID

strPlayer2

string

 
玩家角色2的GUID

返回值
uint16

 
获取成功则返回距离

获取失败则返回65535

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的方向下一篇:获取玩家的GUID型属性值>
Player_GetGuidProp
获取玩家的GUID型属性值

更新时间：2021-11-15 00:00:00
此函数获取玩家的GUID型属性值。

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Player_GetGuidProp(
    strPlayer,
    wAttrType
)
参数
strPlayer

string

 
玩家角色的GUID

wAttrType

uint16

 
属性类型（过期接口不再详述）

返回值
string

 
对应玩家的GUID型属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:计算玩家间的距离下一篇:根据玩家的名称找到该玩家>
Player_GetGuid
根据玩家的名称找到该玩家

更新时间：2021-11-15 00:00:00
此函数根据玩家的名称（Name）找到该玩家，且该玩家必须在线。

参考 Name2Guid

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Name2Guid。

语法
Luacopy 复制
lualib:Player_GetGuid(
    strPlayerName
)
参数
strPlayerName

string

 
玩家的名称（Name）

返回值
string

 
获取成功则返回玩家角色的GUID

获取失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的GUID型属性值下一篇:获取玩家的数值型属性值>
Player_GetIntProp
获取玩家的数值型属性值

更新时间：2021-11-15 00:00:00
此函数获取玩家的数值型属性值。

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Player_GetIntProp(
    strPlayer,
    iAttrType
)
参数
strPlayer

string

 
玩家角色的GUID

iAttrType

int32

 
属性类型（过期接口不再详述）

返回值
double

 
对应玩家的数值型属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据玩家的名称找到该玩家下一篇:获取玩家的绑定物品数量>
Player_GetItemCountBind
获取玩家的绑定物品数量

更新时间：2022-05-05 00:00:00
此函数获取玩家背包中的绑定物品数量。

参考 ItemCountEx

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为ItemCountEx。

语法
Luacopy 复制
lualib:Player_GetItemCountBind(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

返回值
int32

 
获取成功则返回符合条件的物品数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的数值型属性值下一篇:获取玩家的非绑定物品数量>
Player_GetItemCountUnbind
获取玩家的非绑定物品数量

更新时间：2022-05-05 00:00:00
此函数获取玩家背包中的非绑定物品数量。

参考 ItemCountEx

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为ItemCountEx。

语法
Luacopy 复制
lualib:Player_GetItemCountUnbind(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

返回值
int32

 
获取成功则返回符合条件的物品数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的绑定物品数量下一篇:获取玩家的物品数量>
Player_GetItemCount
获取玩家的物品数量

更新时间：2022-05-05 00:00:00
此函数获取玩家背包中的物品数量（忽略绑定类型）。

参考 ItemCountEx

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为ItemCountEx。

语法
Luacopy 复制
lualib:Player_GetItemCount(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

返回值
int32

 
获取成功则返回符合条件的物品数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的非绑定物品数量下一篇:获取玩家的X坐标>
Player_GetPosX
获取玩家的X坐标

更新时间：2021-11-15 00:00:00
此函数获取玩家的X坐标。

参考 X Y

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

此接口的代替接口为X。

语法
Luacopy 复制
lualib:Player_GetPosX(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int16

 
获取成功则返回对应玩家的X坐标

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的物品数量下一篇:获取玩家的Y坐标>
Player_GetPosY
获取玩家的Y坐标

更新时间：2021-11-15 00:00:00
此函数获取玩家的Y坐标。

参考 X Y

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

此接口的代替接口为Y。

语法
Luacopy 复制
lualib:Player_GetPosY(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int16

 
获取成功则返回对应玩家的Y坐标

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的X坐标下一篇:获取玩家的字符型属性值>
Player_GetStrProp
获取玩家的字符型属性值

更新时间：2021-11-15 00:00:00
此函数获取玩家的字符型属性值。

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Player_GetStrProp(
    strPlayer,
    wAttrType
)
参数
strPlayer

string

 
玩家角色的GUID

wAttrType

uint16

 
属性类型（过期接口不再详述）

返回值
string

 
对应玩家的字符型属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的Y坐标下一篇:获取玩家的时间型属性值>
Player_GetTimeProp
获取玩家的时间型属性值

更新时间：2021-11-15 00:00:00
此函数获取玩家的时间型属性值。

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Player_GetTimeProp(
    strPlayer,
    wAttrType
)
参数
strPlayer

string

 
玩家角色的GUID

wAttrType

uint16

 
属性类型（过期接口不再详述）

返回值
uint32

 
对应玩家的时间型属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的字符型属性值下一篇:获取玩家仓库空格子数量>
Player_GetWarehouseFree
获取玩家仓库空格子数量

更新时间：2021-11-15 00:00:00
此函数获取玩家仓库空格子数量。

参考 GetBagFree GetBagFreeEx BagFree

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetBagFreeEx。

语法
Luacopy 复制
lualib:Player_GetWarehouseFree(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
获取成功则返回仓库中的空格子数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的时间型属性值下一篇:获取玩家仓库中的绑定物品数量>
Player_GetWarehouseItemCountBind
获取玩家仓库中的绑定物品数量

更新时间：2022-05-05 00:00:00
此函数获取玩家仓库中的绑定物品数量。

参考 ItemCountEx

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为ItemCountEx。

语法
Luacopy 复制
lualib:Player_GetWarehouseItemCountBind(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

返回值
int32

 
获取成功则返回玩家仓库中的绑定物品数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家仓库空格子数量下一篇:获取玩家仓库中的非绑定物品数量>
Player_GetWarehouseItemCountUnbind
获取玩家仓库中的非绑定物品数量

更新时间：2022-05-05 00:00:00
此函数获取玩家仓库中的非绑定物品数量。

参考 ItemCountEx

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为ItemCountEx。

语法
Luacopy 复制
lualib:Player_GetWarehouseItemCountUnbind(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

返回值
int32

 
获取成功则返回玩家仓库中的绑定物品数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家仓库中的绑定物品数量下一篇:获取玩家仓库中的物品数量>
Player_GetWarehouseItemCount
获取玩家仓库中的物品数量

更新时间：2022-05-05 00:00:00
此函数获取玩家仓库中的物品数量（忽略物品的绑定类型）。

参考 ItemCountEx

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为ItemCountEx。

语法
Luacopy 复制
lualib:Player_GetWarehouseItemCount(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

返回值
int32

 
获取成功则返回玩家仓库中的物品数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家仓库中的非绑定物品数量下一篇:获取玩家仓库大小>
Player_GetWarehouseSize
获取玩家仓库大小

更新时间：2021-11-15 00:00:00
此函数获取玩家仓库大小。

参考 GetBagSize GetBagSizeEx BagSize

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetBagSizeEx。

语法
Luacopy 复制
lualib:Player_GetWarehouseSize(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
获取成功则返回玩家仓库大小

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家仓库中的物品数量下一篇:给予玩家绑定物品>
Player_GiveItemBind
给予玩家绑定物品

更新时间：2022-05-05 00:00:00
此函数给予玩家绑定物品。

若玩家背包满了，物品会掉到地上，绑定物品只有玩家自己才能拾取。

参考 GiveBindItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GiveBindItem。

语法
Luacopy 复制
lualib:Player_GiveItemBind(
    strPlayer,
    strItemKey,
    wCount,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

wCount

int32

 
给予数量

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
此函数无示例代码。
<上一篇:获取玩家仓库大小下一篇:给予玩家非绑定物品>
Player_GiveItemUnbind
给予玩家非绑定物品

更新时间：2022-05-05 00:00:00
此函数给予玩家非绑定物品。

若玩家背包满了，物品会掉到地上。

参考 GiveItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GiveItem。

语法
Luacopy 复制
lualib:Player_GiveItemUnbind(
    strPlayer,
    strItemKey,
    wCount,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

wCount

int32

 
给予数量

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
此函数无示例代码。
<上一篇:给予玩家绑定物品下一篇:给予玩家单个物品>
Player_GiveSingleItem
给予玩家单个物品

更新时间：2022-05-05 00:00:00
此函数给予玩家单个物品。

必须保证背包有一个空格，否则给予失败。

参考 AddSingleItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为AddSingleItem。

语法
Luacopy 复制
lualib:Player_GiveSingleItem(
    strPlayer,
    strItemKey,
    bBind,
    strDesc,
    strTarget
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

bBind

uint8

 
绑定类型

strDesc

string

 
动作的原因

strTarget

string

 
动作的发起者

返回值
string

 
执行成功则返回新物品的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给予玩家非绑定物品下一篇:判断是否为防沉迷玩家>
Player_IsAntiIndulge
判断是否为防沉迷玩家

更新时间：2021-11-15 00:00:00
此函数判断是否为防沉迷玩家。

参考 IsAntiIndulge

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为IsAntiIndulge。

语法
Luacopy 复制
lualib:Player_IsAntiIndulge(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true是防沉迷玩家

false不是防沉迷玩家

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给予玩家单个物品下一篇:判断玩家是否拥有某个BUFF>
Player_IsHasBuff
判断玩家是否拥有某个BUFF

更新时间：2021-11-15 00:00:00
此函数判断玩家是否拥有某个BUFF。

参考 HasBuff

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为HasBuff。

语法
Luacopy 复制
lualib:Player_IsHasBuff(
    strPlayer,
    strBuffKey
)
参数
strPlayer

string

 
玩家角色的GUID

strBuffKey

string

 
BUFF的索引名（KeyName）

返回值
bool

 
true玩家有指定BUFF

false玩家没有指定BUFF

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:判断是否为防沉迷玩家下一篇:判断玩家是否拥有某个技能>
Player_IsHasSkill
判断玩家是否拥有某个技能

更新时间：2021-11-15 00:00:00
此函数判断玩家是否拥有某个技能，默认判断技能链。

参考 HasSkill

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为HasSkill。

语法
Luacopy 复制
lualib:Player_IsHasSkill(
    strPlayer,
    strSkillKey
)
参数
strPlayer

string

 
玩家角色的GUID

strSkillKey

string

 
技能的索引名（KeyName）

返回值
bool

 
true玩家有指定技能

false玩家没有指定技能

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:判断玩家是否拥有某个BUFF下一篇:踢玩家下线>
Player_Kick
踢玩家下线

更新时间：2021-11-15 00:00:00
此函数踢玩家下线。

参考 KickByName

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为KickByName。

语法
Luacopy 复制
lualib:Player_Kick(
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

caution_icon注意
该函数是异步的，返回成功并不代表踢人成功。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:判断玩家是否拥有某个技能下一篇:立即杀死角色>
Player_Kill
立即杀死角色

更新时间：2021-11-15 00:00:00
此函数立即杀死角色。

参考 Kill

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Kill。

语法
Luacopy 复制
lualib:Player_Kill(
    strPlayer,
    bDropItem,
    bShowKiller
)
参数
strPlayer

string

 
玩家角色的GUID

bDropItem

bool

 
该参数无效，没有使用。

bShowKiller

bool

 
该参数无效，没有使用。

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
<上一篇:踢玩家下线下一篇:向客户端发送变量通知>
Player_NotifyCustomParam
向客户端发送变量通知

更新时间：2021-11-15 00:00:00
此函数向游戏客户端发送变量通知，具体功能由客户端自行解析。

参考 NotifyVar

caution_icon注意
该接口属于服务器代码扩展，脚本作者无权使用。

此接口已过期，禁止使用。

此接口的代替接口为NotifyVar。

语法
Luacopy 复制
lualib:Player_NotifyCustomParam(
    strPlayer,
    strKey
)
参数
strPlayer

string

 
玩家角色的GUID

strKey

string

 
变量名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:立即杀死角色下一篇:在对象实体上存储整型数值变量>
Player_SetCustomVarInt
在对象实体上存储整型数值变量

更新时间：2021-11-15 00:00:00
此函数在对象实体上存储整型数值变量，当对象是玩家时变量会自动保存到数据库中。

参考 SetInt

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetInt。

语法
Luacopy 复制
lualib:Player_SetCustomVarInt(
    strPlayer,
    strKey,
    iValue
)
参数
strPlayer

string

 
玩家角色的GUID

strKey

string

 
变量名

iValue

int32

 
变量值

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
<上一篇:向客户端发送变量通知下一篇:在对象实体上存储字符型变量>
Player_SetCustomVarStr
在对象实体上存储字符型变量

更新时间：2021-11-15 00:00:00
此函数在对象实体上存储字符型变量，当对象是玩家时变量会自动保存到数据库中。

参考 SetStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetStr。

语法
Luacopy 复制
lualib:Player_SetCustomVarStr(
    strPlayer,
    strKey,
    strValue
)
参数
strPlayer

string

 
玩家角色的GUID

strKey

string

 
变量名

strValue

string

 
变量值

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
<上一篇:在对象实体上存储整型数值变量下一篇:设置玩家的数值型属性值>
Player_SetIntProp
设置玩家的数值型属性值

更新时间：2021-11-15 00:00:00
此函数设置玩家的数值型属性值。

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Player_SetIntProp(
    strPlayer,
    wAttrType,
    wOprType,
    dwValue
)
参数
strPlayer

string

 
玩家角色的GUID

wAttrType

uint16

 
属性类型（过期接口不再详述）

wOprType

uint16

 
操作类型（过期接口不再详述）

dwValue

uint32

 
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
此函数无示例代码。
<上一篇:在对象实体上存储字符型变量下一篇:让玩家使用道具>
Player_UseItemByID
让玩家使用道具

更新时间：2021-11-15 00:00:00
此函数让玩家使用背包中的道具。

参考 ApplyItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为ApplyItem。

语法
Luacopy 复制
lualib:Player_UseItemByID(
    strPlayer,
    wID
)
参数
strPlayer

string

 
玩家角色的GUID

wID

uint16

 
物品的ID

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
<上一篇:设置玩家的数值型属性值下一篇:让玩家使用道具>
Player_UseItem
让玩家使用道具

更新时间：2022-05-05 00:00:00
此函数让玩家使用背包中的道具。

参考 ApplyItem

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为ApplyItem。

语法
Luacopy 复制
lualib:Player_UseItem(
    strPlayer,
    strItemKey
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

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
<上一篇:让玩家使用道具
ItemCountByKey
获取玩家的物品数量

更新时间：2022-05-05 00:00:00
此函数获取玩家的物品数量。

参考 ItemCountEx

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为ItemCountEx。

语法
Luacopy 复制
lualib:ItemCountByKey(
    strPlayer,
    strItemKey,
    bBag,
    bWarhouse,
    bAdvWarehouse,
    bBindType
)
参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

bBag

bool

 
是否判断背包

bWarhouse

bool

 
是否判断仓库

bAdvWarehouse

bool

 
是否判断高级仓库

bBindType

uint8

 
绑定类型

0必须非绑定

1必须绑定

2绑定/非绑定

返回值
int32

 
获取成功则返回符合条件的物品数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--野马.lua

--判断是否有绳索
if lualib:ItemCountByKey(player, "套索", true, false, false, 2) <= 0 then --获得玩家背包中套索的数量（不包括仓库和高级仓库中的套索）
    lualib:SysWarnMsg(player, "没有套索，无法抓捕！")
    return ""
end
下一篇:根据物品的GUID获取物品的索引名>
ItemKeyName
根据物品的GUID获取物品的索引名

更新时间：2022-05-05 00:00:00
此函数根据物品的GUID获取物品的索引名（KeyName）。

参考 KeyName

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为KeyName。

语法
Luacopy 复制
lualib:ItemKeyName(
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
string

 
获取成功则返回物品的索引名（KeyName）

获取失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家的物品数量下一篇:获取物品实体上存储的整型数值变量>
Item_GetCustomVarInt
获取物品实体上存储的整型数值变量

更新时间：2021-11-15 00:00:00
此函数获取物品实体上存储的整型数值变量。

参考 GetInt

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为GetInt。

语法
Luacopy 复制
lualib:Item_GetCustomVarInt(
    strPlayer,
    strItem,
    strKey
)
参数
strPlayer

string

 
此参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

strKey

string

 
变量名

返回值
int32

 
变量值

若变量不存在，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据物品的GUID获取物品的索引名下一篇:获取物品实体上存储的字符型变量>
Item_GetCustomVarStr
获取物品实体上存储的字符型变量

更新时间：2021-11-15 00:00:00
此函数获取物品实体上存储的字符型变量。

参考 GetStr

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为GetStr。

语法
Luacopy 复制
lualib:Item_GetCustomVarStr(
    strPlayer,
    strItem,
    strKey
)
参数
strPlayer

string

 
此参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

strKey

string

 
变量名

返回值
string

 
变量值

若变量不存在，则返回""。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取物品实体上存储的整型数值变量下一篇:根据物品GUID获取索引名>
Item_GetKeyName
根据物品GUID获取索引名

更新时间：2022-05-05 00:00:00
此函数根据物品的GUID获取索引名（KeyName）。

参考 KeyName Name

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为KeyName。

语法
Luacopy 复制
lualib:Item_GetKeyName(
    strPlayer,
    strItem
)
参数
strPlayer

string

 
此参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

返回值
string

 
获取成功则返回物品的索引名（KeyName）

获取失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取物品实体上存储的字符型变量下一篇:根据物品GUID获取名称>
Item_GetName
根据物品GUID获取名称

更新时间：2021-11-15 00:00:00
此函数根据物品的GUID获取名称（Name）。

参考 KeyName Name

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Name。

语法
Luacopy 复制
lualib:Item_GetName(
    strPlayer,
    strItem
)
参数
strPlayer

string

 
此参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

返回值
string

 
获取成功则返回物品的名称（Name）

获取失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据物品GUID获取索引名下一篇:根据物品GUID获取X坐标>
Item_GetPosX
根据物品GUID获取X坐标

更新时间：2021-11-15 00:00:00
此函数根据物品的GUID获取对应的X坐标。

参考 X Y

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为X。

语法
Luacopy 复制
lualib:Item_GetPosX(
    strMap,
    strItem
)
参数
strMap

string

 
物品所属地图的GUID

strItem

string

 
物品的GUID

返回值
int32

 
获取成功则返回对应物品的X坐标

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据物品GUID获取名称下一篇:根据物品GUID获取Y坐标>
Item_GetPosY
根据物品GUID获取Y坐标

更新时间：2021-11-15 00:00:00
此函数根据物品的GUID获取对应的Y坐标。

参考 X Y

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Y。

语法
Luacopy 复制
lualib:Item_GetPosY(
    strMap,
    strItem
)
参数
strMap

string

 
物品所属地图的GUID

strItem

string

 
物品的GUID

返回值
int32

 
获取成功则返回对应物品的Y坐标

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据物品GUID获取X坐标下一篇:向物品的主人通知物品自定义变量更新>
Item_NotifyCustomParam
向物品的主人通知物品自定义变量更新

更新时间：2021-11-15 00:00:00
此函数向物品的主人通知物品自定义变量更新。

该物品必须在玩家的包裹里。

参考 NotifyVar

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为NotifyVar。

语法
Luacopy 复制
lualib:Item_NotifyCustomParam(
    strPlayer,
    strItem,
    strKey
)
参数
strPlayer

string

 
此参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

strKey

string

 
变量名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据物品GUID获取Y坐标下一篇:在物品实体上存储整型数值变量>
Item_SetCustomVarInt
在物品实体上存储整型数值变量

更新时间：2021-11-15 00:00:00
此函数在物品实体上存储整型数值变量。

参考 SetInt

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetInt。

语法
Luacopy 复制
lualib:Item_SetCustomVarInt(
    strPlayer,
    strItem,
    strKey,
    iValue
)
参数
strPlayer

string

 
此参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

strKey

string

 
变量名

iValue

int32

 
变量值

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
<上一篇:向物品的主人通知物品自定义变量更新下一篇:在物品实体上存储字符型变量>
Item_SetCustomVarStr
在物品实体上存储字符型变量

更新时间：2021-11-15 00:00:00
此函数在物品实体上存储字符型变量。

参考 SetStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetStr。

语法
Luacopy 复制
lualib:Item_SetCustomVarStr(
    strPlayer,
    strItem,
    strKey,
    strValue
)
参数
strPlayer

string

 
此参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

strKey

string

 
变量名

strValue

string

 
变量值

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
<上一篇:在物品实体上存储整型数值变量
Monster_AddBuff
给怪物添加BUFF

更新时间：2021-11-15 00:00:00
此函数给怪物添加BUFF。

参考 AddBuff

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为AddBuff。

语法
Luacopy 复制
lualib:Monster_AddBuff(
    strMonster,
    strBuffKey,
    dwTimes
)
参数
strMonster

string

 
怪物的GUID

strBuffKey

string

 
BUFF的索引名（KeyName）

dwTimes

uint32

 
BUFF的持继时间

单位为秒（s）

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
下一篇:删除怪物BUFF>
Monster_DelBuff
删除怪物BUFF

更新时间：2021-11-15 00:00:00
此函数删除怪物BUFF。

参考 DelBuff

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为DelBuff。

语法
Luacopy 复制
lualib:Monster_DelBuff(
    strMonster,
    strBuffKey
)
参数
strMonster

string

 
怪物的GUID

strBuffKey

string

 
BUFF的索引名（KeyName）

若此参数的值为""，则代表删除所有BUFF。

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
<上一篇:给怪物添加BUFF下一篇:获取对象实体上存储的整型数值变量>
Monster_GetCustomVarInt
获取对象实体上存储的整型数值变量

更新时间：2021-11-15 00:00:00
此函数获取对象实体上存储的整型数值变量。

参考 GetInt

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为GetInt。

语法
Luacopy 复制
lualib:Monster_GetCustomVarInt(
    strMonster,
    strKey
)
参数
strMonster

string

 
怪物的GUID

strKey

string

 
变量名

返回值
int32

 
变量值

若变量不存在，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:删除怪物BUFF下一篇:获取对象实体上存储的字符型变量>
Monster_GetCustomVarStr
获取对象实体上存储的字符型变量

更新时间：2021-11-15 00:00:00
此函数获取对象实体上存储的字符型变量。

参考 GetStr

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为GetStr。

语法
Luacopy 复制
lualib:Monster_GetCustomVarStr(
    strMonster,
    strKey
)
参数
strMonster

string

 
怪物的GUID

strKey

string

 
变量名

返回值
string

 
变量值

若变量不存在，则返回""。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取对象实体上存储的整型数值变量下一篇:获取怪物的数值型属性值>
Monster_GetIntProp
获取怪物的数值型属性值

更新时间：2021-11-15 00:00:00
此函数获取怪物的数值型属性值。

caution_icon注意
此接口为早期接口（已过期），禁止使用且不再提供技术支持。

语法
Luacopy 复制
lualib:Monster_GetIntProp(
    strMonster,
    iAttrType
)
参数
strMonster

string

 
怪物的GUID

iAttrType

int32

 
属性类型（过期接口不再详述）

返回值
double

 
对应怪物的数值型属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取对象实体上存储的字符型变量下一篇:根据怪物GUID获取怪物的关键字索引>
Monster_GetKeyName
根据怪物GUID获取怪物的关键字索引

更新时间：2021-11-15 00:00:00
此函数根据怪物GUID获取怪物的关键字索引（KeyName）。

参考 KeyName Name

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为KeyName。

语法
Luacopy 复制
lualib:Monster_GetKeyName(
    strMonster
)
参数
strMonster

string

 
怪物的GUID

返回值
string

 
怪物的关键字索引（KeyName）

若指定怪物不存在，则返回""。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取怪物的数值型属性值下一篇:获取怪物当前地图的GUID>
Monster_GetMap
获取怪物当前地图的GUID

更新时间：2021-11-15 00:00:00
此函数获取怪物当前地图的GUID。

参考 MapGuid

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为MapGuid。

语法
Luacopy 复制
lualib:Monster_GetMap(
    strMonster
)
参数
strMonster

string

 
怪物的GUID

返回值
string

 
执行成功则返回怪物当前地图的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据怪物GUID获取怪物的关键字索引下一篇:根据怪物的GUID获取X坐标>
Monster_GetPosX
根据怪物的GUID获取X坐标

更新时间：2021-11-15 00:00:00
此函数根据怪物的GUID获取对应的X坐标。

参考 X Y

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为X。

语法
Luacopy 复制
lualib:Monster_GetPosX(
    strMonster
)
参数
strMonster

string

 
怪物的GUID

返回值
int32

 
怪物的X坐标

若怪物不存在，则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取怪物当前地图的GUID下一篇:根据怪物的GUID获取Y坐标>
Monster_GetPosY
根据怪物的GUID获取Y坐标

更新时间：2021-11-15 00:00:00
此函数根据怪物的GUID获取对应的Y坐标。

参考 X Y

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Y。

语法
Luacopy 复制
lualib:Monster_GetPosY(
    strMonster
)
参数
strMonster

string

 
怪物的GUID

返回值
int32

 
怪物的X坐标

若怪物不存在，则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据怪物的GUID获取X坐标下一篇:判断怪物是否拥有某个BUFF>
Monster_IsHasBuff
判断怪物是否拥有某个BUFF

更新时间：2021-11-15 00:00:00
此函数判断怪物是否拥有某个BUFF。

参考 HasBuff

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为HasBuff。

语法
Luacopy 复制
lualib:Monster_IsHasBuff(
    strMonster,
    wBuffID
)
参数
strMonster

string

 
怪物的GUID

wBuffID

uint16

 
BUFF的ID

返回值
bool

 
true怪物有指定BUFF

false怪物没有指定BUFF

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据怪物的GUID获取Y坐标下一篇:杀死怪物>
Monster_Kill
杀死怪物

更新时间：2021-11-15 00:00:00
此函数作用为杀死怪物。

参考 Kill

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Kill。

语法
Luacopy 复制
lualib:Monster_Kill(
    strMonster
)
参数
strMonster

string

 
怪物的GUID

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
<上一篇:判断怪物是否拥有某个BUFF下一篇:在对象实体上存储整型数值变量>
Monster_SetCustomVarInt
在对象实体上存储整型数值变量

更新时间：2021-11-15 00:00:00
此函数在对象实体上存储整型数值变量。

参考 SetInt

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetInt。

语法
Luacopy 复制
lualib:Monster_SetCustomVarInt(
    strMonster,
    strKey,
    iValue
)
参数
strMonster

string

 
怪物的GUID

strKey

string

 
变量名

iValue

int32

 
变量值

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
<上一篇:杀死怪物下一篇:在对象实体上存储字符型变量>
Monster_SetCustomVarStr
在对象实体上存储字符型变量

更新时间：2021-11-15 00:00:00
此函数在对象实体上存储字符型变量。

参考 SetStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetStr。

语法
Luacopy 复制
lualib:Monster_SetCustomVarStr(
    strMonster,
    strKey,
    strValue
)
参数
strMonster

string

 
怪物的GUID

strKey

string

 
变量名

strValue

string

 
变量值

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
<上一篇:在对象实体上存储整型数值变量下一篇:设置角色NPC面板的尺寸>
Monster_SetPanelSize
设置角色NPC面板的尺寸

更新时间：2021-11-15 00:00:00
此函数设置角色NPC面板的尺寸。

参考 SetPanelSize

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetPanelSize。

语法
Luacopy 复制
lualib:Monster_SetPanelSize(
    strMonster,
    wWidth,
    wHeight
)
参数
strMonster

string

 
怪物的GUID

wWidth

uint16

 
面板的宽度

wHeight

uint16

 
面板的高度

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
<上一篇:在对象实体上存储字符型变量下一篇:将该怪物设为自动行走怪>
Monster_SetSeeker
将该怪物设为自动行走怪

更新时间：2021-11-19 00:00:00
此函数将该怪物设为自动行走怪。

caution_icon注意
早期接口，不再提供技术支持。

语法
Luacopy 复制
lualib:Monster_SetSeeker(
    strMonster,
    tPath,
    byType,
    bForce
)
参数
strMonster

string

 
怪物的GUID

tPath

table

 
路径表（按X坐标，Y坐标顺序填写）

例如：{1, 1, 1, 3}表示第一步坐标为(1, 1)第二步坐标为(1, 3)。

byType

uint8

 
行走类型

0普通行走

1来回行走

bForce

bool

 
是否强制寻路

true强制寻路（不主动攻击也不回击）

false根据怪物类型决定

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
    local tPath = {119,131,120,132,121,133,122,134,123,135,124,136} --路径表
    lualib:Monster_SetSeeker("2ar8m0plr6841",tPath,1,true) --设置指定怪物来回行走并强制寻路
end
<上一篇:设置角色NPC面板的尺寸
GetRegionFreeRnd
获取地图区域中空坐标列表

更新时间：2021-11-15 00:00:00
此函数获取地图区域中空坐标列表，可指定随机返回空坐标的数量。

参考 GetRegionFreeEx

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetRegionFreeEx。

语法
Luacopy 复制
lualib:GetRegionFreeRnd(
    strMap,
    wX,
    wY,
    wRange,
    wLimit
)
参数
strMap

string

 
地图的GUID

wX

uint16

 
区域X坐标

wY

uint16

 
区域Y坐标

wRange

uint16

 
区域范围

wLimit

uint16

 
指定返回的坐标数量

如果满足条件的坐标不足指定数量，则返回实际数量的坐标。

返回值
table

 
区域内空格子列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local tGrids = lualib:GetRegionFreeRnd(strMap, wX, wY, wR, wLimit)
local x, y = tGrids[1].X, tGrids[1].Y
下一篇:获取地图区域中空坐标列表>
GetRegionFree
获取地图区域中空坐标列表

更新时间：2021-11-15 00:00:00
此函数获取地图区域中空坐标列表。

参考 GetRegionFreeEx

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetRegionFreeEx。

语法
Luacopy 复制
lualib:GetRegionFree(
    strMap,
    wX,
    wY,
    wRange
)
参数
strMap

string

 
地图的GUID

wX

uint16

 
区域X坐标

wY

uint16

 
区域Y坐标

wRange

uint16

 
区域范围

返回值
table

 
区域内空格子列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local tGrids = lualib:GetRegionFree(strMap, wX, wY, wR)
local x, y = tGrids[1].X, tGrids[1].Y
<上一篇:获取地图区域中空坐标列表下一篇:根据角色GUID获取角色当前地图的索引名>
MapKeyName
根据角色GUID获取角色当前地图的索引名

更新时间：2021-11-15 00:00:00
此函数根据角色GUID获取角色当前地图的索引名（KeyName）。

参考 KeyName

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为KeyName。

语法
Luacopy 复制
lualib:MapKeyName(
    strRole
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或NPC

返回值
string

 
执行成功则返回角色当前地图的索引名（KeyName）

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取地图区域中空坐标列表下一篇:获取存储在地图实体上的整型数值变量>
Map_GetCustomVarInt
获取存储在地图实体上的整型数值变量

更新时间：2021-11-15 00:00:00
此函数获取存储在地图实体上的整型数值变量。

参考 GetInt

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetInt。

语法
Luacopy 复制
lualib:Map_GetCustomVarInt(
    strMap,
    strKey
)
参数
strMap

string

 
地图的GUID

strKey

string

 
变量名

返回值
int32

 
变量值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据角色GUID获取角色当前地图的索引名下一篇:获取存储在地图实体上的字符型变量>
Map_GetCustomVarStr
获取存储在地图实体上的字符型变量

更新时间：2021-11-15 00:00:00
此函数获取存储在地图实体上的字符型变量。

参考 GetStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为GetStr。

语法
Luacopy 复制
lualib:Map_GetCustomVarStr(
    strMap,
    strKey
)
参数
strMap

string

 
地图的GUID

strKey

string

 
变量名

返回值
string

 
变量值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取存储在地图实体上的整型数值变量下一篇:获取地图上两点间的距离>
Map_GetDistance
获取地图上两点间的距离

更新时间：2021-11-15 00:00:00
此函数获取地图上两点间的距离。

参考 Distance

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Distance。

语法
Luacopy 复制
lualib:Map_GetDistance(
    wSourX,
    wSourY,
    wDestX,
    wDestY
)
参数
wSourX

uint16

 
源坐标X点

wSourY

uint16

 
源坐标Y点

wDestX

uint16

 
目标坐标X点

wDestY

uint16

 
目标坐标Y点

返回值
uint16

 
两点间距离

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取存储在地图实体上的字符型变量下一篇:获取地图的地图索引名>
Map_GetMapKeyName
获取地图的地图索引名

更新时间：2021-11-15 00:00:00
此函数获取地图的地图索引名（KeyName）。

参考 KeyName

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为KeyName。

语法
Luacopy 复制
lualib:Map_GetMapKeyName(
    strMap
)
参数
strMap

string

 
地图的GUID

返回值
string

 
执行成功则返回地图的地图索引名

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取地图上两点间的距离下一篇:获取地图的名称>
Map_GetMapName
获取地图的名称

更新时间：2021-11-15 00:00:00
此函数获取地图的名称（Name）。

参考 Name

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为Name。

语法
Luacopy 复制
lualib:Map_GetMapName(
    strMap
)
参数
strMap

string

 
地图的GUID

返回值
string

 
执行成功则返回地图的名称（Name）

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取地图的地图索引名下一篇:获取地图区域内的物品列表>
Map_GetRegionItems
获取地图区域内的物品列表

更新时间：2022-05-05 00:00:00
此函数获取地图区域内的物品列表，并返回GUID列表。

参考 Map_GetRegionItemsEx

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Map_GetRegionItemsEx。

语法
Luacopy 复制
lualib:Map_GetRegionItems(
    strMap,
    strItemKey,
    wX,
    wY,
    wRange
)
参数
strMap

string

 
地图的GUID

strItemKey

string

 
物品的索引名（KeyName）

若该参数为""，则匹配所有物品。

wX

uint16

 
X坐标

wY

uint16

 
Y坐标

wRange

uint16

 
范围

返回值
table

 
区域内物品的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取地图的名称下一篇:获取地图区域内的怪物列表>
Map_GetRegionMonsters
获取地图区域内的怪物列表

更新时间：2022-05-05 00:00:00
此函数获取地图区域内的怪物列表，并返回GUID列表。

参考 Map_GetRegionMonstersEx

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Map_GetRegionMonstersEx。

语法
Luacopy 复制
lualib:Map_GetRegionMonsters(
    strMap,
    strMonsterKey,
    wX,
    wY,
    wRange,
    bIgnoreDied,
    bIgnoreServant
)
参数
strMap

string

 
地图的GUID

strMonsterKey

string

 
怪物的索引名（KeyName）

若该参数为""，则匹配所有怪物。

wX

uint16

 
X坐标

wY

uint16

 
Y坐标

wRange

uint16

 
范围

bIgnoreDied

bool

 
是否忽略死亡角色

bIgnoreServant

bool

 
是否忽略宠物

返回值
table

 
区域内怪物的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--龙咆哮.lua

--获取技能施放者的坐标，并获取该坐标内范围为1的区域内的所有怪物列表。
function post_apply(actor, skillid)

--……省略部分代码

    local mapguid =lualib:MapGuid(actor)
    local x = lualib:X(actor)
    local y = lualib:Y(actor)
    local player_level = lualib:Level(actor)
    local skill_id = skillid
    local monster_tb1 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 1, true, true)

--……省略部分代码

end
<上一篇:获取地图区域内的物品列表下一篇:获取地图区域内的NPC列表>
Map_GetRegionNpcs
获取地图区域内的NPC列表

更新时间：2021-11-15 00:00:00
此函数获取地图区域内的NPC列表，并返回GUID列表。

参考 Map_GetRegionNpcsEx

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Map_GetRegionNpcsEx。

语法
Luacopy 复制
lualib:Map_GetRegionNpcs(
    strMap,
    wX,
    wY,
    wRange,
    strNpcKey
)
参数
strMap

string

 
地图的GUID

wX

uint16

 
X坐标

wY

uint16

 
Y坐标

wRange

uint16

 
范围

strNpcKey

string

 
NPC的索引名（KeyName）

若该参数为""，则匹配所有NPC。

返回值
table

 
区域内NPC的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取地图区域内的怪物列表下一篇:获取地图区域内的玩家列表>
Map_GetRegionPlayers
获取地图区域内的玩家列表

更新时间：2021-11-15 00:00:00
此函数获取地图区域内的玩家列表，并返回GUID列表。

参考 Map_GetRegionPlayersEx

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Map_GetRegionPlayersEx。

语法
Luacopy 复制
lualib:Map_GetRegionPlayers(
    strMap,
    wX,
    wY,
    wRange,
    bIgnoreDied
)
参数
strMap

string

 
地图的GUID

wX

uint16

 
X坐标

wY

uint16

 
Y坐标

wRange

uint16

 
范围

bIgnoreDied

bool

 
是否忽略死亡角色

返回值
table

 
区域内玩家的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--千年树魔.lua

--获取怪物的坐标，同时获取在怪物坐标范围为10内的所有玩家，并对这些玩家施放怪物技能。
local x = lualib:Monster_GetPosX(monster)
local y = lualib:Monster_GetPosY(monster)
local map = lualib:Monster_GetMap(monster)
if x == -1 or y == -1 or map == "" then return end
local players = lualib:Map_GetRegionPlayers(map, x, y, 10, true)
    if players ~= nil then
        for i = 1, #players, 1 do
        lualib:Monster_SpellTarget(monster, 10107, players[i])
    end
end
<上一篇:获取地图区域内的NPC列表下一篇:在地图实体上存储整型数值变量>
Map_SetCustomVarInt
在地图实体上存储整型数值变量

更新时间：2021-11-15 00:00:00
此函数在地图实体上存储整型数值变量。

参考 SetInt

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetInt。

语法
Luacopy 复制
lualib:Map_SetCustomVarInt(
    strMap,
    strKey,
    iValue
)
参数
strMap

string

 
地图的GUID

strKey

string

 
变量名

iValue

uint32

 
变量值

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
<上一篇:获取地图区域内的玩家列表下一篇:在地图实体上存储字符型变量>
Map_SetCustomVarStr
在地图实体上存储字符型变量

更新时间：2021-11-15 00:00:00
此函数在地图实体上存储字符型变量。

参考 SetStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetStr。

语法
Luacopy 复制
lualib:Map_SetCustomVarStr(
    strMap,
    strKey,
    strValue
)
参数
strMap

string

 
地图的GUID

strKey

string

 
变量名

strValue

string

 
变量值

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
<上一篇:在地图实体上存储整型数值变量下一篇:取消地图定时器>
Map_SetOffTimer
取消地图定时器

更新时间：2021-11-15 00:00:00
此函数取消地图定时器。

参考 DisableTimer

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为DisableTimer。

语法
Luacopy 复制
lualib:Map_SetOffTimer(
    map_guid,
    timer_id
)
参数
map_guid

string

 
地图的GUID

timer_id

uint32

 
定时器的ID

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
<上一篇:在地图实体上存储字符型变量下一篇:给地图添加定时器>
Map_SetOnTimer
给地图添加定时器

更新时间：2021-11-15 00:00:00
此函数给地图添加定时器。

参考 AddTimer

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为AddTimer。

语法
Luacopy 复制
lualib:Map_SetOnTimer(
    strMap,
    dwTimerID,
    dwTimes,
    dwCount
)
参数
strMap

string

 
地图的GUID

dwTimerID

uint32

 
定时器的ID

dwTimes

uint32

 
定时器的触发间隔

单位为毫秒（ms）

dwCount

uint32

 
定时器的触发次数

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
<上一篇:取消地图定时器
Npc_GetCustomVar
获取NPC实体上存储的字符型变量

更新时间：2021-11-15 00:00:00
此函数获取NPC实体上存储的字符型变量。

参考 GetStr

caution_icon注意
此接口已过期，禁止使用且不再提供技术支持。

此接口的代替接口为GetStr。

语法
Luacopy 复制
lualib:Npc_GetCustomVar(
    strNpc,
    strKey
)
参数
strNpc

string

 
NPC的GUID

strKey

string

 
变量名

返回值
string

 
变量值

若变量不存在，则返回""。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:获取NPC的索引名>
Npc_GetKeyName
获取NPC的索引名

更新时间：2021-11-15 00:00:00
此函数获取NPC的索引名（KeyName）。

参考 KeyName

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为KeyName。

语法
Luacopy 复制
lualib:Npc_GetKeyName(
    strNpc
)
参数
strNpc

string

 
NPC的GUID

返回值
string

 
NPC的索引名（KeyName）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取NPC实体上存储的字符型变量下一篇:根据NPC的GUID获取X坐标>
Npc_GetPosX
根据NPC的GUID获取X坐标

更新时间：2021-11-15 00:00:00
此函数根据NPC的GUID获取对应的X坐标。

参考 X Y

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为X。

语法
Luacopy 复制
lualib:Npc_GetPosX(
    strNpc
)
参数
strNpc

string

 
NPC的GUID

返回值
int32

 
NPC的X坐标

若NPC不存在，则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取NPC的索引名下一篇:根据NPC的GUID获取Y坐标>
Npc_GetPosY
根据NPC的GUID获取Y坐标

更新时间：2021-11-15 00:00:00
此函数根据NPC的GUID获取对应的Y坐标。

参考 X Y

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为Y。

语法
Luacopy 复制
lualib:Npc_GetPosY(
    strNpc
)
参数
strNpc

string

 
NPC的GUID

返回值
int32

 
NPC的Y坐标

若NPC不存在，则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据NPC的GUID获取X坐标下一篇:在NPC实体上存储字符型变量>
Npc_SetCustomVar
在NPC实体上存储字符型变量

更新时间：2021-11-15 00:00:00
此函数在NPC实体上存储字符型变量。

参考 SetStr

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetStr。

语法
Luacopy 复制
lualib:Npc_SetCustomVar(
    strNpc,
    strKey,
    strValue
)
参数
strNpc

string

 
NPC的GUID

strKey

string

 
变量名

strValue

string

 
变量值

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
<上一篇:根据NPC的GUID获取Y坐标下一篇:设置NPC面板的尺寸>
Npc_SetPanelSize
设置NPC面板的尺寸

更新时间：2021-11-15 00:00:00
此函数设置NPC面板的尺寸。

参考 SetPanelSize

caution_icon注意
此接口已过期，禁止使用。

此接口的代替接口为SetPanelSize。

语法
Luacopy 复制
lualib:Npc_SetPanelSize(
    strNpc,
    wWidth,
    wHeight
)
参数
strNpc

string

 
NPC的GUID

wWidth

uint16

 
面板的宽度

wHeight

uint16

 
面板的高度

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
<上一篇:在NPC实体上存储字符型变量
更新日志（2020）
您可以在此页面查看2020年服务端开发文档的更新日志。

更新内容包含对新增接口、对现存接口的参数或说明做调整、对现有功能存在问题进行修复的说明等。

更新日期	更新描述
2020-12-31	
新增以下接口的说明：
Servant_GetEnemyMode：获取单个宠物的遇敌模式
GetHeroStatus：获取英雄的状态
Player_GetOnlineTimeOfDay：获取玩家当天总在线时间
增加接口GetClientType获取的客户端类型：3D端游（类型数值为4）和3D手游（类型数值为5）
2020-12-24	
新增以下接口的说明：
Item_SetBindEx：根据物品GUID设置该物品是否绑定
ProgressBarStop：让玩家取消读取进度条
Player_IsDoingProgressBar：判断玩家是否在读条中
SetUseNewAttrCalcRule：设置是否使用新的BUFF的属性计算规则
2020-12-18	
新增以下接口的说明：
SetDirEx：设置角色方向（扩展）
Servant_SetEnemyMode：设置单个宠物的遇敌模式
新增以下回调函数的说明：
on_pre_invite_team：玩家邀请组队前触发
on_player_chat：玩家聊天时触发
回调函数pre_cancel_processing增加更多参数
新增以下触发器类型定义：
lua_trigger_pre_invite_team：玩家邀请组队前触发
lua_trigger_player_chat：玩家聊天时触发
角色属性类型定义页面上新增一列信息：是否需要手动配置通知到客户端
2020-12-11	
新增以下接口的说明：
GetEquipSuitCountEx：获取角色身上指定套装中装备数量（扩展）
SetSelfNotifyAttrs：配置需要通知到客户端的玩家属性
RemoveSelfNotifyAttrs：移除通知到客户端的玩家属性
新增以下回调函数的说明：
pre_cancel_processing：玩家被打断读条前触发
on_pre_harm_ex：被攻击者受到伤害即将损血或损蓝前回调
新增以下触发器类型定义：
lua_trigger_anticheat_hack：检测出玩家使用外挂时触发
lua_trigger_anticheat_timeout：外挂检测失败时触发
lua_trigger_role_pre_harm_ex：角色受到伤害时触发，返回固定伤害数值
lua_trigger_pre_cancel_processing：玩家被打断读条前触发
2020-11-26	
新增以下接口的说明：
Player_PickupAllByRadiusWithKeyName：玩家拾取指定的可捡物品
2020-11-19	
新增以下接口的说明：
PostURLEx：获取一个URL以post方式投递的数据
2020-11-16	
移除以下接口的说明(此功能需要新的物品出现包协议，老的iOS包不支持，此接口暂缓发布)：
SetItemColor：设置物品名称在场景中显示的颜色
2020-11-12	
新增以下接口的说明：
GetLinkageBySkillId：根据技能ID获取所属的技能链编号
GetLinkageBySkillKeyName：根据技能索引名获取所属的技能链编号
SetItemColor：设置物品名称在场景中显示的颜色
MoveItemToWarehouse：将背包中的物品移动到仓库或者高级仓库中
2020-11-05	
角色属性类型定义新增以下属性：
lua_role_ignore_mag_imm_pct：忽视目标魔法减免盾百分比
lua_role_ignore_phy_imm_pct：忽视目标物理减免盾百分比
2020-10-30	
新增以下接口的说明：
CalcDropsByMonsterKeyname：根据怪物索引名计算掉落物品
Map_GenDropItems：在地图上生成掉落物品
GetCampaignTime：获取活动的开始时间和结束时间
2020-10-22	
新增以下接口的说明：
Player_Chat：以指定玩家身份进行喊话
2020-10-16	
新增以下接口的说明：
Player_GetSkillCDEx：获取角色正在冷却中的技能CD时间
2020-09-24	
新增以下接口的说明：
IsBanItemByKeyname：根据物品索引名判断是否为地图禁止物品
SetInnerForceLevel：设置玩家内功等级
2020-09-18	
新增以下接口的说明：
TimeDiffEx：获取字符串时间的差值的绝对值
Item_NotifyUpdateEx：通知物品属性更新（扩展）
2020-09-10	
新增以下接口的说明：
CalcDropsWithFactor：根据掉落索引和掉落因子计算掉落物品
增加回调函数on_pre_get_attachment_from_mail参数send_time：邮件发送时间的时间戳
2020-09-03	
新增以下接口的说明：
Player_SetSkillCDEx：设置角色技能的永久CD时间
Player_GetSkillCD：获取角色技能CD时间
SetPlayerTopLevel：设置服务器开放等级上限
2020-08-28	
新增以下回调函数的说明：
on_servant_levelup：宠物升级时触发
on_pre_get_attachment_from_mail：玩家提取邮件附件前触发
新增以下触发器类型定义：
lua_trigger_servant_levelup：宠物升级时触发
lua_trigger_pre_get_attachment_from_mail：玩家提取邮件附件前触发
2020-08-20	
新增以下接口的说明：
GenDummyEx：生成假人（扩展）
2020-08-13	
新增以下接口的说明：
CalcDropsEx：根据掉落索引计算掉落物品（扩展）
2020-08-06	
开发文档网站v1.4，主要更新内容如下：
搜索功能增强和优化，支持多关键字检索和全文检索（语法和示例代码部分除外）
代码块复制按钮增加“复制成功”提示
页面布局和页面加载逻辑改善
2020-07-30	
新增以下接口的说明：
GetRolePropBeforeCalc：获取角色属性参与倍数计算前的值
2020-07-24	
新增以下接口的说明：
KickByIp：通过玩家IP地址踢出玩家
KickByHardwareCode：通过玩家硬件码踢出玩家
SetDedicatedDropChance：设置装备位独立爆率
新增英雄AI技能策略。
2020-07-20	
新增以下接口的说明：
SetServantPickListByType：宠物拾取列表中添加或删除某类型物品
BuffStack：获取角色指定BUFF的堆叠层数
Moba_CreateRoom：创建一个MOBA房间
Moba_EnterRoom：玩家进入一个MOBA房间
Moba_ExitRoom：使玩家离开MOBA房间
Moba_ForceStartGame：强制开启MOBA房间内的游戏
Moba_GetAllRoomList：获取所有的MOBA房间列表
Moba_GetCampStatus：获取MOBA房间内的阵营准备状态
Moba_GetPlayerStatus：获取MOBA房间内玩家准备状态
Moba_GetRoomStatus：获取MOBA房间状态
Moba_SetMemberReadyStatus：设置MOBA房间内玩家的准备状态
Moba_SetPlayerCamp：设置玩家阵营
新增以下回调函数的说明：
on_moba_create_room：创建MOBA房间触发
on_moba_enter_room：进入MOBA房间触发
on_moba_exit_room：离开MOBA房间触发
on_moba_player_change_camp：玩家改变阵营触发
on_moba_player_change_ready：玩家改变准备状态触发
on_account_verified：用户完成实名认证时的触发
新增道具主类型和子类型的定义。
2020-07-10	
新增以下接口的说明：
ShowRoleHPRefAndMPRefWithSkillID：向周围通知角色血量和蓝量的变化
ShowRoleHPRefExWithSkillID：向周围通知角色血量的变化
IsAccountVerified：获取账号实名认证的状态
2020-07-01	
新增以下接口的说明：
GetAllOnlinePlayerNames：获取当前服务器所有在线玩家列表
2020-06-30	
新增成就触发类型定义。
2020-06-29	
新增以下接口的说明：
IsServerCanCreateRole：获取全服是否可以创建角色
ServerCreateRoleSwitch：控制全服是否可以创建角色
AddBuffWithAttrs：给角色添加BUFF
SetCheckModePct：设置严格模式下误差百分比
ShowRoleHPRefAndMPRef：向周围通知角色血量和蓝量的变化
UserId2Guid：根据玩家账号ID获取当前角色GUID
角色属性类型定义新增属性lua_role_only_show_mp，是否显示魔法蓝条。
2020-06-12	
新增以下接口的说明：
Buff_DataRow：获取Buff的配置表结构
ClearTopList：清除排行榜
2020-05-28	
新增以下接口的说明：
IO_DeleteDirEx：递归删除目录及其子目录与文件
OnlineTimeWithoutOfflineTime：获取玩家本次登录在线时间
OnlineTimeWithoutOfflineTimeEx：获取玩家本次登录的当天在线时间
GetMonsterCount：获取怪物数量
AddPersistentDetectableRole：将角色添加到怪物的永久侦测列表
SetMobaRoomHost：设置MOBA房间房主
2020-05-22	
新增以下接口的说明：
SetDayIntEx：在对象实体上设置数值型天变量（扩展）
SetDayStrEx：在对象实体上设置字符型天变量（扩展）
SetWeekIntEx：在对象实体上设置数值型周变量（扩展）
SetWeekStrEx：在对象实体上设置字符型周变量（扩展）
SetDummyStandalone：设置是否允许假人独立存在
新增以下回调函数的说明：
on_calc_drop_pct：计算掉率触发
2020-05-09	
新增接口快速查询表，便于页面内搜索快速定位。

2020-04-30	
角色属性类型定义新增属性lua_role_can_be_through，是否可被穿透。

2020-04-28	
服务端开发文档上线，取代之前的旧版本和CHM帮助文档。其内容主要分为“接口说明”，“回调函数说明”和“附加说明”三大区块。
<上一篇:更新日志（2021）
更新日志（2021）
您可以在此页面查看2021年服务端开发文档的更新日志。

更新内容包含对新增接口、对现存接口的参数或说明做调整、对现有功能存在问题进行修复的说明等。

更新日期	更新描述
2021-12-24	
新增以下接口说明：
GetDummyLord：根据假人的GUID获取其主人的GUID
RelivePoint：获取玩家离开复活区前所在的坐标点
2021-12-17	
新增以下回调函数：
on_add_title：角色添加称号时回调
on_remove_title：角色删除称号时回调
新增以下触发器类型定义：
lua_trigger_add_title：角色添加称号时触发
lua_trigger_remove_title：角色删除称号时触发
增加接口Id2KeyName参数type的类型：称号
增加接口KeyName2Name参数type的类型：称号
增加接口KeyName2Id参数type的类型：称号
2021-12-10	
新增以下接口说明：
SubHp：扣除角色的生命值（HP值）
新增以下日志类型定义：
lua_log_action_player_yidun_pc_hack_rpt：端游易盾反外挂检测出异常
lua_log_action_player_yidun_pc_heartbeat_rpt：端游易盾反外挂心跳超时
lua_log_action_set_forbid_login：封禁玩家
lua_log_action_dis_forbid_login：解除封禁
2021-12-06	
新增以下脚本类型回调函数：
check_repel_target_ex：冲撞和击退状态目标检查回调（扩展）
2021-11-30	
新增以下接口说明：
BaoKuIsInited：神兔宝库是否已完成初始化
SetWeekIntEx2：在对象实体上设置数值型周变量（扩展2）
SetWeekStrEx2：在对象实体上设置字符型周变量（扩展2）
GetMergeZoneRenameData：获取合区的改名数据
CleanMergeZoneRenameData：清除合区的改名数据
新增以下回调函数：
on_family_relation_change：行会关系发生变化时回调
新增以下触发器类型定义：
lua_trigger_family_relation_change：行会关系发生变化时触发
2021-11-19	
新增以下接口说明：
Map_FindShortestPath：获取地图上两点间的最短移动路径
更新以下接口说明：
GenDummy：生成假人
GenDummyEx：生成假人（扩展）
2021-11-12	
新增以下接口说明：
Title_DataRow：根据称号的索引名获取该称号的配置表结构
Map_DataRow：根据地图索引名获取该地图的配置表结构
新增以下日志类型定义：
lua_log_action_player_item_split：物品拆分
新增Title模板属性定义页面
新增Map模板属性定义页面
新增历史接口说明
2021-10-29	
新增以下接口说明：
Role_SetLuckWithDef：设置指定角色是否开启幸运影响防御的功能
Role_GetLuckWithDef：获取指定角色是否开启幸运影响防御的功能
回调函数on_pre_p2p_trade增加更多参数
2021-10-25	
新增以下回调函数：
on_yidun_pc_heartbeat_rpt：易盾端游反外挂心跳超时时回调
新增以下触发器类型定义：
lua_trigger_yidun_pc_heartbeat_rpt：易盾端游反外挂心跳超时时回调
2021-10-19	
新增以下回调函数：
on_family_ntf_msg：行会事件给客户端发送消息时回调
on_yidun_pc_hack_rpt：易盾端游反外挂检测出异常时回调
新增以下触发器类型定义：
lua_trigger_yidun_pc_hack_rpt：易盾端游反外挂检测出异常时触发
lua_trigger_family_ntf_msg：行会事件给客户端发送消息时触发
新增角色属性类型定义索引为256至265的角色属性
2021-09-29	
新增以下接口说明：
Monster_Gen_DataRow_By_Monster：根据怪物的索引名获取怪物刷新表结构
Monster_Gen_DataRow_By_Map：根据地图的索引名获取怪物刷新表结构
2021-09-24	
新增以下回调函数：
on_post_mining_drop：角色挖矿获得物品时回调
on_pre_mining_drop：角色挖矿获得物品前回调
新增以下触发器类型定义：
lua_trigger_on_mining_drop：角色挖矿获得物品时触发
lua_trigger_pre_mining_drop：角色挖矿获得物品前触发
新增日志类型定义页面
2021-09-18	
新增以下接口说明：
Player_ChangeNameEx：修改玩家角色名（扩展）
角色属性类型定义新增以下属性：
lua_role_ignore_phy_def：忽视目标物理防御常数
lua_role_ignore_phy_def_pct：忽视目标物理防御百分比
lua_role_ignore_mag_def：忽视目标魔法防御常数
lua_role_ignore_mag_def_pct：忽视目标魔法防御常数
2021-09-10	
新增以下接口说明：
SetAttrLimit：设置角色全局属性的上/下限
新增以下回调函数：
on_hero_ntf_msg：英雄事件给客户端发送消息时回调
新增以下触发器类型定义：
lua_trigger_hero_ntf_msg：英雄事件给客户端发送消息时触发
角色属性类型定义新增以下属性：
lua_role_extra_proficiency_inc：技能的额外熟练度增量
将积分、经验和金币相关脚本接口中数量参数的数据类型修改为double，相关脚本接口如下：
AddGold：给角色添加非绑定金币
AddBindGold：给角色添加绑定金币
SubGold：扣除角色非绑定金币
SubBindGold：扣除角色绑定金币
Player_AddGold：给角色添加金币
Player_SubGold：扣除角色金币
Player_IsGoldEnough：判断角色的金币数量是否足够
AddExp：给角色添加经验
SubExp：扣除角色经验
Player_AddExp：给角色添加经验
Player_SubExp：扣除角色经验
Player_AddInnerForceExp：添加角色内功经验
Player_SubInnerForceExp：扣除角色内功经验
AddIntegral：给角色添加积分
SubIntegral：扣除角色积分
Player_AddIntegral：给角色添加积分
Player_SubIntegral：扣除角色积分
Player_IsIntegralEnough：判断角色的积分数量是否足够
2021-09-06	
新增以下回调函数：
on_buff_pre_harm：角色触发BUFF造成伤害前回调
on_post_ride：玩家上马后回调
on_post_unride：玩家下马后回调
on_shentubaoku_cancel_sell：神兔宝库下架装备时回调
on_shentubaoku_pre_sell_item：神兔宝库上架物品前回调
on_shentubaoku_buy：玩家在神兔宝库购买东西时回调
新增以下触发器类型定义：
lua_trigger_buff_pre_harm：角色触发BUFF造成伤害前触发
lua_trigger_post_ride：玩家上马后触发
lua_trigger_post_unride：玩家下马后触发
lua_trigger_shentubaoku_cancel_sell：神兔宝库下架装备时触发
lua_trigger_shentubaoku_buy：玩家在神兔宝库购买物品时触发
lua_trigger_shentubaoku_pre_sell_item：神兔宝库上架物品前触发
2021-08-27	
新增以下接口说明：
Monster_Gen_DataRow：获取怪物的刷新表结构
Quest_GetQuestInfo：根据任务ID获取任务信息
GetDBNumMergeType：获取数据库变量合区类型
新增怪物刷新表属性定义页面
2021-08-23	
新增以下接口说明：
Role_SetSkillLinkageDamageType：设置角色技能链对应的伤害类型表
Role_GetSkillLinkageDamageType：获取角色技能链对应的伤害类型表
增加回调函数on_post_drop参数item_guid：掉落物品的GUID列表
增加回调函数on_pre_player_relive参数skill：自定义将要被复活的逻辑
2021-08-13	
新增以下接口说明：
CanPlayerMapMoveXY：判断玩家能否跳转到指定的坐标范围内
脚本类型回调函数find_target增加参数target_x和target_y
2021-08-06	
新增以下回调函数：
on_pre_add_buff： 角色添加BUFF前回调
on_servant_state_change： 宠物状态改变时回调
新增以下触发器类型定义：
lua_trigger_on_pre_add_buff：角色添加BUFF前触发
lua_trigger_servant_state_change：宠物状态改变时触发
新增角色属性类型定义索引为239至250的角色属性
2021-07-30	
新增以下接口的说明：
Item2JsonEx：生成物品的JSON信息（扩展）
新增角色属性类型定义索引为227至238的角色属性
2021-07-23	
新增以下接口的说明：
AddBuffWithAttrsLimit：给角色添加持续时间不超过最大存在时限的BUFF
新增以下回调函数：
on_yidun_heartbeat_rpt： 易盾反外挂心跳超时时回调
on_yidun_hack_rpt： 易盾反外挂检测出异常时的回调
新增以下触发器类型定义：
lua_trigger_yidun_heartbeat_rpt：易盾反外挂心跳超时时触发
lua_trigger_yidun_hack_rpt：易盾反外挂检测出异常时触发
角色属性类型定义新增以下属性：
lua_role_ignore_mag_miss：忽视目标魔法闪避
2021-07-19	
新增以下接口的说明：
Map_GetAllMoveableGrid：获取指定地图上所有的可移动点
DelUnmatchedSkillEx：删除玩家非本职业技能（扩展）
Monster_ForceSpellTarget：让怪物对目标角色强制施放技能
增加回调函数on_pre_drop_one参数index：掉落索引
2021-07-13	
新增以下接口的说明：
SetServantNotPickList：设置宠物禁止拾取的物品列表
GetEngineType：获取引擎类型
增加回调函数on_pre_shop_sell_ex参数item_guid：物品的GUID，同时增加当返回的金币数量为负数时则阻止出售的逻辑
2021-07-06	
新增以下接口的说明：
Player_SetGhostEx：设置玩家是否进入幽灵模式（扩展）
新增以下回调函数：
on_item_attr_zero_ex：物品属性为0时回调（扩展）
on_pre_shop_sell_ex：出售物品给NPC商店前回调（扩展）
新增以下触发器类型定义：
lua_trigger_item_attr_zero_ex：物品属性为0时触发
lua_trigger_pre_shop_sell_ex：出售物品给NPC商店前触发
2021-06-28	
新增以下接口的说明：
AccountNameEx： 获取玩家的账号名（扩展）
新增以下回调函数：
on_item_dur_notify： 角色装备耐久值变化并通知客户端时回调
回调函数on_update_currency增加更多参数
接口IsAccountVerified回调的result参数获取的结果中新增accounttype字段
新增以下触发器类型定义：
lua_trigger_item_dur_notify：角色装备耐久值变化并通知客户端时触发
2021-06-18	
新增以下接口的说明：
IsFamilyAllyByGuid：根据行会的GUID判断是否为联盟行会
IsFamilyAllyByName：根据行会名判断是否为联盟行会
Player_SetForbidChannelTalk：禁止玩家在某个频道发言
Player_DisableForbidChannelTalk：取消玩家在某个频道的禁言
新增以下回调函数：
on_update_currency：通用货币增加/减少时回调
新增以下触发器类型定义：
lua_trigger_update_currency：通用货币增加/减少时触发
角色属性类型定义新增以下属性：
lua_role_ignore_ref：忽视目标反射伤害数值
lua_role_ignore_ref_pct：忽视目标反射伤害百分比
2021-06-11	
新增以下接口的说明：
GetAllMapGuid：获取所有地图的GUID
2021-06-04	
新增以下回调函数：
on_pre_restore：目标回血前回调
新增以下触发器类型定义：
lua_trigger_pre_restore：目标回血前触发
2021-05-28	
新增以下接口的说明：
HasScheduled：判断服务器是否有计划任务
SetDBDayInt：在数据库上设置数值型天变量
GetDBDayInt：获取数据库上设置的数值型天变量
SetDBDayStr：在数据库上设置字符型天变量
GetDBDayStr：获取数据库上设置的字符型天变量
增加回调函数on_family_member_ntf参数operator_guid：操作者的GUID
新增以下脚本类型回调函数：
on_buff_add：添加BUFF时回调
on_buff_remove：删除BUFF时回调
2021-05-14	
新增以下接口的说明：
AddFamilyMsg：添加行会消息
AddAdvWarehouseSite：增加高级仓库的格子数
增加回调函数on_family_member_ntf参数player_name：玩家的名字
2021-04-30	
新增以下接口的说明：
GetFamilyInfo：根据行会名称获取行会详细信息
2021-04-15	
增加回调函数on_pre_harm和on_pre_harm_ex参数lucky_type：幸运的类型
2021-04-09	
新增以下接口的说明：
SetCustomEquipSites：为自定义装备子类型设置多个自定义装备位
2021-04-02	
新增以下接口的说明：
GetBuffWithAttrs：获取角色BUFF的实例属性拓展值列表
Player_IsForbiddenChat：根据玩家名字判断玩家是否被禁言
增加回调函数on_player_chat参数target_guid：目标玩家角色的GUID
2021-03-26	
新增以下接口的说明：
Campaign_DataRow：获取活动的配置表结构
SetItemColor：设置物品名称在场景中显示的颜色
SetUseMonsterSpellTrigger：设置是否开启怪物释放技能触发
新增以下回调函数的说明：
on_monster_spell：怪物释放技能时回调
新增以下触发器类型定义：
lua_trigger_monster_spell：怪物释放技能时触发
新增Campaign模板属性定义页面
2021-03-19	
新增以下接口的说明：
Map_GenDropItemsEx：在地图上生成掉落物品（扩展）
Json2ItemEx2：生成物品的实体（扩展2）
2021-03-12	
新增以下接口的说明：
SetBuffTime：设置指定BUFF的剩余时间
Player_PickupAllByRadiusWithKeyNameEx：玩家拾取指定的可捡物品（扩展）
2021-03-05	
新增以下接口的说明：
Player_GetCreateTime：根据玩家的GUID获取角色的创建时间
新增Monster模板属性定义页面
新增Item模板属性定义页面
新增Hero模板属性定义页面
新增InnerForce模板属性定义页面
2021-02-26	
新增以下接口的说明：
Skill_DataRow：获取技能的配置表结构
Map_GetDgnLeftTime：获取副本的剩余时间
Map_PlayerPKDropItemFromJson：模拟玩家PK掉落并根据JSON字符串生成物品
新增Skill模板属性定义页面
2021-02-01	
新增以下接口的说明：
Item_GetAllLuckCurse：根据物品GUID取得该物品的幸运诅咒总值
新增以下回调函数的说明：
on_equip_distinguish_sites：玩家穿戴装备需要区别装备位时的触发
2021-01-21	
新增以下接口的说明：
AddBuffWithAttrsEx：给角色添加BUFF（扩展）
2021-01-14	
新增以下接口的说明：
Player_MapMoveXYEx：让玩家跳转到指定地图指定坐标范围内的随机点
Player_GetBeauty：获取玩家的魅力值
Player_SetBeauty：设置玩家的魅力值
<上一篇:更新日志（2022）下一篇:更新日志（2020）>
更新日志（2022）
您可以在此页面查看2021年服务端开发文档的更新日志。

更新内容包含对新增接口、对现存接口的参数或说明做调整、对现有功能存在问题进行修复的说明等。

更新日期	更新描述
2022-12-30	
新增以下接口说明：
DoRepelWithSkill：根据技能表配置直接释放技能击退效果
2022-12-16	
新增以下回调函数：
on_item_attr_notify：物品属性变化并通知客户端时回调
新增以下触发器类型定义：
lua_trigger_item_attr_notify：物品属性变化并通知客户端时触发
2022-12-09	
新增以下接口说明：
Player_GetDlqGroupID：获取玩家当前登录的登录器分组ID
Player_GetGameGroupID：获取玩家当前登录的游戏分组ID
Player_GetSubPackageID：获取玩家当前登录游戏的子包ID
2022-11-25	
新增以下回调函数：
on_pre_add_family：玩家加入行会前回调
新增以下触发器类型定义：
lua_trigger_pre_add_family：玩家加入行会前触发
2022-11-18	
新增以下接口说明：
StallSetBuyList：设置假人摆摊时的收购列表
2022-11-11	
新增以下回调函数：
on_pre_jump_map：角色跳转地图前回调
新增以下触发器类型定义：
lua_trigger_pre_jump_map：角色跳转地图前触发
2022-11-04	
新增以下接口说明：
IO_TextFileFuzzyCheckLine：检查文本文件是否包含指定文本内容
更新以下接口说明：
Map_CreateDgn：创建副本地图
2022-10-27	
更新以下接口说明：
Map_GetRegionPlayersEx：获取地图区域内的玩家列表
2022-10-21	
新增以下接口说明：
GetAllNotInGamePlayerName：获取服务器上所有不在线玩家的名字
Team_GetMemberList：根据队伍的GUID获取所有队员的GUID
更新以下接口说明：
Player_GetDgnByTicket：获取副本地图的GUID
增加回调函数on_join_team参数team_guid：队伍的GUID
增加回调函数on_leave_team参数team_guid：队伍的GUID
2022-10-14	
新增以下接口说明：
TeamChangeLeader：组队移交队长
2022-09-29	
更新以下接口说明：
Player_ChangeName：修改玩家角色名
Player_ChangeNameEx：修改玩家角色名（扩展）
2022-09-23	
新增以下接口说明：
Map_SetDgnLeftTime：设置副本的剩余存在时间
更新以下接口说明：
OpenWarehouse：打开玩家仓库
OpenWarehouseAdv：打开玩家高级仓库
2022-09-16	
新增以下接口说明：
Monster_AddTargetHate：增加怪物的单个目标仇值
Monster_SubTargetHate：减少怪物的单个目标仇恨值
增加接口Player_Chat对英雄和假人的支持
2022-09-09	
增加回调函数on_summon参数strMonster：宠物的GUID
2022-09-02	
新增以下回调函数：
on_pre_modify_item_dur：角色装备耐久值变化前回调
新增以下触发器类型定义：
lua_trigger_pre_modify_item_dur：角色装备耐久值变化前触发
2022-08-26	
新增以下接口说明：
SetFamilyListRelation：批量设置行会列表中的各个行会的关系
2022-08-19	
新增以下接口说明：
GenRandomName：生成一个随机名字
增加回调函数on_pre_un_equip参数source：触发来源
2022-08-12	
新增以下接口说明：
Player_MapMoveNearXY：让玩家跳转到指定地图指定坐标点附近
2022-08-05	
增加接口Player_Relive对假人的支持
2022-07-29	
新增以下接口说明：
Monster_SpellGrid：怪物对目标逻辑格释放技能
新增以下回调函数：
on_client_version_old：客户端版本过低时回调
新增以下触发器类型定义：
lua_trigger_client_version_old：客户端版本过低时触发
2022-07-22	
新增以下接口说明：
SetItemDropTypeWithHost：设置物品的掉落类型和归属
2022-07-15	
新增以下回调函数：
on_submit_not_allowed_form：提交未被允许的表单时回调
新增以下触发器类型定义：
lua_trigger_submit_not_allowed_form：提交未被允许的表单时触发
2022-07-08	
新增以下接口说明：
GetDummyList：获取玩家的假人列表
2022-07-01	
新增以下接口说明：
Map_ClearChannels：清理地图指定坐标范围中的通道技能
2022-06-23	
新增以下回调函数：
on_pre_restore_mp：目标回蓝前回调
on_shentubaoku_pre_sell_role_ex：神兔宝库上架角色前回调（扩展）
新增以下触发器类型定义：
lua_trigger_pre_restore_mp：目标回蓝前触发
lua_trigger_shentubaoku_pre_sell_role_ex：神兔宝库上架角色前触发
2022-06-16	
增加以下接口对行会的支持：
SetDayInt：在对象实体上设置数值型天变量
SetDayIntEx：在对象实体上设置数值型天变量（扩展）
GetDayInt：获取对象实体上设置的数值型天变量
SetDayStr：在对象实体上设置字符型天变量
SetDayStrEx：在对象实体上设置字符型天变量（扩展）
GetDayStr：获取对象实体上设置的字符型天变量
SetWeekInt：在对象实体上设置数值型周变量
SetWeekIntEx：在对象实体上设置数值型周变量（扩展）
SetWeekIntEx2：在对象实体上设置数值型周变量（扩展2）
GetWeekInt：获取对象实体上设置的数值型周变量
SetWeekStr：在对象实体上设置字符型周变量
SetWeekStrEx：在对象实体上设置字符型周变量（扩展）
SetWeekStrEx2：在对象实体上设置字符型周变量（扩展2）
GetWeekStr：获取对象实体上设置的字符型周变量
增加接口DelSkill对怪物的支持
2022-06-09	
新增以下接口说明：
SysMsg_SendAllPlayerScrollMsg：对所有玩家发送滚动消息
新增以下回调函数：
on_pre_market_delegate_buy：玩家在寄售行发布收购之前回调
新增以下触发器类型定义：
lua_trigger_pre_market_delegate_buy：玩家在寄售行发布收购之前触发
2022-05-27	
新增以下回调函数：
on_target_data_migrate_success：目标区跨服数据迁移成功时回调
新增以下触发器类型定义：
lua_trigger_target_data_migrate_success：目标区跨服数据迁移成功时触发
2022-05-20	
新增以下接口说明：
Role_SetGhost：设置角色是否进入幽灵模式
更新以下接口说明：
Player_SetGhostEx：设置玩家是否进入幽灵模式（扩展）
2022-04-29	
新增以下接口说明：
SetInnerForce：设置角色内功值
更新以下接口说明：
IsInRegion：判断坐标是否在指定区域中
2022-04-22	
新增以下接口说明：
AddBuffWithParams：根据填写的BUFF参数类型添加BUFF
新增以下回调函数：
on_shentubaoku_pre_sell_role：神兔宝库上架角色前回调
新增以下触发器类型定义：
lua_trigger_shentubaoku_pre_sell_role：神兔宝库上架角色前触发
更新以下接口说明：
SetItemColor：设置物品名称在场景中显示的颜色
2022-03-25	
新增错误码类型定义页面
2022-03-18	
新增以下接口说明：
GetPlayerStallBuyList：获取玩家摆摊时的收购物品列表
GetPlayerStallSellList：获取玩家摆摊时的出售物品列表
Json2ItemWithSiteType：根据物品的JSON信息生成物品的实体
GetDummyNum：获取玩家的假人数量
2022-03-11	
删除以下说明中部分字段（括号内为删除的字段名称）：
BUFF模板属性定义（Tips）
Skill模板属性定义（Tips、BegSoundID、ProSoundID和EndSoundID）
Monster模板属性定义（StandSound、AttackSound、DamageSound和DieSound）
增加回调函数on_quest_award参数quest_id：任务ID
2022-03-04	
更新以下接口说明：
AddBuff2：给角色添加可指定技能的BUFF
GetBuffAtt1：获取BUFF的Att1属性值
GetBuffList：获取指定角色的BUFF列表
2022-02-25	
新增以下接口说明：
Map_RefreshMonster：根据怪物刷新表在地图上刷怪
新增以下回调函数：
on_pre_map_refresh_monster：在地图执行刷怪操作前回调
新增以下触发器类型定义：
lua_trigger_pre_map_refresh_monster：在地图执行刷怪操作前触发
2022-02-18	
新增以下接口说明：
AddHp：增加角色的生命值（HP值）
增加回调函数on_equip_distinguish_sites参数dest_site：要穿戴装备的目标位置
2022-02-11	
新增以下接口说明：
SetHeroSkillSwitch：设置是否开启英雄的指定技能
2022-01-27	
新增以下回调函数：
on_pre_family_destroy：行会解散前回调
新增以下触发器类型定义：
lua_trigger_pre_family_destroy：行会解散前触发
2022-01-24	
新增以下接口说明：
AddBuffWithAttrsEx2：给角色添加BUFF（扩展2）
接口SysMsg_SendBroadcastColorByClientType增加3D客户端相关参数
2022-01-14	
新增以下接口说明：
Player_JoinFamily：玩家发起加入行会请求
Player_LeaveFamily：玩家发起离开行会请求
Player_PickupAllByRadiusWithCallback：玩家根据回调函数拾取指定的可捡物品
2022-01-07	
新增以下接口说明：
SysMsg_SendScrollMsg：对指定角色发送滚动消息
增加接口on_buff_pre_harm参数strAttacker的类型：攻击者的GUID
2022-01-04	
新增以下回调函数：
on_pre_item_move：物品移动前回调
新增以下触发器类型定义：
lua_trigger_pre_item_move：物品移动前触发
<上一篇:更新日志（2023）下一篇:更新日志（2021）>
更新日志（2023）
您可以在此页面查看2023年服务端开发文档的更新日志。

我们将持续更新API和说明文档，更新内容包含对新增接口、对现存接口的参数或说明做调整、对现有功能存在问题进行修复的说明等。

更新日期	更新描述
2023-11-27	
新增以下回调函数：
on_hero_load：英雄被召唤时回调
新增以下触发器类型定义：
lua_trigger_on_hero_load：召唤英雄时触发
2023-11-13	
新增以下接口说明：
Hero_SetInvDetect：设置英雄的反隐侦测类型
Hero_SetInvDetectRange：设置英雄的反隐侦测范围
2023-11-06	
新增以下接口说明：
Role_AddSkillChannel：对目标添加通道技能
2023-10-23	
新增以下接口说明：
GetInnerForce：获取角色内功值
GetBuffInterval：取角色BUFF触发时间间隔
2023-10-16	
新增以下回调函数：
on_pre_switch_skill：角色开关技能前回调
2023-10-08	
增加回调函数on_pre_harm参数isBreakDef：是否破防
增加回调函数on_pre_harm_ex参数isBreakDef：是否破防
2023-09-22	
新增以下接口说明：
Player_SpellTarget2：玩家对目标角色释放技能（新）
2023-09-11	
增加回调函数on_pre_modify_item_dur参数old_dur：物品的当前耐久度
2023-08-18	
增加回调函数on_calc_hit参数is_hit：引擎计算的是否命中
2023-08-11	
增加接口Player_SetGhostEx对假人的支持
更新接口SetCastleTempFamily的说明
更新回调函数on_client_version_old对应的最小客户端版本号
2023-07-07	
新增以下接口说明：
GetTopList：获取指定类型的排行榜数据
2023-05-26	
新增以下接口说明：
Turn：角色转向
Role_IsAlive：判断角色是否存活
HeroGetMaster：获取英雄主人的GUID
2023-05-19	
新增以下接口说明：
GetPointByDir：根据起点获取指定方向和距离的逻辑格点
GetDirByPoint：根据起点和终点获取两点所在线段的方向
GetNegDir：根据指定方向获取其相反方向
GetRoleBackPosition：获取角色背后指定距离的逻辑格点坐标
IsRoleInSafeRegion：判断指定角色是否在安全区内
新增以下回调函数：
on_monster_destory：怪物被清理时回调
新增以下触发器类型定义：
lua_trigger_monster_destroy：怪物被清理时触发
2023-04-27	
新增以下接口说明：
SetFamilyDefalutTitleName：设置行会默认封号的名称
2023-03-31	
新增以下接口说明：
SetAgentInt：设置代理级游戏整型变量
GetAgentInt：获取代理级游戏整型变量
SetAgentStr：设置代理级游戏字符串变量
GetAgentStr：获取代理级游戏字符串变量
AddAgentInt：增加代理级游戏整型变量值
SubAgentInt：减少代理级游戏整型变量值
DelAgentInt：删除代理级游戏整型变量
DelAgentStr：删除代理级游戏字符串变量
2023-03-17	
新增以下接口说明：
GetTotalBillInMoney：获取玩家在该代理商名下所有的区服的充值总金额
新增以下回调函数：
on_change_servant_mode：玩家改变宠物行动状态时回调
新增以下触发器类型定义：
lua_trigger_change_servant_mode：玩家改变宠物行动状态时触发
增加回调函数on_pre_market_delegate_sell参数item_guid：寄售物品的GUID
增加回调函数on_shentubaoku_buy参数item_guid：购买的物品的GUID
2023-03-03	
新增以下接口说明：
Servant_IsSummon：判断宠物是否为玩家召唤的宠物
Player_Taming：玩家捕捉怪物作为宠物
Player_MapMoveXYWithBuffs：让玩家跳转到地图指定坐标并设置对应的BUFF
<上一篇:更新日志（2024）下一篇:更新日志（2022）>
更新日志（2024）
您可以在此页面查看本年度服务端开发文档的更新日志。

我们将持续更新API和说明文档，更新内容包含对新增接口、对现存接口的参数或说明做调整、对现有功能存在问题进行修复的说明等。

更新日期	更新描述
2024-12-25	
新增以下接口说明：
IsFamilyEnemyByName：根据名字判断公会1与公会2是否为敌对
新增以下回调函数：
on_kill：杀死角色时回调
2024-12-11	
新增以下接口说明：
Player_DeleteEmptyMails：删除玩家空邮件
2024-12-06	
新增以下回调函数：
on_npc_buy：玩家在NPC购买之后回调
2024-10-25	
新增以下回调函数：
pre_leave_team：玩家离队前回调
2024-10-18	
新增以下接口说明：
Map_RelivePlayer：在指定地图与坐标范围内复活玩家
Monster_SetDropOwner：设置怪物掉落归属
2024-09-27	
新增以下接口说明：
Npc_DataRow：根据Npc的KeyName取得该Npc的配置表结构
2024-09-13	
BUFF模板属性新增属性：Tips（BUFFTIPS），具体请参见BUFF模板属性定义页面

2024-09-06	
新增以下接口说明：
SysMsg_SendAllPlayerScrollMsgByClientType：根据客户端类型发送所有角色滚动通知
2024-08-30	
更新以下接口说明：
Map_GetRegionDummys：获取地图区域内的英雄列表
Map_GetRegionItemsEx：获取地图区域内的物品列表
Map_GetRegionMonstersCount：获取地图区域内的怪物数量
Map_GetRegionMonstersEx：获取地图区域内的怪物列表
Map_GetRegionNpcsEx：获取地图区域内的NPC列表
GetRegionFreeEx：获取地图区域中的空坐标列表
2024-08-19	
新增以下接口说明：
JsonToEquipWithSite：从Json直接生成装备到装备位
2024-07-26	
新增以下接口说明：
GetBuffHost：获取角色身上Buff的释放者
Map_GetChannelItemsInRegion：获取地图上范围内通道道具列表
2024-07-19	
新增以下接口说明：
IsTestServer：是否是测试区
Role_DataRow：根据职业和等级取得角色的配置表结构
2024-07-12	
新增以下接口说明：
Monster_SetRebornTime：设置怪物的重生时间
Monster_GetRebornTime：获取怪物的重生时间
Player_SetPowerHitCount：设置玩家多少次普攻后可以触发重击
Player_GetPowerHitCount：获取玩家多少次普攻后可以触发重击
新增以下回调函数：
on_glory_award：获得成就奖励时触发
2024-06-21	
新增以下接口说明：
增加接口Map_GenMonsterWithReborn：在地图指定范围生成怪物
2024-06-18	
新增以下接口说明：
Player_IsForbiddenChat对回调函数参数reason支持
2024-06-07	
新增以下回调函数：
on_pre_npc_taobao_buy：玩家在NPC二手商店购买之前回调
2024-05-24	
新增以下接口说明：
Map_CreateMagicEvent：在地图上创建特效
2024-05-17	
新增以下接口说明：
Hero_Hit：英雄使用指定技能攻击指定目标
Hero_SetLordSpecifiedTarget：给英雄设置主人指定的攻击目标
Hero_GetLordSpecifiedTarget：获取主人给英雄指定的攻击目标
Hero_GetProtectPos：获取英雄保护的位置
GetHeroState：获取英雄的状态（适用脚本控制英雄AI）
DummyRunOneStep：假人向指定坐标的方向跑动一步
DummyWalkOneStep：假人向指定坐标的方向移动一步
2024-05-11	
新增以下接口说明：
Player_GetShieldInterval：获取玩家上次开盾后距离当前时间间隔
Player_SetShieldInterval：设置玩家上次开盾后距离当前时间间隔
Player_IsCloudClient：获取玩家是否是云挂机状态
2024-04-15	
角色属性新增属性：lua_role_spell_speed_pct（施法速度），具体请参见角色属性类型定义页面

2024-04-03	
更新以下接口说明：
Player_GetQuestStatusByNpc：获取玩家在指定任务NPC处的任务状态
Player_IsCompleteQuest：玩家是否完成指定任务
2024-03-22	
更新以下接口说明：
Family_ChangeName：行会改名
2024-03-15	
角色属性新增100个动态属性，具体请参见角色属性类型定义页面

更新以下接口说明：
SetDynamicAttr：设置对象的动态属性
GetDynamicAttr：获取对象的动态属性
2024-03-08	
角色属性新增100个自定义属性，具体请参见角色属性类型定义页面

2024-02-26	
新增以下接口说明：
AddBuffWithParamsEx：根据填写的BUFF参数类型添加BUFF（扩展）
2024-02-06	
新增以下接口说明：
GetAccountRoleInfo：获取当前区服游戏账号下的所有角色信息
2024-01-03	
新增以下接口说明：
AddHeroRage：增加英雄的怒气值
SubHeroRage：减少英雄的怒气值
Role_GetBeAttackRole：获取指定角色最后一次攻击对象的GUID
Map_GetRegionRoles：获取地图区域内的对象列表
SetBuffStack：设置角色指定BUFF的堆叠层数
Role_HasFireSkill：判断角色是否有预存技能
Role_HasFireSkillWithLinkage：判断角色是否有指定的预存技能链
<上一篇:更新日志（2025）下一篇:更新日志（2023）>
更新日志（2025）
您可以在此页面查看本年度服务端开发文档的更新日志。

我们将持续更新API和说明文档，更新内容包含对新增接口、对现存接口的参数或说明做调整、对现有功能存在问题进行修复的说明等。

更新日期	更新描述
2025-12-31	
新增以下接口说明：
EnableFlyingSword新增对每把飞剑单独配置攻击距离与冷却时间的支持
新增以下回调函数：
on_use_item_level_check：角色使用道具等级检查回调
新增以下触发器类型定义：
lua_trigger_pre_add_exp：打怪加经验前触发
lua_trigger_use_item_level_check：使用道具等级检查触发
2025-12-19	
新增以下接口说明：
GetServantBetrayLeftTime：获取玩家某个宝宝背叛剩余时间
2025-12-12	
新增以下回调函数：
on_pre_add_exp：角色杀怪得到经验前回调
新增以下接口说明：
ClearTopListByType：按排行榜类型清除排行榜
Map模板属性新增属性：CustomUse0，具体请参见Map模板属性定义页面

Item模板属性新增属性：ClothWingMan、ClothWingWomen，具体请参见Item模板属性定义页面

2025-11-28	
新增以下接口说明：
Player_ForceAddExp：强制添加玩家经验
2025-11-17	
新增以下接口说明：
Market_SetCurrencyAlias：设置寄售行货币别名
2025-10-31	
新增以下接口说明：
Player_GetAllSuits：获取玩家当前所有套装对应的装备列表
AllTimers：返回对象所有定时器
2025-10-17	
新增以下接口说明：
Player_GetAllEquipment：获取玩家所有装备栏的装备
2025-09-26	
新增以下接口说明：
Mall_DataRows：获取商城的所有配置表结构
新增商城表属性定义页面
2025-09-11	
角色属性类型定义新增以下属性：
lua_role_ignore_burst_coff：忽视暴击攻击系数
2025-09-10	
新增以下触发器类型定义：
lua_trigger_pre_npc_taobao_buy：npc二手商店淘宝购买前触发
lua_trigger_on_glory_award：获得成就奖励时触发
lua_trigger_pre_leave_team：离队前触发
lua_trigger_on_player_pk_change：玩家PK值改变后触发
lua_trigger_on_flying_sword_hit：飞剑击中时触发
2025-09-02	
新增以下接口说明：
EnableFlyingSword新增参数字段attack_player支持
2025-08-22	
新增以下接口说明：
NotifyVarList：向客户端批量发送变量通知
2025-08-15	
新增以下接口说明：
Monster_SetDetectInv：设置怪物使用侦测隐形
2025-08-08	
新增以下接口说明：
Role_GetAttackRole：获取最后一次角色攻击的对象GUID
Monster_UseAstar：设置怪物使用智能寻路
2025-08-04	
新增以下接口说明：
Player_TamingEx：玩家捕捉宝宝
Player_CatchEx2：给玩家生成一个宠物（扩展2）
StopFamilyWarEx：停止两个行会交战，并解除敌对关系
2025-07-30	
新增以下接口说明：
MailJsonItems：给某个玩家发送一封文本邮件
EnableFlyingSword：配置并开启飞剑功能
DisableFlyingSword：关闭飞剑功能
新增以下回调函数：
on_flying_sword_hit：飞剑命中时触发
2025-07-18	
新增以下接口说明：
CanAttackEx：判断目标是否可攻击
2025-06-20	
新增以下接口说明：
SetBuffWithAttrs：设置角色BUFF的attr属性
2025-05-16	
新增以下接口说明：
AddMp：增加角色MP
SubMp：扣除角色MP
2025-05-06	
新增以下接口说明：
DeleteInt：删除对象实体上的整型数值变量
DeleteStr：删除对象实体上的字符型变量
AddInnerForce：增加角色内功值
SubInnerForce：扣除角色内功值
GetTopListGuids：查询前多少名等级的玩家信息
Player_TransactionRequest：批量操作(添加/删除)玩家的物品、金币和元宝
Map_GetAllMonsters：获取地图上所有怪物的GUID
新增以下回调函数：
on_player_pk_change：玩家PK值改变后触发
2025-03-28	
新增以下接口说明：
SetDynamicAttrBatch：批量设置玩家动态属性
GetAllInts：取得对象实体上存储的所有整型数值变量
GetAllStrs：取得对象实体上存储的所有字符型变量
2025-02-28	
新增以下接口说明：
ClearDynamicAttrs：清除角色或物品的动态属性
2025-01-22	
新增以下接口说明：
GetSuitItemListByID：根据套装ID获取套装装备列表ID
Role_SetForbiddenSkillLinkage：设置对象禁用技能链
Role_GetForbiddenSkillLinkage：获取对象禁用技能链
2025-01-10	
新增以下接口说明：
GetAllStallPlayerGuids：获取所有摆摊玩家的GUID
<上一篇:更新日志下一篇:更新日志（2024）>
更新日志
您可以在此页面查看本年度服务端开发文档的更新日志。

我们将持续更新API和说明文档，更新内容包含对新增接口、对现存接口的参数或说明做调整、对现有功能存在问题进行修复的说明等。

更新日期	更新描述
2025-02-13	
新增以下回调函数：
on_player_use_speaker：玩家发小喇叭时触发
on_pre_new_stall_buy：新摆摊系统购买前触发
on_pre_new_stall_close：新摆摊系统收摊前触发
on_pre_new_stall_start：新摆摊系统开摊前触发
on_pre_new_stall_takedown：新摆摊系统下架前触发
新增以下触发器类型定义：
lua_trigger_on_player_use_speaker：玩家发小喇叭时触发
lua_trigger_pre_new_stall_start：新摆摊系统购买前触发
lua_trigger_pre_new_stall_close：新摆摊系统收摊前触发
lua_trigger_pre_new_stall_buy：新摆摊系统开摊前触发
lua_trigger_pre_new_stall_takedown：新摆摊系统下架前触发
新增以下接口说明：
GetDayIntExpireTime：获取数值型天变量过期时间
GetDayStrExpireTime：获取字符串型天变量过期时间
Map_GetAllJumpInfos：获取地图跳转点信息
Map_GenDropItems对物品自定义变量写入的支持
202-02-11	
新增以下接口说明：
Dummy_StartNewStall：假人开始新摆摊
Dummy_StopNewStall：假人停止新摆摊
NewStall_Close：关闭新摆摊
NewStall_GetAllStallOwners：获取所有摊主
NewStall_GetStallGuidByPlayer：通过玩家获取摊位GUID
NewStall_GetStallGuidsInRange：获取范围内摊位
NewStall_GetStallInfo：获取摊位详细信息
下一篇:更新日志（2025）>










