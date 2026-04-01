# 神途游戏客户端接口学习总结 - 角色类接口

## 概述

角色类接口是神途游戏客户端中用于管理和控制玩家角色的核心接口集合，它提供了角色自动寻路、攻击模式切换、技能管理、BUFF管理、自动战斗配置等功能。这些接口是实现角色自动化操作、战斗系统和游戏玩法的关键，允许开发者创建丰富的游戏体验。

### 核心功能

- 角色自动寻路和移动控制
- 攻击模式和目标选择管理
- 技能自动施放和冷却管理
- BUFF检查和持续时间获取
- 自动战斗配置和优化
- 角色状态和属性管理

### 应用场景

- 自动挂机系统
- 战斗辅助工具
- 角色AI控制
- 技能链管理
- BUFF监控系统
- 攻击目标切换

## 角色控制接口

### 1. 自动寻路接口

#### AutoRunByPos
**功能描述**：角色自动寻路到指定位置。

**语法**：
```lua
CL:AutoRunByPos(_MapName, _X, _Y)
```

**参数**：
- `_MapName` (string)：地图索引名（KeyName）
- `_X` (int)：位置横坐标
- `_Y` (int)：位置纵坐标

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:AutoRunByPos("手游龙城", 100, 100)
```

---

#### FollowRole
**功能描述**：跟随目标角色。

**语法**：
```lua
CL:FollowRole(_RoleGUID, _AbortOnFail)
```

**参数**：
- `_RoleGUID` (string)：跟随目标的GUID，空字符串("")表示取消跟随
- `_AbortOnFail` (bool)：跟随失败时是否取消跟随，true表示脱离跟随，false表示保留目标GUID

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:FollowRole("390992899369791489", true) -- 设置跟随目标且失败时脱离
```

---

### 2. 目标选择接口

#### SwitchAttacObj
**功能描述**：切换选中目标。

**语法**：
```lua
CL:SwitchAttacObj(_Type)
```

**参数**：
- `_Type` (int)：目标类型，0表示人物和怪物，1表示只选中人物，2表示只选中怪物

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:SwitchAttacObj(2) -- 只切换选中怪物
```

---

#### SwitchAttacObjD
**功能描述**：在一定范围内切换选中目标。

**语法**：
```lua
CL:SwitchAttacObjD(_Len, _Type)
```

**参数**：
- `_Len` (int)：搜寻范围，单位为逻辑格
- `_Type` (int)：目标类型，0表示人物和怪物，1表示只选中人物，2表示只选中怪物

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:SwitchAttacObjD(7, 0) -- 在7逻辑格范围内切换选中目标（人物和怪物）
```

---

#### CancelCurSelecet
**功能描述**：取消选择已选中的对象。

**语法**：
```lua
CL:CancelCurSelecet()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### CancelCurSelectAndStopAttack
**功能描述**：取消选择并停止攻击已选中的对象。

**语法**：
```lua
CL:CancelCurSelectAndStopAttack()
```

**参数**：无

**返回值**：无

**支持平台**：手游（2D/3D）

---

### 3. 攻击模式接口

#### ChangeAttacMod
**功能描述**：改变攻击模式。

**语法**：
```lua
CL:ChangeAttacMod(_AttacMod)
```

**参数**：
- `_AttacMod` (int)：攻击模式，0表示全体模式，1表示和平模式，2表示组队模式，3表示行会模式，4表示PK模式，5表示联盟模式，6表示阵营模式

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:ChangeAttacMod(0) -- 切换为全体模式
```

---

#### OnAttackMode
**功能描述**：循环切换攻击模式。

**语法**：
```lua
CL:OnAttackMode()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

### 4. 普攻接口

#### ClickCommonAttac
**功能描述**：对当前选中目标进行普攻攻击。

**语法**：
```lua
CL:ClickCommonAttac()
```

**参数**：无

**返回值**：无

**支持平台**：端游（2D）

**示例代码**：
```lua
-- 在GameMainBar.lua中注册快捷键
function OnCommonAttack()
    CL:ClickCommonAttac()
end

CL:HotKeyRegister("A", "普攻攻击", "OnCommonAttack")
```

---

#### AttackCurSelectObject
**功能描述**：普攻并追击当前选中对象。

**语法**：
```lua
CL:AttackCurSelectObject()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:AttackCurSelectObject() -- 普攻并追击当前选中对象
```

---

## 技能管理接口

### 1. 技能自动施放接口

#### AddAttackAutoUseSkill
**功能描述**：添加自动施放技能链。

**语法**：
```lua
CL:AddAttackAutoUseSkill(_SkillLinkID)
```

**参数**：
- `_SkillLinkID` (int)：技能链ID

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:AddAttackAutoUseSkill(11) -- 添加技能链ID为11的自动施放技能
```

---

#### DelAttackAutoUseSkill
**功能描述**：移除自动施放技能列表中的技能链。

**语法**：
```lua
CL:DelAttackAutoUseSkill(_SkillLinkID)
```

**参数**：
- `_SkillLinkID` (int)：技能链ID

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:DelAttackAutoUseSkill(11) -- 移除技能链ID为11的自动施放技能
```

---

### 2. 技能链配置接口

#### ConfigureBuffAutoCaster
**功能描述**：配置自动释放的BUFF技能。

**语法**：
```lua
CL:ConfigureBuffAutoCaster(_Table)
```

**参数**：
- `_Table` (table)：自动释放的BUFF技能配置，格式为{技能链ID = {}}

**返回值**：无

**支持平台**：手游（2D）、端游（2D）

**示例代码**：
```lua
local buffConfig = {}
buffConfig[3130] = {} -- 技能链ID 3130
buffConfig[33031] = {} -- 技能链ID 33031

CL:ConfigureBuffAutoCaster(buffConfig)
```

---

### 3. 技能状态接口

#### ForbidPlayerSelfSkill
**功能描述**：禁用或解禁角色自身技能。

**语法**：
```lua
CL:ForbidPlayerSelfSkill(_Forbid)
```

**参数**：
- `_Forbid` (bool)：是否禁用技能，true表示禁用，false表示解禁

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
-- 配置要禁用的技能列表
local skillList = {3010, 3020} -- 蛊毒咒和神魂火符技能
LuaArg = skillList

CL:ForbidPlayerSelfSkill(true) -- 禁用技能
```

---

#### ForbidUseNormalAttack
**功能描述**：设置指定职业的角色代替普攻的技能。

**语法**：
```lua
CL:ForbidUseNormalAttack(_RoleID, _SkillID)
```

**参数**：
- `_RoleID` (int)：角色职业，1表示战士，2表示法师，3表示术士
- `_SkillID` (int)：代替普攻的技能ID

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:ForbidUseNormalAttack(2, 2001) -- 设置法师使用技能ID 2001代替普攻
```

---

### 4. 技能冷却接口

#### ForceSkillInCD
**功能描述**：刷新技能的冷却时间。

**语法**：
```lua
CL:ForceSkillInCD(_SkillID)
```

**参数**：
- `_SkillID` (unsigned int)：技能ID

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:ForceSkillInCD(3010) -- 强制技能ID 3010进入冷却
```

---

#### GetPermanentSkillCDTime
**功能描述**：获取对应技能的永久CD时间。

**语法**：
```lua
CL:GetPermanentSkillCDTime(_SkillID)
```

**参数**：
- `_SkillID` (unsigned short)：技能ID

**返回值**：bool，true表示已设置，值存储在LuaRet中

**支持平台**：手游（2D）、端游（2D）

**示例代码**：
```lua
if CL:GetPermanentSkillCDTime(3010) then
    dbg("技能永久CD时间："..LuaRet.."ms")
end
```

---

## BUFF管理接口

### 1. BUFF检查接口

#### GetBuffIsExist
**功能描述**：获取玩家身上是否存在指定的BUFF。

**语法**：
```lua
CL:GetBuffIsExist(_StrRole, _BuffID)
```

**参数**：
- `_StrRole` (string)：玩家角色的GUID
- `_BuffID` (int)：BUFF的ID

**返回值**：bool，true表示存在，false表示不存在

**支持平台**：所有平台

**示例代码**：
```lua
local roleGUID = CL:GetPlayerSelfGUID()
if CL:GetBuffIsExist(roleGUID, 15104) then
    dbg("玩家拥有变小BUFF")
else
    dbg("玩家没有变小BUFF")
end
```

---

#### GetBuffLeftTime
**功能描述**：获取BUFF剩余持续时间。

**语法**：
```lua
CL:GetBuffLeftTime(_StrRole, _BuffID)
```

**参数**：
- `_StrRole` (string)：玩家角色的GUID
- `_BuffID` (int)：BUFF的ID

**返回值**：int，剩余时间（秒）

**支持平台**：所有平台

**示例代码**：
```lua
local roleGUID = CL:GetPlayerSelfGUID()
local buffTime = CL:GetBuffLeftTime(roleGUID, 30110)
dbg("BUFF剩余时间："..buffTime.."秒")
```

---

### 2. BUFF属性接口

#### GetBuffProp
**功能描述**：根据Buff模板ID获取Buff属性值。

**语法**：
```lua
CL:GetBuffProp(_BuffID, _PropType)
```

**参数**：
- `_BuffID` (int)：Buff的模板ID
- `_PropType` (int)：Buff的属性类型，点击Buff属性了解更多信息

**返回值**：bool，true表示执行成功，值存储在LuaRet中

**支持平台**：所有平台

**示例代码**：
```lua
CL:GetBuffProp(145, 1) -- 获取ID为145的Buff的名称
dbg("Buff名称："..LuaRet)
```

---

#### GetBuffPropByKeyName
**功能描述**：通过Buff索引名获取Buff信息。

**语法**：
```lua
CL:GetBuffPropByKeyName(_KeyName, _PropType)
```

**参数**：
- `_KeyName` (string)：Buff索引名
- `_PropType` (int)：Buff的属性类型

**返回值**：bool，true表示执行成功，值存储在LuaRet中

**支持平台**：所有平台

**示例代码**：
```lua
CL:GetBuffPropByKeyName("测试buff", 0)
dbg("测试buff的编号："..LuaRet)
CL:GetBuffPropByKeyName("测试buff", 3)
dbg("测试buff的组别："..LuaRet)
CL:GetBuffPropByKeyName("测试buff", 5)
dbg("测试buff的存在时限："..LuaRet)
```

---

## 自动战斗配置接口

### 1. 自动战斗配置接口

#### SetCustomAutoBattleConfiguration
**功能描述**：设置自动战斗配置项。

**语法**：
```lua
CL:SetCustomAutoBattleConfiguration(_Config, _Update)
```

**参数**：
- `_Config` (string)：自动战斗配置JSON字符串
- `_Update` (bool)：true表示仅更新现有配置，false表示全量替换

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
local autoBattleConfig = {
    MOVE = {TIMES = 3, SKILLS = {50}},
    RESTORE = {THRESHOLD = 50, INTERVAL = 3, SKILLS = {9, 24}},
    BUFF = {SKILLS = {75}},
    SUMMON = {SKILLS = {95, 51}},
    DEBUFF = {SKILLS = {11}},
    AOE = {NUM = 3, SKILLS = {77, 10}},
    NORMAL = {SKILLS = {6, 3}},
}

CL:SetCustomAutoBattleConfiguration(json.encode(autoBattleConfig), false)
```

---

#### GetCustomAutoBattleConfiguration
**功能描述**：获取当前自动战斗配置项。

**语法**：
```lua
CL:GetCustomAutoBattleConfiguration()
```

**参数**：无

**返回值**：string，自动战斗配置JSON字符串

**支持平台**：所有平台

**示例代码**：
```lua
local config = CL:GetCustomAutoBattleConfiguration()
local decodedConfig = json.decode(config)
dbg("自动战斗配置："..serialize(decodedConfig))
```

---

### 2. 自动战斗优化接口

#### SetAOEAroundCount
**功能描述**：自动战斗时目标周围的怪物数量达到N时自动释放群攻技能。

**语法**：
```lua
CL:SetAOEAroundCount(_Count)
```

**参数**：
- `_Count` (int)：周围怪物数量，默认值为2

**返回值**：无

**支持平台**：手游（2D）、端游（2D）

**示例代码**：
```lua
CL:SetAOEAroundCount(5) -- 目标周围有5只怪物时释放群攻技能
```

---

#### SetNoPickupWhenMonstersAround
**功能描述**：自动挂机中角色周围指定范围内有怪物时不优先捡物。

**语法**：
```lua
CL:SetNoPickupWhenMonstersAround(_Enable, _Distance)
```

**参数**：
- `_Enable` (bool)：是否开启，true表示开启，false表示关闭
- `_Distance` (int)：逻辑格范围，数值应大于等于0

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:SetNoPickupWhenMonstersAround(true, 4) -- 角色周围4逻辑格内有怪物时不优先捡物
```

---

### 3. 自动战斗状态接口

#### SetPlayerAutoAttac
**功能描述**：设置玩家是否自动挂机。

**语法**：
```lua
CL:SetPlayerAutoAttac(_Flg)
```

**参数**：
- `_Flg` (bool)：true表示开始挂机，false表示取消挂机

**返回值**：无

**支持平台**：手游（2D/3D）、端游（3D）

**示例代码**：
```lua
CL:SetPlayerAutoAttac(true) -- 开始自动挂机
```

---

#### AllowAutoPickUpItem
**功能描述**：设置自动挂机时是否允许角色自动拾取物品。

**语法**：
```lua
CL:AllowAutoPickUpItem(_Value)
```

**参数**：
- `_Value` (bool)：true表示允许，false表示不允许

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:AllowAutoPickUpItem(true) -- 允许自动拾取物品
```

---

#### UpdatePickUpAllItem
**功能描述**：设置自动挂机时是否自动拾取全部物品。

**语法**：
```lua
CL:UpdatePickUpAllItem(_Value)
```

**参数**：
- `_Value` (bool)：true表示自动拾取，false表示不自动拾取

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:UpdatePickUpAllItem(true) -- 自动拾取全部物品
```

---

#### SetAutoAttackSearchPlayer
**功能描述**：设置自动挂机时是否会主动攻击敌对玩家。

**语法**：
```lua
CL:SetAutoAttackSearchPlayer(_Flag, _Distance)
```

**参数**：
- `_Flag` (bool)：true表示会主动攻击，false表示不会
- `_Distance` (int)：搜索范围的半径，单位为逻辑格

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:SetAutoAttackSearchPlayer(true, 6) -- 自动挂机时主动攻击6逻辑格内的敌对玩家
```

---

## 接口速查表

| 接口名 | 功能描述 | 适用平台 |
|--------|----------|----------|
| AutoRunByPos | 角色自动寻路 | 所有平台 |
| FollowRole | 跟随目标角色 | 所有平台 |
| SwitchAttacObj | 切换选中目标 | 所有平台 |
| SwitchAttacObjD | 在一定范围内切换选中目标 | 所有平台 |
| CancelCurSelecet | 取消选择已选中的对象 | 所有平台 |
| CancelCurSelectAndStopAttack | 取消选择并停止攻击已选中的对象 | 手游（2D/3D） |
| ChangeAttacMod | 改变攻击模式 | 所有平台 |
| OnAttackMode | 循环切换攻击模式 | 所有平台 |
| ClickCommonAttac | 对当前选中目标进行普攻攻击 | 端游（2D） |
| AttackCurSelectObject | 普攻并追击当前选中对象 | 所有平台 |
| AddAttackAutoUseSkill | 添加自动施放技能链 | 所有平台 |
| DelAttackAutoUseSkill | 移除自动施放技能链 | 所有平台 |
| ConfigureBuffAutoCaster | 配置自动释放的BUFF技能 | 手游（2D）、端游（2D） |
| ForbidPlayerSelfSkill | 禁用或解禁角色自身技能 | 所有平台 |
| ForbidUseNormalAttack | 设置指定职业的角色代替普攻的技能 | 所有平台 |
| ForceSkillInCD | 刷新技能的冷却时间 | 所有平台 |
| GetPermanentSkillCDTime | 获取对应技能的永久CD时间 | 手游（2D）、端游（2D） |
| GetBuffIsExist | 获取玩家身上是否存在指定的BUFF | 所有平台 |
| GetBuffLeftTime | 获取BUFF剩余持续时间 | 所有平台 |
| GetBuffProp | 根据Buff模板ID获取Buff属性值 | 所有平台 |
| GetBuffPropByKeyName | 通过Buff索引名获取Buff信息 | 所有平台 |
| SetCustomAutoBattleConfiguration | 设置自动战斗配置项 | 所有平台 |
| GetCustomAutoBattleConfiguration | 获取当前自动战斗配置项 | 所有平台 |
| SetAOEAroundCount | 自动战斗时目标周围的怪物数量达到N时自动释放群攻技能 | 手游（2D）、端游（2D） |
| SetNoPickupWhenMonstersAround | 自动挂机中角色周围指定范围内有怪物时不优先捡物 | 所有平台 |
| SetPlayerAutoAttac | 设置玩家是否自动挂机 | 手游（2D/3D）、端游（3D） |
| AllowAutoPickUpItem | 设置自动挂机时是否允许角色自动拾取物品 | 所有平台 |
| UpdatePickUpAllItem | 设置自动挂机时是否自动拾取全部物品 | 所有平台 |
| SetAutoAttackSearchPlayer | 设置自动挂机时是否会主动攻击敌对玩家 | 所有平台 |

## 学习建议

### 1. 基础学习路径

1. 学习角色控制接口，包括自动寻路和目标选择
2. 掌握攻击模式和普攻接口的使用
3. 了解技能管理接口，包括技能自动施放和冷却
4. 学习BUFF管理接口，包括BUFF检查和属性获取
5. 掌握自动战斗配置接口，创建自定义战斗策略

### 2. 进阶学习建议

1. 学习如何组合使用多个接口，创建复杂的角色行为
2. 探索自动战斗配置的优化方法，提高战斗效率
3. 学习如何处理技能链和BUFF的交互关系
4. 了解如何优化自动挂机系统的性能
5. 实践创建完整的战斗辅助工具

### 3. 最佳实践

1. 在使用技能接口前，确保已获取角色的GUID和技能ID
2. 合理配置自动战斗参数，避免过度消耗资源
3. 定期检查BUFF状态，确保角色状态良好
4. 优化技能释放顺序，提高战斗效率
5. 测试不同战斗场景下的自动战斗配置，确保稳定性

通过以上学习总结，您可以全面掌握神途游戏客户端中角色类接口的使用方法，开发出功能完善、性能优良的角色控制系统。角色类接口是实现游戏核心玩法的关键，正确使用和优化将大大提升用户体验。