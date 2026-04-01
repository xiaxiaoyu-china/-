BigMapWindowUpdateMonsterAlive
更新大地图上怪物图标的状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-03-31 00:00:00
此函数更新大地图上怪物图标的状态。

如果怪物活着，则显示怪物图标，否则隐藏怪物图标。

caution_icon 注意
2D手游、3D手游和3D端游调用此接口时需要将前缀改为GUI:。

语法
Luacopy 复制
CL:BigMapWindowUpdateMonsterAlive( 
    _HandleID,
    _ID,
    _Value
)

参数
_HandleID

int

 
大地图控件的句柄

_ID

int

 
怪物图标的索引号

索引号必须在游戏工具平台→表格管理→mapicon表中有定义

_Value

bool

 
怪物存活状态

true怪物存活

false怪物已死亡

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对手游支持

 
v1.2

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:BigMapWindowUpdateMonsterAlive(_Handle, 161, true)

--此示例代码的效果如下。

BigMapWindowUpdateMonsterAlive

“朱雀星君”在游戏工具平台中定义如下：

BigMapWindowUpdateMonsterAlive_2.png
下一篇:转换屏幕坐标到场景坐标>
ConvertPixPosToSencePos
转换屏幕坐标到场景坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-07-07 00:00:00
此函数在2D客户端中的作用为将屏幕坐标转换为场景坐标，在3D客户端中的作用为将屏幕坐标转换为逻辑格坐标。

场景坐标是指角色、物品等在地图上的像素坐标位置。

逻辑格坐标是指角色、物品等在地图上的逻辑格坐标位置，即游戏右上角显示的坐标，如图1所示。

图 1 逻辑格坐标

ConvertSencePosToPixPos.png
场景坐标与逻辑格坐标的转换计算公式如下：

场景横坐标 = 逻辑格横坐标 * 逻辑格的宽度 + 逻辑格的宽度/2

场景纵坐标 = 逻辑格纵坐标 * 逻辑格的高度 + 逻辑格的高度/2

屏幕坐标是指角色、物品等相对于游戏外边框的坐标位置，单位为像素（px），屏幕坐标的（0,0）点位置如图2所示。

图 2 屏幕坐标的（0,0）点位置

ConvertSencePosToPixPos_2.png
参考 ConvertSencePosToPixPos

语法
Luacopy 复制
CL:ConvertPixPosToSencePos( 
    _PixelX,
    _PixelY
)

参数
_PixelX

int

 
屏幕横坐标

_PixelY

int

 
屏幕纵坐标

返回值
此函数无返回值。

 
note_icon 备注
如操作成功，转换后的场景坐标存储在全局变量LuaRet中。

LuaRet[1]2D：场景横坐标、3D：逻辑格横坐标

LuaRet[2]2D：场景纵坐标、3D：逻辑格纵坐标

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:ConvertPixPosToSencePos(720, 418) --转换屏幕坐标到场景坐标
dbg("场景横坐标：".. LuaRet[1])
dbg("场景纵坐标：".. LuaRet[2])

local w = CL:GetLogicGridWidth() --获取当前地图逻辑格宽度
local h = CL:GetLogicGridHeight() --获取当前地图逻辑格高度
dbg("对应逻辑格坐标为(" .. ((LuaRet[1] - w / 2) / w) .. "," .. ((LuaRet[2] - h / 2) / h) .. ")")

--此示例代码运行成功如下图所示。

ConvertPixPosToSencePos.png
<上一篇:更新大地图上怪物图标的状态下一篇:转换场景坐标到屏幕坐标>
ConvertSencePosToPixPos
转换场景坐标到屏幕坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-05-13 00:00:00
此函数在2D客户端中的作用为将场景坐标转换为屏幕坐标，在3D客户端中的作用为将逻辑格坐标转换为屏幕坐标。

场景坐标是指角色、物品等在地图上的像素坐标位置。

逻辑格坐标是指角色、物品等在地图上的逻辑格坐标位置，即游戏右上角显示的坐标，如图1所示。

图 1 逻辑格坐标

ConvertSencePosToPixPos.png
场景坐标与逻辑格坐标的转换计算公式如下：

场景横坐标 = 逻辑格横坐标 * 逻辑格的宽度 + 逻辑格的宽度/2

场景纵坐标 = 逻辑格纵坐标 * 逻辑格的高度 + 逻辑格的高度/2

屏幕坐标是指角色、物品等相对于游戏外边框的坐标位置，单位为像素（px），屏幕坐标的（0,0）点位置如图2所示。

图 2 屏幕坐标的（0,0）点位置

ConvertSencePosToPixPos_2.png
参考 ConvertPixPosToSencePos

语法
Luacopy 复制
CL:ConvertSencePosToPixPos( 
    _SceneX,
    _SceneY
)

参数
_SceneX

int

 
2D：场景横坐标

3D：逻辑格横坐标

_SceneY

int

 
2D：场景纵坐标

3D：逻辑格纵坐标

返回值
此函数无返回值。

 
note_icon 备注
如操作成功，转换后的屏幕坐标存储在全局变量LuaRet中。

LuaRet[1]屏幕横坐标

LuaRet[2]屏幕纵坐标

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对2D端游和H5的支持

示例代码
Luacopy 复制
--以下示例代码在2D客户端中执行，代码主要逻辑如下：
--1.使用接口CL:GetPlayerSelfPropBase获取玩家的场景坐标；
--2.使用接口CL:ConvertSencePosToPixPos将玩家的场景坐标转化为屏幕坐标；
--3.使用接口CL:GetLogicGridWidth和CL:GetLogicGridHeight接口分别获取逻辑格的宽度和高度，并且通过固定的计算公式获得玩家的真实坐标（逻辑格坐标）。
if CL:GetPlayerSelfPropBase(5) then --获取该玩家的场景横坐标 
    x = LuaRet
    dbg("该玩家的场景横坐标:"..x)
end
if CL:GetPlayerSelfPropBase(6) then --获取该玩家的场景纵坐标
    y = LuaRet
    dbg("该玩家的场景纵坐标:"..y)
end
CL:ConvertSencePosToPixPos(x, y) --转换场景坐标到屏幕坐标
dbg("玩家的屏幕坐标是（"..LuaRet[1] .. ","..LuaRet[2] .. "）")

local w = CL:GetLogicGridWidth() --获取当前地图逻辑格宽度
local h = CL:GetLogicGridHeight() --获取当前地图逻辑格高度
dbg("玩家的真实坐标是（" .. ((x - w / 2) / w) .. "," .. ((y - h / 2) / h) .. "）")

--此示例代码运行成功如下图所示。

image_20201110160242.png
<上一篇:转换屏幕坐标到场景坐标下一篇:设置是否使用鼠标滚轮拉近或拉远摄像头>
EnableMouseZoom
设置是否使用鼠标滚轮拉近或拉远摄像头

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dsupport

更新时间：2026-02-28 19:36:00
此函数用于设置是否允许使用鼠标滚轮拉近或拉远摄像头。

语法
Luacopy 复制
CL:EnableMouseZoom(
    flg
)

参数
flg

bool

 
是否启用鼠标滚轮缩放功能

true 启用鼠标滚轮缩放

false 禁用鼠标滚轮缩放

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 启用鼠标滚轮缩放摄像头
CL:EnableMouseZoom(true)

-- 禁用鼠标滚轮缩放摄像头
CL:EnableMouseZoom(false)

<上一篇:转换场景坐标到屏幕坐标下一篇:获取是否被场景遮挡>
GetBehindWall
获取是否被场景遮挡

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-09-04 17:45:00
此函数获取是否被场景遮挡。

note_icon 备注
场景遮挡触发时执行参考：BehindWall。

语法
Luacopy 复制
CL:GetBehindWall()
参数
 
返回值
bool

 
true被场景遮挡

false未被场景遮挡

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetBehindWall()
<上一篇:设置是否使用鼠标滚轮拉近或拉远摄像头下一篇:获取场景亮度>
GetBrightness
获取场景亮度

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数获取场景亮度。

参考 SetBrightness

语法
Luacopy 复制
CL:GetBrightness()
参数
无

返回值
float

 
场景亮度（默认值为1）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示（场景亮度为1）。
SetBrightness_2.png
CL:SetBrightness(1.5) --设置场景亮度为1.5
dbg("场景亮度为"..CL:GetBrightness()) --获取场景亮度

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

SetBrightness.png

GetBrightness_2.png
<上一篇:获取是否被场景遮挡下一篇:获取当前地图的关键字索引>
GetCurMapKeyName
获取当前地图的关键字索引

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前地图的关键字索引。

语法
Luacopy 复制
CL:GetCurMapKeyName()

参数
无

 
返回值
string

 
地图的关键字索引（KeyName）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local mapKey = CL:GetCurMapKeyName()
dbg("当前地图的关键字索引为："..mapKey)

--控制台将输出：“当前地图的关键字索引为：手游巫山城”。
<上一篇:获取场景亮度下一篇:获取鼠标在大地图上的逻辑格坐标位置>
GetCurMouseGridPosInBigMap
获取鼠标在大地图上的逻辑格坐标位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-24 00:00:00
此函数获取鼠标当前位置对应大地图的实际逻辑格坐标位置。

语法
Luacopy 复制
CL:GetCurMouseGridPosInBigMap()
参数
无

返回值
此函数无返回值。

note_icon 备注
获取的坐标位置存储在LuaRet中。

LuaRet[1]横坐标（X）；

LuaRet[2]纵坐标（Y）。

如果x，y的值为0，表示获取失败。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

 
v1.2

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--将官方45度美术资源展示（区号：3104）中的BigMapWindow.lua脚本文件的代码做如下修改。
BigMapWindow = {}
function BigMapWindow.main()

--……省略部分代码

    _GUIHandle = GUI:ImageCreate(_Parent,"BigMapCtrl",0,35,94)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0) --设置窗体控件的自定义参数的值为0
        GUI:WndSetSizeM(_GUIHandle,600, 376) --设置窗口大小为600*376
        CL:SetLockMapAspectStatus(true) --设置大地图锁定纵横比缩放
        GUI:WndSetUserData(_GUIHandle,1857060008,0) --设置大地图的遮罩
        GUI:WndSetCanRevMsg(_GUIHandle,true) --设置窗口响应操作
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "BigMapWindow.ShowPoint") --注册鼠标左键弹起事件
    end

--……省略部分代码
end

function BigMapWindow.ShowPoint()
    CL:GetCurMouseGridPosInBigMap()
    local x = LuaRet[1]
    local y = LuaRet[2]
    dbg("x="..x.."|y="..y)
end

--……省略部分代码

BigMapWindow.main()

--控制台将输出：x=129|y=139
<上一篇:获取当前地图的关键字索引下一篇:获取指定地图的跳转信息列表>
GetJumpInfoByMapIndexName
获取指定地图的跳转信息列表

更新时间：2022-05-20 00:00:00
手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

此函数获取指定地图的跳转信息列表。

语法
Luacopy 复制
CL:GetJumpInfoByMapIndexName(
    mapKeyName
)
参数
mapKeyName

string

 
指定地图的索引名（KeyName）

返回值
int

 
跳转点个数

0没有对应的地图信息或者获取失败

note_icon 备注
如获取成功（即接口的返回值不为0），则获取的数据存储在全局变量LuaRet中。

具体格式如下：

{

  [1] = “要跳转的地图索引名1,起跳点1的横坐标,起跳点1的纵坐标”,

  [2] = “要跳转的地图索引名2,起跳点2的横坐标,起跳点2的纵坐标”,

  ...

}

手游中获取的“要跳转的地图索引名”的编码方式为UTF8。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetJumpInfoByMapIndexName("手游龙城") ~= 0 then
    dbg(serialize(LuaRet))
else
    dbg("获取失败")
end

--此示例代码运行成功如下图所示。

GetJumpInfoByMapIndexName.png
<上一篇:获取鼠标在大地图上的逻辑格坐标位置下一篇:获取当前地图逻辑格高度>
GetLogicGridHeight
获取当前地图逻辑格高度

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前所在地图的逻辑格高度。

语法
Luacopy 复制
CL:GetLogicGridHeight()

参数
无

 
返回值
int

 
逻辑格高度

单位为像素（px）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local gridwidth = CL:GetLogicGridWidth() --获取当前地图逻辑格宽度
local gridheight = CL:GetLogicGridHeight() --获取当前地图逻辑格高度
dbg("The Grid is "..gridwidth.." x "..gridheight)

--例如，控制台将输出“The Grid is 64 x 32”。
<上一篇:获取指定地图的跳转信息列表下一篇:获取当前地图逻辑格宽度>
GetLogicGridWidth
获取当前地图逻辑格宽度

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前所在地图的逻辑格宽度。

语法
Luacopy 复制
CL:GetLogicGridWidth()

参数
无

 
返回值
int

 
逻辑格宽度

单位为像素（px）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local gridwidth = CL:GetLogicGridWidth() --获取当前地图逻辑格宽度
local gridheight = CL:GetLogicGridHeight() --获取当前地图逻辑格高度
dbg("The Grid is "..gridwidth.." x "..gridheight)

--例如，控制台将输出“The Grid is 64 x 32”。
<上一篇:获取当前地图逻辑格高度下一篇:获取当前整张地图的逻辑格高度>
GetMapHeight
获取当前整张地图的逻辑格高度

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-12-10 00:00:00
此函数获取当前整张地图的逻辑格高度。

note_icon 备注
此函数功能同服务端接口lualib:Map_GetHeight。

语法
Luacopy 复制
CL:GetMapHeight()
参数
无

返回值
uint16

 
获取成功则返回地图的高度（单位为逻辑格）

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--工具后台地图逻辑格配置如下图所示。

GetMapHeight.png
local mapKey = CL:GetCurMapKeyName()
local logicName = CL:GetMapLogicNameByKeyName(mapKey)
dbg("地图逻辑格"..logicName.."宽度为："..CL:GetMapWidth())
dbg("地图逻辑格"..logicName.."高度为："..CL:GetMapHeight())

--此示例代码运行成功如下图所示。

GetMapHeight_2.png
<上一篇:获取当前地图逻辑格宽度下一篇:根据地图的索引名获取地图编号>
GetMapIdByKeyName
根据地图的索引名获取地图编号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-04-19 00:00:00
此函数根据地图的索引名（KeyName）获取地图编号（Id）。

语法
Luacopy 复制
CL:GetMapIdByKeyName(
    _KeyName
)
参数
_KeyName

string

 
地图的索引名（KeyName）

返回值
int

 
获取成功则返回对应的地图编号（Id）

获取失败则返回0

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以下示例代码运行前提如下图所示。
GetMapIdByKeyName_2.png
dbg("地图编号："..CL:GetMapIdByKeyName("牛魔洞0"))

--此示例代码运行成功如下图所示。

GetMapIdByKeyName.png
<上一篇:获取当前整张地图的逻辑格高度下一篇:根据地图的索引名获取地图逻辑格名>
GetMapLogicNameByKeyName
根据地图的索引名获取地图逻辑格名

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-04-19 00:00:00
此函数根据地图的索引名(KeyName)获取地图逻辑格名(LogicName)。

语法
Luacopy 复制
CL:GetMapLogicNameByKeyName(
    _MapKeyName
)
参数
_MapKeyName

string

 
地图的索引名(KeyName)

返回值
string

 
地图逻辑格名

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local logic_name = CL:GetMapLogicNameByKeyName("龙城")
dbg("地图逻辑格名："..logic_name)

--此示例代码运行成功如下图所示。

GetMapLogicNameByKeyName
<上一篇:根据地图的索引名获取地图编号下一篇:根据地图编号获取地图名称>
GetMapNameByID
根据地图编号获取地图名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据地图模板表中的地图编号获取该地图的名称。

语法
Luacopy 复制
CL:GetMapNameByID( 
    _MapID
)

参数
_MapID

const int

 
地图编号。

返回值
string

 
地图名称。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_name = CL:GetMapNameByID(231) --示例服务区为45度美术演示区
dbg("地图名称为："..map_name)

--控制台将输出“地图名称为：海底秘境三层”。
<上一篇:根据地图的索引名获取地图逻辑格名下一篇:根据地图的索引名获取地图名称>
GetMapNameByKeyName
根据地图的索引名获取地图名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-19 00:00:00
此函数根据地图的索引名（KeyName）获取地图名称（Name）。

语法
Luacopy 复制
CL:GetMapNameByKeyName( 
    _MapKeyName
)

参数
_MapKeyName

string

 
地图的索引名（KeyName）

返回值
string

 
地图名称

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local name = CL:GetMapNameByKeyName("龙城")
dbg("地图名："..name)

--此示例代码运行成功如下图所示。


<上一篇:根据地图编号获取地图名称下一篇:获取当前地图的角色复活方式>
GetMapOption
获取当前地图的角色复活方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-18 00:00:00
此函数获取当前地图角色死亡后的复活方式，即地图模板表中的“死亡弹出”选项的配置值。

对应选项访问路径为：游戏工具平台→游戏配置→地图→地图模板表→触发处理区域。

DoPlayerReliveByType.png
语法
Luacopy 复制
CL:GetMapOption()

参数
无

 
返回值
int

 
当前地图的角色复活方式

1回到附近城市

2回到附近城市或原地复活

3回到副本入口

4回到副本入口或原地复活

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_recover_option = CL:GetMapOption()
dbg("当前地图复活方式为："..map_recover_option)

--示例代码运行当前地图为“东临城”，控制台将会输出“当前地图复活方式为：1”。
<上一篇:根据地图的索引名获取地图名称下一篇:获取当前整张地图的逻辑宽度>
GetMapWidth
获取当前整张地图的逻辑宽度

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-12-10 00:00:00
此函数获取当前整张地图的逻辑宽度。

note_icon 备注
此函数功能同服务端接口lualib:Map_GetWidth。

语法
Luacopy 复制
CL:GetMapWidth()
参数
无

返回值
uint16

 
获取成功则返回地图的高度（单位为逻辑格）

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--工具后台地图逻辑格配置如下图所示。

GetMapHeight.png
local mapKey = CL:GetCurMapKeyName()
local logicName = CL:GetMapLogicNameByKeyName(mapKey)
dbg("地图逻辑格"..logicName.."宽度为："..CL:GetMapWidth())
dbg("地图逻辑格"..logicName.."高度为："..CL:GetMapHeight())

--此示例代码运行成功如下图所示。

GetMapHeight_2.png
<上一篇:获取当前地图的角色复活方式下一篇:获取地图缩略图的图片资源ID>
GetMiniMapImageID
获取地图缩略图的图片资源ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取地图缩略图的图片资源ID。

地图缩略图即为打开地图面板显示的缩略图。

map_thumb

语法
Luacopy 复制
CL:GetMiniMapImageID( 
    _MapID
)

参数
_MapID

const int

 
地图编号。

返回值
int

 
地图缩略图的图片资源ID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_image_id = CL:GetMiniMapImageID(231) --示例服务区为45度美术演示区
dbg("当前地图缩略图资源ID为："..map_image_id)

--控制台将输出“当前地图缩略图资源ID为：2004300002”。
<上一篇:获取当前整张地图的逻辑宽度下一篇:获取附近指定数量的玩家角色列表>
GetNearPlayerListByCount
获取附近指定数量的玩家角色列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-09-09 00:00:00
此函数获取距离玩家自身最近的其他玩家角色列表。

语法
Luacopy 复制
CL:GetNearPlayerListByCount( 
    _Count
)

参数
_Count

int

 
可获取的其他玩家角色的最大数量

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的附件玩家角色信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]玩家角色名；

LuaRet[i][2]所在场景X逻辑坐标；

LuaRet[i][3]所在场景Y逻辑坐标；

LuaRet[i][4]玩家角色的等级；

LuaRet[i][5]玩家角色的职业，1代表战士，2代表法师，3代表术士；

LuaRet[i][6]玩家角色的所在行会，如没有加入任何行会，则为空字符串；

LuaRet[i][7]玩家角色的GUID。

LuaRet[i][8]玩家角色的当前HP。

LuaRet[i][9]玩家角色的最大HP。

版本历史
v1.0

 
首次发布

 
v1.1

 
增加操作成功获取的内容：LuaRet[i][7]玩家角色的GUID

 
v1.2

 
增加操作成功获取的内容：LuaRet[i][8]玩家角色的当前HP和LuaRet[i][9]玩家角色的最大HP

示例代码
Luacopy 复制
if CL:GetNearPlayerListByCount(5) then
    dbg("获取到的第一个附近玩家角色名为："..LuaRet[1][1])
end

--例如，控制台将输出“获取到的第一个附近玩家角色名为：Player210”。
<上一篇:获取地图缩略图的图片资源ID下一篇:获取附近玩家角色列表>
GetNearPlayerList
获取附近玩家角色列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-19 00:00:00
此函数获取当前地图玩家自身附近的其他玩家角色列表。

语法
Luacopy 复制
CL:GetNearPlayerList( 
    _MapKeyName
)

参数
_MapKeyName

string

 
玩家角色当前所在地图的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的附件玩家角色信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]玩家角色的名称；

LuaRet[i][2]所在场景X逻辑坐标；

LuaRet[i][3]所在场景Y逻辑坐标；

LuaRet[i][4]玩家角色的等级；

LuaRet[i][5]玩家角色的职业（1代表战士，2代表法师，3代表术士）；

LuaRet[i][6]玩家角色的所在行会，如没有加入任何行会，则为空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetNearPlayerList("临城") then
    dbg("获取到的第一个附近玩家角色名为："..LuaRet[1][1])
end

--例如，控制台将输出“获取到的第一个附近玩家角色名为：Player210”。
<上一篇:获取附近指定数量的玩家角色列表下一篇:获取场景摄像头当前距离档位>
GetZoomLevel
获取场景摄像头当前距离档位

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-09-09 00:00:00
此函数获取场景摄像头当前距离档位。

语法
Luacopy 复制
CL:GetZoomLevel()
参数
无

返回值
int

 
场景摄像头当前距离档位（即游戏画质设置中的m_ZoomLevel字段的值）

note_icon 备注
若未使用接口CL:SetZoomMaxAndMinLevel修改摄像机的默认缩放范围，则此接口返回值的范围为m_ZoomLevel字段的默认范围（端游为-2至2，手游为-1至2）；

若使用接口CL:SetZoomMaxAndMinLevel修改了摄像机的默认缩放范围，则此接口返回值的范围为接口CL:SetZoomMaxAndMinLevel的设置范围。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local zoomlevel = CL:GetZoomLevel()
dbg("场景摄像头当前距离档位："..zoomlevel)

--此示例代码运行成功如下图所示。

GetZoomLevel.png
<上一篇:获取附近玩家角色列表下一篇:获取场景摄像头的缩放范围>
GetZoomMaxAndMinLevel
获取场景摄像头的缩放范围

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-03-18 00:00:00
此函数获取场景摄像头的缩放范围。

语法
Luacopy 复制
CL:GetZoomMaxAndMinLevel()
参数
无

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回获取成功或失败。如获取成功，获取的属性信息存储在全局变量LuaRet中。

LuaRet[1]场景摄像头的缩放范围的最大值

LuaRet[2]场景摄像头的缩放范围的最小值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetZoomMaxAndMinLevel(2,-3) --设置场景摄像头的缩放范围
--获取场景摄像头的缩放范围
if CL:GetZoomMaxAndMinLevel() then
    local _MaxLevel = LuaRet[1]
    local _MinLevel = LuaRet[2]
    dbg("最大值为：" .. _MaxLevel)
    dbg("最小值为：" .. _MinLevel)
end

--此示例代码运行成功如下图所示。

--当场景摄像头的缩放范围为2时，效果如下图所示。

SetZoomMaxAndMinLevel.png

--当场景摄像头的缩放范围为-3时，效果如下图所示。

SetZoomMaxAndMinLevel_2.png

--控制台打印内容如下图所示。

GetZoomMaxAndMinLevel.png
<上一篇:获取场景摄像头当前距离档位下一篇:获取是否显示场景掉落物品的光柱特效>
IsShowItemBeamEffect
获取是否显示场景掉落物品的光柱特效

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-05-30 00:00:00
此函数获取是否显示场景掉落物品的光柱特效。

语法
Luacopy 复制
CL:IsShowItemBeamEffect()

参数
无

 
返回值
bool

 
true显示特效，为默认值

false隐藏特效

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--分别设置显示光柱特效和隐藏光柱特效，调用函数，查看效果

CL:SetShowItemBeamEffect(true)
if CL:IsShowItemBeamEffect() then
  dbg("显示特效")
else
  dbg("隐藏特效")
end

--当设置显示光柱特效后，控制台将输出“显示特效”。

--当设置隐藏光柱特效后，控制台将输出“隐藏特效”。
<上一篇:获取场景摄像头的缩放范围下一篇:判断当前地图逻辑格的属性与指定属性是否相同>
MapGridAttr
判断当前地图逻辑格的属性与指定属性是否相同

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-08-20 00:00:00
此函数判断当前地图逻辑格的属性与指定属性是否相同。

note_icon 备注
此函数功能同服务端接口lualib:GridAttr

语法
Luacopy 复制
CL:MapGridAttr(
    grid_x,
    grid_y,
    type
)
参数
grid_x

int32

 
指定地图逻辑格的X坐标

grid_y

int32

 
指定地图逻辑格的Y坐标

type

int32

 
逻辑格属性

1不可移动点

2魔法攻击阻挡

3物理攻击阻挡

4可穿透点

5跳转点

6复活点

7摆摊点

8安全区点

9攻城区点

10红名区点

11挖矿区点

返回值
bool

 
true地图逻辑格的实际属性与指定属性类型相同。

false地图逻辑格的实际属性与指定属性类型不相同。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--逻辑格实际属性
local tPos = {
    --手游龙城
    {42, 32},   --阻挡
    {66, 57},   --安全区
    {61, 38},   --红名区
    {36, 9},    --跳转点

    --巫山城
    {151, 156}, --摆摊区

    --神歌城
    {52, 72},   --摆摊区
}

local tPointType = {
    "不可移动点",
    "魔法攻击阻挡",
    "物理攻击阻挡",
    "可穿透点",
    "跳转点",
    "复活点",
    "摆摊点",
    "安全区点",
    "攻城区点",
    "红名区点",
    "挖矿区点",
}
local mapKey = CL:GetCurMapKeyName()
local logicName = CL:GetMapLogicNameByKeyName(mapKey)
for i = 1, #tPos do 
    for j = 1, #tPointType do 
        if CL:MapGridAttr(tPos[i][1], tPos[i][2], j) then 
            dbg("逻辑格"..logicName.."坐标["..tPos[i][1]..","..tPos[i][2].."]类型："..tPointType[j])
        end
    end
end

--此示例代码运行成功如下图所示。
MapGridAttr.png
MapGridAttr_2.png
MapGridAttr_3.png
<上一篇:获取是否显示场景掉落物品的光柱特效下一篇:循环切换场景摄像头与人物之间的距离>
SceneCameraZoomIn
循环切换场景摄像头与人物之间的距离

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-10-31 00:00:00
此函数会循环拉近场景摄像头与人物之间的距离。

当场景摄像头与人物之间的距离最远时，游戏中角色显示最小。若此时再次执行此接口，则会将场景摄像头与人物之间的距离自动调整为最远的距离。

如需定向拉远（或者拉近）场景摄像头与人物之间的距离，可使用接口CL:SceneCameraZoom进行设置。

note_icon 备注
此接口与接口CL:SceneCameraZoom的区别如下：

当摄像头与人物之间的距离最近时执行此接口，会将摄像头与人物之间的距离自动调整为最远的距离；

当摄像头与人物之间的距离最近时执行接口CL:SceneCameraZoom，接口CL:SceneCameraZoom不会生效。

语法
Luacopy 复制
CL:SceneCameraZoomIn()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SceneCameraZoomIn()

--此示例代码运行前效果如下图所示。

SceneCameraZoomIn.png

--此示例代码运行后效果如下图所示。

SceneCameraZoomIn_2.png
<上一篇:判断当前地图逻辑格的属性与指定属性是否相同下一篇:拉近或拉远摄像头>
SceneCameraZoom
拉近或拉远摄像头

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-10-31 00:00:00
此函数作用为拉近或拉近远摄像头，每执行一次会将摄像头拉近（或者拉远）1级。

当摄像头与人物之间的距离最近（或者最远）时执行此接口，此接口不再生效。

如需修改摄像头的默认缩放范围，可使用接口CL:SetZoomMaxAndMinLevel进行设置。

如需循环拉近场景摄像头与人物之间的距离，可使用接口CL:SceneCameraZoomIn进行设置。

note_icon 备注
此接口与接口CL:SceneCameraZoomIn的区别如下：

当摄像头与人物之间的距离最近时执行此接口，此接口不会生效；

当摄像头与人物之间的距离最近时执行接口CL:SceneCameraZoomIn，会将摄像头与人物之间的距离自动调整为最远的距离。

语法
Luacopy 复制
CL:SceneCameraZoom(
    _Flag
)
参数
_Flag

bool

 
true拉近摄像头

false拉远摄像头

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SceneCameraZoom(true) --拉近摄像头

--每执行一次，会将摄像头拉近1级（直到摄像头与人物之间的距离最近为止）。
CL:SceneCameraZoom(false) --拉远摄像头

--每执行一次，会将摄像头拉远1级（直到摄像头与人物之间的距离最远为止）。
<上一篇:循环切换场景摄像头与人物之间的距离下一篇:设置指定光柱特效的缩放值>
SetBeamEffectScaleByImageID
设置指定光柱特效的缩放值

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置指定光柱特效的缩放值。

语法
Luacopy 复制
CL:SetBeamEffectScaleByImageID(
    image_id,
    scale_x,
    scale_y
)
参数
image_id

unsigned int

 
指定光柱特效的图片资源ID

scale_x

int

 
X轴方向缩放（即宽度的缩放比例）

将要设置的倍数乘以10000即为设置值

例如：

5000特效图片宽度缩小至原始宽度的一半大小

10000特效图片宽度为原始宽度

20000特效图片宽度放大1倍，为原始宽度的2倍大小

scale_y

int

 
Y轴方向缩放（即高度的缩放比例）

将要设置的倍数乘以10000即为设置值

规则和scale_x相同，不再赘述。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetBeamEffectScaleByImageID(3035320000,5000,5000) --设置指定光柱特效的宽度和高度均为原来的一半大小

--此示例代码运行前光柱特效大小如下图所示。

SetBeamEffectScaleByImageID.png

--此示例代码运行后光柱特效大小如下图所示。

SetBeamEffectScaleByImageID_2.png
<上一篇:拉近或拉远摄像头下一篇:设置场景亮度>
SetBrightness
设置场景亮度

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数设置场景亮度。

参考 GetBrightness

语法
Luacopy 复制
CL:SetBrightness(
    _Value
)
参数
_Value

float

 
场景亮度

亮度调节范围：0.5-1.5（默认值为1）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示（场景亮度为1）。
SetBrightness_2.png
CL:SetBrightness(1.5) --设置场景亮度为1.5
dbg("场景亮度为"..CL:GetBrightness()) --获取场景亮度

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

SetBrightness.png

GetBrightness_2.png
<上一篇:设置指定光柱特效的缩放值下一篇:设置当前地图的颜色>
SetCurMapLightColor
设置当前地图的颜色

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-08-23 00:00:00
此函数设置当前地图的颜色。

设置当前地图的颜色可以通过接口实时设置，还可以通过后台地图模板表中字段对地图进行颜色配置，两者效果一致；

地图模板表配置对应选项访问路径为：游戏工具平台→游戏配置→地图→地图模板表→其他相关区域。

SetCurMapLightColor.png
note_icon 备注
在地图模板表或者函数中，红色、绿色和蓝色通道比例设置为100，100，100，则保持地图原来颜色不变。

语法
Luacopy 复制
CL:SetCurMapLightColor(
    r_percent,
    g_percent,
    b_percent
)
参数
r_percent

int

 
红色通道占比

默认值为100，范围为0~65535

g_percent

int

 
绿色通道占比

默认值为100，范围为0~65535

b_percent

int

 
蓝色通道占比

默认值为100，范围为0~65535

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetCurMapLightColor(50,50,200)

--颜色通道占比分别为50，50，200的地图颜色如图所示。

SetCurMapLightColor_2.png

CL:SetCurMapLightColor(50,50,100)

--颜色通道占比分别为50，50，100的地图颜色如图所示。

SetCurMapLightColor_3.png

CL:SetCurMapLightColor(50,50,10)

--颜色通道占比分别为50，50，10的地图颜色如图所示。

SetCurMapLightColor_4.png

CL:SetCurMapLightColor(50,150,10)

--颜色通道占比分别为50，150，10的地图颜色如图所示。

SetCurMapLightColor_5.png
<上一篇:设置场景亮度下一篇:设置场景地图遮罩的范围>
SetDarkMaskRange
设置场景地图遮罩的范围

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-08-14 00:00:00
此函数设置场景地图遮罩的范围。

语法
Luacopy 复制
CL:SetDarkMaskRange(
    _Range
)
参数
_Range

float

 
地图遮罩的范围，值越大光圈的范围越小，默认值为1，范围0~100。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置当前地图的颜色下一篇:设置小地图高亮图片>
SetLittleMapHighlightImage
设置小地图高亮图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置小地图高亮图片，该图片会改在小地图的上层。

语法
Luacopy 复制
CL:SetLittleMapHighlightImage( 
    _ImageID,
    _OffX,
    _OffY
)

参数
_ImageID

unsigned int

 
图片资源的ID。

_OffX

int

 
X轴偏移。

_OffY

int

 
Y轴偏移。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetLittleMapHighlightImage(1800700058, 0, 0)

--此示例代码执行成功结果如下图所示。小地图显示出透明质感。

SetLittleMapHighlightImage
<上一篇:设置场景地图遮罩的范围下一篇:设置小地图遮罩图片>
SetLittleMapMaskImage
设置小地图遮罩图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置小地图的遮罩图片。

一般用于改变小地图的显示形状，如圆形变方形或方形变圆形。

语法
Luacopy 复制
CL:SetLittleMapMaskImage( 
    _ImageID,
    _OffX,
    _OffY
)

参数
_ImageID

unsigned int

 
遮罩图片资源的ID。

_OffX

int

 
X轴偏移。

_OffY

int

 
Y轴偏移。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetLittleMapMaskImage(1800700059, -23, -39)

--此示例代码运行成功如下图所示。

SetLittleMapMaskImage
<上一篇:设置小地图高亮图片下一篇:设置大地图是否锁定纵横比缩放>
SetLockMapAspectStatus
设置大地图是否锁定纵横比缩放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置大地图是否锁定纵横比缩放。

默认状态下，大地图缩略图面板中的图片根据面板纵横比填充。如有需要，可使用此接口设置锁定图片纵横缩放。

锁定图片纵横缩放的效果如下图。

SetLockMapAspectStatus

语法
Luacopy 复制
CL:SetLockMapAspectStatus(
    _LockStatus
)
参数
_LockStatus

bool

 
true锁定纵横比

false不锁定纵横比

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）中的BigMapWindow.lua脚本文件中的BigMapCtrl控件为例。
BigMapWindow = {}
function BigMapWindow.main()

--……省略部分代码

    _GUIHandle = GUI:ImageCreate(_Parent,"BigMapCtrl",0,35 + addX,94 + addY)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0) --设置窗体控件的自定义参数的值为0
        GUI:WndSetSizeM(_GUIHandle,600, 376) --设置窗口大小为600*376
        CL:SetLockMapAspectStatus(true) --设置大地图锁定纵横比缩放
        GUI:WndSetUserData(_GUIHandle,1857060008,0) --设置大地图的遮罩
    end

--……省略部分代码
end

--……省略部分代码

BigMapWindow.main()
<上一篇:设置小地图遮罩图片下一篇:设置地图背景音乐的循环播放次数>
SetMapBGMPlayCount
设置地图背景音乐的循环播放次数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-08-11 00:00:00
此函数设置地图背景音乐的循环播放次数。

note_icon 备注
默认情况下，背景音乐无限循环。

语法
Luacopy 复制
CL:SetMapBGMPlayCount(
    _MapName,
    _Count
)
参数
_MapName

string

 
地图的索引名（KeyName）

caution_icon 注意
2D手游调用此接口时，需要使用接口UTF82GBK将此参数转成GBK编码格式。

_Count

int

 
背景音乐的循环播放次数

播放次数须大于等于1

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

 
v1.2

 
新增对2D端游支持

示例代码
Luacopy 复制
local str = "vip挂机地图一层"
str = CL:UTF82GBK(str)
CL:SetMapBGMPlayCount(str,2)
<上一篇:设置大地图是否锁定纵横比缩放下一篇:设置地图上字体、颜色等信息>
SetMapIconInfo
设置地图上字体、颜色等信息

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-09-09 16:34:00
此函数设置地图上字体，颜色等信息。

语法
Luacopy 复制
CL:SetMapIconInfo(
    _Table
)
参数
_Table

table

 
地图上字体，颜色等信息配置

Luacopy 复制
obj = {
    JumpNameFont= "SIMLI18",
    JumpNameColor = GUI:MakeColor(0,0,255,255),
    BossTimeFont = "SIMLI18",
    BossTimeColor = GUI:MakeColor(0,0,255,255),
    DescFont = "SIMLI18",
    DescColor = GUI:MakeColor(0,0,255,255),
    UseJumpName = true,
    JumpPointImageId = 0
}
note_icon 备注
JumpNameFont(string)：跳转点文本字体。

JumpNameColor(int)：跳转点文本颜色。

BossTimeFont(string)：boss倒计时文本字体。

BossTimeColor(int)：boss倒计时文本颜色。

DescFont(string)：描述文本字体。

DescColor(int)：描述文本颜色。

UseJumpName(bool)：跳转点是否显示，true默认显示，false鼠标移上去才显示。

JumpPointImageId(float)：跳转点自定义图片，0表示使用程序绘制图形。

其中跳转点文本颜色、boss倒计时文本颜色、描述文本颜色可以在工具后台小地图图标表配置，小地图图标表配置优先级大于接口配置。

返回值
此函数无返回值。

bool

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local table = {
    JumpNameFont= "SIMLI18",
    JumpNameColor = GUI:MakeColor(0,0,255,255),
    BossTimeFont = "SIMLI18",
    BossTimeColor = GUI:MakeColor(0,0,255,255),
    DescFont = "SIMLI18",
    DescColor = GUI:MakeColor(0,0,255,255),
    UseJumpName = true,
    JumpPointImageId = 0
}
CL:SetMapIconInfo(table)
<上一篇:设置地图背景音乐的循环播放次数下一篇:设置角色在场景中显示位置的偏移值>
SetPlayerGridOffset
设置角色在场景中显示位置的偏移值

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-08-05 00:00:00
此函数设置角色在场景中显示位置的偏移值，基准点为场景中心点。

语法
Luacopy 复制
CL:SetPlayerGridOffset(
    _X,
    _Y
)
参数
_X

int

 
水平方向的偏移值（单位为逻辑格）

手游：正数代表向左偏移，负数代表向右偏移；

端游：正数代表向右偏移，负数代表向左偏移。

_Y

int

 
垂直方向的偏移值（单位为逻辑格）

正数向下偏移

负数向上偏移

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示，角色在场景中心点位置（端游）。

SetPlayerGridOffset.png
CL:SetPlayerGridOffset(5, 5) --设置角色在场景中的显示位置同时向右、向下偏移5个逻辑格。

--此示例代码运行成功如下图所示。

SetPlayerGridOffset_2.png
<上一篇:设置地图上字体、颜色等信息下一篇:设置场景中指定部件的亮度>
SetSceneLight
设置场景中指定部件的亮度

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-08-05 00:00:00
此函数设置场景中指定部件的亮度。

语法
Luacopy 复制
CL:SetSceneLight(
    type,
    gamma
)
参数
type

string

 
部件类型

"map_tiles"地表

"map_objects"场景物件

"role_body"角色身体（包括玩家、怪物、NPC和假人）

gamma

float

 
指定部件类型的分量颜色亮度比

默认值为1.0，范围为[0.001-10.0]。

note_icon 备注
分量颜色的计算公式：[RGB] * POW(1.0 / gamma)

其中，POW为幂函数，RGB为纹理颜色的颜色值（从0到1的小数）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetSceneLight("role_body", 1.8) --设置场景中的角色身体部分的分量颜色亮度比为1.8

--此示例代码运行成功如下图所示。

--左边为设置了角色身体亮度后的效果，右边为未设置的效果。

SetSceneLight.png
<上一篇:设置角色在场景中显示位置的偏移值下一篇:设置场景是否可见>
SetSceneVisible
设置场景是否可见

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置场景是否可见。

语法
Luacopy 复制
CL:SetSceneVisible(
    _Flag
)
参数
_Flag

boolean

 
true可见

false不可见

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetSceneVisible(false)

--此示例代码运行成功如下图所示。

SetSceneVisible
<上一篇:设置场景中指定部件的亮度下一篇:无视map表的遮罩配置直接控制遮罩>
SetShowDarkMaskIgnoreDB
无视map表的遮罩配置直接控制遮罩

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-08-14 00:00:00
此函数无视map表的遮罩配置直接控制遮罩。

语法
Luacopy 复制
CL:SetShowDarkMaskIgnoreDB(
    _Show
)
参数
_Show

int

 
-1走map表原逻辑，为默认值

1关闭遮罩

0开启遮罩

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置场景是否可见下一篇:设置场景地图是否显示蜡烛遮罩效果>
SetShowDarkMask
设置场景地图是否显示蜡烛遮罩效果

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-05-30 00:00:00
此函数设置场景地图是否显示蜡烛遮罩效果。

请先确保所要设置的场景地图已开启蜡烛效果遮罩，然后使用此接口在游戏运行时设置显示或不显示遮罩。

请至游戏工具平台→地图模板表，进入某个地图编辑界面，其他相关设置分类下，是否有遮罩输入框中填入2，代表蜡烛遮罩效果。

开启蜡烛遮罩的效果如下图。

SetShowDarkMask

语法
Luacopy 复制
CL:SetShowDarkMask(
    _ShowDarkMask
)
参数
_ShowDarkMask

bool

 
true显示

false不显示

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:无视map表的遮罩配置直接控制遮罩下一篇:设置是否显示场景掉落物品的光柱特效>
SetShowItemBeamEffect
设置是否显示场景掉落物品的光柱特效

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-05-30 00:00:00
此函数设置是否显示场景掉落物品的光柱特效。

语法
Luacopy 复制
CL:SetShowItemBeamEffect( 
    _Show
)

参数
_Show

bool

 
true显示特效，为默认值

false隐藏特效

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetShowItemBeamEffect(true)

--此示例代码运行成功如下图所示，当设置显示光柱特效为true时，可以正常显示光柱特效。

SetShowItemBeamEffect

CL:SetShowItemBeamEffect(false)

--此示例代码运行成功如下图所示，当设置显示光柱特效为fasle时，光柱特效将会被隐藏。

SetShowItemBeamEffect_2
<上一篇:设置场景地图是否显示蜡烛遮罩效果下一篇:结束加载UI资源>
SetUIEnd
结束加载UI资源

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据窗口句柄结束加载UI资源。

note_icon 备注
需要和SetUIStart配套使用，否则会出错。

语法
Luacopy 复制
CL:SetUIEnd(
    _Handle
)
参数
_Handle

number

 
窗口句柄

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
CL:SetUIStart(_Parent)
CL:SetUIEnd(_Parent)
<上一篇:设置是否显示场景掉落物品的光柱特效下一篇:开始加载UI资源>
SetUIStart
开始加载UI资源

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据窗口句柄开始加载UI资源。

note_icon 备注
需要和SetUIEnd配套使用，否则会出错。

语法
Luacopy 复制
CL:SetUIStart(
    _Handle
)
参数
_Handle

number

 
窗口句柄

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
CL:SetUIStart(_Parent)
CL:SetUIEnd(_Parent)
<上一篇:结束加载UI资源下一篇:设置场景摄像头当前距离档位>
SetZoomLevel
设置场景摄像头当前距离档位

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-04-01 00:00:00
此函数作用为设置场景摄像头当前距离档位。

语法
Luacopy 复制
CL:SetZoomLevel(
    _Level
)
参数
_Level

int

 
场景摄像头当前距离档位（即游戏画质设置中的m_ZoomLevel字段的值）

note_icon 备注
若未使用接口CL:SetZoomMaxAndMinLevel修改摄像机的默认缩放范围，则此接口返回值的范围为m_ZoomLevel字段的默认范围（端游为-2至2，手游为-1至2）；

若使用接口CL:SetZoomMaxAndMinLevel修改了摄像机的默认缩放范围，则此接口返回值的范围为接口CL:SetZoomMaxAndMinLevel的设置范围。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetZoomLevel(0)
<上一篇:开始加载UI资源下一篇:设置场景摄像头的缩放范围>
SetZoomMaxAndMinLevel
设置场景摄像头的缩放范围

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-03-18 00:00:00
此函数作用为设置场景摄像头的缩放范围。

语法
Luacopy 复制
CL:SetZoomMaxAndMinLevel(
    _MaxLevel,
    _MinLevel
)
参数
_MaxLevel

int

 
最大值

_MinLevel

int

 
最小值

note_icon 备注
参数_MaxLevel（最大值）的值需要大于参数_MinLevel（最小值）的值。

端游设置的最佳范围为-2至2，手游设置的最佳范围为-1至2，超出范围请自行调节。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetZoomMaxAndMinLevel(2,-3) --设置场景摄像头的缩放范围
--获取场景摄像头的缩放范围
if CL:GetZoomMaxAndMinLevel() then
    local _MaxLevel = LuaRet[1]
    local _MinLevel = LuaRet[2]
    dbg("最大值为：" .. _MaxLevel)
    dbg("最小值为：" .. _MinLevel)
end

--此示例代码运行成功如下图所示。

--当场景摄像头的缩放范围为2时，效果如下图所示。

SetZoomMaxAndMinLevel.png

--当场景摄像头的缩放范围为-3时，效果如下图所示。

SetZoomMaxAndMinLevel_2.png

--控制台打印内容如下图所示。

GetZoomMaxAndMinLevel.png
<上一篇:设置场景摄像头当前距离档位
AutoFindPathByNPCKeyName
自动寻路到达NPC所在位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-12-02 00:00:00
此函数让角色自动寻路到达指定NPC所在位置。

程序会优先寻找角色当前所在地图是否存在指定NPC，如果没有指定NPC，再寻找其他地图是否存在该NPC。

语法
Luacopy 复制
CL:AutoFindPathByNPCKeyName( 
    _Name,
    _QuestID
)

参数
_Name

string

 
NPC的索引名

例如：“手游寄售商人”。

NPCKeyName.png
caution_icon 注意
2D手游调用此接口时，需要使用接口UTF82GBK将此参数转成GBK编码格式。

_QuestID

int

 
任务ID

参数未启用，填0即可。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
优化接口寻找NPC的逻辑

示例代码
Luacopy 复制
CL:AutoFindPathByNPCKeyName("手游寄售商人",0)
下一篇:获取大地图面板中的NPC及跳转点名称（扩展）>
GetJumpAndNPCStringListEx
获取大地图面板中的NPC及跳转点名称（扩展）

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-09-04 17:45:00
此函数获取大地图面板中的NPC及跳转点名称（扩展）（需要在大地图面板中调用）。

语法
Luacopy 复制
CL:GetJumpAndNPCStringListEx()
参数
无

返回值
此函数无返回值。

note_icon 备注
获取的信息存储在全局变量LuaRet中。

LuaRet[1][1]tag，程序使用的标记。

LuaRet[1][2]NPC或者跳转点的名称（string）。

LuaRet[1][3]类型，1代表跳转点、2表示NPC。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--放入BigMapWindow.lua执行，省略部分代码
CL:GetJumpAndNPCStringListEx()
local jumpAndNpcList = LuaRet
local eDataType = 0 --1jump2npc
for i = 1, #LuaRet do
    local intervalY = 64
    local indexStr = tostring(i - 1)
    local _GUIHandle = GUI:ButtonCreate(_Parent, "CellBackButton" .. indexStr, 4007210028, 3, 30 + intervalY * (i - 1))
    if _GUIHandle ~= 0 then
        GUI:ButtonSetImageIndex(_GUIHandle, 0, 0, 0, 0)--正常-悬浮-按下-不可用----------设置按钮各个状态图片相对于主图片的ID偏移
        GUI:WndSetParam(_GUIHandle, i)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "BigMapWindow.SelNpcUp")
        eDataType = jumpAndNpcList[i][3]
        if eDataType == 1 then
            GUI:WndSetTextM(_GUIHandle, jumpAndNpcList[i][2].."跳转点")
            GUI:WndSetTextColorM(_GUIHandle,COLOR_GREENG)
        elseif eDataType == 2 then        
            GUI:WndSetTextM(_GUIHandle, jumpAndNpcList[i][2])
            GUI:WndSetTextColorM(_GUIHandle,COLOR_ORANGE)
        end
        
    end
end

function BigMapWindow.SelNpcUp(_Handle)
    local param = GUI:WndGetParam(_Handle)--取出本次选中的按钮参数
    CL:NPCListBoxOnLButtonUpEx(jumpAndNpcList[param])
end

--执行示例代码，如下图所示，点击“装备大师”，便会自动寻路到“装备大师”。

GetJumpAndNPCStringListEx.png
<上一篇:自动寻路到达NPC所在位置下一篇:获取大地图面板中的NPC及跳转点名称>
GetJumpAndNPCStringList
获取大地图面板中的NPC及跳转点名称

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2023-06-16 00:00:00
此函数获取大地图面板中的NPC及跳转点名称（需要在大地图面板中调用）。

语法
Luacopy 复制
CL:GetJumpAndNPCStringList()
参数
无

返回值
此函数无返回值。

note_icon 备注
获取的名称信息存储在全局变量LuaRet中。

i为序号

LuaRet[i]NPC或者跳转点的名称（string）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:OnOpenWorld() --打开大地图面板

function GetJumpAndNpcListCount()
    local listCount = 0
    local t_npcList = {}
    CL:GetJumpAndNPCStringList()
    local tb = LuaRet
    local i = 1
    for i = 1, #tb do
        dbg("i = "..tostring(i))
        dbg("v = "..tostring(LuaRet[i]))
        t_npcList[i] = LuaRet[i]
        listCount = listCount + 1
    end
    dbg("leng = "..listCount)
    return listCount
end

local listCount = GetJumpAndNpcListCount()
dbg("总共数量为count = "..tostring(listCount))

--此示例代码运行成功如下图所示（仅截取部分）。

GetJumpAndNpcListCount.png
<上一篇:获取大地图面板中的NPC及跳转点名称（扩展）下一篇:获取NPC关联任务的状态>
GetNpcQuestStateByID
获取NPC关联任务的状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据NPC的GUID获取指定NPC关联任务的状态。

语法
Luacopy 复制
CL:GetNpcQuestStateByID( 
    _NpcGuidStr
)

参数
_NpcGuidStr

string

 
NPC的GUID

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回获取成功或失败。如获取成功，获取的任务状态（类型：int）存储在全局变量LuaRet中。

0此NPC无关联任务

1任务为“可交”状态

2任务为“可接”状态

3任务为“已接不可交”状态

当指定NPC未出现在玩家视野中或填写的NPC的GUID不存在时，会返回获取失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）巫山城地图中的NPC“[坐骑]驯兽师”为例。

--指定NPC关联的任务为“可交”状态，效果下图所示。

GetNPCQuestStateByID_2.png

--指定NPC关联的任务为“可接”状态，效果下图所示。

GetNPCQuestStateByID_6.png

--指定NPC关联的任务为“已交不可接”状态，效果下图所示。

GetNPCQuestStateByID_4.png
if UI:Lua_Str2GUID("3o88m165fdg5n") then --服务端的GUID转换为客户端的GUID
    npc_guid = LuaRet
end

if CL:GetNpcQuestStateByID(npc_guid) then --根据NPC的GUID获取NPC关联任务的状态
    local task_state = LuaRet
    dbg("任务状态为"..task_state)
else
    dbg("NPC未出现在玩家视野中或获取失败")
end

--当指定NPC关联的任务为“可交”状态时，运行结果如下图所示。

GetNPCQuestStateByID.png

--当指定NPC关联的任务为“可接”状态时，运行结果如下图所示。

GetNPCQuestStateByID_5.png

--当指定NPC关联的任务为“已交不可接”状态时，运行结果如下图所示。

GetNPCQuestStateByID_3.png

--当指定NPC无关联任务时，运行结果如下图所示。

GetNPCQuestStateByID_8.png

--当指定NPC未出现在玩家视野中时，运行结果如下图所示。

GetNPCQuestStateByID_7.png
<上一篇:获取大地图面板中的NPC及跳转点名称下一篇:获取NPC的模板信息>
GetNpcTemplateInfo
获取NPC的模板信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-11-06 00:00:00
此函数根据NPC的索引名（KeyName）获取该NPC的模板信息。

语法
Luacopy 复制
CL:GetNpcTemplateInfo( 
    _KeyName
)

参数
_KeyName

string

 
NPC的索引名（KeyName）

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的NPC模板信息存储在全局变量LuaRet中。

LuaRet[1]NPC名字；

LuaRet[2]NPC称号；

LuaRet[3]头顶图片资源ID；

LuaRet[4]NPC的半身像图片资源ID；

LuaRet[5]NPC图片名字的资源ID；

LuaRet[6]NPC名字的透明度和颜色十六进制值（例如：FF03ED03）转换为十进制（例如：4278447363）后的数值。如使用了默认颜色，则为0。

LuaRet[7]NPC的模板ID。

LuaRet[8]NPC的模型ID。

版本历史
v1.0

 
首次发布

 
v1.1

 
增加获取NPC模板ID

 
v1.2

 
新增对手游支持

 
v1.3

 
增加获取NPC模型ID

示例代码
Luacopy 复制
CL:GetNpcTemplateInfo("东临城药材商")

--获取的NPC模板信息结构示例如下。
{
    [1] = "药材商",
    [2] = "东临城药材商",
    [3] = 1042200000,
    [4] = 1990705618,
    [5] = 0,
    [6] = "0",
    [7] = 46
    [8] = 5618
}
<上一篇:获取NPC关联任务的状态下一篇:设置小地图中是否显示NPC对应的绿色图标>
LittleMapShowNpc
设置小地图中是否显示NPC对应的绿色图标

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-07-07 00:00:00
此函数设置小地图中是否显示NPC对应的绿色图标。

NPC对应的绿色图标如下图所示。

LittleMapShowNpc.png
语法
Luacopy 复制
CL:LittleMapShowNpc(
    show
)
参数
show

bool

 
是否显示NPC对应的绿色图标

true显示

false不显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LittleMapShowNpc(true) --设置小地图中显示NPC对应的绿色图标
<上一篇:获取NPC的模板信息下一篇:自动寻路走向NPC或跳转点（扩展）>
NPCListBoxOnLButtonUpEx
自动寻路走向NPC或跳转点（扩展）

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-09-04 17:45:00
此函数自动自动寻路走向指定的NPC或跳转点。

语法
Luacopy 复制
CL:NPCListBoxOnLButtonUpEx( 
    _SelString
)

参数
_SelString

string

 
NPC或跳转点名称。

CL:GetJumpAndNPCStringListEx返回的列表LuaRet内的元素，原样传递。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--放入BigMapWindow.lua执行，省略部分代码
CL:GetJumpAndNPCStringListEx()
local jumpAndNpcList = LuaRet
local eDataType = 0 --1jump2npc
for i = 1, #LuaRet do
    local intervalY = 64
    local indexStr = tostring(i - 1)
    local _GUIHandle = GUI:ButtonCreate(_Parent, "CellBackButton" .. indexStr, 4007210028, 3, 30 + intervalY * (i - 1))
    if _GUIHandle ~= 0 then
        GUI:ButtonSetImageIndex(_GUIHandle, 0, 0, 0, 0)--正常-悬浮-按下-不可用----------设置按钮各个状态图片相对于主图片的ID偏移
        GUI:WndSetParam(_GUIHandle, i)
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "BigMapWindow.SelNpcUp")
        eDataType = jumpAndNpcList[i][3]
        if eDataType == 1 then
            GUI:WndSetTextM(_GUIHandle, jumpAndNpcList[i][2].."跳转点")
            GUI:WndSetTextColorM(_GUIHandle,COLOR_GREENG)
        elseif eDataType == 2 then        
            GUI:WndSetTextM(_GUIHandle, jumpAndNpcList[i][2])
            GUI:WndSetTextColorM(_GUIHandle,COLOR_ORANGE)
        end
        
    end
end

function BigMapWindow.SelNpcUp(_Handle)
    local param = GUI:WndGetParam(_Handle)--取出本次选中的按钮参数
    CL:NPCListBoxOnLButtonUpEx(jumpAndNpcList[param])
end

--执行示例代码，如下图所示，点击“装备大师”，便会自动寻路到“装备大师”。

GetJumpAndNPCStringListEx.png
<上一篇:设置小地图中是否显示NPC对应的绿色图标下一篇:自动寻路走向NPC或跳转点>
NPCListBoxOnLButtonUp
自动寻路走向NPC或跳转点

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数会打开大地图面板，自动自动寻路走向指定的NPC或跳转点。

语法
Luacopy 复制
CL:NPCListBoxOnLButtonUp( 
    _SelString
)

参数
_SelString

string

 
NPC或跳转点名称。

在游戏中打开大地图面板，会显示当前场景地图中NPC和跳转点的名称。

NPCList

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:NPCListBoxOnLButtonUp("龙城跳转点")
<上一篇:自动寻路走向NPC或跳转点（扩展）下一篇:打开并设置NPC对话框>
SetTalkInfo
打开并设置NPC对话框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数打开并设置NPC对话框。

语法
Luacopy 复制
CL:SetTalkInfo( 
    _TalkInfo,
    _Width,
    _Height
)

参数
_TalkInfo

string

 
对话框的内容。

_Width

int

 
对话框的宽度。

_Height

int

 
对话框的高度。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetTalkInfo("文本内容",300,200)

--此示例代码运行成功如下图所示。

SetTalkInfo
<上一篇:自动寻路走向NPC或跳转点
ClearCustomLockItem
取消所有使用接口锁定的物品的锁定状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-04-01 00:00:00
此函数取消所有使用接口CL:CustomLockItem锁定的物品的锁定状态。

语法
Luacopy 复制
CL:ClearCustomLockItem()
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
--以官方45度美术资源展示（区号：3104）中的Package.lua文件为例
Package = {}

--……省略部分代码

function Package.UIInit( _Handle )
--……省略部分代码

    CL:AddDelayTask("Package.Timer(1)", 1000, 1)  --1秒后执行
    CL:AddDelayTask("CL:ClearCustomLockItem()", 2000, 1)  --2秒后清除物品的锁定状态
end

function Package.Timer(param)
    local _GUIDataHandle = GetWindow(Package.WndHandle, "Item2")
    if 0 ~= _GUIDataHandle then
	    --获取物品框中物品的GUID
        local guid = RDItemCtrlGetGUIDataPropByType(_GUIDataHandle, nil, ITEMGUIDATA_ITEMGUID);
        CL:CustomLockItem(guid,param == 1)  --当传入参数为1时，锁定物品；当传入参数不为1时，取消锁定
    end 
end 

--……省略部分代码

Package.main()

--此示例代码运行成功如下图所示。

--锁定时的效果

CustomLockItem.png

--取消锁定时的效果

CustomLockItem_2.png
下一篇:清空鼠标上的物品>
ClearMouseGUIItemData
清空鼠标上的物品

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-05-26 00:00:00
此函数执行清空鼠标上的物品的操作。

清除后，鼠标上跟随的物品将会消失。

语法
Luacopy 复制
CL:ClearMouseGUIItemData()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
local _Handle = GUI:WndFindChildM(Package.WndHandle, "Item0") --获取背包中第一个物品框控件的句柄
if _Handle ~= 0 then
    _GUIData = GUI:ItemCtrlGetGUIData(_Handle) --获取第一个物品框中物品的GUIData句柄
    CL:SetMouseGUIItemData(_GUIData) --设置为鼠标上的物品
    CL:ClearMouseGUIItemData() --清空鼠标上的物品
end

--运行示例代码前，先打开背包界面，执行后鼠标上没有物品跟随。
<上一篇:取消所有使用接口锁定的物品的锁定状态下一篇:设置是否锁定物品>
CustomLockItem
设置是否锁定物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-04-01 00:00:00
此函数设置是否锁定物品。

语法
Luacopy 复制
CL:CustomLockItem(
    _ItemGUID,
    _Lock
)
参数
_ItemGUID

string

 
物品的GUID

_Lock

bool

 
是否锁定物品

true锁定

false取消锁定

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）中的Package.lua文件为例
Package = {}

--……省略部分代码

function Package.UIInit( _Handle )
--……省略部分代码

    CL:AddDelayTask("Package.Timer(1)", 1000, 1)  --1秒后执行
    CL:AddDelayTask("CL:ClearCustomLockItem()", 2000, 1)  --2秒后清除物品的锁定状态
end

function Package.Timer(param)
    local _GUIDataHandle = GetWindow(Package.WndHandle, "Item2")
    if 0 ~= _GUIDataHandle then
	    --获取物品框中物品的GUID
        local guid = RDItemCtrlGetGUIDataPropByType(_GUIDataHandle, nil, ITEMGUIDATA_ITEMGUID);
        CL:CustomLockItem(guid,param == 1)  --当传入参数为1时，锁定物品；当传入参数不为1时，取消锁定
    end 
end 

--……省略部分代码

Package.main()

--此示例代码运行成功如下图所示。

--锁定时的效果

CustomLockItem.png

--取消锁定时的效果

CustomLockItem_2.png
<上一篇:清空鼠标上的物品下一篇:整理物品>
DoItemArrange
整理物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行整理物品的操作。

语法
Luacopy 复制
CL:DoItemArrange( 
    _ArrangeType
)

参数
_ArrangeType

int

 
要整理物品的类型。

0背包

1仓库

2高级仓库

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:DoItemArrange(0) --整理背包

--以下是整理前。



--执行后，整理效果如下。


<上一篇:设置是否锁定物品下一篇:根据GUID删除临时缓存物品>
GameItemDataDelTempItem
根据GUID删除临时缓存物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据GUID删除临时缓存物品。

例如在寄售行交易时，对交易的物品进行临时的缓存处理。当交易结束后，清空缓存的物品。

语法
Luacopy 复制
CL:GameItemDataDelTempItem( 
    _ItemGUID
)

参数
_ItemGUID

string

 
物品的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:整理物品下一篇:获取Att的属性>
GetAttrProp
获取Att的属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据Att模板ID获取Att的属性值。

语法
Luacopy 复制
CL:GetAttrProp( 
    _AttrID,
    _PropType
)

参数
_AttrID

int

 
Attr的模板ID。

_PropType

int

 
Att的属性类型。

点击Att属性了解更多信息。

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
CL:GetAttrProp(1,3) --每个区的AttID都不相同，示例为3104区的Att表
dbg("索引名："..LuaRet)

--控制台将输出“索引名：职业”。
<上一篇:根据GUID删除临时缓存物品下一篇:获取物品设置中当前分类下所有物品的ID>
GetClassificationItemIds
获取物品设置中当前分类下所有物品的ID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-24 00:00:00
此函数获取物品设置中当前分类下所有物品的ID。

具体请参见FAQ说明：如何开启新的物品设置功能。

语法
Luacopy 复制
CL:GetClassificationItemIds(
    name
)
参数
name

string

 
分类项的索引名称

返回值
string

 
物品ID的列表

格式为"物品1的ID,物品2的ID,物品3的ID"

例如："1,2,3,4,5"

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
dbg("物品ID的列表："..CL:GetClassificationItemIds("经验丹"))

--此示例代码运行成功如下图所示。

GetClassificationItemIds.png
<上一篇:获取Att的属性下一篇:获取物品设置中所有分类项的勾选状态>
GetClassificationsInfo
获取物品设置中所有分类项的勾选状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-24 00:00:00
此函数获取物品设置中所有分类项的勾选状态。

具体请参见FAQ说明：如何开启新的物品设置功能。

caution_icon注意
优先关注函数返回值。

语法
Luacopy 复制
CL:GetClassificationsInfo()
参数
无

返回值
int

 
分类项的个数

note_icon 备注
获取的分类项信息存储在全局变量LuaRet中。

LuaRet[i]第i个分类项的信息，i为索引（从1开始）。

分类项信息的格式为"分类项的索引名称,“显示名称”选项的勾选状态,“手动拾取”选项的勾选状态,“挂机拾取”选项的勾选状态"

勾选状态：0代表未勾选，1代表勾选。

例如："其他,1,1,1"

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local ItemType = {}
local Item_typelist = {}
if CL:GetClassificationsInfo() ~= 0 then
    ItemType = LuaRet
end 
for i = 1 ,#ItemType do
    Item_typelist[#Item_typelist + 1] = split(ItemType[i], ",")
    dbg(ItemType[i])
end

--此示例代码运行成功如下图所示。

GetClassificationsInfo.png
<上一篇:获取物品设置中当前分类下所有物品的ID下一篇:获取物品设置中拾取设置表数据>
GetGameItemSettingData
获取物品设置中拾取设置表数据

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-10-21 00:00:00
此函数获取物品设置中拾取设置表数据，即“辅助设置”中物品“极品提示”、“自动拾取”和“显示名称”选项的勾选状态。

如下图所示。

GetGameItemSettingData_2.png
语法
Luacopy 复制
CL:GetGameItemSettingData()
参数
无

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
如操作成功，则获取的信息存储在全局变量LuaRet中。

获取的5个值依次对应“辅助设置”中物品“极品提示”选项、“自动拾取”选项、“显示名称”选项、物品ID和物品名称。

其中，“极品提示”选项、“自动拾取”选项、“显示名称”选项的取值为对应选项的勾选状态（1表示勾选，0表示未勾选）。

版本历史
v1.0

 
首次发布

 
v1.1

 
支持获取物品设置中物品的ID和物品的名称

示例代码
Luacopy 复制
local ret = CL:GetGameItemSettingData()
if ret then
    dbg("三个选项依次为“极品提示”、“自动拾取”、“显示名称”、“物品id”、“物品名”（1表示勾选，0表示未勾选）。")
    local tb = LuaRet
    for i = 1,#tb do
        dbg("第"..i.."个物品的勾选状态："..tb[i])
    end
end

--此示例代码运行成功如下图所示（截取部分）。

GetGameItemSettingData.png
<上一篇:获取物品设置中所有分类项的勾选状态下一篇:获取物品设置中当前物品的勾选状态>
GetItemClickInfo
获取物品设置中当前物品的勾选状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-24 00:00:00
此函数获取物品设置中当前物品的勾选状态。

具体请参见FAQ说明：如何开启新的物品设置功能。

语法
Luacopy 复制
CL:GetItemClickInfo(
    template_id
)
参数
template_id

int

 
物品的ID

返回值
string

 
物品信息

格式为"物品的ID,物品的名称,显示名称选项的勾选状态,手动拾取选项的勾选状态,挂机拾取选项的勾选状态"

note_icon 备注
勾选状态：0代表未勾选，1代表勾选。

例如："20,金币,1,1,1"

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
dbg("物品信息为 "..CL:GetItemClickInfo(21280))

--此示例代码运行成功如下图所示。

GetItemClickInfo.png
<上一篇:获取物品设置中拾取设置表数据下一篇:获取物品自定义整型变量>
GetItemEntityCustomVarInt
获取物品自定义整型变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的实体句柄获取整型的自定义变量。

语法
Luacopy 复制
CL:GetItemEntityCustomVarInt( 
    _ItemEntityHandle,
    _ItemCustomKey
)

参数
_ItemEntityHandle

int

 
物品的实体句柄。

_ItemCustomKey

string

 
自定义变量的索引名。

返回值
int

 
自定义变量的值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取物品设置中当前物品的勾选状态下一篇:获取物品自定义字符串变量>
GetItemEntityCustomVarStr
获取物品自定义字符串变量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的实体句柄获取字符串型的自定义变量。

语法
Luacopy 复制
CL:GetItemEntityCustomVarStr( 
    _ItemEntityHandle,
    _ItemCustomKey
)

参数
_ItemEntityHandle

int

 
物品的实体句柄。

_ItemCustomKey

string

 
自定义变量的索引名。

返回值
string

 
自定义变量的值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取物品自定义整型变量下一篇:根据GUID获取物品的实体句柄>
GetItemEntityHandleByGUID
根据GUID获取物品的实体句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的GUID获取该物品的实体句柄。

语法
Luacopy 复制
CL:GetItemEntityHandleByGUID( 
    _ItemGUID_Uint64Str
)

参数
_ItemGUID_Uint64Str

string

 
物品的GUID。

返回值
句柄

int

 
物品的实体句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetPackageItemGUIDList() then --获取背包物品中所有物品的GUID列表
    ItemGUIDataTable = LuaRet
end
local item_entity_handle = CL:GetItemEntityHandleByGUID(ItemGUIDataTable[1])
dbg("背包中第一个物品的实体句柄为："..item_entity_handle)

--控制台将输出“背包中第一个物品的实体句柄为：669222632”。
<上一篇:获取物品自定义字符串变量下一篇:根据GUID获取物品的属性值>
GetItemEntityPropByGUID
根据GUID获取物品的属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的GUID获取该物品的实体属性或模板属性的属性值。

语法
Luacopy 复制
CL:GetItemEntityPropByGUID( 
    _ItemGUID_Uint64Str,
    _PropType
)

参数
_ItemGUID_Uint64Str

string

 
物品的GUID

_PropType

int

 
物品的属性类型（实体属性或模板属性）

点击物品属性了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetPackageItemGUIDList() then --获取背包中所有物品的GUID列表
    ItemGUIDataTable = LuaRet
end

--根据背包中第一个物品的GUID获取其拥有者的GUID
if CL:GetItemEntityPropByGUID(ItemGUIDataTable[1], ITEM_PROP_ENTITY_ROLE) then
    dbg("背包中第一个物品的拥有者GUID："..LuaRet)
end

--控制台将输出“背包中第一个物品的拥有者GUID：421110521514369069”。
<上一篇:根据GUID获取物品的实体句柄下一篇:根据实体句柄获取物品的属性值（扩展）>
GetItemEntityPropByHandleEx
根据实体句柄获取物品的属性值（扩展）

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数根据物品的实体句柄获取该物品的实体属性或模板属性的属性值，支持获取属性值为负数的属性。

语法
Luacopy 复制
CL:GetItemEntityPropByHandleEx(
    _ItemEntityHandleID,
    _PropType
)
参数
_ItemEntityHandleID

int

 
物品的实体句柄

_PropType

int

 
物品的属性类型（实体属性或模板属性）

点击物品属性了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性值存储在LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--服务端代码
--在服务端设置该装备的第一条扩展属性的属性名3，属性值-1000
item = lualib:Player_GetItemGuid(player,lua_site_bag_0)
lualib:Equip_SetExtProp(player, item, 0,3, -1000)

--客户端代码
if CL:GetPackageItemGUIDList() then --获取背包中所有物品的GUID列表
    ItemGUIDataTable = LuaRet
end
local item_entity_handle = CL:GetItemEntityHandleByGUID(ItemGUIDataTable[1]) --根据背包中第一个物品的GUID获取其实体句柄
--根据背包中第一个物品的实体句柄获取其装备扩展属性
if CL:GetItemEntityPropByHandleEx(item_entity_handle, ITEM_PROP_EQUIP_EXT) then
    dbg("背包中第一个物品的装备扩展属性为"..serialize(LuaRet[1]))
end

--此示例代码运行成功如下图所示。

GetItemEntityPropByHandleEx.png
<上一篇:根据GUID获取物品的属性值下一篇:根据实体句柄获取物品的属性值>
GetItemEntityPropByHandle
根据实体句柄获取物品的属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的实体句柄获取该物品的实体属性或模板属性的属性值。

语法
Luacopy 复制
CL:GetItemEntityPropByHandle( 
    _ItemEntityHandleID,
    _PropType
)

参数
_ItemEntityHandleID

int

 
物品的实体句柄

_PropType

int

 
物品的属性类型（实体属性或模板属性）

点击物品属性了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性值存储在LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetPackageItemGUIDList() then --获取背包中所有物品的GUID列表
    ItemGUIDataTable = LuaRet
end

local item_entity_handle = CL:GetItemEntityHandleByGUID(ItemGUIDataTable[1]) --根据背包中第一个物品的GUID获取其实体句柄
--根据背包中第一个物品的实体句柄获取其拥有者的GUID
if CL:GetItemEntityPropByHandle(item_entity_handle, ITEM_PROP_ENTITY_ROLE) then
    dbg("背包中第一个物品的拥有者GUID："..LuaRet)
end

--控制台将输出“背包中第一个物品的拥有者GUID：421110521514369069”。
<上一篇:根据实体句柄获取物品的属性值（扩展）下一篇:根据GUIData属性类型获取物品GUIData属性值>
GetItemGUIDataPropByType
根据GUIData属性类型获取物品GUIData属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据GUIData属性类型获取物品GUIData属性值。

语法
Luacopy 复制
CL:GetItemGUIDataPropByType( 
    _ItemGUIDataHandleID,
    _PropType
)

参数
_ItemGUIDataHandleID

int

 
物品的GUIData句柄

_PropType

int

 
GUIData属性类型

点击此处了解更多信息

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ItemGUIDataTable = {}
if CL:GetPackageItemGUIDataList() then --获取背包中所有物品的GUIData句柄，结果存储在LuaRet中
    ItemGUIDataTable = LuaRet
end
if CL:GetItemGUIDataPropByType(ItemGUIDataTable[1],0) then --获取物品的GUID
    dbg("获取的属性值为："..LuaRet)
end
<上一篇:根据实体句柄获取物品的属性值下一篇:批量获取道具的属性>
GetItemPropsByGuid
批量获取道具的属性

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据GUID列表批量获取道具的属性。

语法
Luacopy 复制
CL:GetItemPropsByGuid(
    _ItemGUID_Uint64Strs,
    _PropTypes
)
参数
_ItemGUID_Uint64Strs

string

 
道具GUID列表，以','拼接

_PropTypes

string

 
属性名列表，以','拼接

返回值
boolean

 
true获取成功。

false获取失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str = ITEM_PROP_KEYNAME --索引名
..","..ITEM_PROP_NAME  --名称
..","..ITEM_PROP_TYPE  --类型
..","..ITEM_PROP_SUBTYPE	--子类型
local guidStr = ""
if CL:GetPackageItemGUIDList() then --获取背包物品guid列表
    guidStr = LuaRet[1]..","..LuaRet[2]
end
if CL:GetItemPropsByGuid(guidStr,str) then
    for i=1,#LuaRet[1] do
        dbg("物品1:"..LuaRet[1][i])
    end
end

--此示例代码运行成功如下图所示。

GetItemPropsByGuid
<上一篇:根据GUIData属性类型获取物品GUIData属性值下一篇:根据GUID获取物品的模板句柄>
GetItemTemplateHandleByGUID
根据GUID获取物品的模板句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的GUID获取该物品的模板句柄。

语法
Luacopy 复制
CL:GetItemTemplateHandleByGUID( 
    _ItemGUID_Uint64Str
)

参数
_ItemGUID_Uint64Str

string

 
物品的GUID。

返回值
句柄

int

 
物品的模板句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetPackageItemGUIDList() then --获取背包物品中所有物品的GUID列表
    ItemGUIDataTable = LuaRet
end
local item_handle = CL:GetItemTemplateHandleByGUID(ItemGUIDataTable[1])
dbg("背包中第一个物品的句柄为："..item_handle)

--控制台将输出“背包中第一个物品的句柄为：608958848”。
<上一篇:批量获取道具的属性下一篇:根据ID获取物品的模板句柄>
GetItemTemplateHandleByID
根据ID获取物品的模板句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的ID获取该物品的模板句柄。

语法
Luacopy 复制
CL:GetItemTemplateHandleByID( 
    _ID
)

参数
_ID

int

 
物品的ID

返回值
int

 
物品的模板句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_handle = CL:GetItemTemplateHandleByID(489) --根据物品的ID获取该物品的模板句柄
dbg("物品新手指南的句柄为："..item_handle)

--控制台将输出“物品新手指南的句柄为：608958848”。
<上一篇:根据GUID获取物品的模板句柄下一篇:根据索引名获取物品的模板句柄>
GetItemTemplateHandleByKeyName
根据索引名获取物品的模板句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-19 00:00:00
此函数根据物品的索引名（KeyName）获取该物品的模板句柄。

语法
Luacopy 复制
CL:GetItemTemplateHandleByKeyName( 
    _KeyName
)

参数
_KeyName

string

 
物品的索引名（KeyName）

返回值
int

 
物品的模板句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_handle = CL:GetItemTemplateHandleByKeyName("新手指南")
dbg("物品新手指南的句柄为："..item_handle)

--控制台将输出“物品新手指南的句柄为：608958848”。
<上一篇:根据ID获取物品的模板句柄下一篇:根据模板句柄获取物品的模板属性的属性值>
GetItemTemplatePropByHandle
根据模板句柄获取物品的模板属性的属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的模板句柄获取该物品的模板属性的属性值。

语法
Luacopy 复制
CL:GetItemTemplatePropByHandle( 
    _ItemTemplateHandle,
    _PropType
)
参数
_ItemTemplateHandle

int

 
物品的模板句柄

_PropType

int

 
物品的模板属性类型

点击物品模板属性了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_handle = CL:GetItemTemplateHandleByID(489) --根据物品的ID获取该物品的模板句柄

--根据物品的模板句柄获取该物品的索引名称
if CL:GetItemTemplatePropByHandle(item_handle,ITEM_PROP_KEYNAME) then
    dbg("该物品的索引名称为："..LuaRet)
end

--控制台将输出“该物品的索引名称为：新手指南”。
<上一篇:根据索引名获取物品的模板句柄下一篇:根据ID获取物品的模板属性的属性值>
GetItemTemplatePropByID
根据ID获取物品的模板属性的属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的ID获取该物品的模板属性的属性值。

语法
Luacopy 复制
CL:GetItemTemplatePropByID( 
    _ID,
    _PropType
)

参数
_ID

int

 
物品的ID

_PropType

int

 
物品的模板属性类型

点击物品模板属性了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据物品的ID获取该物品的索引名称
if CL:GetItemTemplatePropByID(489,ITEM_PROP_KEYNAME) then
    dbg("该物品的索引名称为："..LuaRet)
end

--控制台将输出“该物品的索引名称为：新手指南”。
<上一篇:根据模板句柄获取物品的模板属性的属性值下一篇:获取所有物品的模板信息>
GetItemTemplates
获取所有物品的模板信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前服务区中所有物品的模板信息。

信息包括物品编号、物品名称和物品索引名称。这些信息与工具后台中的物品模板表登录的信息一致。

语法
Luacopy 复制
CL:GetItemTemplates()

参数
无

 
返回值
bool

 
执行成功返回true，执行失败则返回false。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的物品模板信息存储在全局变量LuaRet中。

i为索引号，列表按照物品编号升序排序。

LuaRet[i][1]物品编号；

LuaRet[i][2]物品索引名称；

LuaRet[i][3]物品名称。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetItemTemplates() --获取所有物品的模板信息

--例如，获取到的前3个物品如下结构的列表。
{	
    [1] = 	
        {	
            [1] = 1,	
            [2] = "1阶武器",	
            [3] = "铜纹斩◆1阶",	
        },	
    [2] = 	
        {	
            [1] = 2,	
            [2] = "2阶武器",	
            [3] = "青丝斩◆2阶",	
        },	
    [3] = 	
        {	
            [1] = 3,	
            [2] = "3阶武器",	
            [3] = "蓝铜斩◆3阶",	
        },	
}
<上一篇:根据ID获取物品的模板属性的属性值下一篇:获取鼠标上的物品的GUIData句柄>
GetMouseGUIItemData
获取鼠标上的物品的GUIData句柄

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-05-26 00:00:00
此函数获取鼠标上的物品的GUIData句柄。

语法
Luacopy 复制
CL:GetMouseGUIItemData()

参数
无

 
返回值
dword

 
执行成功则返回物品的GUIData句柄

执行失败则返回0

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
local _Handle = GUI:WndFindChildM(Package.WndHandle, "Item0") --获取背包中第一个物品框控件的句柄
if _Handle ~= 0 then
    _GUIData = GUI:ItemCtrlGetGUIData(_Handle) --获取第一个物品框中物品的GUIData句柄
    CL:SetMouseGUIItemData(_GUIData) --设置为鼠标上的物品
    dbg("放下前，鼠标上物品的句柄:"..CL:GetMouseGUIItemData())
    CL:PutMouseGUIItemData(_GUIData) --放下物品
    dbg("放下后，鼠标上物品的句柄:"..CL:GetMouseGUIItemData())
end

--运行示例代码前，先打开背包界面，执行后，控制台将输出：
“放下前，鼠标上物品的句柄:246622152”
“放下后，鼠标上物品的句柄:0”
<上一篇:获取所有物品的模板信息下一篇:移动物品至目标窗口>
MobilePackItem_OnRButtonUp
移动物品至目标窗口

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数移动指定的物品至目标窗口。

调用时目标窗口需已打开，如该目标窗口不是脚本定义的类型则将物品移动到该窗口，否则触发LUA_EVENT_ITEMWNDMOVEITEMIN事件 。

语法
Luacopy 复制
CL:MobilePackItem_OnRButtonUp( 
    guidStr
)

参数
guidStr

string

 
物品的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid = CL:PackageGetGUIDByPos(0) --获取背包第一个物品的GUID
CL:MobilePackItem_OnRButtonUp(item_guid) --将背包中第一个物品移动至仓库中

--示例基于手游45度演示区（区号:151750），先对话仓库管理员NPC，打开仓库界面。
将代码置于游戏目录\res\extra\151750\GUIScript\RecycleWnd.lua中的Recycle.main()函数中。保存后按回收按钮执行。
对话仓库管理员NPC，打开仓库界面，可看到背包第一个物品已移动至仓库中。

MobilePackItem
<上一篇:获取鼠标上的物品的GUIData句柄下一篇:将物品从玩家背包移动到英雄背包>
MoveItemToHeroPackage
将物品从玩家背包移动到英雄背包

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-05-13 00:00:00
此函数作用为将物品从玩家背包移动到英雄背包中。

语法
Luacopy 复制
CL:MoveItemToHeroPackage( 
    _ItemGUIDStr
)

参数
_ItemGUIDStr

string

 
物品的GUID

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
返回成功只代表执行成功，具体是否移动成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ItemGUIDataTable = {}
if CL:GetPackageItemGUIDList() then --获取背包中物品GUID列表
    ItemGUIDataTable = LuaRet
end
if CL:MoveItemToHeroPackage(ItemGUIDataTable[1]) then
    dbg("执行成功")
else
    dbg("执行失败")
end

--根据测试时，角色装备和英雄的状态，控制台将会输出是否执行成功。
<上一篇:移动物品至目标窗口下一篇:将物品从英雄背包移动到玩家背包>
MoveItemToPlayerPackage
将物品从英雄背包移动到玩家背包

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-05-13 00:00:00
此函数作用为将物品从英雄背包移动到玩家背包中。

语法
Luacopy 复制
CL:MoveItemToPlayerPackage(
    _ItemGUIDStr
)
参数
_ItemGUIDStr

string

 
物品的GUID

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
返回成功只代表执行成功，具体是否移动成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local itemguid = "4781158296893269629"
CL:MoveItemToPlayerPackage(itemguid)

--此示例代码运行前效果如下图所示（物品在英雄背包中）。

MoveItemToPlayerPackage.png

--此示例代码运行后效果如下图所示（物品从英雄背包中移动到玩家背包中）。

MoveItemToPlayerPackage_2.png
<上一篇:将物品从玩家背包移动到英雄背包下一篇:移动物品到指定位置>
PlayerMoveItem
移动物品到指定位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数移动物品到指定的位置。

语法
Luacopy 复制
CL:PlayerMoveItem( 
    _ItemGUID,
    _Site
)

参数
_ItemGUID

string

 
物品的GUID。

_Site

int

 
背包中的目标位置。

22表示第1个位置，23表示第2个位置，以此类推。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _itemguid = CL:PackageGetGUIDByPos(0) --获取背包中第1个位置物品的GUID
dbg("背包中第一个位置的物品的GUID是：" .. _itemguid)
CL:PlayerMoveItem(_itemguid,25) --移动到第4个位置

--控制台将输出“背包中第一个位置的物品的GUID是：4729085047545282917 ”。

--此物品将被移动到第4个位置。
<上一篇:将物品从英雄背包移动到玩家背包下一篇:将鼠标上的物品放下>
PutMouseGUIItemData
将鼠标上的物品放下

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-05-26 00:00:00
此函数将鼠标上的物品放下，同时移除物品在鼠标上的跟随显示。

语法
Luacopy 复制
CL:PutMouseGUIItemData( 
    _ItemGUIDataHandle
)

参数
_ItemGUIDataHandle

int

 
物品的GUIData句柄

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
local _Handle = GUI:WndFindChildM(Package.WndHandle, "Item0") --获取背包中第一个物品框控件的句柄
if _Handle ~= 0 then
    _GUIData = GUI:ItemCtrlGetGUIData(_Handle) --获取第一个物品框中物品的GUIData句柄
    CL:SetMouseGUIItemData(_GUIData) --设置为鼠标上的物品
    dbg("放下前，鼠标上物品的句柄:"..CL:GetMouseGUIItemData())
    CL:PutMouseGUIItemData(_GUIData) --放下物品
    dbg("放下后，鼠标上物品的句柄:"..CL:GetMouseGUIItemData())
end

--运行示例代码前，先打开背包界面，执行后，控制台将输出：
“放下前，鼠标上物品的句柄:246622152”
“放下后，鼠标上物品的句柄:0”
<上一篇:移动物品到指定位置下一篇:设置动画物品图标的缩放比例>
SetAnimIconScale
设置动画物品图标的缩放比例

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-03-28 00:00:00
此函数设置物品动画图标的缩放比例。仅对物品框控件绘制时有效。

端游中，带有特效的装备，由于默认情况下，图片自动适应物品框容器的大小，在背包和角色面板中的显示较小。

SetAnimIconScale

此情况下，可调用此函数进行比例的设置。

语法
Luacopy 复制
CL:SetAnimIconScale(
    _IconID,
    _AnimIconScale,
    _AdaptSize
)

参数
_IconID

unsigned int

 
物品的图片资源ID。

_AnimIconScale

float

 
缩放比例，1为原大小。

_AdaptSize

bool

 
是否自适应大小。

若要改变显示比例，请设为false。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function InitAnimIcon()
    local _AnimIconScale = 0.8
    local _AdaptSize = false
    for _Idx = 0, 221 do --循环设置多个图片资源
        local _IconID = 150000 + _Idx
        CL:SetAnimIconScale(_IconID, _AnimIconScale, _AdaptSize)
    end
end
<上一篇:将鼠标上的物品放下下一篇:设置物品设置中指定分类的勾选状态>
SetClassificationInfo
设置物品设置中指定分类的勾选状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-24 00:00:00
此函数设置物品设置中指定分类的勾选状态。

具体请参见FAQ说明：如何开启新的物品设置功能。

caution_icon注意
此接口仅在鼠标点击事件触发时可调用, 否则可能导致以下问题：

1.客户端内部和UI显示的勾选状态不一致的问题

2.新增错误分类的问题

语法
Luacopy 复制
CL:SetClassificationInfo(
    name,
    show_name,
    manual_pickup,
    auto_pickup
)
参数
name

string

 
分类索引的名称

note_icon 备注
非法的索引名称将会被过滤。

show_name

bool

 
“显示名称”选项是否勾选

true勾选

false不勾选

manual_pickup

bool

 
“手动拾取”选项是否勾选

true勾选

false不勾选

auto_pickup

bool

 
“挂机拾取”选项是否勾选

true勾选

false不勾选

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以45度美术资源展示（区号：3104）中的GameItemSetting2.lua文件为例。
GameItemSetting = {}
local ItemType = {}
local Item_typelist = {}

--……省略部分代码

function GameItemSetting.ChangeStatus(_Handle)

--……省略部分代码

    if status_list ~= {} then
        if param == 2 then
            CL:SetItemClickInfo(tonumber(itemList[i][1]), status_list[1], status_list[2], status_list[3])
        elseif param == 1 then
            CL:SetClassificationInfo(Item_typelist[i][1], status_list[1], status_list[2], status_list[3])
        end
    end
end

--……省略部分代码

GameItemSetting.main()
<上一篇:设置动画物品图标的缩放比例下一篇:设置物品设置中指定物品的勾选状态>
SetItemClickInfo
设置物品设置中指定物品的勾选状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-24 00:00:00
此函数设置物品设置中指定物品的勾选状态。

具体请参见FAQ说明：如何开启新的物品设置功能。

caution_icon注意
此接口仅在鼠标点击事件触发时可调用, 否则可能导致以下问题：

1.客户端内部和UI显示的勾选状态不一致的问题

2.新增错误物品的问题

语法
Luacopy 复制
CL:SetItemClickInfo(
    template_id,
    show_name,
    manual_pickup,
    auto_pickup
)
参数
template_id

int

 
物品的ID

note_icon 备注
非法的ID将会被过滤。

show_name

bool

 
“显示名称”选项是否勾选

true勾选

false不勾选

manual_pickup

bool

 
“手动拾取”选项是否勾选

true勾选

false不勾选

auto_pickup

bool

 
“挂机拾取”选项是否勾选

true勾选

false不勾选

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以45度美术资源展示（区号：3104）中的GameItemSetting2.lua文件为例。
GameItemSetting = {}
local ItemType = {}
local Item_typelist = {}

--……省略部分代码

function GameItemSetting.ChangeStatus(_Handle)

--……省略部分代码

    if status_list ~= {} then
        if param == 2 then
            CL:SetItemClickInfo(tonumber(itemList[i][1]), status_list[1], status_list[2], status_list[3])
        elseif param == 1 then
            CL:SetClassificationInfo(Item_typelist[i][1], status_list[1], status_list[2], status_list[3])
        end
    end
end

--……省略部分代码

GameItemSetting.main()
<上一篇:设置物品设置中指定分类的勾选状态下一篇:设置物品品质属性或扩展属性所对应的掉落特效>
SetItemDropEffectWithProperty
设置物品品质属性或扩展属性所对应的掉落特效

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-01-30 00:00:00
装备类物品如使用接口设置了品质属性或扩展属性，可用该函数来设置对应的掉落特效。

note_icon 备注
仅对装备类物品有效。

掉落特效的优先级顺序为：品质属性配置 > 扩展属性配置 > 接口CL:SetItemEffectEx的设置 > 物品模板表中在场景物品上播放的图片ID的设置

属性设置的相关接口，请参见接口lualib:Equip_SetQualProp和lualib:Equip_SetExtProp的说明。

语法
Luacopy 复制
CL:SetItemDropEffectWithProperty(
    _type,
    _imageID,
    _offset_x,
    _offset_y,
    _color,
    _duration
)
参数
_type

int

 
属性类型

0代表品质属性

1代表扩展属性

_imageID

int

 
特效的图片资源ID

_offset_x

int

 
绘制特效的X轴偏移量

单位为像素（px）

_offset_y

int

 
绘制特效的Y轴偏移量

单位为像素（px）

_color

unsigned int

 
特效颜色的混合值，默认值为0xFFFFFFFF

note_icon 备注
当参数_color设置为默认值时，则使用物品掉落特效原本的颜色效果。

_duration

int

 
特效的持续时间，单位为毫秒（ms）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetItemDropEffectWithProperty(0,3035220000,0,0,0xffffffff,5000)

--此示例代码运行后的效果如下图所示。

SetItemDropEffectWithProperty
<上一篇:设置物品设置中指定物品的勾选状态下一篇:设置物品的掉落特效持续时间>
SetItemEffectDuration
设置物品的掉落特效持续时间

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-03-24 00:00:00
此函数设置物品的掉落特效（如掉落光柱）的持续时间。如物品重新出现，则持续时间会被重置。

语法
Luacopy 复制
CL:SetItemEffectDuration(
    _Idx,
    _duration
)
参数
_Idx

int

 
掉落提示的索引

范围为0~255

note_icon 备注
此参数的数值应与对应物品在道具模板表中掉落提示选项配置的数值一致。

掉落提示选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→客户端配置→详细数据-客户端配置区域。

SetItemEffectOffset.png
_duration

int

 
特效的持续时间，单位为毫秒（ms）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetItemEffectOffset(1, -6, -48) --设置特效资源相对于掉落物品的偏移
CL:SetItemEffectEx(1, 1043100000, 255, 0, 0, 255) --设置物品的掉落特效并设置特效颜色为红色
CL:SetItemEffectDuration(1,5000) --设置持续时间为5秒

--此示例代码运行后效果如下图所示。

SetItemEffectDuration_1.png

--5秒后光柱特效消失。

SetItemEffectDuration_2.png
<上一篇:设置物品品质属性或扩展属性所对应的掉落特效下一篇:设置物品的掉落特效（扩展）>
SetItemEffectEx
设置物品的掉落特效（扩展）

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-03-24 00:00:00
此函数设置物品的掉落特效，并支持设置特效颜色。

note_icon 备注
使用此接口给道具设置的掉落特效时，部分特效资源会出现偏移误差。如需调整特效资源相对于掉落物品的偏移请使用接口CL:SetItemEffectOffset。

如需调整特效的持续时间请使用接口CL:SetItemEffectDuration。

语法
Luacopy 复制
CL:SetItemEffectEx(
    _Idx,
    _ImageID,
    _R,
    _G,
    _B,
    _A
)
参数
_Idx

int

 
掉落提示的索引

范围为0~255

note_icon 备注
此参数的数值应与对应物品在道具模板表中掉落提示选项配置的数值一致。

掉落提示选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→客户端配置→详细数据-客户端配置区域。

SetItemEffectOffset.png
_ImageID

unsigned int

 
特效的图片资源ID

_R

int

 
特效颜色的红色值

范围为0~255

_G

int

 
特效颜色的绿色值

范围为0~255

_B

int

 
特效颜色的蓝色值

范围为0~255

note_icon 备注
当参数_R、_G和_B均设置为255时，则使用物品掉落特效原本的颜色效果。

_A

int

 
特效的透明度

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
CL:SetItemEffectOffset(1, -6, -48) --设置特效资源相对于掉落物品的偏移
CL:SetItemEffectEx(1, 1043100000, 255, 0, 0, 255) --设置物品的掉落特效并设置特效颜色为红色

--此示例代码运行前效果如下图所示（使用接口CL:SetItemEffect()设置的掉落特效的效果）。

SetItemEffectOffset_2.png

--此示例代码运行后效果如下图所示。

SetItemEffectOffset_3.png
<上一篇:设置物品的掉落特效持续时间下一篇:设置特效资源相对于掉落物品的偏移>
SetItemEffectOffset
设置特效资源相对于掉落物品的偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-07-18 00:00:00
此函数设置特效资源相对于掉落物品的偏移。

语法
Luacopy 复制
CL:SetItemEffectOffset(
    _Idx,
    _OffsetX,
    _OffsetY
)
参数
_Idx

int

 
掉落提示的索引

范围为0~255

note_icon 备注
此参数的数值应与对应物品在道具模板表中掉落提示选项配置的数值一致。

掉落提示选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→客户端配置→详细数据-客户端配置区域。

SetItemEffectOffset.png
_OffsetX

int

 
相对于掉落物品的水平偏移

2D：单位为像素（px）

3D：单位为厘米（cm）（参照逻辑格的边长为1m）

正数代表向右偏移

负数代表向左偏移

_OffsetY

int

 
相对于掉落物品的垂直偏移

2D：单位为像素（px）

3D：单位为厘米（cm）（参照逻辑格的边长为1m）

正数代表向下偏移

负数代表向上偏移

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:SetItemEffectOffset(1, -6, -48) --设置特效资源相对于掉落物品的偏移
CL:SetItemEffectEx(1, 1043100000, 255, 0, 0, 255) --设置物品的掉落特效并设置特效颜色为红色

--此示例代码运行前效果如下图所示（使用接口CL:SetItemEffect()设置的掉落特效的效果）。

SetItemEffectOffset_2.png

--此示例代码运行后效果如下图所示。

SetItemEffectOffset_3.png
<上一篇:设置物品的掉落特效（扩展）下一篇:设置物品的掉落特效>
SetItemEffect
设置物品的掉落特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-18 00:00:00
此函数设置物品的掉落特效。

ItemDropEffect

note_icon 备注
此接口无法设置特效颜色，如需设置特效颜色请使用接口CL:SetItemEffectEx。

使用此接口给道具设置掉落特效时，部分特效资源会出现偏移误差。如需调整特效资源相对于掉落物品的偏移请使用接口CL:SetItemEffectOffset。

语法
Luacopy 复制
CL:SetItemEffect( 
    _Idx,
    _ImageID,
    _R,
    _G,
    _B,
    _A
)

参数
_Idx

int

 
掉落提示的索引

范围为0~255

note_icon 备注
此参数的数值应与对应物品在道具模板表中掉落提示选项配置的数值一致。

掉落提示选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→客户端配置→详细数据-客户端配置区域。

SetItemEffectOffset.png
_ImageID

unsigned int

 
2D：特效的图片资源ID

3D：特效ID

note_icon 备注
特效ID为Magic.xml文件中的Id字段的值

Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

_R

int

 
特效颜色的红色值

范围为0~255

_G

int

 
特效颜色的绿色值

范围为0~255

_B

int

 
特效颜色的蓝色值

范围为0~255

_A

int

 
特效的透明度

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
CL:SetItemEffect(1, 3032150000, 0, 255, 0, 255) --设置物品的掉落特效

--此示例代码运行成功如下图所示。

SetItemEffect_2.png
<上一篇:设置特效资源相对于掉落物品的偏移下一篇:根据GUIData属性类型设置物品GUIData属性值>
SetItemGUIDataPropByType
根据GUIData属性类型设置物品GUIData属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据GUIData属性类型设置物品GUIData属性值。

要设置的属性值从全局变量LuaArg中获取。

note_icon 备注
此接口不支持锁定物品。

如需设置锁定物品，请使用接口CL:CustomLockItem。

语法
Luacopy 复制
CL:SetItemGUIDataPropByType( 
    _ItemGUIDataHandleID,
    _PropType
)

参数
_ItemGUIDataHandleID

int

 
物品的GUIData句柄

_PropType

int

 
GUIData属性类型

点击此处了解更多信息

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ItemGUIDataTable = {}
if CL:GetPackageItemGUIDataList() then
    ItemGUIDataTable = LuaRet
end
LuaArg = 385003	
if CL:SetItemGUIDataPropByType(ItemGUIDataTable[1],1) then
    dbg("成功")
end	
<上一篇:设置物品的掉落特效下一篇:设置鼠标上的物品>
SetMouseGUIItemData
设置鼠标上的物品

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-05-26 00:00:00
此函数设置鼠标上的物品。

游戏中如在背包中移动物品的位置时，选中某个物品后，鼠标指针上会跟随此物品。

语法
Luacopy 复制
CL:SetMouseGUIItemData( 
    _ItemGUIDataHandle
)

参数
_ItemGUIDataHandle

int

 
物品的GUIData句柄

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
local _Handle = GUI:WndFindChildM(Package.WndHandle, "Item0") --获取背包中第一个物品框控件的句柄
if _Handle ~= 0 then
    _GUIData = GUI:ItemCtrlGetGUIData(_Handle) --获取第一个物品框中物品的GUIData句柄
    CL:SetMouseGUIItemData(_GUIData) --设置为鼠标上的物品
end

--运行示例代码前，先打开背包界面，效果如下图。

SetMouseGUIItemData
<上一篇:根据GUIData属性类型设置物品GUIData属性值下一篇:设置被拾取的物品飞向指定控件>
SetPickupAnimation
设置被拾取的物品飞向指定控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-12-31 18:19:00
此函数设置开启被拾取掉落物品飞向指定控件并逐渐消失的功能，同时可以设置被拾取的掉落物品飞向指定控件的移动速度。

语法
Luacopy 复制
CL:SetPickupAnimation(
    handle,
    speed
)
参数
handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

speed

int

 
被拾取的掉落物品飞向指定控件的移动速度

单位为像素/秒

note_icon 备注
此参数的设置值须大于0，推荐配置值为600。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以手游45度测试区（区号：151750）中的GameMainBar.lua脚本文件为例。
GameMainBar = {}

--……省略部分代码

function GameMainBar.main()

--……省略部分代码

    _BtnWndGlobal = _BtnWnd
    _GUIHandle = GUI:ButtonCreate(_Parent, "PackageBtn", 1857020028, _HalfDeviceWidth + 450 , _HalfDeviceHeight - 380)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "GameMainBar.OnPackageBtn")
        CL:SetPickupAnimation(_GUIHandle,600) --设置被拾取的物品飞向指定控件的移动速度为600像素/秒
    end
	
--……省略部分代码

end

--……省略部分代码

GameMainBar.main()

--此示例代码运行成功后，玩家拾取掉落物品的效果如下图所示。

SetPickupAnimation.gif
<上一篇:设置鼠标上的物品下一篇:使用JSON字符串配置物品品质框的显示>
SetQualityImageDataEx
使用JSON字符串配置物品品质框的显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-07-02 00:00:00
此函数通过使用JSON字符串配置指定道具颜色的物品品质框的边框图片和底框图片的显示样式。

只有道具在道具模板表中所指定的道具颜色与该接口参数中定义的道具颜色相同时，才会使用该接口的配置进行显示。

“道具颜色”选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→其他配置区域。

RDItemCtrlShowQualityBG_3.png
“品质”选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→其他配置区域。

SetQualityImageDataEx_2.png
note_icon 备注
此接口需在进入游戏场景前调用，建议放到LogicFunction.lua里。

针对手游，为了清除老接口的影响，需要定义一个内容为空的自定义函数UserInitQualityImageData。

Luacopy 复制
function UserInitQualityImageData()
end
不建议与老接口CL:SetQualityImageData一起使用。

语法
Luacopy 复制
CL:SetQualityImageDataEx( 
    jsonData
)

参数
jsonData

string

 
JSON格式的配置信息

配置语句的基本格式如下：

JSONcopy 复制
local qualityImageData = {
    bg_icon_rect_order = true,
    match_type = "custom_quality, template_quality, template_color",
    quality_custom_int_var = "",
    quality = {
        {
            range = {配品质范围},
            rect_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}, 
            bg_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}
        },
    },
    color = {
        {
            id = "匹配道具颜色", 
            rect_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}, 
            bg_image = {图片资源ID, "显示方法", 具体数值1, 具体数值2}
        },
    }
}
参数的类型和定义如下：

bg_icon_rect_order代表特效层级：
true代表层级 rect_image > icon > bg_image；
false代表层级 icon > rect_image > bg_image。

note_icon 备注
接口GUI:RDItemCtrlShowQualityBG启用品质框特效。

match_type代表匹配优先级：
template_quality：道具模板表-品质
template_color：道具模板表-道具颜色
custom_quality：自定义品质变量

note_icon 备注
三者任选，以逗号分割，匹配优先级安照设置的从左到右

例如：当match_type = "custom_quality,template_quality,template_color"时，品质框显示会优先匹配custom_quality的值，其次template_quality，最后template_color。

当match_type只设置一个值时，只按照该分类去匹配结果。

自定义品质变量的值，如果为0，则不会通知到客户端。

quality_custom_int_var代表动态品质特效：

note_icon 备注
quality_custom_int_var
含义：自定义品质变量名
类型：string字符串类型
来源：服务端接口lualib:SetInt的变量名
匹配：参考match_type匹配规则，custom_quality
备注：如果想匹配自定义品质值的特效，必须设置该变量，否则custom_quality不会生效
例子：假设服务端脚本lualib:SetInt(item_guid,"pinzhi", 68)客户端脚本quality_custom_int_var="pinzhi"，则表示试图匹配一个由服务端设置的道具自定义变量名为"pinzhi"，且自定义变量值为68的，道具品质特效，如果匹配成功，将使用该配置的rect_image和bg_image

note_icon 备注
quality->range
含义：匹配品质范围
类型：数组类型，通常是一对整数值，左闭右闭区间，每个值的取值范围在[0, 65535]之间
来源：道具模板表-品质 或者 自定义品质变量-品质
匹配：参考match_type匹配规则，template_quality和custom_quality
例子：range={23, 689},表示品质值在23到689区间范围内的道具，将使用该配置的rect_image和bg_image

note_icon 备注
color->id
含义：匹配道具颜色
类型：string字符串类型
来源：道具模板表-道具颜色
匹配：参考match_type匹配规则，template_color
例子：id="GREENG",表示道具颜色为"GREENG"绿色的道具，将使用该配置的rect_image和bg_image

rect_image代表边框图片；bg_image代表底框图片。

图片资源ID(int)：图片资源编号；

显示方法(string)：支持按比例缩放和指定尺寸显示。ctrl_scale_factor代表按物品框控件尺寸缩放；image_scale_factor代表按图片资源尺寸缩放；size代表按填写的尺寸显示；

具体数值1(float)：根据显示方法参数的设置，填写宽度的比例或尺寸。比例默认为1.0，尺寸的单位为像素。

具体数值2(float)：根据显示方法参数的设置，填写高度的比例或尺寸。比例默认为1.0，尺寸的单位为像素。

note_icon 备注
宽度和高度的比例数值在大多数情况下都是设置相同的。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
如执行失败，则错误信息会存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

v1.1

 
新增对3D手游和3D端游支持

v1.2

 
新增对2D手游和2D端游道具品质值的相关配置

v1.3

 
新增对2D手游和2D端游字段quality_custom_int_var支持

v1.4

 
新增对2D端游字段bg_icon_rect_order支持

v1.5

 
新增对2D手游和2D端游字段match_type支持

示例代码
Luacopy 复制
--quality_custom_int_var示例
--服务端
local itemlist = lualib:BagItemList(player,true,false,false)
if itemlist ~= nil then
    for i = 1,#itemlist do
        local GUID = itemlist[i]
        local item_quality_test_value = i
        lualib:SetInt(GUID,"item_quality_test",item_quality_test_value)
        lualib:NotifyVar(GUID,"item_quality_test")
    end
end

--客户端
local qualityImageData = {
    quality_custom_int_var = "item_quality_test",
    quality = {{
        range = {0, 9},--表示如果道具的品质处于0到9之间，则物品框使用该图片资源
        rect_image = {0, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069000000, "ctrl_scale_factor", 1.0, 1.0}
    }, {
        range = {10, 29},
        rect_image = {0, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069400000, "ctrl_scale_factor", 1.0, 1.0}
    }}, -- quality
    color = {{
        id = "GREENG",
        rect_image = {0, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069300000, "ctrl_scale_factor", 1.0, 1.0}
    },
    {
    id = "GOLD", rect_image = {0, "ctrl_scale_factor", 1.0, 1.0}, bg_image = {1069000000, "size", 60, 60}
       },
       {
       id = "RED", rect_image = {0, "ctrl_scale_factor", 1.0, 1.0}, bg_image = {1069100000, "image_scale_factor", 1.0, 1.0}
       },
       {
       id = "ORANGE", rect_image = {0, "ctrl_scale_factor", 1.0, 1.0}, bg_image = {1069200000, "image_scale_factor", 1.0, 1.0}
       },
    } -- color
} -- data    

if CL:SetQualityImageDataEx(json.encode(qualityImageData)) == false then 
    dbg("设置失败！错误信息："..LuaRet)
end    


--优先根据道具设置的动态品质值来匹配range，显示物品品质框的颜色。

SetQualityImageDataEx_3.png

--设置0-9为金色品质框。道具强效魔法药水，模板品质为0，动态品质为10，最终根据动态品质显示品质框为紫色。

--道具皇道道靴10模板品质为755，模板品质颜色为紫色，最终显示为金色品质框。

SetQualityImageDataEx_4.png



--bg_icon_rect_order示例
local qualityImageData = {
    bg_icon_rect_order = true,
    quality_custom_int_var = "",
    quality = {{
        range = {0, 9},--表示如果道具的品质处于0到9之间，则物品框使用该图片资源
        rect_image = {1069000000, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069000000, "ctrl_scale_factor", 1.0, 1.0}
    }, {
        range = {10, 19},
        rect_image = {1069400000, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069400000, "ctrl_scale_factor", 1.0, 1.0}
    }}, -- quality
    color = {{
        id = "GREENG",
        rect_image = {1069300000, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069300000, "ctrl_scale_factor", 1.0, 1.0}
    },
    {
        id = "RED", rect_image = {0, "ctrl_scale_factor", 1.0, 1.0}, bg_image = {1069100000, "image_scale_factor", 1.0, 1.0}
    },{
        id = "ORANGE", rect_image = {0, "ctrl_scale_factor", 1.0, 1.0}, bg_image = {1069200000, "image_scale_factor", 1.0, 1.0}
    },
  } -- color
} -- data    

if CL:SetQualityImageDataEx(json.encode(qualityImageData)) == false then 
  dbg("设置失败！错误信息："..LuaRet)
end

--通过bg_icon_rect_order来控制渲染的层级。当bg_icon_rect_order = true时， 层级 rect_image > icon > bg_image。

SetQualityImageDataEx_5.png

--当bg_icon_rect_order = fasle时，层级 icon > rect_image > bg_image。

SetQualityImageDataEx_6.png



--match_type示例
local qualityImageData = {
    bg_icon_rect_order = true,
    match_type = "custom_quality,template_quality,template_color",--优先匹配custom_quality的值，其次template_quality，最后template_color
    quality_custom_int_var = "",
    quality = {{
        range = {0, 9},--表示如果道具的品质处于0到9之间，则物品框使用该图片资源
        rect_image = {1069000000, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069000000, "ctrl_scale_factor", 1.0, 1.0}
    }, {
        range = {10, 19},
        rect_image = {1069400000, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069400000, "ctrl_scale_factor", 1.0, 1.0}
    }}, -- quality
    color = {{
        id = "GREENG",
        rect_image = {1069300000, "ctrl_scale_factor", 1.0, 1.0},
        bg_image = {1069300000, "ctrl_scale_factor", 1.0, 1.0}
    },
    {
        id = "RED", rect_image = {0, "ctrl_scale_factor", 1.0, 1.0}, bg_image = {1069100000, "image_scale_factor", 1.0, 1.0}
    },{
        id = "ORANGE", rect_image = {0, "ctrl_scale_factor", 1.0, 1.0}, bg_image = {1069200000, "image_scale_factor", 1.0, 1.0}
    },
  } -- color
} -- data    

if CL:SetQualityImageDataEx(json.encode(qualityImageData)) == false then 
  dbg("设置失败！错误信息："..LuaRet)
end

--当match_type设置为"custom_quality,template_quality,template_color"时，品质框显示会优先匹配custom_quality的值，其次template_quality，最后template_color。当match_type只设置一个值时，只按照该分类去匹配结果。

--当match_type = "custom_quality,template_quality,template_color"时，结果如图所示。

SetQualityImageDataEx_7.png

--当match_type = "template_color"时，结果如图所示。

SetQualityImageDataEx_8.png
<上一篇:设置被拾取的物品飞向指定控件下一篇:设置物品品质框的边框图片和底框图片>
SetQualityImageData
设置物品品质框的边框图片和底框图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-10-07 00:00:00
此函数设置指定道具颜色的物品品质框的边框图片和底框图片。

只有道具在道具模板表中所指定的道具颜色与该接口参数中定义的道具颜色相同时，才会使用该接口定义的边框和底框图片资源。

“道具颜色”选项访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→其他配置区域。

RDItemCtrlShowQualityBG_3.png
语法
Luacopy 复制
CL:SetQualityImageData( 
    _ColorString,
    _RectImageID,
    _QualityBackImageID
)

参数
_ColorString

string

 
道具颜色

具体请参见颜色字符串页面

_RectImageID

unsigned int

 
边框图片资源ID

_QualityBackImageID

unsigned int

 
底框图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码的执行前提如下图所示。
--道具“神武战刃”的道具颜色为PURPLE。
RDItemCtrlShowQualityBG_3.png
local _Parent = LuaGlobal["AttachPartent"]
CL:SetQualityImageData("PURPLE", 4005400041, 1891430004) --设置物品品质框的边框图片和底框图片

_GUIHandle = GUI:ImageCreate(_Parent, "ItemadvanceImage",4000610016, 442, 239) --创建一个图片控件

_GUIHandle = GUI:ItemCtrlCreate(_Parent, "Itemadvance", 0, 443, 240, 58, 58) --创建一个物品框控件
if _GUIHandle ~= 0 then
    GUI:RDItemCtrlShowQualityBG(_GUIHandle, true) --设置指定物品框控件显示品质背景框
    RDItemCtrlSetGUIDataByKeyName(_GUIHandle,"神武战刃", 1, false) --根据索引名称填充物品框数据
end

--当接口GUI:RDItemCtrlShowQualityBG的参数flag设置为true时，效果如下图所示。

RDItemCtrlShowQualityBG.png

--当接口GUI:RDItemCtrlShowQualityBG的参数flag设置为false时，效果如下图所示。

RDItemCtrlShowQualityBG_2.png
<上一篇:使用JSON字符串配置物品品质框的显示下一篇:拆分物品>
SplitItem
拆分物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数根据指定的数量来拆分物品。

语法
Luacopy 复制
CL:SplitItem( 
    _StrGUID,
    _Count
)

参数
_StrGUID

string

 
物品的GUID。

_Count

int

 
拆分的数量。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local package_item_guid = {}
if CL:GetPackageItemGUIDList() then --获取背包guid列表
    package_item_guid = LuaRet
end
CL:SplitItem(package_item_guid[1],2) --背包中第一件物品拆分2件

--示例中第一件物品小喇叭原有10件，拆分数量2件，效果如下图。

SplitItem
<上一篇:设置物品品质框的边框图片和底框图片
GetAdvWareHouseItemGUIDataList
获取高级仓库中的物品列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取高级仓库中物品的GUIData句柄列表。

语法
Luacopy 复制
CL:GetAdvWareHouseItemGUIDataList()

参数
无

 
返回值
bool

 
true获取到数据

false未获取到数据

note_icon 备注
获取的信息存储在全局变量LuaRet中。

LuaRet[i]第i个道具的GUIData句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetAdvWareHouseItemGUIDataList() then
    dbg("首个物品的GUIData句柄："..LuaRet[1])
else
    dbg("为获取到数据") 
end
下一篇:设置仓库金币>
WareHouseSetGold
设置仓库金币

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-03-28 00:00:00
此函数设置仓库金币变动数量和变动方向。

语法
Luacopy 复制
CL:WareHouseSetGold( 
    _Type,
    _NumStr
)

参数
_Type

int

 
存取类型

0往仓库中存金币

1从仓库中取金币

_NumStr

string

 
金币数量

返回值
此函数无返回值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:WareHouseSetGold(1,"9999") --从仓库中取出9999个金币

--此示例代码运行成功如下图所示。

WareHouseSetGold
<上一篇:获取高级仓库中的物品列表
GetPackageItemCountByKeyName
根据物品索引名获取背包中物品的数量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-07-15 00:00:00
此函数根据物品的索引名（KeyName）获取该物品在背包中的数量。

语法
Luacopy 复制
CL:GetPackageItemCountByKeyName(
    _KeyName
)
参数
_KeyName

string

 
物品的索引名（KeyName）

返回值
int

 
物品数量

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
GetPackageItemCountByKeyName.png
local i = CL:GetPackageItemCountByKeyName("小喇叭")
dbg("物品数量是"..i)

--此示例代码运行成功如下图所示。

GetPackageItemCountByKeyName_2.png
下一篇:获取背包中所有物品的GUID>
GetPackageItemGUIDList
获取背包中所有物品的GUID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取背包中所有物品的GUID。

语法
Luacopy 复制
CL:GetPackageItemGUIDList()

参数
无

 
返回值
bool

 
背包中是否存在物品

true是

false否

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local itemGUIDTable = {}
if CL:GetPackageItemGUIDList() then
    itemGUIDTable = LuaRet
    dbg(itemGUIDTable[1])
    dbg(itemGUIDTable[2])
end

--此示例代码运行成功如下图所示。

GetPackageItemGUIDList
<上一篇:根据物品索引名获取背包中物品的数量下一篇:获取背包中所有物品的GUIData句柄>
GetPackageItemGUIDataList
获取背包中所有物品的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取背包中所有物品的GUIData句柄。

语法
Luacopy 复制
CL:GetPackageItemGUIDataList()

参数
无

返回值
bool

 
获取结果状态

true获取物品数量大于0

false获取物品数量小于0

note_icon 备注
获取的信息存储在全局变量LuaRet中。

LuaRet[i]第i个物品的GUIData句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ItemGUIDataTable = {}
if CL:GetPackageItemGUIDataList() then
    ItemGUIDataTable = LuaRet
    dbg("第一个物品的GUIData句柄为："..ItemGUIDataTable[1])
end
<上一篇:获取背包中所有物品的GUID下一篇:获取背包使用情况>
GetPackageUsage
获取背包使用情况

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-13 20:21:00
此函数用于获取背包使用情况。

支持页码获取，需要背包处于打开状态。

语法
Luacopy 复制
CL:GetPackageUsage()
参数
无

返回值
 
如获取成功，获取的数据存储在全局变量LuaRet中。

LuaRet[1]背包总容量（格子数），最大值为1000 = 200(普通背包) + 800（大背包）

LuaRet[2]已使用格子数，不包含当前被移到鼠标上的物品】

LuaRet[3]背包总页数，不支持大背包的垂直滚动模式，默认：-1

LuaRet[4]当前页码，不支持大背包的垂直滚动模式，默认：-1

note_icon 备注
页码获取需要背包处于打开状态。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetPackageUsage()
dbg("总各自数："..LuaRet[1].."，已用："..LuaRet[2].."，总页数，："..LuaRet[3].."，当前页："..LuaRet[4])

--此示例代码运行成功如下图所示。

GetPackageUsage

GetPackageUsage_2
<上一篇:获取背包中所有物品的GUIData句柄下一篇:激活背包中指定的页签>
PackageActivePage
激活背包中指定的页签

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-13 20:21:00
此函数用于激活背包中指定的页签，支持大背包。

note_icon 备注
1、不支持大背包的垂直滚动模式(vertical)。

2、3D对普通背包有效，大背包无效。

语法
Luacopy 复制
CL:PackageActivePage(
    page_index
)
参数
page_index

int

 
页签索引，从0开始

返回值
bool

 
true激活成功

false激活失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--端游
CL:PackageActivePage(6) --（编号从0开始）
--手游
CL:PackageActivePage(11)--（编号从0开始）

--此示例代码运行成功如下图所示。

PackageActivePage

PackageActivePage_2
<上一篇:获取背包使用情况下一篇:根据GUID获取背包中物品的位置>
PackageFindItemPosByGUID
根据GUID获取背包中物品的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的GUID查找其在背包中的位置。

语法
Luacopy 复制
CL:PackageFindItemPosByGUID( 
    GuidStr
)

参数
GuidStr

string

 
物品的GUID

返回值
bool

 
在背包中找到指定的物品则返回true

在背包中未找到指定的物品则返回false

note_icon 备注
此函数返回操作成功或失败。如操作成功，则找到物品的位置索引存储在全局变量LuaRet中。

背包中第一个物品返回的位置索引为22，第二个物品位置索引为23，以此类推。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:激活背包中指定的页签下一篇:根据模板ID获取背包中物品的位置>
PackageFindItemPosById
根据模板ID获取背包中物品的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据物品的模板ID查找其在背包中的位置。

语法
Luacopy 复制
CL:PackageFindItemPosById( 
    _ItemId
)

参数
_ItemId

int

 
物品的模板ID

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
如操作成功，则获取的物品的位置信息存储在全局变量LuaRet中。

LuaRet[1]物品所在的页（从0开始）。

LuaRet[2]物品在该页中的位置（从0开始）。

版本历史
v1.0

 
首次发布

 
v1.1

 
返回值逻辑优化，描述更新。

示例代码
Luacopy 复制
local ItemGUIDataTable = {}
if CL:GetPackageItemGUIDList() then --获取背包中所有物品的GUID列表
    ItemGUIDataTable = LuaRet
end
CL:GetItemEntityPropByGUID(ItemGUIDataTable[5],ITEM_PROP_ENTITY_ID)--获取第5个物品的模板ID
CL:PackageFindItemPosById(LuaRet)
dbg("所在页签："..LuaRet[1].."，所在物品框格子："..LuaRet[2])

--控制台将输出：“所在页签：0，所在物品框格子：4 ”
<上一篇:根据GUID获取背包中物品的位置下一篇:查找背包中指定位置的物品的GUID>
PackageGetGUIDByPos
查找背包中指定位置的物品的GUID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数查找背包中指定位置的物品的GUID。

语法
Luacopy 复制
CL:PackageGetGUIDByPos( 
    _ItemPos
)

参数
_ItemPos

int

 
背包中物品的位置

从0开始

返回值
string

 
执行成功则返回该位置物品的GUID

执行失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _itemguid = CL:PackageGetGUIDByPos(0) --获取背包中第1个位置物品的GUID
dbg("背包中第一个位置的物品的GUID是：" .. _itemguid)

--控制台将输出“背包中第一个位置的物品的GUID是：4729085047545282917 ”。
<上一篇:根据模板ID获取背包中物品的位置下一篇:获取背包中首个无物品的位置（扩展）>
PlayerGetPakageFreeSiteIdxEx
获取背包中首个无物品的位置（扩展）

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取背包中首个无物品的位置的绝对索引。

note_icon 备注
此接口修复了原有接口CL:PlayerGetPakageFreeSiteIdx在特定情况（玩家使用了两个扩展背包且第一个扩展背包的数量小于40的情况）下会返回错误的位置的问题。

背包中首个无物品的位置的绝对索引=背包中首个无物品的位置的相对索引+22

语法
Luacopy 复制
CL:PlayerGetPakageFreeSiteIdxEx()
参数
无

返回值
int

 
获取成功则返回首个无物品的位置的绝对索引（从22开始）

获取失败则返回-1

具体请参见物品位置定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
PlayerGetPakageFreeSiteIdxEx_2.png
dbg("背包中首个无物品的位置的相对索引为："..CL:PlayerGetPakageFreeSiteIdx())
dbg("背包中首个无物品的位置的绝对索引为："..CL:PlayerGetPakageFreeSiteIdxEx())

--此示例代码运行成功如下图所示。

PlayerGetPakageFreeSiteIdx.png
<上一篇:查找背包中指定位置的物品的GUID下一篇:获取背包中首个无物品的位置>
PlayerGetPakageFreeSiteIdx
获取背包中首个无物品的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取背包中首个无物品的位置的相对索引。

若要获取背包中首个无物品的位置的绝对索引，只需调用接口CL:PlayerGetPakageFreeSiteIdxEx即可。

背包中首个无物品的位置的绝对索引=背包中首个无物品的位置的相对索引+22

语法
Luacopy 复制
CL:PlayerGetPakageFreeSiteIdx()

参数
无

 
返回值
int

 
获取成功则返回首个无物品的位置的相对索引（从0开始）

获取失败则返回-1

具体请参见物品位置定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
PlayerGetPakageFreeSiteIdxEx_2.png
dbg("背包中首个无物品的位置的相对索引为："..CL:PlayerGetPakageFreeSiteIdx())
dbg("背包中首个无物品的位置的绝对索引为："..CL:PlayerGetPakageFreeSiteIdxEx())

--此示例代码运行成功如下图所示。

PlayerGetPakageFreeSiteIdx.png
<上一篇:获取背包中首个无物品的位置（扩展）下一篇:设置角色和英雄背包物品操作状态>
SetPackageItemOpState
设置角色和英雄背包物品操作状态

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置玩家角色背包和其英雄背包物品之间移动的操作状态。

语法
Luacopy 复制
CL:SetPackageItemOpState( 
    _State
)

参数
_State

int

 
操作状态：

0移动关闭

1角色背包移动开启，英雄背包移动关闭

2角色背包移动关闭，英雄背包移动开启

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPackageItemOpState(1) --设置人物背包移动开启，英雄背包移动关闭

--此示例代码运行成功如下图所示。

SetPackageItemOpState
<上一篇:获取背包中首个无物品的位置
GetFriendList
获取好友列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-03-27 00:00:00
此函数根据好友类型获得好友列表。

note_icon 备注
获取的列表信息存储在全局变量LuaRet中

i好友的序号

LuaRet[i][1]玩家角色的名字；

LuaRet[i][2]玩家是否在线（1代表在线；0代表离线）；

LuaRet[i][3]亲密度。

当获取的好友类型为0（即好友）时，亲密度恒大于等于0；

当获取的好友类型为1（即附近玩家）时，亲密度恒等于0；

当获取的好友类型为2（即仇人）时，亲密度恒小于0。

语法
Luacopy 复制
CL:GetFriendList( 
    _Type
)

参数
_Type

int

 
好友类型

0好友

1附近玩家

2仇人

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFriendList(0)
for i = 1 ,#LuaRet do 
    dbg("玩家角色的名字："..LuaRet[i][1])
    dbg("玩家是否在线："..LuaRet[i][2])
    dbg("亲密度："..LuaRet[i][3])
end

--此示例代码运行成功后的效果如下图所示。

GetFriendList_2.png
下一篇:添加好友>
LogicAddFriend
添加好友

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数功能为添加好友。

语法
Luacopy 复制
CL:LogicAddFriend( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色的名字。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LogicAddFriend("滑千叶") --添加“滑千叶”为好友
<上一篇:获取好友列表下一篇:添加玩家角色到黑名单（仇人）>
LogicAddToBlackList
添加玩家角色到黑名单（仇人）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-12-31 00:00:00
此函数添加玩家角色到黑名单（即仇人列表）。

语法
Luacopy 复制
CL:LogicAddToBlackList( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色的名字

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LogicAddToBlackList("滑千叶") --将好友“滑千叶”添加到黑名单（仇人）

--此示例代码运行成功如下图所示。

LogicAddToBlackList
<上一篇:添加好友下一篇:删除所有好友>
LogicDelAllFriend
删除所有好友

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行删除好友列表中所有好友的操作。

语法
Luacopy 复制
CL:LogicDelAllFriend()

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
<上一篇:添加玩家角色到黑名单（仇人）下一篇:删除好友>
LogicDelFriend
删除好友

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数功能为删除好友。

语法
Luacopy 复制
CL:LogicDelFriend( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色的名字。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LogicDelFriend("滑千叶") --删除好友“滑千叶”
<上一篇:删除所有好友下一篇:查看玩家资料>
LogicLookInfo
查看玩家资料

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数查看玩家资料，查询结果会触发LUA_EVENT_OTHERROLEDATA类型的脚本事件。

note_icon 备注
当被查询的角色不在线时，调用接口无效果。

语法
Luacopy 复制
CL:LogicLookInfo( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色的名字。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LogicLookInfo("滑千叶") --查看“滑千叶”资料

--此示例代码运行成功如下图所示。

LogicLookInfo
<上一篇:删除好友下一篇:打开信件界面>
LogicSendEmail
打开信件界面

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-18 00:00:00
此函数作用为打开信件界面。

具体信件功能配置请参见FAQ说明：如何在手游好友系统中添加信件功能。

note_icon 备注
此接口不支持打开仇人的信件界面。

语法
Luacopy 复制
CL:LogicSendEmail(
    name
)
参数
name

string

 
玩家的名字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:查看玩家资料下一篇:与指定玩家私聊>
LogicSendPrivateTalk
与指定玩家私聊

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数功能为与指定玩家私聊。

语法
Luacopy 复制
CL:LogicSendPrivateTalk( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色的名字。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LogicSendPrivateTalk("滑千叶") --和玩家“滑千叶”私聊
<上一篇:打开信件界面
AddChatBlock
添加角色到聊天黑名单

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数将角色名称添加到聊天黑名单中。

语法
Luacopy 复制
CL:AddChatBlock( 
    _Name
)

参数
_Name

string

 
角色的名称。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddChatBlock("whfamdzmb")
下一篇:向聊天窗口添加物品链接>
AddItemLinkToChatWindow
向聊天窗口添加物品链接

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数向聊天窗口添加物品链接。

语法
Luacopy 复制
CL:AddItemLinkToChatWindow( 
    itemGUID
)

参数
itemGUID

string

 
物品的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guidList = {}
if UI:Lua_GetPlayerSelfEquipData() then --获取自身装备GUID列表
    guidList = LuaRet
end
CL:AddItemLinkToChatWindow(guidList[1])

--代码运行后，如以下的聊天框中出现的效果。

AddItemLinkToChatWindow
<上一篇:添加角色到聊天黑名单下一篇:聊天窗口字符串添加特定标记>
ChatWindowSaveMarkString
聊天窗口字符串添加特定标记

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置指定的标记字符串。

当程序在聊天输入框中解析到设定的字符串后，会在该字符串前添加要标记的文本，再末尾添加“#COLOR_WHITE#”，最后输出到聊天窗口中。

语法
Luacopy 复制
CL:ChatWindowSaveMarkString( 
    _CurInputContent,
    _CurInputMark
)

参数
_CurInputContent

string

 
要解析的文本内容。

_CurInputMark

string

 
要标记的字符串。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ChatWindowSaveMarkString("cde", "ab")

--聊天输入框中输入“cde”，按下回车，字符串处理为“abcde#COLOR_WHITE”。聊天窗口中将输出白色的“abcde”消息。
<上一篇:向聊天窗口添加物品链接下一篇:向聊天框发送消息>
ChatWindowSendMessage
向聊天框发送消息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数向聊天框指定的频道发送消息。

语法
Luacopy 复制
CL:ChatWindowSendMessage( 
    _CurInputString,
    _CurrenChannel
)

参数
_CurInputString

string

 
消息文本。

_CurrenChannel

int

 
聊天频道。

1当前频道

2组队频道

3行会频道

4世界频道

7私聊频道

8全服频道

20系统频道

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_CurrenChannel的类型：8全服频道

示例代码
Luacopy 复制
CL:ChatWindowSendMessage("你好！",1) --向聊天频道输出消息

--向当前频道输出了一条消息，效果如下。

ChatWindowSendMessage
<上一篇:聊天窗口字符串添加特定标记下一篇:显示私聊页面>
ChatWindowShowPrivatePage
显示私聊页面

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在聊天窗口中显示私聊页面。

语法
Luacopy 复制
CL:ChatWindowShowPrivatePage( 
    _HandleID,
    _Name
)

参数
_HandleID

int

 
私聊按钮的句柄。

_Name

string

 
私聊的玩家角色名。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:向聊天框发送消息下一篇:清空聊天记录>
ClearChatRecord
清空聊天记录

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数清空聊天记录。

语法
Luacopy 复制
CL:ClearChatRecord()

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
<上一篇:显示私聊页面下一篇:将角色从聊天黑名单中移除>
DelChatBlock
将角色从聊天黑名单中移除

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数将指定的角色从聊天黑名单中移除。

语法
Luacopy 复制
CL:DelChatBlock( 
    _Name
)

参数
_Name

string

 
角色的名称。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:DelChatBlock("whfamdzmb")
<上一篇:清空聊天记录下一篇:获取指定频道的聊天记录>
GetChannelChatRecord
获取指定频道的聊天记录

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数获取指定频道的聊天记录。

语法
Luacopy 复制
CL:GetChannelChatRecord( 
    _ChannelType
)

参数
_ChannelType

int

 
频道类型：

0用户

1当前

2组队

3行会

4世界

5小喇叭

6交易

7私聊

8全服

返回值
int

 
聊天记录数量

note_icon 备注
获取的信息存储在全局变量LuaRet中。

LuaRet[1]聊天记录总条数；

i为聊天记录条目索引，从2开始。

LuaRet[i][1]玩家角色名、等级、VIP等级、性别（1男性；2女性）和职业（1战士；2法师；3术士）；

LuaRet[i][2]具体内容。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_ChannelType的类型：8全服

示例代码
Luacopy 复制
local count = CL:GetChannelChatRecord(3) --获取行会频道的聊天内容
dbg("数量:"..LuaRet[1]..",玩家名："..CL:GBK2UTF8(LuaRet[2][1])..",聊天内容:"..LuaRet[2][2]) --若出现字符乱码使用CL:GBK2UTF8()转化编码

--控制台将输出：
数量:1,玩家名：蒙星瑶:78:0:2:3,聊天内容:hello
<上一篇:将角色从聊天黑名单中移除下一篇:获取聊天框中选中多功能编辑框的句柄>
GetChatWindowSelectedChatLine
获取聊天框中选中多功能编辑框的句柄

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取聊天框中选中的多功能编辑框的句柄。

语法
Luacopy 复制
CL:GetChatWindowSelectedChatLine()

参数
无

 
返回值
int

 
多功能编辑框的句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取指定频道的聊天记录下一篇:获取是否允许使用聊天表情>
GetEnableUseChatFace
获取是否允许使用聊天表情

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取是否允许使用聊天表情。

语法
Luacopy 复制
CL:GetEnableUseChatFace()

参数
无

 
返回值
bool

 
true允许使用。

false禁止使用。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local flag = CL:GetEnableUseChatFace() --获取是否允许使用聊天表情
if flag then
    dbg("允许使用聊天表情")
else
    dbg("不允许使用聊天表情")
end

--控制台将输出：“允许使用聊天表情”。
<上一篇:获取聊天框中选中多功能编辑框的句柄下一篇:获取指定频道是否显示文本>
GetShowChannelText
获取指定频道是否显示文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取指定频道是否显示文本的设置。

语法
Luacopy 复制
CL:GetShowChannelText( 
    _Channel
)

参数
_Channel

int

 
频道：

1当前

2组队

3行会

4世界

5小喇叭

7私聊

8全服

20系统

返回值
bool

 
true表示显示。

false表示隐藏。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_Channel的类型：8全服

示例代码
Luacopy 复制
local status = CL:GetShowChannelText(1) --获取当前频道是否显示文本
if status then 
    dbg("显示")
else
    dbg("不显示")
end

--控制台将输出：“显示”。
<上一篇:获取是否允许使用聊天表情下一篇:初始化聊天框背景颜色>
InitChannelExFillBackColor
初始化聊天框背景颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数初始化聊天框的背景颜色。

note_icon 备注
手游使用该接口前，请先将全局变量ChatContentExFillBack设置为true。

语法
Luacopy 复制
CL:InitChannelExFillBackColor( 
    _Channel,
    _r,
    _g,
    _b,
    _a
)

参数
_Channel

int

 
聊天频道

1当前

2组队

3行会

4世界

5小喇叭

7私聊（暂无效果）

8全服

20系统（暂无效果）

_r

int

 
红色的颜色值

范围为0~255

_g

int

 
绿色的颜色值

范围为0~255

_b

int

 
蓝色的颜色值

范围为0~255

_a

int

 
颜色的透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_Channel的类型：8全服

示例代码
Luacopy 复制
CL:InitChannelExFillBackColor(1,0,0,255,255) --初始化当前聊天框中背景颜色为蓝色

--此示例代码运行成功如下图所示。

InitChannelExFillBackColor
<上一篇:获取指定频道是否显示文本下一篇:初始化聊天框文本颜色>
InitChannelExTextColor
初始化聊天框文本颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数初始化聊天框文本颜色。

语法
Luacopy 复制
CL:InitChannelExTextColor( 
    _Channel,
    _r,
    _g,
    _b,
    _a
)

参数
_Channel

int

 
聊天频道

1当前

2组队

3行会

4世界

5小喇叭

7私聊（暂无效果）

8全服

20系统（暂无效果）

_r

int

 
红色的颜色值

范围为0~255

_g

int

 
绿色的颜色值

范围为0~255

_b

int

 
蓝色的颜色值

范围为0~255

_a

int

 
颜色的透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_Channel的类型：8全服

示例代码
Luacopy 复制
CL:InitChannelExTextColor(1,255,0,0,255) --设置当前聊天框中文本颜色为红色

--此示例代码运行成功如下图所示。

InitChannelExTextColor
<上一篇:初始化聊天框背景颜色下一篇:初始化聊天频道背景颜色>
InitChannelFillBackColor
初始化聊天频道背景颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数初始化聊天频道背景颜色。

语法
Luacopy 复制
CL:InitChannelFillBackColor( 
    _Channel,
    _r,
    _g,
    _b,
    _a
)

参数
_Channel

int

 
聊天频道

1当前

2组队

3行会

4世界

5小喇叭

7私聊（暂无效果）

8全服

20系统（暂无效果）

_r

int

 
红色的颜色值

范围为0~255

_g

int

 
绿色的颜色值

范围为0~255

_b

int

 
蓝色的颜色值

范围为0~255

_a

int

 
颜色的透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_Channel的类型：8全服

示例代码
Luacopy 复制
CL:InitChannelFillBackColor(1,255,0,0,255)

--示例代码运行效果如下图。

InitChannelFillBackColor
<上一篇:初始化聊天框文本颜色下一篇:初始化聊天频道文字颜色>
InitChannelTextColor
初始化聊天频道文字颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数初始化聊天频道文字颜色。

语法
Luacopy 复制
CL:InitChannelTextColor( 
    _Channel,
    _r,
    _g,
    _b,
    _a
)

参数
_Channel

int

 
聊天频道

1当前

2组队

3行会

4世界

5小喇叭

7私聊（暂无效果）

8全服

20系统（暂无效果）

_r

int

 
红色的颜色值

范围为0~255

_g

int

 
绿色的颜色值

范围为0~255

_b

int

 
蓝色的颜色值

范围为0~255

_a

int

 
颜色的透明度

note_icon 备注
透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_Channel的类型：8全服

示例代码
Luacopy 复制
CL:InitChannelTextColor(1,255,0,0,255)

--示例代码运行效果如下图。

InitChannelTextColor
<上一篇:初始化聊天频道背景颜色下一篇:设置聊天框中私聊频道的文字颜色和背景颜色>
InitPrivateChannelColor
设置聊天框中私聊频道的文字颜色和背景颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-12-20 00:00:00
此函数设置聊天框中私聊频道的文字颜色和背景颜色。

如果手游调用此接口，只能在旧版聊天界面中生效。

InitPrivateChannelColor_3.png
语法
Luacopy 复制
CL:InitPrivateChannelColor(
    self_text_color,
    self_bk_color,
    other_text_color,
    other_bk_color
)
参数
self_text_color

unsigned int

 
玩家发送给他人的私聊消息的文本颜色

具体请参见颜色字符串页面

self_bk_color

unsigned int

 
玩家发送给他人的私聊消息的背景颜色

具体请参见颜色字符串页面

other_text_color

unsigned int

 
他人发送给玩家的私聊消息的文本颜色

具体请参见颜色字符串页面

note_icon 备注
此参数仅在全局变量ChatContentColorForceWhite设置为false时生效。

other_bk_color

unsigned int

 
他人发送给玩家的私聊消息的背景颜色

具体请参见颜色字符串页面

note_icon 备注
以上参数暂不支持直接使用16进制颜色值，建议使用接口MakeARGB生成颜色值。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--示例代码中的COLOR_RED、COLOR_YELLOW、COLOR_PINK和COLOR_WHITE为GlobalDefine.lua脚本文件中定义的颜色标记。

--设置玩家发送给他人的私聊消息的文本颜色为红色，设置玩家发送给他人的私聊消息的背景颜色为黄色。
--设置他人发送给玩家的私聊消息的背景颜色为粉色，设置他人发送给玩家的私聊消息的背景颜色为白色。
CL:InitPrivateChannelColor(COLOR_RED,COLOR_YELLOW,COLOR_PINK,COLOR_WHITE)

--此示例代码运行前效果如下图所示。

InitPrivateChannelColor.png

--此示例代码运行后效果如下图所示。

InitPrivateChannelColor.png
<上一篇:初始化聊天频道文字颜色下一篇:设置聊天小框中私聊频道的文字颜色和背景颜色>
InitPrivateChannelExColor
设置聊天小框中私聊频道的文字颜色和背景颜色

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-12-20 00:00:00
此函数设置聊天小框中私聊频道的文字颜色和背景颜色。

语法
Luacopy 复制
CL:InitPrivateChannelExColor(
    self_text_color,
    self_bk_color,
    other_text_color,
    other_bk_color
)
参数
self_text_color

unsigned int

 
玩家发送给他人的私聊消息的文本颜色

具体请参见颜色字符串页面

self_bk_color

unsigned int

 
玩家发送给他人的私聊消息的背景颜色

具体请参见颜色字符串页面

other_text_color

unsigned int

 
他人发送给玩家的私聊消息的文本颜色

具体请参见颜色字符串页面

other_bk_color

unsigned int

 
他人发送给玩家的私聊消息的背景颜色

具体请参见颜色字符串页面

note_icon 备注
以上参数暂不支持直接使用16进制颜色值，建议使用接口MakeARGB生成颜色值。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
--示例代码中的COLOR_RED、COLOR_YELLOW、COLOR_PINK和COLOR_BLACK为GlobalDefine.lua脚本文件中定义的颜色标记。

--设置玩家发送给他人的私聊消息的文本颜色为红色，设置玩家发送给他人的私聊消息的背景颜色为黄色。
--设置他人发送给玩家的私聊消息的背景颜色为粉色，设置他人发送给玩家的私聊消息的背景颜色为黑色。
CL:InitPrivateChannelExColor(COLOR_RED,COLOR_YELLOW,COLOR_PINK,COLOR_BLACK)

--此示例代码运行前效果如下图所示。

InitPrivateChannelExColor.png

--此示例代码运行后效果如下图所示。

InitPrivateChannelExColor_2.png
<上一篇:设置聊天框中私聊频道的文字颜色和背景颜色下一篇:设置显示或隐藏聊天频道>
OnChatWindowShowChange
设置显示或隐藏聊天频道

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置显示或隐藏聊天频道。

语法
Luacopy 复制
CL:OnChatWindowShowChange( 
    _CheckNum,
    flg
)

参数
_CheckNum

int

 
聊天频道。

1世界频道

2组队频道

3行会频道

4附近频道

5私聊频道

flg

bool

 
指定频道是否显示。

true显示

false隐藏

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:OnChatWindowShowChange(2, false) --隐藏组队频道
<上一篇:设置聊天小框中私聊频道的文字颜色和背景颜色下一篇:重载聊天信息>
ReloadChatWindowMessage
重载聊天信息

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-03-24 00:00:00
此函数作用为重载聊天信息。

使用此接口可解决修改游戏窗口分辨率后聊天信息被清空的问题。

caution_icon注意
1.仅允许在下述情况中调用此接口：

（1）逻辑事件LUA_EVENT_INITMAININTERFACE（初始化游戏主界面事件）对应的回调函数中

（2）聊天窗口（ChatWindow窗口）构造（初始化）完成后

2.此接口调用完成后不应再修改ChatContentRE控件的宽度和高度, 否则可能出现消息显示截断等情况。

语法
Luacopy 复制
CL:ReloadChatWindowMessage()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）中的MsgShow.lua脚本文件为例。

--……省略部分代码

function AE_ScreenSizeChange()

--……省略部分代码

    CL:ReloadChatWindowMessage() --重载聊天信息
end
RegisterUIEvent(LUA_EVENT_INITMAININTERFACE, "AE_ScreenSizeChange", AE_ScreenSizeChange) --分辨率改变

--此示例代码运行成功后，如修改游戏窗口分辨率，聊天信息仍会正常显示，如下图所示。

ReloadChatWindowMessage.png
<上一篇:设置显示或隐藏聊天频道下一篇:设置是否屏蔽特定的聊天频道>
SetChatChannelOpenClose
设置是否屏蔽特定的聊天频道

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-08-02 00:00:00
此函数为设置是否屏蔽特定的聊天频道。

语法
Luacopy 复制
CL:SetChatChannelOpenClose( 
    _Channel,
    _Open
)

参数
_Channel

int

 
频道：

1当期

2组队

3行会

4世界

5小喇叭

7私聊

8全服

20系统（仅支持3D端游和3D手游）

_Open

bool

 
true可表示不屏蔽

false表示屏蔽

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_Channel的类型：8全服

示例代码
Luacopy 复制
CL:SetChatChannelOpenClose(1,false) --屏蔽当前频道
<上一篇:重载聊天信息下一篇:设置聊天窗口是否自动语音聊天>
SetChatWindowAutoVoiceChat
设置聊天窗口是否自动语音聊天

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置聊天窗口是否自动语音聊天。

语法
Luacopy 复制
CL:SetChatWindowAutoVoiceChat( 
    flg,
    index
)

参数
flg

bool

 
true表示打开自动语音聊天

false表示关闭自动语音聊天

index

int

 
频道：

1当前

2组队

3行会

4世界

5小喇叭

7私聊

8全服

20系统

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数index的类型：8全服

示例代码
Luacopy 复制
CL:SetChatWindowAutoVoiceChat(false,20) --关闭系统聊天窗口自动语音聊天
<上一篇:设置是否屏蔽特定的聊天频道下一篇:设置私聊文字是否高亮>
SetChatWindowIsWhite
设置私聊文字是否高亮

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置私聊文字的颜色是否高亮。需在接受消息方进行设置后才能生效。

设置前后的颜色对比如下图。

默认：SetChatWindowIsWhite-F

高亮色：SetChatWindowIsWhite-T

语法
Luacopy 复制
CL:SetChatWindowIsWhite( 
    _Flag
)

参数
_Flag

bool

 
true表示是

false表示否

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置聊天窗口是否自动语音聊天下一篇:设置聊天窗口是否为新风格>
SetChatWindowNewStyle
设置聊天窗口是否为新风格

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置聊天窗口是否为新风格的聊天窗口。

note_icon 备注
新的聊天窗口有系统频道，老的聊天窗口没有系统频道。

语法
Luacopy 复制
CL:SetChatWindowNewStyle( 
    flg
)

参数
flg

bool

 
true表示新的聊天窗口

false表示旧的聊天窗口

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetChatWindowNewStyle(true) --设置聊天窗口为新风格
<上一篇:设置私聊文字是否高亮下一篇:设置聊天窗口VIP等级标识图片>
SetChatWindowVipIcon
设置聊天窗口VIP等级标识图片

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置聊天窗口中，玩家角色VIP标识的图片资源。

语法
Luacopy 复制
CL:SetChatWindowVipIcon(
    level,
    withNum,
    imageID
)
参数
level

int

 
要设置的VIP等级

withNum

bool

 
true表示带等级数字

false表示不带等级数字

imageID

string

 
要设置的图片资源ID。格式为"VIP字符的图片资源ID, VIP等级数字1的图片资源ID"。程序会自动匹配后续的数字图片资源。如不带等级数字，则省略不填数字图片资源ID。

若填空字符串，则默认设置对应的图片资源ID为0。

返回值
 
是否设置成功

true表示设置成功

false表示设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetChatWindowVipIcon(11, true, "4000403000, 4000403001") --设置VIP11级的图片为带数字的样式，VIP图片ID为4000403000, 数字图片的起始ID为4000403001
CL:SetChatWindowVipIcon(2, false, "4000403000") --设置VIP2级的图片为不带数字的样式，VIP图片ID为4000403000

--设置的效果如下图

SetChatWindowVipIcon_1

SetChatWindowVipIcon_2
<上一篇:设置聊天窗口是否为新风格下一篇:设置是否允许使用聊天表情>
SetEnableUseChatFace
设置是否允许使用聊天表情

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置是否允许使用聊天表情。

语法
Luacopy 复制
CL:SetEnableUseChatFace( 
    _UseChatFace
)

参数
_UseChatFace

bool

 
true表示允许使用。

false表示禁止使用。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetEnableUseChatFace(true) --设置允许使用聊天表情
<上一篇:设置聊天窗口VIP等级标识图片下一篇:设置底部聊天框中颜色表的颜色>
SetGUIFormColorData
设置底部聊天框中颜色表的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-18 00:00:00
此函数设置底部聊天框中颜色表的颜色。

语法
Luacopy 复制
CL:SetGUIFormColorData( 
    _Idx,
    _r,
    _g,
    _b,
    _a
)

参数
_Idx

int

 
颜色表索引值

范围1~13，具体请参见消息颜色定义页面。

_r

int

 
红色的颜色值

范围为0~255

_g

int

 
绿色的颜色值

范围为0~255

_b

int

 
蓝色的颜色值

范围为0~255

_a

int

 
颜色的透明度

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
CL:SetGUIFormColorData(0,255,255,255,255)
<上一篇:设置是否允许使用聊天表情下一篇:设置聊天表情使用上限>
SetMaxFaceCount
设置聊天表情使用上限

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置聊天表情使用上限。

语法
Luacopy 复制
CL:SetMaxFaceCount( 
    _Count
)

参数
_Count

int

 
聊天表情最大数量。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMaxFaceCount(3) --设置聊天表情最大数量为3
<上一篇:设置底部聊天框中颜色表的颜色下一篇:设置私聊频道中的前缀内容>
SetPrivateChatSenderPrefix
设置私聊频道中的前缀内容

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置私聊频道中的前缀内容。在私聊中，例如角色A对角色B发送消息，角色A会提示“你对角色B说：XXXX”，其中的“你对”和“说”即为前缀。

语法
Luacopy 复制
CL:SetPrivateChatSenderPrefix( 
    _HandleID,
    _Prifix
)

参数
_HandleID

int

 
聊天窗口的句柄。

点击窗口句柄了解更多信息。

_Prifix

string

 
前缀的内容。

使用英文:替代角色B的名字。例如“你对:说”。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--此代码段来自“151750\GUILayout\ChatWindowEXHide.lua”，可在其中修改
function ChatWindowEXHide.UIInit(_Handle)
    ChatWindowEXHide.WndHandle = _Handle
    CL:SetPrivateChatSenderPrefix(_Handle,"你对:说2")--你对xxx说
    CL:SetPrivateChatSenderSuffix(_Handle,"对你说2")--xxx对你说
end

--此示例代码运行成功如下图所示。

SetPrivateChatSenderPrefix
<上一篇:设置聊天表情使用上限下一篇:设置私聊频道中的后缀内容>
SetPrivateChatSenderSuffix
设置私聊频道中的后缀内容

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置私聊频道中的后缀内容。在私聊中，例如角色A对角色B发送消息，角色B会提示“角色A对你说：XXXX”，其中的“对你说”即为后缀。

语法
Luacopy 复制
CL:SetPrivateChatSenderSuffix( 
    _HandleID,
    _Suffix
)

参数
_HandleID

int

 
聊天窗口的句柄。

点击窗口句柄了解更多信息。

_Suffix

string

 
后缀的内容。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--此代码段来自“151750\GUILayout\ChatWindowEXHide.lua”，可在其中修改
function ChatWindowEXHide.UIInit(_Handle)
    ChatWindowEXHide.WndHandle = _Handle
    CL:SetPrivateChatSenderPrefix(_Handle,"你对:说2")--你对xxx说
    CL:SetPrivateChatSenderSuffix(_Handle,"对你说2")--xxx对你说
end

--此示例代码运行成功如下图所示。

SetPrivateChatSenderSuffix
<上一篇:设置私聊频道中的前缀内容下一篇:设置所有频道是否显示文本>
SetShowAllChannelText
设置所有频道是否显示文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置所有频道是否显示文本。

语法
Luacopy 复制
CL:SetShowAllChannelText( 
    _ShowText
)

参数
_ShowText

bool

 
true表示显示。

false表示隐藏。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置私聊频道中的后缀内容下一篇:设置指定频道是否显示文本>
SetShowChannelText
设置指定频道是否显示文本

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置指定频道是否显示文本。

语法
Luacopy 复制
CL:SetShowChannelText( 
    _Channel,
    _ShowText
)

参数
_Channel

int

 
频道：

1当前

2组队

3行会

4世界

5小喇叭

7私聊

8全服

20系统

_ShowText

bool

 
true表示显示。

false表示隐藏。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_Channel的类型：8全服

示例代码
Luacopy 复制
CL:SetShowChannelText(1,true) --显示当前聊天频道文本
<上一篇:设置所有频道是否显示文本
CancelRecord
取消录音

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数取消录音。

语法
Luacopy 复制
CL:CancelRecord()
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
下一篇:获取当前录音设备数量>
GetRecordDevices
获取当前录音设备数量

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取当前录音设备的数量。

语法
Luacopy 复制
CL:GetRecordDevices()

参数
无

 
返回值
int

 
录音设备的数量。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:取消录音下一篇:获取当前语音播放音量>
GetRecordPlayVolume
获取当前语音播放音量

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取当前语音播放的音量。

语法
Luacopy 复制
CL:GetRecordPlayVolume()

参数
无

 
返回值
double

 
音量值，范围为0~1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前录音设备数量下一篇:判断是否在播放录音中>
IsPlayRecording
判断是否在播放录音中

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-03-28 00:00:00
此函数判断是否在播放录音的状态中。

语法
Luacopy 复制
CL:IsPlayRecording()

参数
无

 
返回值
bool

 
true处于播放录音状态

false未处于播放录音状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:IsPlayRecording() then
    dbg("正在播放录音中……")
else
    dbg("未播放录音！")
end
<上一篇:获取当前语音播放音量下一篇:判断是否在录音中>
IsRecording
判断是否在录音中

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数判断是否在录音状态中。

语法
Luacopy 复制
CL:IsRecording()

参数
无

 
返回值
bool

 
在录音状态中返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:IsRecording() then
    dbg("正在录音中……")
end
<上一篇:判断是否在播放录音中下一篇:播放录音>
PlayRecord
播放录音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数播放录音文件。

语法
Luacopy 复制
CL:PlayRecord( 
    filename,
    callback
)

参数
filename

string

 
录音文件名。

从接口StartRecord执行后获取。

callback

string

 
要执行的回调函数名。

程序同时会传递以下参数，保存于全局变量LuaParam中，由脚本进行后续的处理。

播放状态(int)：0表示开始播放；1表示准备下载；2表示下载结束。

播放结果(bool)：true表示播放成功；false表示播放失败。

返回值
操作结果

bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:StartRecord("RecordCallback") --开始录音，录音结束后回调函数
local key = ""

function RecordCallback()
    if true  ~= LuaParam[1] then
        return
    end
    key = LuaParam[2] --获取录音文件名
    local duration = LuaParam[3] / 1000  --计算时长，小数部分根据总时长处理
end

CL:PlayRecord(key, "PlayVocalProgress")

function PlayVocalProgress()
    local status = LuaParam[1]
    local result= LuaParam[2]
end
<上一篇:判断是否在录音中下一篇:设定当前播放语音音量>
SetRecordPlayVolume
设定当前播放语音音量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设定当前播放语音音量。

语法
Luacopy 复制
CL:SetRecordPlayVolume( 
    _Volume
)

参数
_Volume

double

 
音量值，范围为0~1。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetRecordPlayVolume(100) --设置声音参数为100
<上一篇:播放录音下一篇:开始语音转文字>
StartRecognitionRecord
开始语音转文字

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数开始语音转文字。

例如，下图为语音转文字演示效果。

StartRecognitionRecord

语法
Luacopy 复制
CL:StartRecognitionRecord(
    callback
)
参数
callback

string

 
Lua回调函数名

返回值
bool

 
true操作成功。

false操作失败。

如操作成功，语音转文字生成的数据存储在全局变量LuaParam中。

LuaParam[1]bool是否转换成功

LuaParam[2]string本地录音文件的文件名

LuaParam[3]string转换后的文本

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:StartRecognitionRecord("RecordCallBack") then
    dbg("成功")
else
    dbg("失败")
end 
function RecordCallBack()
    dbg("开始语音转文字")
end
<上一篇:设定当前播放语音音量下一篇:开始录音>
StartRecord
开始录音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行开始录音的操作。

语法
Luacopy 复制
CL:StartRecord( 
    callback
)

参数
callback

string

 
执行结束录音StopRecord函数后的回调函数。

程序会传递以下参数作为回调函数的入参，由脚本进行后续的处理。

是否成功(bool)；文件名(string)；持续时间(int)

返回值
bool

 
成功开始录音返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:StartRecord("RecordCallback") --开始录音，录音结束后回调函数
local key = ""

function RecordCallback()
    if true  ~= LuaParam[1] then
        return
    end
    key = LuaParam[2] --获取录音文件名
    local duration = LuaParam[3] / 1000  --计算时长，小数部分根据总时长处理
end
<上一篇:开始语音转文字下一篇:停止播放录音>
StopPlayRecord
停止播放录音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行停止播放录音的操作。

语法
Luacopy 复制
CL:StopPlayRecord()

参数
返回值
bool

 
操作执行成功返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:开始录音下一篇:结束录音>
StopRecord
结束录音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行结束录音的操作。

语法
Luacopy 复制
CL:StopRecord()

参数
返回值
bool

 
操作执行成功返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:停止播放录音
AcceptApplyTeam
是否接受入队请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置是否接受其他玩家角色的入队请求。

语法
Luacopy 复制
CL:AcceptApplyTeam( 
    _SenderName,
    _accept
)

参数
_SenderName

string

 
申请入队角色的名字。

_accept

bool

 
是否接受入队。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AcceptApplyTeam("滑千叶",true) --接受玩家“滑千叶”入队

--此示例代码运行成功如下图所示。

AcceptApplyTeam
下一篇:回应组队邀请>
AcceptTeamInvite
回应组队邀请

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数用于回应发送的组队邀请。

语法
Luacopy 复制
CL:AcceptTeamInvite( 
    _SenderName,
    _accept
)

参数
_SenderName

string

 
邀请方角色的名字。

_accept

bool

 
是否接受邀请。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AcceptTeamInvite("滑千叶",true) --接受玩家“滑千叶”发来的组队邀请

--此示例代码运行成功如下图所示。

AcceptTeamInvite
<上一篇:是否接受入队请求下一篇:申请加入队伍>
ApplyForTeam
申请加入队伍

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数用于申请加入队伍。

该接口会向服务器发送申请入队消息，服务器返回结果后会调用LUA_EVENT_JOINTEAM类型的脚本事件，参数是入队玩家角色名。

语法
Luacopy 复制
CL:ApplyForTeam( 
    _LeaderName
)

参数
_LeaderName

string

 
队长的名字。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ApplyForTeam("滑千叶") --申请加入“滑千叶”的队伍

--此示例代码运行成功如下图所示。

ApplyForTeam
<上一篇:回应组队邀请下一篇:创建队伍>
CreateTeam
创建队伍

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-18 00:00:00
此函数用于创建队伍。

此接口会向服务器发送创建队伍消息，服务器返回消息后会触发CREATE_TEAM类型的脚本事件

语法
Luacopy 复制
CL:CreateTeam( 
    _Tag,
    _CallBack
)

参数
_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
创建队伍成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:CreateTeam("创建队伍成功","MyTeamUpdate") --创建队伍，标签记作“创建队伍成功”

--此示例代码运行成功如下图所示。

CreateTeam
<上一篇:申请加入队伍下一篇:解散队伍>
DismissTeam
解散队伍

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数用于解散队伍。

该接口会向服务器发送解散队伍消息，服务器返回结果后会调用LUA_EVENT_ONLEAVETEAM类型的脚本事件。

语法
Luacopy 复制
CL:DismissTeam()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:DismissTeam() then
    dbg("队伍解散")
end

--此示例代码成功如下图所示提示。

DismissTeam
<上一篇:创建队伍下一篇:获取周围队伍信息>
GetNearbyTeamInfo
获取周围队伍信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-08-21 00:00:00
此函数获取周围队伍的队长的信息。

note_icon 备注
该接口会向服务器发送消息，服务器返回后会触发AROUND_TEAM类型的脚本函数，并传递一个Lua表。

语法
Luacopy 复制
CL:GetNearbyTeamInfo( 
    _Tag,
    _CallBack
)

参数
_Tag

string

 
自定义标签（用于区分不同作用的回调函数）

_CallBack

string

 
获取信息成功后执行的回调函数名

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

i队伍的序号。

LuaParam[1][i][2]队长的名字；

LuaParam[1][i][5]队长的等级；

LuaParam[1][i][6]队长的职业，1代表战士，2代表法师，3代表术士；

LuaParam[1][i][7]队长的性别，1代表男，2代表女；

LuaParam[1][i][8]队长所属行会的名字；

LuaParam[1][i][9]队伍人数。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增以下可获取信息：

LuaParam[1][1][8]队长所属行会的名字

LuaParam[1][1][9]队伍人数

示例代码
Luacopy 复制
CL:GetNearbyTeamInfo("get_team_lead", "call_back_func")

function call_back_func()
    local team_leader_hhname = LuaParam[1][1][8]
    local team_leader_num = LuaParam[1][1][9]
    dbg("行会名:"..team_leader_hhname)
    dbg("队伍人数:"..team_leader_num)
end

--此示例代码运行成功如下图所示。

GetNearbyTeamInfo.png
<上一篇:解散队伍下一篇:获取当前组队状态>
GetRoleTeamStatus
获取当前组队状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前组队状态。

语法
Luacopy 复制
CL:GetRoleTeamStatus()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的组队状态存储在全局变量LuaRet中。值的代表含义如下。

1代表自动组队；

2代表手动组队；

3代表拒绝组队。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local status = 0
if CL:GetRoleTeamStatus() then
    status = LuaRet
    if status == 1 then
        dbg("当前组队状态为自由组队")
    else
        if status == 2 then
            dbg("当前组队状态为手动组队")
        else
            dbg("当前组队状态为拒绝组队")
        end
    end
end
<上一篇:获取周围队伍信息下一篇:获取组队成员GUID列表>
GetTeamMemberGUIDList
获取组队成员GUID列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取组队成员GUID列表，队长位于列表的首位。

语法
Luacopy 复制
CL:GetTeamMemberGUIDList()

参数
无

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量LuaRet中。

LuaRet[i]第i个成员的GUID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetTeamMemberGUIDList() --获取成员GUID列表
dbg("队长GUID:"..LuaRet[1])

--此示例代码运行成功如下图所示。

GetTeamMemberGUIDList
<上一篇:获取当前组队状态下一篇:获取组队成员（含自身）的属性>
GetTeamPropByPlayerGUIDAll
获取组队成员（含自身）的属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-01-24 00:00:00
此函数获取玩家自身和其他组队成员的属性。

语法
Luacopy 复制
CL:GetTeamPropByPlayerGUIDAll( 
    _RoleGUID,
    _PropertyType
)

参数
_RoleGUID

string

 
玩家角色的GUID

_PropertyType

int

 
属性类型

玩家自身和其他组队成员可获取的属性类型不完全相同，具体说明如下表所示：

玩家自身的属性类型	其他组队成员的属性类型
0	角色名	角色名
1	头像	头像
2	是否在线（true代表在线）	是否在线（true代表在线）
3	等级	等级
4	职业（1代表战士，2代表法师，3代表术士）	职业（1代表战士，2代表法师，3代表术士）
5	性别（1代表男，2代表女）	性别（1代表男，2代表女）
6	当前所在地图的索引名（KeyName）	当前所在地图的GUID
7	当前所在地图的名称（Name）	当前所在地图的索引名（KeyName）
8	组队成员所属行会的名字	组队成员所属行会的名字
9	当前血量	当前血量
10	最大血量	最大血量
11	当前蓝量	当前蓝量
12	最大蓝量	最大蓝量
13	
Buff列表

i为索引号。

[i][1]Buff的ID（int）;

[i][2]叠加层数（int）；

[i][3]是否存在时限（bool），true代表存在时限，存活时长和剩余时长有效；false代表不存在时限，则Buff一直存在，存活时长和剩余时长无效。

[i][4]Buff存活时长（int），单位为秒（s）；

[i][5]Buff剩余时长（int），单位为秒（s）。

Buff列表

i为索引号。

[i][1]Buff的ID（int）;

[i][2]叠加层数（int）；

[i][3]是否存在时限（bool），true代表存在时限，存活时长和剩余时长有效；false代表不存在时限，则Buff一直存在，存活时长和剩余时长无效。

[i][4]Buff存活时长（int），单位为秒（s）；

[i][5]Buff剩余时长（int），单位为秒（s）。

note_icon 备注
如需获取全部完整的属性类型，则需要将引擎更新更新至2024年12月20日或者之后的版本。

特别注意当队友消失在视野内时, 血量和蓝量的值可能不准确，仅在某些特别情况下才会更新值。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

 
v1.1

 
修正参数_PropertyType的说明

 
v1.2

 
新增参数_PropertyType的类型：8组队成员所属行会的名字

 
v1.3

 
新增参数_PropertyType的类型：9当前血量、10最大血量、11当前蓝量和12最大蓝量

 
v1.4

 
新增参数_PropertyType的类型：13Buff列表

示例代码
Luacopy 复制
if CL:GetTeamMemberGUIDList() then
    local memeberList = LuaRet
    for i = 1, #memeberList do 
        dbg("memeberList[i]"..memeberList[i])
        for j = 0, 12 do 
            if CL:GetTeamPropByPlayerGUIDAll(tostring(memeberList[i]), j) then
                dbg(""..serialize(LuaRet))
            end
        end
    end
end 

--此示例代码运行成功如下图所示。

GetTeamPropByPlayerGUIDAll
<上一篇:获取组队成员GUID列表下一篇:获取组队成员的属性>
GetTeamPropByPlayerGUID
获取组队成员的属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数获取组队成员的属性。

note_icon 备注
此函数不能获取当前角色自身的属性。要获取自身的属性，请使用函数GetTeamPropByPlayerGUIDAll。

语法
Luacopy 复制
CL:GetTeamPropByPlayerGUID( 
    _RoleGUID,
    _PropertyType
)

参数
_RoleGUID

string

 
玩家角色的GUID。

_PropertyType

int

 
属性类型：

0角色名

1头像

2是否在线

3等级

4职业（1代表战士；2代表法师；3代表术士）

5性别（1代表男，2代表女）

6当前所在地图GUID

7当前所在地图索引名

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
if CL:GetTeamMemberGUIDList() then --获取当前组队玩家的guid列表
    dbg(LuaRet[2])
end
if CL:GetTeamPropByPlayerGUID(LuaRet[2],0) then --获取组队玩家的名字
    dbg("组队玩家的名字是："..CL:GBK2UTF8(LuaRet))
end

--此示例代码运行成功如下图所示。

GetTeamPropByPlayerGUID
<上一篇:获取组队成员（含自身）的属性下一篇:将玩家角色踢出队伍>
KickOutOfTeam
将玩家角色踢出队伍

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将玩家角色踢出队伍。

该接口会向服务器发送踢出队伍消息，服务器返回结果后会调用LUA_EVENT_ONLEAVETEAM类型的脚本事件。

语法
Luacopy 复制
CL:KickOutOfTeam( 
    _TargetName
)

参数
_TargetName

string

 
被踢玩家的角色名。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:KickOutOfTeam("滑千叶") --将玩家“滑千叶”踢出队伍

--此示例代码运行成功如下图所示。

KickOutOfTeam
<上一篇:获取组队成员的属性下一篇:离开队伍>
LeaveTeam
离开队伍

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数用于操作当前玩家角色离开所在的队伍。

此接口会向服务器发送离开队伍消息，服务器返回消息后会触发LUA_EVENT_ONLEAVETEAM类型的脚本事件。
语法
Luacopy 复制
CL:LeaveTeam()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LeaveTeam() --离开队伍

--此示例代码运行成功如下图所示。

LeaveTeam
<上一篇:将玩家角色踢出队伍下一篇:邀请玩家角色组队(Ex)>
LogicTeamInviteEx
邀请玩家角色组队(Ex)

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数邀请其他玩家角色进行组队。此接口不会弹出组队开关未开启提示窗口。

语法
Luacopy 复制
CL:LogicTeamInviteEx( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色的名字。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LogicTeamInviteEx("滑千叶") --邀请“滑千叶”组队

--此示例代码运行成功如下图所示。

LogicTeamInvite
<上一篇:离开队伍下一篇:邀请玩家角色组队>
LogicTeamInvite
邀请玩家角色组队

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数邀请其他玩家角色进行组队。

语法
Luacopy 复制
CL:LogicTeamInvite( 
    _PlayerName
)

参数
_PlayerName

string

 
玩家角色的名字。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:LogicTeamInvite("滑千叶") --邀请“滑千叶”组队

--此示例代码运行成功如下图所示。

LogicTeamInvite
<上一篇:邀请玩家角色组队(Ex)下一篇:主动处理组队请求>
OnDealWithTeamInviteReq
主动处理组队请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-01-18 00:00:00
组队请求队列非空时，执行此接口会主动处理组队请求队列中的第一条，并弹出提示菜单。

TeamInvite.png
语法
Luacopy 复制
CL:OnDealWithTeamInviteReq()

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
<上一篇:邀请玩家角色组队下一篇:设置当前组队状态>
SetRoleTeamStatus
设置当前组队状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置当前组队状态。

语法
Luacopy 复制
CL:SetRoleTeamStatus( 
    _status
)

参数
_status

int

 
组队状态：

1代表自动组队。

2代表手动组队。

3代表拒绝组队。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetRoleTeamStatus(2) --设置当前组队状态为“手动组队”

--此示例代码运行成功如下图所示。

SetRoleTeamStatus
<上一篇:主动处理组队请求下一篇:设置队伍成员角色模型的变色效果>
SetTeamColor
设置队伍成员角色模型的变色效果

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-03-18 00:00:00
此函数设置队伍成员角色模型的变色效果，仅玩家自己可见。

此接口设置的变色效果优先级高于其他变色效果（例如：玩家中毒变色）。

语法
Luacopy 复制
CL:SetTeamColor(
    Color_R,
    Color_G,
    Color_B,
    Color_A
)
参数
Color_R

int

 
红色的颜色值

范围为0~255

Color_G

int

 
绿色的颜色值

范围为0~255

Color_B

int

 
蓝色的颜色值

范围为0~255

Color_A

int

 
颜色的透明度

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
CL:SetTeamColor(255,0,0,255) --设置队伍成员角色模型为红色

--此示例代码运行成功如下图所示（当前玩家与同一队伍的其他玩家的角色模型均为红色，其余玩家的角色模型无变色效果）。

SetTeamColor.png
<上一篇:设置当前组队状态下一篇:移交队长>
TransferTeamLeader
移交队长

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数用于移交当前队伍的队长。

该接口会向服务器发送移交队长消息，服务器返回结果后会调用LUA_EVENT_TRANSFERLEADERTEAM类型的脚本事件。

语法
Luacopy 复制
CL:TransferTeamLeader( 
    _LeaderName
)

参数
_LeaderName

string

 
新队长的名字。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:TransferTeamLeader("滑千叶") --将队长移交至玩家“滑千叶”

--此示例代码运行成功如下图所示。

TransferTeamLeader
<上一篇:设置队伍成员角色模型的变色效果
FamilyAddAlly
行会联盟

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-04-01 00:00:00
此函数作用为发起行会联盟请求。

语法
Luacopy 复制
CL:FamilyAddAlly(
    _FamilyNmae,
    _Appcet
)
参数
_FamilyNmae

string

 
行会名

_Appcet

string

 
是否同意

true同意

false不同意

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function FamilyAddAllyVerify(familyName)
    MessageBox(1, familyName.."行会请求与您的行会结盟, 是否同意？这是脚本问的", "AppcetFamilyAddAlly(\""..familyName.."\",1)", "AppcetFamilyAddAlly(\""..familyName.."\",0)", false)
    return true
end

function AppcetFamilyAddAlly(familyName, appcet)
    CL:FamilyAddAlly(familyName, appcet)
end
下一篇:取消加入行会>
FamilyCancelJoinReq
取消加入行会

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数取消加入行会。

语法
Luacopy 复制
CL:FamilyCancelJoinReq( 
    _Guid,
    _Tag,
    _CallBack
)

参数
_Guid

string

 
行会的GUID。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
获取信息成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
程序同时会传递以下参数，保存于全局变量LuaParam中，由脚本进行后续的处理。

LuaParam[1]行会的GUID；

LuaParam[2]错误码，0代表取消成功。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyAllMenberList(0,2,"hanghuichengyuan","getFamilyAllMenberList")--获取行会成员信息
function getFamilyAllMenberList()
    local family_guid = LuaParam[4][1][5]
    CL:FamilyCancelJoinReq(family_guid,"FamilyListWnd_取消申请","cancelJoinReqBack") --取消加入行会
end	

function cancelJoinReqBack()
    local status = LuaParam[2] --获取错误码
    if status == 0 then
        dbg("取消成功")
    end
end
<上一篇:行会联盟下一篇:创建行会新封号>
FamilyCreateTitle
创建行会新封号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数创建行会新封号。

note_icon 备注
最多允许创建16个自定义封号。

语法
Luacopy 复制
CL:FamilyCreateTitle( 
    _Name,
    _Tag,
    _CallBack
)

参数
_Name

string

 
新的封号名。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
创建成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
创建成功后，返回的行会所有封号列表保存于全局变量LuaParam中。

i为封号的序号。

LuaParam[1][i][1]封号的ID；

LuaParam[1][i][2]封号名称。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:FamilyCreateTitle("组长","InputBox_创建新封号","UpdateTitleList") --创建行会新封号“组长”
function UpdateTitleList()
    local tab = LuaParam[1] --行会封号列表
    dbg("行会新封号："..tab[5][2])
end

--此示例代码运行成功如下图所示。

FamilyCreateTitle
<上一篇:取消加入行会下一篇:删除行会封号>
FamilyDeleteTitle
删除行会封号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数删除行会封号。

语法
Luacopy 复制
CL:FamilyDeleteTitle( 
    title,
    _Tag,
    _CallBack
)

参数
title

int

 
封号的ID。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
删除成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:FamilyDeleteTitle(4,"FamilyEditTitleWnd_删除封号","DeleteTitleList") --删除ID是4的封号

function DeleteTitleList()
    dbg("删除成功")
end
<上一篇:创建行会新封号下一篇:解散当前行会>
FamilyDismiss
解散当前行会

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数解散当前行会。

语法
Luacopy 复制
CL:FamilyDismiss( 
    _Tag,
    _CallBack
)

参数
_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
需执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:FamilyDismiss("dismiss","dismissFamily") then
    dbg("解散行会")
end
function dismissFamily()
    dbg("回调")
end	

--此示例代码运行成功如下图所示。

FamilyDismiss
<上一篇:删除行会封号下一篇:修改行会封号>
FamilyEditTitle
修改行会封号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数修改行会封号。

语法
Luacopy 复制
CL:FamilyEditTitle( 
    title,
    _Name,
    _Tag,
    _CallBack
)

参数
title

int

 
封号的ID。

_Name

string

 
新的封号名称。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
修改成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
执行成功后，返回的行会所有封号列表保存于全局变量LuaParam中。

i为封号的序号。

LuaParam[1][i][1]封号的ID；

LuaParam[1][i][2]封号名称。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:FamilyEditTitle(4,"大组长","InputBox_修改封号","UpdateTitleList")
function UpdateTitleList()
    local tab = LuaParam[1] --行会列表
    dbg("修改后封号："..tab[5][2])
end

--此示例代码运行成功如下图所示。

FamilyEditTitle
<上一篇:解散当前行会下一篇:授予行会成员封号>
FamilyEntitle
授予行会成员封号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数授予行会成员封号。

语法
Luacopy 复制
CL:FamilyEntitle( 
    title,
    _Guid
)

参数
title

int

 
封号的ID。

_Guid

string

 
玩家角色的GUID。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyAllMenberList(0,2,"hanghuichengyuan","getFamilyAllMenberList")--获取行会成员信息

function getFamilyAllMenberList()
    local player_guid = LuaParam[4][3][1]
    CL:FamilyEntitle(4,player_guid) --给行会成员授予“组长”封号
end	

--此示例代码运行成功如下图所示。

FamilyEntitle
<上一篇:修改行会封号下一篇:获取行会特定类型信息>
FamilyInfoRequest
获取行会特定类型信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-10-30 00:00:00
此函数获取行会特定类型信息。

语法
Luacopy 复制
CL:FamilyInfoRequest( 
    _reqType,
    _Tag,
    _CallBack
)

参数
_reqType

int

 
类型

1行会公告

2行会消息

4行会封号

8行会成员

16敌对行会

32联盟行会

64入会申请列表

128行会基本信息

256可以加入的行会

512在线成员

2048所有成员

_Tag

string

 
自定义标签

用于区分不同作用的回调函数

_CallBack

string

 
获取信息成功后执行的回调函数名

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

行会公告：LuaParam[1](string)。

行会消息：LuaParam[1](string)。

行会封号：i为封号的序号；

LuaParam[1][i][1](unsigned char)封号ID；

LuaParam[1][i][2](string)封号名称。

行会成员：i为成员的序号；

LuaParam[1](int)当前第一个成员的index（从0开始）；

LuaParam[2](int)成员数量；

LuaParam[3](int)总共成员数量；

LuaParam[4][i][1](string)玩家GUID；

LuaParam[4][i][2](string)玩家名字；

LuaParam[4][i][3](unsigned int)玩家等级；

LuaParam[4][i][4](unsigned char)玩家职业（1战士 2法师 3术士）；

LuaParam[4][i][5](unsigned long long)行会GUID；

LuaParam[4][i][6](unsigned char)封号ID；

LuaParam[4][i][7](unsigned int)杀敌人数；

LuaParam[4][i][8](unsigned int)加入行会的时间；

LuaParam[4][i][9](unsigned int)最后一次上线时间；

LuaParam[4][i][10](unsigned char)是否在线；

LuaParam[4][i][11](unsigned int)当前贡献度；

LuaParam[4][i][12](unsigned int)累计贡献度；

LuaParam[4][i][13]最后一次离线时间，时间戳格式。

敌对行会：i为行会的序号；

LuaParam[1](int)总共行会数量；

LuaParam[2](int)当前第一个行会的index（从0开始）；

LuaParam[3](int)行会数量；

LuaParam[4][i][1](string)行会GUID；

LuaParam[4][i][2](string)行会名称。

联盟行会：i为行会的序号；

LuaParam[1](int)总共行会数量；

LuaParam[2](int)当前第一个行会的index（从0开始）；

LuaParam[3](int)行会数量；

LuaParam[4][i][1](string)行会GUID；

LuaParam[4][i][2](string)行会名称。

入会申请列表：i为申请者的序号；

LuaParam[1](int)总共的成员数量；

LuaParam[2](int)当前第一个申请者的index（从0开始）；

LuaParam[3](unsigned short)申请者数量；

LuaParam[4][i][1](string)玩家GUID；

LuaParam[4][i][2](string)玩家名字；

LuaParam[4][i][3](unsigned int)玩家等级；

LuaParam[4][i][4](unsigned char)玩家职业（1战士 2法师 3术士）。

行会基本信息：

LuaParam[1](unsigned int)行会的创建时间；

LuaParam[2](unsigned long long)行会GUID；

LuaParam[3](unsigned int)行会成员总数量；

LuaParam[4](string)行会名称；

LuaParam[5](unsigned char)查询者自身在行会中的封号ID。

可以加入的行会：i为行会的序号；

LuaParam[1](int)行会总数；

LuaParam[2](int)当前第一个开始索引（从0开始）；

LuaParam[3](unsigned short)行会数目；

LuaParam[4][i][1](string)行会名称；

LuaParam[4][i][2](string)会长名称；

LuaParam[4][i][3](unsigned int)行会人数；

LuaParam[4][i][4](unsigned char)是否申请过；

LuaParam[4][i][5](string)行会GUID。

在线成员：i为成员的序号；

LuaParam[1](int)第一个成员索引（从0开始）；

LuaParam[2](int)成员数量；

LuaParam[3](int)成员总数；

LuaParam[4][i][1](string)玩家GUID；

LuaParam[4][i][2](string)玩家名字；

LuaParam[4][i][3](unsigned int)玩家等级；

LuaParam[4][i][4](unsigned char)玩家职业（1战士 2法师 3术士）；

LuaParam[4][i][5](unsigned long long)行会GUID；

LuaParam[4][i][6](unsigned char)封号ID；

LuaParam[4][i][7](unsigned int)杀敌人数；

LuaParam[4][i][8](unsigned int)加入行会的时间；

LuaParam[4][i][9](unsigned int)最后一次上线时间；

LuaParam[4][i][10](unsigned char)是否在线；

LuaParam[4][i][11](unsigned int)当前贡献度；

LuaParam[4][i][12](unsigned int)累计贡献度。

LuaParam[4][i][13]最后一次离线时间，时间戳格式。

所有成员：i为成员的序号；

LuaParam[1](int)第一个成员索引（从0开始）；

LuaParam[2](int)成员数量；

LuaParam[3](int)成员总数；

LuaParam[4][i][1](string)玩家GUID；

LuaParam[4][i][2](string)玩家名字；

LuaParam[4][i][3](unsigned int)玩家等级；

LuaParam[4][i][4](unsigned char)玩家职业（1战士 2法师 3术士）；

LuaParam[4][i][5](unsigned long long)行会GUID；

LuaParam[4][i][6](unsigned char)封号ID；

LuaParam[4][i][7](unsigned int)杀敌人数；

LuaParam[4][i][8](unsigned int)加入行会的时间；

LuaParam[4][i][9](unsigned int)最后一次上线时间；

LuaParam[4][i][10](unsigned char)是否在线；

LuaParam[4][i][11](unsigned int)当前贡献度；

LuaParam[4][i][12](unsigned int)累计贡献度。

LuaParam[4][i][13]最后一次离线时间，时间戳格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:FamilyInfoRequest(4,"FamilyEditTitleWnd_行会封号列表", "getFamilyTitleList") --获取行会封号信息
function getFamilyTitleList()
    local tab = LuaParam[1] --行会成员列表
    dbg("玩家封号0："..tab[1][2])
    dbg("玩家封号1："..tab[2][2])
    dbg("玩家封号2："..tab[3][2])
    dbg("玩家封号3："..tab[4][2])
end

--此示例代码运行成功如下图所示。

FamilyInfoRequest
<上一篇:授予行会成员封号下一篇:邀请玩家角色加入行会>
FamilyInvite
邀请玩家角色加入行会

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数邀请玩家角色加入行会。

语法
Luacopy 复制
CL:FamilyInvite( 
    _Name
)

参数
_Name

string

 
玩家角色的名字。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:FamilyInvite("战嫣嫣") --邀请玩家“战嫣嫣”加入行会

--此示例代码运行成功如下图所示。

FamilyInvite
<上一篇:获取行会特定类型信息下一篇:通过或拒绝玩家加入行会的申请>
FamilyJoinDenyOrAccept
通过或拒绝玩家加入行会的申请

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数通过或拒绝玩家加入行会的申请。

语法
Luacopy 复制
CL:FamilyJoinDenyOrAccept( 
    accept,
    _Guid
)

参数
accept

int

 
类型：

0代表拒绝

1代表接受

_Guid

string

 
玩家角色的GUID。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetApplyPlayerList(0, 10, "FamilyApplierWnd1_申请列表", "getApplyList") --获取行会申请加入列表

function FamilyApplierWnd1.getApplyList()
    local applyList = LuaParam[4]
    CL:FamilyJoinDenyOrAccept(1,applyList[3][1]) --接受请求
end
<上一篇:邀请玩家角色加入行会下一篇:发送加入行会请求>
FamilyJoinRequest
发送加入行会请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数发送加入行会请求。

语法
Luacopy 复制
CL:FamilyJoinRequest( 
    _Guid
)

参数
_Guid

string

 
行会的GUID。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid= CL:GetFamilyGUIDByName("试试看")  --获取行会“试试看”的GUID
CL:FamilyJoinRequest(guid) --发送加入行会请求

--此示例代码运行成功如下图所示。

FamilyJoinRequest
<上一篇:通过或拒绝玩家加入行会的申请下一篇:将玩家角色踢出行会>
FamilyKick
将玩家角色踢出行会

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数将玩家角色踢出行会。

语法
Luacopy 复制
CL:FamilyKick( 
    _Guid
)

参数
_Guid

string

 
玩家角色的GUID。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyAllMenberList(0,2,"hanghuichengyuan","getFamilyAllMenberList")--获取行会成员信息
function getFamilyAllMenberList()
    local player_guid = LuaParam[4][1][1]
    CL:FamilyKick(player_guid) --将玩家踢出行会
end	

--此示例代码运行成功如下图所示。

FamilyKick
<上一篇:发送加入行会请求下一篇:修改行会公告>
FamilyNoticeConfirm
修改行会公告

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-02-13 00:00:00
此函数作用为修改行会公告。

语法
Luacopy 复制
CL:FamilyNoticeConfirm( 
    _Notice,
    _Tag,
    _CallBack
)

参数
_Notice

string

 
新的行会公告

_Tag

string

 
自定义标签

用于区分不同作用的回调函数

_CallBack

string

 
修改成功执行的回调函数名

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local editTxt = "欢迎新成员加入本行会"
CL:FamilyNoticeConfirm(editTxt,"FamilyNoticeEditWnd_行会公告","Callback_func")
function Callback_func()
    dbg("修改成功")
end

--此示例代码运行成功如下图所示。

FamilyNoticeConfirm
<上一篇:将玩家角色踢出行会下一篇:打开行会仓库面板>
FamilyOpenWarehouse
打开行会仓库面板

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-02-06 00:00:00
此函数为打开行会仓库面板。

语法
Luacopy 复制
CL:FamilyOpenWarehouse()

参数
无

 
返回值
void

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:FamilyOpenWarehouse()

--此示例代码运行成功如下图所示。

FamilyOpenWarehouse
<上一篇:修改行会公告下一篇:离开行会>
FamilyQuitRequest
离开行会

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行离开行会的操作。

语法
Luacopy 复制
CL:FamilyQuitRequest( 
    _Content,
    _Tag,
    _CallBack
)

参数
_Content

string

 
临别赠言。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Content ="轻轻地我走了，正如我轻轻地来，挥一挥手，不带走一片云彩"
CL:FamilyQuitRequest(_Content,"FamilyMenberInputBox_Leave_离开行会","OnLeave")
function OnLeave()
    dbg("退出行会")
end

--此示例代码运行成功如下图所示。

FamilyQuitRequest
<上一篇:打开行会仓库面板下一篇:撤销行会成员封号>
FamilyRepealTitle
撤销行会成员封号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数撤销行会成员封号。

语法
Luacopy 复制
CL:FamilyRepealTitle( 
    guid,
    _Tag,
    _CallBack
)

参数
guid

string

 
玩家角色的GUID。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
撤销成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyAllMenberList(0,2,"hanghuichengyuan","getFamilyAllMenberList")--获取行会成员信息

function getFamilyAllMenberList()
    local player_guid = LuaParam[4][3][1]
    CL:FamilyRepealTitle(player_guid, "FamilyMember_撤销封号", "") --撤销封号
end	
<上一篇:离开行会下一篇:获取申请加入行会玩家列表>
GetApplyPlayerList
获取申请加入行会玩家列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数为获取申请加入行会玩家列表。

程序将会向服务器请求获取行会列表消息，信息返回，后执行指定的回调函数。

语法
Luacopy 复制
CL:GetApplyPlayerList( 
    startIndex,
    count,
    _Tag,
    _CallBack
)

参数
startIndex

int

 
起始索引号。0代表第一个。

count

int

 
要获取的成员数量。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
获取成功后，要执行的回调函数名。

程序同时会传递以下参数，保存于全局变量LuaParam中，由脚本进行后续的处理。

申请总人数(int)；起始索引号(int)；获取的申请人数(int)；申请人员信息表。

申请人员信息表结构和定义请见示例代码部分。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetApplyPlayerList(0, 10, "帮会成员", "GetApplylist") then
    dbg("获取入会申请列表成功")
else
    dbg("获取入会申请列表失败")
end

function GetApplylist()
    local totalNum  =  LuaParam[1]
    local startIdx =  LuaParam[2]
    local member_num =  LuaParam[3]
    local member_num_table = LuaParam[4]
    dbg("总申请角色数："..totalNum)
    dbg("开始索引："..startIdx)
    dbg("获取角色数："..member_num)
    dbg("第2个申请入会角色的名字："..member_num_table[2][2])
end

--申请角色列表（member_num_table)结构示例如下。
{
    [2] = 	--表示序号
        {	
            [1] = "207189619840860160",	--申请入会角色的GUID。
            [2] = "耿雅山",	--申请入会角色的名字
            [3] = 300,	--申请入会角色的等级
            [4] = 1,	--申请入会角色的职业：1-战士；2-法师；3-术士
        },
}

--示例的行会共有3个角色申请入会，控制台将输出：
获取入会申请列表成功
总申请角色数：3
开始索引：0
获取角色数：3
第2个申请入会角色的名字：耿雅山
<上一篇:撤销行会成员封号下一篇:获取行会成员列表>
GetFamilyAllMenberList
获取行会成员列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-10-30 00:00:00
此函数获取当前所在行会所有的玩家角色列表。

语法
Luacopy 复制
CL:GetFamilyAllMenberList( 
    startIndex,
    count,
    _Tag,
    _CallBack
)

参数
startIndex

int

 
起始索引

0表示第一个

count

int

 
获取成员的数量

_Tag

string

 
自定义标签

用于区分不同作用的回调函数

_CallBack

string

 
获取信息成功后执行的回调函数名

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

LuaParam[1]开始索引（恒为0）；

caution_icon 注意
因为开始索引恒为0，所以不可使用“开始索引+获取数量”的方式去计算下一个请求的起始索引。

LuaParam[2]获取数量；

LuaParam[3]行会成员总数量；

i成员的序号，1为会长。

LuaParam[4][i][1]玩家角色的GUID；

LuaParam[4][i][2]玩家角色的名字；

LuaParam[4][i][3]玩家角色的等级；

LuaParam[4][i][4]玩家角色的职业，1代表战士，2代表法师，3代表术士；

LuaParam[4][i][5]行会的GUID；

LuaParam[4][i][6]封号ID，1代表会长，2代表副会长，3代表精英，4以上代表自定义封号；

LuaParam[4][i][7]杀敌人数；

LuaParam[4][i][8]入会时间，时间戳格式；

LuaParam[4][i][9]最后一次上线时间，时间戳格式；

LuaParam[4][i][10]是否在线，1代表是，0代表否；

LuaParam[4][i][11]当前贡献度；

LuaParam[4][i][12]累计贡献度；

LuaParam[4][i][13]最后一次离线时间，时间戳格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyAllMenberList(0,2,"hanghuichengyuan","getFamilyAllMenberList")--获取行会成员信息
function getFamilyAllMenberList()
    local tab = LuaParam[4]
    dbg("玩家GUID："..tab[1][1])
    dbg("玩家名："..tab[1][2])
    dbg("玩家等级："..tab[1][3])
    dbg("玩家职业："..tab[1][4])
    dbg("行会GUID："..tab[1][5])
    dbg("玩家封号ID："..tab[1][6])
    dbg("杀敌人数："..tab[1][7])
    dbg("入会时间："..tab[1][8])
    dbg("最近上线时间："..tab[1][9])
    dbg("是否在线："..tab[1][10])
    dbg("当前贡献度："..tab[1][11])
    dbg("累计贡献度："..tab[1][12])
    dbg("离线时间为："..CL:GetTimeStrWithFormat(tostring(tab[1][13]), "%Y-%m-%d %H:%M:%S"))
end

--此示例代码运行成功如下图所示。

FamilyAllMenberList
<上一篇:获取申请加入行会玩家列表下一篇:获取行会GUID>
GetFamilyGUIDByName
获取行会GUID

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数根据行会名称获取该行会的GUID。

语法
Luacopy 复制
CL:GetFamilyGUIDByName( 
    _Name
)

参数
_Name

string

 
行会的名称

返回值
string

 
行会的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
dbg("行会的GUID为："..CL:GetFamilyGUIDByName("试试看")) --获取帮会“试试看”的GUID

--此示例代码运行成功如下图所示。

GetFamilyGUIDByName.png
<上一篇:获取行会成员列表下一篇:获取行会信息列表>
GetFamilyList
获取行会信息列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-01-27 00:00:00
此函数获取行会信息列表。

该接口会向服务器发送获取行会信息列表消息，服务器返回后会触发_CallBack脚本事件。

在使用此接口获取行会信息列表时，会默认弹出行会界面。

如不需要弹出行会界面，2D手游可使用全局变量MobileIsShowFamilyList进行关闭，2D端游可使用全局变量IsShowFamilyList进行关闭。

语法
Luacopy 复制
CL:GetFamilyList( 
    startIndex,
    count,
    _Tag,
    _CallBack
)

参数
startIndex

int

 
起始索引

0表示第一个

count

int

 
获取行会的数量

_Tag

string

 
自定义标签

用于区分不同作用的回调函数

_CallBack

string

 
获取信息成功后执行的回调函数名

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

LuaParam[1]行会总数量；

LuaParam[2]开始索引；

LuaParam[3]获取数量；

LuaParam[4]行会信息列表；

i行会的序号。

LuaParam[4][i][1]行会名；

LuaParam[4][i][2]会长名；

LuaParam[4][i][3]行会成员数量；

LuaParam[4][i][4]玩家是否申请过此行会，1代表是，0代表否；

LuaParam[4][i][5]行会的GUID；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyList(0,5,"familyList","FamilyListGet")
function FamilyListGet()
    local tab = LuaParam[4] --行会成员列表
    dbg("行会名称："..tab[1][1])
    dbg("会长名称："..tab[1][2])
    dbg("成员数量："..tab[1][3])
    dbg("是否申请过:"..tab[1][4])
    dbg("行会GUID："..tab[1][5])
end

--此示例代码运行成功如下图所示。

FamilyListGet
<上一篇:获取行会GUID下一篇:获取特定封号的行会成员列表>
GetFamilyMenberList
获取特定封号的行会成员列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-10-30 00:00:00
此函数获取特定封号的行会成员列表。

语法
Luacopy 复制
CL:GetFamilyMenberList( 
    startIndex,
    count,
    title_id,
    _Tag,
    _CallBack
)

参数
startIndex

int

 
开始索引，0表示第一个。

count

int

 
获取成员的数量。

title_id

int

 
封号ID。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
获取信息成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

LuaParam[1]开始索引；

LuaParam[2]获取数量；

LuaParam[3]行会成员总数量；

LuaParam[4]该封号的成员列表；

i成员的序号。

LuaParam[4][i][1]玩家角色的GUID；

LuaParam[4][i][2]玩家角色的名字；

LuaParam[4][i][3]玩家角色的等级；

LuaParam[4][i][4]玩家角色的职业，1代表战士，2代表法师，3代表术士；

LuaParam[4][i][5]行会的GUID；

LuaParam[4][i][6]封号ID，1代表会长，2代表副会长，3代表精英，4以上代表自定义封号；

LuaParam[4][i][7]杀敌人数；

LuaParam[4][i][8]入会时间，时间戳格式；

LuaParam[4][i][9]最后一次上线时间，时间戳格式；

LuaParam[4][i][10]是否在线，1代表是，0代表否；

LuaParam[4][i][11]当前贡献度；

LuaParam[4][i][12]累计贡献度；

LuaParam[4][i][13]最后一次离线时间，时间戳格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyMenberList(0,5,1,"FamilyMember_获取特定封号成员","GetSpecificMemberList")
  function GetSpecificMemberList()
      local tab = LuaParam[4] --成员列表
      dbg("玩家GUID："..tab[1][1])
      dbg("玩家名："..tab[1][2])
      dbg("玩家等级："..tab[1][3])
      dbg("玩家职业："..tab[1][4])
      dbg("行会GUID："..tab[1][5])
      dbg("玩家封号ID："..tab[1][6])
      dbg("杀敌人数："..tab[1][7])
      dbg("入会时间："..tab[1][8])
      dbg("最近上线时间："..tab[1][9])
      dbg("是否在线："..tab[1][10])
      dbg("当前贡献度："..tab[1][11])
      dbg("累计贡献度："..tab[1][12])
      dbg("离线时间为："..CL:GetTimeStrWithFormat(tostring(tab[1][13]), "%Y-%m-%d %H:%M:%S"))
  end

--此示例代码运行成功如下图所示。

GetFamilyMenberList
<上一篇:获取行会信息列表下一篇:获取特定封号的在线行会成员列表>
GetFamilyOnlineMenberList
获取特定封号的在线行会成员列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-10-30 00:00:00
此函数获取特定封号的在线行会成员列表

语法
Luacopy 复制
CL:GetFamilyOnlineMenberList( 
    startIndex,
    count,
    title_id,
    _Tag,
    _CallBack
)

参数
startIndex

int

 
开始索引，0表示第一个。

count

int

 
获取成员的数量。

title_id

int

 
封号ID。

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
获取信息成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

LuaParam[1]开始索引；

LuaParam[2]获取数量；

LuaParam[3]行会成员总数量；

LuaParam[4]该封号在线的成员列表；

i成员的序号。

LuaParam[4][i][1]玩家角色的GUID；

LuaParam[4][i][2]玩家角色的名字；

LuaParam[4][i][3]玩家角色的等级；

LuaParam[4][i][4]玩家角色的职业，1代表战士，2代表法师，3代表术士；

LuaParam[4][i][5]行会的GUID；

LuaParam[4][i][6]封号ID，1代表会长，2代表副会长，3代表精英，4以上代表自定义封号；

LuaParam[4][i][7]杀敌人数；

LuaParam[4][i][8]入会时间，时间戳格式；

LuaParam[4][i][9]最后一次上线时间，时间戳格式；

LuaParam[4][i][10]是否在线，1代表是，0代表否；

LuaParam[4][i][11]当前贡献度；

LuaParam[4][i][12]累计贡献度；

LuaParam[4][i][13]最后一次离线时间，时间戳格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetFamilyOnlineMenberList(0,2,2,"familyOnile","FamilyOnileListGet") --获取本行会在线“行会成员”封号的玩家列表
  function FamilyOnileListGet()
      local tab = LuaParam[4] --成员列表
      dbg("玩家GUID："..tab[1][1])
      dbg("玩家名："..tab[1][2])
      dbg("玩家等级："..tab[1][3])
      dbg("玩家职业："..tab[1][4])
      dbg("行会GUID："..tab[1][5])
      dbg("玩家封号ID："..tab[1][6])
      dbg("杀敌人数："..tab[1][7])
      dbg("入会时间："..tab[1][8])
      dbg("最近上线时间："..tab[1][9])
      dbg("是否在线："..tab[1][10])
      dbg("当前贡献度："..tab[1][11])
      dbg("累计贡献度："..tab[1][12])
      dbg("离线时间为："..CL:GetTimeStrWithFormat(tostring(tab[1][13]), "%Y-%m-%d %H:%M:%S"))
  end

--此示例代码运行成功如下图所示。

GetFamilyOnlineMenberList
<上一篇:获取特定封号的行会成员列表下一篇:发送解除联盟行会请求>
SendDelFamilyAllianceReq
发送解除联盟行会请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-07-16 00:00:00
此函数作用为发送解除联盟行会请求。

语法
Luacopy 复制
CL:SendDelFamilyAllianceReq(
    _FamilyNmae
)
参数
_FamilyNmae

string

 
行会名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SendDelFamilyAllianceReq("一刀888")

--此示例代码运行成功后，玩家所在行会和目标行会会收到如下提示。

SendDelFamilyAllianceReq.png

SendDelFamilyAllianceReq_2.png
<上一篇:获取特定封号的在线行会成员列表下一篇:发送解除敌对行会请求>
SendDelFamilyEnemyReq
发送解除敌对行会请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-07-16 00:00:00
此函数作用为发送解除敌对行会请求。

语法
Luacopy 复制
CL:SendDelFamilyEnemyReq(
    _FamilyNmae
)
参数
_FamilyNmae

string

 
行会名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SendDelFamilyEnemyReq("一刀888")

--此示例代码运行成功后，玩家所在行会和目标行会会收到如下提示。

SendDelFamilyEnemyReq.png

SendDelFamilyEnemyReq_2.png
<上一篇:发送解除联盟行会请求下一篇:发起行会联盟请求>
SendFamilyAllianceReq
发起行会联盟请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-08-19 00:00:00
此函数作用为发起行会联盟请求。

若被发起行会联盟的行会会长在线，则被发起方的行会会长会收到“是否同意联盟”的弹窗。

SendFamilyAllianceReq_3.png
若被发起行会联盟的行会会长不在线，则发起方会收到“对方会长不在线”的弹窗提示。

SendFamilyAllianceReq_2.png
语法
Luacopy 复制
CL:SendFamilyAllianceReq(
    _FamilyNmae
)
参数
_FamilyNmae

string

 
行会名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:SendFamilyAllianceReq("888888") --向行会“888888”发起行会联盟请求

--此示例代码运行成功如下图所示（行会“888888”会长的游戏界面）。

SendFamilyAllianceReq.png
<上一篇:发送解除敌对行会请求下一篇:发送添加敌对行会请求>
SendFamilyEnemyReq
发送添加敌对行会请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-07-16 00:00:00
此函数作用为发送添加敌对行会请求。

语法
Luacopy 复制
CL:SendFamilyEnemyReq(
    _FamilyNmae
)
参数
_FamilyNmae

string

 
行会名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SendFamilyEnemyReq("一刀888")

--此示例代码运行成功后，玩家所在行会和目标行会会收到如下提示。

SendFamilyEnemyReq.png

SendFamilyEnemyReq_2.png
<上一篇:发起行会联盟请求下一篇:自定义行会名的前缀>
SetFamilyPreName
自定义行会名的前缀

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-29 00:00:00
此函数自定义行会名的前缀。

语法
Luacopy 复制
CL:SetFamilyPreName(
    FamilyNmae,
    PriName
)
参数
FamilyNmae

string

 
行会名

PriName

string

 
要添加的前缀

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetFamilyPreName("阿瓦达啊","test") --给行会“阿瓦达啊”添加前缀“test”

--此示例代码运行前效果如下图所示。

SetFamilyPreName.png

--此示例代码运行后效果如下图所示。

SetFamilyPreName_2.png

<上一篇:发送添加敌对行会请求
AddNewStallSellData
新摆摊上架物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于上架物品到新摆摊。

必须在开始摆摊前调用此函数上架物品。

语法
Luacopy 复制
CL:AddNewStallSellData(
    _StrGUID,
    _Price,
    _PriceType
)
参数
_StrGUID

string

 
道具GUID

_Price

uint

 
物品价格

_PriceType

uint

 
货币类型

0金币

1元宝

2积分

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:AddNewStallSellData(_StrGUID, _Price, _PriceType) then
    dbg("_StrGUID=" .. tostring(_StrGUID) .. " _Price=" .. _Price .. " _PriceType=" .. _PriceType)
end

--此示例代码运行成功如下图所示。

AddNewStallSellData.png
下一篇:上架收购物品>
AddStallBuyData
上架收购物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数在摊主界面，上架收购物品。

语法
Luacopy 复制
CL:AddStallBuyData( 
    _ItemID,
    _Count,
    _Type,
    _Price
)

参数
_ItemID

uint

 
物品的模板ID。

_Count

uint

 
收购的数量。

_Type

uint

 
价格类型：

0金币

1元宝

_Price

int

 
收购的价格。

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local wGuid = CL:GetPlayerSelfEquipGUID(1) --获取自身武器的GUID
local mId
if CL:GetItemEntityPropByGUID(wGuid, ITEM_PROP_ENTITY_ID) then
    mId = LuaRet --获取武器的模板ID
    dbg("模板id:"..mId)
end
if CL:AddStallBuyData(mId,1,0,1) then--上架收购物品
    if CL:GetStallBuyData() then
        dbg("获取成功")
        dbg("第一个收购物品的模板id:"..LuaRet[1][1])
    end
else
    dbg("上架失败！")	
end
<上一篇:新摆摊上架物品下一篇:上架出售物品>
AddStallSellData
上架出售物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在摊主界面，上架出售物品。

note_icon 备注
该接口支持收购功能的摆摊系统。

语法
Luacopy 复制
CL:AddStallSellData( 
    _StrGUID,
    _Price,
    _PriceType
)

参数
_StrGUID

string

 
物品的GUID。

_Price

unsigned int

 
出售的价格。

_PriceType

unsigned int

 
价格类型：

0金币

1元宝

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--需先在摆摊区打开摆摊和背包界面后运行
local guidList = CL:PackageGetGUIDByPos(0)--获取背包第一个位置的物品GUID
if CL:AddStallSellData(guidList,100,0) then --上架出售，价格100，类型为金币
    dbg("上架成功")
else
    dbg("上架失败")	
end

if CL:GetStallSellData() then
    dbg("获取成功，第一件出售物品的GUID："..LuaRet[1][1])
else
    dbg("上架失败！")	
end
<上一篇:上架收购物品下一篇:结束摆摊（新）>
CloseStallNew
结束摆摊（新）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行结束摆摊。

仅支持可收购物品的摆摊系统，如下图。

StallNew

语法
Luacopy 复制
CL:CloseStallNew()

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
<上一篇:上架出售物品下一篇:结束摆摊>
CloseStall
结束摆摊

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行结束摆摊。

语法
Luacopy 复制
CL:CloseStall()

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
<上一篇:结束摆摊（新）下一篇:获取新摆摊物品（开始摆摊后）>
GetNewStallItemData
获取新摆摊物品（开始摆摊后）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于获取开始摆摊后的上架物品列表。

物品信息从全局变量LuaRet获取，是个table。

语法
Luacopy 复制
CL:GetNewStallItemData()
参数
无

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
执行成功后，物品信息存储在全局变量LuaRet中。

LuaRet是个table，每个物品的格式如下：

[1]ItemGUID - 物品GUID

[2]Price - 价格

[3]PriceType - 货币类型（0金币，1元宝，2积分）

[4]ItemID - 物品ID

[5]amount - 数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetNewStallItemData() then
    dbg("已摆摊的"..json.encode(LuaRet))
end
<上一篇:结束摆摊下一篇:获取新摆摊物品（未开始摆摊前）>
GetNewStallSellData
获取新摆摊物品（未开始摆摊前）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于获取未开始摆摊前的上架物品列表。

物品信息从全局变量LuaRet获取，是个table。

语法
Luacopy 复制
CL:GetNewStallSellData()
参数
无

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
执行成功后，物品信息存储在全局变量LuaRet中。

LuaRet是个table，每个物品的格式如下：

[1]ItemGUID - 物品GUID

[2]Price - 价格

[3]PriceType - 货币类型（0金币，1元宝，2积分）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetNewStallSellData() then
    dbg("未开始摆摊前的"..json.encode(LuaRet))
end
<上一篇:获取新摆摊物品（开始摆摊后）下一篇:获取玩家自身的默认摊位名>
GetPlayerSelfDefaultStallName
获取玩家自身的默认摊位名

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数为获取玩家自己的默认摊位名。

语法
Luacopy 复制
CL:GetPlayerSelfDefaultStallName()

参数
无

 
返回值
string

 
玩家自己的默认摊位名

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local my_default_stall_name = CL:GetPlayerSelfDefaultStallName()
dbg("我的默认摊位名："..my_default_stall_name)

--例如，控制台将输出“崔文祥的摊位”。
<上一篇:获取新摆摊物品（未开始摆摊前）下一篇:获取当前上架收购物品列表>
GetStallBuyData
获取当前上架收购物品列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取玩家角色自身上架的收购物品列表。

note_icon 备注
该接口支持收购功能的摆摊系统。

语法
Luacopy 复制
CL:GetStallBuyData()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i为物品索引号。

LuaRet[i][1]物品的模板ID；

LuaRet[i][2]收购数量；

LuaRet[i][3]价格类型，0代表金币，1代表元宝；

LuaRet[i][4]收购的价格；

LuaRet[i][5]已收购的数量。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local wGuid = CL:GetPlayerSelfEquipGUID(1) --获取自身武器的GUID
local mId
if CL:GetItemEntityPropByGUID(wGuid, ITEM_PROP_ENTITY_ID) then
    mId = LuaRet --获取武器的模板ID
    dbg("模板id:"..mId)
end
if CL:AddStallBuyData(mId,1,0,1) then--上架收购物品
    if CL:GetStallBuyData() then
        dbg("获取成功")
        dbg("第一个收购物品的模板id:"..LuaRet[1][1])
    end
else
    dbg("上架失败！")
end
<上一篇:获取玩家自身的默认摊位名下一篇:获取当前上架出售物品列表>
GetStallSellData
获取当前上架出售物品列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取角色自身上架出售的物品列表。

note_icon 备注
该接口支持收购功能的摆摊系统。

语法
Luacopy 复制
CL:GetStallSellData()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i为物品索引号。

LuaRet[i][1]物品的GUID；

LuaRet[i][2]出售价格；

LuaRet[i][3]价格类型，0代表金币，1代表元宝。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--需先在摆摊区打开摆摊和背包界面后运行
local guidList = CL:PackageGetGUIDByPos(0)--获取背包第一个位置的物品GUID
if CL:AddStallSellData(guidList,100,0) then --上架出售，价格100，类型为金币
    dbg("上架成功")
else
    dbg("上架失败")	
end

if CL:GetStallSellData() then
    dbg("获取成功，第一件出售物品的GUID："..LuaRet[1][1])
else
    dbg("上架失败！")	
end
<上一篇:获取当前上架收购物品列表下一篇:获取玩家自身角色的摆摊状态>
GetStallState
获取玩家自身角色的摆摊状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取玩家自身角色的摆摊状态。

语法
Luacopy 复制
CL:GetStallState()

参数
无

 
返回值
int

 
玩家摆摊状态。

0非摆摊中

1摆摊中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前上架出售物品列表下一篇:获取他人新摆摊物品>
GetVisitNewStallSellData
获取他人新摆摊物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于获取他人摊位的物品列表。

必须是点开他人摊位在VisitNewStall.lua中才能获取。

物品信息从全局变量LuaRet获取，是个table。

语法
Luacopy 复制
CL:GetVisitNewStallSellData()
参数
无

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
执行成功后，物品信息存储在全局变量LuaRet中。

LuaRet是个table，每个物品的格式如下：

[1]ItemGUID - 物品GUID

[2]Price - 价格

[3]PriceType - 货币类型（0金币，1元宝，2积分）

[4]ItemID - 物品ID

[5]amount - 数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetVisitNewStallSellData() then
    dbg("他人摊位"..json.encode(LuaRet))
end

--此示例代码运行成功如下图所示。

GetVisitNewStallSellData.png
<上一篇:获取玩家自身角色的摆摊状态下一篇:获取查看角色的收购物品列表>
GetVisitStallBuyData
获取查看角色的收购物品列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取所查看玩家角色上架的收购物品列表。

语法
Luacopy 复制
CL:GetVisitStallBuyData()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i为物品索引号。

LuaRet[i][1]物品的模板ID；

LuaRet[i][2]收购的数量；

LuaRet[i][3]价格类型，0代表金币，1代表元宝。

LuaRet[i][4]收购价格；

LuaRet[i][5]已收购的数量。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--查看角色的摆摊界面，然后执行获取收购物品列表
if CL:GetVisitStallBuyData() then
    local item_temp_id = LuaRet[1][1]
    dbg("第一件收购的物品的模板ID是："..item_temp_id)
end

--控制台将输出："第一件收购的物品的模板ID是：1153"。
<上一篇:获取他人新摆摊物品下一篇:获取查看角色的上架出售物品列表>
GetVisitStallSellData
获取查看角色的上架出售物品列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取查看角色的上架出售物品列表。

语法
Luacopy 复制
CL:GetVisitStallSellData()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i为物品索引号。

LuaRet[i][1]物品的GUID；

LuaRet[i][2]物品的模板ID；

LuaRet[i][3]出售的总数量；

LuaRet[i][4]出售价格；

LuaRet[i][5]价格类型，0代表金币，1代表元宝。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--查看角色的摆摊界面，然后执行获取出售物品列表
if CL:GetVisitStallSellData() then
    local item_temp_id = LuaRet[1][2]
    dbg("第一件出售的物品的模板ID是："..item_temp_id)
end

--控制台将输出："第一件出售的物品的模板ID是：1153"。
<上一篇:获取查看角色的收购物品列表下一篇:判断是否在摆摊区域中>
InStallRegion
判断是否在摆摊区域中

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-19 00:00:00
此函数判断指定的点是否在当前地图的摆摊区域中。

语法
Luacopy 复制
CL:InStallRegion( 
    _CurMapKeyName,
    _GridX,
    _GridY
)

参数
_CurMapKeyName

string

 
当前地图的索引名（KeyName）

_GridX

int

 
指定点的X坐标

_GridY

int

 
指定点的Y坐标

返回值
bool

 
true指定点在摆摊区域中

false指定点不在摆摊区域中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local status =CL:InStallRegion("手游龙城",81,74)
if status then
    dbg("点在摆摊区域中")
else
    dbg("点不在摆摊区域中")
end

--控制台将输出“点不在摆摊区域中”。
<上一篇:获取查看角色的上架出售物品列表下一篇:新摆摊下架物品（开始摆摊后）>
NewStallTakeDown
新摆摊下架物品（开始摆摊后）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于在开始摆摊后下架物品。

必须在开始摆摊后调用此接口，摆摊开始前请使用RemoveNewStallSellData接口。

语法
Luacopy 复制
CL:NewStallTakeDown(
    _StrGUIDs
)
参数
_StrGUIDs

string

 
道具GUID，可以是单个GUID或多个GUID（用分隔符分隔）

返回值
此函数无返回值

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:NewStallTakeDown(GameNewStall._StrGUID)
dbg("摆摊后下架_StrGUID=" .. tostring(GameNewStall._StrGUID))
<上一篇:判断是否在摆摊区域中下一篇:取消交易>
OnCancelP2p
取消交易

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行取消交易的操作。

语法
Luacopy 复制
CL:OnCancelP2p()

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
<上一篇:新摆摊下架物品（开始摆摊后）下一篇:确认交易>
OnConfirmP2p
确认交易

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行确认交易的操作。

语法
Luacopy 复制
CL:OnConfirmP2p()

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
<上一篇:取消交易下一篇:设定交易的锁定状态>
OnLockP2p
设定交易的锁定状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设定交易的锁定状态。

语法
Luacopy 复制
CL:OnLockP2p( 
    _State
)

参数
_State

int

 
锁定状态。

1锁定

0不锁定

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:确认交易下一篇:打开摆摊日志>
OpenStallLog
打开摆摊日志

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数打开摆摊日志。

语法
Luacopy 复制
CL:OpenStallLog()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:OpenStallLog() --对应客户端StallLog.lua文件
<上一篇:设定交易的锁定状态下一篇:打开摆摊>
OpenStall
打开摆摊

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数打开摆摊。

语法
Luacopy 复制
CL:OpenStall()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:OpenStall() --对应客户端脚本GameStall.lua
<上一篇:打开摆摊日志下一篇:打开指定玩家的摆摊界面>
QueryPlayerStall
打开指定玩家的摆摊界面

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数打开和指定玩家的摆摊界面。

摆摊界面一般类似下图所示。

QueryPlayerStall_2.png
语法
Luacopy 复制
CL:QueryPlayerStall( 
    _PlayerGUID
)

参数
_PlayerGUID

string

 
玩家角色的GUID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--执行前提：正在查看装备的玩家角色正在摆摊。
local OtherPlayerGUID = CL:GetViewEquipTarPlayerGUID() --获取正在查看装备的玩家角色的GUID
CL:QueryPlayerStall(OtherPlayerGUID) --打开该玩家的摆摊界面

--此示例代码运行成功如下图所示，打开正在查看装备的玩家角色的摆摊界面。

QueryPlayerStall_2.png
<上一篇:打开摆摊下一篇:新摆摊下架物品（未开始摆摊前）>
RemoveNewStallSellData
新摆摊下架物品（未开始摆摊前）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于在未开始摆摊前下架物品。

必须在开始摆摊前调用此接口，摆摊开始后请使用NewStallTakeDown接口。

语法
Luacopy 复制
CL:RemoveNewStallSellData(
    _StrGUID
)
参数
_StrGUID

string

 
道具GUID

返回值
void

 
无返回值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ret = CL:RemoveNewStallSellData(GameNewStall._StrGUID)
dbg("下架ret=" .. tostring(ret) .. "_StrGUID=" .. tostring(GameNewStall._StrGUID))
<上一篇:打开指定玩家的摆摊界面下一篇:下架收购物品>
RemoveStallBuyData
下架收购物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数在摊主界面，执行下架收购物品的操作。

语法
Luacopy 复制
CL:RemoveStallBuyData( 
    _ItemID
)

参数
_ItemID

unsigned int

 
物品编号。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton1",1850000307,700,600) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"下架") --设置文字内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "RemoveStallItem") --注册“鼠标左键点击”按钮事件发生时回调的函数
end

function RemoveStallItem()
    CL:RemoveStallBuyData(452)
end
<上一篇:新摆摊下架物品（未开始摆摊前）下一篇:下架出售物品>
RemoveStallSellData
下架出售物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数在摊主界面，执行下架出售物品的操作。

语法
Luacopy 复制
CL:RemoveStallSellData( 
    _StrGUID
)

参数
_StrGUID

string

 
物品的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton1",1850000307,700,600) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"下架") --设置文字内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "RemoveStallItem") --注册“鼠标左键点击”按钮事件发生时回调的函数
end

local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton2",1850000307,500,600) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"上架") --设置文字内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "AddStallItem") --注册“鼠标左键点击”按钮事件发生时回调的函数
end

itemGUIDList = {}
if CL:GetPackageItemGUIDList() then --获取背包内物品GUID列表
    itemGUIDList = LuaRet
end

function AddStallItem()
    CL:AddStallSellData(itemGUIDList[1],20,0) --上架物品
end

function RemoveStallItem()
    CL:RemoveStallSellData(itemGUIDList[1]) --下架物品
end

--在游戏中进入摆摊区域后，打开摆摊界面，执行示例代码，对背包中第一个物品进行上架和下架的操作。
<上一篇:下架收购物品下一篇:上下架交易的物品>
SetP2pItem
上下架交易的物品

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数上下架交易的物品。

语法
Luacopy 复制
CL:SetP2pItem(
    _ItemStr,
    _opt
)
参数
_ItemStr

string

 
物品GUID列表，以','拼接

_opt

number

 
选择类型

0添加

1删除

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetPackageItemGUIDList() then
    CL:SetP2pItem(LuaRet[1]..","..LuaRet[2],0)
else
    dbg("失败")
end
<上一篇:下架出售物品下一篇:关注正在查看的摆摊>
StallAttention
关注正在查看的摆摊

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数关注或取消关注正在查看的摆摊。

语法
Luacopy 复制
CL:StallAttention()
参数
无

返回值
boolean

 
true关注。

false取消关注。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:上下架交易的物品下一篇:购买摊主的物品>
StallBuy
购买摊主的物品

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数查看摆摊界面，购买摊主的物品。

语法
Luacopy 复制
CL:StallBuy(
    _ItemGUID,
    _Amount
)
参数
_ItemGUID

string

 
物品GUID

_Amount

number

 
购买数量

返回值
boolean

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guidList = {}       
if CL:StallViewer() then
    guidList = LuaRet[4]
end

if CL:StallBuy(guidList[1] ,1) then
    dbg("购买成功")
end

--此示例代码运行成功如下图所示。

StallBuy
<上一篇:关注正在查看的摆摊下一篇:获取上架出售物品列表>
StallInfo
获取上架出售物品列表

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在摊主界面，获取上架出售物品列表。

语法
Luacopy 复制
CL:StallInfo()
参数
无

返回值
boolean

 
true获取成功。

false获取失败。

如获取成功，获取的列表信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]物品GUID；

LuaRet[i][2]价格类型，0代表金币，1代表元宝。

LuaRet[i][3]价格；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:StallInfo() then
    for i=1,#LuaRet[1] do
        dbg(""..LuaRet[1][i]) --若没有上架物品则返回空表
    end
end

--此示例代码运行成功如下图所示。

StallInfo1

StallInfo2
<上一篇:购买摊主的物品下一篇:获取是否关注正在查看的摆摊>
StallIsAttention
获取是否关注正在查看的摆摊

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取是否关注正在查看的摆摊。

语法
Luacopy 复制
CL:StallIsAttention()
参数
无

返回值
boolean

 
true关注。

false取消关注。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取上架出售物品列表下一篇:获取摆摊日志>
StallLogList
获取摆摊日志

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取摆摊日志。

语法
Luacopy 复制
CL:StallLogList()
参数
无

返回值
void

 
true获取成功。

false获取失败。

如获取成功，获取的列表信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]购买者；

LuaRet[i][2]数量；

LuaRet[i][3]物品名；

LuaRet[i][4]物品ID；

LuaRet[i][5]价格类型，0代表金币，1代表元宝。

LuaRet[i][6]价格；

LuaRet[i][7]物品颜色；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:StallLogList() then
    for i=1,#LuaRet[1] do
        dbg(LuaRet[1][i].."")
    end		
end
--若没有卖出物品则返回空表

--此示例代码运行成功如下图所示。

StallLogList
<上一篇:获取是否关注正在查看的摆摊下一篇:下架出售物品>
StallLower
下架出售物品

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在摊主界面，下架出售物品。

语法
Luacopy 复制
CL:StallLower(
    _ItemGUID
)
参数
_ItemGUID

string

 
物品GUID

返回值
boolean

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local goods = {}
if CL:StallInfo() then  --获取上架物品信息
    goods = LuaRet
end

if CL:StallLower(goods[1][1]) then
    dbg("物品下架")
end

--此示例代码运行成功如下图所示。

StallLower
<上一篇:获取摆摊日志下一篇:摆摊准备>
StallReadyReq
摆摊准备

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行摆摊准备。

摆摊前应先调用该接口，该接口会触发LUA_EVENT_STALLREADYNTF事件，脚本应该监听此事件，并在收到此事件后再调用StartStallNew接口，否则摆摊可能不成功。

note_icon 备注
该接口支持收购功能的摆摊系统。

语法
Luacopy 复制
CL:StallReadyReq()

参数
无

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:StallReadyReq()

--此示例代码运行成功如下图所示。

StallReadyReq
<上一篇:下架出售物品下一篇:上架出售物品>
StallUpper
上架出售物品

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在摊主界面，上架出售物品。

语法
Luacopy 复制
CL:StallUpper(
    _ItemGUID,
    _PriceType,
    _Price
)
参数
_ItemGUID

string

 
物品GUID

_PriceType

number

 
价格类型

0金币

1元宝

_Price

string

 
出售价格

返回值
boolean

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guidList = CL:GetPackageItemGUIDList() and LuaRet or {} --获取背包物品guid列表
 if CL:StallUpper(guidList[1], 0, 100) then

end
--只有物品属性为不绑定和可交易的物品才能上架
<上一篇:摆摊准备下一篇:获取出售物品列表>
StallViewer
获取出售物品列表

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数查看摆摊界面，获取出售物品列表。

语法
Luacopy 复制
CL:StallViewer()
参数
无

返回值
boolean

 
true获取成功。

false获取失败。

如获取成功，获取的列表信息存储在全局变量LuaRet中。

i为索引号。

LuaRet[1]物品数量；

LuaRet[2][i]出售价格；

LuaRet[3][i]价格类型，0代表金币，1代表元宝。

LuaRet[4][i]物品的GUID；

LuaRet[5][i]堆叠数量；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:StallViewer() then

    dbg("总数："..LuaRet[1])
    local priceList = LuaRet[2]
    for i=1,#priceList do
        dbg("价格列表:"..priceList[i])
    end
    local priceTypeList = LuaRet[3]
    for i=1,#priceTypeList do
        dbg("价格类型:"..priceTypeList[i])
    end
    local guidList = LuaRet[4]
    for i=1,#guidList do
        dbg("GUID列表:"..guidList[i])
    end
    local amountList = LuaRet[5]
    for i=1,#amountList do
        dbg("堆叠数量列表:"..amountList[i])
    end

end

--此示例代码运行成功如下图所示。

StallViewer
<上一篇:上架出售物品下一篇:开始新摆摊>
StartNewStall
开始新摆摊

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于开始新摆摊。

语法
Luacopy 复制
CL:StartNewStall(
    _StallName,
    _StallType
)
参数
_StallName

string

 
摊位名称

_StallType

int

 
摆摊类型

1宠物摆摊

2玩家摆摊

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
执行成功后，会触发服务端开摊前触发器trigger_pre_new_stall_start。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ret = CL:StartNewStall(_StallName, _StallType)
dbg("ret=" .. tostring(ret) .. "  _StallName=" .. _StallName.. "  _StallType=" .. _StallType)

--此示例代码运行成功如下图所示。

StartNewStall.png
<上一篇:获取出售物品列表下一篇:开始摆摊>
StartStallNew
开始摆摊

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数执行开始摆摊的操作。

note_icon 备注
该接口支持收购功能的摆摊系统。

语法
Luacopy 复制
CL:StartStallNew( 
    _StallName
)

参数
_StallName

string

 
摊位名

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:StartStallNew("StallName")

--此示例代码运行成功如下图所示。

StartStallNew
<上一篇:开始新摆摊下一篇:开始摆摊>
StartStall
开始摆摊

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行开始摆摊的操作。

caution_icon 注意
调用前摆摊界面必须开启状态。

语法
Luacopy 复制
CL:StartStall()

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
<上一篇:开始摆摊下一篇:购买新摆摊物品>
VisitNewStallBuyItem
购买新摆摊物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

更新时间：2026-02-11 17:14:00
此函数用于购买他人摊位的物品。

购买后会触发服务端购买前触发器trigger_pre_new_stall_buy。

语法
Luacopy 复制
CL:VisitNewStallBuyItem(
    _StrGUID,
    _Count
)
参数
_StrGUID

string

 
道具GUID

_Count

int

 
购买数量

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:VisitNewStallBuyItem(_StrGUID, _Count) then
    dbg("VisitNewStallBuyItem 发送请求成功1")
    dbg("购买StrGUID".._StrGUID.."_Count".._Count)
end

--此示例代码运行成功如下图所示。

VisitNewStallBuyItem.png
<上一篇:开始摆摊下一篇:购买摊主的物品>
VisitStallBuyItem
购买摊主的物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在其他玩家摆摊界面，执行购买摊主的出售的物品。

语法
Luacopy 复制
CL:VisitStallBuyItem( 
    _StrGUID,
    _Count
)

参数
_StrGUID

string

 
物品的GUID。

_Count

int

 
购买的数量。

返回值
bool

 
购买成功返回true，购买失败返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--需要先打开摆摊界面，且有出售列表
function BuyItem(_Handle)
    local guid
    if CL:GetVisitStallSellData() then --摆摊查看界面，获取出售物品列表
        guid = LuaRet[1][1] --获取第一个出售物品的GUID
    end
    CL:VisitStallBuyItem(guid,1)
end
<上一篇:购买新摆摊物品下一篇:出售物品给摊主>
VisitStallSellItem
出售物品给摊主

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数在其他玩家摆摊界面，执行出售给摊主正在收购的物品的操作。

语法
Luacopy 复制
CL:VisitStallSellItem( 
    _StrGUID,
    _Count
)

参数
_StrGUID

string

 
物品的GUID。

_Count

int

 
出售的数量。

返回值
bool

 
购买成功返回true，购买失败返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local itemList = {}
if CL:GetVisitStallBuyData() then --获取摆摊界面，物品收购列表
  itemList = LuaRet
end

local itemGuid
if CL:GetItemTemplatePropByID(itemList[1][1]) then--根据获得的收购列表中的物品的模板ID，获取物品的GUID
  itemGuid = LuaRet
end
CL:VisitStallSellItem(itemGuid,1)--出售该物品给摊主
<上一篇:购买摊主的物品
DelegateBuyItem
收购物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数收购指定的物品。

语法
Luacopy 复制
CL:DelegateBuyItem( 
    itemtemp,
    number,
    unitprice,
    unitnum,
    currencyType
)

参数
itemtemp

int

 
物品模板ID。

number

int

 
收购的物品数量。

unitprice

int

 
物品的单价。

unitnum

int

 
未使用，固定填1。

currencyType

int

 
计价的类型。

0金币

1元宝

2积分

返回值
bool

 
交易成功返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUIDList = {}
if UI:Lua_GetPlayerSelfEquipData() then --获取玩家自身装备的GUID列表
    GUIDList = LuaRet
end

if CL:GetItemEntityPropByGUID(GUIDList[1],ITEM_PROP_ENTITY_ID) then --根据GUID获取物品模板ID
    CL:DelegateBuyItem(LuaRet,1,100,1,0) --发起收购请求
end

--根据实际的状态，可能会提示“不能收购该物品”。
下一篇:撤销寄售交易>
DelegateCancelItem
撤销寄售交易

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数撤销指定的寄售物品交易。

操作后，在寄售窗口我的交易中，此物品将被移除。

语法
Luacopy 复制
CL:DelegateCancelItem( 
    tradeId
)

参数
tradeId

string

 
交易号。

返回值
bool

 
撤销成功返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetDelegateMineList("delegateItemList", "OnSellBuyCallback") --获取玩家的寄售和收购列表

function OnSellBuyCallback()
    local delegateItemList = LuaParam
    local transid = delegateItemList[1][2][1][1] --获取第一个寄售物品的交易号，详细定义请见GetDelegateMineList的说明
    if CL:DelegateCancelItem(transid) then
        dbg("撤销寄售物品成功。")
    else
        dbg("撤销寄售物品失败。") 
    end
end
<上一篇:收购物品下一篇:寄售物品>
DelegateSellItem
寄售物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数寄售指定的物品。

语法
Luacopy 复制
CL:DelegateSellItem( 
    guid,
    unitprice,
    number,
    currencyType
)

参数
guid

string

 
物品的GUID。

unitprice

unsigned int

 
物品的单价。

number

unsigned int

 
未使用，固定填1。

currencyType

int

 
计价的类型。

0金币

1元宝

2积分

返回值
bool

 
交易成功返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local itemGUIDList = {}
if CL:GetPackageItemGUIDList() then --获取背包内物品GUID列表
    itemGUIDList = LuaRet
    dbg(itemGUIDList[1])
end
if CL:DelegateSellItem(itemGUIDList[1], 6, 1, 1) then --寄售背包中的第一个物品
    msg("寄售成功")
end

--寄售成功，寄售列表中会出现该物品，消息窗口输出“交易成功”。

DelegateSellItem
<上一篇:撤销寄售交易下一篇:获取指定收购物品交易列表>
GetDelegateBuyList
获取指定收购物品交易列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-29 00:00:00
此函数获取玩家角色自身指定的收购物品交易列表。

语法
Luacopy 复制
CL:GetDelegateBuyList( 
    start,
    count,
    type,
    subtype,
    itemname,
    isReverse,
    tag,
    callback 
)

参数
start

int

 
开始索引

0表示第一个

count

int

 
要获取的交易数

type

string

 
逻辑类

subtype

int

 
逻辑字类型

itemname

string

 
指定物品的索引名（KeyName）

isReverse

int

 
交易表的顺序

0正序

1倒序

tag

string

 
自定义标签

用于区分不同作用的回调函数

callback

string

 
获取成功后执行的回调函数名

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

LuaParam[1] = {} 1 为收购表

i为交易索引号。

LuaParam[1][1]逻辑类型；

LuaParam[1][2]逻辑子类型；

LuaParam[1][3]交易单的总数；

LuaParam[1][4]开始位置；

LuaParam[1][5]本次获取交易单的数量；

LuaParam[1][6] = {}交易表

LuaParam[1][6][i][1]交易号；

LuaParam[1][6][i][2]收购者；

LuaParam[1][6][i][3]下架剩余时间；

LuaParam[1][6][i][4]物品名称（非KeyName）；

LuaParam[1][6][i][5]物品模板ID；

LuaParam[1][6][i][6]求购数量；

LuaParam[1][6][i][7]求购单价；

LuaParam[1][6][i][8]物品的单位数量；

LuaParam[1][6][i][9]价格类型，0代表金币；1代表元宝；2代表积分。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetDelegateBuyList(0, 6, 0, 0, "10000元宝", 0, "tags", "OnBuyBtnCallback")
function OnBuyBtnCallback()
    dbg("逻辑类型："..LuaParam[1][1])
    dbg("逻辑子类型："..LuaParam[1][2])
    dbg("交易单的总数："..LuaParam[1][3])
    dbg("开始位置："..LuaParam[1][4])
    dbg("本次获取交易单的数量："..LuaParam[1][5])
    dbg("交易号："..LuaParam[1][6][1][1])
    dbg("收购者："..LuaParam[1][6][1][2])
    dbg("下架剩余时间："..LuaParam[1][6][1][3])
    dbg("物品名称："..LuaParam[1][6][1][4])
    dbg("物品模板ID："..LuaParam[1][6][1][5])
    dbg("求购数量："..LuaParam[1][6][1][6])
    dbg("求购单价："..LuaParam[1][6][1][7])
    dbg("物品的单位数量："..LuaParam[1][6][1][8])
    dbg("价格类型："..LuaParam[1][6][1][9])
end

--此示例代码运行成功，控制台将输出：
逻辑类型：0
逻辑子类型：0
交易单的总数：1
开始位置：0
本次获取交易单的数量：1
交易号：15861983415206977549
收购者：name210
下架剩余时间：172260
物品名称：10000元宝
物品模板ID：65517
求购数量：1
求购单价：50
物品的单位数量：1
价格类型：1
<上一篇:寄售物品下一篇:获取自身的寄售和收购列表>
GetDelegateMineList
获取自身的寄售和收购列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取自身的寄售和收购列表。

语法
Luacopy 复制
CL:GetDelegateMineList( 
    tag,
    callback
)

参数
tag

string

 
自定义标签，用于区分不同作用的回调函数。

callback

string

 
获取成功后，执行的回调函数名。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

LuaParam[1][1] = {} 1 为收购table

i为物品索引号。

LuaParam[1][1][i][1]交易号；

LuaParam[1][1][i][2]出售者；

LuaParam[1][1][i][3]下架剩余时间；

LuaParam[1][1][i][4]物品名称（非KeyName）；

LuaParam[1][1][i][5]物品模板ID；

LuaParam[1][1][i][6]求购数量；

LuaParam[1][1][i][7]物品单价；

LuaParam[1][1][i][8]物品单位数量；

LuaParam[1][1][i][9]价格类型，0代表金币；1代表元宝；2代表积分；

LuaParam[1][2] = {} 2 为寄售table

LuaParam[1][2][i][1]交易号；

LuaParam[1][2][i][2]出售者；

LuaParam[1][2][i][3]物品单价；

LuaParam[2][6][i][4]物品单位数量；

LuaParam[1][2][i][5]下架剩余时间；

LuaParam[1][2][i][6]物品GUID；

LuaParam[1][2][i][7]价格类型，0代表金币；1代表元宝；2代表积分。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetDelegateMineList( "tags", "OnSellBuyCallback")
function OnSellBuyCallback()
    dbg("----------收购----------")
    dbg("交易号："..LuaParam[1][1][1][1])
    dbg("出售者："..LuaParam[1][1][1][2])
    dbg("下架剩余时间："..LuaParam[1][1][1][3])
    dbg("物品名称："..LuaParam[1][1][1][4])
    dbg("物品模板ID："..LuaParam[1][1][1][5])
    dbg("求购数量："..LuaParam[1][1][1][6])
    dbg("物品单价："..LuaParam[1][1][1][7])
    dbg("物品单位数量："..LuaParam[1][1][1][8])
    dbg("价格类型："..LuaParam[1][1][1][9])
    dbg("----------寄售----------")
    dbg("交易号："..LuaParam[1][2][1][1])
    dbg("出售者："..LuaParam[1][2][1][2])
    dbg("物品单价："..LuaParam[1][2][1][3])
    dbg("物品单位数量："..LuaParam[1][2][1][4])
    dbg("下架剩余时间："..LuaParam[1][2][1][5])
    dbg("物品GUID："..LuaParam[1][2][1][6])
    dbg("价格类型："..LuaParam[1][2][1][7])
end

--此示例代码运行成功如下图所示。

GetDelegateMineList_1.png
<上一篇:获取指定收购物品交易列表下一篇:获取指定寄售物品交易列表>
GetDelegateSellList
获取指定寄售物品交易列表

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-29 00:00:00
此函数获取玩家角色自身指定的寄售物品交易列表。

语法
Luacopy 复制
CL:GetDelegateSellList( 
    start,
    count,
    type,
    subtype,
    itemname,
    isReverse,
    tag,
    callback
)

参数
start

int

 
开始索引

0表示第一个

count

int

 
要获取的交易数

type

int

 
逻辑类型

subtype

int

 
逻辑子类型

itemname

string

 
指定物品的索引名（KeyName）

isReverse

int

 
交易表的顺序

0正序

1倒序

tag

string

 
自定义标签

用于区分不同作用的回调函数

callback

string

 
获取成功后执行的回调函数名

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaParam中。

LuaParam[1] = {} 1为寄售表

i为交易索引号。

LuaParam[1][1]逻辑类型；

LuaParam[1][2]逻辑子类型；

LuaParam[1][3]交易单的总数；

LuaParam[1][4]开始位置；

LuaParam[1][5]本次获取交易单的数量；

LuaParam[1][6] = {}交易表

LuaParam[1][6][i][1]交易号；

LuaParam[1][6][i][2]出售者；

LuaParam[1][6][i][3]下架剩余时间，单位为秒；

LuaParam[1][6][i][4]物品单价；

LuaParam[1][6][i][5]物品的单位数量；

LuaParam[1][6][i][6]价格类型，0代表金币；1代表元宝；2代表积分；

LuaParam[1][6][i][7]物品GUID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetDelegateSellList(0, 6, 0, 0, "小喇叭", 0, "tags", "OnSellBtnCallback") 
function OnSellBtnCallback()
    dbg("逻辑类型："..LuaParam[1][1])
    dbg("逻辑子类型："..LuaParam[1][2])
    dbg("交易单的总数："..LuaParam[1][3])
    dbg("开始位置："..LuaParam[1][4])
    dbg("本次获取交易单的数量："..LuaParam[1][5])
    dbg("交易号："..LuaParam[1][6][1][1])
    dbg("出售者："..LuaParam[1][6][1][2])
    dbg("下架剩余时间："..LuaParam[1][6][1][3])
    dbg("物品单价："..LuaParam[1][6][1][4])
    dbg("物品的单位数量："..LuaParam[1][6][1][5])
    dbg("价格类型："..LuaParam[1][6][1][6])
    dbg("物品GUID："..LuaParam[1][6][1][7])
end


--此示例代码运行成功，控制台将输出：
逻辑类型：0
逻辑子类型：0
交易单的总数：1
开始位置：0
本次获取交易单的数量：1
交易号：15861983415206977548
出售者：name210
下架剩余时间：172693
物品单价：12
物品单位数量：1
价格类型：1
物品GUID：5485689868728639512
<上一篇:获取自身的寄售和收购列表下一篇:购买其他玩家寄售的物品>
MarketBuyItem
购买其他玩家寄售的物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数购买其他玩家寄售的物品。

语法
Luacopy 复制
CL:MarketBuyItem( 
    tradeId,
    count
)

参数
tradeId

string

 
交易号。

count

int

 
购买的数量。

返回值
bool

 
返回值固定为true。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetDelegateMineList("delegateItemList", "OnSellBuyCallback") --获取玩家的寄售和收购列表

function OnSellBuyCallback()
    local delegateItemList = LuaParam
    local transid = delegateItemList[1][2][1][1] --获取第一个寄售物品的交易号，详细定义请见GetDelegateMineList的说明
    if CL:MarketBuyItem(transid, 1) then
        dbg("购买寄售物品成功。")
    end
end
<上一篇:获取指定寄售物品交易列表下一篇:出售别人收购的物品，并指定出售数量>
MarketSellItemByCount
出售别人收购的物品，并指定出售数量

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-05-08 00:00:00
此函数出售别人收购的物品，并指定出售数量。

note_icon 备注
如果物品数量比指定要出售的数量多，则会尝试自动拆分，需要背包有空余的格子。

如果出售数量多于收购数量时，服务端引擎会判断失败。

语法
Luacopy 复制
CL:MarketSellItemByCount(
    tradeId,
    itemGUID,
    count
)
参数
tradeId

string

 
交易号

itemGUID

string

 
物品的GUID

count

uint

 
指定要出售的数量

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
当tradeId无效、itemGUID不存在或者count为0时，返回值为false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在NewMarketSell.lua脚本文件中执行。

NewMarketSell = {}
function NewMarketSell.main()
    local _Parent = LuaGlobal["AttachPartent"]

    --……省略部分代码
    _GUIHandle = GUI:ButtonCreate(_Parent,"Confirm",1804100010,113,213)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "NewMarketSell.OnConfirm")
        GUI:WndSetTextM(_GUIHandle,"出售")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,78, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    --……省略部分代码
    NewMarketSell.UIInit(_Parent)
end
--……省略部分代码
function NewMarketSell.OnConfirm()
    if not NewMarketSell.GUID then
        msg("请放入出售物品")
        return
    end
    --在寄售商人处添加接口，并指定出售数量，查看结果
    CL:MarketSellItemByCount(NewMarketSell.tradeId, NewMarketSell.GUID,2)
    NewDealerWnd.OnBuyBtn()
    GUI:WndClose(NewMarketSell.WndHandle)
end
--……省略部分代码
NewMarketSell.main()


--当出售数量多于收购数量时，服务端引擎会判断失败的情况

MarketSellItemByCount.png

--当背包中物品数量比指定出售数量多时，会尝试自动拆分
--指定出售数量为2后，可以正常出售
--出售前

MarketSellItemByCount_2.png

MarketSellItemByCount_3.png

--出售后

MarketSellItemByCount_4.png

MarketSellItemByCount_5.png
<上一篇:购买其他玩家寄售的物品下一篇:出售其他玩家收购的物品>
MarketSellItem
出售其他玩家收购的物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数出售其他玩家正在收购的物品。

语法
Luacopy 复制
CL:MarketSellItem( 
    tradeId,
    itemGUID
)

参数
tradeId

string

 
交易号。

itemGUID

string

 
物品的GUID。

返回值
bool

 
返回值固定为true。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetDelegateMineList("delegateItemList", "OnSellBuyCallback") --获取玩家的寄售和收购列表

function OnSellBuyCallback()
    local delegateItemList = LuaParam
    local transid = delegateItemList[1][1][1][1] --获取第一个收购物品的交易号，详细定义请见GetDelegateMineList的说明
    if CL:MarketSellItem(transid, guid) then
        dbg("寄售物品成功。")
    end
end
<上一篇:出售别人收购的物品，并指定出售数量
AcceptP2pInvite
处理交易邀请

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-09-05 00:00:00
此函数处理其他角色发送的交易请求消息。

语法
Luacopy 复制
CL:AcceptP2pInvite( 
    _Guid,
    _Accept
)

参数
_Guid

string

 
对方角色的GUID

_Accept

int

 
是否接受交易请求

1接受

0取消

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--GameMainBar.lua脚本中

RegisterUIEvent(LUA_EVENT_P2PINVITE, "GameMainBar_交易邀请", GameMainBar.tradeInvite) --挂接玩家交易逻辑事件

function GameMainBar.tradeInvite() --交易邀请
    local pGuid = LuaParam[1] --获取对方GUID
    local pName = LuaParam[2] --获取对方名字

    FormParam = {pGuid, pName}
    UI:Lua_OpenWindow(0, "TradeInvite")
end 

--TradeInvite.lua脚本中

TradeInvite ={}
function TradeInvite.main()
    TradeInvite.GUID = FormParam[1] or "0"
    TradeInvite.Name = FormParam[2] or ""
    local _Parent = LuaGlobal["AttachPartent"]
    
    _GUIHandle = GUI:ButtonCreate(_Parent, "BtnConfirm", 1871010132, 250, 144)
    if 0 ~= _GUIHandle then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "TradeInvite.OnConfirm")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent, "BtnCancel", 1871010132, 72, 144)
    if 0 ~= _GUIHandle then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbClick, "TradeInvite.OnCancel")
    end
end

function TradeInvite.OnConfirm()
    CL:AcceptP2pInvite(TradeInvite.GUID, 1) --接受交易
    TradeInvite.close()
end

function TradeInvite.OnCancel()
    CL:AcceptP2pInvite(TradeInvite.GUID, 0) --取消交易
    TradeInvite.close()
end
下一篇:向玩家发起交易请求>
DoTrade
向玩家发起交易请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数向指定的玩家发起交易请求。

语法
Luacopy 复制
CL:DoTrade( 
    _PlayerGUID
)

参数
_PlayerGUID

string

 
玩家的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _ViewPlayerGUID = CL:GetViewEquipTarPlayerGUID() --查看某个玩家的资料，获取该玩家的GUID
if _ViewPlayerGUID ~= "" then
    CL:DoTrade(_ViewPlayerGUID) --与该玩家发起交易
end

--执行成功后，聊天框将输出系统消息：“交易请求已发出，请等待对方回应”。
<上一篇:处理交易邀请下一篇:点击交易按钮>
OnTradeBtn
点击交易按钮

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数的调用相当于点击了交易按钮，打开面对面交易窗口。

语法
Luacopy 复制
CL:OnTradeBtn()

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
<上一篇:向玩家发起交易请求下一篇:设定交易的金币数量>
SetP2pGold
设定交易的金币数量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设定玩家之间交易的金币数量。

语法
Luacopy 复制
CL:SetP2pGold( 
    _gold
)

参数
_gold

string

 
金币数量

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetP2pGold("100") --设置交易的金币数量为100
<上一篇:点击交易按钮
AcceptQuestByID
接受任务

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数用于接受任务。

语法
Luacopy 复制
CL:AcceptQuestByID( 
    _QuestID
)

参数
_QuestID

int

 
任务的ID。

返回值
bool

 
接受任务是否成功：

true成功

false失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--TaskOperationDlg.lua文件中：挂接打开接受任务面板逻辑事件
RegisterUIEvent(LUA_EVENT_NPCQUEST, "openNPCMissionWnd",TaskOperationDlg.getQuest)
function TaskOperationDlg.getQuest()
    TaskOperationDlg.mID = LuaParam[1]
    CL:AcceptQuestByID(TaskOperationDlg.mID) --接受任务
end
下一篇:放弃任务>
DropQuestByID
放弃任务

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数用于放弃任务。

语法
Luacopy 复制
CL:DropQuestByID( 
    _QuestID
)

参数
_QuestID

int

 
任务的ID。

返回值
bool

 
放弃任务是否成功：

true成功

false失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:DropQuestByID(50001)--放弃任务ID为“50001”的任务,将提示任务已完成。

--此示例代码运行成功如下图所示。

DropQuestByID
<上一篇:接受任务下一篇:获取游戏事件标签>
GetGameEventFlag
获取游戏事件标签

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取新手引导是否完成的标记。

语法
Luacopy 复制
CL:GetGameEventFlag( 
    _DataIdx
)

参数
_DataIdx

int

 
标记索引。

返回值
int

 
标记。

0未进行新手引导。

1已完成新手引导。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetGameEventFlag(1,1) --完成新手引导
dbg(""..CL:GetGameEventFlag(1)) 

--控制台将输出：“1”。
<上一篇:放弃任务下一篇:获取任务奖励物品具体信息>
GetQuestAwardByID
获取任务奖励物品具体信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取任务奖励物品具体信息。

语法
Luacopy 复制
CL:GetQuestAwardByID( 
    _QuestID
)

参数
_QuestID

int

 
任务的ID。

返回值
bool

 
获取奖励是否成功：

true成功

false失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

i为奖励物品的序号；

LuaRet[i][1]奖励物品的模板ID；

LuaRet[i][2]奖励物品的数量；

LuaRet[i][3]绑定的类型，0代表非绑定，1代表绑定，2代表绑定或不绑定都可以。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetQuestAwardByID(1007) --获取任务ID为“1007”的奖励物品具体信息
dbg("奖品ID："..LuaRet[1][1])
dbg("奖品数量：."..LuaRet[1][2])
dbg("奖品是否绑定："..LuaRet[1][3])

--此示例代码运行成功如下图所示。

GetQuestAwardByID
<上一篇:获取游戏事件标签下一篇:获取任务具体信息>
GetQuestDataByID
获取任务具体信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2024-11-15 00:00:00
该函数获取任务具体信息。

语法
Luacopy 复制
CL:GetQuestDataByID( 
    _QuestID
)

参数
_QuestID

unsigned int

 
任务的ID。

返回值
bool

 
获取到任务具体信息是否成功：

true成功

false失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的列表信息存储在全局变量LuaRet中。

手游和端游中获取信息有所不同。

使用获取到的信息前，建议先获取一下数据类型再使用。

手游

LuaRet[1]任务名称；

LuaRet[2]任务类型，1代表主线，2代表支线，3代表其他；

LuaRet[3]任务描述，如任务已经完成，则为完成的信息；

i≥4，用于任务奖励；

LuaRet[i][1]任务奖励的类型，0代表经验，1代表元宝，2代表绑定元宝，3代表积分，4代表金币，5代表绑定金币，6代表仓库金币，7代表内功经验；

LuaRet[i][2]任务奖励的数值；

端游

LuaRet[1]任务名称；

LuaRet[2]任务类型，1代表主线，2代表支线，3代表其他；

LuaRet[3]任务描述；

LuaRet[4]是否自动接取；

LuaRet[5]是否自动交付；

i≥6，用于任务奖励；

LuaRet[i][1]任务奖励的类型，0代表经验，1代表元宝，2代表绑定元宝，3代表积分，4代表金币，5代表绑定金币，6代表仓库金币，7代表内功经验；

LuaRet[i][2]任务奖励的数值；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetQuestDataByID(1007) --获取任务ID为“1007”的任务具体信息
dbg("任务名称："..CL:GBK2UTF8(LuaRet[1]))
dbg("任务类型："..LuaRet[2])
dbg("任务描述："..CL:GBK2UTF8(LuaRet[3]))
local i = 4
for i = 4, #LuaRet do
    dbg("任务奖赏的类型："..LuaRet[i][1])
    dbg("任务奖赏的数值："..LuaRet[i][2])
end

--控制台将输出：
任务名称：#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#提升到50级
任务类型：1
任务描述：努力提升自己的等级去吧，更强大的威胁即将来临，我们需要你的保护！
任务奖赏的类型：0
任务奖赏的数值：100000
任务奖赏的类型：2
任务奖赏的数值：200
任务奖赏的类型：5
任务奖赏的数值：5000
<上一篇:获取任务奖励物品具体信息下一篇:获取已接和可接任务总数>
GetQuestNum
获取已接和可接任务总数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取已接任务和可接任务的总数量。

语法
Luacopy 复制
CL:GetQuestNum()

参数
无

 
返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetQuestNum() then
    dbg("已接和可接任务总数："..LuaRet)
else
    dbg("获取失败")
end

--如下图中已接任务4个，可接任务0个。

GetQuestNum
<上一篇:获取任务具体信息下一篇:获取追踪任务数据>
GetQuestTraceDataByType
获取追踪任务数据

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-09-09 00:00:00
此函数获取追踪任务数据。

语法
Luacopy 复制
CL:GetQuestTraceDataByType(
    quest_type
)
参数
quest_type

int

 
指定获取的任务类型

0代表全部，1代表主线，2代表支线，3代表其他。

返回值
int

 
获取的任务数量

note_icon 备注
获取的任务数据存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]任务id；

LuaRet[i][2]任务名；

LuaRet[i][3]任务类型，0代表全部，1代表主线，2代表支线，3代表其他；

LuaRet[i][4]进行中的追踪文本；

LuaRet[i][5]任务完成时的追踪文本；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local num = CL:GetQuestTraceDataByType(0)
dbg("当前指定类型的任务数量为："..num)
dbg("任务id为-"..LuaRet[1][1].."\n任务名为-"..LuaRet[1][2].."\n任务类型为-"..LuaRet[1][3].."\n进行时追踪文本为-"..LuaRet[1][4].."\n完成时追踪文本为-"..LuaRet[1][5])
local num1 = CL:GetQuestTraceDataByType(1)
dbg("当前主线任务数量为："..num1)
local num2 = CL:GetQuestTraceDataByType(2)
dbg("当前支线任务数量为："..num2)
local num3 = CL:GetQuestTraceDataByType(3)
dbg("当前其他任务数量为："..num3)

GetQuestTraceDataByType.png

GetQuestTraceDataByType_2.png

--此示例代码运行前效果如下图所示，通过参数成功获取到任务的相关信息，对比与后台内容一致。

GetQuestTraceDataByType_3.png
<上一篇:获取已接和可接任务总数下一篇:重置玩家任务状态>
ResetAutoQuestState
重置玩家任务状态

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数重置玩家任务状态。

如当前有任务正在进行中，则取消任务。

语法
Luacopy 复制
CL:ResetAutoQuestState()

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
<上一篇:获取追踪任务数据下一篇:设置是否自动弹出任务交接UI>
SetAutoQuest
设置是否自动弹出任务交接UI

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置是否自动弹出任务交接UI。

语法
Luacopy 复制
CL:SetAutoQuest(
    _Flag
)
参数
_Flag

boolean

 
true自动

false不自动

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:重置玩家任务状态下一篇:设置游戏事件标签>
SetGameEventFlag
设置游戏事件标签

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置新手引导是否完成的标记。

语法
Luacopy 复制
CL:SetGameEventFlag( 
    _DataIdx,
    _Data
)

参数
_DataIdx

int

 
标记索引。

_Data

int

 
标记。

0未进行新手引导。

1已完成新手引导。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetGameEventFlag(1,1) --完成新手引导
dbg(""..CL:GetGameEventFlag(1)) 

--控制台将输出：“1”。
<上一篇:设置是否自动弹出任务交接UI下一篇:设置玩家自动任务状态>
SetPlayerAutoQuest
设置玩家自动任务状态

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置玩家自动任务状态。

语法
Luacopy 复制
CL:SetPlayerAutoQuest( 
    _State
)

参数
_State

int

 
0空闲。

1任务进行中。

2点击任务栏的任务。

3战斗中。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPlayerAutoQuest(2) --点击任务栏的任务

--此示例代码运行成功如下图所示。

SetPlayerAutoQuest
<上一篇:设置游戏事件标签下一篇:提交已完成的任务>
SubmitQuestByID
提交已完成的任务

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数提交已完成的任务。

note_icon 备注
该接口为异步接口。脚本中需要监听事件LUA_EVENT_FINISHQUEST。

语法
Luacopy 复制
CL:SubmitQuestByID( 
    _QuestID
)

参数
_QuestID

int

 
任务的ID。

返回值
bool

 
提交任务是否成功：

true成功

false失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SubmitQuestByID(50002) --提交已完成任务ID为“50002”的任务

--此示例代码运行成功如下图所示。

SubmitQuestByID
<上一篇:设置玩家自动任务状态下一篇:获取是否已接到指定任务>
TaskQueryAccepted
获取是否已接到指定任务

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取是否已接到指定任务。

语法
Luacopy 复制
CL:TaskQueryAccepted( 
    _TaskID
)

参数
_TaskID

int

 
任务的ID。

返回值
bool

 
任务状态：

true接到指定任务。

false未接到指定任务。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:TaskQueryAccepted(50003) then --判断是否接到任务ID为"50003"的任务
    dbg("接到指定任务")
else 
    dbg("未接到指定任务")
end
<上一篇:提交已完成的任务下一篇:获取指定任务是否可提交>
TaskQueryReady
获取指定任务是否可提交

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取指定任务是否为可提交状态。

语法
Luacopy 复制
CL:TaskQueryReady( 
    _TaskID
)

参数
_TaskID

int

 
任务的ID。

返回值
bool

 
可提交状态：

true可提交。

false不可提交。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:TaskQueryReady(50004) then --获取任务ID为“50004”的任务的提交状态
    dbg("任务可提交")
else 
    dbg("任务不可提交")
end
<上一篇:获取是否已接到指定任务
GetGloryAward
发送获取成就奖励请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-06-28 00:00:00
此函数执行向服务器发送一个获取成就奖励的网络协议包请求。

语法
Luacopy 复制
CL:GetGloryAward(
    id
)

参数
id

int

 
成就的模板ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:发送获取成就列表请求>
GetGloryList
发送获取成就列表请求

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行向服务器发送一个获取成就列表的网络协议包请求。

语法
Luacopy 复制
CL:GetGloryList()

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
<上一篇:发送获取成就奖励请求
CampaignJoin
参加活动

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行玩家参加活动的操作。

语法
Luacopy 复制
CL:CampaignJoin( 
    int
)

参数
_Id

unsigned int

 
活动编号。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:CampaignJoin(1) --参加活动“无尽深渊”，活动编号在区号151750，手游45度测试区为1。

--注意参加活动前，活动需要先开启。
下一篇:获取活动的详细信息>
GetCampaignDetail
获取活动的详细信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据活动编号，获取该活动的详细信息。

语法
Luacopy 复制
CL:GetCampaignDetail( 
    _Id,
    _Tag,
    _CallBack
)

参数
_Id

unsigned int

 
活动编号。

_Tag

string

 
活动标签。

_CallBack

string

 
获取成功后，执行的回调函数。

程序同时会传递以下参数，保存于全局变量LuaParam中，由脚本进行后续的处理。

活动ID(int)；活动NPC(string)；活动描述(string)；活动奖励(string)

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetCampaignDetail(4, "Campaign_Select", "RecvDetail") --获取活动“元宝嘉年华”的信息，活动编号在区号151750，手游45度测试区中为4。

function RecvDetail() --回调函数
    local campId = LuaParam[1]
    local npc = LuaParam[2]
    local desc = LuaParam[3]
    local award = LuaParam[4]
    dbg("活动ID："..campId)
    dbg("相关NPC："..CL:GBK2UTF8(npc)) --中文字符需用GBK编码转为UTF8
    dbg("活动描述："..CL:GBK2UTF8(desc)) --中文字符需用GBK编码转为UTF8
    dbg("活动奖励："..CL:GBK2UTF8(award)) --中文字符需用GBK编码转为UTF8
end

--控制台将输出该活动的详情：
活动ID：4
相关NPC：无
活动描述：BOSS元宝树妖王和元宝树魔携带着大量元宝。击杀它们可获得大量元宝奖励！
活动奖励：活动产出：元宝
<上一篇:参加活动
GetMonsterEntityPropByGUID
获取怪物实体的属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-09-03 00:00:00
此函数根据怪物的GUID获取怪物实体的属性。

语法
Luacopy 复制
CL:GetMonsterEntityPropByGUID(
    monster_guid
)
参数
monster_guid

string

 
怪物GUID

返回值
操作结果

bool

 
获取属性数据是否成功。

true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的属性列表信息存储在全局变量LuaRet中；

其中怪物名字在PC端其返回GBK编码, 而移动端则返回的是UTF8编码。

LuaRet[1]怪物GUID；

LuaRet[2]怪物名字；

LuaRet[3]怪物位置的X坐标，单位为像素；

LuaRet[4]怪物位置的Y坐标，单位为像素；

LuaRet[5]怪物等级；

LuaRet[6]怪物索引名称；

版本历史
v1.0

 
首次发布

 
v1.1

 
新增LuaRet[6]怪物索引名称。

 
v1.2

 
新增对3D手游和3D端游支持。

示例代码
Luacopy 复制
local ret = CL:GetMonsterEntityPropByGUID("2696836372213514410")
local tbl = LuaRet
dbg("bool = "..tostring(ret).."\nLuaRet = "..serialize(tbl))

--此示例代码运行成功如下图所示。

GetMonsterEntityPropByGUID.png
下一篇:获取怪物的主人名字>
GetMonsterMasterName
获取怪物的主人名字

更新时间：2023-12-11 00:00:00
此函数获取怪物的主人名字。

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

语法
Luacopy 复制
CL:GetMonsterMasterName(
    monster_guid
)
参数
monster_guid

string

 
怪物的GUID

返回值
string

 
怪物的主人名字

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取怪物实体的属性下一篇:通过怪物模板id获取怪物模板表数据>
GetMonsterTemplatePropById
通过怪物模板id获取怪物模板表数据

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-03-28 00:00:00
此函数通过怪物模板id获取怪物模板表数据。

语法
Luacopy 复制
CL:GetMonsterTemplateProperty( 
    monster_id,
    type
)

参数
monster_id

int

 
怪物模板id

type

int

 
怪物模板属性类型

1怪物名

2怪物类型

3小头像

4怪物等级

5怪物多重血条中单条的血量

6怪物名字颜色

7怪物最大血量

8怪物模型

9怪物重生时间（单位为毫秒（ms））

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制

--指定怪物模板属性类型如下图所示。
  
GetMonsterTemplatePropById
  
if CL:GetMonsterTemplatePropById(528, 1) then
  dbg("怪物名称为:"..LuaRet)
else

--此示例代码运行成功如下图所示。

GetMonsterTemplatePropById_2
<上一篇:获取怪物的主人名字下一篇:获取怪物模板属性>
GetMonsterTemplateProperty
获取怪物模板属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-12-25 00:00:00
此函数根据怪物的索引名（KeyName）获取怪物模板属性。

语法
Luacopy 复制
CL:GetMonsterTemplateProperty( 
    _KeyName,
    _PropertyType
)

参数
_KeyName

string

 
怪物的索引名（KeyName）

_PropertyType

int

 
怪物模板属性类型

1怪物名

2怪物类型

3小头像

4怪物等级

5怪物多重血条中单条的血量

6怪物名字颜色

7怪物最大血量

8怪物模型

9怪物重生时间（单位为毫秒（ms））

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_PropertyType的类型：6怪物名字颜色

 
v1.2

 
新增参数_PropertyType的类型：7怪物最大血量

 
v1.3

 
新增参数_PropertyType的类型：8怪物模型

 
v1.4

 
新增参数_PropertyType的类型：9怪物重生时间

示例代码
Luacopy 复制
if CL:GetMonsterTemplateProperty("镇魔风魔11",1) then --获取怪物名称
    dbg("怪物名称:"..LuaRet) --输出“镇魔风魔”
end

--此示例代码运行成功如下图所示。

GetMonsterTemplateProperty
<上一篇:通过怪物模板id获取怪物模板表数据下一篇:获取屏幕范围内指定个数怪物的列表>
GetNearMonsterListByCount
获取屏幕范围内指定个数怪物的列表

更新时间：2024-08-02 00:00:00
此函数获取屏幕范围内指定个数及指定类型怪物的列表。

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

语法
Luacopy 复制
CL:GetNearMonsterListByCount(
    count,
    type
)
参数
count

int

 
要获取的怪物个数

type

int

 
要获取的怪物类型

0不指定要获取怪物的类型

1仅获取有主人的怪物

2仅获取无主人的怪物

返回值
int

 
成功获取的怪物个数

0没有怪物信息或获取失败

note_icon 备注
如获取成功（即接口的返回值不为0），则获取的数据存储在全局变量LuaRet中。

i为索引号。

LuaRet[i][1]怪物显示的名称（string）；

LuaRet[i][2]怪物的X坐标（int）；

LuaRet[i][3]怪物的Y坐标（int）；

LuaRet[i][4]怪物的GUID(string）；

LuaRet[i][5]怪物的等级（int）；

LuaRet[i][6]怪物的索引名（KeyName）（string）；

LuaRet[i][7]怪物的当前血量数值（int）；

LuaRet[i][8]怪物的血量上限数值（int）。

注意点：

1.返回值中获取的“怪物显示的名称”的编码方式为GBK；

2.此接口无法获取玩家自己的宠物；

3.若设置不显示其他玩家宠物的名字（例如：将全局变量AlwaysShowPetName设置为false），则获取到的其他玩家宠物怪物名字会为空字符串（""）。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

 
v1.2

 
增加操作成功获取的内容：LuaRet[i][6]怪物的索引名（KeyName）

 
v1.3

 
增加操作成功获取的内容：LuaRet[i][7]怪物的当前血量数值

增加操作成功获取的内容：LuaRet[i][8]怪物的血量上限数值

 
v1.4

 
新增对2D端游支持

示例代码
Luacopy 复制
local count = CL:GetNearMonsterListByCount(5,0) --获取屏幕范围内怪物的列表
dbg("count="..count) --打印获取的怪物个数

if count ~= 0 then
    local servant = LuaRet
    dbg(""..CL:GBK2UTF8(serialize(servant))) --打印获取的怪物列表
end

--此示例代码运行成功如下图所示。

GetNearMonsterListByCount
<上一篇:获取怪物模板属性下一篇:通过模板名自定义需要隐藏的怪物>
HideMonstersByKeyName
通过模板名自定义需要隐藏的怪物

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-07-24 00:00:00
此函数通过模板名自定义需要隐藏的怪物。

note_icon 备注
这是CL:OnShowHideOtherMonster接口的扩展版本，设置项会被存储到本地(与角色绑定)。

语法
Luacopy 复制
CL:HideMonstersByKeyName(
    key_names  
)
参数
key_names

string

 
怪物模板名列表，使用英文逗号分割。

传递空字符串以清空设置。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:HideMonstersByKeyName("战灵水1,战灵火1,战灵土1")

--示例代码运行成功如下图所示，传入怪物索引名，怪物隐藏。

--端游

HideMonstersByKeyName.png

--手游

HideMonstersByKeyName_2.png

CL:HideMonstersByKeyName("")

--示例代码运行成功如下图所示，传入空字符串后，怪物显示。

--端游

HideMonstersByKeyName_3.png

--手游

HideMonstersByKeyName_4.png
<上一篇:获取屏幕范围内指定个数怪物的列表下一篇:设置自动挂机时需要屏蔽的怪物>
SetAutoAttackBanMonster
设置自动挂机时需要屏蔽的怪物

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-11-08 00:00:00
此函数设置自动挂机时需要屏蔽的怪物（即跳过不需要攻击的怪物）。

语法
Luacopy 复制
CL:SetAutoAttackBanMonster(
    MonsterTable
)
参数
MonsterTable

string

 
需要屏蔽的怪物名称列表

名称列表为字符串格式，中间用英文逗号（“,”）隔开。

例如："小火妖,测试鸡,练功木人"

note_icon 备注
1.此处填写的为怪物的名称，并非怪物的索引名；

2.若此参数中填写的名称对应多个怪物（即这些怪物的名称相同），则这些怪物都会被屏蔽；

3.怪物名称中包含换行符（“\n”）时，请按照以下规则填写：

   2D手游、3D手游和3D端游：填写时需要将换行符（“\n”）改写为“\\n”

   2D端游：填写时直接忽略换行符（“\n”）即可

   例如：若怪物的名称为“练功\n木人”，则在2D手游中需填写“练功\\n木人”，在2D端游中填写“练功木人”即可。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:SetAutoAttackBanMonster("小火妖,测试鸡,练功木人")

--此示例代码运行成功后，玩家在自动挂机过程中不会攻击上述怪物。
<上一篇:通过模板名自定义需要隐藏的怪物下一篇:设置自动战斗时寻怪范围>
SetAutoAttackMonsterDetectionRange
设置自动战斗时寻怪范围

手游 2Dno_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-05-12 00:00:00
此函数设置自动战斗时寻怪范围, 以开始自动战斗时的玩家坐标为中心点。

note_icon 备注
手游使用全局变量UseAutoSearchMonsterRect、AutoSearchMonsterRectHeight和AutoSearchMonsterRectWidth设置自动战斗时寻怪范围。

语法
Luacopy 复制
CL:SetAutoAttackMonsterDetectionRange(
    n
)
参数
n

int

 
水平方向的偏移值

范围为0-10000（单位为逻辑格）

note_icon 备注
如n=3，指玩家坐标分别往上下左右各数3个逻辑格（玩家自身所在逻辑格也算作1格）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetAutoAttackMonsterDetectionRange(3)

--如图所示将参数设置为3，成功执行接口后，以玩家执行接口时坐标为中心点（玩家自身所在逻辑格也算作1格）。

--当玩家坐标周围半径为3个逻辑格范围内没有搜索到怪物时，玩家会在该范围内来回跑动搜索怪物，不会跑远。

SetAutoAttackMonsterDetectionRange.png

--如图所示玩家坐标距离怪物为5个逻辑格，当参数为5时，可以成功搜索到怪物，开始攻击。

SetAutoAttackMonsterDetectionRange_2.png

--如图所示击杀怪物后，仍会在范围内搜索，不会跑远。

SetAutoAttackMonsterDetectionRange_3.png
<上一篇:设置自动挂机时需要屏蔽的怪物下一篇:设置指定的怪物是否忽略简装>
SetMonsterIgnoreUniformAvatar
设置指定的怪物是否忽略简装

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-10-14 00:00:00
此函数设置指定的怪物是否忽略简装。

在基本设置中开启“怪物简装”（如下图）后默认所有怪物都会使用简装，此接口可以设置特定怪物忽略简装。

SetMonsterIgnoreUniformAvatar_4.png
语法
Luacopy 复制
CL:SetMonsterIgnoreUniformAvatar(
    _RoleGUID,
    _Ignore
)
参数
_RoleGUID

string

 
怪物的GUID

_Ignore

bool

 
是否忽略简装

true忽略简装

false不忽略简装

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示（所有怪物均显示简装）。
SetMonsterIgnoreUniformAvatar_2.png
SetMonsterIgnoreUniformAvatar_3.png
RegisterUIEvent(181, "OnMonsterAppear", OnMonsterAppear) --注册“通知脚本怪物出现事件”
function OnMonsterAppear()
--当怪物的编号为61105时，设置怪物忽略简装。
    if LuaParam[2] == 61105 then 
        CL:SetMonsterIgnoreUniformAvatar(LuaParam[1],true)
    end
end

--此示例代码运行成功效果如下图所示（只有怪物“奇怪的牧草”忽略简装）。

SetMonsterIgnoreUniformAvatar.png
<上一篇:设置自动战斗时寻怪范围下一篇:设置怪物简装的图片资源>
SetMonsterUniformAvatar
设置怪物简装的图片资源

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-07-21 00:00:00
此函数设置怪物简装的图片资源。

语法
Luacopy 复制
CL:SetMonsterUniformAvatar( 
    _AvatarIds
)

参数
_AvatarIds

string

 
怪物模型图片资源

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
<上一篇:设置指定的怪物是否忽略简装
ChangeAccompanyAttacModel
改变随从的攻击模式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数切换随从跟随模式和攻击模式。

语法
Luacopy 复制
CL:ChangeAccompanyAttacModel()

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
下一篇:设置是否强制取消宠物隐形>
ForceServantShowAvatar
设置是否强制取消宠物隐形

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数设置是否强制取消宠物隐形。

语法
Luacopy 复制
CL:ForceServantShowAvatar( 
    _ForceShow
)

参数
_ForceShow

bool

 
是否取消宠物隐形。

true取消隐形

false不取消隐形

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:改变随从的攻击模式下一篇:获取当前英雄GUID列表>
GetCurHeroGUIDList
获取当前英雄GUID列表

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前英雄GUID列表。

语法
Luacopy 复制
CL:GetCurHeroGUIDList()
参数
无

返回值
boolean

 
true获取成功。

false获取失败。

获取成功，返回当前英雄GUID列表（类型：string）存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetCurHeroGUIDList() then
    dbg("LuaRet[1]:"..LuaRet[1])
end
--只有在英雄召唤出来的时候该接口才能获取到英雄guid
<上一篇:设置是否强制取消宠物隐形下一篇:获取当前英雄的GUID>
GetCurHeroGUID
获取当前英雄的GUID

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取当前英雄的GUID。

语法
Luacopy 复制
CL:GetCurHeroGUID()

参数
无

返回值
string

 
当前英雄的GUID。

如当前玩家无英雄，则返回空字符串。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local hero_guid =CL:GetCurHeroGUID() --获取当前英雄的GUID
dbg(hero_guid)

--控制台将输出：“1354481485148340226”。
<上一篇:获取当前英雄GUID列表下一篇:获取英雄所有装备的GUIData句柄>
GetHeroEquimentItemDataList
获取英雄所有装备的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取英雄所有装备的GUIData句柄数据列表。

语法
Luacopy 复制
CL:GetHeroEquimentItemDataList()

参数
无

 
返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量LuaRet中。

LuaRet[i]第i个装备的GUIData句柄，i的最大值为64。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetHeroEquimentItemDataList() then
    local list = LuaRet
    dbg("首个装备数据句柄："..list[1])
else
    dbg("获取失败")
end

--需在支持英雄的服务区，召唤英雄后运行代码，即可获取装备句柄信息。
<上一篇:获取当前英雄的GUID下一篇:获取英雄保护设置数据>
GetHeroProtectArr
获取英雄保护设置数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-12-31 18:19:00
此函数获取游戏英雄→保护面板中的英雄保护设置。

语法
Luacopy 复制
CL:GetHeroProtectArr(
    id
)

参数
id

int

 
2002下拉框中物品的模板ID数据

2003延迟时间数据

2004HP设置数据

2005HP按百分比设置数据

2006复选框是否选中数据

2007下拉框中当前选中项目的索引号

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

idx保护界面中，各设置选项序号，如下图所示。

SetHeroProtectIndex

下拉框中物品的模板ID数据

LuaRet[idx][item_idx]物品的模板ID，item_idx代表下拉框项目的索引号，从1开始；

延迟时间数据

LuaRet[idx]延迟数据值，单位为毫秒；

HP设置数据

LuaRet[idx]HP设置数据，若已勾选了使用百分比，则为百分比数据；

HP按百分比设置数据

LuaRet[idx]HP按百分比设置数据；

复选框是否选中数据

LuaRet[idx]复选框选中状态，0代表未选中，1代表已选中；

下拉框中当前选中项目的索引号

LuaRet[idx]下拉框当前被选中的项目索引号，0代表第一个项目，以此类推。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetProtectArr(2003) then --获取英雄的保护延时数据
end

--LuaRet中数据如下所示。

GetHeroProtectArr

--英雄保护设置界面如下所示。

GetHeroProtectArr2
<上一篇:获取英雄所有装备的GUIData句柄下一篇:获取英雄是否显示时装>
HeroGetShowFashionEx
获取英雄是否显示时装

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据英雄GUID获取英雄是否显示时装。

语法
Luacopy 复制
CL:HeroGetShowFashionEx(
    guid
)
参数
guid

string

 
英雄GUID

返回值
boolean

 
true显示

false不显示

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetCurHeroGUIDList() then
    if CL:HeroGetShowFashionEx(LuaRet[1]) then
        dbg("显示时装")
    else
        dbg("不显示时装")	
    end
else
    dbg("失败")
end

--此示例代码运行成功如下图所示。

HeroGetShowFashionEx
<上一篇:获取英雄保护设置数据下一篇:获取英雄是否显示时装>
HeroGetShowFashion
获取英雄是否显示时装

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取英雄是否显示时装。

语法
Luacopy 复制
CL:HeroGetShowFashion()

参数
无

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取英雄是否显示时装下一篇:获取英雄当前是否显示时装武器>
HeroGetShowWeapFashion
获取英雄当前是否显示时装武器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取英雄当前是否显示时装武器。

语法
Luacopy 复制
CL:HeroGetShowWeapFashion()

参数
无

返回值
bool

 
true执行成功。

false执行失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local status = CL:HeroGetShowFashion()
if status then
    dbg("显示时装")
else 
    dbg("不显示时装")
end
<上一篇:获取英雄是否显示时装下一篇:设置英雄是否显示时装武器>
HeroShowFashionEx
设置英雄是否显示时装武器

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据英雄GUID设置英雄是否显示时装武器。

语法
Luacopy 复制
CL:HeroShowFashionEx(
    guid,
    _Show
)
参数
guid

string

 
英雄GUID

_Show

boolean

 
是否显示时装武器

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetCurHeroGUIDList() then
    CL:HeroShowFashionEx(LuaRet[1],true)
end
<上一篇:获取英雄当前是否显示时装武器下一篇:设置英雄是否显示时装>
HeroShowFashion
设置英雄是否显示时装

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置英雄是否显示时装。

语法
Luacopy 复制
CL:HeroShowFashion( 
    _Show
)

参数
_Show

bool

 
true表示显示。

false表示不显示。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:HeroShowFashion(true) --设置英雄显示时装
<上一篇:设置英雄是否显示时装武器下一篇:设置英雄是否显示时装武器>
HeroShowWeapFashion
设置英雄是否显示时装武器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置英雄是否显示时装武器。

语法
Luacopy 复制
CL:HeroShowWeapFashion( 
    _Show
)

参数
_Show

bool

 
true表示显示。

false表示不显示。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:HeroShowWeapFashion(true) --设置英雄显示时装武器
<上一篇:设置英雄是否显示时装下一篇:切换英雄状态>
OnChangeHeroState
切换英雄状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-09-02 00:00:00
此函数作用为切换英雄的状态。

召唤英雄后，默认的英雄状态是战斗。

每次调用此接口即会切换至下一个状态，英雄状态的顺序为战斗、跟随、休息。

语法
Luacopy 复制
CL:OnChangeHeroState()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置英雄是否显示时装武器下一篇:施放英雄合击技能>
OnHeroDoJoinHitEx
施放英雄合击技能

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2023-04-04 00:00:00
此函数根据英雄GUID施放英雄合击技能。

如果英雄当前有合击技能，则施放合击技能。

语法
Luacopy 复制
CL:OnHeroDoJoinHitEx(
    guid
)
参数
guid

string

 
英雄GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetCurHeroGUIDList() then
    dbg("LuaRet[1]:"..LuaRet[1])
    CL:OnHeroDoJoinHitEx(LuaRet[1])
else
    dbg("失败")
end
<上一篇:切换英雄状态下一篇:施放英雄合击技能>
OnHeroDoJoinHit
施放英雄合击技能

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-04-04 00:00:00
此函数施放英雄合击技能。

如英雄当前有合击技能，则会施放合击技能。

语法
Luacopy 复制
CL:OnHeroDoJoinHit()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:施放英雄合击技能下一篇:英雄锁定>
OnHeroLockTarget
英雄锁定

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-09-02 00:00:00
当玩家选中某个目标时，可进行英雄锁定操作，即英雄会锁定该目标。

语法
Luacopy 复制
CL:OnHeroLockTarget()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:施放英雄合击技能下一篇:设置英雄为守护状态>
OnSetHeroDefend
设置英雄为守护状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2022-05-13 00:00:00
此函数设置英雄为守护状态。

英雄处于守护主人的状态下，当有怪物攻击主人时，英雄优先会攻击这些怪物。

语法
Luacopy 复制
CL:OnSetHeroDefend()

参数
无

 
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D端游支持

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:英雄锁定下一篇:召唤或收回英雄>
OnSummonHero
召唤或收回英雄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数召唤或收回英雄。

当已召唤英雄时，再次调用会收回英雄。

语法
Luacopy 复制
CL:OnSummonHero()

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
<上一篇:设置英雄为守护状态下一篇:打开英雄面板指定的页签页>
OpenHeroSkillSet
打开英雄面板指定的页签页

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-12-31 18:19:00
此函数打开英雄面板指定的页签页。

语法
Luacopy 复制
CL:OpenHeroSkillSet( 
    pageIndex,
    singlePage
)

参数
pageIndex

int

 
参数singlePage为true时：

0装备页

1属性页

2技能页

3保护设置页

参数singlePage为false时：

0装备和属性页

1装备和技能页

2保护设置页

singlePage

bool

 
页显示方式。

true单属性页显示

false组合属性页显示

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:OpenHeroSkillSet(0,false)

--打开界面如下所示

OpenHeroSkillSet
<上一篇:召唤或收回英雄下一篇:设置英雄名字颜色>
SetHeroColorRGB
设置英雄名字颜色

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置英雄名字的颜色。

note_icon 备注
手游设置请调用SetHeroColor。

语法
Luacopy 复制
CL:SetHeroColorRGB( 
    _r,
    _g,
    _b
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

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetHeroColorRGB(255,0,0)--设置英雄名字为红色

--此示例代码运行成功如下图所示。

SetHeroColor
<上一篇:打开英雄面板指定的页签页下一篇:设置英雄名字颜色>
SetHeroColor
设置英雄名字颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置英雄名字的颜色。

语法
Luacopy 复制
CL:SetHeroColor( 
    _ColorStr
)

参数
_ColorStr

string

 
颜色字符串。参见颜色字符串

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetHeroColor("RED") --设置英雄名字颜色为红色

--此示例代码运行成功如下图所示。

SetHeroColor
<上一篇:设置英雄名字颜色下一篇:设置英雄保护设置数据>
SetHeroProtectIndex
设置英雄保护设置数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-12-31 18:19:00
此函数设置游戏英雄→保护面板中的英雄保护设置。

如需设置初始值，可进入游戏工具后台，转到客户端资源→通用配置→英雄保护设置界面进行配置。

语法
Luacopy 复制
CL:SetHeroProtectIndex( 
    id,
    index,
    _String
)

参数
id

int

 
2003延迟时间数据

2004HP设置数据

2005HP按百分比设置数据

2006复选框是否选中

2007下拉框中当前选中项目

index

int

 
数组索引值

范围0~9，对应下图1~10的选项区域。

SetHeroProtectIndex
_String

string

 
设置值

note_icon 备注
若参数id的配置值为2003，则此参数的配置值为延迟时间数据（单位为毫秒（ms））；

若参数id的配置值为2004，则此参数的配置值为HP设置数据；

若参数id的配置值为2005，则此参数的配置值为HP按百分比设置数据；

若参数id的配置值为2006，则此参数的配置值为复选框是否选中数据（true代表已选中，false代表未选中）；

若参数id的配置值为2007，则此参数的配置值为下拉框中当前选中项目的索引号 （从0开始，0代表第一个项目，以此类推）。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--索引从“0”开始
CL:SetProtectIndex(2003, 0,"4500") --设置序号为“1”的延迟数据为“4500ms”
CL:SetProtectIndex(2004, 0,"1500") --设置序号为“1”的HP数据为“1500”
CL:SetProtectIndex(2005, 0,"75") --设置序号为“1”的HP比例数据为“75%”
CL:SetProtectIndex(2006, 4,"true") --设置序号为“5”的check数据为“勾选”
CL:SetProtectIndex(2007, 9,"1") --设置序号为“10”的选中数据为“1”，代表选中下拉框第二个道具
<上一篇:设置英雄名字颜色
GetRankList
获取指定类型的排行榜数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-06-04 00:00:00
此函数获取指定类型的排行榜角色名单数据。

语法
Luacopy 复制
CL:GetRankList( 
    _type,
    _Tag,
    _CallBack
)

参数
_type

int

 
排行榜类型

0,1,2,3：等级榜，依次为所有职业、战士、法师、术士。

4,5,6：魅力榜，依次为所有性别、男性、女性。

7,8,9,10：师徒榜，依次为所有职业、战士、法师、术士。

_Tag

string

 
自定义标签

用于区分不同作用的回调函数

一种排行榜类型可以有多个回调函数，使用标签可用于区分回调函数。

_CallBack

string

 
获取成功后执行的回调函数名

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的排行榜列表信息存储在全局变量LuaParam中。

LuaParam[1]排行榜类型，即上述_type参数中的类型；

LuaParam[2]榜单的角色数量；

LuaParam[3]距下一次榜单刷新的时间，单位为毫秒（ms）；

LuaParam[4]榜单角色列表详情。

i列表的序号，列表按照排名升序排序。

LuaParam[4][i][1]排名；

LuaParam[4][i][2]玩家角色的名字；

LuaParam[4][i][3]玩家角色的职业，1代表战士，2代表法师，3代表术士；

LuaParam[4][i][4]玩家角色的性别，1代表男性，2代表女性；

LuaParam[4][i][5]玩家角色的等级；

LuaParam[4][i][6]扩展信息1（在等级榜和师徒榜中代表玩家角色的行会名，在魅力榜中代表玩家角色的魅力值）；

LuaParam[4][i][7]扩展信息2（在师徒榜中代表玩家角色的师徒值，其他榜单中未使用到此扩展信息）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetRankList(0,"RankListAll","Callback_func")

function Callback_func()
    --打印等级榜排名第一位角色的名称
    player_name = LuaParam[4][1][2]
    dbg("排行榜第一位角色名是："..player_name)
end

--此示例代码运行成功如下图所示。

GetRankList.png
BuyMallItemByIndex
购买商城指定的物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数购买商城中指定索引的物品。

语法
Luacopy 复制
CL:BuyMallItemByIndex( 
    _Idx,
    _BuyCount,
    _ShowMessageBox
)

参数
_Idx

int

 
物品的索引。从0开始。

索引对商城当前激活的页签下的物品有效。

_BuyCount

int

 
购买的数量。

_ShowMessageBox

bool

 
是否显示购买确认提示对话框。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:BuyMallItemByIndex(1,2,true) --购买第2件商品

--运行示例代码前，先打开商城面板。效果如下图。

BuyMallItemByIndex
下一篇:批量购买商城指定的商品>
BuyMallItemUseBulkWnd
批量购买商城指定的商品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数打开批量购买面板，允许玩家输入购买数量，购买指定的商品。

语法
Luacopy 复制
CL:BuyMallItemUseBulkWnd( 
    _Idx
)

参数
_Idx

int

 
物品的索引。从0开始。

索引对商城当前激活的页签下的物品有效。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:BuyMallItemUseBulkWnd(1) --批量购买第2个商品

--运行示例代码前，先打开商城面板。效果如下图。



<上一篇:购买商城指定的物品下一篇:购买商城热销榜的指定物品>
BuySortMallItemByIndex
购买商城热销榜的指定物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数购买商城热销榜中指定索引的物品。

语法
Luacopy 复制
CL:BuySortMallItemByIndex( 
    _Idx,
    _UseBulkWnd,
    _ShowMessageBox
)

参数
_Idx

int

 
热销榜中物品的索引。从0开始。

_UseBulkWnd

bool

 
是否打开批量购买窗口。

_ShowMessageBox

bool

 
是否显示购买确认提示对话框。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:BuySortMallItemByIndex(0,true,false) --购买热销榜第1个物品

--运行示例代码前，先打开商城面板。效果如下图。

BuySortMallItemByIndex
<上一篇:批量购买商城指定的商品下一篇:获取商城商品数据>
GetMallItemData
获取商城商品数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取商城当前激活类别下商品数据。

如当前在辅助类别下，则获取到此类别下的所有商品数据。

语法
Luacopy 复制
CL:GetMallItemData()

参数
无

 
返回值
bool

 
获取结果状态。

true获取物品数量大于0。

false获取物品数量小于0。

note_icon 备注
获取的信息存储在全局变量LuaRet中。

i为物品序号。

LuaRet[i][1]物品的索引号；

LuaRet[i][2]物品的ID；

LuaRet[i][3]是否热销商品；

LuaRet[i][4]可出售的数量；

LuaRet[i][5]价格类型，0代表元宝，1代表绑元，2代表积分，3代表金币，4代表绑金。

LuaRet[i][6]出售的价格；

LuaRet[i][7]打折的价格，无折扣则同原价；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetMallItemData()
dbg("第四个商品的索引："..LuaRet[4][1]) --获取第四个商品的索引
dbg("第四个商品的id："..LuaRet[4][2]) --获取第四个商品的id

--例如，控制台将输出：
第四个商品的索引：7
第四个商品的id：20463
<上一篇:购买商城热销榜的指定物品下一篇:根据商城中物品索引名获取物品的句柄>
GetMallItemHandleByName
根据商城中物品索引名获取物品的句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-29 00:00:00
此函数根据商城中的物品索引名（KeyName）获取该物品的句柄。

语法
Luacopy 复制
CL:GetMallItemHandleByName( 
    _ItemName
)

参数
_ItemName

string

 
物品的索引名（KeyName）

返回值
int

 
商城物品的句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local handle = CL:GetMallItemHandleByName("回城石")
dbg("物品的GUIData句柄是:"..handle)

--例如，控制台将输出“物品的GUIData句柄是：428464048”。
<上一篇:获取商城商品数据下一篇:获取商城商品信息>
GetMallItemInfo
获取商城商品信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取商城当前激活类别下商品数据。

如当前在辅助类别下，则获取到此类别下的所有商品数据。

语法
Luacopy 复制
CL:GetMallItemInfo()

参数
无

返回值
bool

 
获取结果状态。

true获取物品数量大于0。

false获取物品数量小于0。

note_icon 备注
获取的信息存储在全局变量LuaRet中。

i为物品序号。

LuaRet[i][1]物品的ID；

LuaRet[i][2]是否热销商品；

LuaRet[i][3]可出售的数量；

LuaRet[i][4]价格类型，0代表元宝，1代表绑元，2代表积分，3代表金币，4代表绑金。

LuaRet[i][5]出售的价格；

LuaRet[i][6]打折的价格，无折扣则同原价；

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetMallItemInfo()
dbg("第一个商品的ID："..LuaRet[1][1]) --获取第一个商品的ID
dbg("第一个商品价格："..LuaRet[1][5]) --获取第一个商品价格
dbg("第一个商品折扣价格："..LuaRet[1][6]) --获取第一个商品折扣价格

--例如，获取到小喇叭，控制台将输出：
第一个商品的ID：35243
第一个商品价格：100
第一个商品折扣价格：99
<上一篇:根据商城中物品索引名获取物品的句柄下一篇:获取商城指定物品的详情>
MallItemDetailReq
获取商城指定物品的详情

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数请求商城种指定索引的物品详情。

获得的物品详情一般展示在商城下图所示的位置的编辑框中。

MallItemDetailReq

语法
Luacopy 复制
CL:MallItemDetailReq( 
    _Idx
)

参数
_Idx

int

 
物品的索引。从0开始。

索引对商城当前激活的页签下的物品有效。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取商城商品信息下一篇:重置商城物品的选择>
ResetSortMallSelect
重置商城物品的选择

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数执行重置程序内部商城物品选择的索引。

语法
Luacopy 复制
CL:ResetSortMallSelect()

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
<上一篇:获取商城指定物品的详情下一篇:根据名称批量购买商城物品>
ShowBulkBuyWnd
根据名称批量购买商城物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-19 00:00:00
此函数根据商城物品的名称，打开批量购买窗口。

此函数仅设置执行界面的显示内容，相关购买逻辑需要在回调函数中编写并实现。

语法
Luacopy 复制
CL:ShowBulkBuyWnd( 
    _ItemKeyName,
    _PriceType,
    _UnitPrice,
    _InvokeFuncName
)

参数
_ItemKeyName

string

 
商城中物品的索引名（KeyName）

_PriceType

int

 
价格类型

1金币

2绑定金币

3元宝

4绑定元宝

5积分

_UnitPrice

int

 
物品的价格

_InvokeFuncName

string

 
回调函数名

此回调函数为“鼠标左键弹起”事件的回调（等同于注册RDWndBaseCL_mouse_lbUp事件）。

回调函数格式：Callback(_HandleID, _Param, X, Y)

_HandleID(int)：指定控件的句柄

_Param(int)：按键参数(恒为0)

X(int)：鼠标相对于控件位置的横坐标

Y(int)：鼠标相对于控件位置的纵坐标

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ShowBulkBuyWnd("小喇叭",3,2,"Invoke") --回调函数需要实现购买逻辑

function Invoke(_Handle,_Param,X,Y)
    dbg("窗口句柄为：".._Handle)
    dbg("按键参数为：".._Param)
    dbg("鼠标相对控件横坐标为："..X)
    dbg("鼠标相对控件纵坐标为："..Y)
end

--此示例代码运行成功如下图所示。

ShowBulkBuyWnd_2.png

--点击“确定”按钮，控制台会输出如下内容。

ShowBulkBuyWnd_3.png
<上一篇:重置商城物品的选择下一篇:根据ID批量购买商城物品>
ShowMallBulkBuyWnd
根据ID批量购买商城物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据商城物品的ID，打开批量购买窗口。

此函数仅设置执行界面的显示内容，相关购买逻辑需要在回调函数中编写并实现。

语法
Luacopy 复制
CL:ShowMallBulkBuyWnd( 
    _ItemID,
    _PriceType,
    _UnitPrice,
    _Count,
    _InvokeFuncName
)

参数
_ItemID

int

 
商城物品的ID

_PriceType

int

 
价格类型

1金币

2绑定金币

3元宝

4绑定元宝

5积分

_UnitPrice

int

 
物品的价格

_Count

int

 
物品可购买的总数量

_InvokeFuncName

string

 
回调函数名

此回调函数为“鼠标左键弹起”事件的回调（等同于注册RDWndBaseCL_mouse_lbUp事件）。

回调函数格式：Callback(_HandleID, _Param, X, Y)

_HandleID(int)：指定控件的句柄

_Param(int)：按键参数(恒为0)

X(int)：鼠标相对于控件位置的横坐标

Y(int)：鼠标相对于控件位置的纵坐标

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ShowMallBulkBuyWnd(148,1,2,100,"Invoke") --回调函数需要实现购买逻辑

function Invoke(_Handle,_Param,X,Y)
    dbg("窗口句柄为：".._Handle)
    dbg("按键参数为：".._Param)
    dbg("鼠标相对控件横坐标为："..X)
    dbg("鼠标相对控件纵坐标为："..Y)
end

--此示例代码运行成功如下图所示。

ShowMallBulkBuyWnd_2.png

--点击“确定”按钮，控制台会输出如下内容。

/ShowMallBulkBuyWnd_3.png
<上一篇:根据名称批量购买商城物品
AvatarContainerCreate
创建模型容器

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数创建模型容器。

语法
Luacopy 复制
CL:AvatarContainerCreate( 
    _ParentHandleID,
    _pContainerID,
    _PosX,
    _PosY,
    _WeapMirror
)

参数
_ParentHandleID

long

 
父控件的句柄。

_pContainerID

string

 
模型容器的名称。

_PosX

int

 
创建位置的横坐标。

_PosY

int

 
创建位置的纵坐标。

_WeapMirror

bool

 
武器是否启用镜像。

true启用

false不启用

返回值
long

 
创建成功，返回模型容器的句柄。

创建失败，返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = CL:AvatarContainerCreate(_Parent, "ExampleAvatar", 140, 340, false) --创建模型容器
if _GUIHandle ~= 0 then
    dbg("创建的容器句柄为：".._GUIHandle)
end

--模型容器创建成功，控制台将会输出“创建的容器句柄为：963”（句柄值不一定和示例输出的相同，每次创建的句柄也不相同）。
下一篇:设置角色外观某个部件的大图标图片>
AvatarContainerSetBigIconData
设置角色外观某个部件的大图标图片

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-10-14 00:00:00
此函数设置角色外观某个部件的大图标图片。

语法
Luacopy 复制
CL:AvatarContainerSetBigIconData( 
    _HandleID,
    _AvatarType,
    _ItemBigIconID
)

参数
_HandleID

long

 
模型容器的句柄。

_AvatarType

int

 
外观类型。

0身体

1武器

2翅膀

3头发

4盾牌

_ItemBigIconID

unsigned int

 
大图标的图片资源ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码请参见如何解决装备内观显示偏移FAQ文档。
<上一篇:创建模型容器下一篇:设定模型容器的类型和道具>
AvatarContainerSetData
设定模型容器的类型和道具

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2024-12-24 00:00:00
此函设定模型容器的道具类型和相应的道具模板ID，以显示道具的图片资源。

根据道具模板ID，会显示工具后台所关联的大图标图片资源。例如下图：

BigIconSet

语法
Luacopy 复制
CL:AvatarContainerSetData( 
    _HandleID,
    _AvatarType,
    _ItemID
)

参数
_HandleID

long

 
模型容器的句柄。

_AvatarType

int

 
模型类型。

0身体

1武器

2翅膀

3头发

4盾牌

note_icon 备注
模型容器内部会自动计算默认的头发，故无需设置头发的相关参数。

_ItemID

int

 
道具的模板ID。

note_icon 备注
如身体未设置ItemID，则需要按以下方式传递默认值。

GUI:WndSetUserData(_HandleID,_WomanImageID,1) --设置女性默认外观图片

GUI:WndSetUserData(_HandleID,_ManImageID,0) --设置男性默认外观图片

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = CL:AvatarContainerCreate(_Parent, "ExampleAvatar",200, 50, false) --创建模型容器
if _GUIHandle ~= 0 then
    CL:AvatarContainerSetInfo(_GUIHandle,2,1) --设置模型的性别和职业
    CL:AvatarContainerSetData(_GUIHandle,0,1094) --设置身体
    CL:AvatarContainerSetData(_GUIHandle,2,26584) --设置翅膀
    CL:AvatarContainerSetData(_GUIHandle,4,1096) --设置盾牌
end

--模型容器创建成功，效果如下图。

AvatarContainerSetData
<上一篇:设置角色外观某个部件的大图标图片下一篇:设置模型的性别和职业>
AvatarContainerSetInfo
设置模型的性别和职业

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-11-26 00:00:00
此函数设置模型的性别和职业。

语法
Luacopy 复制
CL:AvatarContainerSetInfo( 
    _HandleID,
    _Gender,
    _Job
)

参数
_HandleID

long

 
模型容器的句柄。

_Gender

int

 
性别。

1男性

2女性

_Job

int

 
职业。

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
_GUIHandle = CL:AvatarContainerCreate(_Parent, "ExampleAvatar",200, 50, false) --创建模型容器
if _GUIHandle ~= 0 then
    CL:AvatarContainerSetInfo(_GUIHandle,2,1) --设置模型的性别和职业
    CL:AvatarContainerSetData(_GUIHandle,0,1094) --设置身体
    CL:AvatarContainerSetData(_GUIHandle,2,26584) --设置翅膀
    CL:AvatarContainerSetData(_GUIHandle,4,1096) --设置盾牌
end

--模型容器创建成功，效果如下图。

AvatarContainerSetData
<上一篇:设定模型容器的类型和道具下一篇:设置模型整体的缩放比>
AvatarContainerSetScale
设置模型整体的缩放比

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据模型容器句柄设置模型整体的缩放比。

语法
Luacopy 复制
CL:AvatarContainerSetScale(
    _HandleID,
    _Scale
)
参数
_HandleID

number

 
窗口句柄

点击窗口句柄了解更多信息。

_Scale

number

 
缩放比（百分比），1.0等于100%缩放

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]      
 _GUIHandle = CL:AvatarContainerCreate(_Parent, "Avatar", 200, 150, false)
if _GUIHandle ~= 0 then
    GUI:WndSetCanRevMsg(_GUIHandle, false)
    GUI:WndSetUserData(_GUIHandle, 1894600000, 0) --男裸模
    GUI:WndSetUserData(_GUIHandle, 1894500000, 1) --女
    CL:AvatarContainerSetScale(_GUIHandle, 0.5)
end

--此示例代码运行成功如下图所示。

AvatarContainerSetScale
<上一篇:设置模型的性别和职业下一篇:设定模型的翅膀缩放和偏移>
AvatarContainerSetWingData
设定模型的翅膀缩放和偏移

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设定模型的翅膀缩放和偏移。

语法
Luacopy 复制
CL:AvatarContainerSetWingData( 
    _HandleID,
    _Scale,
    _OffsetX,
    _OffsetY
)

参数
_HandleID

long

 
模型容器的句柄

_Scale

int

 
翅膀模型整体缩放比例

将要设置的倍数乘以10000即为设置值

例如：

5000翅膀模型宽度和高度均缩小至原始尺寸的一半大小

10000翅膀模型宽度和高度均为原始尺寸

20000翅膀模型宽度和高度均放大1倍，为原始尺寸的2倍大小

_OffsetX

int

 
翅膀模型的水平偏移量

_OffsetY

int

 
翅膀模型的垂直偏移量

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = CL:AvatarContainerCreate(_Parent, "ExampleAvatar",200, 50, false) --创建模型容器
if _GUIHandle ~= 0 then
    CL:AvatarContainerSetInfo(_GUIHandle,2,1) --设置模型的性别和职业
    CL:AvatarContainerSetData(_GUIHandle,0,1094) --设置身体
    CL:AvatarContainerSetData(_GUIHandle,2,26584) --设置翅膀
    CL:AvatarContainerSetWingData(_GUIHandle,20000,-100,-100) --设置翅膀缩放和偏移
    CL:AvatarContainerSetData(_GUIHandle,4,1096) --设置盾牌
end

--模型容器创建成功，效果如下图。

AvatarContainerSetData
<上一篇:设置模型整体的缩放比下一篇:设置翅膀的缩放比例>
SetAvatarWingTrasform
设置翅膀的缩放比例

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置翅膀的缩放比例。

语法
Luacopy 复制
CL:SetAvatarWingTrasform( 
    _AvatarID,
    _SizeX,
    _SizeY,
    _OffsetX,
    _OffsetY
)

参数
_AvatarID

int

 
翅膀的模型编号，为5位数字。

如端游45度美术资源展示区中，找到新美术资源展示NPC，可查看翅膀类型的资源，如11333。

WingAvatarID

_SizeX

int

 
翅膀模型宽度缩放比例

将要设置的倍数乘以10000即为设置值

例如：

5000翅膀模型宽度缩小至原始宽度的一半大小

10000翅膀模型宽度为原始宽度

20000翅膀模型宽度放大1倍，为原始宽度的2倍大小

_SizeY

int

 
翅膀模型高度缩放比例

将要设置的倍数乘以10000即为设置值

规则和_SizeX相同，不再赘述。

_OffsetX

int

 
翅膀模型的水平偏移量

_OffsetY

int

 
翅膀模型的垂直偏移量

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--请在45度美术资源展示区中，先将角色穿上相应的翅膀
CL:SetAvatarWingTrasform(11333,5000,5000,0,0)

--示例代码运行效果如下图。

SetAvatarWingTrasform
<上一篇:设定模型的翅膀缩放和偏移
AddMagicFromPointAToB
添加一个从A点运动到B点的特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-05-23 00:00:00
此函数作用是添加一个从A点运动到B点的特效。

note_icon 备注
此接口需要和特效模板表配合使用，且模板表内运动方式需设为线段运动传入的a，b坐标值仅代表发射点和目的点的实际位置，特效生成位置和目的位置的方式需在模板表内配置（如配置成发射点即使用a的值, 否则不是）参考特效配置（2D）。

caution_icon注意
模板表内各个参数方式均有其意义，请勿随意填入一个已存在的特效模板ID测试。

语法
Luacopy 复制
CL:AddMagicFromPointAToB(
    template_id,
    ax,
    ay,
    bx,
    by,
    anim_speed,
    life,
    move_speed
)
参数
template_id

int

 
特效模板ID

ax

int

 
a点x坐标（场景坐标）需要从逻辑格坐标转换，参考AddMagicToPoint。

ay

int

 
a点x坐标（场景坐标）需要从逻辑格坐标转换，参考AddMagicToPoint。

bx

int

 
a点x坐标（场景坐标）需要从逻辑格坐标转换，参考AddMagicToPoint。

by

int

 
a点x坐标（场景坐标）需要从逻辑格坐标转换，参考AddMagicToPoint。

anim_speed

int

 
特效播放单帧的间隔，比如：30ms，那一秒就是1000ms/30ms = 33帧数。

life

int

 
特效播放的时间

单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放时间）

move_speed

int

 
移动速度

单位为毫秒（ms）

note_icon 备注
3D的magic表没有控制速度的参数，会比2D多一个参数控制移动速度，此参数3D独有。

返回值
int

 
特效实体ID

0特效生成失败。

>0特效生成成功。

版本历史
v1.0

 
首次发布

 
v1.1

 
3D手游和3D端游新增参数move_speed

示例代码
Luacopy 复制
local x = 22 * CL:GetLogicGridWidth() + CL:GetLogicGridWidth() / 2
local y = 148 * CL:GetLogicGridHeight() + CL:GetLogicGridHeight() / 2
local x1 = 29 * CL:GetLogicGridWidth() + CL:GetLogicGridWidth() / 2
local y2 = 148 * CL:GetLogicGridHeight() + CL:GetLogicGridHeight() / 2
if CL:AddMagicFromPointAToB(301000578, x, y, x1, y2, 600, 5000) > 0 then
    dbg("成功")
else
    dbg("失败")
end

--此示例代码运行成功如下图所示，特效可按设定的帧率和速率播放，按直线运动。

AddMagicFromPointAToB.png
下一篇:在地图指定位置添加3D特效>
AddMagicToPointDir
在地图指定位置添加3D特效

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数在地图指定位置添加特效，并支持设置特效的旋转角度。

语法
Luacopy 复制
CL:AddMagicToPointDir(
    _MagicID,
    _X,
    _Y,
    _AniSpeed,
    _Life,
    _Angle
)
参数
_MagicID

int

 
特效ID（即Magic.xml文件中的Id字段的值）

note_icon 备注
Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

_X

int

 
特效在地图上的X坐标

_Y

int

 
特效在地图上的Y坐标

_AniSpeed

int

 
特效播放的倍速

0特效的原始播放速度（为默认值）

将要设置的倍数乘以1000即为设置值

例如：

500特效按照0.5倍速进行播放

1000特效按照1倍速进行播放

2000特效按照2倍速进行播放

_Life

int

 
特效播放的时间

单位为毫秒（ms），默认值为0（即使用Magic特效默认的播放时间）

_Angle

int

 
特效的旋转角度

范围为-360-360，默认值为0（即特效的默认旋转角度）

note_icon 备注
当旋转角度大于0时，代表向顺时针方向旋转；

当旋转角度小于0时，代表向逆时针方向旋转。

返回值
int

 
添加特效的实体ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:AddMagicToPointDir(60077, 305, 300, 10, 3000, 180)

--此示例代码运行成功如下图所示。

AddMagicToPointDir.gif
<上一篇:添加一个从A点运动到B点的特效下一篇:在地图指定位置添加特效>
AddMagicToPoint
在地图指定位置添加特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数在地图指定位置添加特效。

note_icon 备注
在2D客户端中，特效在地图上的坐标为场景坐标，需要将逻辑格坐标转化为场景坐标，具体转换方法见右侧示例代码。

语法
Luacopy 复制
CL:AddMagicToPoint( 
    _MagicID,
    _X,
    _Y,
    _AniSpeed,
    _Life
)

参数
_MagicID

int

 
特效ID

note_icon 备注
2D：

特效ID为Magic.xml文件中的ID字段的值

Magic.xml文件的官方存储路径如下：

手游：游戏主目录/res/Setting/Magic文件夹；

端游：游戏主目录/Setting/Magic文件夹。

Magic.xml文件的自定义存储路径如下：

手游：游戏主目录/res/extra/区ID/Setting/Magic文件夹；

端游：游戏主目录/extra/区ID/Setting/Magic文件夹。

3D：

特效ID为Magic.xml文件中的Id字段的值

Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

X

int

 
特效在地图上的X坐标

_Y

int

 
特效在地图上的Y坐标

_AniSpeed

int

 
2D客户端：特效播放一帧的时间间隔

单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放播放一帧的时间间隔）

3D客户端：特效播放的速度

0特效的原始播放速度（为默认值）

将要设置的倍数乘以1000即为设置值

例如：

500特效按照0.5倍速进行播放

1000特效按照1倍速进行播放

2000特效按照2倍速进行播放

_Life

int

 
特效播放的时间

单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放时间）

返回值
int

 
添加特效的实体ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将逻辑格坐标换为场景坐标
local x = 100 * CL:GetLogicGridWidth() +  CL:GetLogicGridWidth()/2
local y = 120 * CL:GetLogicGridHeight() + CL:GetLogicGridHeight()/2
CL:AddMagicToPoint(100000010,x,y,0,0) --在地图上的指定位置添加一个特效

--此示例代码运行成功如下图所示。

AddMagicToPoint_2.gif
<上一篇:在地图指定位置添加3D特效下一篇:为角色添加3D特效>
AddMagicToRole3D
为角色添加3D特效

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数为角色添加3D特效。

语法
Luacopy 复制
CL:AddMagicToRole3D( 
    _MagicID,
    _RoleGUID,
    _AniSpeed,
    _Life
)

参数
_MagicID

int

 
特效ID（即Magic.xml文件中的Id字段的值）

note_icon 备注
Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

_RoleGUID

string

 
角色的GUID

_AniSpeed

int

 
特效播放的倍速

0特效的原始播放速度（为默认值）

将要设置的倍数乘以1000即为设置值

例如：

500特效按照0.5倍速进行播放

1000特效按照1倍速进行播放

2000特效按照2倍速进行播放

_Life

int

 
特效播放的时间

单位为毫秒（ms），默认值为0（即使用Magic特效默认的播放时间）

返回值
int

 
添加特效的实体ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身的GUID
local magic_id = CL:AddMagicToRole3D(13,player_guid,1000,0) --为角色添加一个特效
dbg("特效的实体ID："..magic_id)

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

AddMagicToRole3D.gif

AddMagicToRole3D.png
<上一篇:在地图指定位置添加特效下一篇:为角色添加特效>
AddMagicToRole
为角色添加特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数为角色添加特效。

语法
Luacopy 复制
CL:AddMagicToRole( 
    _MagicID,
    _RoleGUID,
    _AniSpeed,
    _Life
)

参数
_MagicID

int

 
特效ID

note_icon 备注
2D：

特效ID为Magic.xml文件中的ID字段的值

Magic.xml文件的官方存储路径如下：

手游：游戏主目录/res/Setting/Magic文件夹；

端游：游戏主目录/Setting/Magic文件夹。

Magic.xml文件的自定义存储路径如下：

手游：游戏主目录/res/extra/区ID/Setting/Magic文件夹；

端游：游戏主目录/extra/区ID/Setting/Magic文件夹。

3D：

特效ID为Magic.xml文件中的Id字段的值

Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

_RoleGUID

string

 
角色的GUID

_AniSpeed

int

 
2D客户端：特效播放一帧的时间间隔

单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放播放一帧的时间间隔）

3D客户端：特效播放的速度

0特效的原始播放速度（为默认值）

将要设置的倍数乘以1000即为设置值

例如：

500特效按照0.5倍速进行播放

1000特效按照1倍速进行播放

2000特效按照2倍速进行播放

_Life

int

 
特效播放的时间

单位为毫秒（ms），默认值为0（即使用Magic特效的默认播放时间）

返回值
int

 
添加特效的实体ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身GUID
local magic_id = CL:AddMagicToRole(100000001,player_guid,100,2000) --为角色添加一个特效
dbg("特效的实体ID："..magic_id)

--特效的添加后的效果如下图，控制台将输出：“特效的实体ID：17”。

AddMagicToRole
<上一篇:为角色添加3D特效下一篇:设置鲜花飘落或定点播放>
BeginFlower
设置鲜花飘落或定点播放

手游 2Dnot_support 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-07-12 00:00:00
此函数设置鲜花特效飘落或定点播放。

在2D客户端中，鲜花特效支持飘落或者定点播放；在3D客户端中，鲜花特效仅支持飘落播放。

语法
Luacopy 复制
CL:BeginFlower( 
    _ImageID,
    _Param
)

参数
_ImageID

int

 
2D：特效图片资源开始的ID

3D：特效ID（固定填写 1087900000）

note_icon 备注
特效ID为Magic.xml文件中的Id字段的值

Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

_Param

string

 
2D：定点播放的字符串参数

参数中间使用#分隔，字符串中各个参数说明如下：

（1）特效类型（int）：固定为1；

（2）播放类型（int）：其余数值代表默认，2代表播放至最后一帧停止；

（3）定点播放的中心点的X坐标（int）；

（4）定点播放的中心点的Y坐标（int）；

（5）播放时长（int）：特效播放的时间，单位为毫秒（ms）；

（6）播放速度（int）：特效每一帧的间隔时间，单位为毫秒（ms）。

note_icon 备注
在2D客户端中，若此参数为空字符串（""），则鲜花特效会飘落播放。

3D：飘落播放的字符串参数

参数中间使用#分隔，字符串中各个参数说明如下：

（1）特效类型（int）：固定为2；

（2）单次发射数量（int）：单次发射的鲜花特效的数量；

（3）同屏最大数量（int）：同屏可显示的鲜花特效数量的最大值；

（4）发射持续时间（float），单位为秒（s）；

（5）单朵花持续时间最小值（float），单位为秒（s）；

（6）单朵花持续时间最大值（float），单位为秒（s）。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:BeginFlower(1087900000,"1#0#400#380#5000#100") --鲜花定点播放

--此示例代码成功创建了动画如下图所示。

BeginFlower
<上一篇:为角色添加特效下一篇:替换指定Magic编号>
ChangeMagicIdList
替换指定Magic编号

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-07-18 00:00:00
此函数替换指定Magic编号。

语法
Luacopy 复制
CL:ChangeMagicIdList( 
    _Str
)

参数
_Str

string

 
参数中间使用逗号分隔，格式："替换前编号1:替换后编号1,替换前编号2:替换后编号2,替换前编号3:替换后编号3"

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置鲜花飘落或定点播放下一篇:根据实体ID删除特效>
DelMagicByObjID
根据实体ID删除特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的实体ID删除特效。

语法
Luacopy 复制
CL:DelMagicByObjID( 
    _MagicObjID
)

参数
_MagicObjID

int

 
特效的实体ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = CL:GetPlayerSelfGUID()
local magicid = CL:AddMagicToRole(100000001,player_guid,100,2000)
dbg(""..magicid)
CL:DelMagicByObjID(magicid)

--代码运行后，可以看到生成了特效实体ID，但是无特效播放。
<上一篇:替换指定Magic编号下一篇:删除地图上的特效>
DelMagicFromPoint
删除地图上的特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数删除地图上某个坐标点的特效。

语法
Luacopy 复制
CL:DelMagicFromPoint( 
    _MagicID,
    _X,
    _Y
)

参数
_MagicID

int

 
特效ID

_X

int

 
地图上的X坐标。

_Y

int

 
地图上的Y坐标。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:DelMagicFromPoint(500000001,100,500)
<上一篇:根据实体ID删除特效下一篇:删除角色的特效>
DelMagicFromRole
删除角色的特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数删除角色身上的特效。

语法
Luacopy 复制
CL:DelMagicFromRole( 
    _MagicID,
    _RoleGUID
)

参数
_MagicID

int

 
特效的ID。

_RoleGUID

string

 
角色的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = CL:GetPlayerSelfGUID()
local magicid = CL:AddMagicToRole(100000001,player_guid,100,2000)
dbg(""..magicid)
CL:DelMagicFromRole(100000001,player_guid)

--代码运行后，可以看到生成了特效实体ID，但是无特效播放。
<上一篇:删除地图上的特效下一篇:设置指定类型的特效是否显示>
EnableEffect
设置指定类型的特效是否显示

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-09-19 00:00:00
此函数设置指定类型的特效是否显示。

语法
Luacopy 复制
CL:EnableEffect(
    _Type,
    _Flag
)
参数
_Type

int

 
指定特效类型

1场景特效

2技能特效

3受击特效

_Flag

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
CL:SetAFKInterval(15) --设置设备无操作后执行指定函数的间隔
--无操作，隐藏特效
function  AFKProcess()
    UI:Lua_ChatMsg("无操作，隐藏特效")
    CL:EnableEffect(1,false)    --场景特效
    CL:EnableEffect(2,false)    --技能特效
    CL:EnableEffect(3,false)    --受击特效
    CL:SetBrightness(0.5)  --设置场景亮度
    CL:OnShowHide()  --显示（或者隐藏）其他玩家
    for i = 1, 10 do    --设置游戏画质设置
        if CL:GetGraphicsQualitySetting(i) then  --记录原本的设置
            CL:SetPlayerCustomData("GraphicsQuality"..i,1)
            CL:SavePlayerCustomData()
        else
            CL:SetPlayerCustomData("GraphicsQuality"..i,0)
            CL:SavePlayerCustomData()    
        end
        CL:SetGraphicsQualitySetting(i, false)
    end  
end
--有操作，还原特效
function AFKResume()
    UI:Lua_ChatMsg("有操作，还原特效")
    CL:EnableEffect(1,true)    --场景特效
    CL:EnableEffect(2,true)    --技能特效
    CL:EnableEffect(3,true)    --受击特效
    CL:SetBrightness(1)  --设置场景亮度
    CL:OnShowHide()  --显示（或者隐藏）其他玩家
    for i = 1, 10 do    --设置游戏画质设置
        if CL:GetPlayerCustomData("GraphicsQuality"..i) == 1 then
            CL:SetGraphicsQualitySetting(i, true)  
        end
    end
end

--若15秒无触屏操作则会自动执行AFKProcess()函数，之后再点击滑动屏幕则会调用AFKResume()函数。
<上一篇:删除角色的特效下一篇:获取延时创建特效的属性>
GetDelayMagicPropByObjID
获取延时创建特效的属性

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的实体ID获取延时创建特效的属性。

特效可设置延迟的属性，可在工具后台，选择客户端资源→Setting，找到并双击Magic.xml来编辑。

下图中红框的配置参数即为延迟，单位为毫秒。

GetDelayMagicPropByObjID

note_icon 备注
该接口仅对延迟的特效有效，无延迟的特效属性获取请参见GetMagicEntityPropByObjID接口。

语法
Luacopy 复制
CL:GetDelayMagicPropByObjID( 
    _DelayMagicObjID,
    _PropType
)

参数
_DelayMagicObjID

int

 
延时特效的实体ID。

_PropType

int

 
属性类型：

1特效模板的ID。

3顶层父特效实体的ID。

4发射点和目的点坐标。

5发射者和目的者的GUID。

请点击延迟特效属性，以了解更多信息。

返回值
bool

 
true执行成功。

false执行失败。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

发射点和目的点坐标

LuaRet[0][1]目的点的X坐标；

LuaRet[0][2]目的点的Y坐标；

LuaRet[1][1]发射点的X坐标；

LuaRet[1][2]发射点的Y坐标。

发射者和目的者

LuaRet[0]发射者的GUID；

LuaRet[1]目的者的GUID。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身GUID
local magicId = CL:AddMagicToRole(200001035,player_guid,100,1000)--创建延迟特效
if CL:GetDelayMagicPropByObjID(magicId,1) then
    dbg("特效模板ID为："..LuaRet)
else
    dbg("获取失败")
end

--控制台将输出：“特效模板ID为：200001035”。
<上一篇:设置指定类型的特效是否显示下一篇:根据实体ID获取特效实体句柄>
GetMagicEntityHandleByObjID
根据实体ID获取特效实体句柄

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的实体ID获取该特效的实体句柄。

语法
Luacopy 复制
CL:GetMagicEntityHandleByObjID( 
    _MagicObjID
)

参数
_MagicObjID

int

 
特效的实体ID。

返回值
int

 
特效的实体句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身GUID
local magic_id = CL:AddMagicToRole(100000001,player_guid,100,2000) --创建特效，获取实体ID
dbg("特效的实体ID："..magic_id)

local magic_entity_handle = CL:GetMagicEntityHandleByObjID(magic_id) --获取特效实体句柄
dbg("特效的实体句柄："..magic_id)

--控制台将输出：
特效的实体ID：1
特效的实体句柄：1
<上一篇:获取延时创建特效的属性下一篇:根据实体句柄获取特效实体属性>
GetMagicEntityPropByHandle
根据实体句柄获取特效实体属性

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的实体句柄获取该特效的实体属性。

语法
Luacopy 复制
CL:GetMagicEntityPropByHandle( 
    _MagicEntityHandle,
    _PropType
)

参数
_MagicEntityHandle

int

 
特效的实体句柄。

_PropType

int

 
特效的实体属性类型。

请点击特效实体属性，以了解更多信息。

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
local player_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身GUID
local magic_id = CL:AddMagicToRole(100000001,player_guid,100,2000) --创建特效，获取实体ID
dbg("特效的实体ID："..magic_id)

local magic_entity_handle = CL:GetMagicEntityHandleByObjID(magic_id) --获取特效实体句柄
dbg("特效的实体句柄："..magic_id)

if CL:GetMagicEntityPropByHandle(magic_entity_handle, MAGIC_PROP_TEMPLATEID) then
    dbg("特效的模板ID："..LuaRet)
end

--控制台将输出：
特效的实体ID：1
特效的实体句柄：1
特效的模板ID：100000001
<上一篇:根据实体ID获取特效实体句柄下一篇:根据实体ID获取特效实体属性>
GetMagicEntityPropByObjID
根据实体ID获取特效实体属性

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的实体ID获取该特效的实体属性。

语法
Luacopy 复制
CL:GetMagicEntityPropByObjID( 
    _MagicObjID,
    _PropType
)

参数
_MagicObjID

int

 
特效的实体ID。

_PropType

int

 
特效的实体属性类型。

请点击特效实体属性，以了解更多信息。

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
local player_guid = CL:GetPlayerSelfGUID() --获取玩家角色自身GUID
local magic_id = CL:AddMagicToRole(100000001,player_guid,100,2000) --创建特效，获取实体ID
dbg("特效的实体ID："..magic_id)

if CL:GetMagicEntityPropByObjID(magic_id, MAGIC_PROP_TEMPLATEID) then --获取该特效的模板ID
    dbg("特效的模板ID："..LuaRet)
end

--控制台将输出：
特效的实体ID：1
特效的模板ID：100000001
<上一篇:根据实体句柄获取特效实体属性下一篇:根据ID获取特效模板句柄>
GetMagicTemplateHandleByID
根据ID获取特效模板句柄

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的ID获取该特效模板句柄。

语法
Luacopy 复制
CL:GetMagicTemplateHandleByID( 
    _ID
)

参数
_ID

int

 
特效的ID。

返回值
int

 
特效的模板句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local magic_temp_handle = CL:GetMagicTemplateHandleByID(100000001)
dbg("该特效的模板句柄是："..magic_temp_handle)

--控制台将输出：“该特效的模板句柄是：522869216”。
<上一篇:根据实体ID获取特效实体属性下一篇:根据模板名获取特效模板句柄>
GetMagicTemplateHandleByName
根据模板名获取特效模板句柄

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的模板名获取该特效模板句柄。

语法
Luacopy 复制
CL:GetMagicTemplateHandleByName( 
    _Name
)

参数
_Name

string

 
特效名。

返回值
int

 
特效的模板句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local magic_temp_handle = CL:GetMagicTemplateHandleByName("时空称号2")
dbg("该特效的模板句柄是："..magic_temp_handle)

--控制台将输出：“该特效的模板句柄是：522840896”。
<上一篇:根据ID获取特效模板句柄下一篇:根据句柄获取特效模板属性>
GetMagicTemplatePropByHandle
根据句柄获取特效模板属性

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的模板句柄获取该特效的模板属性。

语法
Luacopy 复制
CL:GetMagicTemplatePropByHandle( 
    _TemplateHandle,
    _PropType
)

参数
_TemplateHandle

int

 
特效的模板句柄。

_PropType

int

 
特效模板属性类型。

请点击特效模板属性，以了解更多信息。

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
local magic_temp_handle = CL:GetMagicTemplateHandleByName("时空称号2")
if CL:GetMagicTemplatePropByHandle(magic_temp_handle, eAniSpeed) then
    dbg("动画速度："..LuaRet)
end

--控制台将输出：“"动画速度：150”。
<上一篇:根据模板名获取特效模板句柄下一篇:根据ID获取特效模板属性>
GetMagicTemplatePropByID
根据ID获取特效模板属性

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数根据特效的模板ID获取该特效的模板属性。

语法
Luacopy 复制
CL:GetMagicTemplatePropByID( 
    _ID,
    _PropType
)

参数
_ID

int

 
特效的ID。

_PropType

int

 
物品的模板属性类型。

请点击特效模板属性，以了解更多信息。

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
if CL:GetMagicTemplatePropByID(100000001, eAniSpeed) then
    dbg("动画速度："..LuaRet)
end

--控制台将输出：“动画速度：80”。
<上一篇:根据句柄获取特效模板属性下一篇:设置玩家装备特效>
SetEquipMagic
设置玩家装备特效

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数设置玩家装备特效。

caution_icon 注意
程序已不再支持该函数，调用将无任何效果。

语法
Luacopy 复制
CL:SetEquipMagic(
    guid,
    part,
    magicid
)
参数
guid

ulong

 
玩家角色的GUID

part

int

 
部件类型

0身体(暂未生效)

1头盔(暂未生效)

2披风(暂未生效)

3武器

4坐骑(暂未生效)

5盾牌(暂未生效)

magicid

int

 
特效ID（即Magic.xml文件中的Id字段的值）

note_icon 备注
Magic.xml文件的官方存储路径为：游戏主目录/Resource3D/Setting文件夹。

Magic.xml文件的自定义存储路径为：游戏主目录/Resource3D/Extra/区ID/Setting文件夹。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetEquipMagic(CL:GetPlayerSelfGUID(), 3, 70061) --为玩家武器设置特效

--此示例代码运行成功如下图所示。

SetEquipMagic_2.png
<上一篇:根据ID获取特效模板属性
GetRockerRadiusDis
获取摇杆的最大操控半径

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取摇杆的最大操控半径。

此半径如下图中红色标示线的距离，为摇杆中心点到外部最远可摇动的点距离。

RockerRadiusDistance。

语法
Luacopy 复制
CL:GetRockerRadiusDis()

参数
无

 
返回值
int

 
最大操控半径，单位为像素（px）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
dbg("最大操控半径为："..CL:GetRockerRadiusDis().."px")
下一篇:获取摇杆控制走路的最大操控半径>
GetRockerWaklDis
获取摇杆控制走路的最大操控半径

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取摇杆控制角色走路的最大操控半径。

当摇杆操控至超出此半径范围外，则控制角色跑步。

语法
Luacopy 复制
CL:GetRockerWaklDis()

参数
无

 
返回值
int

 
控制角色走路的最大操控半径，单位为像素（px）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
dbg("控制角色走路的最大操控半径："..CL:GetRockerRadiusDis().."px")
<上一篇:获取摇杆的最大操控半径下一篇:设置双摇杆的可拖动半径>
SetDoubleRockerParam
设置双摇杆的可拖动半径

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-04-21 00:00:00
此函数设置双摇杆的可拖动半径。

如需设置单摇杆的可拖动半径，可使用接口CL:SetRockerParam进行设置。

语法
Luacopy 复制
CL:SetDoubleRockerParam(
    radius,
    radius2
)
参数
radius

int

 
摇杆1（对应RockerWin.lua脚本文件中配置的摇杆）的可拖动半径

默认值为50，单位为像素（px）。

radius2

int

 
摇杆2（对应RockerWin2.lua脚本文件中配置的摇杆）的可拖动半径

默认值为50，单位为像素（px）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetDoubleRockerParam(200,50)

--此示例代码运行成功如下图所示。

--第1个摇杆可拖动半径。

SetDoubleRockerParam.png

--第2个摇杆可拖动半径。

SetDoubleRockerParam_2.png
<上一篇:获取摇杆控制走路的最大操控半径下一篇:设置摇杆新配置模式的相关信息>
SetGamePadConfig
设置摇杆新配置模式的相关信息

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数设置摇杆新配置模式的相关信息。

在单摇杆模式下，摇杆可分为走路摇杆和跑步摇杆，两者之间可以通过走跑切换按钮来进行切换，如图1所示。

图 1 单摇杆模式

image_20230512115255.png
在双摇杆模式下，走路摇杆和跑步摇杆同时存在，如图2所示。

图 2 双摇杆模式

image_20230512115256.png
此接口仅对摇杆的新配置模式生效，即仅在GamePad.lua脚本文件中生效。具体请参见FAQ说明：如何开启手游摇杆的新配置模式。

语法
Luacopy 复制
CL:SetGamePadConfig(
    config
)
参数
config

string

 
摇杆新配置模式的相关信息（参考下方说明时建议结合右侧示例代码）

为JSON格式的字符串（可由Lua的table类型通过json.encode转换为JSON格式的字符串）

在配置JSON格式的字符串时，需要对单摇杆模式下的走路摇杆（single_walk）和跑步摇杆（single_run）以及双摇杆模式下的走路摇杆（twin_walk）和跑步摇杆（twin_run）分别进行配置，相关的控件名称和参数名称如下所示。

摇杆主要分为5个部分，对应控件名称如表1所示。

表 1 控件名称对应表

摇杆组成部分	控件名称	备注
摇杆本体	game_pad	
底盘背景	bg_base	
提示箭头	arrow_tip	
走跑提示	joystick_tip	
走跑切换按钮
button_mode	仅单摇杆模式下存在
表1中涉及的5个控件对应的图片资源、缩放比例、透明度均可进行配置，具体参数说明如表2所示。

表 2 控件配置参数说明

参数名称	描述
img_id	指定控件的图片资源ID
img_scale	图片资源的缩放比例
默认值为1.0（即100%），代表使用原始图片尺寸。
例如：
0.5代表图片资源缩小至原始尺寸的一半；
2.0代表图片资源放大至原始尺寸的2倍。
img_opacity	图片资源的透明度
透明度分为256个等级，其值介于0~255之间。
0表示全透明，255表示不透明。
同时还可以对摇杆整体（rect_config）进行配置，包括起始位置、响应范围等，具体参数说明如表3所示。

表 3 摇杆整体配置参数说明

参数名称	描述	备注
origin_x	摇杆默认状态（非点击状态）下的中心点位置的横坐标（以屏幕左下角为原点）
单位为像素（px）	
origin_y	摇杆默认状态（非点击状态）下的中心点位置的纵坐标（以屏幕左下角为原点）
单位为像素（px）	
enable_x	摇杆点击响应区域的起始位置的横坐标（以屏幕左下角为原点）
单位为像素（px）	
enable_y	摇杆点击响应区域的起始位置的纵坐标（以屏幕左下角为原点）
单位为像素（px）	
enable_w	摇杆点击响应区域的宽度（以屏幕左下角为原点）
单位为像素（px）	
enable_h	摇杆点击响应区域的高度（以屏幕左下角为原点）
单位为像素（px）	
drag_start	摇杆滑块拖动起始生效半径的长度（即拖动超过此半径长度才会生效）
单位为像素（px）	
drag_radius	摇杆滑块拖动可拖动的最大半径长度
单位为像素（px）	
button_mode_pos_x	走跑切换按钮位置的横坐标（以屏幕左下角为原点）
单位为像素（px）	此参数仅适用于单摇杆模式。
button_mode_pos_y	走跑切换按钮位置的纵坐标（以屏幕左下角为原点）
单位为像素（px）	此参数仅适用于单摇杆模式。
debug_mode	是否开启调试模式
调试模式下，程序将框线显示单摇杆或双摇杆的响应范围。
是（true）
否（false）	
move_cancel_auto_attack	是否在移动摇杆后立即取消自动战斗状态
是（true）
否（false）	
move_cancel_auto_pickup	是否在移动摇杆后立即取消自动拾取
是（true）
否（false）	
返回值
bool

 
true配置成功

false配置失败

note_icon 备注
若配置失败，则会将失败信息存储在全局变量LuaRet中（例如：某个控件中的某个参数类型填写错误）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GamePad = {}
local _DeviceSizeX = CL:GetScreenWidth()
local _DeviceSizeY = CL:GetScreenHeight()
function GamePad.main()
    local _Parent = LuaGlobal["AttachPartent"]

    local _HandleOldRockerTypeBG = GUI:WndFindWindow(0,"GameMainInterface,GameMainBar,Rocker_typeBG")
    if _HandleOldRockerTypeBG ~= 0 then
        GUI:WndClose(_HandleOldRockerTypeBG) --避免老版本的走跑切换背景干扰（根据实际情况判断是否需要此步骤）
    end

    local _HandleOldRockerType = GUI:WndFindWindow(0,"GameMainInterface,GameMainBar,Rocker_type")
    if _HandleOldRockerType ~= 0 then
        GUI:WndClose(_HandleOldRockerType) --避免老版本的走跑切换干扰（根据实际情况判断是否需要此步骤）
    end

    local t = {
        single_walk={ --单摇杆-走
            button_mode={--走跑切换按钮
                --图片id，缩放倍数，透明度（0-255）
                img_id=1942000027, img_scale=1.0, img_opacity=255
            },
            bg_base={--背景底盘
                img_id=1942000034, img_scale=1.0, img_opacity=255
            },
            game_pad={--摇杆
                img_id=1942000008, img_scale=0.9, img_opacity=180
            },
            joystick_tip={--走跑提醒
                img_id=1942000010, img_scale=1.1, img_opacity=180
            },
            arrow_tip={--箭头提醒
                img_id=1942000035, img_scale=1.4, img_opacity=255
            },
            rect_config={--origin摇杆默认状态的起始位置，enable响应区域，drag_start拖动开始有效半径，drag_radius拖动最大半径(默认不填，值为bg图片的一半)，走跑切换按钮位置(左下角为原点)
                origin_x=170, origin_y=175, enable_x=0, enable_y=35, enable_w=290, enable_h=335, drag_start=7, drag_radius=90, button_mode_pos_x=5, button_mode_pos_y=35, debug_mode=false, move_cancel_auto_attack=false
            }
        },
        single_run={--单摇杆-跑
            button_mode={--走跑切换按钮
                img_id=1942000028, img_scale=1.0, img_opacity=255
            },
            bg_base={--背景底盘
                img_id=1942000034, img_scale=1.0, img_opacity=255
            },
            game_pad={--摇杆
                img_id=1942000008, img_scale=0.9, img_opacity=180
            },
            joystick_tip={--走跑提醒
                img_id=1942000009, img_scale=1.0, img_opacity=180
            },
            arrow_tip={--箭头提醒
                img_id=1942000035, img_scale=1.4, img_opacity=255
            },
            rect_config={--origin摇杆默认状态的起始位置，enable响应区域，drag_start拖动开始有效半径，drag_radius拖动最大半径
                origin_x=170, origin_y=175, enable_x=0, enable_y=35, enable_w=290, enable_h=335, drag_start=7, drag_radius=90, button_mode_pos_x=5, button_mode_pos_y=35, debug_mode=false, move_cancel_auto_attack=false
            }
        },
        twin_walk ={--双摇杆-走
            bg_base={--背景底盘
                img_id=1942000034, img_scale=0.8, img_opacity=255
            },
            game_pad={--摇杆
                img_id=1942000008, img_scale=0.75, img_opacity=180
            },
            joystick_tip={--走跑提醒
                img_id=1942000010, img_scale=1.0, img_opacity=180
            },
            arrow_tip={--箭头提醒
                img_id=1942000035, img_scale=1.4, img_opacity=255
            },
            rect_config={--origin摇杆默认状态的起始位置，enable响应区域，drag_start拖动开始有效半径，drag_radius拖动最大半径
                origin_x=105, origin_y=115, enable_x=0, enable_y=35, enable_w=166, enable_h=184, drag_start=7, drag_radius=90, debug_mode=false, move_cancel_auto_attack=false
            }
        },
        twin_run ={--双摇杆-跑
            bg_base={--背景底盘
                img_id=1942000034, img_scale=1.0, img_opacity=255
            },
            game_pad={--摇杆
                img_id=1942000008, img_scale=0.95, img_opacity=180
            },
            joystick_tip={--走跑提醒
                img_id=1942000009, img_scale=1.0, img_opacity=180
            },
            arrow_tip={--箭头提醒
                img_id=1942000035, img_scale=1.4, img_opacity=255
            },
            rect_config={--origin摇杆默认状态的起始位置，enable响应区域，drag_start拖动开始有效半径，drag_radius拖动最大半径
                origin_x=225, origin_y=235, enable_x=0, enable_y=35, enable_w=370, enable_h=370, drag_start=7, drag_radius=90, debug_mode=false, move_cancel_auto_attack=false
            }
        }
    }
    for k,v in pairs(t) do 
        t[k].rect_config.origin_x = t[k].rect_config.origin_x * (_DeviceSizeX/1280)
        t[k].rect_config.enable_w = t[k].rect_config.enable_w * (_DeviceSizeX/1280)
    end
    if CL:SetGamePadConfig(json.encode(t)) == false then
        dbg("err:"..LuaRet)
    end


    GamePad.UIInit(_Parent)
end

--UI Logic Code Start
function GamePad.UIInit(_Handle)

end
GamePad.main()
<上一篇:设置双摇杆的可拖动半径下一篇:设置摇杆的响应范围>
SetMoveRockerSize
设置摇杆的响应范围

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置摇杆的响应范围。

点击在此范围内，程序将响应摇杆的操控。

caution_icon 注意
设置仅对摇杆设置为非固定位置模式生效。

语法
Luacopy 复制
CL:SetMoveRockerSize( 
    _Width,
    _Height
)

参数
_Width

int

 
宽度范围。单位为像素（px）。

_Height

int

 
高度范围。单位为像素（px）。

note_icon 备注
默认的原点位置为(0, 25)。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMoveRockerSize(100,100)

--设置后，摇杆的响应区域为下图绿色框区域。

SetMoveRockerSize
<上一篇:设置摇杆新配置模式的相关信息下一篇:设置单摇杆的可拖动半径>
SetRockerParam
设置单摇杆的可拖动半径

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2023-04-21 00:00:00
此函数设置手游摇杆的走路和跑步控制范围及最大的控制范围。

如需设置双摇杆的可拖动半径，可使用接口CL:SetDoubleRockerParam进行设置。

语法
Luacopy 复制
CL:SetRockerParam( 
    _WalkDis,
    _RockRadius
)

参数
_WalkDis

int

 
走路范围（配置值需要大于10）

默认值为100（即摇杆滑块在10-100像素以内为走路，超过100像素为跑步），单位为像素（px）。

_RockRadius

int

 
最大范围（摇杆滑块最大的有效操控范围）

默认值为110，单位为像素（px）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetRockerParam(100, 200) --设置摇杆灵敏度中走路范围100像素，摇杆有效移动最大范围200像素
<上一篇:设置摇杆的响应范围下一篇:设置走路摇杆的默认透明度>
UpdateRockerWnd2Alpha
设置走路摇杆的默认透明度

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置双摇杆模式下走路摇杆的默认透明度。

仅在固定摇杆方式下生效。

语法
Luacopy 复制
CL:UpdateRockerWnd2Alpha( 
    _Alpha
)

参数
_Alpha

int

 
透明度

范围为0（全透明）~100（不透明）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:UpdateRockerWnd2Rect(0, 0, 170, 170) --设置走路摇杆的响应起始点和范围
CL:UpdateRockerWnd2Alpha(100) --设置走路摇杆的默认透明度为100

--此示例代码运行成功如下图所示。

UpdateRockerWnd2Rect.png
<上一篇:设置单摇杆的可拖动半径下一篇:设置走路摇杆的响应起始点和范围>
UpdateRockerWnd2Rect
设置走路摇杆的响应起始点和范围

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置双摇杆模式下走路摇杆的响应起始点和范围。

note_icon 备注
此接口仅在全局变量UseNewRockerPosCheck设置为true时生效。

若设置摇杆响应的的起始点的坐标为（100，100），响应范围（矩形）的宽为400px、高为100px，则摇杆的相应区域如下图绿色框区域所示。

UpdateRockerWndRect
语法
Luacopy 复制
CL:UpdateRockerWnd2Rect( 
    _OriX,
    _OriY,
    _Width,
    _Height
)

参数
_OriX

int

 
摇杆响应范围的起始点的X坐标

以屏幕左下角为原点

_OriY

int

 
摇杆响应范围的起始点的Y坐标

以屏幕左下角为原点

_Width

int

 
摇杆响应范围（矩形）的宽

单位为像素（px）

_Height

int

 
摇杆响应范围（矩形）的高

单位为像素（px）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:UpdateRockerWnd2Rect(0, 0, 170, 170) --设置走路摇杆的响应起始点和范围
CL:UpdateRockerWnd2Alpha(100) --设置走路摇杆的默认透明度为100

--此示例代码运行成功如下图所示。

UpdateRockerWnd2Rect.png
<上一篇:设置走路摇杆的默认透明度下一篇:设置跑步摇杆的默认透明度>
UpdateRockerWndAlpha
设置跑步摇杆的默认透明度

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置双摇杆模式下跑步摇杆的默认透明度。

仅对固定摇杆方式生效。

您也可以通过此接口设置单摇杆模式下摇杆的默认透明度。

语法
Luacopy 复制
CL:UpdateRockerWndAlpha( 
    _Alpha
)

参数
_Alpha

int

 
透明度

范围为0（全透明）~100（不透明）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:UpdateRockerWndAlpha(0) --设置摇杆的默认透明度为0
<上一篇:设置走路摇杆的响应起始点和范围下一篇:设置跑步摇杆的响应起始点和范围>
UpdateRockerWndRect
设置跑步摇杆的响应起始点和范围

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置双摇杆模式下跑步摇杆的响应起始点和范围。

您也可以通过此接口设置单摇杆模式下摇杆的响应边界和范围。

note_icon 备注
在双摇杆模式下，此接口仅在全局变量UseNewRockerPosCheck设置为true时生效。

若设置摇杆响应的的起始点的坐标为（100，100），响应范围（矩形）的宽为400px、高为100px，则摇杆的相应区域如下图绿色框区域所示。

UpdateRockerWndRect
语法
Luacopy 复制
CL:UpdateRockerWndRect( 
    _OriX,
    _OriY,
    _Width,
    _Height
)

参数
_OriX

int

 
摇杆响应范围的起始点的X坐标

以屏幕左下角为原点

_OriY

int

 
摇杆响应范围的起始点的Y坐标

以屏幕左下角为原点

_Width

int

 
摇杆响应范围（矩形）的宽

单位为像素（px）

_Height

int

 
摇杆响应范围（矩形）的高

单位为像素（px）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:UpdateRockerWndRect(100,100,400,100)

--设置后，摇杆的响应区域为下图绿色框区域。

UpdateRockerWndRect
<上一篇:设置跑步摇杆的默认透明度
AttachmentMail
收取邮件的附件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数收取指定邮件中的附件。

语法
Luacopy 复制
CL:AttachmentMail( 
    _Guid,
    _Index
)

参数
_Guid

string

 
邮件的GUID。

_Index

int

 
附件索引。

1金币

2元宝

3~7物品（最多允许添附5个物品）

8积分

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下为领取物品的示例
for i = 1, 5 do
    local freeSiteIdx = CL:PlayerGetPakageFreeSiteIdx() --获取背包中第一个没有物品的位置 
    if -1 ~= freeSiteIdx then
        CL:AttachmentMail(MailListWnd.list_[index][1], i + 2) --"MailListWnd.list_[index][1]"为邮件的GUID，请参考官方演示服务区脚本MailListWnd.lua。
    else
        UI:Lua_ShowTypeMsg(4, "[背包已满]")
        break
    end
end
下一篇:删除邮件>
DeleteMail
删除邮件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数删除指定的邮件。

语法
Luacopy 复制
CL:DeleteMail( 
    _Guid
)

参数
_Guid

string

 
邮件的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:收取邮件的附件下一篇:打开邮件>
OpenMail
打开邮件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数打开指定的邮件，同时将其标记为已读状态。

语法
Luacopy 复制
CL:OpenMail( 
    _Guid
)

参数
_Guid

string

 
邮件的GUID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:删除邮件下一篇:触发邮件列表更新请求>
UpdateMailList
触发邮件列表更新请求

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2024-12-10 00:00:00
此函数功能是触发邮件列表更新请求。

note_icon 备注
此接口不会打开邮件窗口界面，会触发邮件列表事件LUA_EVENT_MAILLIST

caution_icon注意
禁止频繁调用该接口。

语法
Luacopy 复制
CL:UpdateMailList()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--GameMainBar.lua脚本中
RegisterUIEvent(LUA_EVENT_MAILLIST, "邮件列表", GameMainBar.MailList)

CL:UpdateMailList()

function GameMainBar.MailList()
    dbg(serialize(LuaParam[1]))
end

--邮件列表界面如下图所示。

UpdateMailList.png

--此示例代码运行成功如下图所示。

UpdateMailList_2.png
<上一篇:打开邮件
GetJumpServerList
获取跨服列表信息

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取跨服列表信息。如无法获取跨服信息，说明当前还无法跨服。

caution_icon 注意
如未获取到跨服服务器信息，不能让玩家做跨服操作，否则会出现玩家跨服成功但是登录不成功的情况。

语法
Luacopy 复制
CL:GetJumpServerList()

参数
无

 
返回值
int

 
跨服服务器的数量。

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的信息存储在全局变量LuaRet中。

i为服务器序号。

LuaRet[i][1]跨服服务器的区ID；

LuaRet[i][2]跨服服务器的区名。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--获取跨服列表
lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.jumpServer()")
function GameMainBar.jumpServer()
    local tab = {}
    if CL:GetJumpServerList() then
        tab = LuaRet
    end
    UI:Lua_SubmitForm("跨服表单”,"jumpServer",serialize(tab))
end
CreateMOBAChara
创建MOBA角色

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数创建MOBA角色。

语法
Luacopy 复制
CL:CreateMOBAChara(
    _Name,
    _Tag,
    _CallBack
)
参数
_Name

string

 
名字

_Tag

string

 
此参数无效

_CallBack

string

 
此参数无效

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby={}

local _Parent = LuaGlobal["AttachPartent"]       
_GUIHandle = GUI:EditCreate(_Parent , "InputTitle", 219, 15, 360, 35)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, true)
    GUI:EditSetCanEdit(_GUIHandle, true)
    GUI:EditSetTextM(_GUIHandle, "请输入一个昵称")
    MOBASelectRole.InputText = _GUIHandle
end

local name = GUI:EditGetTextM(MOBASelectRole.InputText)--玩家昵称
CL:CreateMOBAChara(name,"SelectRole", "MOBASelectRole.GetRoleList") --后两个参数无效
--回调
function MOBASelectRole.GetRoleList()
    MOBASelectRole.RoleList = LuaParam[1]
    dbg("GetRoleList")
end

--此示例代码运行成功如下图所示。

CreateMOBAChara1

CreateMOBAChara2
下一篇:创建MOBA房间>
CreateMOBARoom
创建MOBA房间

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数请求创建MOBA房间。

创建MOBA房间执行后，可通过MOBARoom.EnterRoomUpdate方法更新房员列表，返回的信息存储在全局变量LuaParam中。

i为房间成员的序号。

LuaParam[1][i][1]string玩家昵称

LuaParam[1][i][2]int玩家阵营 1red，2blue

LuaParam[1][i][3]int角色职业 1战士，2法师，3术士

LuaParam[1][i][4]int玩家位置 0第一个位置

LuaParam[1][i][5]int是否是房主 1房主，0不是房主

LuaParam[1][i][6]string玩家GUID

LuaParam[1][i][7]int是否准备完成 1完成，0没有完成

语法
Luacopy 复制
CL:CreateMOBARoom(
    _RoomName,
    _MapID,
    _VS_Mode,
    _VS_Num,
    _PWD,
    _Tag,
    _CallBack
)
参数
_RoomName

string

 
房间名字

_MapID

int

 
地图编号

_VS_Mode

int

 
对战模式

05v5

110v10

_VS_Num

int

 
对战各方的最大人数

_PWD

string

 
密码

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

 
若房间创建成功，则返回房号（类型：int）存储在全局变量LuaParam中。

若房间创建失败，则为0。

LuaParam[1]房号

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby={}

MOBALobby.MapID = {3,2,2,2}--5v5,10v10，攻城，战场
function MOBALobby.main()
    local _Parent = LuaGlobal["AttachPartent"]
    --密码输入框
    _GUIHandle = GUI:EditCreate(_Parent, "PassWordInputBox", 712 , 648 , 360, 64)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, true)
        GUI:EditSetCanEdit(_GUIHandle, true)
        MOBALobby.RoomPWText = _GUIHandle
    end
end

local _Mode = 1 --对战模式 对应是5v5模式还是攻城模式（目前只开放了这两种模式）
local _VS_num = 5  --应该对应的是对战人数
local _PW = GUI:EditGetTextM(MOBALobby.RoomPWText)  --密码

CL:CreateMOBARoom("房间名字",MOBALobby.MapID[MOBALobby.VSModeSelected],_Mode,_VS_num,_PW,"MOBALobby", "MOBALobby.EnterCreateRoom")

--回调函数
function MOBALobby.EnterCreateRoom()
    if LuaParam[1] == 0 then
        --==0则创建失败
        return  
    end
    dbg("room number :".. LuaParam[1])
end

--此示例代码运行成功如下图所示。

CreateMOBARoom1

CreateMOBARoom2
<上一篇:创建MOBA角色
SetCommonAttacType
设置普攻的攻击目标优先级

更新时间：2021-09-07 00:00:00
此函数设置普攻的攻击目标优先级。

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

note_icon 备注
目前仅对MOBA模式有效。

语法
Luacopy 复制
CL:SetCommonAttacType(
    _TargetType
)
参数
_TargetType

string

 
攻击类型

1锁定目标

2英雄

3怪物

将攻击类型组合成字符串以“|”分割作为参数

例如："1|2"， 表示首先攻击锁定目标，如果无锁定目标再攻击附近的英雄。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ActivateMOBAMode(true) --激活MOBA模式
CL:SetCommonAttacType("3|1|2") --设置普攻的攻击目标优先级

--此示例代码运行成功如下图所示。


下一篇:设置MOBA的版号说明>
SetMOBAAuthorText
设置MOBA的版号说明

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置MOBA的版号说明。

语法
Luacopy 复制
CL:SetMOBAAuthorText(
    _Text
)
参数
_Text

string

 
说明文字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMOBAAuthorText("说明文字")
<上一篇:设置普攻的攻击目标优先级下一篇:设置MOBA模式下可选中的目标类型>
SetMOBAClickSceneObjectType
设置MOBA模式下可选中的目标类型

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置MOBA模式下，场景中可选中的目标类型。

语法
Luacopy 复制
CL:SetMOBAClickSceneObjectType(
    _Value
)
参数
_Value

int

 
目标类型

0所有都不可选中

1可以点击地面

2可以选中NPC

4可以选中怪物

8可以选中角色

支持同时选择多个目标类型，传入值等于各类型数字做加法运算后的值。例如，同时可选中怪物和角色，则传入值为12。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMOBAClickSceneObjectType(1) --设置可以点击地面

--此示例代码运行成功如下图所示。

SetMOBAClickSceneObjectType
<上一篇:设置MOBA的版号说明下一篇:设置MOBA加载界面的文字>
SetMOBALoadingText
设置MOBA加载界面的文字

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置MOBA加载界面的文字。

语法
Luacopy 复制
CL:SetMOBALoadingText(
    _Index,
    _Text
)
参数
_Index

int

 
1加载的文件数之前的文字

2百分比之前的文字

_Text

string

 
显示的文字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMOBALoadingText(1,"正在下载资源文件")
CL:SetMOBALoadingText(2,"正在加载配置文件, 此过程不消耗流量")
<上一篇:设置MOBA模式下可选中的目标类型下一篇:设置MOBA副房主>
SetMOBARoomViceHostAck
设置MOBA副房主

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置MOBA副房主。

语法
Luacopy 复制
CL:SetMOBARoomViceHostAck(
    _UserID,
    _Tag,
    _CallBack
)
参数
_UserID

string

 
玩家GUID

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--通过CL：GetMobaRoomMemberList获得房间成员列表信息 MOBALobby.RoomMemberList
CL:SetMOBARoomViceHostAck(MOBALobby.RoomMemberList1][6],"MOBALobby", "MOBARoom.SetViceHost")
--设置房间第一个玩家为副房主
function MOBARoom.SetViceHost()
   dbg("SetViceHost")
end

--此示例代码运行成功如下图所示。

SetMOBARoomViceHostAck
<上一篇:设置MOBA加载界面的文字下一篇:设置MOBA选角界面的皮肤>
SetMOBASelectCharaSkin
设置MOBA选角界面的皮肤

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数设置MOBA选角界面的皮肤。

语法
Luacopy 复制
CL:SetMOBASelectCharaSkin(
    _UserID,
    _Skin,
    _Job,
    _Gender
)
参数
_UserID

string

 
玩家GUID

_Skin

int

 
皮肤编号

从左往右皮肤编号从1开始。

_Job

int

 
职业

1战士

2法师

3术士

_Gender

int

 
性别

1男

2女

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetMOBASelectCharaInfo()
MOBARoom.SelectSkin = LuaRet[1]
MOBARoom.SelectGender = LuaRet[2]
MOBARoom.SelectCharaJob = LuaRet[3]
UI:Lua_SubmitForm("对战选择角色表单", "selectRole", ""..MOBARoom.SelectSkin..”#”..MOBARoom.SelectGender..”#”..MOBARoom.SelectCharaJob)

--在服务器脚本 对战选择角色表单.lua 文件中：
function selectRole(player,param,,gender,job)
    local playerGuid = lualib:Guid2Number(player)
    lualib:ShowFormWithContent(player,"脚本表单","CL:SetMOBASelectCharaSkin(\""..playerGuid.."\","..param..","..job..","..gender..")")
end

--此示例代码运行成功如下图所示。


<上一篇:设置MOBA副房主下一篇:设置MOBA模式下是否显示游戏场景>
SetMOBAShowGameScene
设置MOBA模式下是否显示游戏场景

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置MOBA模式下是否显示游戏场景。

语法
Luacopy 复制
CL:SetMOBAShowGameScene(
    _Value
)
参数
_Value

bool

 
是否显示游戏场景

true显示

false不显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ActivateMOBAMode(true) 
CL:SetMOBAShowGameScene(true) --只能在出生地图生效
<上一篇:设置MOBA选角界面的皮肤下一篇:设置对战模式>
SetMOBAVSMode
设置对战模式

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置对战模式。

语法
Luacopy 复制
CL:SetMOBAVSMode(
    _Mode
)
参数
_Mode

int

 
对战模式

05v5

110v10

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetMOBAVSMode(0)--设置对战模式5v5

--此示例代码运行成功如下图所示。

SetMOBAVSMode
<上一篇:设置MOBA模式下是否显示游戏场景下一篇:设置技能的攻击目标优先级>
SetSkillAttacType
设置技能的攻击目标优先级

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置技能的攻击目标优先级。

note_icon 备注
目前仅对MOBA模式有效。

语法
Luacopy 复制
CL:SetSkillAttacType(
    _TargetType
)
参数
_TargetType

string

 
攻击类型

1锁定目标

2英雄

3怪物

将攻击类型组合成字符串以“|”分割作为参数

例如："1|2"， 表示首先攻击锁定目标，如果无锁定目标再攻击附近的英雄。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetSkillAttacType("3|1|2") --优先攻击怪物
<上一篇:设置对战模式
GetMOBABlackList
获取MOBA黑名单

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取MOBA房间中的黑名单。

语法
Luacopy 复制
CL:GetMOBABlackList()
参数
无

返回值
此函数无返回值。

 
若操作成功，则返回的黑名单信息存储在全局变量LuaRet中。

LuaRet[1][1]int头像编号

LuaRet[1][2]intVIP等级

LuaRet[1][3]int在线状态

LuaRet[1][4]string名字

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBAFriend = {}
CL:GetMOBABlackList()
MOBAFriend.PlayerList = LuaRet
dbg("MOBAFriend.PlayerList[1][1]:"..MOBAFriend.PlayerList[1][1])
dbg("MOBAFriend.PlayerList[1][2]:"..MOBAFriend.PlayerList[1][2])
dbg("MOBAFriend.PlayerList[1][3]:"..MOBAFriend.PlayerList[1][3])
dbg("MOBAFriend.PlayerList[1][4]:"..MOBAFriend.PlayerList[1][4])

--此示例代码运行成功如下图所示。

GetMOBABlackList
下一篇:获取MOBA好友列表>
GetMOBAFriendList
获取MOBA好友列表

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取MOBA好友列表。

语法
Luacopy 复制
CL:GetMOBAFriendList()
参数
无

返回值
此函数无返回值。

 
若操作成功，则返回MOBA好友信息存储在全局变量LuaRet中。

LuaRet[1][1]int好友头像编号

LuaRet[1][2]int好友VIP等级

LuaRet[1][3]int好友在线状态

LuaRet[1][4]string好友名字

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobbyChatWindow = {}       
CL:GetMOBAFriendList()
MOBALobbyChatWindow.FriendList = LuaRet

dbg("MOBALobbyChatWindow.FriendList[1][3]:"..MOBALobbyChatWindow.FriendList[1][3]) --玩家在线状态

--此示例代码运行成功如下图所示。

GetMOBAFriendList
<上一篇:获取MOBA黑名单下一篇:获取MOBA玩家自己的角色信息>
GetMOBAPlayerSelfInfo
获取MOBA玩家自己的角色信息

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取MOBA玩家自己的角色信息。

语法
Luacopy 复制
CL:GetMOBAPlayerSelfInfo()
参数
无

返回值
此函数没有返回值。

 
如操作成功，返回MOBA玩家自己的角色信息（类型：string）存储在全局变量LuaRet中。

LuaRet[1]GUID

LuaRet[2]头像

LuaRet[3]等级

LuaRet[4]名字

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby= {}   
CL:GetMOBAPlayerSelfInfo()
MOBALobby.PlayerGUID = LuaRet[1] --guid
MOBALobby.PlayerName = LuaRet[4] --名字
local _PlayerLevel = LuaRet[3] --等级
dbg("MOBALobby.PlayerName:"..MOBALobby.PlayerName)

--此示例代码运行成功如下图所示。

GetMOBAPlayerSelfInfo
<上一篇:获取MOBA好友列表下一篇:获取MOBA房间列表>
GetMOBARoomList
获取MOBA房间列表

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数请求获取MOBA房间列表。

语法
Luacopy 复制
CL:GetMOBARoomList(
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

 
若执行成功，则返回房间列表存储在全局变量LuaParam中。

i为房间的序号。

LuaParam[1][i][1]int房号

LuaParam[1][i][2]string房间名字

LuaParam[1][i][3]int房间的最大人数

LuaParam[1][i][4]int当前人数

LuaParam[1][i][5]int房间状态 1准备，2游戏中，3游戏结束

LuaParam[1][i][6]int1有密码，0无密码

LuaParam[1][i][7]int地图id

LuaParam[1][i][8]int房间模式 05v5，110v10

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby={}

CL:GetMOBARoomList("MOBALobby", "MOBALobby.GetRoomList")

--回调函数
function MOBALobby.GetRoomList()
    --获取房间列表信息
    MOBALobby.RoomList= LuaParam[1] 
    for i=1, #MOBALobby.RoomList do
        dbg ("MOBALobby.RoomList["..i.."][1]:"..MOBALobby.RoomList[i][1])
        dbg ("MOBALobby.RoomList["..i.."][2]:"..MOBALobby.RoomList[i][2])
        dbg ("MOBALobby.RoomList["..i.."][3]:"..MOBALobby.RoomList[i][3])
        dbg ("MOBALobby.RoomList["..i.."][4]:"..MOBALobby.RoomList[i][4])
        dbg ("MOBALobby.RoomList["..i.."][5]:"..MOBALobby.RoomList[i][5])
        dbg ("MOBALobby.RoomList["..i.."][6]:"..MOBALobby.RoomList[i][6])
        dbg ("MOBALobby.RoomList["..i.."][7]:"..MOBALobby.RoomList[i][7])
        dbg ("MOBALobby.RoomList["..i.."][8]:"..MOBALobby.RoomList[i][8])
    end
end

--此示例代码运行成功如下图所示。

GetMOBARoomList
<上一篇:获取MOBA玩家自己的角色信息下一篇:获取MOBA选中角色信息>
GetMOBASelectCharaInfo
获取MOBA选中角色信息

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取MOBA选中角色信息。

语法
Luacopy 复制
CL:GetMOBASelectCharaInfo()
参数
无

返回值
此函数没有返回值。

 
若操作成功，则返回MOBA选中角色信息（类型：string）存储在全局变量LuaRet中。

LuaRet[1]皮肤标号

LuaRet[2]性别

LuaRet[3]职业

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBARoom = {}    
CL:GetMOBASelectCharaInfo()
MOBARoom.SelectSkin = LuaRet[1] --皮肤标号
MOBARoom.SelectGender = LuaRet[2] --性别
MOBARoom.SelectCharaJob = LuaRet[3] --职业

--此示例代码运行成功如下图所示。

GetMOBASelectCharaInfo
<上一篇:获取MOBA房间列表下一篇:获取MOBA房间成员列表>
GetMobaRoomMemberList
获取MOBA房间成员列表

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数请求获取MOBA房间成员列表。

语法
Luacopy 复制
CL:GetMobaRoomMemberList(
    _RoomID,
    _Tag,
    _CallBack
)
参数
_RoomID

int

 
房号

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

 
若执行成功，则返回房间成员列表存储在全局变量LuaParam中。

i为房间成员的序号。

LuaParam[1][i][1]string玩家昵称

LuaParam[1][i][2]int玩家阵营 1红方，2蓝方

LuaParam[1][i][3]int角色职业 1战士，2法师，3术士

LuaParam[1][i][4]int玩家位置 0第一个位置

LuaParam[1][i][5]int是否是房主 1房主，0不是房主

LuaParam[1][i][6]string玩家GUID

LuaParam[1][i][7]int是否准备完成 1完成，0没有完成

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby={}
--通过CL:GetMOBARoomList获得了房间列表信息  MOBALobby.RoomList
CL:GetMobaRoomMemberList(MOBALobby.RoomList[1][1],"MOBALobby", "MOBALobby.ShowRoomDetail") --获取第一个房间的成员列表信息
function MOBALobby.ShowRoomDetail()
    MOBALobby.RoomMemberList = LuaParam[1] --成员列表信息
    for i = 1,#MOBALobby.RoomMemberList do
        dbg("RoomMemberList["..i.."][1]:"..MOBALobby.RoomMemberList[i][1])
        dbg("RoomMemberList["..i.."][2]:"..MOBALobby.RoomMemberList[i][2])
        dbg("RoomMemberList["..i.."][3]:"..MOBALobby.RoomMemberList[i][3])
        dbg("RoomMemberList["..i.."][4]:"..MOBALobby.RoomMemberList[i][4])
        dbg("RoomMemberList["..i.."][5]:"..MOBALobby.RoomMemberList[i][5])
        dbg("RoomMemberList["..i.."][6]:"..MOBALobby.RoomMemberList[i][6])
        dbg("RoomMemberList["..i.."][7]:"..MOBALobby.RoomMemberList[i][7])
    end  
end

--此示例代码运行成功如下图所示。

GetMobaRoomMemberList
<上一篇:获取MOBA选中角色信息
ActivateMOBAMode
设置是否激活MOBA模式

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置是否激活MOBA模式。

适用于非对战模式下激活MOBA模式。

note_icon 备注
如果在非对战模式下激活MOBA模式，请同时用SetMOBAShowGameScene来设置显示游戏场景。

语法
Luacopy 复制
CL:ActivateMOBAMode(
    _Value
)
参数
_Value

bool

 
是否激活MOBA模式

true激活

false不激活

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ActivateMOBAMode(true) 
CL:SetMOBAShowGameScene(true)
下一篇:更改MOBA房间信息>
ChangeMOBARoomInfo
更改MOBA房间信息

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数更改MOBA房间信息。

语法
Luacopy 复制
CL:ChangeMOBARoomInfo(
    _RoomName,
    _PW,
    _Tag,
    _CallBack
)
参数
_RoomName

string

 
房间名

_PW

string

 
密码

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBARoom = {}
local _Parent = LuaGlobal["AttachPartent"]   
local handle = 0
handle = GUI:EditCreate(_Parent , "RoomNameInputBox", 180, 126, 360, 64)
if handle ~= 0 then
    GUI:WndSetEnableM(handle, true)
    GUI:EditSetCanEdit(handle, true)
    MOBARoom.ChangeRoomNameText = handle
end        
handle = GUI:EditCreate(_Parent , "PassWordInputBox", 180, 207, 360, 64)
if handle ~= 0 then
    GUI:WndSetEnableM(handle, true)
    GUI:EditSetCanEdit(handle, true)
    MOBARoom.ChangeRoomPWText = handle
end
_handle = GUI:EditCreate(_Parent, "RoomMainName", 345, 65, 340, 50)
if _GUIHandle ~= nil then
    MOBARoom.RoomMainNameText = _handle 
end
--获取文本框中输入的信息
local _RoomName = GUI:EditGetTextM(MOBARoom.ChangeRoomNameText)
local _RoomPW = GUI:EditGetTextM(MOBARoom.ChangeRoomPWText)
CL:ChangeMOBARoomInfo(_RoomName,_RoomPW,"MOBALobby","MOBARoom.AfterChangeRoomInfoWnd")

--回调
function MOBARoom.AfterChangeRoomInfoWnd()
    if LuaParam[1] ~= 0 then
        GUI:EditSetTextM(MOBARoom.RoomMainNameText ,LuaParam[1])
    else
    
    end          
end

--此示例代码运行成功如下图所示。

ChangeMOBARoomInfo1ChangeMOBARoomInfo2
<上一篇:设置是否激活MOBA模式下一篇:关闭MOBA大厅>
CloseMOBALobby
关闭MOBA大厅

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数关闭MOBA大厅。

语法
Luacopy 复制
CL:CloseMOBALobby()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:CloseMOBALobby()
<上一篇:更改MOBA房间信息下一篇:进入MOBA大厅>
EnterMOBALobby
进入MOBA大厅

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数执行后进入MOBA大厅，并关闭选择角色界面。

语法
Luacopy 复制
CL:EnterMOBALobby()
参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:EnterMOBALobby()

--此示例代码运行成功如下图所示。

EnterMOBALobby
<上一篇:关闭MOBA大厅下一篇:进入MOBA房间>
EnterMOBARoom
进入MOBA房间

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数进入MOBA房间。

语法
Luacopy 复制
CL:EnterMOBARoom(
    _RoomID,
    _PWD,
    _Tag,
    _CallBack
)
参数
_RoomID

int

 
房号

_PWD

string

 
密码

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

 
若执行成功，则返回房号（类型：int）存储在全局变量LuaParam中。

LuaParam[1]房号

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby={}

--通过CL:GetMOBARoomList获得了房间列表信息MOBALobby.RoomList

CL:EnterMOBARoom(MOBALobby.RoomList[1][1],"","MOBALobby", "MOBALobby.EnterCreateRoom")

--回调函数
function MOBALobby.EnterCreateRoom()
    if LuaParam[1] == 0 then
        --==0则创建失败
        return
    end
    dbg("room number :"..LuaParam[1])
end

--此示例代码运行成功如下图所示。

EnterMOBARoom1

EnterMOBARoom2
<上一篇:进入MOBA大厅下一篇:退出MOBA房间>
ExitMOBARoom
退出MOBA房间

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数退出MOBA房间。

语法
Luacopy 复制
CL:ExitMOBARoom(
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

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby={}

CL:ExitMOBARoom("MOBALobby", "MOBALobby.ShowMainUI")

--回调函数
function MOBALobby.ShowMainUI()
    dbg("Exit room")
    --这时应该进行展示主界面的操作
end

--此示例代码运行成功如下图所示。

ExitMOBARoom
<上一篇:进入MOBA房间下一篇:将玩家从MOBA房间踢出>
KickMOBAMember
将玩家从MOBA房间踢出

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数功能是将玩家从MOBA房间踢出。

踢人成功后，可用MOBALobby.ShowMainUI方法处理踢人之后的返回MOBA主界面显示。

语法
Luacopy 复制
CL:KickMOBAMember(
    _UserID,
    _Tag,
    _CallBack
)
参数
_UserID

string

 
玩家GUID

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

 
若操作成功，则返回被踢出房间的玩家GUID信息（类型：string）存储在全局变量LuaParam中。

LuaParam[1]玩家GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBALobby = {} 
--通过CL：GetMobaRoomMemberList获得房间成员列表信息 MOBALobby.RoomMemberList
local userid = MOBALobby.RoomMemberList[1][6]
--踢出房间第一个位置的玩家
CL:KickMOBAMember(userid,"MOBALobby", "MOBARoom.UpdateRoomAfterKick")
function MOBARoom.UpdateRoomAfterKick()
    dbg("KickMOBAMember")
    dbg(LuaParam[1])
end

--此示例代码运行成功如下图所示。

KickMOBAMember
<上一篇:退出MOBA房间下一篇:发送MOBA大厅聊天信息>
MOBALobbySendChat
发送MOBA大厅聊天信息

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数发送MOBA大厅聊天信息。

语法
Luacopy 复制
CL:MOBALobbySendChat(
    _Receiver,
    _CurInputString,
    _CurrenChannel
)
参数
_Receiver

string

 
接收人

_CurInputString

string

 
内容

_CurrenChannel

int

 
频道

1当前

2组队

3行会

4世界

5喇叭

7私聊

8全服

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_CurrenChannel的类型：8全服

示例代码
Luacopy 复制
MOBALobbyChatWindow = {}
local _Parent = LuaGlobal["AttachPartent"]           
local _Text = GUI:EditCreate(_Parent , "Text", 24 , 18 , 490, 110)
if _Text ~= 0 then
    MOBALobbyChatWindow.SpeakerInputText = _Text
    GUI:EditSetMultiLineEdit(_Text,true)
end
--获取文本框里输入的内容
local _Msg = GUI:EditGetTextM(MOBALobbyChatWindow.SpeakerInputText)

CL:GetMOBAFriendList() --获取moba好友列表
MOBALobbyChatWindow.FriendList = LuaRet

CL:MOBALobbySendChat(MOBALobbyChatWindow.FriendList[1][4],_Msg,5)
--给第一个好友发消息

--此示例代码运行成功如下图所示。

MOBALobbySendChat
<上一篇:将玩家从MOBA房间踢出下一篇:切换自己在房间内的阵营和位置>
MOBARoomChangeCamAndPos
切换自己在房间内的阵营和位置

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数切换自己在房间内的阵营和位置。

语法
Luacopy 复制
CL:MOBARoomChangeCamAndPos(
    _ChangeCamp,
    _Pos,
    _Tag,
    _CallBack
)
参数
_ChangeCamp

int

 
阵营

0蓝色

1红色

_Pos

int

 
位置

从左往右位置从0开始

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
此回调函数无效，程序会直接调用服务端脚本“对战选择角色表单”中的getSkin函数。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:MOBARoomChangeCamAndPos(1,2,"MOBALobby","MOBARoom.AfterChangeCamp")
--切换至阵营1第二个位置

function MOBARoom.AfterChangeCamp()
    --dbg("阵营更换")
end

--此示例代码运行成功如下图所示。

MOBARoomChangeCamAndPos1
MOBARoomChangeCamAndPos2
MOBARoomChangeCamAndPos3
<上一篇:发送MOBA大厅聊天信息下一篇:切换玩家在房间内的阵营>
MOBARoomChangeCam
切换玩家在房间内的阵营

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数切换玩家在房间内的阵营。

语法
Luacopy 复制
CL:MOBARoomChangeCam(
    _UserID,
    _Tag,
    _CallBack
)
参数
_UserID

string

 
玩家GUID

_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--通过CL：GetMobaRoomMemberList获得房间成员列表信息 MOBALobby.RoomMemberList

local userid = MOBALobby.RoomMemberList[1][6]
CL:MOBARoomChangeCam(userid,"MOBALobby","MOBARoom.AfterChangeCamp")
--更换房间第一个玩家的阵营

function MOBARoom.AfterChangeCamp()
    dbg("AfterChangeCamp success")
end

--此示例代码运行成功如下图所示。

MOBARoomChangeCam1MOBARoomChangeCam2
<上一篇:切换自己在房间内的阵营和位置下一篇:选择攻击对象并设置是否攻击>
SelectMOBATargetAndIsAttack
选择攻击对象并设置是否攻击

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数根据攻击类型选择攻击对象并设置是否攻击。

若无匹配的攻击对象，则不做任何操作。

语法
Luacopy 复制
CL:SelectMOBATargetAndIsAttack(
    _UnitType,
    _IsAttack
)
参数
_UnitType

int

 
攻击类型

1优先推塔（精英怪类型）

3优先打英雄

其他数字优先打怪

_IsAttack

bool

 
找到目标后是否攻击

true攻击

false不攻击只选中

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SelectMOBATargetAndIsAttack(1, false) --优先找附近精英怪并选中

CL:SelectMOBATargetAndIsAttack(1, true) --优先找附近精英怪并去攻击

CL:SelectMOBATargetAndIsAttack(3, false) --优先找附近玩家并选中

CL:SelectMOBATargetAndIsAttack(3, true) --优先找附近玩家并去攻击

CL:SelectMOBATargetAndIsAttack(2, false) --优先找附近怪物并选中

CL:SelectMOBATargetAndIsAttack(2, true) --优先找附近怪物并去攻击
<上一篇:切换玩家在房间内的阵营下一篇:选择攻击对象>
SelectMOBATarget
选择攻击对象

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数根据攻击类型选择攻击对象。

语法
Luacopy 复制
CL:SelectMOBATarget(
    _UnitType
)
参数
_UnitType

int

 
攻击类型：

1优先推塔（精英怪类型）

3优先打英雄

其他数字优先打怪

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
--创建窗口
_GUIHandle = GUI:WndCreateWnd(_Parent, "Target1", 0,  95, 125)
if _GUIHandle ~= 0 then
GUI:WndSetSizeM(_GUIHandle, 85, 85)
    GUI:WndSetParam(_GUIHandle, 1) 
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "SkillBar.TargetClick")
end

_GUIHandle = GUI:WndCreateWnd(_Parent, "Target2", 0,  275, 125)
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle, 85, 85)
    GUI:WndSetParam(_GUIHandle, 2) 
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "SkillBar.TargetClick")
end

--对应的点击事件
function SkillBar.TargetClick(_Handle)
    local param = tonumber(GUI:WndGetParam(_Handle))
    --根据玩家的不同点击设置优先攻击对象
    CL:SelectMOBATarget(param)
end

--此示例代码运行成功如下图所示。


<上一篇:选择攻击对象并设置是否攻击下一篇:发送阵营准备完毕信息>
SendMOBARoomCampReady
发送阵营准备完毕信息

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数发送阵营准备完毕信息。

语法
Luacopy 复制
CL:SendMOBARoomCampReady(
    _Tag,
    _CallBack
)
参数
_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。必须填写MOBARoom.UpdateReadyState。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MOBARoom= {}
local _Parent = LuaGlobal["AttachPartent"]   
--下方按钮
_GUIHandle = GUI:ButtonCreate(_Parent, "GameStartButton", 1840020012, 792 , 640) --准备或开始游戏
if _GUIHandle ~= 0 then
    MOBARoom.GameStartButton = _GUIHandle
    GUI:WndSetTextM(_GUIHandle, "开始战斗")
end

CL:SendMOBARoomCampReady("MOBALobby", "MOBARoom.UpdateReadyState")
--第二个参数无效，实际通过MOBARoom.UpdateReadyState响应回调处理

function MOBARoom.UpdateReadyState()
    --更新玩家准备状态
    CL:GetMOBAPlayerSelfInfo() --获取moba玩家自己的角色信息
    MOBALobby.PlayerGUID = LuaRet[1] --玩家guid
    --如果是对战模式
    local guid = LuaParam[1]
    local isReady = LuaParam[2]
    if isReady == 1 then
    --准备就绪可以取消准备
        GUI:WndSetTextM(MOBARoom.GameStartButton, "取消准备")
    else
        GUI:WndSetTextM(MOBARoom.GameStartButton, "准备")
    end
    --如果是非对战模式
    local camp = LuaParam[1] --阵营
    local isReady = LuaParam[2]
end

--此示例代码运行成功如下图所示。

SendMOBARoomCampReady1SendMOBARoomCampReady2
<上一篇:选择攻击对象下一篇:发送成员准备完毕信息>
SendMOBARoomMemberReady
发送成员准备完毕信息

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数发送成员准备完毕信息。

语法
Luacopy 复制
CL:SendMOBARoomMemberReady(
    _Tag,
    _CallBack
)
参数
_Tag

string

 
自定义标签，用于区分不同作用的回调函数。

_CallBack

string

 
回调函数名。必须填写MOBARoom.UpdateReadyState。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SendMOBARoomMemberReady("MOBALobby", "MOBARoom.UpdateReadyState")

function MOBARoom.UpdateReadyState()
    --更新玩家准备状态
    CL:GetMOBAPlayerSelfInfo() --获取moba玩家自己的角色信息
    MOBALobby.PlayerGUID = LuaRet[1] --玩家guid
    --如果是对战模式
    local guid = LuaParam[1]
    local isReady = LuaParam[2]
    if isReady == 1 then
    --准备就绪可以取消准备
        GUI:WndSetTextM(MOBARoom.GameStartButton, "取消准备")
    else
        GUI:WndSetTextM(MOBARoom.GameStartButton, "准备")
    end
    --如果是非对战模式
    local camp = LuaParam[1] --阵营
    local isReady = LuaParam[2]
    dbg("camp :"..camp )
end

--此示例代码运行成功如下图所示。

SendMOBARoomMemberReady
<上一篇:发送阵营准备完毕信息下一篇:是否显示MOBA好友界面>
ShowMOBAFriendUI
是否显示MOBA好友界面

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数控制是否显示MOBA好友界面。

语法
Luacopy 复制
CL:ShowMOBAFriendUI(
    flg
)
参数
flg

bool

 
是否显示：

true显示

false不显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ShowMOBAFriendUI(true)

--此示例代码运行成功如下图所示。

ShowMOBAFriendUI
<上一篇:发送成员准备完毕信息下一篇:是否显示MOBA大厅聊天界面>
ShowMOBALobbyChatWindow
是否显示MOBA大厅聊天界面

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数控制是否显示MOBA大厅聊天界面。

语法
Luacopy 复制
CL:ShowMOBALobbyChatWindow(
    flg
)
参数
flg

bool

 
是否显示：

true显示

false不显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:ShowMOBALobbyChatWindow(true)
        
--此示例代码运行成功如下图所示。

ShowMOBALobbyChatWindow
<上一篇:是否显示MOBA好友界面下一篇:过滤MOBA大厅聊天记录>
UpdateMOBALobbyChatWindow
过滤MOBA大厅聊天记录

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数过滤MOBA大厅聊天记录。

语法
Luacopy 复制
CL:UpdateMOBALobbyChatWindow(
    _CurrenChannel,
    _FriendName
)
参数
_CurrenChannel

int

 
频道

1当前

2组队

3行会

4世界

5喇叭

7私聊

8全服

如果频道为私聊并且有好友名字则筛选相关好友的聊天记录，否则筛选对应频道聊天记录。

_FriendName

string

 
好友名字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数_CurrenChannel的类型：8全服

示例代码
Luacopy 复制
CL:UpdateMOBALobbyChatWindow(0," ") --筛选频道0聊天记录

CL:GetMOBAFriendList() --获取moba好友列表
MOBALobbyChatWindow.FriendList = LuaRet

CL:UpdateMOBALobbyChatWindow(7,MOBALobbyChatWindow.FriendList[1][4])--筛选和好友1的聊天记录

--此示例代码运行成功如下图所示。

UpdateMOBALobbyChatWindow
<上一篇:是否显示MOBA大厅聊天界面
CangBaoGeCancelSellRole
下架神兔宝库中已上架的角色

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-07-18 00:00:00
此函数作用为下架神兔宝库中已上架的角色。

语法
Luacopy 复制
CL:CangBaoGeCancelSellRole(
    roleGuid,
    tag,
    luaCallBack
)
参数
roleGuid

string

 
指定角色的GUID

tag

string

 
自定义标签

用于区分不同作用的回调函数

luaCallBack

string

 
执行下架操作后回调的函数

返回值
此函数无返回值。

note_icon 备注
此函数返回的操作信息存储在全局变量LuaParam中。

LuaParam[1]下架结果（int）：1代表成功，其他代表失败。

LuaParam[2]错误信息（string）

LuaParam[3]角色GUID（string）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以手游45度测试区（互通）（区号：151750）中的SelectRole.lua脚本文件为例。
SelectRole = {}

--……省略部分代码

function SelectRole.OnCancelRoleBtn(_Handle)

--……省略部分代码

    CL:CangBaoGeCancelSellRole(SelectRole.RoleList[param][8], "", "SelectRole.OnCancelRoleCallBack") --下架神兔宝库中已上架的角色
end

function SelectRole.OnCancelRoleCallBack()
    local color1 = "#COLOR<A:255,R:255,G:255,B:255>#"
    local color2 = "#COLOR<A:255,R:240,G:150,B:59>#"
    local text1 = color1 .. "下架角色： "
    --下架成功
    if LuaParam[1] == 1 then
        for i = 1, #SelectRole.RoleList do
            if SelectRole.RoleList[i][8] == LuaParam[3] then
                text1 = text1 .. color2 .. SelectRole.RoleList[i][1] .. color1 .. " 成功！"
            end
        end
        local text2 = color1 .. "您可正常登录使用该角色！"
        SelectRole.ShowMessage(text1, text2)
        CL:GetSelectRoleList("SelectRole", "SelectRole.GetRoleList")
    --下架失败
    else
        for i = 1, #SelectRole.RoleList do
            if SelectRole.RoleList[i][8] == LuaParam[3] then
                text1 = text1 .. color2 .. SelectRole.RoleList[i][1] .. colo1 .. "失败！"
            end
        end
        local text2 = color1 .. LuaParam[2]
        SelectRole.ShowMessage(text1, text2)
    end
end

--……省略部分代码

SelectRole.main()

--若成功下架角色，则会提示“下架角色：xx成功”以及“您可正常登录使用该角色！”。

--若下架角色失败，则会提示“下架角色：xx失败”。
下一篇:打开神兔宝库面板>
OnCBGDealerWnd
打开神兔宝库面板

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-07 00:00:00
此函数作用为打开神兔宝库面板。

以手游45度测试区（区号：151750）为例，神兔宝库面板如下图所示。

OnCBGDealerWnd.png
语法
Luacopy 复制
CL:OnCBGDealerWnd()
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
<上一篇:下架神兔宝库中已上架的角色
AddMultiHPColor
设置多重血条的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置多重血条的正常血条和扣除血条的颜色。

MultiHPDef

更多信息，请参见设置多重血条。

语法
Luacopy 复制
CL:AddMultiHPColor(
_HPColor,
_DecreaseHPColor
)

参数
_HPColor

unsigned long

 
正常血条的颜色。参见颜色字符串

_DecreaseHPColor

unsigned long

 
扣除血条的颜色。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--1.在DB_MonsterDefine.lua中增加怪物模板属性字段MONSTER_PROP_MULTIHPSINGLEVALUE
local i = 0
MONSTER_PROP_ID                           =i;i=i+1--///ID
MONSTER_PROP_NAME                         =i;i=i+1--///名称
MONSTER_PROP_TYPE                         =i;i=i+1--///类型
MONSTER_PROP_HEAD                         =i;i=i+1--///头像
MONSTER_PROP_LEVEL                        =i;i=i+1--///等级
MONSTER_PROP_MULTIHPSINGLEVALUE           =i;i=i+1--///多重血条单条血量

--2.在LogicFunction.lua中增加全局变量和通过该接口设置血条颜色

function LoadLuaClientCfg()
-------------------多重血条-------------------------------------------------------------
    LuaGlobal["MultiHPDecreaseTime"] = 2000 --血量消失的速度，单位为毫秒
    LuaGlobal["MultiHPMinDecreaseTime"] = 300 --血量消失最快速度，单位为毫秒。
    LuaGlobal["MultiHPZeroImageID"] = 1857010023 --血条数量数字（即图6中乘号后的数字）的起始图片资源ID，即数字0的图片资源ID
-----------------------多重血条---------------------------------------------------------
end
LoadLuaClientCfg()
-------------------多重血条-------------------------------------------------------------
local MultiHPColor = {
    0xff9e090c, --颜色使用十六进制
    0xffc47401,
    0xff8e3290,
    0xff205793,
    0xff2f8129
}

local MultiHPDecreaseColor = {
    0xff870709,
    0xffaa5001,
    0xff702172,
    0xff174179,
    0xff1f621b
}
--多重血条将会从最底层的一条血开始循环使用定义的颜色列表中的颜色进行显示
for i = 1, #MultiHPColor do
    CL:AddMultiHPColor(MultiHPColor[i],MultiHPDecreaseColor[i])
end

--3.在OtherRoleHeadInfo.lua中创建相关的图片控件

--------------多重血条-------------------------------------------------------------
_GUIHandle = GUI:ImageCreate(tf, "MultiBackHP", 1857060021, 110, 58 - 5 )
if _GUIHandle ~= 0 then
    GUI:WndSetVisible(_GUIHandle, false)
    GUI:WndSetSizeM(_GUIHandle, 285, 18)
    GUI:WndSetEnableM(_GUIHandle, false) 
    GUI:ImageSetFitSize(_GUIHandle, true)
end
_GUIHandle = GUI:ImageCreate(tf, "MultiDecreaseHP", 1857060021, 110, 58 - 5 )
if _GUIHandle ~= 0 then
    GUI:WndSetVisible(_GUIHandle, false)
    GUI:WndSetSizeM(_GUIHandle, 285, 18)
    GUI:WndSetEnableM(_GUIHandle, false) 
    GUI:ImageSetFitSize(_GUIHandle, true)
end
_GUIHandle = GUI:ImageCreate(tf, "MultiFrontHP", 1857060021, 110, 58 - 5 )
if _GUIHandle ~= 0 then
    GUI:WndSetVisible(_GUIHandle, false)
    GUI:WndSetSizeM(_GUIHandle, 285, 18)
    GUI:WndSetEnableM(_GUIHandle, false) 
    GUI:ImageSetFitSize(_GUIHandle, true)
end
_GUIHandle = GUI:ImageCreate(tf, "XImage", 1857010078, 306, 26)
if _GUIHandle ~= 0 then
    GUI:WndSetVisible(_GUIHandle, false)
    GUI:WndSetEnableM(_GUIHandle, false) 
end
local _NumInterval = 20
for i = 1,4 do
    _GUIHandle = GUI:ImageCreate(tf, "BloodNum"..i, 1857010023, 306 + i * _NumInterval, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetEnableM(_GUIHandle, false) 
    end
end
--------------多重血条-------------------------------------------------------------
    

--此示例代码运行成功如下图所示。

AddMultiHPColor
下一篇:发送一条系统消息>
AddSysAnnAnimation
发送一条系统消息

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-05-12 00:00:00
此函数作用为发送一条系统消息。

语法
Luacopy 复制
CL:AddSysAnnAnimation(
    msg,
    param
)
参数
msg

string

 
消息内容

param

int

 
自定义参数

note_icon 备注
msg参数和param参数均可透传给全局函数CreateSysAnnItem。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function CreateSysAnnItem(parent, msg, param)
    local deviceSizeX = CL:GetScreenWidth() --屏幕宽
    local deviceSizeY = CL:GetScreenHeight() --屏幕高
    local edgeImageWidth = 522 --上下边的底图宽
    local edgeImageOffsetY = 2 --上下边的底图Y偏移
    local bgImageWidth = 400 --中间底图的宽
    local bgImageHeight = 30 --中间底图的
    --所有子控件要保持位于父控件的横向中心位置，避免缩放导致偏移
    GUI:ImageCreate(parent, "Top", 1853880000, -edgeImageWidth/2, -edgeImageOffsetY) --上边底图
    local handle = GUI:ImageCreate(parent, "BG", 1855700005, -bgImageWidth/2, 0) --中心底图
    if handle ~= 0 then
        GUI:WndSetEnableM(handle, false)
        GUI:WndSetSizeM(handle, bgImageWidth, bgImageHeight)
        GUI:ImageSetFitSize(handle, true)
        GUI:ImageSetAlpha(handle, 128)
    end
    GUI:ImageCreate(parent, "Bot", 1853880000, -edgeImageWidth/2, bgImageHeight - edgeImageOffsetY) --下边底
    handle = GUI:RichEditCreate(parent, "Text", -edgeImageWidth/2, edgeImageOffsetY, edgeImageWidth, bgImageHeight) --显示消息
    if handle ~= 0 then
        local richEdit_flg_textInCenterAll = 0x00400000
        GUI:WndSetEnableM(handle, false)
        GUI:WndSetFlagsM(handle, richEdit_flg_textInCenterAll) --消息居中
        GUI:RichEditAppendString(handle, msg)
    end
    local ret = {}  --返回值，table类型
    ret.custom = true  --如果要自定义控件，一定要将custom设置为true。默认值false，由程序来创建
    ret.moveHeight = 36 --每增加一条消息，会将之前的消息向上平移的像素距离
    ret.centerX = deviceSizeX/2 --设置父控件的位置X
    ret.centerY = 36 * 4 --设置父控件的位置Y
    ret.localZOrder = 100 --设置显示层级
    ret.animationType = 1 --设置动画类型，默认为1
    return ret
end

function mobile_syschat_to_topwnd(str,sender)
    CL:AddSysAnnAnimation("消息测试消息测试1",0)
    CL:AddSysAnnAnimation("消息测试消息测试2",0)
    CL:AddSysAnnAnimation("消息测试消息测试3",0)
    CL:AddSysAnnAnimation("消息测试消息测试5",0)
end

--此示例代码运行成功如下图所示。

AddSysAnnAnimation.png
<上一篇:设置多重血条的颜色下一篇:改变游戏基本设置>
ChangeBasicSetting
改变游戏基本设置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数改变基本设置中某选项的选择状态。

note_icon 备注
与SetBasicSetting接口不同，此接口仅在游戏运行时改变设置项，不会将变更写入到文件进行保存。

语法
Luacopy 复制
CL:ChangeBasicSetting(
    id,
    val
)
参数
id

int

 
0-99代表基本设置中的字段定义中对应的索引值。

101代表扩展设置中字段名为基本设置且索引值为0的选项，即是否屏蔽自身翅膀的展示。

val

bool

 
是否勾选。

true表示勾选，false表示不勾选。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:发送一条系统消息下一篇:获取设置数据>
GetBasicSetting
获取设置数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-03-10 00:00:00
此函数获取游戏中的基本设置、战斗设置等数据。

语法
Luacopy 复制
CL:GetBasicSetting( 
    id
)

参数
id

int

 
0-99获取基本设置中相关字段中对应的设置数据；

101获取扩展设置中字段名为基本设置且索引值为0的选项的设置数据，即是否屏蔽自身翅膀的展示；

2001获取游戏设置→保护面板中，是否勾选了使用百分比；

3001-3999获取战斗设置中相关字段（如下所示）的设置数据（2D暂不支持）。

3001自动冲击

3002自动烈焰斩

3003持续流光护盾

3004持续地煞镇魔咒

3005自动隐形

3006持续天罡护体咒

3009智能月弧弯刀

3010自动红绿毒

3011自动太极玄清术

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。

函数只有返回true才表示LuaRet中的结果是有效的，并且会将获取的属性存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

 
v1.1

 
增加获取设置的类型

 
v1.2

 
增加获取设置的类型（战斗设置）

示例代码
Luacopy 复制
if CL:GetBasicSetting(2001) then
    if LuaRet then
        dbg("使用百分比")
    else
        dbg("未使用百分比")
    end
else
    dbg("获取失败")
end
<上一篇:改变游戏基本设置下一篇:获取当前相机的旋转角度>
GetCameraRotate
获取当前相机的旋转角度

更新时间：2025-04-01 00:00:00
手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

此函数作用为获取当前相机的旋转角度。

语法
Luacopy 复制
CL:GetCameraRotate()
参数
 
返回值
此函数无返回值。

note_icon 备注
程序同时会传递以下参数，保存于全局变量LuaRet中，由脚本进行后续的处理。

LuaRet[1]X方向旋转角度；

LuaRet[2]Y方向旋转角度。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:GetCameraRotate()
<上一篇:获取设置数据下一篇:获取是否开启自动反击功能>
GetCounterAttackID
获取是否开启自动反击功能

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-03-24 00:00:00
此函数设置是否开启自动反击功能。

自动反击功能是指玩家被其他玩家或者怪物攻击并且受到伤害（包括不破防时受到的伤害）时会进行反击的功能。

不破防时受到的伤害是指攻方的攻击小于守方的防御时守方扣除的血量，可在游戏管理平台→游戏配置→全局表→全局模板表→其他设置→游戏配置区域的“不破防时算几点伤害”选项中进行配置，如图1所示。

图 1 “不破防时算几点伤害”选项

SetCounterAttackID_3.png
在勾选“免shift”设置选项的情况下，才可对其他玩家进行反击，如图2所示。

图 2 “免shift”设置选项

SetCounterAttackID_2.png
参考 SetCounterAttackID

语法
Luacopy 复制
CL:GetCounterAttackID()
参数
无

返回值
int

 
是否开启自动反击功能

1开启

0关闭

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--将以下示例代码放在GameSettingBasic.lua脚本文件中执行。
GameSettingBasic = {}

function GameSettingBasic.main()

--……省略部分代码

    local _GUIHandle = GUI:CheckBoxCreate(_Parent, "AutoCounterAttack", 4003030116, "自动反击", posX + offset_x + interval_X * 2, posY + interval_Y * 7)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 21, 21) --设置复选框控件的大小
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:CheckBoxSetAutoChange(_GUIHandle, true) --设置复选框控件的选中状态可改变
        GUI:CheckBoxSetCheck(_GUIHandle, CL:GetCounterAttackID() == 1) --使用接口CL:GetCounterAttackID获取当前是否开启了自动反击，从而设置复选框控件的选中状态。
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameSettingBasic.OnAutoCounterAttack") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

--……省略部分代码
    
    GameSettingBasic.UIInit(_Parent)
end

function GameSettingBasic.OnAutoCounterAttack(_Handle)
    --之后根据复选框控件的选中状态设置是否开启自动反击。
    if GUI:CheckBoxGetCheck(_Handle) then
        CL:SetCounterAttackID(1)
    else
        CL:SetCounterAttackID(0)
    end
end

--……省略部分代码

GameSettingBasic.main()

--此示例代码运行成功后效果如下图所示。

SetCounterAttackID.png

--未勾选“自动反击”选项时，玩家角色受到攻击后的状态如下图所示。

SetCounterAttackID.gif

--勾选“自动反击”选项，玩家角色受到攻击后的状态如下图所示。

SetCounterAttackID_2.gif
<上一篇:获取当前相机的旋转角度下一篇:获取游戏画质设置相关选项的勾选状态>
GetGraphicsQualitySetting
获取游戏画质设置相关选项的勾选状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2025-04-01 00:00:00
此函数获取游戏画质设置相关选项的勾选状态。

参考 SetGraphicsQualitySetting

语法
Luacopy 复制
CL:GetGraphicsQualitySetting(
    _QualityIndex
)
参数
_QualityIndex

int

 
画质设置中的字段定义中对应的索引值

0画面卡顿时自动优化

1高质量阴影

2角色动态阴影

3怪物动态阴影

4高帧率模式

5全屏抗锯齿

6全屏泛光

7图像锐化

8NPC动态阴影

9高精度贴图

10开启雾效

11开启震屏

12是否开启垂直同步

note_icon 备注
雾效是指将一块指定的区域笼罩在一股烟雾弥漫之中的效果。需要地图设计了雾效，“开启雾效”选项才会生效。

震屏是指当出现玩家因施放技能而重击地面等情况时，场景会出现短时间上下震动的效果。

12是否开启垂直同步，默认关闭，用来避免画面撕裂，端游专用。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，获取的游戏画质设置相关选项的勾选状态（类型：bool）存储在全局变量LuaRet中。

true表示勾选（生效），false表示不勾选（取消）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
GetGraphicsQualitySetting_2.png
--获取“画质设置”中各选项的勾选状态
for i = 0, 10 do
    if CL:GetGraphicsQualitySetting(i) then
        local flag = LuaRet
        dbg("索引值为"..i.."的选项的设置状态为"..tostring(flag))
    end
end

--此示例代码运行成功如下图所示。

GetGraphicsQualitySetting.png
<上一篇:获取是否开启自动反击功能下一篇:获取游戏保护设置数据>
GetProtectArr
获取游戏保护设置数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-11-28 00:00:00
此函数获取游戏设置→保护面板中的游戏保护设置。

语法
Luacopy 复制
CL:GetProtectArr(
    id
)

参数
id

int

 
2002下拉框中物品的模板ID数据

2003延迟时间数据

2004HP设置数据

2005HP按百分比设置数据

2006复选框是否选中数据

2007下拉框中当前选中项目的索引号

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的属性存储在全局变量LuaRet中。

idx保护界面中，各设置选项序号，如下图所示。



下拉框中物品的模板ID数据

LuaRet[idx][item_idx]物品的模板ID，item_idx代表下拉框项目的索引号，从1开始；

延迟时间数据

LuaRet[idx]延迟数据值，单位为毫秒；

HP设置数据

LuaRet[idx]HP设置数据，若已勾选了使用百分比，则为百分比数据；

HP按百分比设置数据

LuaRet[idx]HP按百分比设置数据；

复选框是否选中数据

LuaRet[idx]复选框选中状态，0代表未选中，1代表已选中；

下拉框中当前选中项目的索引号

LuaRet[idx]下拉框当前被选中的项目索引号，0代表第一个项目，以此类推。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if CL:GetProtectArr(2002) then --获取物品数据
    dbg(serialize(LuaRet))
end

--LuaRet中数据如下所示（截取部分）。

GetProtectArr_11.png

--保护设置界面如下所示。

GetProtectArr_12.png
if CL:GetProtectArr(2003) then --获取延时数据
    dbg(serialize(LuaRet))
end

--LuaRet中数据如下所示。

GetProtectArr_13.png

--保护设置界面如下所示。

GetProtectArr_14.png
if CL:GetProtectArr(2004) then --获取HP数据
    dbg(serialize(LuaRet))
end

--LuaRet中数据如下所示。

GetProtectArr_15.png

--保护设置界面如下所示。

GetProtectArr_16.png
<上一篇:获取游戏画质设置相关选项的勾选状态下一篇:设置图片动画播放>
SetAnimateData
设置图片动画播放

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置图片动画播放。

caution_icon注意
需要在创建图片之前调用。

语法
Luacopy 复制
CL:SetAnimateData( 
    _FloderIndex,
    _ElapseTick
)

参数
_FloderIndex

int

 
指定动画图集，图片ID前五位。

_ElapseTick

int

 
动画每帧的时间间隔，单位为毫秒，设置为0则取消动画属性。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
CL:SetAnimateData(30202, 100) 
local _GUIHandle = GUI:ImageCreate(_Parent, "Magic", 3020200500, 350, 130)
GUI:ImageSetAnimate(_GUIHandle, 100,0,"")

--此示例代码运行成功如下图所示。

SetAnimateData
<上一篇:获取游戏保护设置数据下一篇:设置游戏的版权信息>
SetAuthorText
设置游戏的版权信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置游戏的版权信息。

版权信息在游戏加载界面中显示。

语法
Luacopy 复制
CL:SetAuthorText( 
    _Text
)

参数
_Text

string

 
版权信息的内容。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置图片动画播放下一篇:设置游戏背景音乐的音量大小>
SetBGSound
设置游戏背景音乐的音量大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-08-04 00:00:00
此函数设置游戏背景音乐的音量大小，与声音设置中的“背景音乐”控件（如图1、图2所示）相对应。

如需设置游戏音效的音量大小，可使用接口CL:SetSESound进行设置。

图 1 手游

SetSESound_3.png
图 2 端游

SetSESound_2.png
语法
Luacopy 复制
CL:SetBGSound(
    val
)
参数
val

int

 
音量大小

范围为0-100

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:SetBGSound(80) --将游戏背景音乐音量设置为80

--此示例代码运行成功如下图所示。

SetBGSound.png
<上一篇:设置游戏的版权信息下一篇:设置游戏基本设置>
SetBasicSetting
设置游戏基本设置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置游戏基本设置中一些选项的选中状态。

SetBasicSetting1
note_icon 备注
与ChangeBasicSetting接口不同，此接口会将设置变更写入到文件（GameBasicSetting.xml）进行保存。

语法
Luacopy 复制
CL:SetBasicSetting( 
    _SettingIndex,
    _Check
)

参数
_SettingIndex

int

 
0-99代表基本设置中的字段定义中对应的索引值。

101代表扩展设置中字段名为基本设置且索引值为0的选项，即是否屏蔽自身翅膀的展示。

_Check

bool

 
true表示勾选（生效）。

false表示不勾选（取消）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
增加获取设置的类型

示例代码
Luacopy 复制
CL:SetBasicSetting(0,true) --设置显示玩家名字

--此示例代码运行成功如下图所示。

SetBasicSetting
<上一篇:设置游戏背景音乐的音量大小下一篇:设置模型图片映射>
SetBigIconIDMap
设置模型图片映射

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置模型图片映射。

设置映射关系后，实际显示映射目标的图片资源。

语法
Luacopy 复制
CL:SetBigIconIDMap( 
    _SrcImageID,
    _DecImageID
)

参数
_SrcImageID

unsigned int

 
源图片资源ID

_DecImageID

unsigned int

 
目标图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置游戏基本设置下一篇:设置大地图图片映射>
SetBigMapImageID
设置大地图图片映射

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置大地图图片映射。

设置映射关系后，实际显示映射目标的图片资源。

语法
Luacopy 复制
CL:SetBigMapImageID( 
    _SrcImageID,
    _DecImageID
)

参数
_SrcImageID

unsigned int

 
源图片资源ID

_DecImageID

unsigned int

 
目标图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetBigMapImageID(1913100001, 1914800001) --图片资源宽高比不同，目标图片为宽屏比例
<上一篇:设置模型图片映射下一篇:设置摄像头的视角>
SetCameraRotationOffset
设置摄像头的视角

更新时间：2022-10-31 00:00:00
手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

此函数作用为实时设置摄像头的视角。

语法
Luacopy 复制
CL:SetCameraRotationOffset(
    _X,
    _Y
)
参数
_X

float

 
摄像头绕X轴旋转的角度

默认值为全局变量CameraRotationOffsetX的配置值，范围为0-90。

若需要视角更趋向水平，则只需将此参数的值调小即可；

若需要视角更趋向垂直，则只需将此参数的值调大即可。

_Y

float

 
摄像头绕Y轴（角色）旋转的角度（如下图所示）

默认值为0，范围为0-360。

SetCameraRotationOffset_2.png
返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetCameraRotationOffset(45,45)

--此示例代码执行后，摄像头视角成功被调整。
<上一篇:设置大地图图片映射下一篇:设定屏幕是否可点击>
SetCanTouch
设定屏幕是否可点击

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设定屏幕是否可点击。

当设定不能点击时，所有的窗口、按钮等控件不响应用户操作。

语法
Luacopy 复制
CL:SetCanTouch( 
    _CanTouch
)

参数
_CanTouch

bool

 
true可以点击

false不能点击

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置摄像头的视角下一篇:设置卡牌模式下模型图片>
SetCardAvatarImages
设置卡牌模式下模型图片

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-09-05 14:54:00
此函数设置卡牌模式下模型图片。

note_icon 备注
卡牌模式切换快捷键：Ctrl+Shift+Alt+F8。

语法
Luacopy 复制
CL:SetCardAvatarImages(
    _Table
)

参数
_Table

table

 
Avatar ID配置存储在Lua表中，可以是玩家、怪物、NPC等，其具体内容如下：

Luacopy 复制
local s = {}
s[6001] = 1000000000  --即ID为6001的Avatar使用特定卡牌图片
返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local s = {}
s[5104] = 4020000030 --ID为6001的Avatar使用特定卡牌图片
s[25000] = 4020000035
s[6001] = 4000320004
CL:SetCardAvatarImages(s)

--此示例代码运行成功，使用快捷键Ctrl+Shift+Alt+F8切换到卡牌模式下，如下图所示。

SetCardAvatarImages.png
<上一篇:设定屏幕是否可点击下一篇:设置场景中衣服图片映射>
SetClothesImageIDMap
设置场景中衣服图片映射

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置场景中衣服图片映射。

设置映射关系后，实际显示映射目标的图片资源。

语法
Luacopy 复制
CL:SetClothesImageIDMap( 
    _SrcImageID,
    _DecImageID
)

参数
_SrcImageID

unsigned int

 
源图片资源ID

_DecImageID

unsigned int

 
目标图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置卡牌模式下模型图片下一篇:设置是否开启自动反击功能>
SetCounterAttackID
设置是否开启自动反击功能

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2022-03-24 00:00:00
此函数设置是否开启自动反击功能。

自动反击功能是指玩家被其他玩家或者怪物攻击并且受到伤害（包括不破防时受到的伤害）时会进行反击的功能。

不破防时受到的伤害是指攻方的攻击小于守方的防御时守方扣除的血量，可在游戏管理平台→游戏配置→全局表→全局模板表→其他设置→游戏配置区域的“不破防时算几点伤害”选项中进行配置，如图1所示。

图 1 “不破防时算几点伤害”选项

SetCounterAttackID_3.png
在勾选“免shift”设置选项的情况下，才可对其他玩家进行反击，如图2所示。

图 2 “免shift”设置选项

SetCounterAttackID_2.png
参考 GetCounterAttackID

语法
Luacopy 复制
CL:SetCounterAttackID(
    _Value
)
参数
_Value

int

 
是否开启自动反击

1开启

0关闭

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

    local _GUIHandle = GUI:CheckBoxCreate(_Parent, "AutoCounterAttack", 4003030116, "自动反击", posX + offset_x + interval_X * 2, posY + interval_Y * 7)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle, 21, 21) --设置复选框控件的大小
        GUI:WndSetTextColorM(_GUIHandle, 0xffffffff) --设置复选框控件的文本颜色
        GUI:CheckBoxSetAutoChange(_GUIHandle, true) --设置复选框控件的选中状态可改变
        GUI:CheckBoxSetCheck(_GUIHandle, CL:GetCounterAttackID() == 1) --使用接口CL:GetCounterAttackID获取当前是否开启了自动反击，从而设置复选框控件的选中状态。
        GUI:WndRegistScript(_GUIHandle, RDWnd2DCheckCL_check_change, "GameSettingBasic.OnAutoCounterAttack") --注册窗体“复选框状态发生变化事件”事件发生时回调的函数
    end

--……省略部分代码
    
    GameSettingBasic.UIInit(_Parent)
end

function GameSettingBasic.OnAutoCounterAttack(_Handle)
    --之后根据复选框控件的选中状态设置是否开启自动反击。
    if GUI:CheckBoxGetCheck(_Handle) then
        CL:SetCounterAttackID(1)
    else
        CL:SetCounterAttackID(0)
    end
end

--……省略部分代码

GameSettingBasic.main()

--此示例代码运行成功后效果如下图所示。

SetCounterAttackID.png

--未勾选“自动反击”选项时，玩家角色受到攻击后的状态如下图所示。

SetCounterAttackID.gif

--勾选“自动反击”选项，玩家角色受到攻击后的状态如下图所示。

SetCounterAttackID_2.gif
<上一篇:设置场景中衣服图片映射下一篇:设置资源下载消息的位置和文字颜色>
SetDownLoadMessageInfo
设置资源下载消息的位置和文字颜色

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置资源下载消息的在客户端显示区域内（即不包括客户端上部的标题栏及下方和左右的边框）的位置和提示文字的颜色。

语法
Luacopy 复制
CL:SetDownLoadMessageInfo( 
    _PosX,
    _PosY,
    _ColorString
)

参数
_PosX

int

 
显示区域X方向的百分比，范围0~100。

_PosY

int

 
显示区域Y方向的百分比，范围0~100。

_ColorString

string

 
文字颜色。参见颜色字符串

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetDownLoadMessageInfo(50,50,"RED")

--设置效果如下图所示。

SetDownLoadMessageInfo
<上一篇:设置是否开启自动反击功能下一篇:设置下载资源时是否显示进度条>
SetDrawDLImage
设置下载资源时是否显示进度条

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2023-06-16 00:00:00
此函数设置下载资源时是否显示进度条。

相关全局变量：DLImageType（设置下载进度条图片的类型）。

语法
Luacopy 复制
CL:SetDrawDLImage( 
    _DrawDLImage
)

参数
_DrawDLImage

bool

 
true显示进度条

false不显示进度条

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetDrawDLImage(true) --设置下载资源时显示进度条

--此示例代码运行成功如下图所示。

SetDrawDLImage

<上一篇:设置资源下载消息的位置和文字颜色下一篇:设置掉落物品图片映射>
SetDropItemImageID
设置掉落物品图片映射

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置掉落物品图片映射。

设置映射关系后，实际显示映射目标的图片资源。

语法
Luacopy 复制
CL:SetDropItemImageID( 
    _SrcImageID,
    _DecImageID
)

参数
_SrcImageID

unsigned int

 
源图片资源ID

_DecImageID

unsigned int

 
目标图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置下载资源时是否显示进度条下一篇:设置窗口是否播放动画>
SetGUIAnimate
设置窗口是否播放动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-09-16 00:00:00
此函数设置窗口是否播放动画。

语法
Luacopy 复制
CL:SetGUIAnimate( 
    _HandleID,
    _Flag
)

参数
_HandleID

int

 
窗口的句柄。

点击窗口句柄了解更多信息。

_Flag

bool

 
true窗口显示并且设置当前为第一帧。

false将窗口隐藏

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200)
CL:SetGUIAnimate(_GUIHandle,true) --设置窗口播放动画
<上一篇:设置掉落物品图片映射下一篇:设置并播放重击术声音>
SetGongShaSound
设置并播放重击术声音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数设置并播放重击术声音。

语法
Luacopy 复制
CL:SetGongShaSound( 
    _Gender,
    _Sound
)

参数
_Gender

int

 
角色性别：

1男性

2女性

_Sound

string

 
声音文件的相对路径。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetGongShaSound(1, "Sound/Character/Gz004_gongji")
<上一篇:设置窗口是否播放动画下一篇:设置游戏画质设置相关选项的勾选状态>
SetGraphicsQualitySetting
设置游戏画质设置相关选项的勾选状态

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2025-04-01 00:00:00
此函数设置游戏画质设置相关选项的勾选状态。

参考 GetGraphicsQualitySetting

语法
Luacopy 复制
CL:SetGraphicsQualitySetting(
    _QualityIndex,
    _Check
)
参数
_QualityIndex

int

 
画质设置中的字段定义中对应的索引值

0画面卡顿时自动优化

1高质量阴影

2角色动态阴影

3怪物动态阴影

4高帧率模式

5全屏抗锯齿

6全屏泛光

7图像锐化

8NPC动态阴影

9高精度贴图

10开启雾效

11开启震屏

12是否开启垂直同步

note_icon 备注
雾效是指将一块指定的区域笼罩在一股烟雾弥漫之中的效果。需要地图设计了雾效，“开启雾效”选项才会生效。

震屏是指当出现玩家因施放技能而重击地面等情况时，场景会出现短时间上下震动的效果。

12是否开启垂直同步，默认关闭，用来避免画面撕裂，端游专用。

_Check

bool

 
true表示勾选（生效）

false表示不勾选（取消）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
SetGraphicsQualitySetting.png
CL:SetGraphicsQualitySetting(0, true) --将游戏画质设置中的“画面卡顿时自动优化”选项设置为勾选状态

--此示例代码运行成功如下图所示。

SetGraphicsQualitySetting_2.png
<上一篇:设置并播放重击术声音下一篇:设置HP和MP遮罩图片>
SetHPMPMaskImage
设置HP和MP遮罩图片

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置血条和魔法值条遮罩图片。

如果加了圆形遮罩，血条和蓝条上所有特效均不会绘制在圆形区域之外。

语法
Luacopy 复制
CL:SetHPMPMaskImage( 
    _ImageID,
    _OffX,
    _OffY
)

参数
_ImageID

unsigned int

 
图片资源的ID。

_OffX

int

 
X方向的偏移量。

_OffY

int

 
Y方向的偏移量。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GameMainBar.SetMaskImage()
    CL:SetHPMPMaskImage(1808900123, 62, 75)
end
<上一篇:设置游戏画质设置相关选项的勾选状态下一篇:设置并播放提示声音>
SetHintSound
设置并播放提示声音

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置并播放提示声音。

语法
Luacopy 复制
CL:SetHintSound( 
    _Gender,
    _Sound
)

参数
_Gender

int

 
性别：

1男性

2女性

_Sound

string

 
声音文件的相对路径。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetHintSound(1,"Sound/Character/Gz004_gongji")
<上一篇:设置HP和MP遮罩图片下一篇:设置怪物模型图片映射>
SetMonsterImageIDMap
设置怪物模型图片映射

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置怪物模型图片映射。

设置映射关系后，实际显示映射目标的图片资源。

语法
Luacopy 复制
CL:SetMonsterImageIDMap( 
    _SrcImageID,
    _DecImageID
)

参数
_SrcImageID

unsigned int

 
源图片资源ID

_DecImageID

unsigned int

 
目标图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置并播放提示声音下一篇:设置角色是否播放采集动画>
SetPlayGatherAnim
设置角色是否播放采集动画

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

更新时间：2021-09-07 00:00:00
此函数设置角色是否播放采集动画。

语法
Luacopy 复制
CL:SetPlayGatherAnim(
    _Flag
)
参数
_Flag

bool

 
true播放采集动画

false不播放采集动画

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetPlayGatherAnim(true)

--此示例代码运行成功如下图所示。

SetPlayGatherAnim.gif
<上一篇:设置怪物模型图片映射下一篇:设置角色指定称号对应特效的偏移值>
SetPlayerTitleMagicOffset
设置角色指定称号对应特效的偏移值

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-02-11 00:00:00
此函数设置角色指定称号对应特效的偏移值，支持同时设置多个特效的偏移值。

语法
Luacopy 复制
CL:SetPlayerTitleMagicOffset(
    RoleID,
    offsetStr
)
参数
RoleID

string

 
角色的GUID

offsetStr

string

 
称号对应特效的偏移值列表

偏移值列表包括需要设置偏移的称号对应特效的编号、在水平方向上的偏移值以及在垂直方向上的偏移值。

此参数为字符串格式，其中设置的偏移值单位为像素（px），各个称号对应特效的偏移值情况中间用“#”分隔。

在水平方向上，正数代表向右偏移，负数代表向左偏移；

在垂直方向上，正数代表向下偏移，负数代表向上偏移。

具体格式："称号1对应特效的编号,称号1在水平方向上的偏移值,称号1在垂直方向上的偏移值#称号2对应特效的编号,称号2在水平方向上的偏移值,称号2在垂直方向上的偏移值"

例如："400000002,0,0#400000010,-100,100"表示对应特效编号为400000002的称号在水平方向和垂直方向均未设置偏移，对应特效编号为400000010的称号向左偏移100px且向下偏移100px。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local guid = CL:GetPlayerSelfGUID() --获取玩家角色自身的GUID
CL:SetPlayerTitleMagicOffset(guid,"400003013,0,0#400003014,0,60") --设置角色指定称号的偏移值

--此示例代码运行前效果如下图所示（称号“劳苦功高”对应的特效与称号“精金百炼”对应的特效重合）。

SetPlayerTitleMagicOffset.png

--此示例代码运行后效果如下图所示（称号“劳苦功高”对应的特效未发生偏移，称号“精金百炼”对应的特效向下偏移60px）。

SetPlayerTitleMagicOffset_2.png
<上一篇:设置角色是否播放采集动画下一篇:设置游戏保护设置数据>
SetProtectIndex
设置游戏保护设置数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-11-28 00:00:00
此函数设置游戏设置→保护面板中的游戏保护设置。

更多信息，请参见保护设置了解更多信息。

语法
Luacopy 复制
CL:SetProtectIndex( 
    id,
    index,
    _String
)

参数
id

int

 
2003延迟时间数据

2004HP设置数据

2005HP按百分比设置数据

2006复选框是否选中

2007下拉框中当前选中项目

index

int

 
数组索引值

范围0~9，对应下图1~10的选项区域。

game_protect_settings

_String

string

 
设置值

note_icon 备注
若参数id的配置值为2003，则此参数的配置值为延迟时间数据（单位为毫秒（ms））；

若参数id的配置值为2004，则此参数的配置值为HP设置数据；

若参数id的配置值为2005，则此参数的配置值为HP按百分比设置数据；

若参数id的配置值为2006，则此参数的配置值为复选框是否选中数据（true代表已选中，false代表未选中）；

若参数id的配置值为2007，则此参数的配置值为下拉框中当前选中项目的索引号 （从0开始，0代表第一个项目，以此类推）。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--索引从“0”开始
CL:SetProtectIndex(2003, 0,"4500") --设置序号为“1”的延迟数据为“4500ms”
CL:SetProtectIndex(2004, 0,"1500") --设置序号为“1”的HP数据为“1500”
CL:SetProtectIndex(2005, 0,"75") --设置序号为“1”的HP比例数据为“75%”
CL:SetProtectIndex(2006, 4,"true") --设置序号为“5”的check数据为“勾选”
CL:SetProtectIndex(2007, 9,"1") --设置序号为“10”的选中数据为“1”，代表选中下拉框第二个道具
<上一篇:设置角色指定称号对应特效的偏移值下一篇:设置游戏音效的音量大小>
SetSESound
设置游戏音效的音量大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-08-04 00:00:00
此函数设置游戏音效的音量大小，与声音设置中的“音效”控件（如图1、图2所示）相对应。

如需设置游戏背景音乐的音量大小，可使用接口CL:SetBGSound进行设置。

图 1 手游

SetSESound_3.png
图 2 端游

SetSESound_2.png
语法
Luacopy 复制
CL:SetSESound(
    val
)
参数
val

int

 
音量大小

范围为0-100

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:SetSESound(20) --将游戏音效音量设置为20

--此示例代码运行成功如下图所示。

SetSESound.png
<上一篇:设置游戏保护设置数据下一篇:设置是否开启鼠标旋转镜头>
SetUseMouseRotate
设置是否开启鼠标旋转镜头

更新时间：2025-04-01 00:00:00
手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

此函数作用为设置是否开启鼠标旋转镜头。

note_icon 备注
此函数仅在全局变量CameraZoomLevel设置为true时生效。

语法
Luacopy 复制
CL:SetUseMouseRotate(
    flg,
    minX,
    maxX,
    minY,
    maxY
)
参数
flg

bool

 
是否开启鼠标旋转镜头

true开启

false关闭

minX

float

 
摄像头可以绕X轴旋转的最小角度

范围为0-360。

maxX

float

 
摄像头可以绕X轴旋转的最大角度

范围为0-360。

minY

float

 
摄像头可以绕Y轴旋转的最小角度

范围为0-360。

maxY

float

 
摄像头可以绕Y轴旋转的最大角度

范围为0-360。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:SetUseMouseRotate(true, 10, 90 , 0, 360)

--此示例代码执行后，开启鼠标旋转镜头并调整摄像头视角。
<上一篇:设置游戏音效的音量大小下一篇:设置武器模型图片映射>
SetWeaponImageIDMap
设置武器模型图片映射

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置武器转换图片。

设置映射关系后，实际显示映射目标的图片资源。

语法
Luacopy 复制
CL:SetWeaponImageIDMap( 
    _SrcImageID,
    _DecImageID
)

参数
_SrcImageID

unsigned int

 
源图片资源ID

_DecImageID

unsigned int

 
目标图片资源ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置是否开启鼠标旋转镜头下一篇:设置场景画面的振动效果>
ShakeScreen
设置场景画面的振动效果

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-06-02 00:00:00
此函数设置场景画面的振动效果。

语法
Luacopy 复制
CL:ShakeScreen(
    _ShakePower,
    _ShakeCut,
    _ShakeTime
)

参数
_ShakePower

int

 
振动的振幅（即场景画面振动的最大幅度）

单位为像素（px）

_ShakeCut

int

 
每次振动衰减的幅度

单位为像素（px）

_ShakeTime

int

 
单边振动所需时间（单位为毫秒）

振动一次的时间为此参数值的2倍。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
CL:ShakeScreen(30,2,50)
<上一篇:设置武器模型图片映射
GenFormByString
使用form字符串创建Lua窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数基于form字符串解析来创建Lua窗口，并自定义窗口的行为。

语法
Luacopy 复制
GenFormByString(
    _Info
)
参数
_Info

string

 
form字符串

具体请参见form解析创建窗口页面

返回值
bool

 
true创建成功

false创建失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ui = ""
ui = "<form>"
ui = ui.." <dialog id=\"对话框1\" x=\"220\" y=\"20\" w=\"500\" h=\"300\" image=\"1904400001,1904400002,1904400003,1904400004,1904400006,1904400005,1904400007,1904400008,1904400009\" title=\"示例窗口\" close=\"true\" center=\"true\" >"
ui = ui.." <button id=\"button\" x=\"220\" y=\"250\" w=\"50\" h=\"50\" image=\"1903400035\" text=\"确  认\" text_color=\"4288676000\"  />"
ui = ui.."</dialog>"
ui = ui.."</form>"

if GenFormByString(ui) then
    dbg("窗体生成成功")
else
    dbg("窗体生成失败")
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

Lua_GenFormByString

GenFormByString.png
下一篇:根据文件名打开Lua窗口>
GenForm
根据文件名打开Lua窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数根据文件名打开指定的Lua窗口。

语法
Luacopy 复制
GenForm(
    _FileName
)
参数
_FileName

string

 
要打开的Lua窗口对应的文件名（无需后缀名）

如需传递参数，在文件名后以#依次分割。

例如："快捷购买#附魔石"。

在目标Lua文件中，可使用FormParam[idx]（idx为参数序号，从1开始）来取传递的参数。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GenForm("g_恭贺新春#附魔石") --根据文件名打开Lua窗口并传递参数

--在g_恭贺新春.lua脚本文件中添加如下示例代码用于传递参数
local tGift = serialize(FormParam[1])
dbg("传递的参数为"..tGift)

--在手游45度测试区（区号：151750）中执行，将打开恭贺新春界面并传递参数。

GenForm_3.png

GenForm_2.png
<上一篇:使用form字符串创建Lua窗口下一篇:设置带复选框的MessageBox弹框>
MessageBox2
设置带复选框的MessageBox弹框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-14 00:00:00
此函数作用为设置带复选框的MessageBox弹框。

语法
Luacopy 复制
MessageBox2(
    flag,
    info,
    ok_func,
    text,
    text_color,
    is_esc_close,
    data
)
参数
flag

int

 
弹框的按钮显示

具体请参见弹框按钮样式定义

info

string

 
弹框内容

ok_func

string

 
点击“确定”按钮时回调的脚本函数名

回调函数格式：OnCallBack(flag, data)

flag(bool)：复选框是否为选中状态（true复选框为选中状态，false复选框为非选中状态）

data(string)：预设的回调函数参数

note_icon 备注
此参数输入的内容为函数名（即函数名后不需要加上英文括号“()”）。

text

string

 
复选框中显示的文本内容

默认为“下次不再提示”

text_color

string

 
复选框中文字的颜色

默认为白色

is_esc_close

bool

 
true按Esc键会关闭窗口

false按Esc键不会关闭窗口

data

string

 
预设的回调函数参数

点击“确定”按钮时，会传递到回调函数中。

note_icon 备注
“确定”按钮的名称可在MessageBox.lua脚本文件中自定义。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MessageBox2(0, "测试", "test", "打开提示", "red", true, "123")

function test(flag,data)
    if flag then
        dbg("复选框已选中")
        dbg("data参数："..data)
    else
        dbg("复选框未选中")
    end
end

--此示例代码运行成功如下图所示。

MessageBox2_3.png

--成功运行后，点击勾选复选框再点击“确定”按钮，控制台中会输出如下内容。

MessageBox2.png

MessageBox2_2.png
<上一篇:根据文件名打开Lua窗口下一篇:设置MessageBox弹框>
MessageBox
设置MessageBox弹框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-14 00:00:00
此函数作用为设置MessageBox弹框。

语法
Luacopy 复制
MessageBox(
    flag,
    info,
    ok_script,
    close_script,
    is_esc_close
)
参数
flag

int

 
弹框的按钮显示

具体请参见弹框按钮样式定义

info

string

 
弹框内容

ok_script

string

点击“确定”按钮时回调的脚本函数名

close_script

string

 
关闭弹框或者点击“取消”按钮时回调的脚本函数名

note_icon 备注
ok_script和close_script参数输入的内容为字符串脚本名（即函数名后需要加上英文括号“()”）。

“确定”和“取消”按钮的名称可在MessageBox.lua脚本文件中自定义。

is_esc_close

bool

 
true按Esc键会关闭窗口

false按Esc键不会关闭窗口

note_icon 备注
此参数在手游中不生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
MessageBox(1, "测试", "test1()", "test2()", true)

--点击“确定”按钮时回调的脚本函数
function test1()
   dbg("点击“确定”按钮")
end
--关闭弹窗或者点击“取消”按钮时回调的脚本函数
function test2()
   dbg("关闭弹窗或者点击“取消”按钮")
end

--此示例代码运行成功如下图所示。

MessageBox.png

--成功运行后，点击“确定”按钮，控制台中会输出如下内容。

MessageBox_2.png

--成功运行后，关闭弹窗或者点击“取消”按钮，控制台中会输出如下内容。

MessageBox_3.png
<上一篇:设置带复选框的MessageBox弹框下一篇:挂接逻辑事件>
RegisterUIEvent
挂接逻辑事件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-14 00:00:00
此函数作用为挂接逻辑事件。

note_icon 备注
当有逻辑事件触发时，会自动回调指定的脚本函数，每个逻辑事件可以注册多个脚本函数。

语法
Luacopy 复制
RegisterUIEvent(
    EventID,
    _Tag,
    _EventFunc
)
参数
EventID

int

 
游戏逻辑事件ID

具体请参见逻辑事件页面

_Tag

string

 
事件描述

_EventFunc

string

 
回调函数的名称

此参数的填写格式有两种：

1.Lua函数对象（可参考挂接方法一）；

2.Lua函数名的字符串（可参考挂接方法二）。

note_icon 备注
例如：注册打开背包事件（LUA_EVENT_OPENPAKAGEGUI），当玩家打开背包时触发注册的脚本回调函数。

function OnOpenPackage() --预先定义好打开背包时要执行的脚本回调函数

    msg("打开背包")

end

挂接方法一： RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "玩家打开包裹打印消息", OnOpenPackage)

挂接方法二： RegisterUIEvent(LUA_EVENT_OPENPAKAGEGUI, "玩家打开包裹打印消息", "OnOpenPackage")

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
RegisterUIEvent(186,"PlayerDisappear",PlayerDisappear) --挂接打开背包的逻辑事件

function PlayerDisappear()
    local PlayerDisappearGUID = LuaParam[1]
    UI:Lua_ShowTypeMsg(1,"消失玩家的GUID为:"..PlayerDisappearGUID)
end

--此示例代码运行成功如下图所示。

RegisterUIEvent.png
<上一篇:设置MessageBox弹框下一篇:清除逻辑事件>
UnRegisterUIEvent
清除逻辑事件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-14 00:00:00
此函数清除指定逻辑事件。

语法
Luacopy 复制
UnRegisterUIEvent(
    EventID,
    _Tag
)
参数
EventID

int

 
游戏逻辑事件ID

具体请参见逻辑事件页面

_Tag

string

 
事件描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
RegisterUIEvent(186,"PlayerDisappear",PlayerDisappear) --挂接打开背包的逻辑事件
UnRegisterUIEvent(186,"PlayerDisappear") --清除打开背包的逻辑事件

function PlayerDisappear()
    local PlayerDisappearGUID = LuaParam[1]
    UI:Lua_ShowTypeMsg(1,"消失玩家的GUID为:"..PlayerDisappearGUID)
end

--此示例代码运行成功后，不再执行指定的回调函数。
<上一篇:挂接逻辑事件
SetFlyingSwordConfig
初始化飞剑配置

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-09-09 14:36:00
此函数初始化飞剑配置。

语法
Luacopy 复制
CL:SetFlyingSwordConfig(
    config
)
参数
config

table

 
飞剑相关配置，格式如下：

Luacopy 复制
local sword_config = {
  -------------------------------------------
  --- 通用配置
  general = {
      debug = false, --调试模式
      offset_x = 0, -- 轨道中心偏移x([0,0]在玩家脚底)
      offset_y = -50 -- 轨道中心偏移y(Y轴方向朝下)
  },
  -------------------------------------------
  --- 待机旋转配置
  idle = {{
          rx = 120, -- 椭圆半径
          ry = 80, -- 椭圆半径
          speed = 120, -- 旋转角速度(角度/秒)
          capacity = 4 -- 当前椭圆轨道的飞剑容量(超出后，自动切到下一个轨道)
      }, -- 椭圆轨道0
      {
          rx = 160,
          ry = 100,
          speed = 120,
          capacity = 0 -- 0表示容量无限
      } -- 椭圆轨道1
      -- 依次类推
  },
  --------------------------------------------
  --- 攻击配置
  attack = {
      attack_duration = 400, -- 攻击持续时间(毫秒)
      attack_wait_duration = 700 -- 攻击后等待时间(毫秒)
  },
  -------------------------------------------
  --- 飞剑配置
  sword = {{
          image = 1410000000, -- 飞剑资源图片image
          scale = 1.0, -- 飞剑资源图片缩放
          anchor={0.5, 0.5}, --飞剑锚点
          auto_scale = true, -- 是否根据旋转角度自动缩放
          hit_magic = 100002950 -- 击中特效
      }, -- 飞剑0
      {
          image = 1410100000,
          scale = 1.0,
          anchor={0.5, 0.5},
          auto_scale = true,
          hit_magic = 100002950
      }, -- 飞剑1
      {
          image = 1410200000,
          scale = 1.0,
          anchor={0.5, 0.5},
          auto_scale = true,
          hit_magic = 100002950
      }, -- 飞剑2
      {
          image = 1410300000,
          scale = 1.0,
          auto_scale = true,
          anchor={0.5, 0.5},
          hit_magic = 100002950
      } -- 飞剑3
      -- 依次类推。注：如果飞剑索引超出飞剑配置，将循环使用飞剑配置
  }
}

-- 锚点anchor写法支持：
anchor = 0.5
anchor = {0.5}
anchor = {0.5, 0.5}
anchor = {x=0.5, y=0.5}
anchor = "middle" --middle|left|right|top|bottom|left_top|left_bottom|right_top|right_bottom
anchor = {"middle"}
anchor = {"middle", "middle"} --x=middle|left|right, y=middle|top|bottom
anchor = {x="middle", y="middle"}
-- 全部等同于 {0.5, 0.5}
点击飞剑功能了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local sword_config = {
    -------------------------------------------
    --- 待机旋转配置
    idle = {{
            rx = 120, -- 椭圆半径
            ry = 80, -- 椭圆半径
            speed = 120, -- 旋转角速度(角度/秒)
            capacity = 3 -- 当前椭圆轨道的飞剑容量(超出后，自动切到下一个轨道)
        }, -- 椭圆轨道0
        {
            rx = 200, -- 椭圆半径
            ry = 660, -- 椭圆半径
            speed = 120, -- 旋转角速度(角度/秒)
            capacity = 2 -- 当前椭圆轨道的飞剑容量(超出后，自动切到下一个轨道)
        },
        {
            rx = 360,
            ry = 200,
            speed = 10,
            capacity = 0 -- 0表示容量无限，建议最后一个椭圆轨道设置为0
        } -- 椭圆轨道1
        -- 依次类推
    },
    --------------------------------------------
    --- 攻击配置
    attack = {
        attack_duration = 400, -- 攻击持续时间(毫秒)
        attack_wait_duration = 700 -- 攻击后等待时间(毫秒)
    },
    -------------------------------------------
    --- 飞剑配置
    sword = {{
            image = 1410000000, -- 飞剑资源图片image
            hit_magic = 100002950 -- 击中特效（Magic.xml的特效模板ID）
        }, -- 飞剑0
        {
            image = 1410100000,
            hit_magic = 100002950
        }, -- 飞剑1
        {
            image = 1410200000,
            hit_magic = 100002950
        }, -- 飞剑2
        {
            image = 1410300000,
            hit_magic = 100002950
        } ,-- 飞剑3
        {
            image = 1410100000,
            hit_magic = 100002950
        }
        -- 依次类推。注：如果飞剑索引超出飞剑配置，将循环使用飞剑配置
    }
}

CL:SetFlyingSwordConfig(sword_config)

--设置三个飞剑轨道，五个飞剑配置，依次设置开启五、二、一把飞剑以及设置四个飞剑配置，开启五把飞剑。

--五飞剑：

SetFlyingSwordConfig.png

--二飞剑：

SetFlyingSwordConfig_2.png

--一飞剑：

SetFlyingSwordConfig_3.png

--五飞剑但客户端只配置了四个，显示循环调用客户端配置：

SetFlyingSwordConfig_4.png


--当开启调试模式时，设置轨道向右上方偏移，设置飞剑0锚点为{0.5,0.4}，飞剑1缩放为3并根据旋转角度自动缩放，飞剑2不设置缩放其他设置同飞剑1一致，飞剑3其他设置同飞剑1一致，但不根据旋转角度自动缩放。
local sword_config = {
    -------------------------------------------
    --- 通用配置
    general = {
        debug = true, --调试模式
        offset_x = 100, -- 轨道中心偏移x([0,0]在玩家脚底)
        offset_y = -100 -- 轨道中心偏移y(Y轴方向朝下)
    },
    -------------------------------------------
    --- 待机旋转配置
    idle = {{
            rx = 20, -- 椭圆半径
            ry = 120, -- 椭圆半径
            speed = 120, -- 旋转角速度(角度/秒)
            capacity = 2 -- 当前椭圆轨道的飞剑容量(超出后，自动切到下一个轨道)
        }, -- 椭圆轨道0
        {
            rx = 160,
            ry = 100,
            speed = 120,
            capacity = 0 -- 0表示容量无限
        } -- 椭圆轨道1
        -- 依次类推
    },
    --------------------------------------------
    --- 攻击配置
    attack = {
        attack_duration = 400, -- 攻击持续时间(毫秒)
        attack_wait_duration = 700 -- 攻击后等待时间(毫秒)
    },
    -------------------------------------------
    --- 飞剑配置
    sword = {{
            image = 1410000000, -- 飞剑资源图片image
            scale = 1.0, -- 飞剑资源图片缩放
            anchor={0.5,0.4}, --飞剑锚点
            auto_scale = true, -- 是否根据旋转角度自动缩放
            hit_magic = 100002950 -- 击中特效
        }, -- 飞剑0
        {
            image = 1410100000,
            scale = 3.0,
            anchor={0.5, 0.5},
            auto_scale = true,
            hit_magic = 100002950
        }, -- 飞剑1
        {
            image = 1410200000,
            scale = 1.0,
            anchor={0.5, 0.5},
            auto_scale = false,
            hit_magic = 100002950
        }, -- 飞剑2
        {
            image = 1410100000,
            scale = 3.0,
            auto_scale = false,
            anchor={0.5, 0.5},
            hit_magic = 100002950
        } -- 飞剑3
        -- 依次类推。注：如果飞剑索引超出飞剑配置，将循环使用飞剑配置
    }
}
CL:SetFlyingSwordConfig(sword_config)

--玩家自身视角：

SetFlyingSwordConfig_5.png

--其他玩家视角：

SetFlyingSwordConfig_6.png
下一篇:飞剑动态配置>
UpdateFlyingSwordConfig
飞剑动态配置

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-09-09 14:36:00
此函数作用为飞剑动态配置。

note_icon 备注
与CL:SetFlyingSwordConfig不同，此函数可以在飞剑运行期间动态配置。

语法
Luacopy 复制
CL:UpdateFlyingSwordConfig(
    config
)
参数
config

table

 
飞剑动态配置，格式如下：

Luacopy 复制
config = {
    hide_other_swords = false, --是否隐藏他人飞剑（仅关闭渲染，不影响飞剑运行）【默认显示】
    stop_auto_attack = false, --是否关闭飞剑的自动攻击功能（仅保留待机状态）【默认开启】
}
点击飞剑功能了解更多信息。

返回值
bool

 
true更新成功

false更新失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
CL:UpdateFlyingSwordConfig({hide_other_swords=false})
CL:UpdateFlyingSwordConfig({stop_auto_attack=false})
CL:UpdateFlyingSwordConfig({stop_auto_attack=false, hide_other_swords=false})
<上一篇:初始化飞剑配置




