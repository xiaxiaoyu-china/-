# 神途游戏客户端接口学习总结 - 场景类接口

## 概述

场景类接口是神途游戏客户端中用于管理游戏场景的核心接口集合，它提供了地图操作、坐标转换、场景属性设置、小地图管理、场景亮度控制等功能。这些接口是实现游戏场景交互和视觉效果的关键，允许开发者创建丰富多样的游戏场景体验。

### 核心功能

- 地图信息获取与操作
- 坐标转换（屏幕坐标、场景坐标、逻辑格坐标）
- 场景属性与状态管理
- 小地图与大地图管理
- 场景视觉效果控制
- 场景地图遮罩与颜色设置
- 场景背景音乐管理

### 应用场景

- 地图信息查询与显示
- 坐标转换与位置计算
- 小地图与大地图功能实现
- 场景视觉效果调整
- 地图背景音乐控制
- 场景状态与属性管理

## 地图信息获取接口

### 1. 获取当前地图信息

#### GetCurMapKeyName
**功能描述**：获取当前地图的关键字索引。

**语法**：
```lua
CL:GetCurMapKeyName()
```

**参数**：无

**返回值**：string，地图的关键字索引（KeyName）

**支持平台**：所有平台

**示例代码**：
```lua
local mapKey = CL:GetCurMapKeyName()
dbg("当前地图的关键字索引为："..mapKey)
```

---

#### GetCurMapOption
**功能描述**：获取当前地图的角色复活方式。

**语法**：
```lua
CL:GetMapOption()
```

**参数**：无

**返回值**：int，当前地图的角色复活方式
- 1：回到附近城市
- 2：回到附近城市或原地复活
- 3：回到副本入口
- 4：回到副本入口或原地复活

**支持平台**：所有平台

**示例代码**：
```lua
local mapOption = CL:GetMapOption()
dbg("当前地图复活方式为："..mapOption)
```

---

### 2. 地图信息查询

#### GetMapIdByKeyName
**功能描述**：根据地图的索引名获取地图编号。

**语法**：
```lua
CL:GetMapIdByKeyName(_MapKeyName)
```

**参数**：
- `_MapKeyName` (string)：地图的索引名（KeyName）

**返回值**：int，地图编号

**支持平台**：所有平台

**示例代码**：
```lua
dbg("地图编号："..CL:GetMapIdByKeyName("牛魔洞0"))
```

---

#### GetMapNameByKeyName
**功能描述**：根据地图的索引名获取地图名称。

**语法**：
```lua
CL:GetMapNameByKeyName(_MapKeyName)
```

**参数**：
- `_MapKeyName` (string)：地图的索引名（KeyName）

**返回值**：string，地图名称

**支持平台**：所有平台

**示例代码**：
```lua
local name = CL:GetMapNameByKeyName("龙城")
dbg("地图名："..name)
```

---

#### GetMapLogicNameByKeyName
**功能描述**：根据地图的索引名获取地图逻辑格名。

**语法**：
```lua
CL:GetMapLogicNameByKeyName(_MapKeyName)
```

**参数**：
- `_MapKeyName` (string)：地图的索引名（KeyName）

**返回值**：string，地图逻辑格名

**支持平台**：2D平台

**示例代码**：
```lua
local logicName = CL:GetMapLogicNameByKeyName("龙城")
dbg("地图逻辑格名："..logicName)
```

---

#### GetMapWidth 和 GetMapHeight
**功能描述**：获取当前整张地图的逻辑宽度和高度（单位为逻辑格）。

**语法**：
```lua
CL:GetMapWidth()
CL:GetMapHeight()
```

**参数**：无

**返回值**：int，地图的逻辑宽度或高度

**支持平台**：2D平台

**示例代码**：
```lua
local mapKey = CL:GetCurMapKeyName()
local logicName = CL:GetMapLogicNameByKeyName(mapKey)
dbg("地图逻辑格"..logicName.."宽度为："..CL:GetMapWidth())
dbg("地图逻辑格"..logicName.."高度为："..CL:GetMapHeight())
```

---

#### GetLogicGridWidth 和 GetLogicGridHeight
**功能描述**：获取当前地图的逻辑格宽度和高度（单位为像素）。

**语法**：
```lua
CL:GetLogicGridWidth()
CL:GetLogicGridHeight()
```

**参数**：无

**返回值**：int，逻辑格宽度或高度（像素）

**支持平台**：2D平台

**示例代码**：
```lua
local gridWidth = CL:GetLogicGridWidth()
local gridHeight = CL:GetLogicGridHeight()
dbg("The Grid is "..gridWidth.." x "..gridHeight)
```

---

## 坐标转换接口

### 1. 屏幕坐标与场景坐标转换

#### ConvertPixPosToSencePos
**功能描述**：将屏幕坐标转换为场景坐标。

**语法**：
```lua
CL:ConvertPixPosToSencePos(_PixelX, _PixelY)
```

**参数**：
- `_PixelX` (int)：屏幕横坐标
- `_PixelY` (int)：屏幕纵坐标

**返回值**：无，结果存储在LuaRet中
- LuaRet[1]：2D场景横坐标 / 3D逻辑格横坐标
- LuaRet[2]：2D场景纵坐标 / 3D逻辑格纵坐标

**支持平台**：所有平台

**示例代码**：
```lua
CL:ConvertPixPosToSencePos(720, 418) --转换屏幕坐标到场景坐标
dbg("场景横坐标："..LuaRet[1])
dbg("场景纵坐标："..LuaRet[2])
```

---

#### ConvertSencePosToPixPos
**功能描述**：将场景坐标转换为屏幕坐标。

**语法**：
```lua
CL:ConvertSencePosToPixPos(_SceneX, _SceneY)
```

**参数**：
- `_SceneX` (int)：2D场景横坐标 / 3D逻辑格横坐标
- `_SceneY` (int)：2D场景纵坐标 / 3D逻辑格纵坐标

**返回值**：无，结果存储在LuaRet中
- LuaRet[1]：屏幕横坐标
- LuaRet[2]：屏幕纵坐标

**支持平台**：所有平台

**示例代码**：
```lua
-- 获取玩家场景坐标并转换为屏幕坐标
if CL:GetPlayerSelfPropBase(5) then --获取玩家场景横坐标
    local x = LuaRet
    if CL:GetPlayerSelfPropBase(6) then --获取玩家场景纵坐标
        local y = LuaRet
        CL:ConvertSencePosToPixPos(x, y)
        dbg("玩家屏幕坐标：("..LuaRet[1]..","..LuaRet[2]..")")
    end
end
```

---

## 场景属性与状态管理

### 1. 场景属性获取

#### GetBrightness 和 SetBrightness
**功能描述**：获取和设置场景亮度。

**语法**：
```lua
CL:GetBrightness()
CL:SetBrightness(_Value)
```

**参数**：
- `_Value` (float)：场景亮度，范围0.5-1.5，默认值为1

**返回值**：float，场景亮度（GetBrightness）

**支持平台**：3D平台

**示例代码**：
```lua
CL:SetBrightness(1.5) --设置场景亮度为1.5
dbg("场景亮度为"..CL:GetBrightness()) --获取场景亮度
```

---

#### GetBehindWall
**功能描述**：获取角色是否被场景遮挡。

**语法**：
```lua
CL:GetBehindWall()
```

**参数**：无

**返回值**：bool，true表示被遮挡，false表示未被遮挡

**支持平台**：3D平台

**示例代码**：
```lua
if CL:GetBehindWall() then
    dbg("角色被场景遮挡")
else
    dbg("角色未被场景遮挡")
end
```

---

### 2. 场景颜色与遮罩

#### SetCurMapLightColor
**功能描述**：设置当前地图的颜色。

**语法**：
```lua
CL:SetCurMapLightColor(r_percent, g_percent, b_percent)
```

**参数**：
- `r_percent` (int)：红色通道占比，默认值为100，范围0~65535
- `g_percent` (int)：绿色通道占比，默认值为100，范围0~65535
- `b_percent` (int)：蓝色通道占比，默认值为100，范围0~65535

**返回值**：无

**支持平台**：2D平台

**示例代码**：
```lua
CL:SetCurMapLightColor(50, 150, 10) --设置地图颜色偏绿
```

---

#### SetDarkMaskRange
**功能描述**：设置场景地图遮罩的范围。

**语法**：
```lua
CL:SetDarkMaskRange(_Range)
```

**参数**：
- `_Range` (float)：地图遮罩的范围，值越大光圈范围越小，默认值为1，范围0~100

**返回值**：无

**支持平台**：3D平台

**示例代码**：
```lua
CL:SetDarkMaskRange(50) --设置地图遮罩范围
```

---

## 地图背景音乐管理

### 1. 背景音乐控制

#### SetMapBGMPlayCount
**功能描述**：设置地图背景音乐的循环播放次数。

**语法**：
```lua
CL:SetMapBGMPlayCount(_MapName, _Count)
```

**参数**：
- `_MapName` (string)：地图的索引名（KeyName），2D手游需使用UTF82GBK转换
- `_Count` (int)：背景音乐的循环播放次数，需大于等于1

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
-- 2D手游需要使用UTF82GBK转换地图名称
local mapNameGBK = UTF82GBK("手游龙城")
CL:SetMapBGMPlayCount(mapNameGBK, 3) --设置地图背景音乐循环播放3次
```

---

## 小地图与大地图管理

### 1. 小地图操作

#### SetLittleMapHighlightImage
**功能描述**：设置小地图高亮图片。

**语法**：
```lua
CL:SetLittleMapHighlightImage(_ImageID, _OffX, _OffY)
```

**参数**：
- `_ImageID` (unsigned int)：图片资源的ID
- `_OffX` (int)：X轴偏移
- `_OffY` (int)：Y轴偏移

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:SetLittleMapHighlightImage(1800700058, 0, 0) --设置小地图高亮图片
```

---

#### SetLittleMapMaskImage
**功能描述**：设置小地图的遮罩图片。

**语法**：
```lua
CL:SetLittleMapMaskImage(_ImageID, _OffX, _OffY)
```

**参数**：
- `_ImageID` (unsigned int)：遮罩图片资源的ID
- `_OffX` (int)：X轴偏移
- `_OffY` (int)：Y轴偏移

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:SetLittleMapMaskImage(1800700059, -23, -39) --设置小地图遮罩图片
```

---

### 2. 大地图操作

#### SetLockMapAspectStatus
**功能描述**：设置大地图是否锁定纵横比缩放。

**语法**：
```lua
CL:SetLockMapAspectStatus(_LockStatus)
```

**参数**：
- `_LockStatus` (bool)：true锁定纵横比，false不锁定

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:SetLockMapAspectStatus(true) --设置大地图锁定纵横比缩放
```

---

#### BigMapWindowUpdateMonsterAlive
**功能描述**：更新大地图上怪物图标的状态。

**语法**：
```lua
CL:BigMapWindowUpdateMonsterAlive(_HandleID, _ID, _Value)
```

**参数**：
- `_HandleID` (int)：大地图控件的句柄
- `_ID` (int)：怪物图标的索引号（需在mapicon表中有定义）
- `_Value` (bool)：怪物存活状态，true表示存活，false表示死亡

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:BigMapWindowUpdateMonsterAlive(_Handle, 161, true) --更新怪物图标状态为存活
```

---

## 场景摄像头与缩放

### 1. 摄像头控制

#### GetZoomLevel 和 SetZoomLevel
**功能描述**：获取和设置场景摄像头当前距离档位。

**语法**：
```lua
CL:GetZoomLevel()
CL:SetZoomLevel(_Level)
```

**参数**：
- `_Level` (int)：摄像头距离档位，范围根据游戏版本和设置而定

**返回值**：int，摄像头当前距离档位（GetZoomLevel）

**支持平台**：3D平台

**示例代码**：
```lua
local zoomLevel = CL:GetZoomLevel()
dbg("当前摄像头距离档位："..zoomLevel)
```

---

#### GetZoomMaxAndMinLevel 和 SetZoomMaxAndMinLevel
**功能描述**：获取和设置场景摄像头的缩放范围。

**语法**：
```lua
CL:GetZoomMaxAndMinLevel()
CL:SetZoomMaxAndMinLevel(_MaxLevel, _MinLevel)
```

**参数**：
- `_MaxLevel` (int)：最大缩放档位
- `_MinLevel` (int)：最小缩放档位

**返回值**：无，GetZoomMaxAndMinLevel结果存储在LuaRet中
- LuaRet[1]：最大缩放档位
- LuaRet[2]：最小缩放档位

**支持平台**：3D平台

**示例代码**：
```lua
CL:SetZoomMaxAndMinLevel(2, -3) --设置摄像头缩放范围为-3到2
if CL:GetZoomMaxAndMinLevel() then
    dbg("缩放范围："..LuaRet[1].." - "..LuaRet[2])
end
```

---

#### SceneCameraZoom 和 SceneCameraZoomIn
**功能描述**：拉近/拉远摄像头。

**语法**：
```lua
CL:SceneCameraZoom(_Flag) -- true拉近，false拉远
CL:SceneCameraZoomIn() --循环拉近
```

**参数**：
- `_Flag` (bool)：true表示拉近，false表示拉远

**返回值**：无

**支持平台**：3D平台

**示例代码**：
```lua
CL:SceneCameraZoom(true) --拉近摄像头
CL:SceneCameraZoomIn() --循环拉近摄像头
```

---

#### EnableMouseZoom
**功能描述**：设置是否允许使用鼠标滚轮缩放摄像头。

**语法**：
```lua
CL:EnableMouseZoom(_Enable)
```

**参数**：
- `_Enable` (bool)：true允许，false禁止

**返回值**：无

**支持平台**：3D端游

**示例代码**：
```lua
CL:EnableMouseZoom(true) --启用鼠标滚轮缩放
```

---

## 地图逻辑格属性查询

### 1. 逻辑格属性查询

#### MapGridAttr
**功能描述**：判断指定地图逻辑格的属性与指定属性是否相同。

**语法**：
```lua
CL:MapGridAttr(grid_x, grid_y, type)
```

**参数**：
- `grid_x` (int32)：地图逻辑格X坐标
- `grid_y` (int32)：地图逻辑格Y坐标
- `type` (int32)：属性类型
  - 1：不可移动点
  - 2：魔法攻击阻挡
  - 3：物理攻击阻挡
  - 4：可穿透点
  - 5：跳转点
  - 6：复活点
  - 7：摆摊点
  - 8：安全区点
  - 9：攻城区点
  - 10：红名区点
  - 11：挖矿区点

**返回值**：bool，true表示属性相同，false表示不同

**支持平台**：所有平台

**示例代码**：
```lua
-- 检查逻辑格属性
local logicGrid = {66, 57} -- 坐标
local attrType = 8 -- 安全区点
local isAttrMatch = CL:MapGridAttr(logicGrid[1], logicGrid[2], attrType)
dbg("该逻辑格是否为安全区："..(isAttrMatch and "是" or "否"))
```

---

## 地图跳转信息查询

### 1. 地图跳转点查询

#### GetJumpInfoByMapIndexName
**功能描述**：获取指定地图的跳转信息列表。

**语法**：
```lua
CL:GetJumpInfoByMapIndexName(mapKeyName)
```

**参数**：
- `mapKeyName` (string)：地图的索引名（KeyName）

**返回值**：int，跳转点个数，结果存储在LuaRet中

**支持平台**：2D平台

**示例代码**：
```lua
local jumpCount = CL:GetJumpInfoByMapIndexName("手游龙城")
if jumpCount > 0 then
    for i = 1, jumpCount do
        local jumpInfo = LuaRet[i]
        dbg("跳转信息"..i..": "..jumpInfo)
    end
else
    dbg("未找到跳转信息")
end
```

---

## 附近玩家信息获取

### 1. 附近玩家查询

#### GetNearPlayerList
**功能描述**：获取当前地图玩家自身附近的其他玩家角色列表。

**语法**：
```lua
CL:GetNearPlayerList(_MapKeyName)
```

**参数**：
- `_MapKeyName` (string)：地图的索引名（KeyName）

**返回值**：bool，true表示获取成功，结果存储在LuaRet中

**支持平台**：所有平台

**示例代码**：
```lua
if CL:GetNearPlayerList(CL:GetCurMapKeyName()) then
    for i = 1, #LuaRet do
        local player = LuaRet[i]
        dbg("附近玩家"..i..": "..player[1]) -- 玩家角色名
    end
end
```

---

#### GetNearPlayerListByCount
**功能描述**：获取距离玩家自身最近的其他玩家角色列表（限制数量）。

**语法**：
```lua
CL:GetNearPlayerListByCount(_Count)
```

**参数**：
- `_Count` (int)：可获取的其他玩家角色的最大数量

**返回值**：bool，true表示获取成功，结果存储在LuaRet中

**支持平台**：所有平台

**示例代码**：
```lua
if CL:GetNearPlayerListByCount(5) then
    for i = 1, #LuaRet do
        local player = LuaRet[i]
        dbg("最近玩家"..i..": "..player[1]) -- 玩家角色名
    end
end
```

---

## 学习建议

### 1. 基础学习路径

1. 了解场景类接口的核心功能和应用场景
2. 学习地图信息获取和操作接口
3. 掌握坐标转换和位置计算方法
4. 学习小地图和大地图管理功能
5. 掌握场景视觉效果调整方法
6. 学习场景背景音乐控制
7. 了解场景摄像头和缩放控制

### 2. 进阶学习建议

1. 探索坐标转换的应用场景，实现地图标记功能
2. 学习地图逻辑格属性查询，实现自动寻路
3. 掌握场景视觉效果调整，实现天气系统
4. 学习地图背景音乐管理，实现场景氛围控制
5. 掌握小地图和大地图管理，实现地图系统功能

### 3. 最佳实践

1. 在使用场景接口时，注意不同平台的兼容性
2. 合理使用坐标转换功能，确保位置计算的准确性
3. 优化场景视觉效果，提供良好的游戏体验
4. 合理管理地图背景音乐，增强游戏氛围
5. 测试场景功能的性能，确保游戏的流畅运行

通过以上学习总结，您可以全面掌握神途游戏客户端中场景类接口的使用方法，开发出功能完善、用户体验良好的游戏场景系统。场景类接口是实现游戏世界交互的基础，合理使用这些接口可以创建出丰富多样的游戏场景和交互效果。