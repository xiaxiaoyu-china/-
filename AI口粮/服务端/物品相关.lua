AddItem
给玩家添加物品

更新时间：2022-03-30 00:00:00
此函数给玩家添加物品。

note_icon 备注
如果玩家背包已满，添加的物品就会掉落在场景中。

若掉落在场景中的物品为绑定物品，则该物品只能被玩家自己拾取。

语法
Luacopy 复制
lualib:AddItem(
    strPlayer,
    strItemKey,
    wCount,
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

wCount

int32

 
添加的数量

bBind

bool

 
是否为绑定物品

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
lualib:AddItem(player,"大角羊",300,false,"添加物品",player)

--此示例代码运行成功如下图所示。

AddItem_2.png

AddItem.png
下一篇:给玩家添加单个物品>
AddSingleItem
给玩家添加单个物品

更新时间：2022-08-24 00:00:00
此函数给玩家添加单个物品。

caution_icon 注意
调用此接口时，必须保证背包中至少有一个空格，否则会添加失败。

语法
Luacopy 复制
lualib:AddSingleItem(
    strPlayer,
    strItemKey,
    wCount,
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

wCount

int32

 
添加的数量

note_icon 备注
添加的数量不能超过该物品的最大堆叠数量，否则添加失败。

bBind

uint8

 
物品的绑定类型

0非绑定

1绑定

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
function testprint(npc, player)
    local i = lualib:AddSingleItem(player,"大角羊",1,0,"添加物品","系统")
    lualib:Warn("返回值:"..i)
end

--此示例代码运行前效果如下图所示。

AddSingleItem_2.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

AddSingleItem_3.png

AddSingleItem.png
<上一篇:给玩家添加物品下一篇:获取玩家所有物品的GUID列表>
AllItemList
获取玩家所有物品的GUID列表

更新时间：2022-03-30 00:00:00
此函数获取玩家所有物品的GUID列表。

语法
Luacopy 复制
lualib:AllItemList(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
所有物品的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local i = lualib:AllItemList(player) --获取玩家所有物品的GUID列表
lualib:Warn("返回值:"..serialize(i))

--此示例代码运行成功如下图所示。

AllItemList.png
<上一篇:给玩家添加单个物品下一篇:让玩家对某目标使用道具或道具所配置的技能>
ApplyItemTarget
让玩家对某目标使用道具或道具所配置的技能

更新时间：2022-04-29 00:00:00
此函数让玩家对某目标使用道具或道具所配置的技能。

若要使用此接口对某目标使用道具所配置的技能，则需要将“是否对玩家释放”选项配置为“是”。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→技能模板表→基础配置→释放方式配置区域。

ApplyItemTarget_3.png
note_icon 备注
玩家只能使用玩家自己背包中的道具。

语法
Luacopy 复制
lualib:ApplyItemTarget(
    strPlayer,
    strItemInfo,
    bInstance,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

strItemInfo

string

 
物品的索引名（KeyName）或者物品的GUID

bInstance

bool

 
参数strItemInfo的类型

true物品的GUID

false物品的索引名（KeyName）

strTarget

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
lualib:ApplyItemTarget(player,"法师100神衣服(女)",false,player) --对玩家自己使用物品“法师100神衣服(女)”

--此示例代码运行前效果如下图所示。

ApplyItemTarget.png

--此示例代码运行后效果如下图所示。

ApplyItemTarget_2.png
<上一篇:获取玩家所有物品的GUID列表下一篇:让玩家对附近某坐标点使用道具>
ApplyItemXY
让玩家对附近某坐标点使用道具

更新时间：2022-04-29 00:00:00
此函数让玩家对附近某坐标点使用指定道具所配置的技能。

若要使用此接口对附近某坐标点使用指定道具所配置的技能，则需要将“是否对玩家释放”选项配置为“是”。

对应选项的访问路径为：游戏工具平台→游戏配置→技能→技能模板表→基础配置→释放方式配置区域。

ApplyItemTarget_3.png
note_icon 备注
玩家只能使用玩家自己背包中的道具。

语法
Luacopy 复制
lualib:ApplyItemXY(
    strPlayer,
    strItemInfo,
    bInstance,
    wX,
    wY
)

参数
strPlayer

string

 
玩家角色的GUID

strItemInfo

string

 
物品的索引名（KeyName）或者物品的GUID

bInstance

bool

 
参数strItemInfo的类型

true物品的GUID

false物品的索引名（KeyName）

wX

uint16

 
指定点在当前地图上的X坐标

wY

uint16

 
指定点在当前地图上的Y坐标

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：玩家角色当前坐标位置为（247,249）。
lualib:ApplyItemXY(player,"超级回阳水测试",false,250,250) --让玩家对（250,250）坐标使用道具“超级回阳水测试”所配置的技能

--此示例代码运行成功如下图所示。

ApplyItemXY.png
<上一篇:让玩家对某目标使用道具或道具所配置的技能下一篇:让玩家使用道具>
ApplyItem
让玩家使用道具

更新时间：2022-03-30 00:00:00
此函数让玩家对自己使用道具。

note_icon 备注
玩家只能使用玩家自己背包中的道具。

语法
Luacopy 复制
lualib:ApplyItem(
    strPlayer,
    strItemInfo,
    bInstance
)

参数
strPlayer

string

 
玩家角色的GUID

strItemInfo

string

 
物品的索引名（KeyName）或者物品的GUID

bInstance

bool

 
参数strItemInfo的类型

true物品的GUID

false物品的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ApplyItem(player,"法师100神衣服(女)",false) --对玩家自己使用物品“法师100神衣服(女)”

--此示例代码运行前效果如下图所示。

ApplyItemTarget.png

--此示例代码运行后效果如下图所示。

ApplyItemTarget_2.png
<上一篇:让玩家对附近某坐标点使用道具下一篇:根据怪物的索引名计算掉落物品的概率>
CalcDropsByMonsterKeyname
根据怪物的索引名计算掉落物品的概率

更新时间：2022-03-30 00:00:00
此函数根据怪物的索引名（KeyName）计算杀死怪物后的掉落物品的概率，并且支持返回掉落物品的索引名以及数量。

当掉落表中的“组随机类型”选项的配置为“随机选，每组都有被选中的机会”时，组掉落概率 = 组概率分子/组概率分母 * 掉落概率/100 * 掉落因子/10000（掉落概率可由此接口进行设置，而掉落因子可直接从怪物模板表中获取）。

当掉落表中的“物品随机类型”选项的配置为“随机选，每组都有被选中的机会”时，物品掉落概率 = 分子/分母 * 掉落概率/100。

“组随机类型”选项和“物品随机类型”选项的访问路径为：游戏工具平台→游戏配置→怪物→掉落表（明细）→掉落表编辑区域。

CalcDropsWithFactor_3.png
怪物模板表中掉落因子相关选项的访问路径为：游戏工具平台→游戏配置→怪物→怪物模板表→产出区域，以“掉落索引1组概率因子”选项为例。

CalcDropsWithFactor_2.png
语法
Luacopy 复制
lualib:CalcDropsByMonsterKeyname(
    strMonsterKeyname,
    wPercent
)
参数
strMonsterKeyname

string

 
怪物的索引名（KeyName）

wPercent

uint16

 
掉落概率（按百分比算）

100代表正常掉落

返回值
table

 
掉落物品的索引名及数量

存储在lua表中

返回的table格式为{["物品1索引名"] = 物品1数量, ["物品2索引名"] = 物品2数量}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster_drops = lualib:CalcDropsByMonsterKeyname("魔礼青", 100)
for k,v in pairs(monster_drops) do
    lualib:SysWarnMsg(player, "掉落物品 "..k.." 的数量为 "..v)
end

--此示例代码运行成功如下图所示。

CalcDropsByMonsterKeyname
<上一篇:让玩家使用道具下一篇:根据掉落索引计算掉落物品的概率（扩展）>
CalcDropsEx
根据掉落索引计算掉落物品的概率（扩展）

更新时间：2022-03-30 00:00:00
此函数根据掉落索引计算掉落物品的概率，并且支持返回掉落物品的索引名以及数量。

当掉落表中的“组随机类型”选项的配置为“随机选，每组都有被选中的机会”时，组掉落概率 = 组概率分子/组概率分母 * 掉落概率/100 * 掉落因子/10000（掉落概率可由此接口进行设置，而掉落因子默认为10000）。

当掉落表中的“物品随机类型”选项的配置为“随机选，每组都有被选中的机会”时，物品掉落概率 = 分子/分母 * 掉落概率/100。

相关选项的访问路径为：游戏工具平台→游戏配置→怪物→掉落表（明细）→掉落表编辑区域。

CalcDropsWithFactor_3.png
语法
Luacopy 复制
lualib:CalcDropsEx(
    strIndex,
    wPercent
)
参数
strIndex

string

 
掉落索引名称

wPercent

uint16

 
掉落概率（按百分比算）

100代表正常掉落

返回值
table

 
掉落物品的索引名及数量

存储在lua表中

返回的table形式为{["物品1索引名"] = 物品1数量, ["物品2索引名"] = 物品2数量}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ret = lualib:CalcDropsEx("20阶", 100)
for key, amount in pairs(ret) do
    lualib:SysWarnMsg(player, key..":"..amount)
end

--此示例代码运行成功如下图所示。

CalcDropsEx.png
<上一篇:根据怪物的索引名计算掉落物品的概率下一篇:根据掉落索引和掉落因子计算掉落物品的概率>
CalcDropsWithFactor
根据掉落索引和掉落因子计算掉落物品的概率

更新时间：2022-03-30 00:00:00
此函数根据掉落索引和掉落因子计算掉落物品的概率，并且支持返回掉落物品的索引名以及数量。

当掉落表中的“组随机类型”选项的配置为“随机选，每组都有被选中的机会”时，组掉落概率 = 组概率分子/组概率分母 * 掉落概率/100 * 掉落因子/10000。

当掉落表中的“物品随机类型”选项的配置为“随机选，每组都有被选中的机会”时，物品掉落概率 = 分子/分母 * 掉落概率/100。

相关选项的访问路径为：游戏工具平台→游戏配置→怪物→掉落表（明细）→掉落表编辑区域。

CalcDropsWithFactor_3.png
语法
Luacopy 复制
lualib:CalcDropsWithFactor(
    strIndex,
    wPercent,
    factor
)
参数
strIndex

string

 
掉落索引名称

wPercent

uint16

 
掉落概率（按百分比算）

100代表正常掉落

factor

uint16

 
掉落因子

返回值
table

 
掉落物品的索引名及数量

存储在lua表中

返回的table形式为{["物品1索引名"] = 物品1数量, ["物品2索引名"] = 物品2数量}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local drops = lualib:CalcDropsWithFactor("东临城一级普通怪", 100, 10000)

for k,v in pairs(drops) do
    lualib:SysWarnMsg(player, "掉落物品 "..k.." 数量为 "..v)
end

--此示例代码运行成功如下图所示。

CalcDropsWithFactor.png
<上一篇:根据掉落索引计算掉落物品的概率（扩展）下一篇:根据掉落索引计算掉落物品的概率>
CalcDrops
根据掉落索引计算掉落物品的概率

更新时间：2022-03-30 00:00:00
此函数根据掉落索引计算掉落物品的概率，并且支持返回掉落物品的索引名。

当掉落表中的“组随机类型”选项的配置为“随机选，每组都有被选中的机会”时，组掉落概率 = 组概率分子/组概率分母 * 掉落概率/100 * 掉落因子/10000（掉落概率可由此接口进行设置，而掉落因子默认为10000）。

当掉落表中的“物品随机类型”选项的配置为“随机选，每组都有被选中的机会”时，物品掉落概率 = 分子/分母 * 掉落概率/100。

相关选项的访问路径为：游戏工具平台→游戏配置→怪物→掉落表（明细）→掉落表编辑区域。

CalcDropsWithFactor_3.png
语法
Luacopy 复制
lualib:CalcDrops(
    strIndex,
    wPercent
)

参数
strIndex

string

 
掉落索引名称

wPercent

uint16

 
掉落概率（按百分比算）

100代表正常掉落

返回值
table

 
掉落物品的索引名

存储在lua表中

返回的table形式为{"物品1索引名", "物品2索引名"}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local table = lualib:CalcDrops("鸡测试掉落",100)
lualib:Warn("返回值:"..serialize(table))

--此示例代码运行成功如下图所示。

CalcDrops.png
<上一篇:根据掉落索引和掉落因子计算掉落物品的概率下一篇:删除玩家物品（扩展）>
DelItemEx
删除玩家物品（扩展）

更新时间：2022-03-30 00:00:00
此函数作用为删除玩家物品。

note_icon 备注
此接口与接口TakeItemEx作用相同。

语法
Luacopy 复制
lualib:DelItemEx(
    strPlayer,
    strItemKey,
    wCount,
    bBind,
    bEquip,
    bBag,
    bWarhouse,
    bAdvWarehouse,
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

 
删除的数量

bBind

uint8

 
物品的绑定类型

0非绑定

1绑定

2绑定/非绑定

bEquip

bool

 
是否判断装备栏

true是

false否

bBag

bool

 
是否判断背包

true是

false否

bWarhouse

bool

 
是否判断仓库

true是

false否

bAdvWarehouse

bool

 
是否判断高级仓库

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

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:DelItemEx(player, "大角羊", 5, 0, true, true, true, true, "删物品：大角羊", player) --删除5个道具“大角羊”

--此示例代码运行前效果如下图所示。

DelItemEx.png

--此示例代码运行后效果如下图所示。

DelItemEx_2.png
<上一篇:根据掉落索引计算掉落物品的概率下一篇:删除玩家物品>
DelItem
删除玩家物品

更新时间：2022-03-30 00:00:00
此函数作用为删除玩家物品。

note_icon 备注
此接口只能删除玩家自己背包中的道具。

语法
Luacopy 复制
lualib:DelItem(
    strPlayer,
    strItemKey,
    iCount,
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

iCount

int32

 
删除的数量

bBind

uint8

 
物品的绑定类型

0非绑定

1绑定

2绑定/非绑定

strDesc

string

 
动作的原因

strTarget

string

 
动作的发起者

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:DelItem(player,"大角羊",1,0,"strDesc",player) --删除道具“大角羊”

--此示例代码运行前效果如下图所示。

DelItem.png

--此示例代码运行后效果如下图所示。

DelItem_2.png
<上一篇:删除玩家物品（扩展）下一篇:批量删除玩家物品>
DelItemsBatch
批量删除玩家物品

更新时间：2022-03-30 00:00:00
此函数作用为批量删除玩家物品。

note_icon 备注
此接口只能删除玩家自己背包中的道具。

语法
Luacopy 复制
lualib:DelItemsBatch(
    strPlayer,
    guids,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

guids

table

 
物品的GUID列表

strDesc

string

 
动作的原因

strTarget

string

 
动作的发起者

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function testprint(npc,player)
    local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
    local GUID2 = lualib:Item_GetBySite(player,23) --获取背包中第二个格子中的物品的GUID
    local guids = {GUID1, GUID2}
    lualib:DelItemsBatch(player,guids,"strDesc",player) --批量删除玩家物品
end

--此示例代码运行前效果如下图所示。

DelItemsBatch.png

--此示例代码运行后效果如下图所示。

DelItemsBatch_2.png
<上一篇:删除玩家物品下一篇:丢弃玩家物品>
DropItem
丢弃玩家物品

更新时间：2022-03-30 00:00:00
此函数作用为丢弃玩家物品。

语法
Luacopy 复制
lualib:DropItem(
    strPlayer,
    strItemInfo,
    bInstance
)

参数
strPlayer

string

 
玩家角色的GUID

strItemInfo

string

 
物品的索引名（KeyName）或者物品的GUID

bInstance

bool

 
参数strItemInfo的类型

true物品的GUID

false物品的索引名（KeyName）

note_icon 备注
当此参数的值为true时，可丢弃玩家包裹中的物品（包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库）；

当此参数的值为false时，只能丢弃玩家背包中的物品。

返回值
bool

 
true丢弃成功

false丢弃失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:DropItem(player,"大角羊",false)

--此示例代码运行成功如下图所示。

DropItem.png
<上一篇:批量删除玩家物品下一篇:给玩家添加绑定物品>
GiveBindItem
给玩家添加绑定物品

更新时间：2022-03-30 00:00:00
此函数给玩家添加绑定物品。

note_icon 备注
如果玩家背包已满，添加的物品就会掉落在场景中，且该物品只能被玩家自己拾取。

语法
Luacopy 复制
lualib:GiveBindItem(
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

 
添加的数量

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
lualib:GiveBindItem(player,"强化石",5,"添加物品",player) --添加5个绑定的“强化石”道具

--此示例代码运行前效果如下图所示。

GiveBindItem.png

--此示例代码运行后效果如下图所示。

GiveBindItem_2.png
<上一篇:丢弃玩家物品下一篇:给玩家添加非绑定物品>
GiveItem
给玩家添加非绑定物品

更新时间：2022-03-30 00:00:00
此函数给玩家添加非绑定物品。

note_icon 备注
如果玩家背包已满，添加的物品就会掉落在场景中。

语法
Luacopy 复制
lualib:GiveItem(
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

 
添加的数量

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
lualib:GiveItem(player,"强化石",5,"添加物品",player) --添加5个非绑定的“强化石”道具

--此示例代码运行前效果如下图所示。

GiveItem_2.png

--此示例代码运行后效果如下图所示。

GiveItem.png
<上一篇:给玩家添加绑定物品下一篇:给玩家添加单个绑定物品>
GiveOneBindItem
给玩家添加单个绑定物品

更新时间：2022-03-30 00:00:00
此函数给玩家添加单个绑定物品。

caution_icon 注意
调用此接口时，必须保证背包中至少有一个空格，否则会添加失败。

语法
Luacopy 复制
lualib:GiveOneBindItem(
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

 
添加的数量

note_icon 备注
添加的数量不能超过该物品的最大堆叠数量，否则会添加失败。

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
lualib:GiveOneBindItem(player,"强化石",5,"添加物品",player) --添加5个绑定的“强化石”道具

--此示例代码运行前效果如下图所示。

GiveBindItem.png

--此示例代码运行后效果如下图所示。

GiveBindItem_2.png
<上一篇:给玩家添加非绑定物品下一篇:给玩家添加单个非绑定物品>
GiveOneItem
给玩家添加单个非绑定物品

更新时间：2022-03-30 00:00:00
此函数给玩家添加单个非绑定物品。

caution_icon 注意
调用此接口时，必须保证背包中至少有一个空格，否则会添加失败。

语法
Luacopy 复制
lualib:GiveOneItem(
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

 
添加的数量

note_icon 备注
添加的数量不能超过该物品的最大堆叠数量，否则会添加失败。

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
lualib:GiveOneItem(player,"强化石",5,"添加物品",player) --添加5个非绑定的“强化石”道具

--此示例代码运行前效果如下图所示。

GiveItem_2.png

--此示例代码运行后效果如下图所示。

GiveItem.png
<上一篇:给玩家添加单个绑定物品下一篇:判断玩家是否拥有道具>
HasItem
判断玩家是否拥有道具

更新时间：2022-03-30 00:00:00
此函数判断玩家是否拥有指定道具。

语法
Luacopy 复制
lualib:HasItem(
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

 
true玩家拥有指定道具

false玩家没有指定道具

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:HasItem(player, "4ar8m2s94ak01") then      
    print("玩家拥有该道具")  
else      
    print("玩家没有该道具")  
end

--此示例代码运行成功如下图所示。

HasItem.png
<上一篇:给玩家添加单个非绑定物品下一篇:判断道具是否在玩家高级仓库中>
InAdvWarehouse
判断道具是否在玩家高级仓库中

更新时间：2022-03-30 00:00:00
此函数判断指定道具是否在玩家高级仓库中。

语法
Luacopy 复制
lualib:InAdvWarehouse(
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

 
true指定道具在玩家高级仓库中

false指定道具不在玩家高级仓库中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:InAdvWarehouse(player, "4ar8m04gvsg1u") then
    lualib:SysMsg_SendWarnMsg(player,"该道具在玩家的高级仓库中")
else
    lualib:SysMsg_SendWarnMsg(player,"该道具不在玩家的高级仓库中")
end

--此示例代码运行成功如下图所示。

InAdvWarehouse.png
<上一篇:判断玩家是否拥有道具下一篇:判断道具是否在玩家装备栏中>
InEquip
判断道具是否在玩家装备栏中

更新时间：2022-03-30 00:00:00
此函数判断指定道具是否在玩家装备栏中。

语法
Luacopy 复制
lualib:InEquip(
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

 
true指定道具在玩家装备栏中

false指定道具不在玩家装备栏中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:InEquip(player, "4ar8m04gvsg51")  then
    lualib:SysMsg_SendWarnMsg(player,"该道具在玩家的装备栏中")
else
    lualib:SysMsg_SendWarnMsg(player,"该道具不在玩家的装备栏中")
end

--此示例代码运行成功如下图所示。

InEquip.png
<上一篇:判断道具是否在玩家高级仓库中下一篇:判断道具是否在玩家仓库中>
InWarehouse
判断道具是否在玩家仓库中

更新时间：2022-03-30 00:00:00
此函数判断道具是否在玩家仓库中。

语法
Luacopy 复制
lualib:InWarehouse(
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

 
true指定道具在玩家仓库中

false指定道具不在玩家仓库中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:InWarehouse(player, "4ar8m3a3bt406")  then
    lualib:SysMsg_SendWarnMsg(player,"该道具在玩家的仓库中")
else
    lualib:SysMsg_SendWarnMsg(player,"该道具不在玩家的仓库中")
end

--此示例代码运行成功如下图所示。

InWarehouse.png
<上一篇:判断道具是否在玩家装备栏中下一篇:根据物品索引名判断是否为地图禁止物品>
IsBanItemByKeyname
根据物品索引名判断是否为地图禁止物品

更新时间：2022-03-30 00:00:00
此函数根据物品的索引名（Keyname）判断是否为地图禁止物品。

语法
Luacopy 复制
lualib:IsBanItemByKeyname(
    keyname,
    strMap
)
参数
keyname

string

 
物品的索引名（Keyname）

strMap

string

 
地图的GUID

返回值
bool

 
true是地图禁止物品

false不是地图禁止物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--此示例代码执行前提：小黑屋禁止使用消耗品，藏妖洞可以使用消耗品。
local map1 = lualib:Map_GetMapGuid("小黑屋")
local map2 = lualib:Map_GetMapGuid("藏妖窟")
if lualib:IsBanItemByKeyname("10000绑定元宝", map1) then
    lualib:SysWarnMsg(player, "小黑屋禁止使用10000绑定元宝")
else
    lualib:SysWarnMsg(player, "小黑屋可以使用10000绑定元宝")
end
if lualib:IsBanItemByKeyname("10000绑定元宝", map2) then
    lualib:SysWarnMsg(player, "藏妖窟禁止使用10000绑定元宝")
else
    lualib:SysWarnMsg(player, "藏妖窟可以使用10000绑定元宝")
end

--此示例代码运行成功如下图所示。

IsBanItemByKeyname.png
<上一篇:判断道具是否在玩家仓库中下一篇:根据物品GUID判断是否为地图禁止物品>
IsBanItem
根据物品GUID判断是否为地图禁止物品

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID判断是否为地图禁止物品。

语法
Luacopy 复制
lualib:IsBanItem(
    strItem,
    strMap
)

参数
strItem

string

 
物品的GUID

strMap

string

 
地图的GUID

返回值
bool

 
true是地图禁止物品

false不是地图禁止物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--此示例代码执行前提：当前地图禁止使用道具“测试毒药”。
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
local w =  lualib:IsBanItem(GUID1,lualib:MapGuid(player)) --根据物品的GUID判断该物品是否为地图禁止物品
lualib:Warn("禁止?:"..tostring(w))

--此示例代码运行成功如下图所示。

IsBanItem.png
<上一篇:根据物品索引名判断是否为地图禁止物品下一篇:生成物品的JSON信息（扩展）>
Item2JsonEx
生成物品的JSON信息（扩展）

更新时间：2022-03-30 00:00:00
此函数根据物品实体信息生成物品的JSON信息，但该物品可以不是玩家包裹中的物品。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item2JsonEx(
    strItem
)
参数
strItem

string

 
物品的GUID

返回值
string

 
执行成功则返回物品的JSON信息

执行失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid =lualib:Map_GenItemEx(lualib:MapGuid(player), lualib:X(player) + 1, lualib:Y(player) + 1, "测试属性", 1, true, 10, player) --在地图上指定位置刷出一个物品
if item_guid == "" then
    print("刷新失败")
end
local itemJson = lualib:Item2JsonEx(item_guid) --生成对应物品的JSON信息
lualib:Warn("该物品的JSON信息为"..itemJson)

--此示例代码运行成功如下图所示。

Item2JsonEx.png
<上一篇:根据物品GUID判断是否为地图禁止物品下一篇:生成物品的JSON信息>
Item2Json
生成物品的JSON信息

更新时间：2022-03-30 00:00:00
此函数根据物品实体信息生成物品的JSON信息，但该物品必须为玩家包裹中的物品。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item2Json(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
string

 
执行成功则返回物品的JSON信息

执行失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid = lualib:Player_GetItemGuid(player,1) --获取玩家武器装备位上的物品的GUID
local itemJson = lualib:Item2Json(item_guid) --生成对应物品的JSON信息

lualib:DelItemEx(player, lualib:KeyName(item_guid), 1, 2, true, false, false, false, "删物品", "") --删除玩家武器装备位上的物品
local item = lualib:Json2ItemEx(player, itemJson, false) --根据物品的JSON信息在地图的指定位置生成原物品
if item ~= "" then
    lualib:SysMsg_SendWarnMsg(player, "道具实体化成功！")
end

--此示例代码运行成功如下图所示。

Json2ItemEx.png
<上一篇:生成物品的JSON信息（扩展）下一篇:获取玩家指定物品的数量（扩展）>
ItemCountEx
获取玩家指定物品的数量（扩展）

更新时间：2022-03-30 00:00:00
此函数获取玩家指定物品的数量，并且可指定物品的绑定类型。

语法
Luacopy 复制
lualib:ItemCountEx(
    strPlayer,
    strItemKey,
    bBindType,
    bEquip,
    bBag,
    bWarhouse,
    bAdvWarehouse
)

参数
strPlayer

string

 
玩家角色的GUID

strItemKey

string

 
物品的索引名（KeyName）

bBindType

uint8

 
绑定类型

0必须非绑定

1必须绑定

2绑定/非绑定

bEquip

bool

 
是否判断装备栏

true是

false否

bBag

bool

 
是否判断背包

true是

false否

bWarhouse

bool

 
是否判断仓库

true是

false否

bAdvWarehouse

bool

 
是否判断高级仓库

true是

false否

返回值
int32

 
执行成功则返回符合条件的物品数量

执行失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

--第一个背包格子中的物品为非绑定物品，其余背包格子中的物品为绑定物品。

ItemCount.png
lualib:Warn("物品“小飞鞋”的数量："..lualib:ItemCount(player,"小飞鞋"))
lualib:Warn("绑定的“小飞鞋”的数量："..lualib:ItemCountEx(player,"小飞鞋",1,false,true,false,false))

--此示例代码运行成功如下图所示。

ItemCount_2.png
<上一篇:生成物品的JSON信息下一篇:获取玩家指定物品的数量>
ItemCount
获取玩家指定物品的数量

更新时间：2022-03-30 00:00:00
此函数获取玩家指定物品的数量，只判断玩家背包中的物品并且忽略物品的绑定类型。

语法
Luacopy 复制
lualib:ItemCount(
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

 
执行成功则返回符合条件的物品数量

执行失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

--第一个背包格子中的物品为非绑定物品，其余背包格子中的物品为绑定物品。

ItemCount.png
lualib:Warn("物品“小飞鞋”的数量："..lualib:ItemCount(player,"小飞鞋"))
lualib:Warn("绑定的“小飞鞋”的数量："..lualib:ItemCountEx(player,"小飞鞋",1,false,true,false,false))

--此示例代码运行成功如下图所示。

ItemCount_2.png
<上一篇:获取玩家指定物品的数量（扩展）下一篇:获取物品的掉落冻结时间>
ItemDropFreezeTime
获取物品的掉落冻结时间

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取物品的掉落冻结时间。

note_icon 备注
某物品掉落在场景中且在掉落冻结时间内时，该物品不可以被他人拾取。

语法
Luacopy 复制
lualib:ItemDropFreezeTime(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
uint32

 
物品的掉落冻结时间

单位为秒（s）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第1个格子中的物品的GUID
local FreezeTime =lualib:ItemDropFreezeTime(GUID) --获取修改前该物品的掉落冻结时间
lualib:Warn("修改前该物品的掉落冻结时间为："..FreezeTime)

lualib:SetItemDropFreezeTime(GUID,100) --修改该物品的掉落冻结时间

local FreezeTime2 =lualib:ItemDropFreezeTime(GUID) --获取修改后该物品的掉落冻结时间
lualib:Warn("修改后该物品的掉落冻结时间为："..FreezeTime2)

--此示例代码运行成功如下图所示。

ItemDropFreezeTime.png
<上一篇:获取玩家指定物品的数量下一篇:获取物品的掉落源>
ItemDropHost
获取物品的掉落源

更新时间：2022-03-30 00:00:00
此函数获取物品的掉落源的GUID。

语法
Luacopy 复制
lualib:ItemDropHost(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
string

 
掉落源的GUID

掉落源可以为玩家、怪物、地图或者系统。

note_icon 备注
当掉落源为系统时，返回的掉落源的GUID为空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：玩家东方茉樱主动将物品丢弃到场景中。
local GUID = lualib:ItemDropHost("4ar8m3gutmg0j") --获取物品的掉落源的GUID
lualib:Warn("该物品掉落源："..lualib:Guid2Name(GUID)) --根据GUID获取丢弃该物品的掉落源的名称 

--此示例代码运行成功如下图所示。

ItemDropHost.png
<上一篇:获取物品的掉落冻结时间下一篇:获取物品的掉落时间>
ItemDropTime
获取物品的掉落时间

更新时间：2022-03-30 00:00:00
此函数获取物品的掉落时间。

参考 Time2Str

语法
Luacopy 复制
lualib:ItemDropTime(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
uint32

 
物品掉落时间的时间戳

note_icon 备注
返回值的格式为UTC时间戳，可以使用接口lualib:Time2Str将获取的结果转换为字符串格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("该物品的掉落时间："..lualib:Time2Str("%Y-%m-%d %H:%M:%S", lualib:ItemDropTime("4ar8m3gutmg0j"))) --获取物品的掉落时间

--此示例代码运行成功如下图所示。

ItemDropTime.png
<上一篇:获取物品的掉落源下一篇:获取物品的掉落类型>
ItemDropType
获取物品的掉落类型

更新时间：2022-07-22 00:00:00
此函数获取物品的掉落类型。

语法
Luacopy 复制
lualib:ItemDropType(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
int

 
物品掉落类型

0无掉落

1玩家主动丢弃

2玩家死亡掉落

3怪物死亡掉落

4脚本掉落

5地图掉落（例如：使用接口Map_GenItem在地图上生成物品的操作）

6地图主动掉落（例如：背包已满时使用接口AddItem添加物品的操作）

7物品掉落后归属于指定玩家（目前此类型仅支持使用接口SetItemDropTypeWithHost进行设置）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：玩家东方茉樱主动将物品丢弃到场景中。
lualib:Warn("该掉落物品的类型："..lualib:ItemDropType("4ar8m3gutmg0j")) --获取物品的掉落类型

--此示例代码运行成功如下图所示。

ItemDropType.png
<上一篇:获取物品的掉落时间下一篇:根据物品的索引名获取物品的ID>
ItemKey2ID
根据物品的索引名获取物品的ID

更新时间：2022-03-30 00:00:00
此函数根据物品的索引名（KeyName）获取物品的ID。

语法
Luacopy 复制
lualib:ItemKey2ID(
    strItemKey
)

参数
strItemKey

string

 
物品的索引名（KeyName）

返回值
uint32

 
执行成功则返回物品的ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

ItemKey2ID.png
local i = lualib:ItemKey2ID("大角羊") --获取物品“大角羊”的ID
lualib:Warn("物品ID返回值:"..i)

--此示例代码运行成功如下图所示。

ItemKey2ID_2.png
<上一篇:获取物品的掉落类型下一篇:获取物品的归属者的GUID>
ItemRole
获取物品的归属者的GUID

更新时间：2022-03-30 00:00:00
此函数获取物品的归属者的GUID。

参考 Item_GetRole

语法
Luacopy 复制
lualib:ItemRole(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
string

 
若物品有归属（包括打怪之后的掉落物品的归属），则返回物品归属者的GUID；

若物品无归属或物品不存在，则返回空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("物品归属者的GUID："..lualib:ItemRole("4ar8m3gutmg0j"))

--此示例代码运行成功如下图所示。

ItemRole.png
<上一篇:根据物品的索引名获取物品的ID下一篇:修改物品的名称>
Item_ChangeName
修改物品的名称

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID修改物品的名称。

语法
Luacopy 复制
lualib:Item_ChangeName(
    strPlayer,
    strItem,
    strName
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

strName

string

 
物品的新名字

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Item_ChangeName("",GUID1,"大角羊（改）") --修改物品的名称

--此示例代码运行前效果如下图所示。

Item_ChangeName.png

--此示例代码运行后效果如下图所示。

Item_ChangeName_2.png

<上一篇:获取物品的归属者的GUID下一篇:获取物品的配置表结构>
Item_DataRow
获取物品的配置表结构

更新时间：2022-05-05 00:00:00
此函数根据物品的索引名（KeyName）获取该物品的配置表结构。

语法
Luacopy 复制
lualib:Item_DataRow(
    strItemKey
)

参数
strItemKey

string

 
物品的索引名（KeyName）

返回值
table

 
物品的配置表结构

其定义请参见Item模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local i = lualib:Item_DataRow("火麒麟") --获取物品“火麒麟”的配置表结构
lualib:Warn("返回值:"..serialize(i))

--此示例代码运行成功如下图所示（截取部分）。

Item_DataRow.png
<上一篇:修改物品的名称下一篇:销毁物品>
Item_Destroy
销毁物品

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID销毁物品。

note_icon 备注
此接口只能销毁玩家包裹中的物品。

此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_Destroy(
    strPlayer,
    strItem,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

strDesc

string

 
销毁原因

strTarget

string

 
销毁动作的发起者

返回值
bool

 
true销毁成功

false销毁失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Item_Destroy("",GUID1,"销毁物品",player) --销毁该物品

--此示例代码运行前效果如下图所示。

Item_Destroy.png

--此示例代码运行后效果如下图所示。

Item_Destroy_2.png
<上一篇:获取物品的配置表结构下一篇:根据物品GUID取得该物品的幸运诅咒值总和>
Item_GetAllLuckCurse
根据物品GUID取得该物品的幸运诅咒值总和

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID取得该物品的幸运诅咒值总和，包括模板配置、动态属性、装备品质属性、装备精炼属性等贡献的幸运诅咒值。

语法
Luacopy 复制
lualib:Item_GetAllLuckCurse(
    strItem
)
参数
strItem

string

 
物品的GUID

返回值
int32

 
幸运诅咒值总和

正数幸运值

负数诅咒值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid = lualib:Item_GetBySite(player, 1) --获取物品GUID
lualib:SetDynamicAttr(item_guid, 0, 50, 10) --设置对应物品的幸运诅咒值为10
lualib:Equip_SetQualProp(player, item_guid, 0, 50, 20) --设置装备的第一条品质属性幸运诅咒值为20
lualib:Equip_SetRefineProp(player, item_guid, 50, -50) --设置装备的精炼属性的幸运诅咒值为-50
lualib:SysMsg_SendWarnMsg(player, "幸运诅咒值为"..lualib:Item_GetAllLuckCurse(item_guid)) --根据物品GUID获取该物品的幸运诅咒值总和

--此示例代码运行成功如下图所示。

Item_GetAllLuckCurse.png
<上一篇:销毁物品下一篇:获取物品的堆叠数量>
Item_GetAmount
获取物品的堆叠数量

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取该物品的堆叠数量。

语法
Luacopy 复制
lualib:Item_GetAmount(
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

 
物品的GUID

返回值
int32

 
获取成功则返回物品的堆叠数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,23) --获取背包中第二个格子中的物品的GUID
lualib:Warn("修改前该物品的堆叠数量："..lualib:Item_GetAmount("",GUID)) --获取修改前该物品的堆叠数量

lualib:Item_SetAmount("",GUID,10) --设置该物品的堆叠数量为10

lualib:Warn("修改后该物品的堆叠数量："..lualib:Item_GetAmount("",GUID)) --获取修改后该物品的堆叠数量

--此示例代码运行前效果如下图所示。

Item_GetAmount.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Item_GetAmount_3.png

Item_GetAmount_2.png
<上一篇:根据物品GUID取得该物品的幸运诅咒值总和下一篇:根据装备位获取物品的GUID>
Item_GetBySite
根据装备位获取物品的GUID

更新时间：2022-03-30 00:00:00
此函数根据玩家包裹中的物品的装备位获取物品的GUID。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_GetBySite(
    strPlayer,
    wSite
)

参数
strPlayer

string

 
玩家角色的GUID

wSite

uint16

 
物品的装备位

具体请参见角色装备位类型定义

返回值
string

 
物品存在则返回物品的GUID

物品不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Warn("该物品的GUID："..GUID1)

--此示例代码运行成功如下图所示。

Item_GetBySite.png
<上一篇:获取物品的堆叠数量下一篇:获取物品的当前耐久值>
Item_GetDurability
获取物品的当前耐久值

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取物品的当前耐久值。

语法
Luacopy 复制
lualib:Item_GetDurability(
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

 
物品的GUID

返回值
int32

 
获取成功则返回物品的当前耐久值

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Warn("修改前该物品的当前耐久值："..lualib:Item_GetDurability("",GUID)) --获取修改前该物品的当前耐久值

lualib:Item_SetDurability("",GUID,3000) --设置该物品的当前耐久值为3000

lualib:Warn("修改后该物品的当前耐久值："..lualib:Item_GetDurability("",GUID)) --获取修改后该物品的当前耐久值

--此示例代码运行成功如下图所示。

Item_GetDurability.png
<上一篇:根据装备位获取物品的GUID下一篇:获取物品的模板ID>
Item_GetID
获取物品的模板ID

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取物品的模板ID。

语法
Luacopy 复制
lualib:Item_GetID(
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

 
物品的GUID

返回值
uint16

 
执行成功则返回物品模板ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Item_GetId_3.png

Item_GetId_2.png
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Warn("该物品的模板ID："..lualib:Item_GetID("",GUID1)) --获取该物品的模板ID

--此示例代码运行成功如下图所示。

Item_GetId.png
<上一篇:获取物品的当前耐久值下一篇:获取物品图标对应的图片资源ID>
Item_GetIcon
获取物品图标对应的图片资源ID

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取该物品的背包图标对应的图片资源ID。

对应游戏工具平台→游戏配置→装备&道具→道具模板表→客户端配置→详细数据-详细数据-音效和图形区域中的“背包图标编号”选项。

Item_GetIcon_2.png
语法
Luacopy 复制
lualib:Item_GetIcon(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
uint32

 
获取成功则返回物品的图标对应的图片资源ID

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Warn("该物品的图标资源ID："..lualib:Item_GetIcon(GUID1)) --获取该物品图标对应的图片资源ID

--此示例代码运行成功如下图所示。

Item_GetIcon.png
<上一篇:获取物品的模板ID下一篇:获取物品的可使用等级>
Item_GetLevel
获取物品的可使用等级

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取该物品的可使用等级。

note_icon 备注
此接口仅在指定物品为可使用道具时才有意义。

语法
Luacopy 复制
lualib:Item_GetLevel(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
int32

 
获取成功则返回物品的可使用等级

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Item_GetLevel_2.png
local GUID2 = lualib:Item_GetBySite(player,23) --获取背包中第二个格子中的物品的GUID
lualib:Warn("该物品的可使用等级："..lualib:Item_GetLevel(GUID2)) --获取该物品的可使用等级

--此示例代码运行成功如下图所示。

Item_GetLevel.png
<上一篇:获取物品图标对应的图片资源ID下一篇:获取物品的剩余存在时间>
Item_GetLife
获取物品的剩余存在时间

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取该物品的剩余存在时间。

note_icon 备注
此接口仅在指定物品为时效道具时才有意义。

语法
Luacopy 复制
lualib:Item_GetLife(
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

 
物品的GUID

返回值
int32

 
获取成功则返回物品的剩余存在时间（单位为秒（s））

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Warn("修改前该物品的剩余存在时间："..lualib:Item_GetLife("", GUID)) --获取修改前该物品的剩余存在时间

lualib:Item_SetLife("",GUID,100) --该物品的剩余存在时间为100s

lualib:Warn("修改后该物品的剩余存在时间："..lualib:Item_GetLife("",GUID)) --获取修改后该物品的剩余存在时间

--此示例代码运行成功如下图所示。

Item_GetLife.png
<上一篇:获取物品的可使用等级下一篇:获取物品的最大耐久值>
Item_GetMaxDurability
获取物品的最大耐久值

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取该物品的最大耐久值。

语法
Luacopy 复制
lualib:Item_GetMaxDurability(
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

 
物品的GUID

返回值
int32

 
获取成功则返回物品的最大耐久值

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function testprint(npc,player)
    local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
    lualib:Warn("修改前的最大耐久值:"..lualib:Item_GetMaxDurability("",GUID1)) --获取该物品修改前的最大耐久值

    lualib:Item_SetMaxDurability("",GUID1,302)

    lualib:Warn("修改后的最大耐久值:"..lualib:Item_GetMaxDurability("",GUID1)) --获取该物品修改后的最大耐久值
end

--此示例代码运行成功如下图所示。

Item_SetMaxDurability.png
<上一篇:获取物品的剩余存在时间下一篇:获取物品的修理价格>
Item_GetRepairCharge
获取物品的修理价格

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取该物品的修理价格。

某件物品能被修理需要同时满足以下条件：

1.该物品的主类型为装备；

2.该物品“可否修理”字段的配置为“是”；

   对应字段的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→不能从事的行为区域。

   CanFixEquip.png

3.该物品的耐久值大于0且小于最大耐久值。

语法
Luacopy 复制
lualib:Item_GetRepairCharge(
    strPlayer,
    strItem,
    iType
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

iType

int

 
修理类型

1普修（修理后最大耐久值会下降）

2特修（修理后最大耐久值不会下降）

返回值
int

 物品的修理价格
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Item_SetDurability("",GUID,3000) --设置该物品的当前耐久值为3000
lualib:Warn("普修价格:"..lualib:Item_GetRepairCharge("",GUID,1)) --获取该物品的普修价格
lualib:Warn("特修价格:"..lualib:Item_GetRepairCharge("",GUID,2)) --获取该物品的特修价格

--此示例代码运行成功如下图所示。

Item_GetRepairCharge.png
<上一篇:获取物品的最大耐久值下一篇:获取物品所在包裹的玩家GUID>
Item_GetRole
获取物品所在包裹的玩家GUID

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取物品所在包裹的玩家的GUID（即物品拥有者的GUID）。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_GetRole(
    strItem
)

参数
strItem

string

 
物品的GUID

返回值
string

 
物品存在则返回拥有者的GUID

物品不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第二个格子中的物品的GUID
lualib:Warn("物品拥有者的GUID："..lualib:Item_GetRole(GUID)) --获取物品拥有者的GUID

--此示例代码运行成功如下图所示。

Item_GetRole.png
<上一篇:获取物品的修理价格下一篇:获取物品的装备位>
Item_GetSite
获取物品的装备位

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取指定物品在玩家包裹中的装备位。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_GetSite(
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

 
物品的GUID

返回值
int32

 
物品存在则返回该物品在玩家包裹中的装备位（具体请参考角色装备位类型定义）

物品不存在则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item = lualib:BagItemList(player,true,false,false) --获取玩家背包中所有物品的GUID列表
lualib:Warn("装备位："..lualib:Item_GetSite("",item[1])) --获取该物品在玩家包裹中的装备位

--此示例代码运行成功如下图所示。

Item_GetSite.png
<上一篇:获取物品所在包裹的玩家GUID下一篇:获取物品的最大堆叠数量>
Item_GetStack
获取物品的最大堆叠数量

更新时间：2022-03-30 00:00:00
此函数根据物品的索引名（KeyName）获取该物品的最大堆叠数量。

语法
Luacopy 复制
lualib:Item_GetStack(
    strKey
)

参数
strKey

string

 
物品的索引名（KeyName）

返回值
int32

 
获取成功则返回指定物品的最大堆叠数量

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Item_GetStack_2.png
lualib:Warn("“强化石”的最大堆叠数量："..lualib:Item_GetStack("强化石")) --获取道具“强化石”的最大堆叠数量

--此示例代码运行成功如下图所示。

Item_GetStack.png
<上一篇:获取物品的装备位下一篇:获取物品的子类型>
Item_GetSubType
获取物品的子类型

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取物品的子类型。

语法
Luacopy 复制
lualib:Item_GetSubType(
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

 
物品的GUID

返回值
uint8

 
获取成功则物品的子类型（具体请参见道具主类型和子类型定义页面）

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Item_GetType.png
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
local item_type = lualib:Item_GetType("",GUID) --获取该物品的主类型
local item_subtype = lualib:Item_GetSubType("", GUID) --获取该物品的子类型
--判断该物品的主类型是否为装备
if item_type == 1 then  
    lualib:Warn("该物品的主类型为装备")
    --若该物品的主类型为装备，则继续判断该物品的子类型是否为武器。
    if item_subtype == 1 then  
        lualib:Warn("该物品的子类型为武器")
    else
        lualib:Warn("该物品的子类型不是武器")
    end
else
    lualib:Warn("该物品的主类型不是装备")
end

--此示例代码运行成功如下图所示。

Item_GetSubType.png
<上一篇:获取物品的最大堆叠数量下一篇:获取物品的主类型>
Item_GetType
获取物品的主类型

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取物品的主类型。

语法
Luacopy 复制
lualib:Item_GetType(
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

 
物品的GUID

返回值
uint8

 
获取成功则物品的主类型（具体请参见道具主类型和子类型定义页面）

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Item_GetType.png
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
local item_type = lualib:Item_GetType("",GUID) --获取该物品的主类型
local item_subtype = lualib:Item_GetSubType("", GUID) --获取该物品的子类型
--判断该物品的主类型是否为装备
if item_type == 1 then  
    lualib:Warn("该物品的主类型为装备")
    --若该物品的主类型为装备，则继续判断该物品的子类型是否为武器。
    if item_subtype == 1 then  
        lualib:Warn("该物品的子类型为武器")
    else
        lualib:Warn("该物品的子类型不是武器")
    end
else
    lualib:Warn("该物品的主类型不是装备")
end

--此示例代码运行成功如下图所示。

Item_GetSubType.png
<上一篇:获取物品的子类型下一篇:获取物品的剩余使用次数>
Item_GetUsesCount
获取物品的剩余使用次数

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID获取该物品的剩余使用次数。

语法
Luacopy 复制
lualib:Item_GetUsesCount(
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

 
物品的GUID

返回值
int16

 
获取成功则返回物品的使用次数

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,24) --获取背包中第三个格子中的物品的GUID
lualib:Warn("修改前该物品的剩余使用次数："..lualib:Item_GetUsesCount("", GUID)) --获取修改前该物品的剩余使用次数

lualib:Item_SetUsesCount("",GUID,10) --该物品的剩余使用次数为10次

lualib:Warn("修改后该物品的剩余使用次数："..lualib:Item_GetUsesCount("",GUID)) --获取修改后该物品的剩余使用次数

--此示例代码运行前效果如下图所示。

Item_SetUsesCount.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Item_SetUsesCount_2.png

Item_GetUsesCount.png
<上一篇:获取物品的主类型下一篇:判断物品是否绑定>
Item_IsBind
判断物品是否绑定

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID判断该物品是否绑定。

语法
Luacopy 复制
lualib:Item_IsBind(
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

 
物品的GUID

返回值
bool

 
true指定物品为绑定物品

false指定物品为非绑定物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
--判断背包中的第一个物品是否为绑定物品
if lualib:Item_IsBind("", GUID1) then 
    lualib:Warn("指定物品为绑定物品")
    lualib:Item_SetBind("", GUID1,false) --设置该物品为非绑定物品
else
    lualib:Warn("指定物品为非绑定物品")
    lualib:Item_SetBind("", GUID1,true) --设置该物品为绑定物品
end

--此示例代码运行前效果如下图所示。

Item_IsBind.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Item_IsBind_3.png

Item_IsBind_2.png
<上一篇:获取物品的剩余使用次数下一篇:判断物品是否存在>
Item_IsExist
判断物品是否存在

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID判断该物品是否存在。

语法
Luacopy 复制
lualib:Item_IsExist(
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

 
物品的GUID

返回值
bool

 
true物品存在

false物品不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local test = lualib:Item_IsExist("", "4ar8m2s9cno0b") 
lualib:Warn("是否存在返回值:"..tostring(test))

--此示例代码运行成功如下图所示。

Item_IsExist.png
<上一篇:判断物品是否绑定下一篇:判断物品是否为时限道具>
Item_IsTimeLimit
判断物品是否为时限道具

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID判断该物品是否为时限道具。

若“存在时限”选项的配置值不为0，则对应物品为时限道具；

若“存在时限”选项的配置值为0，则对应物品不是时限道具。

“存在时限”选项的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→基础信息→详细数据-物品处理区域。

Item_IsTimeLimit_2.png
语法
Luacopy 复制
lualib:Item_IsTimeLimit(
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

 
物品的GUID

返回值
bool

 
true指定物品为时限物品

false指定物品不是时限物品

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Warn("是否时限"..tostring(lualib:Item_IsTimeLimit("",GUID)))

--此示例代码运行成功如下图所示。

Item_IsTimeLimit.png
<上一篇:判断物品是否存在下一篇:清理地图上的某个物品>
Item_MapRemove
清理地图上的某个物品

更新时间：2022-03-30 00:00:00
此函数作用为清理地图上的某个物品。

此接口只能删除地图上的指定物品。

语法
Luacopy 复制
lualib:Item_MapRemove(
    strItem,
    strDesc,
    strTarget
)

参数
strItem

string

 
物品的GUID

strDesc

string

 
销毁原因

strTarget

string

 
销毁动作的发起者

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家所在地图的GUID 
local ranges = {0, 100, 100, 100, 100}
local items = lualib:Map_GetRegionItemsEx(map, "", ranges) --获取地图区域内的物品列表
lualib:Item_MapRemove(items[1], "测试", player) --清理地图上的指定物品

--此示例代码运行前效果如下图所示。

Item_MapRemove.png

--此示例代码运行后效果如下图所示。

Item_MapRemove_2.png
<上一篇:判断物品是否为时限道具下一篇:通知物品属性更新（扩展）>
Item_NotifyUpdateEx
通知物品属性更新（扩展）

更新时间：2022-03-30 00:00:00
此函数向玩家通知物品属性更新。

note_icon 备注
本接口可向玩家通知掉落在场景中的物品的属性更新，不需要指定物品在玩家包裹内。

此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_NotifyUpdateEx(
    player_guid,
    item_guid
)
参数
player_guid

string

 
玩家角色的GUID

item_guid

string

 
物品的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--服务端
function on_create(item)
    lualib:SetInt(item, "set_lock_pwd", 1)
    lualib:SetStr(item, "set_lock_pwd_str", "测试字符串变量")
    lualib:Item_NotifyUpdateEx("6f8m1gc3d401", item)
end

lualib:AddTrigger(player, lua_trigger_item_pickup, "on_item_pickup")
lualib:Map_GenItem(lualib:MapGuid(player),100,120,"雷神武器",1,true,0)
function on_item_pickup(player, item_guid, item_id, item_keyname)
    lualib:ShowFormWithContent(player,"脚本表单","RoleEquiment.test('" ..item_guid.."')")
end

--客户端
function RoleEquiment.test(item_guid)
    UI:Lua_str2GUID(item_guid)
    dbg("guid="..LuaRet)
    local ehandle = CL:GetItemEntityHandleByGUID(LuaRet)
    local value_int = CL:GetItemEntityCustomVarInt(ehandle, "set_lock_pwd")
    local value_str = CL:GetItemEntityCustomVarStr(ehandle, "set_lock_pwd_str")
    dbg("set_lock_pwd="..value_int)
    dbg("set_lock_pwd_str="..value_str)
end

--玩家拾取道具时，打印以下结果。

Item_NotifyUpdateEx.png
<上一篇:清理地图上的某个物品下一篇:通知物品属性更新>
Item_NotifyUpdate
通知物品属性更新

更新时间：2022-03-30 00:00:00
此函数向物品的主人通知物品属性的更新。

note_icon 备注
该物品必须在玩家的包裹里。

此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_NotifyUpdate(
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

 
物品的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--服务端
local guid = lualib:AddSingleItem(target,"za斩杀证明",1,0,"给斩杀证明",self) --给玩家添加单个物品并获取该物品的GUID
local getTime=lualib:Now() --获取当前时间
lualib:SetStr(guid,"getime",getTime) --在对象实体上存储字符型变量
lualib:Item_NotifyUpdate("",guid) --通知物品属性更新

--客户端

--……省略部分代码

--装备Tips----------------------------------------------
function GetEquipTips(ihandle, ehandle)

--……省略部分代码

    --斩杀证明--
    if item_keyname == "za斩杀证明" then
        item = tipItemsLayoutzhansha(ihandle, ehandle, true)
        if item == nil then return end; ret = ret..item
    end

--……省略部分代码

end

--……省略部分代码

--斩杀证明--吸收属性--------------------------------------
function tipItemsLayoutzhansha(ihandle, ehandle, equip)
    local ret = ""
    local str = ""
    local count = 0
    local timecount = ""
    
    --获取物品自定义字符串变量
    if UI:Lua_GetItemEntityCustomVarStr(ehandle,"getime") and LuaRet ~= 0 then
        local time1 = LuaRet
        timecount = time1
    end
    
    --获取物品自定义整型变量
    if UI:Lua_GetItemEntityCustomVarInt(ehandle,"exp") and LuaRet ~= 0 then
        local qd = LuaRet
        local qd2 = qd/2
        str = str..tipText("获得时间: ", MakeARGB(255,255,255,255))
        str = str..tipText(timecount.."\n", MakeARGB(255,220,20,60))
        str = str..tipText("可获悬赏金币: ", MakeARGB(255,255,255,255))
        str = str..tipText(qd2.."\n", MakeARGB(255,220,20,60))
        str = str..tipText("可获悬赏经验: ",  MakeARGB(255,255,255,255))
        str = str..tipText(qd2.."\n".."\n", MakeARGB(255,220,20,60))
        str = str..tipText("\n")
        ret = str
    end
    return ret
end

--没有使用Item_NotifyUpdate接口时，获得该物品后需要返回到选择角色页面重新进入游戏才能显示更新的物品信息。

--使用Item_NotifyUpdate接口后，获得该物品后可立即显示更新的物品信息，如下图所示。

Item_NotifyUpdate.png
<上一篇:通知物品属性更新（扩展）下一篇:设置物品的堆叠数量>
Item_SetAmount
设置物品的堆叠数量

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID设置该物品的堆叠数量。

语法
Luacopy 复制
lualib:Item_SetAmount(
    strPlayer,
    strItem,
    iAmount
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

iAmount

int32

 
物品的堆叠数量

note_icon 备注
即使此参数的配置值超过该物品的最大堆叠数量，也只能设置该物品的堆叠数量为最大堆叠数量。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,23) --获取背包中第二个格子中的物品的GUID
lualib:Warn("修改前该物品的堆叠数量："..lualib:Item_GetAmount("",GUID)) --获取修改前该物品的堆叠数量

lualib:Item_SetAmount("",GUID,10) --设置该物品的堆叠数量为10

lualib:Warn("修改后该物品的堆叠数量："..lualib:Item_GetAmount("",GUID)) --获取修改后该物品的堆叠数量

--此示例代码运行前效果如下图所示。

Item_GetAmount.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Item_GetAmount_3.png

Item_GetAmount_2.png
<上一篇:通知物品属性更新下一篇:根据物品GUID设置该物品是否绑定>
Item_SetBindEx
根据物品GUID设置该物品是否绑定

更新时间：2022-03-30 00:00:00
此函数根据物品GUID设置该物品是否绑定。

note_icon 备注
本接口可设置掉落在场景中的物品是否绑定，不需要指定物品在玩家包裹内。

此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_SetBindEx(
    item_guid,
    is_bind
)
参数
item_guid

string

 
物品的GUID

is_bind

bool

 
是否绑定

true绑定

false不绑定

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--此示例代码执行前提：该物品为未绑定状态。
Item_SetBindEx_2.png
lualib:Item_SetBindEx("4ar8lvi23uk00", true)

--此示例代码运行成功如下图所示。

Item_SetBindEx_2.png
<上一篇:设置物品的堆叠数量下一篇:设置物品是否绑定>
Item_SetBind
设置物品是否绑定

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID设置该物品是否绑定。

note_icon 备注
该物品必须在玩家的包裹里。

此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:Item_SetBind(
    strPlayer,
    strItem,
    bBind
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

bBind

bool

 
是否绑定

true绑定

false不绑定

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
--判断背包中的第一个物品是否为绑定物品
if lualib:Item_IsBind("", GUID1) then 
    lualib:Warn("指定物品为绑定物品")
    lualib:Item_SetBind("", GUID1,false) --设置该物品为非绑定物品
else
    lualib:Warn("指定物品为非绑定物品")
    lualib:Item_SetBind("", GUID1,true) --设置该物品为绑定物品
end

--此示例代码运行前效果如下图所示。

Item_IsBind.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Item_IsBind_2.png

Item_IsBind_3.png
<上一篇:根据物品GUID设置该物品是否绑定下一篇:设置物品的当前耐久值>
Item_SetLife
设置物品的剩余存在时间

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID设置该物品的剩余存在时间。

note_icon 备注
此接口仅在指定物品为时效道具时才有意义。

语法
Luacopy 复制
lualib:Item_SetLife(
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

 
物品的GUID

iValue

int32

 
要设置的剩余存在时间

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:Warn("修改前该物品的剩余存在时间："..lualib:Item_GetLife("", GUID)) --获取修改前该物品的剩余存在时间

lualib:Item_SetLife("",GUID,100) --该物品的剩余存在时间为100s

lualib:Warn("修改后该物品的剩余存在时间："..lualib:Item_GetLife("",GUID)) --获取修改后该物品的剩余存在时间

--此示例代码运行成功如下图所示。

Item_GetLife.png
<上一篇:设置物品的当前耐久值下一篇:设置物品的最大耐久值>
Item_SetMaxDurability
设置物品的最大耐久值

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID设置该物品的最大耐久值。

语法
Luacopy 复制
lualib:Item_SetMaxDurability(
    strPlayer,
    strItem,
    iDura
)

参数
strPlayer

string

 
该参数现已无意义

默认填""即可

strItem

string

 
物品的GUID

iDura

int32

 
要设置的最大耐久值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function testprint(npc,player)
    local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
    lualib:Warn("修改前的最大耐久值:"..lualib:Item_GetMaxDurability("",GUID1)) --获取该物品修改前的最大耐久值

    lualib:Item_SetMaxDurability("",GUID1,302)

    lualib:Warn("修改后的最大耐久值:"..lualib:Item_GetMaxDurability("",GUID1)) --获取该物品修改后的最大耐久值
end

--此示例代码运行成功如下图所示。

Item_SetMaxDurability.png
<上一篇:设置物品的剩余存在时间下一篇:设置物品的剩余使用次数>
Item_SetUsesCount
设置物品的剩余使用次数

更新时间：2022-03-30 00:00:00
此函数根据物品的GUID设置该物品的剩余使用次数。

语法
Luacopy 复制
lualib:Item_SetUsesCount(
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

 
物品的GUID

iValue

int16

 
要设置的剩余使用次数

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,24) --获取背包中第三个格子中的物品的GUID
lualib:Warn("修改前该物品的剩余使用次数："..lualib:Item_GetUsesCount("", GUID)) --获取修改前该物品的剩余使用次数

lualib:Item_SetUsesCount("",GUID,10) --该物品的剩余使用次数为10次

lualib:Warn("修改后该物品的剩余使用次数："..lualib:Item_GetUsesCount("",GUID)) --获取修改后该物品的剩余使用次数

--此示例代码运行前效果如下图所示。

Item_SetUsesCount.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

Item_SetUsesCount_2.png

Item_GetUsesCount.png
<上一篇:设置物品的最大耐久值下一篇:根据道具的类型查找物品>
ItemsByType
根据道具的类型查找物品

更新时间：2022-03-30 00:00:00
此函数根据道具的主类型和子类型查找玩家包裹中的物品。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

语法
Luacopy 复制
lualib:ItemsByType(
    strPlayer,
    iType,
    iSubtype,
    bEquip,
    bBag,
    bWarehouse,
    bWarehouseAdv
)

参数
strPlayer

string

 
玩家角色的GUID

iType

int

 
物品的主类型

具体请参见道具主类型和子类型定义页面
iSubtype

int

 
物品的子类型

具体请参见道具主类型和子类型定义页面
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

 
符合条件的物品列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item = lualib:ItemsByType(player,1,14,false,true,false,false) --获取玩家背包中的坐骑的GUID列表
lualib:Warn("物品列表："..serialize(item))

--此示例代码运行成功如下图所示。

ItemsByType.png
<上一篇:设置物品的剩余使用次数下一篇:生成物品的实体（扩展2）>
Json2ItemEx2
生成物品的实体（扩展2）

更新时间：2022-03-30 00:00:00
此函数根据物品的JSON信息生成物品的实体，并支持生成新的GUID和物品日志记录中的描述信息。

语法
Luacopy 复制
lualib:Json2ItemEx2(
    strPlayer,
    strJson,
    bNew,
    desc
)
参数
strPlayer

string

 
玩家角色的GUID

strJson

string

 
物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json或者Item2JsonEx直接生成物品的JSON信息。

bNew

bool

 
是否重新生成GUID

true重新生成GUID

false不重新生成GUID

caution_icon注意
当原物品没有从游戏中删除时，此参数必须设置为true，否则会出现生成失败的问题。

desc

string

 
日志记录中的描述信息

返回值
string

 
执行成功则返回物品的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid = lualib:Player_GetItemGuid(player,1) --获取玩家武器装备位上的物品的GUID
local itemJson = lualib:Item2Json(item_guid) --生成对应物品的JSON信息

lualib:DelItemEx(player, lualib:KeyName(item_guid), 1, 2, true, false, false, false, "删物品", "") --删除玩家武器装备位上的物品
item_guid = lualib:Json2ItemEx2(player, itemJson, false, "测试描述信息") --根据物品的JSON信息在地图的指定位置生成原物品
if item_guid ~= "" then
    lualib:SysMsg_SendWarnMsg(player, "物品描述信息设置成功！")
end

--此示例代码运行成功如下图所示，并支持设置物品日志记录中的描述信息。

Json2ItemEx2.png

Json2ItemEx2_2.png
<上一篇:根据道具的类型查找物品下一篇:生成物品的实体（扩展）>
Json2ItemEx
生成物品的实体（扩展）

更新时间：2022-03-30 00:00:00
此函数根据物品的JSON信息生成物品的实体，并支持生成新的GUID。

语法
Luacopy 复制
lualib:Json2ItemEx(
    strPlayer,
    strJson,
    bNew
)

参数
strPlayer

string

 
玩家角色的GUID

strJson

string

 
物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json或者Item2JsonEx直接生成物品的JSON信息。

bNew

bool

 
是否重新生成GUID

true重新生成GUID

false不重新生成GUID

caution_icon注意
当原物品没有从游戏中删除时，此参数必须设置为true，否则会出现生成失败的问题。

返回值
string

 
执行成功则返回物品的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid = lualib:Player_GetItemGuid(player,1) --获取玩家武器装备位上的物品的GUID
local itemJson = lualib:Item2Json(item_guid) --生成对应物品的JSON信息

lualib:DelItemEx(player, lualib:KeyName(item_guid), 1, 2, true, false, false, false, "删物品", "") --删除玩家武器装备位上的物品
local item = lualib:Json2ItemEx(player, itemJson, false) --根据物品的JSON信息在地图的指定位置生成原物品
if item ~= "" then
    lualib:SysMsg_SendWarnMsg(player, "道具实体化成功！")
end

--此示例代码运行成功如下图所示。

Json2ItemEx.png
<上一篇:生成物品的实体（扩展2）下一篇:根据物品的JSON信息生成物品的实体>
Json2ItemWithSiteType
根据物品的JSON信息生成物品的实体

更新时间：2022-03-30 00:00:00
此函数根据物品的JSON信息生成物品的实体，并且支持设置生成物品的位置类型（包括背包、仓库和高级仓库）。

语法
Luacopy 复制
lualib:Json2ItemWithSiteType(
    strPlayer,
    strJson,
    bNew,
    desc,
    site_type
)
参数
strPlayer

string

 
玩家角色的GUID

strJson

string

 
物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json或者Item2JsonEx直接生成物品的JSON信息。

bNew

bool

 
是否重新生成GUID

true重新生成GUID

false不重新生成GUID

caution_icon注意
当原物品没有从游戏中删除时，此参数必须设置为true，否则会出现生成失败的问题。

desc

string

 
日志记录中的描述信息

site_type

uint8

 
生成物品的位置类型

0背包

1仓库

2高级仓库

note_icon 备注
若指定位置类型已满，则会生成失败。

返回值
string

 
生成成功则返回物品的GUID

生成失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item1 = lualib:AddSingleItem(player, "测试道具", 1, 0, "测试", "测试") --给玩家添加单个物品
lualib:Warn("item1 = "..item1)
local itemJson = lualib:Item2JsonEx(item1) --根据物品实体信息生成该物品的JSON信息
lualib:Item_Destroy(player, item1, "测试", "测试") --销毁该物品
local item2 = lualib:Json2ItemWithSiteType(player, itemJson, false, "测试根据物品的JSON信息生成物品的实体，生成到指定包裹类型", 0) --根据物品的JSON信息在背包中生成物品的实体，并且不需要重新生成GUID。
lualib:Warn(item2.." 装备位："..lualib:Item_GetSite("",item2)) --根据物品的GUID获取该物品在玩家包裹中的装备位
local item3 = lualib:Json2ItemWithSiteType(player, itemJson, true, "测试根据物品的JSON信息生成物品的实体，生成到指定包裹类型", 1) --根据物品的JSON信息在仓库中生成物品的实体，并且需要重新生成GUID。
lualib:Warn(item3.." 装备位："..lualib:Item_GetSite("",item3)) --根据物品的GUID获取该物品在玩家包裹中的装备位
local item4 = lualib:Json2ItemWithSiteType(player, itemJson, true, "测试根据物品的JSON信息生成物品的实体，生成到指定包裹类型", 2) --根据物品的JSON信息在高级仓库中生成物品的实体，并且需要重新生成GUID。
lualib:Warn(item4.." 装备位："..lualib:Item_GetSite("",item4)) --根据物品的GUID获取该物品在玩家包裹中的装备位

--此示例代码运行成功如下图所示。

Json2ItemWithSiteType.png
<上一篇:生成物品的实体（扩展）下一篇:生成物品的实体>
Json2Item
生成物品的实体

更新时间：2022-03-30 00:00:00
此函数根据物品的JSON信息生成物品的实体。

语法
Luacopy 复制
lualib:Json2Item(
    strPlayer,
    strJson
)

参数
strPlayer

string

 
玩家角色的GUID

strJson

string

 
物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json或者Item2JsonEx直接生成物品的JSON信息。

返回值
string

 
执行成功则返回物品的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid = lualib:Player_GetItemGuid(player,1) --获取玩家武器装备位上的物品的GUID
local itemJson = lualib:Item2Json(item_guid) --生成对应物品的JSON信息

lualib:DelItemEx(player, lualib:KeyName(item_guid), 1, 2, true, false, false, false, "删物品", "") --删除玩家武器装备位上的物品
local item = lualib:Json2Item(player, itemJson)  --根据物品的JSON信息在地图的指定位置生成原物品
if item ~= "" then
    lualib:SysMsg_SendWarnMsg(player, "道具实体化成功！")
end

--此示例代码运行成功如下图所示。

Json2ItemEx.png
<上一篇:根据物品的JSON信息生成物品的实体下一篇:从Json直接生成装备到装备位>
JsonToEquipWithSite
从Json直接生成装备到装备位

更新时间：2024-08-20 00:00:00
此函数从Json直接生成装备到装备位。

caution_icon注意
需要背包有多余的空位置，如果没有空位置，则会将背包最后一格的物品发送到邮件腾出来一个空格用于生成装备。

语法
Luacopy 复制
lualib:JsonToEquipWithSite(
    player_guid,
    item_json,
    equip_site
)
参数
player_guid

string

 
玩家的GUID

item_json

string

 
物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json或者Item2JsonEx直接生成物品的JSON信息。

equip_site

UINT16

 
装备位

返回值
bool

 
是否生成成功

true生成成功

false生成失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_json = "{\"i\":21187,\"g\":\"456d166bd9d13002\",\"n\":\"三清护盾\",\"s\":28,\"a\":1,\"d\":22000,\"dm\":22000,\"eq\":{\"v\":2}}"
local site = 17
if lualib:JsonToEquipWithSite(player,item_json,site) then
    lualib:Warn("成功生成装备")
else
    lualib:Warn("生成装备失败")
end

--背包有空位置时，使用接口前：

JsonToEquipWithSite.png

JsonToEquipWithSite_2.png

--背包有空位置时，使用接口后：

JsonToEquipWithSite_3.png

JsonToEquipWithSite_4.png

--背包没有空位置时，使用接口前：

JsonToEquipWithSite_5.png

JsonToEquipWithSite_6.png

--背包没有空位置时，使用接口后：

JsonToEquipWithSite_7.png

JsonToEquipWithSite_8.png

--背包中最后一个物品已发送至邮件。

JsonToEquipWithSite_9.png
<上一篇:生成物品的实体下一篇:获取商城的所有配置表结构>
Mall_DataRows
获取商城的所有配置表结构

更新时间：2025-09-26 17:45:00
此函数获取商城的所有配置表结构。

语法
Luacopy 复制
lualib:Mall_DataRows()
参数
无

返回值
table

 
商城的所有配置表结构

其定义请参见商城表属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t_mallInfo = lualib:Mall_DataRows()
lualib:Warn("商城的所有配置表结构："..serialize(t_mallInfo))

--此示例代码运行成功如下图所示。

Mall_DataRows.png
<上一篇:从Json直接生成装备到装备位下一篇:模拟玩家PK掉落并根据JSON字符串生成物品>
Map_PlayerPKDropItemFromJson
模拟玩家PK掉落并根据JSON字符串生成物品

更新时间：2022-03-30 00:00:00
此函数模拟玩家PK掉落并根据JSON字符串生成物品。

caution_icon注意
当原物品没有从游戏中删除时，参数is_gen_guid必须设置为true，否则会出现生成失败的问题。

语法
Luacopy 复制
lualib:Map_PlayerPKDropItemFromJson(
    map_guid,
    item_json,
    drop_player_guid,
    x,
    y,
    is_gen_guid
)
参数
map_guid

string

 
生成物品所在地图的GUID

item_json

string

 
物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json或者Item2JsonEx直接生成物品的JSON信息。

drop_player_guid

string

 
模拟PK掉落物品的玩家的GUID

x

uint16

 
生成点在地图上的X坐标

y

uint16

 
生成点在地图上的Y坐标

is_gen_guid

bool

 
是否生成新的GUID

true是

false否

返回值
bool

 
是否生成成功

true生成成功

false生成失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示，玩家的武器装备位上装备了物品“紫炎昭天剑”。

Map_PlayerPKDropItemFromJson.png
local item_json = lualib:Item2Json(lualib:Item_GetBySite(player,1)) --生成玩家武器装备位上的物品的JSON信息
lualib:DelItemEx(player, lualib:KeyName(lualib:Item_GetBySite(player,1)), 1, 2, true, false, false, false, "删物品", "") --删除玩家武器装备位上的物品
if lualib:Map_PlayerPKDropItemFromJson(lualib:MapGuid(player), item_json, player, lualib:X(player) + 2, lualib:Y(player) + 2, false) then --根据JSON字符串在地图的指定位置生成原物品
    lualib:SysMsg_SendWarnMsg(player, "生成物品成功！")
end

--此示例代码运行成功后会在地图的指定位置生成原物品，同时控制台会输出如下内容。

Map_PlayerPKDropItemFromJson_3.png

Map_PlayerPKDropItemFromJson_2.png
<上一篇:获取商城的所有配置表结构下一篇:修改金币类型物品的金币数量>
ModifyItemGold
修改金币类型物品的金币数量

更新时间：2022-03-30 00:00:00
此函数修改金币类型物品的金币数量，比如地图上出现的金币。

参考 Map_GenGold GetItemGold

语法
Luacopy 复制
lualib:ModifyItemGold(
    strItem,
    iGold
)

参数
strItem

string

 
物品GUID

iGold

int32

 
修改后的金币数

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function testprint(npc,player)
    local item = lualib:Map_GenGold(lualib:MapGuid(player), 134, 174, 500, false, 0, 4, player) --在地图上指定位置刷出500金币
    lualib:Warn("初始金币数量："..lualib:GetItemGold(item)) --获取修改前金币类型物品的金币数量
    lualib:ModifyItemGold(item, 10000) --修改金币类型物品的金币数量为10000
    lualib:Warn("修改后金币数量："..lualib:GetItemGold(item)) --获取修改后金币类型物品的金币数量
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

ModifyItemGold_2.png

ModifyItemGold.png
<上一篇:模拟玩家PK掉落并根据JSON字符串生成物品下一篇:移动物品>
MoveItem
移动物品

更新时间：2022-03-30 00:00:00
此函数作用为在玩家包裹中移动物品。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

移动物品时必须满足物品移动的规则，例如：不可将武器移动到项链位置。

语法
Luacopy 复制
lualib:MoveItem(
    strPlayer,
    strItem,
    iSite
)

参数
strPlayer

string

 
玩家角色的GUID

strItem

string

 
物品的GUID

iSite

int32

 
装备位

请参考角色装备位类型定义

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否移动成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID1 = lualib:Item_GetBySite(player,22) --获取背包中第一个格子中的物品的GUID
lualib:MoveItem(player,GUID1,23) --移动该物品至背包中的第二个格子

--此示例代码运行前效果如下图所示。

MoveItem_2.png

--此示例代码运行后效果如下图所示。

MoveItem.png
<上一篇:修改金币类型物品的金币数量下一篇:设置物品名称在场景中显示的颜色>
SetItemColor
设置物品名称在场景中显示的颜色

更新时间：2022-04-22 00:00:00
此函数设置物品名称在场景中显示的颜色并立即显示。

caution_icon注意
使用此接口设置颜色时，各参数（物品的GUID除外）不能超出0~255的范围，否则会设置失败。

语法
Luacopy 复制
lualib:SetItemColor(
    item_guid,
    red,
    green,
    blue,
    alpha
)
参数
item_guid

string

 
物品的GUID

red

uint16

 
物品名称的红色值

范围为0~255

green

uint16

 
物品名称的绿色值

范围为0~255

blue

uint16

 
物品名称的蓝色值

范围为0~255

alpha

uint16

 
物品名称的透明度

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
local item_guid = lualib:BagItemList(player, true, false, false)  --获取玩家包裹所有物品的GUID列表
lualib:SetItemColor(item_guid[1], 255, 0, 0, 255)  --设置物品名称在场景中显示的颜色
lualib:SetItemColor(item_guid[2], 0, 255, 0, 255)
lualib:SetItemColor(item_guid[3], 0, 0, 255, 255)
lualib:SetItemColor(item_guid[4], 255, 255, 255, 100)

--此示例代码运行成功如下图所示。

SetItemColor.png
<上一篇:移动物品下一篇:修改物品的掉落冻结时间>
SetItemDropFreezeTime
修改物品的掉落冻结时间

更新时间：2022-03-30 00:00:00
此函数修改物品的掉落冻结时间。

note_icon 备注
某物品掉落在场景中且在掉落冻结时间内时，该物品不可以被他人拾取。

语法
Luacopy 复制
lualib:SetItemDropFreezeTime(
    strItem,
    dwFreeze
)

参数
strItem

string

 
物品的GUID

dwFreeze

uint32

 
掉落冻结时间

单位为秒（s）

返回值
bool

 
true修改成功

false修改失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local GUID = lualib:Item_GetBySite(player,22) --获取背包中第1个格子中的物品的GUID
local FreezeTime =lualib:ItemDropFreezeTime(GUID) --获取修改前该物品的掉落冻结时间
lualib:Warn("修改前该物品的掉落冻结时间为："..FreezeTime)

lualib:SetItemDropFreezeTime(GUID,100) --修改该物品的掉落冻结时间

local FreezeTime2 =lualib:ItemDropFreezeTime(GUID) --获取修改后该物品的掉落冻结时间
lualib:Warn("修改后该物品的掉落冻结时间为："..FreezeTime2)

--此示例代码运行成功如下图所示。

ItemDropFreezeTime.png
<上一篇:设置物品名称在场景中显示的颜色下一篇:设置物品的掉落类型和归属>
SetItemDropTypeWithHost
设置物品的掉落类型和归属

更新时间：2023-04-14 00:00:00
此函数设置物品的掉落类型和归属。

语法
Luacopy 复制
lualib:SetItemDropTypeWithHost(
    strItem,
    drop_type,
    host
)
参数
strItem

string

 
物品的GUID

drop_type

int

 
物品掉落类型

0无掉落

1玩家主动丢弃

2玩家死亡掉落

3怪物死亡掉落

4脚本掉落

5地图掉落（例如：使用接口Map_GenItem在地图上生成物品的操作）

6地图主动掉落（例如：背包已满时使用接口AddItem添加物品的操作）

7物品掉落后归属于指定玩家

host

string

 
物品归属者的GUID

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item = lualib:Map_GenItem(lualib:MapGuid(player), lualib:X(player), lualib:Y(player), "测试道具", 1, true, 120) --在地图上指定位置刷出物品
lualib:Warn("掉落物品的旧类型："..lualib:ItemDropType(item)) --获取该物品原掉落类型
lualib:Warn("掉落物品的旧归属者："..lualib:Name(lualib:ItemRole(item))) --获取该物品掉落后的归属者
lualib:SetItemDropTypeWithHost(item, 7, lualib:Name2Guid("热饮一杯无")) --设置物品的掉落类型和归属
lualib:Warn("掉落物品的新类型："..lualib:ItemDropType(item)) --获取该物品设置后的掉落类型
lualib:Warn("掉落物品的新归属者："..lualib:Name(lualib:ItemRole(item))) --获取该物品设置后的掉落归属者

--此示例代码运行成功如下图所示。

SetItemDropTypeWithHost.png
<上一篇:修改物品的掉落冻结时间下一篇:删除玩家物品（扩展）>
TakeItemEx
删除玩家物品（扩展）

更新时间：2022-03-30 00:00:00
此函数作用为删除玩家物品。

note_icon 备注
此接口与接口DelItemEx作用相同。

语法
Luacopy 复制
lualib:TakeItemEx(
    strPlayer,
    strItemKey,
    wCount,
    bBind,
    bEquip,
    bBag,
    bWarhouse,
    bAdvWarehouse,
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

 
删除数量

bBind

uint8

 
绑定类型

0非绑定

1绑定

2绑定/非绑定

bEquip

bool

 
是否判断装备栏

true是

false否

bBag

bool

 
是否判断背包

true是

false否

bWarhouse

bool

 
是否判断仓库

true是

false否

bAdvWarehouse

bool

 
是否判断高级仓库

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

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:TakeItemEx(player,"强化石",2,0,false,true,false,false,"删除物品",player) --删除玩家背包中的2个“强化石”道具

--此示例代码运行前效果如下图所示。

TakeItem.png

--此示例代码运行后效果如下图所示。

TakeItem_2.png
<上一篇:设置物品的掉落类型和归属下一篇:删除玩家物品>
TakeItem
删除玩家物品

更新时间：2022-03-30 00:00:00
此函数作用为删除玩家物品。

默认忽略物品的绑定类型，并且只能删除玩家背包里的物品。

语法
Luacopy 复制
lualib:TakeItem(
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

uint16

 
删除数量

strDesc

string

 
动作的原因

strTarget

string

 
动作的发起者

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:TakeItem(player,"强化石",2,"删除物品",player) --删除2个“强化石”道具

--此示例代码运行前效果如下图所示。

TakeItem.png

--此示例代码运行后效果如下图所示。

TakeItem_2.png
<上一篇:删除玩家物品（扩展）
AddBagSite
增加背包格子数

更新时间：2023-01-18 00:00:00
此函数作用为增加背包格子数。

caution_icon警告
建议不要同时使用乾坤囊之类用于扩充背包格子的物品。

语法
Luacopy 复制
lualib:AddBagSite(
    player_guid,
    amount
)

参数
player_guid

string

 
玩家角色的GUID

amount

int32

 
要增加的格子数

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:AddBagSite(player,5) then --玩家背包中增加5个格子
    lualib:Warn("增加背包格子成功")
else
    lualib:Warn("增加背包格子失败")
end

--此示例代码运行成功如下图所示。

AddBagSite.png
下一篇:获取玩家包裹中的空格子数量>
BagFree
获取玩家包裹中的空格子数量

更新时间：2023-01-18 00:00:00
此函数获取玩家包裹中的空格子数量，支持获取玩家背包、仓库和高级仓库中的空格子数量，与接口GetBagFreeEx作用相同。

参考 GetBagFree GetBagFreeEx

语法
Luacopy 复制
lualib:BagFree(
    strPlayer,
    bBag,
    bWarhouse,
    bAdvWarhouse
)

参数
strPlayer

string

 
玩家角色的GUID

bBag

bool

 
是否获取背包中的空格子数量

true获取

false不获取

bWarhouse

bool

 
是否获取仓库中的空格子数量

true获取

false不获取

bAdvWarhouse

bool

 
是否获取高级仓库中的空格子数量

true获取

false不获取

note_icon 备注
当参数bBag、bWarhouse和bAdvWarhouse中有两个及以上参数设置为true时，则获取的空格子数量会进行叠加。

例如：代码lualib:BagFree(player, false, true, true)执行后获取的结果为仓库和高级仓库中的空格子数量之和。

返回值
int32

 
获取成功则返回包裹中的空格子数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("高级仓库格子数 : "..lualib:GetBagFreeEx(player, false, false, true)) --获取玩家高级仓库原有空格子数量
if lualib:AddAdvWarehouseSite(player, 1) then --增加高级仓库的格子数且增加数量为1
    lualib:Warn("新增后的高级仓库格子数 : "..lualib:BagFree(player, false, false, true)) --获取玩家高级仓库现有空格子数量
end

--此示例代码运行成功如下图所示。

AddAdvWarehouseSite.png
<上一篇:增加背包格子数下一篇:获取玩家包裹所有物品的GUID列表>
BagItemList
获取玩家包裹所有物品的GUID列表

更新时间：2023-01-18 00:00:00
此函数获取玩家包裹所有物品的GUID列表，支持获取玩家背包、仓库和高级仓库中物品的GUID列表。

语法
Luacopy 复制
lualib:BagItemList(
    strPlayer,
    bBag,
    bWarhouse,
    bAdvWarhouse
)

参数
strPlayer

string

 
玩家角色的GUID

bBag

bool

 
是否判断背包

true是

false否

bWarhouse

bool

 
是否判断仓库

true是

false否

bAdvWarhouse

bool

 
是否判断高级仓库

true是

false否

返回值
table

 
包裹中所有物品的GUID列表

存储在lua表中

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
<上一篇:获取玩家包裹中的空格子数量下一篇:获取玩家包裹中的格子数量>
BagSize
获取玩家包裹中的格子数量

更新时间：2023-01-18 00:00:00
此函数获取玩家包裹中的格子数量，支持获取玩家背包、仓库和高级仓库中的格子数量，与接口GetBagSizeEx作用相同。

参考 GetBagSize GetBagSizeEx

语法
Luacopy 复制
lualib:BagSize(
    strPlayer,
    bBag,
    bWarhouse,
    bAdvWarhouse
)

参数
strPlayer

string

 
玩家角色的GUID

bBag

bool

 
是否判断背包

true是

false否

bWarhouse

bool

 
是否判断仓库

true是

false否

bAdvWarhouse

bool

 
是否判断高级仓库

true是

false否

note_icon 备注
当参数bBag、bWarhouse和bAdvWarhouse中有两个及以上参数设置为true时，则获取的格子数量会进行叠加。

例如：代码lualib:BagSize(player, false, true, true)执行后获取的结果为仓库和高级仓库中的格子数量之和。

返回值
int32

 
获取成功则返回玩家包裹中的格子数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Count1 = lualib:BagSize(player,true,true,true) --获取玩家包裹中的格子数量
lualib:Warn("包裹大小："..Count1)

local Count2 = lualib:BagSize(player,true,false,false) --获取玩家背包中的格子数量
lualib:Warn("背包大小："..Count2)

local Count3 = lualib:BagSize(player,false,true,false) --获取玩家仓库中的格子数量
lualib:Warn("仓库大小："..Count3)

local Count4 = lualib:BagSize(player,false,false,true) --获取玩家高级仓库中的格子数量
lualib:Warn("高级仓库大小："..Count4)

--此示例代码运行成功如下图所示。

GetBagSizeEx.png
<上一篇:获取玩家包裹所有物品的GUID列表下一篇:清空玩家包裹>
ClearBag
清空玩家包裹

更新时间：2023-01-18 00:00:00
此函数作用为清空玩家包裹，支持清空玩家的装备栏、背包、仓库和高级仓库。

语法
Luacopy 复制
lualib:ClearBag(
    strPlayer,
    bEquip,
    bBag,
    bWarhouse,
    bAdvWarehouse,
    strDesc,
    strTarget
)

参数
strPlayer

string

 
玩家角色的GUID

bEquip

bool

 
是否判断装备栏

true是

false否

bBag

bool

 
是否判断背包

true是

false否

bWarhouse

bool

 
是否判断仓库

true是

false否

bAdvWarehouse

bool

 
是否判断高级仓库

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
if lualib:ClearBag(player, false, true, false, false, "清道具:原因", "发起人") then --清空玩家的背包
    lualib:Warn("清除成功")
else
    lualib:Warn("清除失败")
end

--此示例代码运行前效果如下图所示。

ClearBag.png

--此示例代码运行后效果如下图所示，同时游戏日志中还会打印相关内容。

ClearBag_2.png

ClearBag_3.png
<上一篇:获取玩家包裹中的格子数量下一篇:获取玩家背包中的第一个空格位>
FindFirstBagFreeSlot
获取玩家背包中的第一个空格位

更新时间：2023-01-18 00:00:00
此函数获取玩家背包中的第一个空格位对应的装备位枚举值。

语法
Luacopy 复制
lualib:FindFirstBagFreeSlot(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
若玩家背包中有空格，则返回第一个空格位对应的装备位枚举值；

若玩家背包中没有空格，则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local first_free_slot = lualib:FindFirstBagFreeSlot(player) --获取玩家背包中的第一个空格位
lualib:Warn("第一个空格位置为："..first_free_slot)

--当玩家背包中有空位时，此示例代码运行成功如下图所示。

FindFirstBagFreeSlot.png

--当玩家背包中无空位时，此示例代码运行成功如下图所示。

FindFirstBagFreeSlot_2.png
<上一篇:清空玩家包裹下一篇:获取玩家包裹中的空格子数量>
GetBagFreeEx
获取玩家包裹中的空格子数量

更新时间：2023-01-18 00:00:00
此函数获取玩家包裹中的空格子数量，支持获取玩家背包、仓库和高级仓库中的空格子数量，与接口BagFree作用相同。

参考 GetBagFree BagFree

语法
Luacopy 复制
lualib:GetBagFreeEx(
    strPlayer,
    bBag,
    bWarhouse,
    bAdvWarhouse
)

参数
strPlayer

string

 
玩家角色的GUID

bBag

bool

 
是否获取背包中的空格子数量

true获取

false不获取

bWarhouse

bool

 
是否获取仓库中的空格子数量

true获取

false不获取

bAdvWarhouse

bool

 
是否获取高级仓库中的空格子数量

true获取

false不获取

note_icon 备注
当参数bBag、bWarhouse和bAdvWarhouse中有两个及以上参数设置为true时，则获取的空格子数量会进行叠加。

例如：代码lualib:GetBagFreeEx(player, false, true, true)执行后获取的结果为仓库和高级仓库中的空格子数量之和。

返回值
int32

 
获取成功则返回包裹中的空格子数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("高级仓库格子数 : "..lualib:GetBagFreeEx(player, false, false, true)) --获取玩家高级仓库原有空格子数量
if lualib:AddAdvWarehouseSite(player, 1) then --增加高级仓库的格子数且增加数量为1
    lualib:Warn("新增后的高级仓库格子数 : "..lualib:GetBagFreeEx(player, false, false, true)) --获取玩家高级仓库现有空格子数量
end

--此示例代码运行成功如下图所示。

AddAdvWarehouseSite.png
<上一篇:获取玩家背包中的第一个空格位下一篇:获取玩家背包中的空格子数量>
GetBagFree
获取玩家背包中的空格子数量

更新时间：2023-01-18 00:00:00
此函数获取玩家背包中的空格子数量（仅支持玩家背包）。

参考 GetBagFreeEx BagFree

语法
Luacopy 复制
lualib:GetBagFree(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
获取成功则返回背包中的空格子数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Count = lualib:GetBagFree(player) --获取玩家背包中的空格子数量
lualib:Warn("背包剩余格子数："..Count)

--此示例代码运行成功如下图所示。

GetBagFree.png
<上一篇:获取玩家包裹中的空格子数量下一篇:获取玩家包裹中的格子数量>
GetBagSizeEx
获取玩家包裹中的格子数量

更新时间：2023-01-18 00:00:00
此函数获取玩家包裹中的格子数量，支持获取玩家背包、仓库和高级仓库中的格子数量，与接口BagSize作用相同。

参考 GetBagSize BagSize

语法
Luacopy 复制
lualib:GetBagSizeEx(
    strPlayer,
    bBag,
    bWarhouse,
    bAdvWarhouse
)

参数
strPlayer

string

 
玩家角色的GUID

bBag

bool

 
是否判断背包

true是

false否

bWarhouse

bool

 
是否判断仓库

true是

false否

bAdvWarhouse

bool

 
是否判断高级仓库

true是

false否

note_icon 备注
当参数bBag、bWarhouse和bAdvWarhouse中有两个及以上参数设置为true时，则获取的格子数量会进行叠加。

例如：代码lualib:GetBagSizeEx(player, false, true, true)执行后获取的结果为仓库和高级仓库中的格子数量之和。

返回值
int32

 
获取成功则返回玩家包裹中的格子数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Count1 = lualib:GetBagSizeEx(player,true,true,true) --获取玩家包裹中的格子数量
lualib:Warn("包裹大小："..Count1)

local Count2 = lualib:GetBagSizeEx(player,true,false,false) --获取玩家背包中的格子数量
lualib:Warn("背包大小："..Count2)

local Count3 = lualib:GetBagSizeEx(player,false,true,false) --获取玩家仓库中的格子数量
lualib:Warn("仓库大小："..Count3)

local Count4 = lualib:GetBagSizeEx(player,false,false,true) --获取玩家高级仓库中的格子数量
lualib:Warn("高级仓库大小："..Count4)

--此示例代码运行成功如下图所示。

GetBagSizeEx.png
<上一篇:获取玩家背包中的空格子数量下一篇:获取玩家背包中的格子数量>
GetBagSize
获取玩家背包中的格子数量

更新时间：2023-01-18 00:00:00
此函数获取玩家背包中的格子数量（仅支持玩家背包）。

参考 GetBagSizeEx BagSize

语法
Luacopy 复制
lualib:GetBagSize(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
获取成功则返回玩家背包中的格子数量

获取失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Count = lualib:GetBagSize(player) --获取玩家背包中的格子数量
lualib:Warn("背包大小："..Count)

--此示例代码运行成功如下图所示。

GetBagSize.png
<上一篇:获取玩家包裹中的格子数量下一篇:判断道具是否在玩家背包中>
InBag
判断道具是否在玩家背包中

更新时间：2023-01-18 00:00:00
此函数判断指定道具是否在玩家背包中。

语法
Luacopy 复制
lualib:InBag(
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

 
true该道具在玩家背包中

false该道具不在玩家背包中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item1 = lualib:Player_GetItemGuid(player,1) --获取玩家武器装备位上的物品的GUID
local item2 = lualib:Player_GetItemGuid(player,25) --获取背包中第4个格子中的物品的GUID

--判断item1是否在玩家的包裹中
if lualib:InBag(player, item1) then
    lualib:Warn("item1道具在玩家的包裹中")
else
    lualib:Warn("item1道具不在玩家的包裹中")
end

--判断item2是否在玩家的包裹中
if lualib:InBag(player, item2) then
    lualib:Warn("item2道具在玩家的包裹中")
else
    lualib:Warn("item2道具不在玩家的包裹中")
end

--此示例代码运行成功如下图所示。

InBag.png
<上一篇:获取玩家背包中的格子数量下一篇:判断玩家或者英雄包裹是否被锁定>
IsBagLock
判断玩家或者英雄包裹是否被锁定

更新时间：2023-02-06 00:00:00
此函数判断玩家或者英雄包裹是否被锁定。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

包裹锁定后将无法将无法移动或者使用物品。

语法
Luacopy 复制
lualib:IsBagLock(
    player_guid
)

参数
player_guid

string

 
玩家或者英雄的GUID

返回值
bool

 
true包裹被锁定

false包裹未被锁定

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--当玩家包裹未被锁定时，设置其包裹为锁定状态；当玩家包裹已被锁定时，则打印“玩家包裹已被锁定”。
if lualib:IsBagLock(player) == false then
    lualib:SetBagLock(player,true) --设置玩家包裹为锁定状态
    lualib:Warn("锁定成功")
else      
    lualib:Warn("玩家包裹已被锁定")
end

--当玩家包裹未被锁定时，此示例代码运行成功如下图所示。

IsBagLock.png

--当玩家包裹已被锁定时，此示例代码运行成功如下图所示。

IsBagLock_2.png
<上一篇:判断道具是否在玩家背包中下一篇:锁定/解锁玩家或者英雄的包裹>
SetBagLock
锁定/解锁玩家或者英雄的包裹

更新时间：2023-02-06 00:00:00
此函数作用为锁定/解锁玩家或者英雄的包裹。

note_icon 备注
此处的包裹是指所有的包裹格子，包括背包、扩展背包、装备栏、仓库和高级仓库。

包裹被锁定后将无法移动或者使用物品。

语法
Luacopy 复制
lualib:SetBagLock(
    player_guid,
    lock
)

参数
player_guid

string

 
玩家或者英雄的GUID

lock

bool

 
true锁定包裹

false解锁包裹

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--当玩家包裹未被锁定时，设置其包裹为锁定状态；当玩家包裹已被锁定时，则打印“玩家包裹已被锁定”。
if lualib:IsBagLock(player) == false then
    lualib:SetBagLock(player,true) --设置玩家包裹为锁定状态
    lualib:Warn("锁定成功")
else      
    lualib:Warn("玩家包裹已被锁定")
end

--当玩家包裹未被锁定时，此示例代码运行成功如下图所示。

IsBagLock.png

--当玩家包裹已被锁定时，此示例代码运行成功如下图所示。

IsBagLock_2.png
<上一篇:判断玩家或者英雄包裹是否被锁定下一篇:设置角色背包负重>
SetWeight
设置角色背包负重

更新时间：2023-02-06 00:00:00
此函数设置角色背包负重。

属性的修改操作可选择设置记录到日志服务器。

您可以通过游戏工具平台→游戏配置→全局表→全局模板表→其他设置，定位到需要记录的修改过的属性选项，填入该属性在角色属性类型表中对应的索引号，多个属性以英文逗号（“,”）进行分隔。

caution_icon 注意
此接口设置无效，设置后程序会重新进行计算，从而覆盖此接口设置的值。

语法
Luacopy 复制
lualib:SetWeight(
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

 
属性值（即要设置的背包负重值）

bIsLimit

bool

 
是否修改属性上限

true是（即修改角色的背包负重值上限）

false否（即修改当前的背包负重值）

note_icon 备注
当角色类型为玩家时，设置背包负重值上限无意义（装备属性重构后会失效）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetWeight(player,10,false) --设置角色当前的背包负重为10
lualib:SetWeight(player,100,true) --设置角色的背包负重上限为100
<上一篇:锁定/解锁玩家或者英雄的包裹下一篇:获取角色的背包负重>
Weight
获取角色的背包负重

更新时间：2023-01-18 00:00:00
此函数获取角色的背包负重。

语法
Luacopy 复制
lualib:Weight(
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

 
是否获取对应角色的背包负重上限值

true是（即获取对应角色的背包负重上限值）

false否（即获取对应角色当前的背包负重值）

返回值
int32

 对应角色的背包负重值上限/当前背包负重值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Weight_2.png
local hasWeight = lualib:Weight(player, false) --获取玩家当前的背包负重
lualib:Warn("玩家当前的负重："..hasWeight)

local hasmaxWeight = lualib:Weight(player, true) --获取玩家的背包负重上限
lualib:Warn("玩家的负重上限："..hasmaxWeight)

--此示例代码运行成功如下图所示。

Weight.png
<上一篇:设置角色背包负重
AddAdvWarehouseSite
增加高级仓库的格子数

更新时间：2023-01-18 00:00:00
此函数作用为增加高级仓库的格子数。

语法
Luacopy 复制
lualib:AddAdvWarehouseSite(
    player_guid,
    amount
)
参数
player_guid

string

 
玩家角色的GUID

amount

int32

 
增加的格子数

返回值
bool

 
true增加成功

false增加失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("高级仓库格子数 : "..lualib:GetBagFreeEx(player, false, false, true)) --获取玩家高级仓库原有空格子数量
if lualib:AddAdvWarehouseSite(player, 1) then --增加高级仓库的格子数且增加数量为1
    lualib:Warn("新增后的高级仓库格子数 : "..lualib:GetBagFreeEx(player, false, false, true)) --获取玩家高级仓库现有空格子数量
end

--此示例代码运行成功如下图所示。

AddAdvWarehouseSite.png
下一篇:将背包中的物品移动到仓库或者高级仓库中>
MoveItemToWarehouse
将背包中的物品移动到仓库或者高级仓库中

更新时间：2023-01-18 00:00:00
此函数设置将玩家背包中的物品移动到仓库或者高级仓库中。

语法
Luacopy 复制
lualib:MoveItemToWarehouse(
    player_guid,
    items,
    flag
)
参数
player_guid

string

 
玩家角色的GUID

items

table

 
物品的GUID集合

为table格式，格式为items={"物品1的GUID","物品2的GUID"}

flag

uint8

 
仓库类型

0移动到普通仓库

1移动到高级仓库

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功只代表执行成功，具体是否移动成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function removeEquip(npc,player)
    local itemlist = {}
    for i = 0,1 do 
        local item_site = lualib:Player_GetItemGuid(player,lua_site_bag_0 + i) --获得玩家某装备位的物品GUID
        if item_site ~= "" then 
            itemlist[#itemlist + 1] = item_site
        end
    end
    if #itemlist > 0 then 
        lualib:MoveItemToWarehouse(player,itemlist,0)  --将玩家背包中的物品移动到仓库中
    end
end

--此示例代码运行前背包和仓库的状态如下图所示。

MoveItemToWarehouse.png

--此示例代码运行后背包和仓库的状态如下图所示。

MoveItemToWarehouse_2.png
<上一篇:增加高级仓库的格子数下一篇:打开玩家高级仓库（扩展）>
OpenWarehouseAdvEx
打开玩家高级仓库（扩展）

更新时间：2023-01-18 00:00:00
此函数作用为打开玩家高级仓库，无需对应的NPC存在。

参考 OpenWarehouse OpenWarehouseAdv

语法
Luacopy 复制
lualib:OpenWarehouseAdvEx(
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
function main(npc, player)
    lualib:OpenWarehouseAdvEx(player)
end
--此示例代码执行后成功打开指定玩家的高级仓库。
<上一篇:将背包中的物品移动到仓库或者高级仓库中下一篇:打开玩家高级仓库>
OpenWarehouseAdv
打开玩家高级仓库

更新时间：2023-01-18 00:00:00
此函数作用为打开玩家高级仓库，需要对应的NPC存在。

当角色距离对应NPC（挂载了包含此接口的脚本的NPC）超过“NPC对话最大距离”选项的配置值时，将无法打开高级仓库。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

OpenWarehouseAdv.png
参考 OpenWarehouse

语法
Luacopy 复制
lualib:OpenWarehouseAdv(
    strNpc,
    strPlayer
)

参数
strNpc

string

 
NPC的GUID

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
function main(npc, player)
    lualib:OpenWarehouseAdv(npc, player)
end
--此示例代码执行后成功打开指定玩家的高级仓库。
<上一篇:打开玩家高级仓库（扩展）下一篇:打开玩家仓库（扩展）>
OpenWarehouseEx
打开玩家仓库（扩展）

更新时间：2023-01-18 00:00:00
此函数作用为打开玩家仓库，无需对应的NPC存在。

参考 OpenWarehouse OpenWarehouseAdv

语法
Luacopy 复制
lualib:OpenWarehouseEx(
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
function main(npc, player)
    lualib:OpenWarehouseEx(player)
end
--此示例代码执行后成功打开指定玩家的仓库。
<上一篇:打开玩家高级仓库下一篇:打开玩家仓库>
OpenWarehouse
打开玩家仓库

更新时间：2023-01-18 00:00:00
此函数作用为打开玩家仓库，需要对应的NPC存在。

当角色距离对应NPC（挂载了包含此接口的脚本的NPC）超过“NPC对话最大距离”选项的配置值时，将无法打开仓库。

对应选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→杂项区域。

OpenWarehouseAdv.png
参考 OpenWarehouseAdv

语法
Luacopy 复制
lualib:OpenWarehouse(
    strNpc,
    strPlayer
)

参数
strNpc

string

 
NPC的GUID

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
function main(npc, player)
    lualib:OpenWarehouse(npc, player)
end
--此示例代码执行后成功打开指定玩家的仓库。
<上一篇:打开玩家仓库（扩展）
GetMonsterCount
获取怪物数量

更新时间：2023-01-18 00:00:00
此函数获取服务器中指定模板ID的怪物数量。

语法
Luacopy 复制
lualib:GetMonsterCount(
    id
)
参数
id

uint16

 
怪物的模板ID

返回值
int

 
怪物数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
for i = 1, 5 do
    local mapGuid = lualib:Map_GetMapGuid("大陆" .. i)
    lualib:Map_BatchGenMonster(mapGuid, "练功师", i, false)
end
lualib:SysWarnMsg(player, "GetMonsterCount = " .. lualib:GetMonsterCount(69))

--此示例代码运行成功如下图所示。

GetMonsterCount
下一篇:获取怪物的编号>
MonsterKey2ID
获取怪物的编号

更新时间：2023-01-18 00:00:00
此函数根据怪物的索引名（KeyName）获取该怪物在怪物模板表中的编号（ID）。

语法
Luacopy 复制
lualib:MonsterKey2ID(
    strMonsterKey
)

参数
strMonsterKey

string

 
怪物的索引名（KeyName）

返回值
uint32

 
执行成功则返回怪物的编号（ID）

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster_id = lualib:MonsterKey2ID("练功师") --获取怪物“练功师”的编号
lualib:SysWarnMsg(player, "id = " .. monster_id)

--此示例代码运行成功如下图所示。

MonsterKey2ID.png
<上一篇:获取怪物数量下一篇:将角色添加到怪物的永久侦测列表>
Monster_AddPersistentDetectableRole
将角色添加到怪物的永久侦测列表

更新时间：2023-01-18 00:00:00
此函数作用为将一个角色添加到怪物的永久侦测列表中。

角色被添加到怪物的永久侦测列表后，即使被添加的角色以隐形状态接近怪物，怪物也能侦测到并且可攻击该角色。

语法
Luacopy 复制
lualib:Monster_AddPersistentDetectableRole(
    strMonster,
    strRole
)
参数
strMonster

string

 
怪物的GUID

strRole

string

 
角色的GUID

返回值
bool

 
true添加成功

false添加失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_role_pre_harm, "on_pre_harm")

--将角色添加到怪物的永久侦测列表中（怪物可以攻击该隐形玩家）
function on_pre_harm(role, attacker, hp, defense, skill_key, isBurst)
    local ret = lualib:Monster_AddPersistentDetectableRole(role, attacker) 
    lualib:Warn(tostring(ret))
    return hp
end

--此示例代码运行成功如下图所示。

Monster_AddPersistentDetectableRole
<上一篇:获取怪物的编号下一篇:设置怪物指定技能的使用概率权重>
Monster_AddSkillData
设置怪物指定技能的使用概率权重

更新时间：2023-01-18 00:00:00
此函数设置怪物指定技能的使用概率权重。

参考 Monster_DelSkillData

note_icon 备注
需要怪物已经学习该技能。

语法
Luacopy 复制
lualib:Monster_AddSkillData(
    strMonster,
    skillId,
    rate
)

参数
strMonster

string

 
怪物的GUID

skillId

uint16

 
技能ID

rate

int32

 
技能使用概率权重

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下：
--1.怪物“宠物恶魔宝宝”配置了2个技能并且技能1与技能2的权重分别为10和90；
--2.技能1与技能2的权重比为1：9，因此怪物释放技能2的概率远高于技能1。
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
lualib:Monster_AddSkillData(monsters[1], 121 , 1000) --设置怪物指定技能1的使用概率权重为1000

--此示例代码运行后，技能1与技能2的权重分别为1000和90（权重比为100：9），怪物释放技能1的概率远高于技能2。
<上一篇:将角色添加到怪物的永久侦测列表下一篇:增加怪物的单个目标仇值>
Monster_AddTargetHate
增加怪物的单个目标仇值

更新时间：2023-01-18 00:00:00
此函数作用为增加怪物的单个目标仇恨值。

语法
Luacopy 复制
lualib:Monster_AddTargetHate(
    mosnter,
    target,
    hate
)
参数
mosnter

string

 
怪物的GUID

target

string

 
目标的GUID

hate

uint32

 
仇恨值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster = lualib:Map_GenSingleCampMonster(lualib:MapGuid(player), lualib:X(player) + 2, lualib:Y(player) + 2, 2, 4, "挂机食人妖精", false, 2) --在地图指定范围生成一只设置了阵营的怪物
local tHateList = {{["GUID"] = player, ["Hate"] = 50, ["Elapse"] = 30000}}
if lualib:Monster_SetHateList(monster,tHateList) then --设置怪物的仇恨列表
    lualib:Warn("增加仇恨前："..serialize(lualib:Monster_GetHateList(monster))) --获取修改前怪物的仇恨列表
    lualib:Monster_AddTargetHate(monster,player,20) --给怪物的单个目标增加20点仇恨值
    lualib:Warn("增加仇恨后："..serialize(lualib:Monster_GetHateList(monster))) --获取修改后怪物的仇恨列表
end

--此示例代码运行成功如下图所示。

Monster_AddTargetHate.png
<上一篇:设置怪物指定技能的使用概率权重下一篇:清除怪物的仇恨列表>
Monster_ClearHateList
清除怪物的仇恨列表

更新时间：2023-01-18 00:00:00
此函数作用为清除怪物的仇恨列表。

语法
Luacopy 复制
lualib:Monster_ClearHateList(
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
--以下示例代码执行前提如下图所示。

Monster_ClearHateList.png
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
local ret = lualib:Monster_ClearHateList(monsters[1]) --清除怪物的仇恨列表
local cet = lualib:Monster_GetHateList(monsters[1])  --获取怪物的仇恨列表
lualib:SysWarnMsg(player, serialize(cet))

--此示例代码运行成功如下图所示，怪物的仇恨列表成功被清空。

Monster_ClearHateList_2.png
<上一篇:增加怪物的单个目标仇值下一篇:获取怪物的配置表结构>
Monster_DataRow
获取怪物的配置表结构

更新时间：2023-01-18 00:00:00
此函数根据怪物的索引名（KeyName）获取该怪物的配置表结构。

语法
Luacopy 复制
lualib:Monster_DataRow(
    strMonsterKey
)

参数
strMonsterKey

string

 
怪物的索引名（KeyName）

返回值
table

 
怪物的配置表结构

其定义请参见Monster模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("Monster_DataRow = "..json.encode(lualib:Monster_DataRow("魔将怒雷"))) --获取怪物“魔将怒雷”的怪物配置表结构

--此示例代码运行成功如下图所示。

Monster_DataRow.png
<上一篇:清除怪物的仇恨列表下一篇:删除怪物指定技能的使用概率权重>
Monster_DelSkillData
删除怪物指定技能的使用概率权重

更新时间：2023-01-18 00:00:00
此函数删除怪物指定技能的使用概率权重。

参考 Monster_AddSkillData

语法
Luacopy 复制
lualib:Monster_DelSkillData(
    strMonster,
    skillId
)

参数
strMonster

string

 
怪物的GUID

skillId

uint16

 
技能ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：怪物“宠物恶魔宝宝”只配置了1个技能并且可以正常使用技能攻击玩家。
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
lualib:Monster_DelSkillData(monsters[1], 121) --删除怪物当前技能的使用概率权重

--此示例代码运行后，怪物不再使用技能攻击玩家。
<上一篇:获取怪物的配置表结构下一篇:让怪物行走到指定坐标>
Monster_Escape
让怪物行走到指定坐标

更新时间：2023-01-18 00:00:00
此函数让怪物行走到指定坐标点。

此接口每执行一次，怪物移动一个逻辑格，需多次执行直至移动到指定坐标点。

如需设置怪物直接寻路到指定目标，则可使用接口lualib:Monster_SetSeeker将怪物设置为自动行走怪。

语法
Luacopy 复制
lualib:Monster_Escape(
    strMonster,
    wX,
    wY
)

参数
strMonster

string

 
怪物的GUID

wX

uint16

 
目标点在地图上的X坐标

wY

uint16

 
目标点在地图上的Y坐标

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
lualib:Monster_Escape((monsters[1], 45, 76) --让怪物行走到指定坐标

--此示例代码多次执行后，怪物会移动到坐标点（45,76）。
<上一篇:删除怪物指定技能的使用概率权重下一篇:让怪物对目标角色强制施放技能>
Monster_ForceSpellTarget
让怪物对目标角色强制施放技能

更新时间：2023-02-06 00:00:00
此函数让怪物对目标角色强制施放技能。

caution_icon注意
怪物释放技能攻击目标时会忽略目标阵营。

语法
Luacopy 复制
lualib:Monster_ForceSpellTarget(
    strMonster,
    strSkillKey,
    strTarget
)
参数
strMonster

string

 
怪物的GUID

strSkillKey

string

 
技能的索引名（KeyName）

strTarget

string

 
技能施放的目标角色

可以是怪物、玩家或者英雄

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster_guid = "2ar8m1rl6tkjq"
if lualib:Monster_ForceSpellTarget(monster_guid, "陨星灭世4级", player) then
    lualib:Warn(lualib:Name(monster_guid).." 使用技能 陨星灭世 强制攻击了 "..lualib:Name(player))
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Monster_ForceSpellTarget.png

Monster_ForceSpellTarget_2.png
<上一篇:让怪物行走到指定坐标下一篇:根据地图的索引名获取怪物刷新表结构>
Monster_Gen_DataRow_By_Map
根据地图的索引名获取怪物刷新表结构

更新时间：2023-01-18 00:00:00
此函数根据地图的索引名（KeyName）获取怪物刷新表结构。

语法
Luacopy 复制
lualib:Monster_Gen_DataRow_By_Map(
    map_key
)
参数
map_key

string

 
地图的索引名（KeyName）

返回值
table

 
怪物刷新表结构

其定义请参见怪物刷新表属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_t = lualib:Monster_Gen_DataRow_By_Map("18地图1号") --根据地图的索引名获取怪物刷新表结构
lualib:Warn("map_t = "..json.encode(map_t))

--此示例代码运行成功如下图所示。

Monster_Gen_DataRow_By_Map.png
<上一篇:让怪物对目标角色强制施放技能下一篇:根据怪物的索引名获取怪物刷新表结构>
Monster_Gen_DataRow_By_Monster
根据怪物的索引名获取怪物刷新表结构

更新时间：2023-01-18 00:00:00
此函数根据怪物的索引名（KeyName）获取怪物刷新表结构。

语法
Luacopy 复制
lualib:Monster_Gen_DataRow_By_Monster(
    monster_key
)
参数
monster_key

string

 
怪物的索引名（KeyName）

返回值
table

 
怪物刷新表结构

其定义请参见怪物刷新表属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster_t = lualib:Monster_Gen_DataRow_By_Monster("BOSS之家泥沼梦魇") --根据怪物的索引名获取怪物刷新表结构
lualib:Warn("monster_t = "..json.encode(monster_t))

--此示例代码运行成功如下图所示。

Monster_Gen_DataRow_By_Monster.png
<上一篇:根据地图的索引名获取怪物刷新表结构下一篇:获取怪物的刷新表结构>
Monster_Gen_DataRow
获取怪物的刷新表结构

更新时间：2023-01-18 00:00:00
此函数获取怪物的刷新表结构。

语法
Luacopy 复制
lualib:Monster_Gen_DataRow()
参数
无

返回值
table

 
怪物刷新表结构

其定义请参见怪物刷新表属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
   local MonsterTable = lualib:Monster_Gen_DataRow() --获取所有怪物刷新表数据
   lualib:Warn("怪物刷新表结构为"..serialize(MonsterTable))
end

--此示例代码运行成功如下图所示（截取部分）。

Monster_Gen_DataRow.png
<上一篇:根据怪物的索引名获取怪物刷新表结构下一篇:获取怪物的攻击目标>
Monster_GetAttackTarget
获取怪物的攻击目标

更新时间：2023-01-18 00:00:00
此函数获取怪物攻击目标的GUID。

note_icon 备注
此接口与接口Monster_GetCurTarget作用相同。

语法
Luacopy 复制
lualib:Monster_GetAttackTarget(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
string

 
执行成功则返回攻击目标的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
local cet = lualib:Monster_GetAttackTarget(monsters[1]) --获取怪物修改前的攻击目标的GUID
lualib:SysWarnMsg(player, tostring(cet))
local ret = lualib:Monster_SetAttackTarget(monsters[1],player) --设置怪物的攻击目标
lualib:SysWarnMsg(player, tostring(ret))
local jet = lualib:Monster_GetAttackTarget(monsters[1]) --获取怪物修改后的攻击目标的GUID
lualib:SysWarnMsg(player, tostring(jet))

--此示例代码运行成功如下图所示。

Monster_GetAttackTarget.png
<上一篇:获取怪物的刷新表结构下一篇:获取怪物的攻击目标>
Monster_GetCurTarget
获取怪物的攻击目标

更新时间：2023-01-18 00:00:00
此函数获取怪物的攻击目标。

note_icon 备注
此接口与接口Monster_GetAttackTarget作用相同。

语法
Luacopy 复制
lualib:Monster_GetCurTarget(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
string

 
执行成功则返回攻击目标的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
local cet = lualib:Monster_GetCurTarget(monsters[1]) --获取怪物修改前的攻击目标的GUID
lualib:SysWarnMsg(player, tostring(cet))
local ret = lualib:Monster_SetAttackTarget(monsters[1],player) --设置怪物的攻击目标
lualib:SysWarnMsg(player, tostring(ret))
local jet = lualib:Monster_GetCurTarget(monsters[1]) --获取怪物修改后的攻击目标的GUID
lualib:SysWarnMsg(player, tostring(jet))

--此示例代码运行成功如下图所示。

Monster_GetAttackTarget.png
<上一篇:获取怪物的攻击目标下一篇:获取怪物掉落物品所归属玩家的GUID>
Monster_GetDropOwner
获取怪物掉落物品所归属玩家的GUID

更新时间：2023-01-18 00:00:00
此函数获取怪物掉落物品所归属玩家的GUID。

语法
Luacopy 复制
lualib:Monster_GetDropOwner(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
string

 
怪物有归属则返回掉落物品所归属的玩家角色的GUID

怪物无归属则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "测试怪boss", ranges, true, true) --获取当前地图指定区域上中怪物“测试怪boss”的GUID列表
local ret = lualib:Monster_GetDropOwner(monsters[1]) --获取第一个怪物掉落物品所归属玩家的GUID
lualib:Warn("怪物掉落归属为"..tostring(ret))
--若怪物的掉落物品所归属玩家不是当前玩家，则会打印“无权拾取”。
if ret ~= player then      
    lualib:Warn("无权拾取")
end

--此示例代码运行成功如下图所示（怪物的掉落物品所归属玩家不是当前玩家）。

Monster_GetDropOwner.png
<上一篇:获取怪物的攻击目标下一篇:计算怪物的逃跑坐标点>
Monster_GetEscapePoint
计算怪物的逃跑坐标点

更新时间：2023-01-18 00:00:00
此函数根据攻击者的坐标位置和怪物的逃跑距离来计算怪物的逃跑坐标点。

语法
Luacopy 复制
lualib:Monster_GetEscapePoint(
    strMonster,
    wActorX,
    wActorY,
    wDistance
)

参数
strMonster

string

 
怪物的GUID

wActorX

uint16

 
攻击者在地图上的X坐标

wActorY

uint16

 
攻击者在地图上的Y坐标

wDistance

uint16

 
逃跑距离

单位为逻辑格

返回值
table

 
怪物逃跑的坐标点（为逻辑格坐标）

存储在lua表中，table格式为{怪物逃跑点的X坐标,怪物逃跑点的Y坐标}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
local x = lualib:X(player) --获取玩家当前位置的X坐标
local y = lualib:Y(player) --获取玩家当前位置的Y坐标
local point = lualib:Monster_GetEscapePoint(monsters[1], x, y, 5)  --计算怪物的逃跑坐标点
local path = {point["x"], point["y"]}
lualib:Monster_SetSeeker(monsters[1], path, 0, true) --将该怪物设为自动行走怪
lualib:Warn(serialize(point))

--此示例代码运行成功如下图所示。

Monster_GetEscapePoint.png
<上一篇:获取怪物掉落物品所归属玩家的GUID下一篇:获取怪物的仇恨列表>
Monster_GetHateList
获取怪物的仇恨列表

更新时间：2023-01-18 00:00:00
此函数获取怪物的仇恨列表。

语法
Luacopy 复制
lualib:Monster_GetHateList(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
table

 
怪物的仇恨列表

存储在lua表中，table格式如下所示：

{

{["GUID"] = 目标对象1的GUID, ["Hate"] = 仇恨值1, ["Elapse"] = 仇恨持续时间1, ["Tick"] = 添加仇恨的时间1},

{["GUID"] = 目标对象2的GUID, ["Hate"] = 仇恨值2, ["Elapse"] = 仇恨持续时间2, ["Tick"] = 添加仇恨的时间2},

....

}

具体参数说明如下：

GUID(string)：目标对象的GUID；

Hate(int)：仇恨值；

Elapse(int)：仇恨持续时间，单位为毫秒（ms）；

Tick(int)：系统从开机到添加仇恨值所经过的毫秒数。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "剧毒蜘蛛", ranges, true, true) --获取当前地图指定区域上中怪物“剧毒蜘蛛”的GUID列表
local ret = lualib:Monster_GetHateList(monsters[1]) --获取修改前的怪物仇恨列表
lualib:Warn(serialize(ret))
lualib:Monster_SetHateList(monsters[1],{[1]= {["GUID"] = player, ["Hate"] = 2, ["Elapse"] = 3000}}) --设置怪物的仇恨列表
local cet = lualib:Monster_GetHateList(monsters[1]) --获取修改后的怪物仇恨列表
lualib:Warn(serialize(cet))

--此示例代码运行成功如下图所示。

--修改前的怪物仇恨列表。

Monster_GetHateList.png

--修改前的怪物仇恨列表。

Monster_GetHateList_2.png
<上一篇:计算怪物的逃跑坐标点下一篇:获取怪物主人的名字>
Monster_GetMaster
获取怪物主人的名字

更新时间：2023-02-06 00:00:00
此函数获取怪物主人的名字。

语法
Luacopy 复制
lualib:Monster_GetMaster(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
string

 
怪物存在则返回怪物主人的名字

怪物不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger("0", lua_trigger_role_pre_harm, "on_pre_harm") --受到伤害之前触发

--------受到伤害前触发-------------
function on_pre_harm(role, attacker, hp, defense, skill_key, isBurst)  --被攻击者，攻击者，血量（正加负扣），防御值，技能，暴击

--……省略部分代码

    if lualib:Monster_IsMonster(attacker) and lualib:Player_IsPlayer(role) then
        --玩家被宠物攻击时，会获取宠物主人的名字，并打印日志。
        if lualib:Monster_IsMonster(attacker) then
            local name = lualib:Monster_GetMaster(attacker)
            if name ~= "" then
                lualib:Warn("您被"..name.."的宠物攻击了！")
            end
        end
    end
end

--此示例代码运行成功如下图所示。

Monster_GetMaster.png
<上一篇:获取怪物的仇恨列表下一篇:获取怪物的重生时间>
Monster_GetRebornTime
获取怪物的重生时间

更新时间：2024-07-26 00:00:00
此函数获取怪物的重生时间。

语法
Luacopy 复制
lualib:Monster_GetRebornTime(
    monster_guid
)
参数
monster_guid

string

 
怪物GUID

返回值
table

 
返回复活时间列表，存储在lua表中。

数据列表中包括两个数据（reborn复活时间，reborn_ex复活浮动时间），单位为毫秒。

返回的table格式为{["reborn"]=1, ["reborn_ex"]=2}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 在地图指定范围生成一只怪物
local map = lualib:MapGuid(player)
local monster_guid = lualib:Map_GenSingleMonster(map, 60, 105, 0, 4, "塔防食人恶魔", true) 
lualib:SetStr(player,"test_monster_guid",monster_guid)
-- 设置怪物的重生时间
local reborn = 5000
local reborn_ex = 0
if lualib:Monster_SetRebornTime(monster_guid,reborn,reborn_ex) then
    lualib:Warn("怪物的重生时间设置成功")
else
    lualib:Warn("怪物的重生时间设置失败")
end
-- 获取怪物的重生时间
monster_guid = lualib:GetStr(player,"test_monster_guid")
local t_rebornTime = lualib:Monster_GetRebornTime(monster_guid)
lualib:Warn("怪物的复活时间为："..t_rebornTime["reborn"].."毫秒")
lualib:Warn("怪物的复活浮动时间："..t_rebornTime["reborn_ex"].."毫秒")

--怪物成功创建

Monster_GetRebornTime.png

--怪物的重生时间成功获取

Monster_GetRebornTime_2.png
<上一篇:获取怪物主人的名字下一篇:获取相应等级的抽取类型怪物>
Monster_GetSpecial
获取相应等级的抽取类型怪物

更新时间：2023-01-18 00:00:00
此函数获取相应等级的抽取类型怪物的索引名（KeyName）列表。

抽取类型怪物是指怪物模板表中的“等级抽取怪”选项配置为“是”的怪物。

对应选项访问路径为：游戏工具平台→游戏配置→怪物表→怪物模板表→基础信息→其它区域。

Monster_GetSpecial.png
语法
Luacopy 复制
lualib:Monster_GetSpecial(
    wMaxLevel,
    wMinLevel
)

参数
wMaxLevel

uint16

 
最大等级

wMinLevel

uint16

 
最小等级

返回值
table

 
符合条件的抽取类型怪物的索引名（KeyName）列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster_table = lualib:Monster_GetSpecial(20,30) --获取20级到30级之间的抽取类型怪物
lualib:Warn(serialize(monster_table))

--此示例代码运行成功如下图所示。

Monster_GetSpecial_2.png
<上一篇:获取怪物的重生时间下一篇:判断怪物是否死亡>
Monster_IsDie
判断怪物是否死亡

更新时间：2023-01-18 00:00:00
此函数判断怪物是否死亡。

语法
Luacopy 复制
lualib:Monster_IsDie(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
bool

 
true对应怪物已死亡

false对应怪物未死亡

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, false, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
local ret = lualib:Monster_IsDie(monsters[1]) --判断怪物是否死亡
local cet = lualib:Monster_IsExist(monsters[1]) --判断怪物是否存在

if cet == true and ret == true then
    lualib:Warn("怪物已死亡")
elseif cet == true and ret == false then
    lualib:Warn("怪物存活")
else
    lualib:Warn("怪物不存在")
end

--当怪物已死亡但尸体存在时，则会打印“怪物已死亡”；

--当怪物存在且存活时，则会打印“怪物存活”；

--当怪物不存在时，则会打印“怪物不存在”。
<上一篇:获取相应等级的抽取类型怪物下一篇:判断怪物是否存在>
Monster_IsExist
判断怪物是否存在

更新时间：2023-01-18 00:00:00
此函数判断怪物是否存在。

语法
Luacopy 复制
lualib:Monster_IsExist(
    strMonster
)

参数
strMonster

string

 
怪物的GUID

返回值
bool

 
true对应怪物存在

false对应怪物不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
if lualib:Monster_IsExist(monsters[1]) == true then
    lualib:Warn("宠物恶魔宝宝存在")
elseif lualib:Monster_IsExist(monsters[1]) == false then
    lualib:Warn("宠物恶魔宝宝不存在")
end

--当怪物“宠物恶魔宝宝”存在时，接口Monster_IsExist会返回true，同时控制台还会输出如下内容。

Monster_IsExist.png

--当怪物“宠物恶魔宝宝”不存在时，接口Monster_IsExist会返回false，同时控制台还会输出如下内容。

Monster_IsExist_2.png
<上一篇:判断怪物是否死亡下一篇:判断对象是否为怪物>
Monster_IsMonster
判断对象是否为怪物

更新时间：2023-01-18 00:00:00
此函数判断对象是否为怪物。

语法
Luacopy 复制
lualib:Monster_IsMonster(
    strObject
)

参数
strObject

string

 
对象的GUID

返回值
bool

 
true该对象是怪物

false该对象不是怪物

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
local ret = lualib:Monster_IsMonster(monsters[1]) --判断对象是否为怪物
lualib:SysWarnMsg(player, tostring(ret))
local jet = lualib:Monster_IsMonster(player) --判断对象是否为怪物
lualib:SysWarnMsg(player, tostring(jet))

--此示例代码运行成功如下图所示（第一个对象是怪物，第二个对象不是怪物）。

Monster_IsMonster.png
<上一篇:判断怪物是否存在下一篇:让怪物跳转到指定地图的指定坐标范围>
Monster_JumpXY
让怪物跳转到指定地图的指定坐标范围

更新时间：2023-01-18 00:00:00
此函数执行怪物跳转地图的操作，怪物可跳转到指定地图的指定坐标范围。

语法
Luacopy 复制
lualib:Monster_JumpXY(
    strMap,
    strMonster,
    wX,
    wY,
    wRange
)

参数
strMap

string

 
地图的GUID

strMonster

string

 
怪物的GUID

wX

uint16

 
跳转点在地图上的X坐标（为逻辑格坐标）

wY

uint16

 
跳转点在地图上的Y坐标（为逻辑格坐标）

wRange

uint16

 
坐标范围

例如：跳转点的坐标为(0,0)，坐标范围为5，则实际可跳转的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，怪物只可跳转到指定的坐标位置。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
lualib:Monster_JumpXY(lualib:Map_GetMapGuid("巨蟹座"),monsters[1],59,68,5) --让怪物跳转到地图“巨蟹座”的指定坐标范围

--此示例代码运行成功后，会跳转到地图“巨蟹座”的指定坐标范围内。
<上一篇:判断对象是否为怪物下一篇:清理怪物>
Monster_Remove
清理怪物

更新时间：2023-01-18 00:00:00
此函数作用为清理怪物。

语法
Luacopy 复制
lualib:Monster_Remove(
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
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
lualib:Monster_Remove(monsters[1]) --清理第一个怪物“宠物恶魔宝宝”

--此示例代码运行成功后，第一个怪物“宠物恶魔宝宝”成功被清理。
<上一篇:让怪物跳转到指定地图的指定坐标范围下一篇:设置怪物的攻击目标>
Monster_SetAttackTarget
设置怪物的攻击目标

更新时间：2023-01-18 00:00:00
此函数作用为设置怪物的攻击目标。

语法
Luacopy 复制
lualib:Monster_SetAttackTarget(
    strMonster,
    strTarget
)

参数
strMonster

string

 
怪物的GUID

strTarget

string

 
怪物的目标

若此参数的配置值为""，则代表清除上一次调用此接口时设定的攻击目标。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
local cet = lualib:Monster_GetAttackTarget(monsters[1]) --获取怪物修改前的攻击目标的GUID
lualib:SysWarnMsg(player, tostring(cet))
local ret = lualib:Monster_SetAttackTarget(monsters[1],player) --设置怪物的攻击目标
lualib:SysWarnMsg(player, tostring(ret))
local jet = lualib:Monster_GetAttackTarget(monsters[1]) --获取怪物修改后的攻击目标的GUID
lualib:SysWarnMsg(player, tostring(jet))

--此示例代码运行成功如下图所示。

Monster_GetAttackTarget.png
<上一篇:清理怪物下一篇:设置怪物允许攻击的角色类型>
Monster_SetAttackType
设置怪物允许攻击的角色类型

更新时间：2023-01-18 00:00:00
此函数作用为设置怪物（包括宠物和守卫）允许攻击的角色类型。

对于此接口设置的怪物允许攻击的目标类型，引擎将做进一步判断。

语法
Luacopy 复制
lualib:Monster_SetAttackType(
    monster_guid,
    target_type,
    is_attack
)

参数
monster_guid

string

 
怪物的GUID

target_type

uint8

 
支持的目标类型

0玩家

1假人

2怪物

3NPC

is_attack

bool

 
true允许攻击

false不允许攻击

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "宠物恶魔宝宝", ranges, true, true) --获取当前地图指定区域上中怪物“宠物恶魔宝宝”的GUID列表
lualib:Monster_SetAttackType(monsters[1],0,false) --设置怪物不允许攻击玩家

--此示例代码执行前，当前怪物会攻击玩家。

--此示例代码执行后，当前怪物不会攻击玩家。
<上一篇:设置怪物的攻击目标下一篇:设置怪物使用侦测隐形>
Monster_SetDetectInv
设置怪物使用侦测隐形

更新时间：2025-10-31 18:38:00
此函数设置怪物使用侦测隐形。

语法
Luacopy 复制
lualib:Monster_SetDetectInv(
    monster_guid,
    detect_inv
)
参数
monster_guid

string

 
怪物的guid

detect_inv

INT8

 
使用侦测隐形的类型，0为不侦测，1为全侦测，2为范围侦测。

note_icon 备注
设置成-1则使用怪物模板表的侦测隐形字段。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--怪物表设置为不可侦测隐身
function ys(npc, player)
    local map = lualib:MapGuid(player)
    local ranges = {0, 100, 100, 100, 100}
    local monsters = lualib:Map_GetRegionMonstersEx(map, "魔宫骷髅战士", ranges, true, true)
    lualib:Monster_SetDetectInv(monsters[1], 1) 
end

--如下图所示，未设置接口，处于隐身状态怪物不会攻击。

Monster_SetDetectInv.png

--执行示例代码，如下图所示，设置接口之后，隐身状态怪物会侦测进行攻击。

Monster_SetDetectInv_2.png
<上一篇:设置怪物允许攻击的角色类型下一篇:设置怪物掉落归属>
Monster_SetDropOwner
设置怪物掉落归属

更新时间：2024-10-18 00:00:00
此函数设置怪物掉落归属。

语法
Luacopy 复制
lualib:Monster_SetDropOwner(
    monster_guid,
    owner_guid
)
参数
monster_guid

string

 
怪物的guid

owner_guid

string

 
怪物归属者的guid

返回值
 
void

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 生成一个怪物，使用此接口设置怪物掉落归属玩家，然后用Monster_GetDropOwner接口获取怪物掉落归属玩家的GUID，查看是否与设置的一致
-- 在地图指定范围生成怪物
local strMap = lualib:MapGuid(player)
local wX = 59
local wY = 104
local wRange = 3
local byDir = 4
local strMonsterKey = "塔防食人恶魔"
local wCount = 1
local bCanRelive = false
local iCamp = 2
lualib:Map_GenCampMonster(strMap, wX, wY, wRange, byDir, strMonsterKey, wCount, bCanRelive, iCamp)
-- 设置怪物掉落归属
local monster_guid = "2ar8me43jh85a"
local owner_guid = player
local owner_name = lualib:Guid2Name(owner_guid)
lualib:Warn("设置怪物掉落所归属玩家的GUID："..owner_guid.."，名字："..owner_name)
lualib:Monster_SetDropOwner(monster_guid, owner_guid)
-- 获取怪物掉落物品所归属玩家的GUID
local revert_player_guid = lualib:Monster_GetDropOwner(monster_guid)
local revert_player_name = lualib:Guid2Name(revert_player_guid)
lualib:Warn("获取怪物掉落所归属玩家的GUID："..revert_player_guid.."，名字："..revert_player_name)

--怪物掉落物品所归属玩家的GUID与使用此接口设置的怪物掉落所归属玩家的GUID一致，说明怪物掉落归属设置成功。
Monster_SetDropOwner.png
<上一篇:设置怪物使用侦测隐形下一篇:设置怪物的仇恨列表>
Monster_SetHateList
设置怪物的仇恨列表

更新时间：2023-01-18 00:00:00
此函数设置怪物的仇恨列表。

语法
Luacopy 复制
lualib:Monster_SetHateList(
    strMonster,
    tHateList
)

参数
strMonster

string

 
怪物的GUID

tHateList

table

 
怪物的仇恨列表

table格式如下所示：

{

{["GUID"] = 目标对象1的GUID, ["Hate"] = 仇恨值1, ["Elapse"] = 仇恨持续时间1},

{["GUID"] = 目标对象2的GUID, ["Hate"] = 仇恨值2, ["Elapse"] = 仇恨持续时间2},

....

}

具体参数说明如下：

GUID(string)：目标对象的GUID；

Hate(int)：仇恨值；

Elapse(int)：仇恨持续时间，单位为毫秒（ms）。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "剧毒蜘蛛", ranges, true, true) --获取当前地图指定区域上中怪物“剧毒蜘蛛”的GUID列表
local ret = lualib:Monster_GetHateList(monsters[1]) --获取修改前的怪物仇恨列表
lualib:Warn(serialize(ret))
lualib:Monster_SetHateList(monsters[1],{[1]= {["GUID"] = player, ["Hate"] = 2, ["Elapse"] = 3000}}) --设置怪物的仇恨列表
local cet = lualib:Monster_GetHateList(monsters[1]) --获取修改后的怪物仇恨列表
lualib:Warn(serialize(cet))

--此示例代码运行成功如下图所示。

--修改前的怪物仇恨列表。

Monster_GetHateList.png

--修改前的怪物仇恨列表。

Monster_GetHateList_2.png
<上一篇:设置怪物掉落归属下一篇:设置怪物的重生时间>
Monster_SetRebornTime
设置怪物的重生时间

更新时间：2024-07-26 00:00:00
此函数设置怪物的重生时间。

语法
Luacopy 复制
lualib:Monster_SetRebornTime(
    monster_guid,
    reborn,
    reborn_ex
)
参数
monster_guid

string

 
怪物GUID

reborn

UINT32

 
复活时间，单位毫秒

reborn_ex

UINT32

 
复活浮动时间，单位毫秒，可设置为0，代表没有随机浮动

返回值
bool

 
true成功

false失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 在地图指定范围生成一只怪物
local map = lualib:MapGuid(player)
local monster_guid = lualib:Map_GenSingleMonster(map, 60, 105, 0, 4, "塔防食人恶魔", true) 
lualib:SetStr(player,"test_monster_guid",monster_guid)
-- 设置怪物的重生时间
local reborn = 5000
local reborn_ex = 0
if lualib:Monster_SetRebornTime(monster_guid,reborn,reborn_ex) then
    lualib:Warn("怪物的重生时间设置成功")
else
    lualib:Warn("怪物的重生时间设置失败")
end

--怪物的重生时间设置成功

Monster_SetRebornTime.png

--杀死怪物后，怪物5秒后复活

Monster_SetRebornTime_2.png
<上一篇:设置怪物的仇恨列表下一篇:怪物对目标逻辑格释放技能>
Monster_SpellGrid
怪物对目标逻辑格释放技能

更新时间：2023-01-18 00:00:00
此函数让怪物对目标逻辑格释放技能。

语法
Luacopy 复制
lualib:Monster_SpellGrid(
    strMonster,
    strSkillKey,
    wX,
    wY
)
参数
strMonster

string

 
怪物的GUID

strSkillKey

string

 
技能的索引名（KeyName）

wX

uint16

 
目标逻辑格的X坐标

wY

uint16

 
目标逻辑格的Y坐标

返回值
bool

 
true技能释放成功

false技能释放失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:Map_GetMapGuid("手游巫山城") --获取“手游巫山城”的GUID
local monster = lualib:Map_GenSingleCampMonster(map, 220, 220, 1, 4, "宠物夜叉", false, 2) --在地图指定范围生成一只设置了阵营的怪物
lualib:Monster_SpellGrid(monster,"宠物夜叉",220,224) --让怪物对目标逻辑格释放技能

--此示例代码运行成功如下图所示。

Monster_SpellGrid.png
<上一篇:设置怪物的重生时间下一篇:让怪物施放技能（扩展）>
Monster_SpellTargetEx
让怪物施放技能（扩展）

更新时间：2023-01-18 00:00:00
此函数根据技能的索引名（KeyName）让怪物施放技能。

语法
Luacopy 复制
lualib:Monster_SpellTargetEx(
    strMonster,
    strSkillKey,
    strTarget
)

参数
strMonster

string

 
怪物的GUID

strSkillKey

string

 
技能的索引名（KeyName）

strTarget

string

 
技能施放目标的GUID

目标可以为怪物、玩家或者英雄

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "剧毒蜘蛛", ranges, true, true) --获取当前地图指定区域上中怪物“剧毒蜘蛛”的GUID列表
lualib:Monster_SpellTargetEx(monsters[1],"测试技能",player) --让怪物施放技能

--此示例代码执行后，怪物“剧毒蜘蛛”会向指定玩家施放技能。
<上一篇:怪物对目标逻辑格释放技能下一篇:让怪物施放技能>
Monster_SpellTarget
让怪物施放技能

更新时间：2023-01-18 00:00:00
此函数根据技能ID让怪物施放技能。

语法
Luacopy 复制
lualib:Monster_SpellTarget(
    strMonster,
    wSkillID,
    strTarget
)

参数
strMonster

string

 
怪物的GUID

wSkillID

uint16

 
技能ID

strTarget

string

 
技能施放目标的GUID

目标可以为怪物、玩家或者英雄

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local ranges = {0, 100, 100, 100, 100}
local monsters = lualib:Map_GetRegionMonstersEx(map, "剧毒蜘蛛", ranges, true, true) --获取当前地图指定区域上中怪物“剧毒蜘蛛”的GUID列表
lualib:Monster_SpellTarget(monsters[1],119,player) --让怪物施放技能

--此示例代码执行后，怪物“剧毒蜘蛛”会向指定玩家施放技能。
<上一篇:让怪物施放技能（扩展）下一篇:减少怪物的单个目标仇恨值>
Monster_SubTargetHate
减少怪物的单个目标仇恨值

更新时间：2023-01-18 00:00:00
此函数作用为减少怪物的单个目标仇恨值。

语法
Luacopy 复制
lualib:Monster_SubTargetHate(
    mosnter,
    target,
    hate
)
参数
mosnter

string

 
怪物的GUID

target

string

 
目标的GUID

hate

uint32

 
仇恨值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster = lualib:Map_GenSingleCampMonster(lualib:MapGuid(player), lualib:X(player) + 2, lualib:Y(player) + 2, 2, 4, "挂机食人妖精", false, 2) --在地图指定范围生成一只设置了阵营的怪物
local tHateList = {{["GUID"] = player, ["Hate"] = 50, ["Elapse"] = 30000}}
if lualib:Monster_SetHateList(monster,tHateList) then --设置怪物的仇恨列表
    lualib:Warn("减少仇恨前："..serialize(lualib:Monster_GetHateList(monster))) --获取修改前怪物的仇恨列表
    lualib:Monster_SubTargetHate(monster,player,20) --给怪物的单个目标减少20点仇恨值
    lualib:Warn("减少仇恨后："..serialize(lualib:Monster_GetHateList(monster))) --获取修改后怪物的仇恨列表
end

--此示例代码运行成功如下图所示。

Monster_SubTargetHate.png
<上一篇:让怪物施放技能下一篇:获取怪物的类型>
Monster_Type
获取怪物的类型

更新时间：2023-01-18 00:00:00
此函数获取怪物的类型。

语法
Luacopy 复制
lualib:Monster_Type(
    strMonsterKey
)

参数
strMonsterKey

string

 
怪物的索引名（KeyName）

返回值
int32

 怪物的类型
1普通怪

2精英怪

3头目

4BOSS

5守卫

6守城怪

7镖车

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monster_t = {"剧毒蜘蛛","宠物夜叉","测试怪boss","镖车·神","牛头守卫"}
for i = 1, #monster_t do
    local m_type = lualib:Monster_Type(monster_t[i]) --获取怪物的类型
    lualib:Warn("第"..i.."个怪物的类型为"..m_type)
end

--此示例代码运行成功如下图所示。

Monster_Type.png
<上一篇:减少怪物的单个目标仇恨值下一篇:设置怪物使用智能寻路>
Monster_UseAstar
设置怪物使用智能寻路

更新时间：2025-08-08 00:00:00
此函数设置怪物使用智能寻路。

语法
Luacopy 复制
lualib:Monster_UseAstar(
    monster_guid,
    use_astar
)
参数
monster_guid

string

 
怪物的guid

use_astar

bool

 
是否使用智能寻路

true使用智能寻路

false不使用智能寻路

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function kq(npc, player)

    local map = lualib:MapGuid(player)
    local ranges = {0, 100, 100, 100, 100}
    local monsters = lualib:Map_GetRegionMonstersEx(map, "神翼副本G43", ranges, true, true)

    if lualib:Monster_UseAstar(monsters[1], true) then
        lualib:SysWarnMsg(player, "启用成功")
    else
        lualib:SysWarnMsg(player, "启用失败")
    end
end

--未执行示例代码前，如下图所示，可能有些怪物会在某些地形卡住来回徘徊。

Monster_UseAstar.png

--执行示例代码，如下图所示，怪物会寻路走过来攻击，解决怪物在有些地形被卡怪。

Monster_UseAstar_2.png
<上一篇:获取怪物的类型下一篇:获取BOSS类型怪物的GUID列表>
MonstersByKey
获取BOSS类型怪物的GUID列表

更新时间：2023-01-18 00:00:00
此函数获取当前GS上符合条件的BOSS类型怪物的GUID列表。

语法
Luacopy 复制
lualib:MonstersByKey(
    strMonsterKey,
    iLimit,
    bIgnoreDie,
    bIgnorePet
)

参数
strMonsterKey

string

 
怪物的索引名（KeyName）

iLimit

int32

 
获取的最大数量

bIgnoreDie

bool

 
是否忽略死亡怪物

true是

false否

bIgnorePet

bool

 
是否忽略宠物

true是

false否

返回值
table

 符合条件的怪物的GUID列表
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local monsters = lualib:MonstersByKey("手游食人统领", 100, true, true) --获取当前GS上符合条件的BOSS类型怪物的GUID列表
lualib:Warn(serialize(monsters))

--此示例代码运行成功如下图所示。

MonstersByKey.png
<上一篇:设置怪物使用智能寻路下一篇:设置是否开启怪物释放技能触发>
SetUseMonsterSpellTrigger
设置是否开启怪物释放技能触发

更新时间：2023-01-18 00:00:00
此函数设置是否开启怪物释放技能触发，用于开启on_monster_spell触发。

语法
Luacopy 复制
lualib:SetUseMonsterSpellTrigger(
    is_use
)
参数
is_use

bool

 
是否开启怪物释放技能触发

true开启

false不开启

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
    lualib:Warn("技能施放目标为："..lualib:Name(strTarget)) --根据技能释放目标的GUID获取对应的名称
end

--此示例代码运行成功如下图所示。

on_monster_spell.png
<上一篇:获取BOSS类型怪物的GUID列表
CanPlayerMapMoveXY
判断玩家能否跳转到指定的坐标范围内

更新时间：2023-01-18 00:00:00
此函数判断玩家能否跳转到指定地图指定的坐标范围内。

语法
Luacopy 复制
lualib:CanPlayerMapMoveXY(
    strMapKey,
    wX,
    wY,
    range
)
参数
strMapKey

string

 
地图的索引名（KeyName）

wX

uint16

 
跳转点在地图上的X坐标

wY

uint16

 
跳转点在地图上的Y坐标

note_icon 备注
参数wX和wY中填写的坐标为逻辑格坐标。

range

uint16

 
坐标范围

例如：指定的要判断的跳转点坐标为(0,0)，坐标范围为5，则实际判断的跳转点的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只会判断指定的坐标点是否可以跳转。

返回值
bool

 
指定的坐标范围是否能跳转

true指定的坐标范围可以跳转

false指定的坐标范围无法跳转

note_icon 备注
只要指定的坐标范围内有一个逻辑格可以跳转即返回true，否则返回false。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
CanPlayerMapMoveXY.png
if lualib:CanPlayerMapMoveXY("弥月岛城", 586, 588, 3) then
    lualib:SysWarnMsg(player, "坐标范围可跳转")
else
    lualib:SysWarnMsg(player, "坐标范围不可跳转")
end

--此示例代码运行成功如下图所示（该坐标范围内的坐标点均为不可跳转点）。

CanPlayerMapMoveXY_2.png
下一篇:获取所有地图的GUID>
GetAllMapGuid
获取所有地图的GUID

更新时间：2023-01-18 00:00:00
此函数获取所有地图的GUID，可指定是否需要包含副本地图。

语法
Luacopy 复制
lualib:GetAllMapGuid(
    need_dgn
)
参数
need_dgn

bool

 
是否需要包含副本地图

true需要

false不需要

返回值
table

 
所有地图GUID的列表

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--获取全部地图的GUID（不包含副本地图）
local map_guid = lualib:GetAllMapGuid(false)
lualib:Warn("共 "..#map_guid.." 张普通地图")
for i=1, #map_guid do
    --根据地图的GUID获取地图的名称
    lualib:Warn(i.." "..lualib:Name(map_guid[i]))
    --根据地图的索引名判断是否为副本地图
    if lualib:Map_IsDgn(lualib:KeyName(map_guid[i])) then
        lualib:Warn("副本地图 "..lualib:Name(map_guid[i]))
    end
end

--此示例代码运行成功如下图所示（截取部分打印内容）。

GetAllMapGuid.png

--获取全部地图的GUID（包含副本地图）
local map_guid = lualib:GetAllMapGuid(true)
lualib:Warn("共 "..#map_guid.." 张地图")
for i=1, #map_guid do
    --根据地图的GUID获取地图的名称
    lualib:Warn(i.." "..lualib:Name(map_guid[i]))
    --根据地图的索引名判断是否为副本地图
    if lualib:Map_IsDgn(lualib:KeyName(map_guid[i])) then
        lualib:Warn("副本地图 "..lualib:Name(map_guid[i]))
    end
end

--此示例代码运行成功如下图所示（截取部分打印内容，打印内容中包含2个副本地图的地图名称）。

GetAllMapGuid_2.png

GetAllMapGuid_3.png
<上一篇:判断玩家能否跳转到指定的坐标范围内下一篇:根据起点和终点获取两点所在线段的方向>
GetDirByPoint
根据起点和终点获取两点所在线段的方向

更新时间：2023-05-19 00:00:00
此函数根据起点和终点获取两点所在线段的方向。

语法
Luacopy 复制
lualib:GetDirByPoint(
    start_x,
    start_y,
    end_x,
    end_y
)
参数
start_x

uint16

 
起点的横坐标

单位为逻辑格

start_y

uint16

 
起点的纵坐标

单位为逻辑格

end_x

uint16

 
终点的横坐标

单位为逻辑格

end_y

uint16

 
终点的纵坐标

单位为逻辑格

返回值
uint8

 
两点所在线段的方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0向上

1右上

2向右

3右下

4向下

5左下

6向左

7左上

note_icon 备注
若两点所在线段的方向不是正方向（即上述8个方向），则返回最为接近的方向。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--执行前提：玩家当前所在坐标为(598,513)。
--起点和终点位置如下图所示。
GetDirByPoint.png
local x = lualib:X(player) --获取玩家当前所在位置的横坐标
local y = lualib:Y(player) --获取玩家当前所在位置的纵坐标
local dir = lualib:GetDirByPoint(x, y, 600, 513) --获取两点所在线段的方向
lualib:Warn("方向为"..dir)

--此示例代码运行成功如下图所示（方向向右）。

GetDirByPoint_2.png
<上一篇:获取所有地图的GUID下一篇:根据指定方向获取其相反方向>
GetNegDir
根据指定方向获取其相反方向

更新时间：2023-05-19 00:00:00
此函数根据指定方向获取其相反方向。

语法
Luacopy 复制
lualib:GetNegDir(
    dir
)
参数
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
uint8

 
指定方向的相反方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0向上（与向下（4）相对）

1右上（与左下（5）相对）

2向右（与向左（6）相对）

3右下（与左上（7）相对）

4向下（与向上（0）相对）

5左下（与右上（1）相对）

6向左（与向右（2）相对）

7左上（与右下（3）相对）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dir = lualib:GetNegDir(0) --获取上方（0）的相反方向
lualib:Warn("反方向为"..dir)

--此示例代码运行成功如下图所示。

GetNegDir.png
<上一篇:根据起点和终点获取两点所在线段的方向下一篇:根据起点获取指定方向和距离的逻辑格点>
GetPointByDir
根据起点获取指定方向和距离的逻辑格点

更新时间：2023-05-19 00:00:00
此函数根据起点获取在指定方向上距离起点特定距离的逻辑格点。

语法
Luacopy 复制
lualib:GetPointByDir(
    start_x,
    start_y,
    dir,
    distance
)
参数
start_x

uint16

 
起点的横坐标

单位为逻辑格

start_y

uint16

 
起点的纵坐标

单位为逻辑格

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

distance

uint16

 
指定距离

单位为逻辑格

返回值
table

 
执行成功则返回对应的逻辑格点坐标（存储在lua表中），执行失败则返回空表。

table格式为{[1] = 逻辑格横坐标,[2] = 逻辑格纵坐标}。

例如：{[1] = 1, [2] = 1}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--执行前提：玩家当前所在坐标为(598,513)。
local x = lualib:X(player) --获取玩家当前所在位置的横坐标
local y = lualib:Y(player) --获取玩家当前所在位置的纵坐标
local table = lualib:GetPointByDir(x,y,0,3) --获取玩家上方距离为3个逻辑格的逻辑格点坐标
lualib:Warn("得出的逻辑格点为"..serialize(table))

--此示例代码运行成功如下图所示。

GetPointByDir.png
<上一篇:根据指定方向获取其相反方向下一篇:获取地图区域中的空坐标列表>
GetRegionFreeEx
获取地图区域中的空坐标列表

更新时间：2024-08-30 00:00:00
此函数获取地图区域中的空坐标列表。

空坐标是指地图上未被占用（没有任何物体）的坐标点。

语法
Luacopy 复制
lualib:GetRegionFreeEx(
    strMap,
    tRange
)

参数
strMap

string

 
地图的GUID

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0或者1，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tRange[1]=2
（菱形区域）	区域左上角的X坐标	区域左上角的Y坐标	菱形下方X坐标	菱形下方X坐标
返回值
table

 
地图指定区域内的空坐标列表

存储在lua表中

版本历史
v1.0

 
首次发布

 
v1.1

 
新增菱形区域的支持

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取角色当前所在地图的GUID
local ranges = {0, 100, 100, 100, 100} --指定区域范围
local grids = lualib:GetRegionFreeEx(map, ranges) --获取地图区域中的空坐标列表
for _, v in ipairs(grids) do
    local x = v.X
    local y = v.Y
    lualib:Warn("坐标("..x..", "..y..")为空坐标")
end

--此示例代码运行成功如下图所示（仅截取部分）。

GetRegionFreeEx.png
<上一篇:根据起点获取指定方向和距离的逻辑格点下一篇:获取地图区域中的空坐标列表（扩展）>
GetRegionFreeRndEx
获取地图区域中的空坐标列表（扩展）

更新时间：2023-01-18 00:00:00
此函数获取地图指定区域中的空坐标列表，可指定随机获取的坐标数量。

空坐标是指地图上未被占用（没有任何物体）的坐标点。

语法
Luacopy 复制
lualib:GetRegionFreeRndEx(
    strMap,
    tRange,
    wLimit
)

参数
strMap

string

 
地图的GUID

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0或者1，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
wLimit

uint16

 
指定要获取的坐标数量

note_icon 备注
若满足条件的坐标数量小于此参数的值，则返回实际符合条件的坐标即可。

返回值
table

 
地图指定区域内的空坐标列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取角色当前所在地图的GUID
local ranges = {0, 100, 100, 100, 100} --指定区域范围
local grids = lualib:GetRegionFreeRndEx(map, ranges, 10) --获取地图区域中的空坐标列表，指定数量为10。
for _, v in ipairs(grids) do
    local x = v.X
    local y = v.Y
    lualib:Warn("坐标("..x..", "..y..")为空坐标")
end

--此示例代码运行成功如下图所示。

GetRegionFreeRndEx.png
<上一篇:获取地图区域中的空坐标列表下一篇:获取角色背后指定距离的逻辑格点坐标>
GetRoleBackPosition
获取角色背后指定距离的逻辑格点坐标

更新时间：2023-05-19 00:00:00
此函数获取角色背后指定距离的逻辑格点坐标。

语法
Luacopy 复制
lualib:GetRoleBackPosition(
    role_guid,
    dis
)
参数
role_guid

string

 
角色的GUID

角色可以为玩家、怪物、NPC或者假人

dis

uint32

 
指定距离

单位为逻辑格

返回值
table

 
执行成功则返回对应的逻辑格点坐标（存储在lua表中），执行失败则返回空表。

table格式为{[1] = 逻辑格横坐标,[2] = 逻辑格纵坐标}。

例如：{[1] = 1, [2] = 1}。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--执行前提：玩家面朝上方且所在位置的坐标为(601,506)。
--玩家背后3格距离的逻辑格点即为图中圆圈符号所表示的逻辑格点。
GetRoleBackPosition.png
local t_pos = lualib:GetRoleBackPosition(player, 3) --获取玩家背后3格距离的逻辑格点的坐标
lualib:Warn("得出的点为"..serialize(t_pos))

--此示例代码运行成功如下图所示。

GetRoleBackPosition_2.png
<上一篇:获取地图区域中的空坐标列表（扩展）下一篇:判断地图逻辑格的属性与指定属性是否相同>
GridAttr
判断地图逻辑格的属性与指定属性是否相同

更新时间：2023-04-13 00:00:00
此函数判断地图逻辑格的实际属性与指定属性类型是否相同。

语法
Luacopy 复制
lualib:GridAttr(
    strMap,
    iX,
    iY,
    iType
)

参数
strMap

string

 
地图的GUID

iX

int32

 
指定地图逻辑格的X坐标

iY

int32

 
指定地图逻辑格的Y坐标

iType

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

 
true地图逻辑格的实际属性与指定属性类型相同

false地图逻辑格的实际属性与指定属性类型不相同

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--判断玩家所在地图的（30,120）是否为跳转点
if lualib:GridAttr(lualib:MapGuid(player), 30, 120, 5) then
    lualib:Warn("是跳转点")
else
    lualib:Warn("不是跳转点")
end

--此示例代码运行成功如下图所示。

GridAttr.png
<上一篇:获取角色背后指定距离的逻辑格点坐标下一篇:判断坐标是否在指定区域中>
IsInRegion
判断坐标是否在指定区域中

更新时间：2023-01-18 00:00:00
此函数判断指定坐标是否在指定区域范围内。

语法
Luacopy 复制
lualib:IsInRegion(
    tObject,
    wX,
    wY
)

参数
tObject

table

 
指定区域范围（为table格式）

具体格式为{tObject[1],tObject[2],tObject[3],tObject[4],tObject[5]}

例如：{0, 100, 100, 100, 100}。

其中，tObject[1]的取值只能为0、1或者2，对应其他参数的具体说明请参见下表。

tObject[2]	tObject[3]	tObject[4]	tObject[5]
tObject[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tObject[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tObject[1]=2
（菱形区域）	菱形区域最上方点的X坐标	菱形区域最上方点的Y坐标	菱形区域最下方点的X坐标	菱形区域最下方点的Y坐标
note_icon 备注
1.上述区域的绘制原点均为地图的左上角；

2.矩形区域的宽度和高度的单位为逻辑格；

3.此处的菱形区域为正菱形，如下图所示；

4.“菱形最下方点的Y坐标”减去“菱形最上方点的Y坐标”的差值需要能被2整除。

image_20200909145847.png
wX

uint16

 
要判断的坐标点的X坐标

wY

uint16

 
要判断的坐标点的Y坐标

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

 
v1.1

 
参数tObject增加一种类型

示例代码
Luacopy 复制
--判断点（100,100）是否在以点（50,50）为中心点、高度和宽度均为200px的矩形区域内。
lualib:Warn("0:::"..tostring(lualib:IsInRegion({0, 50, 50, 100, 100}, 100, 100)))
--判断点（100,100）是否在以点（50,50）为左上角、高度和宽度均为100px的矩形区域内。
lualib:Warn("1:::"..tostring(lualib:IsInRegion({1, 50, 50, 100, 100}, 100, 100)))
--判断点（100,100）是否在以点（50,50）为菱形区域最上方点、点（50,200）为菱形区域最下方点的菱形区域内。
lualib:Warn("2:::"..tostring(lualib:IsInRegion({2, 50, 50, 50, 200}, 100, 100)))

--此示例代码运行成功如下图所示。

IsInRegion.png
<上一篇:判断地图逻辑格的属性与指定属性是否相同下一篇:判断指定角色是否在安全区内>
IsRoleInSafeRegion
判断指定角色是否在安全区内

更新时间：2023-05-19 00:00:00
此函数判断指定角色是否在安全区内（包含边界）。

语法
Luacopy 复制
lualib:IsRoleInSafeRegion(
    strRole
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或者NPC

返回值
bool

 
true在安全区内（包含边界）

false在安全区外

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:IsRoleInSafeRegion(player) then
    lualib:Warn("在安全区")
else
    lualib:Warn("不在安全区")
end

--玩家在安全区内，执行示例代码后会输出如下内容。

IsRoleInSafeRegion.png
<上一篇:判断坐标是否在指定区域中下一篇:判断地图是否可以骑乘坐骑>
MapCanRide
判断地图是否可以骑乘坐骑

更新时间：2023-01-18 00:00:00
此函数判断指定地图是否可以骑乘坐骑。

语法
Luacopy 复制
lualib:MapCanRide(
    strMapKey
)

参数
strMapKey

string

 
地图的索引名（KeyName）

返回值
bool

 
true指定地图可以骑乘坐骑

false指定地图不可骑乘坐骑

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

MapCanRide_2.png
if lualib:MapCanRide("手游新手村") then
    lualib:Warn("可以骑乘")
else
    lualib:Warn("不可骑乘")
end

--此示例代码运行成功如下图所示。

MapCanRide.png
<上一篇:判断指定角色是否在安全区内下一篇:根据地图的索引名获取地图的ID>
MapKey2ID
根据地图的索引名获取地图的ID

更新时间：2023-01-18 00:00:00
此函数根据地图的索引名（KeyName）获取地图的ID。

语法
Luacopy 复制
lualib:MapKey2ID(
    strMapKey
)

参数
strMapKey

string

 
地图的索引名（KeyName）

返回值
uint32

 
执行成功则返回地图的ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

MapKey2ID_2.png
local id = lualib:MapKey2ID("手游新手村") --获取地图“手游新手村”的ID
lualib:Warn("地图ID为"..id)

--此示例代码运行成功如下图所示。

MapKey2ID.png
<上一篇:判断地图是否可以骑乘坐骑下一篇:判断地图上所有玩家是否属于同一个行会>
MapOwnerFamily
判断地图上所有玩家是否属于同一个行会

更新时间：2023-01-18 00:00:00
此函数判断地图上的所有玩家是否属于同一个行会。

note_icon 备注
此接口会忽略地图上的GM角色与死亡角色。

语法
Luacopy 复制
lualib:MapOwnerFamily(
    strMap
)

参数
strMap

string

 
地图的GUID

返回值
string

 
若地图上所有玩家属于同一个行会，则返回该行会的名字；

若地图上所有玩家不属于同一个行会，则返回""。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:Map_GetMapGuid("手游新手村")
local family = lualib:MapOwnerFamily(""..map)
if family ~= "" then
    lualib:Warn("该地图上全是"..family.."行会的成员")
else
    lualib:Warn("该地图上角色的行会不一致")
end

--当地图上的所有玩家不属于同一个行会时，此示例代码运行成功如下图所示。

MapOwnerFamily.png
<上一篇:根据地图的索引名获取地图的ID下一篇:获取地图随机点>
MapRndPos
获取地图随机点

更新时间：2023-01-18 00:00:00
此函数获取指定地图上的随机点坐标。

语法
Luacopy 复制
lualib:MapRndPos(
    strMapKey
)

参数
strMapKey

string

 
地图的索引名（KeyName）

返回值
table

 
随机点坐标

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local tPos = lualib:MapRndPos("手游新手村") --获取地图“手游新手村”上的一个随机坐标点
local x, y = tPos["x"], tPos["y"]
lualib:Warn("横坐标值为"..x.."纵坐标值为"..y)

--此示例代码运行成功如下图所示。

MapRndPos.png
<上一篇:判断地图上所有玩家是否属于同一个行会下一篇:在地图指定位置播放特效>
Map_AddEffect
在地图指定位置播放特效

更新时间：2023-03-10 00:00:00
此函数在地图指定位置播放特效。

语法
Luacopy 复制
lualib:Map_AddEffect(
    strMap,
    wX,
    wY,
    dwEffectID,
    dwLife
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
指定播放点在地图上的X坐标

wY

uint16

 
指定播放点在地图上的Y坐标

dwEffectID

uint32

 
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

dwLife

uint32

 
特效持续时间

单位为秒（s）

note_icon 备注
以Magic.xml文件中配置的特效持续时长为准。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Map_AddEffect(lualib:MapGuid(player), lualib:X(player) +1, lualib:Y(player) +1,100000009,120)  then
    lualib:Warn("执行成功！")
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Map_AddEffect_2.png

Map_AddEffect.png
<上一篇:获取地图随机点下一篇:在地图上添加跳转点（扩展）>
Map_AddJumpPointEx
在地图上添加跳转点（扩展）

更新时间：2023-01-18 00:00:00
此函数在地图上添加跳转点，并支持设置跳转点的范围。

语法
Luacopy 复制
lualib:Map_AddJumpPointEx(
    strSourMap,
    strDestMap,
    wSourX,
    wSourY,
    wSourR,
    wDestX,
    wDestY,
    wDestR
)

参数
strSourMap

string

 
源地图的GUID

strDestMap

string

 
目标地图的GUID

wSourX

uint16

 
源地图跳转点的X坐标（为逻辑格坐标）

wSourY

uint16

 
源地图跳转点的Y坐标（为逻辑格坐标）

wSourR

uint16

 
源地图跳转点的坐标范围

例如：指定的源地图跳转点坐标为(0,0)，坐标范围为5，则实际可跳转点的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只会可在指定的坐标点跳转。

wDestX

uint16

 
目标地图跳转点的X坐标（为逻辑格坐标）

wDestY

uint16

 
目标地图跳转点的Y坐标（为逻辑格坐标）

wDestR

uint16

 
目标地图跳转点的坐标范围

例如：指定的目标地图跳转点坐标为(0,0)，坐标范围为5，则实际可跳转点的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可在指定的坐标点跳转。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map1  = lualib:Map_GetMapGuid("手游新手村") --获取地图“手游新手村”的GUID
local map2  = lualib:Map_GetMapGuid("龙城") --获取地图“龙城”的GUID
if lualib:Map_AddJumpPointEx(map1, map2,67,96, 2,101,131,2) == false then --在地图上添加跳转点
    lualib:Warn("设置跳转点失败")
    return  
else  
    lualib:Warn("设置跳转点成功")
end

--此示例代码运行成功后，会在地图“手游新手村”上创建跳转点，走入跳转点范围内会跳转到地图“龙城”的指定坐标范围。
<上一篇:在地图指定位置播放特效下一篇:在地图上添加跳转点>
Map_AddJumpPoint
在地图上添加跳转点

更新时间：2024-05-17 00:00:00
此函数在地图上添加跳转点。

语法
Luacopy 复制
lualib:Map_AddJumpPoint(
    strSourMap,
    strDestMap,
    wSourX,
    wSourY,
    wDestX,
    wDestY
)

参数
strSourMap

string

 
源地图的GUID

strDestMap

string

 
目标地图的GUID

wSourX

uint16

 
源地图跳转点的X坐标

wSourY

uint16

 
源地图跳转点的Y坐标

wDestX

uint16

 
目标地图跳转点的X坐标

wDestY

uint16

 
目标地图跳转点的Y坐标

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map1  = lualib:Map_GetMapGuid("手游新手村") --获取地图“手游新手村”的GUID
local map2  = lualib:Map_GetMapGuid("龙城") --获取地图“龙城”的GUID
if lualib:Map_AddJumpPoint(map1, map2,67,96,101,131) == false then --在地图上添加跳转点
    lualib:Warn("设置跳转点失败")
    return  
else  
    lualib:Warn("设置跳转点成功")
end

--此示例代码运行成功后，会在地图“手游新手村”上创建跳转点，走到跳转点会跳转到地图“龙城”的指定坐标。
<上一篇:在地图上添加跳转点（扩展）下一篇:在地图中随机生成怪物并设置阵营>
Map_BatchGenCampMonster
在地图中随机生成怪物并设置阵营

更新时间：2023-01-18 00:00:00
此函数作用为在地图中随机生成怪物，并且支持设置怪物的阵营值。

语法
Luacopy 复制
lualib:Map_BatchGenCampMonster(
    strMap,
    strMonsterKey,
    wCount,
    bCanRelive,
    iCamp
)

参数
strMap

string

 
地图的GUID

strMonsterKey

string

 
怪物的索引名（KeyName）

wCount

int16

 
怪物数量

bCanRelive

bool

 
怪物是否可以复活

true可以复活

false不可复活

iCamp

int32

 
怪物的阵营值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map  = lualib:Map_GetMapGuid("手游新手村")
if lualib:Map_BatchGenCampMonster(map, "测试鸡3", 10, true, 2) then
    lualib:Warn("刷怪成功")
else 
    lualib:Warn("刷怪失败")
end

--此示例代码运行成功后，会在地图“手游新手村”中生成10只怪物“测试鸡3”（阵营值均为2）。
<上一篇:在地图上添加跳转点下一篇:在地图中随机生成怪物>
Map_BatchGenMonster
在地图中随机生成怪物

更新时间：2023-01-18 00:00:00
此函数作用为在地图中随机生成怪物。

语法
Luacopy 复制
lualib:Map_BatchGenMonster(
    strMap,
    strMonsterKey,
    wCount,
    bCanRelive
)

参数
strMap

string

 
地图的GUID

strMonsterKey

string

 
怪物的索引名（KeyName）

wCount

int16

 
怪物数量

bCanRelive

bool

 
怪物是否可以复活

true可以复活

false不可复活

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local monster_table =
{  
    {"宠物小飞龙", 10}
}
--在地图中随机生成怪物
for i = 1, #monster_table do
    if not lualib:Map_BatchGenMonster(map, monster_table[i][1], monster_table[i][2], false) then
        lualib:Print(monster_table[i][1].."刷新失败！")
    else  
        lualib:Print(monster_table[i][1].."刷新成功！")
    end  
end

--此示例代码运行成功后，会在当前地图上随机生成10只怪物“宠物小飞龙”，同时游戏日志中还会打印相关内容。

Map_BatchGenMonster.png
<上一篇:在地图中随机生成怪物并设置阵营下一篇:清理地图指定坐标范围中的通道技能>
Map_ClearChannels
清理地图指定坐标范围中的通道技能

更新时间：2023-01-18 00:00:00
此函数作用为清理地图指定坐标范围中的通道技能。

语法
Luacopy 复制
lualib:Map_ClearChannels(
    strMap,
    wX,
    wY,
    wRange,
    host_guid
)
参数
strMap

string

 
地图的GUID

wX

uint16

 
坐标范围中心点的X坐标

wY

uint16

 
坐标范围中心点的Y坐标

wRange

uint16

 
坐标范围

例如：范围中心点的坐标为(0,0)，坐标范围为5，则实际检测的坐标点为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

host_guid

string

 
释放者的GUID

若此字段的配置值为""，则代表清理指定范围内所有玩家释放的通道技能。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player)
local x = lualib:X(player)
local y = lualib:Y(player)
local range = 5
local host = player
lualib:Map_ClearChannels(map, x, y, range, host) --以玩家当前所在点为中心点、半径为5的区域作为指定范围，清理此范围内由玩家自己释放的通道技能。

--此示例代码运行前效果如下图所示。

Map_ClearChannels.png

--此示例代码运行后效果如下图所示，玩家周围指定范围内由玩家自己释放的通道技能成功被清理。

Map_ClearChannels_2.png
<上一篇:在地图中随机生成怪物下一篇:清理地图指定范围中的物品>
Map_ClearItem
清理地图指定范围中的物品

更新时间：2023-01-18 00:00:00
此函数作用为清理地图指定范围中的物品。

语法
Luacopy 复制
lualib:Map_ClearItem(
    strMap,
    wX,
    wY,
    wRange,
    strItemKey
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
指定点在地图上的X坐标

wY

uint16

 
指定点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际会清理的物品坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只会清理指定的坐标点上的物品。

strItemKey

string

 
物品的索引名（KeyName）

note_icon 备注
若此参数的值为""，则代表清理此范围内的所有物品。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_ClearItem(map, 109, 46, 2, "羽毛")

--此示例代码运行前效果如下图所示。

Map_ClearItem.png

--此示例代码运行后效果如下图所示（“服务端接口测试”NPC的坐标位置为(109,46)），指定范围内物品“羽毛”成功被清理。

Map_ClearItem_2.png
<上一篇:清理地图指定坐标范围中的通道技能下一篇:清理地图指定范围中的怪物>
Map_ClearMonster
清理地图指定范围中的怪物

更新时间：2023-01-18 00:00:00
此函数作用为清理地图指定范围中的怪物。

语法
Luacopy 复制
lualib:Map_ClearMonster(
    strMap,
    wX,
    wY,
    wRange,
    strMonsterKey,
    bIgnoreDied,
    bIgnorePet
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
指定点在地图上的X坐标

wY

uint16

 
指定点在地图上的X坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际会清理的怪物坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只会清理指定的坐标点上的怪物。

strMonsterKey

string

 
怪物的索引名（KeyName）

note_icon 备注
若此参数的值为""，则代表清理此范围内的所有怪物。

bIgnoreDied

bool

 
是否忽略死亡的怪物

true是

false否

bIgnorePet

bool

 
是否忽略玩家的宠物

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
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_ClearMonster(map,  lualib:X(player)+1, lualib:Y(player)+1, 5, "宠物小飞龙", false, true) --清理地图指定范围中的怪物“宠物小飞龙”

--此示例代码运行前效果如下图所示。

Map_ClearMonster.png

--此示例代码运行后效果如下图所示，指定范围内怪物“宠物小飞龙”成功被清理。

Map_ClearMonster_2.png
<上一篇:清理地图指定范围中的物品下一篇:清理地图指定范围中的NPC>
Map_ClearNpc
清理地图指定范围中的NPC

更新时间：2023-01-18 00:00:00
此函数作用为清理地图指定范围中的NPC。

语法
Luacopy 复制
lualib:Map_ClearNpc(
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

 
指定点在地图的X坐标

wY

uint16

 
指定点在地图的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际会清理的NPC坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只会清理指定的坐标点上的NPC。

strNpcKey

string

 
NPC的索引名（KeyName）

note_icon 备注
若此参数的值为""，则代表清理此范围内的所有NPC。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
--在地图指定范围内清理以下NPC
lualib:Map_ClearNpc(map, 105, 47, 5, "服务端接口测试")
lualib:Map_ClearNpc(map, 105, 47, 5, "结婚管理员")

--此示例代码运行前效果如下图所示。

Map_ClearNpc.png

--此示例代码运行后效果如下图所示，指定范围内“服务端接口测试”NPC和“结婚管理员”NPC成功被清理。

Map_ClearNpc_2.png
<上一篇:清理地图指定范围中的怪物下一篇:在地图上创建特效>
Map_CreateMagicEvent
在地图上创建特效

更新时间：2024-05-23 00:00:00
此函数作用为在地图上创建特效。

语法
Luacopy 复制
lualib:Map_CreateMagicEvent(
    map_guid,
    x,
    y,
    magic_id,
    life,
    dir
)
参数
map_guid

string

 
地图的GUID

x

uint16

 
Magic特效在地图上的X坐标

y

uint16

 
Magic特效在地图上的Y坐标

magic_id

int

 
特效的ID

life

uint32

 
Magic特效的存在时间

单位为毫秒（ms）

dir

uint8

 
Magic特效的方向（0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

返回值
string

 
Magic特效的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(role_guid) --获取玩家当前所在地图的GUID
local x = lualib:X(role_guid) --获取玩家在地图上的横坐标
local y = lualib:Y(role_guid) --获取玩家在地图上的纵坐标
local dir = lualib:Dir(role_guid) --获取角色的方向
lualib:Map_CreateMagicEvent(map, x, y, 600000018, 5*60*1000, dir) --在地图上创建特效

--此示例代码运行成功如下图所示，玩家所在坐标点出现特效。

Map_CreateMagicEvent.png
<上一篇:清理地图指定范围中的NPC下一篇:获取地图的配置表结构>
Map_DataRow
获取地图的配置表结构

更新时间：2023-01-18 00:00:00
此函数根据地图的索引名（KeyName）获取该地图的配置表结构。

语法
Luacopy 复制
lualib:Map_DataRow(
    map_key
)
参数
map_key

string

 
地图的索引名（KeyName）

返回值
table

 
地图的配置表结构

其定义请参见Map模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_t = lualib:Map_DataRow("水瓶座") --获取地图“水瓶座”的配置表结构
lualib:Warn("="..json.encode(map_t))

--此示例代码运行成功如下图所示。

Map_DataRow.png
<上一篇:在地图上创建特效下一篇:删除地图上的跳转点>
Map_DelJumpPoint
删除地图上的跳转点

更新时间：2023-01-18 00:00:00
此函数作用为删除地图上的跳转点。

语法
Luacopy 复制
lualib:Map_DelJumpPoint(
    strMap,
    wSourX,
    wSourY
)

参数
strMap

string

 
地图的GUID

wSourX

uint16

 
跳转点在地图上的X坐标

wSourY

uint16

 
跳转点在地图上的Y坐标

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
if lualib:Map_DelJumpPoint(map, 51, 144) == false then
    lualib:Warn("跳转点销毁失败")
    return
else  
    lualib:Warn("跳转点销毁成功")
end

--此示例代码运行成功，指定坐标点上的跳转点成功被销毁。
<上一篇:获取地图的配置表结构下一篇:获取地图上两点间的最短移动路径>
Map_FindShortestPath
获取地图上两点间的最短移动路径

更新时间：2023-01-18 00:00:00
此函数获取地图上两点间的最短移动路径。

语法
Luacopy 复制
lualib:Map_FindShortestPath(
    strMapKey,
    wSourX,
    wSourY,
    wDestX,
    wDestY
)
参数
strMapKey

string

 
地图的索引名（KeyName）

wSourX

uint16

 
源点的X坐标

wSourY

uint16

 
源点的Y坐标

wDestX

uint16

 
目标点的X坐标

wDestY

uint16

 
目标点的Y坐标

返回值
table

 
两点间最短移动路径表

存储在lua表中

为table格式，具体格式为{{第一步的横坐标,第一步的纵坐标},{第二步的横坐标,第二步的纵坐标},...}

例如:{{1,2},{2,3},{4,5}}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local path_t = lualib:Map_FindShortestPath("手游新手村", lualib:X(player), lualib:Y(player), 28, 24) --获取玩家当前位置到坐标点（28，24）间的最短路径
local path = ""
for i = 1, #path_t do
    path = path.."("..path_t[i][1]..","..path_t[i][2]..")"
    if i ~= #path_t then
        path = path.."-->"
    end
end
lualib:Warn("path = "..path)

--此示例代码运行成功如下图所示。

Map_FindShortestPath.png
<上一篇:删除地图上的跳转点下一篇:在地图指定范围生成怪物>
Map_GenCampMonster
在地图指定范围生成怪物

更新时间：2023-01-18 00:00:00
此函数在地图指定范围中生成怪物，并且支持设置怪物的方向和阵营值。

语法
Luacopy 复制
lualib:Map_GenCampMonster(
    strMap,
    wX,
    wY,
    wRange,
    byDir,
    strMonsterKey,
    wCount,
    bCanRelive,
    iCamp
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图中的X坐标

wY

uint16

 
生成点在地图中的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际会生成怪物的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只会在指定的坐标点上生成怪物。

byDir

uint8

 
怪物的方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

strMonsterKey

string

 
怪物的索引名（ KeyName）

wCount

int16

 
怪物数量

bCanRelive

bool

 
怪物是否可以复活

true可以复活

false不可复活

iCamp

int32

 
怪物的阵营值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenCampMonster(map, 60, 160, 3, 4, "毒蝎", 1, true, 2) --在指定的地图范围内生成一个方向朝下的怪物“毒蝎”（可复活且阵营值为2）
lualib:Map_GenCampMonster(map, 60, 160, 3, 1, "毒蝎", 1, false, 2) --在指定的地图范围内生成一个方向朝右上的怪物“毒蝎”（不可复活且阵营值为2）

--此示例代码运行成功如下图所示。

Map_GenCampMonster.png
<上一篇:获取地图上两点间的最短移动路径下一篇:在地图上生成掉落物品（扩展）>
Map_GenDropItemsEx
在地图上生成掉落物品（扩展）

更新时间：2023-01-18 00:00:00
此函数在地图上生成掉落物品并且掉落物品不会堆叠。

该接口可以设置掉落物品归属玩家角色，同时游戏工具平台→游戏配置→全局表→全局模板表→掉落相关中的“怪物掉落物别人可拣时间”字段可控制物品在有归属玩家角色情况下的冷却时间，在冷却时间内只有归属玩家可以拾取该物品。

Map_GenDropItems_2.png
语法
Luacopy 复制
lualib:Map_GenDropItemsEx(
    map_guid,
    owner_guid,
    x,
    y,
    items
)
参数
map_guid

string

 
地图的GUID

owner_guid

string

 
归属者角色的GUID

note_icon 备注
填""则表示掉落物品无归属者，且掉落物品捡起冷却时间会被设置为0。

x

uint16

 
生成点在地图上的X坐标

y

uint16

 
生成点在地图上的Y坐标

items

table

 
掉落物品的数据，为数组格式

数组的格式为{"物品1索引名", "物品2索引名"}

例如：{"羽毛","羽毛","羽毛","羽毛","强化石"}

note_icon 备注
掉落物品不会堆叠，若要生成多个相同索引名的物品，只需根据需求在此数组中重复添加对应物品的索引名。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在地图上生成掉落物品并且掉落物品不会堆叠
if lualib:Map_GenDropItemsEx(lualib:MapGuid(player), "", lualib:X(player) + 2, lualib:Y(player) + 2, {"羽毛","羽毛","羽毛","羽毛","强化石"}) then
    lualib:SysMsg_SendWarnMsg(player, "掉落物品不堆叠设置成功！")
end

--此示例代码运行成功如下图所示。

Map_GenDropItemsEx.png

Map_GenDropItemsEx_2.png
<上一篇:在地图指定范围生成怪物下一篇:在地图上生成掉落物品>
Map_GenDropItems
在地图上生成掉落物品

更新时间：2026-02-13 19:30:00
此函数作用为在地图上生成掉落物品。

该接口可以设置掉落物品归属玩家角色，同时游戏工具平台→游戏配置→全局表→全局模板表→掉落相关中的“怪物掉落物别人可拣时间”字段可控制物品在有归属玩家角色情况下的冷却时间，在冷却时间内只有归属玩家可以拾取该物品。

Map_GenDropItems_2.png
语法
Luacopy 复制
lualib:Map_GenDropItems(
    map_guid,
    owner_guid,
    x,
    y,
    items
)
参数
map_guid

string

 
地图的GUID

owner_guid

string

 
归属者角色的GUID

note_icon 备注
填""则表示掉落物品无归属者，且掉落物品捡起冷却时间会被设置为0。

x

uint16

 
生成点在地图上的X坐标

y

uint16

 
生成点在地图上的Y坐标

items

table

 
掉落物品配置表，支持两种形式：

形式1：包含掉落物品的索引名及数量，类似{["剑"] = 1, ["刀"] = 2}

形式2：包含掉落物品的索引名及配置table，可设置掉落数量、整型自定义变量和字符串型自定义变量

{
    ["剑"] = {
        n = 1,                      -- 掉落数量，必须大于0，不可省略
        i = { k1 = 1, k2 = 2 },     -- 整型自定义变量，可以不设置
        s = { k3 = "abc" }          -- 字符串型自定义变量，可以不设置
    },
    ["刀"] = { n = 1 }
}
返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对物品自定义变量写入的支持

示例代码
Luacopy 复制
-- 形式1：简单掉落
function diaoluo1(npc,player)
    local map_guid = lualib:MapGuid(player)
    local x = lualib:X(player)
    local y = lualib:Y(player)
    local rand = lualib:GenRandom(1, 2)
    lualib:Map_GenDropItems(map_guid, "", x + rand, y + rand, { ["测试衣服"] = 1, ["高级灵元精粹"] = 2 }) 
end


-- 形式2：带自定义变量的掉落
function diaoluo2(npc, player)
    local map_guid = lualib:MapGuid(player)
    local x = lualib:X(player)
    local y = lualib:Y(player)
    local rand = lualib:GenRandom(1, 2)
    local itemList = {
        ["测试衣服"] = {
            n = 1,
            i = { ceshi1 = 1, ceshi2 = 2 },
            s = { ceshi3 = "阿东" }
        }
    }
    lualib:Map_GenDropItems(map_guid, "", x + rand, y + rand, itemList)
end

--执行示例代码，结果如图所示。

Map_GenDropItems_3.png

Map_GenDropItems_4.png
<上一篇:在地图上生成掉落物品（扩展）下一篇:在地图上指定位置生成金币>
Map_GenGold
在地图上指定位置生成金币

更新时间：2023-01-18 00:00:00
此函数在地图上指定位置生成金币。

参考 ModifyItemGold GetItemGold

语法
Luacopy 复制
lualib:Map_GenGold(
    strMap,
    wX,
    wY,
    iGold,
    bMustEmpty,
    dwFreeze,
    iDropType,
    strDropHost
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

iGold

int32

 
生成金币的数量

bMustEmpty

bool

 
是否必须在空逻辑格上生成物品

true是

false否

dwFreeze

uint32

 
生成后物品的冷却时间

单位为秒（s）

iDropType

int

 
生成物品的掉落类型

1玩家主动丢弃

2玩家死亡掉落

3怪物死亡掉落

4脚本掉落

5地图掉落

6地图主动掉落

7物品掉落后归属于指定玩家（目前此类型仅支持使用接口SetItemDropTypeWithHost进行设置）

strDropHost

string

 
可直接拾取该物品的玩家角色的GUID

note_icon 备注
当参数iDropType为1、2、4、6时，此参数才会生效，否则此参数留空（""）即可。

note_icon 备注
在参数dwFreeze设置的物品冷却时间内，只有参数strDropHost设置的玩家角色可忽略冷却时间直接拾取该物品，其余玩家角色需要等待冷却时间结束才可拾取该物品。

返回值
string

 
生成物品成功则返回物品的GUID

生成物品失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenGold(map, lualib:X(player)+1, lualib:Y(player)+1, 3000, false, 4, 6, player) --在地图上指定位置生成金币

--此示例代码运行成功后，会在地图上指定位置生成指定数量的金币。
<上一篇:在地图上生成掉落物品下一篇:在地图上指定位置生成物品（扩展）>
Map_GenItemEx
在地图上指定位置生成物品（扩展）

更新时间：2023-01-18 00:00:00
此函数在地图上指定位置生成物品，并且支持设置可直接拾取该物品的玩家角色。

语法
Luacopy 复制
lualib:Map_GenItemEx(
    strMap,
    wX,
    wY,
    strItemKey,
    wCount,
    bMustEmpty,
    dwFreeze,
    strPlayer
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

strItemKey

string

 
物品的索引名（KeyName）

wCount

uint16

 
物品数量

note_icon 备注
此参数的配置值不可大于此物品的最大堆叠数量。

bMustEmpty

bool

 
是否必须在空逻辑格上生成物品

true是

false否

dwFreeze

uint32

 
生成后物品的冷却时间

单位为秒（s）

strPlayer

string

 
可直接拾取该物品的玩家角色的GUID

note_icon 备注
在参数dwFreeze设置的物品冷却时间内，只有参数strPlayer设置的玩家角色可忽略冷却时间直接拾取该物品，其余玩家角色需要等待冷却时间结束才可拾取该物品。

返回值
string

 
生成物品成功则返回物品的GUID

生成物品失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item = lualib:Map_GenItemEx(lualib:MapGuid(player), lualib:X(player)+1, lualib:Y(player)+1, "超级护身符", 1, true, 10, player)
if item ~= "" then
    lualib:SysMsg_SendWarnMsg(player, "掉落物品："..lualib:Name(item))
end

--此示例代码运行成功如下图所示，只有参数strPlayer设置的玩家角色可直接拾取该物品。

Map_GenItemEx.png
<上一篇:在地图上指定位置生成金币下一篇:在地图上指定坐标范围内随机生成物品>
Map_GenItemRnd
在地图上指定坐标范围内随机生成物品

更新时间：2023-01-18 00:00:00
此函数在地图上指定坐标范围内随机生成物品。

语法
Luacopy 复制
lualib:Map_GenItemRnd(
    strMap,
    wX,
    wY,
    wRange,
    strItemKey,
    wCount,
    bMustEmpty,
    dwFreeze
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定生成点的坐标为(0,0)，坐标范围为5，则实际可生成物品的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可在指定的坐标点上生成物品。

strItemKey

string

 
物品的索引名（KeyName）

wCount

uint16

 
物品数量

note_icon 备注
此参数的配置值不可大于此物品的最大堆叠数量。

bMustEmpty

bool

 
是否必须在空逻辑格上生成物品

true是

false否

dwFreeze

uint32

 
生成后物品的冷却时间

单位为秒（s）

返回值
string

 
生成物品成功则返回物品的GUID

生成物品失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenItemRnd(map, lualib:X(player)+1, lualib:Y(player)+1, 5, "羽毛", 10, false, 3) --在地图上指定坐标范围内随机生成物品“羽毛”

--此示例代码运行前效果如下图所示。

Map_GenItemRnd.png

--此示例代码运行后效果如下图所示。

Map_GenItemRnd_2.png
<上一篇:在地图上指定位置生成物品（扩展）下一篇:在地图上指定位置生成物品>
Map_GenItem
在地图上指定位置生成物品

更新时间：2023-01-18 00:00:00
此函数在地图上指定位置生成物品。

语法
Luacopy 复制
lualib:Map_GenItem(
    strMap,
    wX,
    wY,
    strItemKey,
    wCount,
    bMustEmpty,
    dwFreeze
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

strItemKey

string

 
物品的索引名（KeyName）

wCount

uint16

 
物品数量

note_icon 备注
此参数的配置值不可大于此物品的最大堆叠数量。

bMustEmpty

bool

 
是否必须在空逻辑格上生成物品

true是

false否

dwFreeze

uint32

 
生成后物品的冷却时间

单位为秒（s）

note_icon 备注
在参数dwFreeze设置的物品冷却时间内，所有玩家角色都需要等待冷却时间结束才可拾取该物品。

返回值
string

 
生成物品成功则返回物品的GUID

生成物品失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local item = lualib:Map_GenItem(map, lualib:X(player)+1, lualib:Y(player)+1, "超级护身符", 1, true, 10) --在地图指定位置生成物品“超级护身符”

--此示例代码运行前效果如下图所示。

Map_GenItem.png

--此示例代码运行后效果如下图所示。

Map_GenItem_2.png
<上一篇:在地图上指定坐标范围内随机生成物品下一篇:在地图指定范围生成怪物>
Map_GenMonsterWithReborn
在地图指定范围生成怪物

更新时间：2024-06-21 00:00:00
此函数在地图指定范围中生成怪物，并且支持设置怪物的方向、数量和复活时间。

语法
Luacopy 复制
lualib:Map_GenMonsterWithReborn(
    strMap,
    wX,
    wY,
    wRange,
    byDir,
    strMonsterKey,
    wCount,
    reborn,
    reborn_ex
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际可生成怪物的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可在指定的坐标点生成怪物。

byDir

uint8

 
怪物的方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

strMonsterKey

string

 
怪物的索引名（KeyName）

wCount

int16

 
怪物的数量

reborn

bool

 
复活时间，单位毫秒

reborn_ex

bool

 
复活浮动时间，单位毫秒

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local strMap = lualib:Map_GetMapGuid("手游新手村")
local wX = 60
local wY = 106
local wRange = 3
local byDir = 4
local strMonsterKey = "塔防食人恶魔"
local wCount = 3
local reborn = 5000
local reborn_ex = 0
if lualib:Map_GenMonsterWithReborn(strMap,wX,wY,wRange,byDir,strM onsterKey,wCount,reborn,reborn_ex) then
    lualib:Warn("刷怪成功")
else
    lualib:Warn("刷怪失败")
end

--在指定范围刷怪成功如下图所示。

Map_GenMonsterWithReborn.png

--杀怪后怪物会在指定时间过后成功复活如下图所示。

Map_GenMonsterWithReborn_2.png
<上一篇:在地图上指定位置生成物品下一篇:在地图指定范围生成怪物>
Map_GenMonster
在地图指定范围生成怪物

更新时间：2023-01-18 00:00:00
此函数在地图指定范围中生成怪物，并且支持设置怪物的方向和数量。

语法
Luacopy 复制
lualib:Map_GenMonster(
    strMap,
    wX,
    wY,
    wRange,
    byDir,
    strMonsterKey,
    wCount,
    bCanRelive
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际可生成怪物的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可在指定的坐标点生成怪物。

byDir

uint8

 
怪物的方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

strMonsterKey

string

 
怪物的索引名（KeyName）

wCount

int16

 
怪物的数量

bCanRelive

bool

 
怪物是否可以复活

true可以复活

false不可复活

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenMonster(map, lualib:X(player)+1, lualib:Y(player)+1, 5, 4, "毒蝎", 1, true) --在指定的地图范围内生成一个方向朝下的怪物“毒蝎”（可复活）
lualib:Map_GenMonster(map, lualib:X(player)+1, lualib:Y(player)+1, 5, 3, "毒蝎", 1, true) --在指定的地图范围内生成一个方向朝右下的怪物“毒蝎”（可复活）
lualib:Map_GenMonster(map, lualib:X(player)+1, lualib:Y(player)+1, 5, 2, "毒蝎", 1, true) --在指定的地图范围内生成一个方向朝右的怪物“毒蝎”（可复活）

--此示例代码运行前效果如下图所示。

Map_GenMonster.png

--此示例代码运行后效果如下图所示。

Map_GenMonster_2.png
<上一篇:在地图指定范围生成怪物下一篇:在地图中随机位置生成单个NPC>
Map_GenNpcRnd
在地图中随机位置生成单个NPC

更新时间：2023-01-18 00:00:00
此函数在地图中随机位置生成单个NPC。

语法
Luacopy 复制
lualib:Map_GenNpcRnd(
    strMap,
    strNpcKey
)

参数
strMap

string

 
地图的GUID

strNpcKey

string

 
NPC的索引名（KeyName）

返回值
string

 生成NPC的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenNpcRnd(map, "挂机地图") --在指定的地图中随机生成单个“挂机地图”NPC

--此示例代码运行前效果如下图所示。

Map_GenNpc.png

--此示例代码运行后效果如下图所示。

Map_GenNpcRnd.png
<上一篇:在地图指定范围生成怪物下一篇:在地图指定范围生成单个NPC>
Map_GenNpc
在地图指定范围生成单个NPC

更新时间：2023-01-18 00:00:00
此函数在地图指定范围中生成单个NPC。

语法
Luacopy 复制
lualib:Map_GenNpc(
    strMap,
    strNpcKey,
    wX,
    wY,
    wRange,
    byDir
)

参数
strMap

string

 
地图的GUID

strNpcKey

string

 
NPC的索引名（KeyName）

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际可生成NPC的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可在指定的坐标点生成NPC。

byDir

uint8

 
NPC的方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

返回值
string

 生成NPC的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenNpc(map, "挂机地图", lualib:X(player)+1,lualib:Y(player)+1, 2, 4) --在指定的地图范围内生成单个方向朝下的“挂机地图”NPC

--此示例代码运行前效果如下图所示。

Map_GenNpc.png

--此示例代码运行后效果如下图所示。

Map_GenNpc_2.png
<上一篇:在地图中随机位置生成单个NPC下一篇:在地图指定范围内生成一只怪物并设置阵营>
Map_GenSingleCampMonster
在地图指定范围内生成一只怪物并设置阵营

更新时间：2023-01-18 00:00:00
此函数在地图指定范围中生成一只怪物，并且支持设置怪物的阵营值。

语法
Luacopy 复制
lualib:Map_GenSingleCampMonster(
    strMap,
    wX,
    wY,
    wRange,
    byDir,
    strMonsterKey,
    bCanRelive,
    iCamp
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际可生成怪物的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可在指定的坐标点生成怪物。

byDir

uint8

 
怪物的方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

strMonsterKey

string

 
怪物的索引名（KeyName）

bCanRelive

bool

 
怪物是否可以复活

true可以复活

false不可复活

iCamp

int32

 
怪物的阵营值

返回值
string

 
生成怪物的GUID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenSingleCampMonster(map, 60, 160, 3, 4, "毒蝎", true, 2) --在指定的地图范围内生成一只方向朝下的怪物“毒蝎”（可复活且阵营值为2）
lualib:Map_GenSingleCampMonster(map, 60, 160, 3, 1, "毒蝎", false, 2) --在指定的地图范围内生成一只方向朝右上的怪物“毒蝎”（不可复活且阵营值为2）

--此示例代码运行成功如下图所示。

Map_GenCampMonster.png
<上一篇:在地图指定范围生成单个NPC下一篇:在地图指定范围生成一只怪物>
Map_GenSingleMonster
在地图指定范围生成一只怪物

更新时间：2023-01-18 00:00:00
此函数在地图指定范围中生成一只怪物。

语法
Luacopy 复制
lualib:Map_GenSingleMonster(
    strMap,
    wX,
    wY,
    wRange,
    byDir,
    strMonsterKey,
    bCanRelive
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
生成点在地图上的X坐标

wY

uint16

 
生成点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际可生成怪物的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可在指定的坐标点生成怪物。

byDir

uint8

 
怪物的方向（范围为0-7，从0开始依次为从上边开始的顺时针的八个方向）

0上边

1右上

2右边

3右下

4下边

5左下

6左边

7左上

strMonsterKey

string

 
怪物的索引名（KeyName）

bCanRelive

bool

 
怪物是否可以复活

true可以复活

false不可复活

返回值
string

 生成怪物的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenSingleMonster(map, 60, 160, 3, 4, "毒蝎", true) --在指定的地图范围内生成一只方向朝下的怪物“毒蝎”（可复活）
lualib:Map_GenSingleMonster(map, 60, 160, 3, 1, "毒蝎", false) --在指定的地图范围内生成一只方向朝右上的怪物“毒蝎”（不可复活）

--此示例代码运行成功如下图所示。

Map_GenCampMonster.png
<上一篇:在地图指定范围内生成一只怪物并设置阵营下一篇:获取地图所有的跳转点信息>
Map_GetAllJumpInfos
获取地图所有的跳转点信息

更新时间：2026-02-13 19:29:00
此函数获取地图所有的跳转点信息。

语法
Luacopy 复制
lualib:Map_GetAllJumpInfos(
    map_guid
)

参数
map_guid

string

 
地图的GUID

返回值
table

 
该地图所有跳转点信息，格式如下：

{
  {
    -- 目标地图GUID
    ["to_map"] = "500000000001j",
    -- 在本地图的跳转区域 为方形
    ["from_region"] = { min_x = 31, max_x = 32, min_y = 21, max_y = 22},
    -- 跳转目标区域 为方形
    ["to_region"] = { min_x = 51, max_x = 52, min_y = 41, max_y = 42},
  },
  {
    ...
  }
}
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function Map_GetAllJumpInfos(npc,player)
    local map = lualib:MapGuid(player)
    local list = lualib:Map_GetAllJumpInfos(map)
    lualib:Warn( serialize(list))
end

--执行示例代码，结果如图所示。
Map_GetAllJumpInfos.png
Map_GetAllJumpInfos_2.png
<上一篇:在地图指定范围生成一只怪物下一篇:获取地图上所有怪物的GUID>
Map_GetAllMonsters
获取地图上所有怪物的GUID

更新时间：2025-05-06 00:00:00
此函数作用是获取地图上所有怪物的GUID。

语法
Luacopy 复制
lualib:Map_GetAllMonsters(
    map_guid
)
参数
map_guid

string

 
地图的guid

返回值
table

 
所有的怪物GUID

存储在lua表中

返回的table形式为{[1] = "怪物1的GUID", [2] = "怪物2的GUID"}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local mapguid = lualib:MapGuid(player)
    local AllMonsters = lualib:Map_GetAllMonsters(mapguid)
    lualib:Warn("地图上所有怪物的GUID为："..serialize(AllMonsters))
end

--在地图刷出指定数量怪物，执行示例代码，如图所示可以获取地图上所有怪物的GUID。
Map_GetAllMonsters.png
Map_GetAllMonsters_2.png
<上一篇:获取地图所有的跳转点信息下一篇:获取指定地图上所有的可移动点>
Map_GetAllMoveableGrid
获取指定地图上所有的可移动点

更新时间：2023-01-18 00:00:00
此函数获取指定地图上所有的可移动点的逻辑格坐标。

caution_icon注意
本函数的执行对服务器性能有一定的压力，建议服务器启动时获取并保存坐标对数据。

语法
Luacopy 复制
lualib:Map_GetAllMoveableGrid(
    map_name
)
参数
map_name

string

 
地图的索引名（KeyName）

返回值
table

 
指定地图上所有可移动点的坐标对

为table格式，具体格式为{{可移动点1的横坐标,可移动点1的纵坐标},{可移动点2的横坐标,可移动点2的纵坐标},{可移动点3的横坐标,可移动点3的纵坐标}}

例如:{{1,2},{2,3},{4,5}}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_xinshoucun = lualib:Map_GetAllMoveableGrid("手游新手村") --获取手游新手村的所有的可移动点的坐标
lualib:SetDBStr("map_xinshoucun", json.encode(map_xinshoucun)) --将获取的坐标对存储在数据库中的字符型变量中
local map_xinshoucun = lualib:GetDBStr("map_xinshoucun") --获取数据库中存储的坐标对
lualib:Warn("map_xinshoucun = "..map_xinshoucun)

--此示例代码运行成功如下图所示。

Map_GetAllMoveableGrid.png
<上一篇:获取地图上所有怪物的GUID下一篇:获取地图上范围内通道道具列表>
Map_GetChannelItemsInRegion
获取地图上范围内通道道具列表

更新时间：2024-07-26 00:00:00
此函数获取地图上范围内通道道具列表。

语法
Luacopy 复制
lualib:Map_GetChannelItemsInRegion(
    map_guid,
    x,
    y,
    range
)
参数
map_guid

string

 
地图GUID

x

UINT16

 
区域坐标X

y

UINT16

 
区域坐标Y

range

UINT16

 
区域范围

返回值
table

 
返回物品坐标列表，存储在lua表中。

返回的table格式为{[1]={[1]=2,[2]=4},[2]={[1]=55,[2]=88}}。其中每对坐标，第一个元素为x，第二个元素为y。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_guid = lualib:MapGuid(player)
local x = 64
local y = 100
local range = 10
local t_channelItems = lualib:Map_GetChannelItemsInRegion(map_guid, x, y, range)
lualib:Warn("地图上范围内通道道具列表："..serialize(t_channelItems))

--此示例代码运行成功获取地图上范围内通道道具列表。

Map_GetChannelItemsInRegion.png
<上一篇:获取指定地图上所有的可移动点下一篇:获取地图区域内的对象列表>
Map_GetGridObjList
获取地图区域内的对象列表

更新时间：2023-01-18 00:00:00
此函数获取地图指定区域内的对象GUID列表。

语法
Luacopy 复制
lualib:Map_GetGridObjList(
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

 
指定点在地图上的X坐标

wY

uint16

 
指定点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：指定点的坐标为(0,0)，坐标范围为5，则实际可获取的对象坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，只可获取指定的坐标点上的对象。

返回值
table

 
指定区域内对象的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local objects = lualib:Map_GetGridObjList(map,lualib:X(player)+1,lualib:Y(player)+1,30) --获取地图指定区域内的对象GUID列表
for k, v in pairs(objects) do
    lualib:Warn(""..k..":"..v)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

Map_GetGridObjList.png

Map_GetGridObjList_2.png
<上一篇:获取地图上范围内通道道具列表下一篇:获取地图的高度>
Map_GetHeight
获取地图的高度

更新时间：2023-02-06 00:00:00
此函数获取指定地图的高度。

语法
Luacopy 复制
lualib:Map_GetHeight(
    strMap
)

参数
strMap

string

 
地图的GUID

返回值
uint16

 
获取成功则返回地图的高度（单位为逻辑格）

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local map_height = lualib:Map_GetHeight(map) --获取当前地图的高度
lualib:Warn("地图高度为："..map_height)
local map_width = lualib:Map_GetWidth(map) --获取当前地图的宽度
lualib:Warn("地图宽度为："..map_width)

--此示例代码运行成功如下图所示。

Map_GetHeight.png
<上一篇:获取地图区域内的对象列表下一篇:获取地图的GUID>
Map_GetMapGuid
获取地图的GUID

更新时间：2023-01-18 00:00:00
此函数获取指定地图的GUID。

语法
Luacopy 复制
lualib:Map_GetMapGuid(
    strMapKey
)

参数
strMapKey

string

 
地图的索引名（KeyName）

返回值
string

 
获取成功则返回地图的GUID

获取失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:Map_GetMapGuid("手游新手村")
lualib:Warn("GUID为："..map)

--此示例代码运行成功如下图所示。

Map_GetMapGuid.png
<上一篇:获取地图的高度下一篇:获取地图中NPC的GUID>
Map_GetMapNpc
获取地图中NPC的GUID

更新时间：2023-01-18 00:00:00
此函数获取指定地图中某个NPC的GUID。

语法
Luacopy 复制
lualib:Map_GetMapNpc(
    strMap,
    strNpcKey
)

参数
strMap

string

 
地图的GUID

strNpcKey

string

 
NPC的索引名（KeyName）

返回值
string

 
执行成功则返回NPC的GUID

执行失败则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local npc_gid = lualib:Map_GetMapNpc(map,"服务端接口测试") --获取当前地图中“服务端接口测试”NPC的GUID
lualib:Warn("npc的GUID为:"..npc_gid)

--此示例代码运行成功如下图所示。

Map_GetMapNpc.png
<上一篇:获取地图的GUID下一篇:获取地图内的玩家列表>
Map_GetMapPlayers
获取地图内的玩家列表

更新时间：2023-01-18 00:00:00
此函数获取指定地图内的玩家GUID列表。

语法
Luacopy 复制
lualib:Map_GetMapPlayers(
    strMap,
    bIgnoreDied
)

参数
strMap

string

 
地图的GUID

bIgnoreDied

bool

 
是否忽略死亡角色

true是

false否

返回值
table

 
玩家GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Map_GetMapPlayers.png
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local tableplayer = {}
tableplayer = lualib:Map_GetMapPlayers(map, true) --获取当前地图上的玩家GUID列表（忽略死亡角色）
for i = 1 ,#tableplayer do
    lualib:Warn("玩家"..i.."的GUID为"..tableplayer[i])
end

--此示例代码运行成功如下图所示。

Map_GetMapPlayers_2.png
<上一篇:获取地图中NPC的GUID下一篇:获取地图上怪物的数量>
Map_GetMonsterCount
获取地图上怪物的数量

更新时间：2023-01-18 00:00:00
此函数获取指定地图上指定怪物的数量。

语法
Luacopy 复制
lualib:Map_GetMonsterCount(
    strMap,
    strMonsterKey,
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

note_icon 备注
若此参数的值为""，则代表获取此地图上的所有怪物。

bIgnoreDied

bool

 
是否忽略死亡怪物

true是

false否

bIgnoreServant

bool

 
是否忽略玩家的宠物

true是

false否

返回值
int32

 
执行成功则返回怪物数量

执行失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenMonster(map, lualib:X(player)+1, lualib:Y(player)+1, 50, 4, "毒蝎", 20, true) --在指定的地图范围内生成20只方向朝下的怪物“毒蝎”（可复活）
local monster_count = lualib:Map_GetMonsterCount(map, "毒蝎", true, true) --获取当前地图上的怪物“毒蝎”的数量
lualib:Warn("地图上一共有"..monster_count.."只毒蝎")

--此示例代码运行成功如下图所示。

Map_GetMonsterCount.png
<上一篇:获取地图内的玩家列表下一篇:获取地图上玩家的数量>
Map_GetPlayerCount
获取地图上玩家的数量

更新时间：2023-01-18 00:00:00
此函数获取指定地图上玩家的数量。

语法
Luacopy 复制
lualib:Map_GetPlayerCount(
    strMap,
    bIgnoreDied
)

参数
strMap

string

 
地图的GUID

bIgnoreDied

bool

 
是否忽略死亡的角色

true是

false否

返回值
int32

 
执行成功则返回玩家的数量

执行失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Map_GetMapPlayers.png
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local player_count = lualib:Map_GetPlayerCount(map,true) --获取当前地图上的玩家数量（忽略死亡角色）
lualib:Warn("地图上一共有"..player_count.."个玩家")

--此示例代码运行成功如下图所示。

Map_GetPlayerCount.png
<上一篇:获取地图上怪物的数量下一篇:获取地图区域内的英雄列表>
Map_GetRegionDummys
获取地图区域内的英雄列表

更新时间：2024-08-30 00:00:00
此函数获取地图指定区域内的英雄列表。

语法
Luacopy 复制
lualib:Map_GetRegionDummys(
    strMap,
    tRange,
    bIgnoreDied
)

参数
strMap

string

 
地图的GUID

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0或者1，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tRange[1]=2
（菱形区域）	区域左上角的X坐标	区域左上角的Y坐标	菱形下方X坐标	菱形下方X坐标
bIgnoreDied

bool

 
是否忽略死亡角色

true是

false否

返回值
table

 
指定区域内英雄的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

 
v1.1

 
新增菱形区域的支持

示例代码
Luacopy 复制
function main(npc, player)
    local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
    local ranges = {1, 0, 0, 100, 100}
    lualib:CreateHeroForPlayer(player,"英雄1",1,1,"CreateHeroResult","英雄1") --创建一个英雄
    local items = lualib:Map_GetRegionDummys(map,ranges,true) --获取地图区域内的英雄列表
    for i=1,#items do
        lualib:Warn("英雄GUID为"..items[i])
    end
end

function CreateHeroResult(player, err, name)
    if err == 0 then
        lualib:Warn("创建英雄成功")
    else
        lualib:SysWarnMsg(player, "创建英雄"..name.."失败，错误码是"..err)
        lualib:Warn("创建英雄失败")
    end
end

--此示例代码运行成功如下图所示。

Map_GetRegionDummys.png
<上一篇:获取地图上玩家的数量下一篇:获取地图区域内的物品列表>
Map_GetRegionItemsEx
获取地图区域内的物品列表

更新时间：2024-08-30 00:00:00
此函数获取地图指定区域内的物品列表。

语法
Luacopy 复制
lualib:Map_GetRegionItemsEx(
    strMap,
    strItemKey,
    tRange
)

参数
strMap

string

 
地图的GUID

strItemKey

string

 
物品的索引名（KeyName）

note_icon 备注
若此参数的值为""，则代表获取此范围内的所有物品的GUID。

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0或者1，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tRange[1]=2
（菱形区域）	区域左上角的X坐标	区域左上角的Y坐标	菱形下方X坐标	菱形下方X坐标
返回值
table

 
指定区域内物品的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

 
v1.1

 
新增菱形区域的支持

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Map_GetRegionItemsEx_2.png
local ranges = {0, 55, 165, 100, 100}
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local items = {}
local items = lualib:Map_GetRegionItemsEx(map, "", ranges)
for i = 1 ,#items do
    lualib:Warn("物品"..i.."的GUID为"..items[i])
end

--此示例代码运行成功如下图所示。

Map_GetRegionItemsEx.png
<上一篇:获取地图区域内的英雄列表下一篇:获取地图区域内的怪物数量>
Map_GetRegionMonstersCount
获取地图区域内的怪物数量

更新时间：2024-08-30 00:00:00
此函数获取地图指定区域内的怪物数量。

语法
Luacopy 复制
lualib:Map_GetRegionMonstersCount(
    strMap,
    strMonsterKey,
    tRange,
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

note_icon 备注
若此参数的值为""，则代表获取此范围内的所有怪物的GUID。

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0或者1，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tRange[1]=2
（菱形区域）	区域左上角的X坐标	区域左上角的Y坐标	菱形下方X坐标	菱形下方X坐标
bIgnoreDied

bool

 
是否忽略死亡怪物

true是

false否

bIgnoreServant

bool

 
是否忽略玩家的宠物

true是

false否

返回值
int32

 指定区域内的怪物数量
版本历史
v1.0

 
首次发布

 
v1.1

 
新增菱形区域的支持

示例代码
Luacopy 复制
local ranges = {0, 55, 165, 100, 100}
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
lualib:Map_GenMonster(map, lualib:X(player)+1, lualib:Y(player)+1, 50, 4, "毒蝎", 20, true) --在指定的地图范围内生成20只方向朝下的怪物“毒蝎”（可复活）
local monster_count =  lualib:Map_GetRegionMonstersCount(map, "",ranges,true,true) --获取当前地图指定区域上的怪物数量
lualib:Warn("地图上怪物数量为"..monster_count)

--此示例代码运行成功如下图所示。

Map_GetRegionMonstersCount.png
<上一篇:获取地图区域内的物品列表下一篇:获取地图区域内的怪物列表>
Map_GetRegionMonstersEx
获取地图区域内的怪物列表

更新时间：2024-08-30 00:00:00
此函数获取地图指定区域内的怪物GUID列表。

语法
Luacopy 复制
lualib:Map_GetRegionMonstersEx(
    strMap,
    strMonsterKey,
    tRange,
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

note_icon 备注
若此参数的值为""，则代表获取此范围内的所有怪物的GUID。

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0或者1，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tRange[1]=2
（菱形区域）	区域左上角的X坐标	区域左上角的Y坐标	菱形下方X坐标	菱形下方X坐标
bIgnoreDied

bool

 
是否忽略死亡怪物

true是

false否

bIgnoreServant

bool

 
是否忽略玩家的宠物

true是

false否

返回值
table

 
指定区域内怪物的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

 
v1.1

 
新增菱形区域的支持

示例代码
Luacopy 复制
local ranges = {0, 55, 165, 100, 100}
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local monster = {}
local monster = lualib:Map_GetRegionMonstersEx(map, "", ranges, true, true) --获取当前地图指定区域上的怪物GUID列表
for i = 1 ,#monster do
    lualib:Warn("怪物"..i.."的GUID为"..monster[i])
end

--此示例代码运行成功如下图所示。

Map_GetRegionMonstersEx.png
<上一篇:获取地图区域内的怪物数量下一篇:获取地图区域内的NPC列表>
Map_GetRegionNpcsEx
获取地图区域内的NPC列表

更新时间：2024-08-30 00:00:00
此函数获取地图指定区域内的NPC的GUID列表。

语法
Luacopy 复制
lualib:Map_GetRegionNpcsEx(
    strMap,
    tRange,
    strNpcKey
)

参数
strMap

string

 
地图的GUID

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0或者1，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tRange[1]=2
（菱形区域）	区域左上角的X坐标	区域左上角的Y坐标	菱形下方X坐标	菱形下方X坐标
strNpcKey

string

 
NPC的索引名（KeyName）

note_icon 备注
若此参数的值为""，则代表获取此范围内的所有NPC的GUID。

返回值
table

 
指定区域内NPC的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

 
v1.1

 
新增菱形区域的支持

示例代码
Luacopy 复制
local ranges = {0, 55, 165, 100, 100}
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local npc = {}
local npc = lualib:Map_GetRegionNpcsEx(map, ranges, "") --获取当前地图指定区域上的NPC的GUID列表
for i = 1 ,#npc do
	lualib:Warn("NPC"..i.."的GUID为"..npc[i])
end

--此示例代码运行成功如下图所示。

Map_GetRegionNpcsEx.png
<上一篇:获取地图区域内的怪物列表下一篇:获取地图区域内的玩家列表>
Map_GetRegionPlayersEx
获取地图区域内的玩家列表

更新时间：2023-01-18 00:00:00
此函数获取地图指定区域内的玩家GUID列表。

语法
Luacopy 复制
lualib:Map_GetRegionPlayersEx(
    strMap,
    tRange,
    bIgnoreDied
)

参数
strMap

string

 
地图的GUID

tRange

table

 
指定区域范围（为table格式）

具体格式为{tRange[1],tRange[2],tRange[3],tRange[4],tRange[5]}

例如：{0, 100, 100, 100, 100}。

其中，tRange[1]的取值只能为0、1或者2，对应其他参数的具体说明请参见下表。

tRange[2]	tRange[3]	tRange[4]	tRange[5]
tRange[1]=0
（矩形区域）	区域中心点的X坐标	区域中心点的Y坐标	区域宽度的一半	区域高度的一半
tRange[1]=1
（矩形区域）	区域左上角的X坐标	区域左上角的Y坐标	区域的宽度	区域的高度
tRange[1]=2
（菱形区域）	菱形区域最上方点的X坐标	菱形区域最上方点的Y坐标	菱形区域最下方点的X坐标	菱形区域最下方点的Y坐标
note_icon 备注
1.上述区域的绘制原点均为地图的左上角；

2.矩形区域的宽度和高度的单位为逻辑格；

3.此处的菱形区域为正菱形，如下图所示；

4.“菱形最下方点的Y坐标”减去“菱形最上方点的Y坐标”的差值需要能被2整除。

image_20200909145847.png
bIgnoreDied

bool

 
是否忽略死亡角色

true是

false否

返回值
table

 
指定区域内的玩家GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

 
v1.1

 
参数tObject增加一种类型

示例代码
Luacopy 复制
local ranges = {0, 55, 165, 100, 100}
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local players = {}
local players = lualib:Map_GetRegionPlayersEx(map, ranges, true) --获取当前地图指定区域上的玩家GUID列表
for i = 1 ,#players do
    lualib:Warn("玩家"..i.."的GUID为"..players[i])
end

--此示例代码运行成功如下图所示。

Map_GetRegionPlayersEx.png
<上一篇:获取地图区域内的NPC列表下一篇:获取地图区域内的对象列表>
Map_GetRegionRoles
获取地图区域内的对象列表

更新时间：2024-01-03 00:00:00
此函数获取地图区域内的对象GUID列表。

这些对象包括角色、英雄、假人、怪物和NPC等。

语法
Luacopy 复制
lualib:Map_GetRegionRoles(
    strMap,
    wX,
    wY,
    wRange,
    bIgnoreDead
)

参数
strMap

string

 
地图的GUID

wX

uint16

 
目标逻辑格的X坐标

wY

uint16

 
目标逻辑格的Y坐标

tRange

uint16

 
指定坐标范围

例如：指定的目标逻辑格坐标为(0,0)，坐标范围为5，则实际区域的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

bIgnoreDead

bool

 
是否忽略死亡角色

true是

false否

返回值
table

 
指定区域内的对象GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local result = lualib:Map_GetRegionRoles(lualib:MapGuid(player),80,621,2,true)
    lualib:Warn("区域范围内的角色GUID列表："..serialize(res))
end

--目标逻辑格点为自己所在位置，给定范围内包括NPC，自己和其他角色共计3个对象，示例代码运行成功如下图所示。

Map_GetRegionRoles
<上一篇:获取地图区域内的玩家列表下一篇:获取地图的宽度>
Map_GetWidth
获取地图的宽度

更新时间：2023-02-06 00:00:00
此函数获取指定地图的宽度。

语法
Luacopy 复制
lualib:Map_GetWidth(
    strMap
)

参数
strMap

string

 
地图的GUID

返回值
uint16

 
获取成功则返回地图的宽度（单位为逻辑格）

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local map_height = lualib:Map_GetHeight(map) --获取当前地图的高度
lualib:Warn("地图高度为："..map_height)
local map_width = lualib:Map_GetWidth(map) --获取当前地图的宽度
lualib:Warn("地图宽度为："..map_width)

--此示例代码运行成功如下图所示。

Map_GetHeight.png
<上一篇:获取地图区域内的对象列表下一篇:判断某地图是否在本GS上>
Map_IsInGS
判断某地图是否在本GS上

更新时间：2023-01-18 00:00:00
此函数判断某地图是否在本GS(Game Server)上。

语法
Luacopy 复制
lualib:Map_IsInGS(
    strMapKey
)

参数
strMapKey

string

 
地图的索引名（KeyName）

返回值
bool

 
true在本GS(Game Server)上

false不在本GS(Game Server)上

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_table = {{"新手村镇", 0, 181, 59,  "寻宝小妖1"},
                   {"手游新手村", 0, 156, 274, "寻宝小妖2"},
                   {"妖山暗穴3", 0, 250, 57,  "寻宝小妖3"},
                   {"妖山暗穴4", 0, 279, 240, "寻宝小妖4"},
                   {"妖山暗穴5", 0, 350, 161, "寻宝小妖5"}}
local map_count = 0
for i = 1, table.getn(map_table) do
    if lualib:Map_IsInGS(map_table[i][1]) == true then
        map_count = map_count + 1
        map_table[i][2] = map_count
    end
end
lualib:Warn("一共有"..map_count.."张地图在游戏服务器上")

--此示例代码运行成功如下图所示。

Map_IsInGS.png
<上一篇:获取地图的宽度下一篇:玩家在指定地图上随机跳转>
Map_JumpRnd
玩家在指定地图上随机跳转

更新时间：2023-01-18 00:00:00
此函数让玩家在指定地图上随机跳转。

语法
Luacopy 复制
lualib:Map_JumpRnd(
    strMap,
    strPlayer
)

参数
strMap

string

 
地图的GUID

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
local map = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
lualib:Map_JumpRnd(map, player) --玩家在当前地图上随机跳转

--此示例代码运行成功后，玩家可在当前地图上随机跳转。
<上一篇:判断某地图是否在本GS上下一篇:让玩家跳转到指定地图的指定坐标范围>
Map_JumpXY
让玩家跳转到指定地图的指定坐标范围

更新时间：2023-02-06 00:00:00
此函数执行玩家跳转地图的操作，玩家可跳转到指定地图的指定坐标范围。

语法
Luacopy 复制
lualib:Map_JumpXY(
    strMap,
    strPlayer,
    wX,
    wY,
    wRange
)

参数
strMap

string

 
地图的GUID

strPlayer

string

 
玩家角色的GUID

wX

uint16

 
跳转点在地图上的X坐标

wY

uint16

 
跳转点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：跳转点的坐标为(0,0)，坐标范围为5，则实际可跳转的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，玩家只可跳转到指定的坐标位置。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
lualib:Map_JumpXY(map, player,120, 37, 5) --让玩家跳转到指定地图的指定坐标范围内

--此示例代码运行成功后，玩家可跳转到指定地图的指定坐标范围内。
<上一篇:玩家在指定地图上随机跳转下一篇:根据怪物刷新表在地图上刷怪>
Map_RefreshMonster
根据怪物刷新表在地图上刷怪

更新时间：2023-01-18 00:00:00
此函数根据怪物刷新表在地图上刷怪。

语法
Luacopy 复制
lualib:Map_RefreshMonster(
    strMapKeyName
)
参数
strMapKeyName

string

 
地图的索引名（KeyName）

返回值
bool

 
true刷怪成功

fasle刷怪失败

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
<上一篇:让玩家跳转到指定地图的指定坐标范围下一篇:在指定地图与坐标范围内复活玩家>
Map_RelivePlayer
在指定地图与坐标范围内复活玩家

更新时间：2024-10-18 00:00:00
此函数在指定地图与坐标范围内复活玩家。

语法
Luacopy 复制
lualib:Map_RelivePlayer(
    map_guid,
    player_guid,
    x,
    y,
    range
)
参数
map_guid

string

 
指定的地图guid

player_guid

string

 
玩家guid

x

UINT16

 
复活点坐标x

y

UINT16

 
复活点坐标y

range

UINT16

 
复活点范围大小

返回值
bool

 
是否复活成功

true复活成功

false复活失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_guid = lualib:MapGuid(player)
local player_guid = "ar8me43jgs00"
local x = 59
local y = 104
local range = 2
if lualib:Map_RelivePlayer(map_guid, player_guid, x, y, range) then
    lualib:Warn("复活成功")
else
    lualib:Warn("复活失败")
end

--杀死玩家后，使用此接口在指定地图与坐标范围内成功复活玩家。
Map_RelivePlayer.png

--执行接口后，玩家在指定位置复活。
Map_RelivePlayer_2.png
Map_RelivePlayer_3.png
<上一篇:根据怪物刷新表在地图上刷怪下一篇:清理地图中的怪物>
Map_RemoveMonster
清理地图中的怪物

更新时间：2023-01-18 00:00:00
此函数作用为清理指定地图中的怪物。

语法
Luacopy 复制
lualib:Map_RemoveMonster(
    strMap,
    strMonsterKey
)

参数
strMap

string

 
地图的GUID

strMonsterKey

string

 
怪物的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
--清理当前地图上的怪物“18新野怪63级”
if  lualib:Map_RemoveMonster(map,"18新野怪63级") then
    lualib:Warn("清理成功")
else 
    lualib:Warn("清理失败")
end

--此示例代码运行后，怪物“18新野怪63级”成功被清理，同时游戏日志中还会打印相关内容。

Map_RemoveNpc_3.png
<上一篇:在指定地图与坐标范围内复活玩家下一篇:清理地图中的NPC>
Map_RemoveNpc
清理地图中的NPC

更新时间：2023-01-18 00:00:00
此函数作用为清理指定地图中的NPC。

语法
Luacopy 复制
lualib:Map_RemoveNpc(
    strMap,
    strNpcKey
)

参数
strMap

string

 
地图的GUID

strNpcKey

string

 
NPC的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
--清理当前地图上的“服务端接口测试”NPC
if  lualib:Map_RemoveNpc(map,"服务端接口测试") then
    lualib:Warn("清理成功")
else 
    lualib:Warn("清理失败")
end

--此示例代码运行前效果如下图所示。

Map_RemoveNpc.png

--此示例代码运行后效果如下图所示，“服务端接口测试”NPC成功被清理。

Map_RemoveNpc_2.png

Map_RemoveNpc_3.png
<上一篇:清理地图中的怪物下一篇:让玩家跳转到地图指定坐标并设置对应的BUFF>
Player_MapMoveXYWithBuffs
让玩家跳转到地图指定坐标并设置对应的BUFF

更新时间：2023-03-03 00:00:00
此函数让玩家跳转到指定地图指定坐标点附近，螺旋遍历坐标点直到找到可移动点，并且支持设置玩家跳转前后的BUFF。

caution_icon注意
该接口是异步的，接口返回时玩家还未切换地图。

语法
Luacopy 复制
lualib:Player_MapMoveXYWithBuffs(
    strPlayer,
    strMapKey,
    X,
    Y,
    wRange,
    preExistBuff,
    afterEnterBuff
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

X

uint16

 
跳转点在地图上的X坐标

Y

uint16

 
跳转点在地图上的Y坐标

wRange

uint16

 
坐标范围

例如：跳转点的坐标为(0,0)，坐标范围为5，则实际可跳转的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，玩家只可跳转到指定的坐标位置。

preExistBuff

string

 
离开原地图前要添加的BUFF的索引名（KeyName）

afterEnterBuff

string

 
进入跳转地图后要添加的BUFF的索引名（KeyName）

返回值
bool

 
true跳转成功

false跳转失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家当前所在地图的GUID
local x = lualib:X(player) --获取玩家在地图上的横坐标
local y = lualib:Y(player) --获取玩家在地图上的纵坐标
if lualib:Player_MapMoveXYWithBuffs(player,"祖洲",x+1,y+1,0,"测试减血","天神护体") then --让玩家跳转到指定地图的指定坐标点，并添加跳转前后的BUFF。
    lualib:Warn("成功")
else
    lualib:Warn("失败")
end

--此示例代码运行成功后，玩家在跳转前成功添加“测试减血”BUFF，在跳转后成功添加“天神护体”BUFF。
<上一篇:清理地图中的NPC
Map_ClearDgnItem
清理副本地图中所有的物品

更新时间：2023-04-18 00:00:00
此函数作用为清理副本地图中所有的物品。

语法
Luacopy 复制
lualib:Map_ClearDgnItem(
    strMap
)

参数
strMap

string

 
副本地图的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Map_ClearDgnItem(lualib:MapGuid(player)) --清理玩家所在副本地图中的所有道具

--此示例代码运行后，当前副本地图上的所有道具成功被清理。
下一篇:清理副本地图中所有的普通怪>
Map_ClearDgnMonster
清理副本地图中所有的普通怪

更新时间：2023-04-18 00:00:00
此函数作用为清理副本地图中所有的普通怪。

note_icon 备注
此接口只会清理普通怪物，不会清理守卫、守城怪、镖车以及玩家的宠物。

语法
Luacopy 复制
lualib:Map_ClearDgnMonster(
    strMap
)

参数
strMap

string

 
副本地图的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_Summon(player, "宠物小飞龙", 1) --玩家召唤宠物
lualib:Map_ClearDgnMonster(lualib:MapGuid(player)) --清理玩家所在副本地图中的所有普通怪

--此示例代码运行后，当前副本地图上的所有普通怪成功被清理（玩家宠物未被清理）。
<上一篇:清理副本地图中所有的物品下一篇:清理副本地图中所有的NPC>
Map_ClearDgnNpc
清理副本地图中所有的NPC

更新时间：2023-04-18 00:00:00
此函数作用为清理副本地图中所有的NPC。

语法
Luacopy 复制
lualib:Map_ClearDgnNpc(
    strMap
)

参数
strMap

string

 
副本地图的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Map_ClearDgnNpc(lualib:MapGuid(player)) --清理玩家所在副本地图中的所有NPC

--此示例代码运行后，当前副本地图上的所有NPC成功被清理。
<上一篇:清理副本地图中所有的普通怪下一篇:清理副本地图中所有的玩家>
Map_ClearDgnPlayer
清理副本地图中所有的玩家

更新时间：2023-04-18 00:00:00
此函数作用为清理副本地图中所有的玩家。

语法
Luacopy 复制
lualib:Map_ClearDgnPlayer(
    strMap
)

参数
strMap

string

 
副本地图的GUID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Map_ClearDgnPlayer(lualib:MapGuid(player)) --清理玩家所在副本地图中的所有玩家

--此示例代码运行后，所有玩家都被踢出当前副本地图。
<上一篇:清理副本地图中所有的NPC下一篇:创建副本地图>
Map_CreateDgn
创建副本地图

更新时间：2023-04-18 00:00:00
此函数作用为创建副本地图。

语法
Luacopy 复制
lualib:Map_CreateDgn(
    strMapKey,
    bLoadGrid,
    dwLife
)

参数
strMapKey

string

 
副本地图的索引名（KeyName）

bLoadGrid

bool

 
是否在副本地图创建时直接加载地图逻辑格

true直接加载地图逻辑格，副本地图开始销毁倒计时。

false当有玩家进入时开始加载地图逻辑格，副本地图开始销毁倒计时。

dwLife

uint32

 
副本地图的生存时间

单位为秒 （s）

返回值
string

 副本地图的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dgn_guid = lualib:Map_CreateDgn("雪域秘境", true, 3 * 60) --创建副本地图
lualib:Warn("副本的GUID为"..dgn_guid)
lualib:Player_SetDgnTicket(player, dgn_guid) --给玩家设置指定副本地图的门票
if lualib:Player_EnterDgn(player, "雪域秘境", 27, 40, 5)  then --让玩家进入副本
    lualib:Warn("进入成功") 
end

--此示例代码运行成功后，玩家进入指定副本地图，同时游戏日志中还会打印相关内容。

Player_EnterDgn.png
<上一篇:清理副本地图中所有的玩家下一篇:销毁副本地图>
Map_DestroyDgn
销毁副本地图

更新时间：2023-04-18 00:00:00
此函数作用为销毁副本地图。

语法
Luacopy 复制
lualib:Map_DestroyDgn(
    strMap
)

参数
strMap

string

 
副本地图的GUID

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家所在地图的GUID
local keyname = lualib:KeyName(map) --获取该地图的索引名
--若玩家所在地图为副本地图，则销毁该地图。
if lualib:Map_IsDgn(keyname) then
    lualib:Warn(keyname.."是副本地图")
    lualib:Map_DestroyDgn(map)
else
    lualib:Warn(keyname.."不是副本地图")
end

--当玩家当前所在地图为副本地图时，此示例代码运行成功后该副本地图会被销毁，同时游戏日志中还会打印相关内容。

Map_IsDgn.png

--当玩家当前所在地图不是副本地图时，游戏日志中会打印以下内容。

Map_IsDgn_2.png
<上一篇:创建副本地图下一篇:获取副本的剩余时间>
Map_GetDgnLeftTime
获取副本的剩余时间

更新时间：2023-04-18 00:00:00
此函数根据副本地图的GUID获取副本的剩余时间。

参考 Map_SetDgnLeftTime

语法
Luacopy 复制
lualib:Map_GetDgnLeftTime(
    map_guid
)
参数
map_guid

string

 
副本地图的GUID

返回值
uint32

 
剩余时间

单位为秒（s）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dgn_guid = lualib:Map_CreateDgn("经验副本1", true, 15 * 60) --创建副本地图
lualib:SysMsg_SendWarnMsg(player, lualib:Name(lualib:MapGuid(player)).." 副本剩余时间为 "..lualib:Map_GetDgnLeftTime(lualib:MapGuid(player)).."s")

--此示例代码运行成功如下图所示。

Map_GetDgnLeftTime.png
<上一篇:销毁副本地图下一篇:判断某副本地图是否存在>
Map_IsDgnExist
判断某副本地图是否存在

更新时间：2023-04-18 00:00:00
此函数判断某副本地图是否存在。

语法
Luacopy 复制
lualib:Map_IsDgnExist(
    strMap
)

参数
strMap

string

 
副本地图的GUID

返回值
bool

 
true该副本地图存在

false该副本地图不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dgn_guid = lualib:Map_CreateDgn("雪域秘境", true, 3 * 60) --创建副本地图
local keyname = lualib:KeyName(dgn_guid) --获取该地图的索引名
if lualib:Map_IsDgnExist(dgn_guid) then
    lualib:Warn("副本地图 "..keyname.."存在")
end

--此示例代码运行成功如下图所示。

Map_IsDgnExist.png
<上一篇:获取副本的剩余时间下一篇:判断某地图是否为副本地图>
Map_IsDgn
判断某地图是否为副本地图

更新时间：2023-04-18 00:00:00
此函数判断某地图是否为副本地图。

语法
Luacopy 复制
lualib:Map_IsDgn(
    strKeyName
)

参数
strKeyName

string

 
地图的索引名（KeyName）

返回值
bool

 
true指定地图是副本地图

false指定地图不是副本地图

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取玩家所在地图的GUID
local keyname = lualib:KeyName(map) --获取该地图的索引名
--若玩家所在地图为副本地图，则销毁该地图。
if lualib:Map_IsDgn(keyname) then
    lualib:Warn(keyname.."是副本地图")
    lualib:Map_DestroyDgn(map)
else
    lualib:Warn(keyname.."不是副本地图")
end

--当玩家当前所在地图为副本地图时，此示例代码运行成功后该副本地图会被销毁，同时游戏日志中还会打印相关内容。

Map_IsDgn.png

--当玩家当前所在地图不是副本地图时，游戏日志中会打印以下内容。

Map_IsDgn_2.png
<上一篇:判断某副本地图是否存在下一篇:设置副本的剩余存在时间>
Map_SetDgnLeftTime
设置副本的剩余存在时间

更新时间：2023-04-18 00:00:00
此函数根据副本地图的GUID设置副本的剩余存在时间。

参考 Map_GetDgnLeftTime

语法
Luacopy 复制
lualib:Map_SetDgnLeftTime(
    map_guid,
    time
)
参数
map_guid

string

 
副本地图的GUID

time

int32

 
剩余存在时间

单位为秒（s）

caution_icon注意
时间不可为负数。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dgn_guid = lualib:Map_CreateDgn("经验副本1", true, 15 * 60) --创建副本地图
lualib:Warn("原副本剩余时间为 "..lualib:Map_GetDgnLeftTime(dgn_guid).."s") --获取修改前副本的剩余时间
lualib:Map_SetDgnLeftTime(dgn_guid,10) --设置副本的剩余存在时间
lualib:Warn("修改后副本剩余时间为 "..lualib:Map_GetDgnLeftTime(dgn_guid).."s") --获取修改后副本的剩余时间

--此示例代码运行成功如下图所示。

Map_SetDgnLeftTime.png
<上一篇:判断某地图是否为副本地图下一篇:让玩家进入副本地图>
Player_EnterDgn
让玩家进入副本地图

更新时间：2023-04-18 00:00:00
此函数作用为让玩家进入指定副本地图。

进入副本地图前，需要先使用接口lualib:Player_SetDgnTicket给玩家设置副本门票。

caution_icon警告
多GS情况下，调用该接口后不能再对玩家进行任何操作。

语法
Luacopy 复制
lualib:Player_EnterDgn(
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

 
副本地图的索引名（KeyName）

wX

uint16

 
玩家进入副本地图的X坐标

wY

uint16

 
玩家进入副本地图的Y坐标

wRange

uint16

 
坐标范围

例如：玩家进入副本地图的坐标为(0,0)，坐标范围为5，则实际可跳转的坐标为(x,y)（其中x∈[-5,5],y∈[-5,5]）。

note_icon 备注
当坐标范围设置为0时，玩家只可跳转到指定的坐标位置。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dgn_guid = lualib:Map_CreateDgn("雪域秘境", true, 3 * 60) --创建副本地图
lualib:Warn("副本的GUID为"..dgn_guid)
lualib:Player_SetDgnTicket(player, dgn_guid) --给玩家设置指定副本地图的门票
if lualib:Player_EnterDgn(player, "雪域秘境", 27, 40, 5)  then --让玩家进入副本
    lualib:Warn("进入成功") 
end

--此示例代码运行成功后，玩家进入指定副本地图，同时游戏日志中还会打印相关内容。

Player_EnterDgn.png
<上一篇:设置副本的剩余存在时间下一篇:获取副本地图的GUID>
Player_GetDgnByTicket
获取副本地图的GUID

更新时间：2023-04-18 00:00:00
此函数根据玩家的GUID和副本地图的索引名（KeyName）获取副本地图的GUID。

副本地图不存在时，无法获取指定副本地图的GUID。

语法
Luacopy 复制
lualib:Player_GetDgnByTicket(
    strPlayer,
    strMapKey
)

参数
strPlayer

string

 
玩家角色的GUID

strMapKey

string

 
副本地图的索引名（KeyName）

返回值
string

 
副本地图存在则返回副本地图的GUID

副本地图不存在则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dgn_guid = lualib:Player_GetDgnByTicket(player,"雪域秘境") --获取副本地图的GUID
lualib:Warn("副本的GUID为"..dgn_guid)

--此示例代码运行成功如下图所示。

Player_GetDgnByTicket.png
<上一篇:让玩家进入副本地图下一篇:判断玩家是否拥有副本地图的门票>
Player_HasDgnTicket
判断玩家是否拥有副本地图的门票

更新时间：2023-04-18 00:00:00
此函数判断玩家是否拥有指定副本地图的门票。

语法
Luacopy 复制
lualib:Player_HasDgnTicket(
    strPlayer,
    strMap
)

参数
strPlayer

string

 
玩家角色的GUID

strMap

string

 
副本地图的索引名（KeyName）

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--判断玩家是否拥有指定副本地图的门票
if lualib:Player_HasDgnTicket(player, "雪域秘境") then
    lualib:Warn("验证门票存在")
    lualib:Player_EnterDgn(player, "雪域秘境", 27, 40, 5) --让玩家进入副本地图
else
    lualib:Warn("验证门票不存在")
end

--当玩家拥有指定副本地图的门票时，玩家可进入指定副本地图，同时游戏日志中还会打印相关内容。

Player_HasDgnTicket_2.png

--当玩家没有指定副本地图的门票时，玩家无法进入指定副本地图，游戏日志中还会打印相关内容。

Player_HasDgnTicket.png
<上一篇:获取副本地图的GUID下一篇:给玩家设置指定副本地图的门票>
Player_SetDgnTicket
给玩家设置指定副本地图的门票

更新时间：2023-04-18 00:00:00
此函数作用为给玩家设置指定副本地图的门票。

语法
Luacopy 复制
lualib:Player_SetDgnTicket(
    strPlayer,
    strMap
)

参数
strPlayer

string

 
玩家角色的GUID

strMap

string

 
副本地图的GUID

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dgn_guid = lualib:Map_CreateDgn("雪域秘境", true, 3 * 60) --创建副本地图
lualib:Warn("副本的GUID为"..dgn_guid)
lualib:Player_SetDgnTicket(player, dgn_guid) --给玩家设置指定副本地图的门票
if lualib:Player_EnterDgn(player, "雪域秘境", 27, 40, 5)  then --让玩家进入副本地图
    lualib:Warn("进入成功") 
end

--此示例代码运行成功后，玩家进入指定副本地图，同时游戏日志中还会打印相关内容。

Player_EnterDgn.png
<上一篇:判断玩家是否拥有副本地图的门票
AddFamilyMember
指定玩家加入行会

更新时间：2023-04-18 00:00:00
此函数让指定玩家加入行会。

语法
Luacopy 复制
lualib:AddFamilyMember(
    player_guid,
    FamilyName,
    func,
    param
)

参数
player_guid

string

 
玩家角色的GUID

FamilyName

string

 
行会的名字

func

string

 
玩家加入行会后执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：callbackfunc(err, player_guid, family_name, param)

err(int)：错误码（0表示成功，其他数值表示各种错误）

player_guid(string)：玩家角色的GUID

family_name(string)：行会的名字

param(string)：自定义参数

param

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功表示请求已发出由中央服务器处理，具体是否操作成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    lualib:AddFamilyMember(player, "1234", "AddFamilyMemberCallBack", "1")
end

function AddFamilyMemberCallBack(err, player_guid, family_name, param)
    if tonumber(err) == 0 then
        lualib:Warn(family_name.."行会添加成员"..lualib:Guid2Name(player_guid).."成功！")
    else
        lualib:Warn(family_name.."行会添加成员"..lualib:Guid2Name(player_guid).."失败！")
    end
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

AddFamilyMember.png

AddFamilyMember_2.png
下一篇:添加行会消息>
AddFamilyMsg
添加行会消息

更新时间：2023-04-18 00:00:00
此函数作用为添加行会消息。

使用此接口添加的行会消息会存储在中心服务器中，可使用接口lualib:GetFamilyInfo获取到行会消息（message）。

语法
Luacopy 复制
lualib:AddFamilyMsg(
    family_name,
    msg
)
参数
family_name

string

 
行会的名字

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
lualib:AddTrigger("0", lua_trigger_family_member_ntf, "on_family_member_ntf")

function on_family_member_ntf(family_guid, family_name, player_guid, opt, player_name)
    if opt == 1 then
        lualib:AddFamilyMsg(family_name, player_name.."加入本行会") --添加玩家加入行会时发送的行会消息
    elseif opt == 2 then
        lualib:AddFamilyMsg(family_name, player_name.."离开本行会") --添加玩家离开行会时发送的行会消息
    elseif opt == 3 then
        lualib:AddFamilyMsg(family_name, player_name.."的新封号为"..lualib:GetFamilyTitle(player_guid)) --添加玩家封号被修改时发送的消息
    end
end

--此示例代码运行成功如下图所示。

AddFamilyMsg.png
<上一篇:指定玩家加入行会下一篇:修改行会公告内容>
ChangeFamilyNotice
修改行会公告内容

更新时间：2023-04-18 00:00:00
此函数作用为修改行会公告内容。

语法
Luacopy 复制
lualib:ChangeFamilyNotice(
    family_name,
    notice
)

参数
family_name

string

 
行会的名字

notice

string

 
行会公告内容

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功表示请求已发出由中央服务器处理，具体是否操作成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ChangeFamilyNotice("三年二班","三年二班的公告信息")

--此示例代码运行成功如下图所示。

ChangeFamilyNotice.png
<上一篇:添加行会消息下一篇:指定行会中玩家的封号>
ChangeFamilyTitle
指定行会中玩家的封号

更新时间：2023-04-18 00:00:00
此函数作用为指定行会中玩家的封号。

note_icon 备注
若玩家的封号为会长，则无法使用此接口修改其封号。

语法
Luacopy 复制
lualib:ChangeFamilyTitle(
    player_guid,
    FamilyName,
    titile_id,
    func,
    param
)

参数
player_guid

string

 
玩家角色的GUID

FamilyName

string

 
行会的名字

titile_id

uint8

 
封号ID

0行会成员

1会长

2副会长

3行会精英

其他数值自定义封号

func

string

 
指定玩家封号后执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：callbackfunc(err, player_guid, family_name, param)

err(int)：错误码（0表示成功，其他数值表示各种错误）

player_guid(string)：玩家角色的GUID

family_name(string)：行会的名字

param(string)：自定义参数

param

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功表示请求已发出由中央服务器处理，具体是否操作成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    lualib:ChangeFamilyTitle(player, "1234", 2, "ChangeFamilyTitleCallBack", "123")
end

function ChangeFamilyTitleCallBack(err, player_guid, family_name, param)
    if tonumber(err) == 0 then
        lualib:Warn(family_name.."行会成员"..player_guid.."封号修改成功！")
    else
        lualib:Warn(family_name.."行会成员"..player_guid.."封号修改失败！")
    end
end

--此示例代码运行成功如下图所示。

ChangeFamilyTitle.png
<上一篇:修改行会公告内容下一篇:创建行会>
CreateFamily
创建行会

更新时间：2023-04-18 00:00:00
此函数作用为创建行会。

当玩家未拥有行会时，可使用此接口创建行会，同时程序会判断行会名字是否重复；

当玩家已拥有行会时，该接口无法创建行会。

语法
Luacopy 复制
lualib:CreateFamily(
    strPlayer,
    strFamilyName
)

参数
strPlayer

string

 
玩家角色的GUID

strFamilyName

string

 
行会的名字

返回值
int32

 
0创建成功

-1创建失败

note_icon 备注
若检查到行会名字中有违禁词或者行会名字长度（长度上限为20个字符）错误，则会返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:CreateFamily(player, "666123") ~= 0 then
    lualib:Warn("失败")
else 
    lualib:Warn("成功")
end

--当前玩家无行会时，此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

CreateFamily.png

CreateFamily_2.png
<上一篇:指定行会中玩家的封号下一篇:删除行会中的指定玩家>
DelFamilyMember
删除行会中的指定玩家

更新时间：2023-04-18 00:00:00
此函数作用为删除行会中的指定玩家。

语法
Luacopy 复制
lualib:DelFamilyMember(
    player_guid,
    FamilyName,
    func,
    param
)

参数
player_guid

string

 
玩家角色的GUID

FamilyName

string

 
行会的名字

func

string

 
删除指定玩家后执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：callbackfunc(err, player_guid, family_name, param)

err(int)：错误码（0表示成功，其他数值表示各种错误）

player_guid(string)：玩家角色的GUID

family_name(string)：行会的名字

param(string)：自定义参数

param

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true删除成功

false删除失败

note_icon 备注
该函数为异步函数，返回成功表示请求已发出由中央服务器处理，具体是否操作成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    lualib:DelFamilyMember(player, "wcc1597", "DelFamilyMemberCallBack", "")
end

function DelFamilyMemberCallBack(err, player_guid, family_name)
    if tonumber(err) == 0 then
        lualib:Warn(family_name.."行会删除成员"..player_guid.."成功！")
    else
        lualib:Warn(family_name.."行会删除成员"..player_guid.."失败！")
    end
end

--此示例代码运行成功如下图所示。

DelFamilyMember.png
<上一篇:创建行会下一篇:解散行会>
DestroyFamily
解散行会

更新时间：2023-04-18 00:00:00
此函数作用为解散行会。

语法
Luacopy 复制
lualib:DestroyFamily(
    family_name
)

参数
family_name

string

 
行会的名字

返回值
bool

 
true解散成功

false解散失败

note_icon 备注
该函数为异步函数，返回成功表示请求已发出由中央服务器处理，具体是否操作成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:DestroyFamily("wcc546") then
    lualib:Warn("解散成功")
else
    lualib:Warn("解散失败")
end

--此示例代码运行成功如下图所示。

DestroyFamily.png
<上一篇:删除行会中的指定玩家下一篇:行会改名>
Family_ChangeName
行会改名

更新时间：2024-04-03 00:00:00
此函数用于行会改名。

note_icon 备注
接口只投递改名事件，结果将在回调中给出。

语法
Luacopy 复制
lualib:Family_ChangeName(
    old_name,
    new_name,
    callback,
    param
)
参数
old_name

string

 
要改名的行会名

new_name

string

 
新的行会名字

callback

string

 
回调函数名

回调函数格式： ChangeCallback(family_guid, dwError, familyName, strParam)

family_guid(int)：行会GUID

dwError(int)：错误码

familyName(string)：行会名

strParam(string)：自定义参数

param

string

 
自定义参数

由脚本作者自行维护，方便上下文切换，回调时按原样传回。

返回值
bool

 
true行会改名成功

false行会改名失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    if lualib:Family_ChangeName("红尘客栈","红模仿","ChangeCallback","123") then
        lualib:Warn("改名请求已经提交")
    else
        lualib:Warn("改名请求失败")
    end
end
function ChangeCallback(family_guid,dwError,familyName,strParam)
    lualib:Warn("行会改名回调成功："..family_guid.."  "..dwError.."  "..familyName.."  "..strParam)
end

--此示例代码运行成功后，打开行会信息界面进行查看修改后的行会名字。
<上一篇:解散行会下一篇:获取服务器上所有行会的名称列表>
GetAllFamilys
获取服务器上所有行会的名称列表

更新时间：2023-04-18 00:00:00
此函数获取服务器上所有行会的名称列表。

语法
Luacopy 复制
lualib:GetAllFamilys()

参数
无

返回值
table

 
行会名称列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local table_f = lualib:GetAllFamilys()
for i=1,#table_f do
    lualib:Warn("第"..i.."个行会的名称："..table_f[i])
end

--此示例代码运行成功如下图所示。

GetAllFamilys.png
<上一篇:行会改名下一篇:获取行会的GUID>
GetFamilyByName
获取行会的GUID

更新时间：2023-04-18 00:00:00
此函数根据行会的名字获取行会的GUID。

语法
Luacopy 复制
lualib:GetFamilyByName(
    strFamilyName
)

参数
strFamilyName

string

 
行会的名字

返回值
string

 
行会存在则返回行会的GUID

行会不存在则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local name = lualib:GetFamilyName(player) --获取玩家所属行会的名字
local guid = lualib:GetFamilyByName(name) --获取该行会的GUID
lualib:Warn("玩家所属行会的GUID为："..guid)

--此示例代码运行成功如下图所示。

GetFamilyByName.png
<上一篇:获取服务器上所有行会的名称列表下一篇:获取行会占领的城堡名称>
GetFamilyCastles
获取行会占领的城堡名称

更新时间：2023-04-18 00:00:00
此函数获取行会占领的城堡名称。

语法
Luacopy 复制
lualib:GetFamilyCastles(
    strFamily
)

参数
strFamily

string

 
行会的GUID

返回值
string

 
若行会占领了城堡，则返回行会占领城堡的名称（多个城堡名称用“&”分隔）；

若行会没有占领城堡，则返回空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetCastleOwnFamily("神歌城", "1234")
local castles = lualib:GetFamilyCastles(lualib:GetFamilyByName("1234"))
if castles ~= "" then
     lualib:Warn("占领了"..castles)
else
    lualib:Warn("没占领")
end

--此示例代码运行成功如下图所示。

GetFamilyCastles.png
<上一篇:获取行会的GUID下一篇:根据行会名称获取行会详细信息>
GetFamilyInfo
根据行会名称获取行会详细信息

更新时间：2023-04-18 00:00:00
此函数根据行会名字获取行会详细信息。

caution_icon注意
此函数为异步函数，具体结果在回调函数中获取。

语法
Luacopy 复制
lualib:GetFamilyInfo(
    family_name,
    func,
    params
)
参数
family_name

string

 
行会的名字

func

string

 
回调函数名

回调函数格式：func(family, info, params)

family(string)：行会的名字

info(string)：行会详细信息

params(string)：预设的回调函数参数

note_icon 备注
行会详细信息是JSON形式的字符串，具体字段及其含义如下所示：

行会公告（notice）

行会消息（message）

行会封号（titles）：

封号ID（id）

封号名称（title）

行会成员（member）：

玩家GUID（guid）

玩家名称（name）

玩家等级（level）

玩家职业（job）（1战士；2法师；3术士）

行会GUID（family_guid）

封号ID（title_id）

当前贡献度（cur_ctrb）

累计贡献度（totle_ctrb）

杀敌人数（kills）

入会时间对应的时间戳（join_time）

最后一次上线时间对应的时间戳（login_time）

是否在线（is_online）（0不在线；1在线）

敌对行会（enemy）：

行会GUID（guid）

行会名称（name）

联盟行会（ally）：

行会GUID（guid）

行会名称（name）

入会申请列表（join）：

玩家GUID（guid）

玩家名称（name）

玩家等级（level）

玩家职业（job）（1战士；2法师；3术士）

行会基本信息（baseinfo）：

行会GUID（guid）

行会名称（name）

行会人数（num）

行会创建时间对应的时间戳（time）

具体示例如下所示：

JOSNcopy 复制
{
    "notice": "这里是行会公告",
    "message": "2020-12-11 23:01:01 【玩家1】加入了行会。\n2020-12-11 23:02:49 【玩家2】加入了行会。", 
    "titles": [
        {
            "id": 0,
            "title": "行会成员"
        },
        {
            "id": 1,
            "title": "会长"
        },
        {
            "id": 2,
            "title": "副会长"
        },
        {
            "id": 3,
            "title": "行会精英"
        }
    ],
    "member": [
        {
            "guid": 564635371149729,
            "name": "玩家1",
            "level": 485,
            "job": 1, 
            "family_guid": 8071015167619076308, 
            "title_id": 0, 
            "cur_ctrb": 0,
            "totle_ctrb": 0, 
            "kills": 0,
            "join_time": 1607776238,
            "login_time": 1607754876,
            "is_online": 0
        },
        {
            "guid": 564635371149730,
            "name": "玩家2",
            "level": 678,
            "job": 1,
            "family_guid": 8071015167619076308,
            "title_id": 0,
            "cur_ctrb": 0,
            "totle_ctrb": 0,
            "kills": 0,
            "join_time": 1607776237,
            "login_time": 1607852009,
            "is_online": 0
        }
    ],
    "enemy": [
        {
            "guid": 8071015167619076309, 
            "name": "行会2" 
        },
        {
            "guid": 8071015167619076310,
            "name": "行会3"
        }
    ],
    "ally": [
        {
            "guid": 8071015167619076311, 
            "name": "行会4"
        },
        {
            "guid": 8071015167619076312,
            "name": "行会5"
        }
    ],
    "join": [
        {
            "guid": 564635371149731, 
            "name": "玩家3", 
            "level": 123, 
            "job": 1 
        },
        {
            "guid": 564635371149732,
            "name": "玩家4",
            "level": 456,
            "job": 1
        }
    ],
    "baseinfo": {
        "guid": 8071015167619076308, 
        "name": "行会1", 
        "num": 2, 
        "time": 1607698842 
    }
}
params

string

 
预设的回调函数参数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GetFamilyInfo("zyl", "getDetailFamilyInfo", "") --根据行会名获取行会详细信息

function getDetailFamilyInfo(family,info,params)
    lualib:Warn("family = "..family)
    lualib:Warn("info = "..serialize(json.decode(info)))
end

--此示例代码运行成功如下图所示。

GetFamilyInfo.png
<上一篇:获取行会占领的城堡名称下一篇:将行会列表发送到客户端>
GetFamilyJoinList
将行会列表发送到客户端

更新时间：2023-04-18 00:00:00
此函数作用为将行会列表发送到客户端并查看。

语法
Luacopy 复制
lualib:GetFamilyJoinList(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
0发送成功

-1发送失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GetFamilyJoinList(player)

--此示例代码运行成功后，玩家成功打开行会列表界面进行查看。
<上一篇:根据行会名称获取行会详细信息下一篇:获取行会会长的GUID>
GetFamilyLeader
获取行会会长的GUID

更新时间：2023-04-18 00:00:00
此函数获取行会会长的GUID。

语法
Luacopy 复制
lualib:GetFamilyLeader(
    family
)

参数
family

string

 
行会的名字或者行会的GUID

返回值
string

 
行会存在则返回会长玩家的GUID

行会不存在则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local name = lualib:GetFamilyName(player) --获取玩家所属行会的名字
local player_guid = lualib:GetFamilyLeader(name) --获取该行会会长的GUID
lualib:Warn("玩家所属行会的会长的GUID为："..player_guid)

--此示例代码运行成功如下图所示。

GetFamilyLeader.png
<上一篇:将行会列表发送到客户端下一篇:获取行会成员指定类型的信息>
GetFamilyMemberAttr
获取行会成员指定类型的信息

更新时间：2023-04-18 00:00:00
此函数获取行会成员指定类型的信息。

语法
Luacopy 复制
lualib:GetFamilyMemberAttr(
    player_guid,
    attr_type
)

参数
player_guid

string

 
角色的GUID

attr_type

uint8

 
信息类型

1封号

2贡献度

3累计贡献度

4加入时间

返回值
uint32

 指定信息对应的数值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local time = lualib:GetFamilyMemberAttr(player,4)
lualib:Warn("玩家加入行会时间为"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", time))

--此示例代码运行成功如下图所示。

GetFamilyMemberAttr.png
<上一篇:获取行会会长的GUID下一篇:获取玩家所属行会中指定封号的成员列表>
GetFamilyMembersByTitleId
获取玩家所属行会中指定封号的成员列表

更新时间：2023-04-18 00:00:00
此函数获取玩家所属行会中指定封号的成员的GUID列表。

语法
Luacopy 复制
lualib:GetFamilyMembersByTitleId(
    family,
    title_id
)

参数
family

string

 
行会的GUID

title_id

uint8

 
封号ID

0行会成员

1会长

2副会长

3行会精英

其他数值自定义封号

返回值
table

 
行会成员GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local table = lualib:GetFamilyMembersByTitleId("1234",0)
lualib:Warn("行会成员列表："..serialize(table))

--此示例代码运行成功如下图所示。

GetFamilyMembersByTitleId.png
<上一篇:获取行会成员指定类型的信息下一篇:获取玩家所属行会的成员列表>
GetFamilyMembers
获取玩家所属行会的成员列表

更新时间：2023-04-18 00:00:00
此函数获取玩家所属行会的成员的GUID列表。

语法
Luacopy 复制
lualib:GetFamilyMembers(
    strGuid,
    bIsOnline
)

参数
strGuid

string

 
玩家角色的GUID或者行会的GUID

bIsOnline

bool

 
是否只获取行会在线成员的GUID列表

true是（仅获取行会在线成员的GUID列表）

false否（获取行会所有成员的GUID列表）

返回值
table

 
行会成员的GUID列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local table1 =lualib:GetFamilyMembers(player,true)
local table2= lualib:GetFamilyMembers(player,false)
lualib:Warn("行会在线成员的GUID列表："..serialize(table1))
lualib:Warn("行会所有成员的GUID列表："..serialize(table2))

--此示例代码运行成功如下图所示。

GetFamilyMembers.png
<上一篇:获取玩家所属行会中指定封号的成员列表下一篇:获取玩家所属行会的名字>
GetFamilyName
获取玩家所属行会的名字

更新时间：2023-04-18 00:00:00
此函数获取玩家所属行会的名字。

语法
Luacopy 复制
lualib:GetFamilyName(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
若玩家已加入行会，则返回玩家所属行会的名字；

若玩家没有加入行会，则返回空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local name = lualib:GetFamilyName(player) --获取玩家所属行会的名字
local guid = lualib:GetFamilyByName(name) --获取该行会的GUID
lualib:Warn("玩家所属行会的GUID为："..guid)

--此示例代码运行成功如下图所示。

GetFamilyByName.png
<上一篇:获取玩家所属行会的成员列表下一篇:获取玩家的行会封号>
GetFamilyTitle
获取玩家的行会封号

更新时间：2023-04-18 00:00:00
此函数获取玩家的行会封号。

语法
Luacopy 复制
lualib:GetFamilyTitle(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
若玩家有行会封号，则返回玩家的行会封号；

若玩家没有行会封号，则返回空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local title = lualib:GetFamilyTitle(player)
if title == "" then
    lualib:Warn("无封号")
else
    lualib:Warn("封号为"..title)
end

--此示例代码运行成功如下图所示。

GetFamilyTitle.png
<上一篇:获取玩家所属行会的名字下一篇:获取行会作战列表>
GetRunningFamilyWar
获取行会作战列表

更新时间：2023-04-18 00:00:00
此函数获取正在与玩家所属行会作战的行会列表。

语法
Luacopy 复制
lualib:GetRunningFamilyWar(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
正在与玩家所属行会作战的行会列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local wars = lualib:GetRunningFamilyWar(player)
if wars == nil then return end
for k in pairs(wars) do
    lualib:SysMsg_SendPromptMsg(player, "行会正在与"..wars[k].."行会进行战争！")
end

--此示例代码运行成功如下图所示。

GetRunningFamilyWar.png
<上一篇:获取玩家的行会封号下一篇:获取玩家所属行会的GUID>
GuildGuid
获取玩家所属行会的GUID

更新时间：2023-04-18 00:00:00
此函数获取玩家所属行会的GUID。

语法
Luacopy 复制
lualib:GuildGuid(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
获取成功则返回玩家所属行会的GUID

获取失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ranges = {0, 55, 165, 100, 100}
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local players = {}
local players = lualib:Map_GetRegionPlayersEx(map, ranges, true) --获取当前地图指定区域上的玩家GUID列表
local familyGUID = lualib:GuildGuid(player) --获取当前玩家所属行会的GUID
local family_name = lualib:Guid2Name(familyGUID) --根据行会的GUID获取行会的名称
for i = 2 ,#players do
    lualib:Warn("玩家"..i.."的名字为"..lualib:Guid2Name(players[i]))
    --判断附近玩家是否与当前玩家在同一行会
    if lualib:IsInFamily(players[i], family_name) then
        lualib:Warn("玩家"..i.."与当前玩家在同一行会")
    else
        lualib:Warn("玩家"..i.."与当前玩家不在同一行会")
    end
    lualib:Warn("----------")
end

--此示例代码运行成功如下图所示。

IsInFamily.png
<上一篇:获取行会作战列表下一篇:判断两个行会是否处于战争状态>
HasFamilyWar
判断两个行会是否处于战争状态

更新时间：2023-04-18 00:00:00
此函数判断两个行会是否处于战争状态。

语法
Luacopy 复制
lualib:HasFamilyWar(
    strFamilyName1,
    strFamilyName2
)

参数
strFamilyName1

string

 
行会1的名字

strFamilyName2

string

 
行会2的名字

返回值
bool

 
true两个行会处于战争状态

false两个行会处于非战争状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:HasFamilyWar("wcc123", "wcc321") then
    lualib:Warn("行会1与行会2正在交战")
else
    lualib:Warn("行会1与行会2没有交战")
end

--此示例代码运行成功如下图所示（行会wcc123和行会wcc321没有交战）。

HasFamilyWar.png
<上一篇:获取玩家所属行会的GUID下一篇:判断指定行会是否存在>
HasFamily
判断指定行会是否存在

更新时间：2023-04-18 00:00:00
此函数判断指定行会是否存在。

语法
Luacopy 复制
lualib:HasFamily(
    strFamilyName
)

参数
strFamilyName

string

 
行会的名字

返回值
bool

 
true指定行会存在

false指定行会不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:HasFamily("1234") then
    lualib:Warn("指定行会存在")
else
    lualib:Warn("指定行会不存在")
end

--此示例代码运行成功如下图所示。

HasFamily.png
<上一篇:判断两个行会是否处于战争状态下一篇:根据行会的GUID判断是否为联盟行会>
IsFamilyAllyByGuid
根据行会的GUID判断是否为联盟行会

更新时间：2023-04-18 00:00:00
此函数根据行会的GUID判断两个行会是否为联盟行会。

语法
Luacopy 复制
lualib:IsFamilyAllyByGuid(
    strFamilyGuid1,
    strFamilyGuid2
)
参数
strFamilyGuid1

string

 
行会1的GUID

strFamilyGuid2

string

 
行会2的GUID

返回值
bool

 
true是联盟行会

false不是联盟行会

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据行会名称获取行会的GUID并判断两个行会是否为联盟行会。
if lualib:IsFamilyAllyByGuid(lualib:GetFamilyByName("zyl"), lualib:GetFamilyByName("zyl2")) then
    lualib:Warn("zyl 和 zyl2 是联盟")
else
    lualib:Warn("zyl 和 zyl2 不是联盟")
end
--行会zyl和行会zyl2未联盟时，此示例代码运行成功如下图所示。

IsFamilyAllyByGuid.png
--行会zyl和行会zyl2联盟后，此示例代码运行成功如下图所示。

IsFamilyAllyByGuid_2.png
<上一篇:判断指定行会是否存在下一篇:根据行会名判断是否为联盟行会>
IsFamilyAllyByName
根据行会名判断是否为联盟行会

更新时间：2023-04-18 00:00:00
此函数根据行会名判断两个行会是否为联盟行会。

语法
Luacopy 复制
lualib:IsFamilyAllyByName(
    strFamilyName1,
    strFamilyName2
)
参数
strFamilyName1

string

 
行会1的名字

strFamilyName2

string

 
行会2的名字

返回值
bool

 
true是联盟行会

false不是联盟行会

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据行会名称判断两个行会是否为联盟行会。
if lualib:IsFamilyAllyByName("zyl", "zyl2") then
    lualib:Warn("zyl 和 zyl2 是联盟")
else
    lualib:Warn("zyl 和 zyl2 不是联盟")
end
--行会zyl和行会zyl2未联盟时，此示例代码运行成功如下图所示。

IsFamilyAllyByGuid.png
--行会zyl和行会zyl2联盟后，此示例代码运行成功如下图所示。

IsFamilyAllyByGuid_2.png
<上一篇:根据行会的GUID判断是否为联盟行会下一篇:判断玩家所属行会与指定行会是否为联盟行会>
IsFamilyAlly
判断玩家所属行会与指定行会是否为联盟行会

更新时间：2023-04-18 00:00:00
此函数判断玩家所属的行会与指定的行会是否为联盟行会。

语法
Luacopy 复制
lualib:IsFamilyAlly(
    strPlayer,
    strFamilyName
)

参数
strPlayer

string

 
玩家角色的GUID

strFamilyName

string

 
要判断的行会的名字

返回值
bool

 
true玩家所属的行会与指定的行会是联盟行会

false玩家所属的行会与指定的行会不是联盟行会

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:IsFamilyAlly(player, "666") then
    lualib:Warn("当前玩家所属行会与行会 666 是联盟")
else
    lualib:Warn("当前玩家所属行会与行会 666 不是联盟")
end
--当前玩家所属行会与行会666未联盟时，此示例代码运行成功如下图所示。

IsFamilyAlly_2.png
--当前玩家所属行会与行会666联盟后，此示例代码运行成功如下图所示。

IsFamilyAlly.png
<上一篇:根据行会名判断是否为联盟行会下一篇:根据名字判断公会1与公会2是否为敌对>
IsFamilyEnemyByName
根据名字判断公会1与公会2是否为敌对

更新时间：2025-01-07 00:00:00
此函数根据名字判断公会1与公会2是否为敌对。

语法
Luacopy 复制
lualib:IsFamilyEnemyByName(
    strFamilyName1,
    strFamilyName2
)
参数
strFamilyName1

string

 
工会1的名字

strFamilyName2

string

 
工会2的名字

返回值
bool

 
true敌对

false不敌对

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local ret = lualib:SetFamilyRelation("行会1", "行会2",2, "set_family_result","abc") 
    if ret ~= "" then 
       lualib:SysWarnMsg(player, "设置行会关系出错:"..ret) 
    end
end

function set_family_result(family_name1, family_name2, opt, error, param) 
    if lualib:IsFamilyEnemyByName(family_name1,family_name2) then
        lualib:Warn("行会间已敌对")
    else
        lualib:Warn("行会间未敌对")
    end
end

--执行示例代码，和无关系的行会输出“行会间未敌对”，敌对关系行会输出“行会间已敌对”。
<上一篇:判断玩家所属行会与指定行会是否为联盟行会下一篇:判断玩家是否在指定的行会中>
IsInFamily
判断玩家是否在指定的行会中

更新时间：2023-04-18 00:00:00
此函数判断玩家是否在指定的行会中。

语法
Luacopy 复制
lualib:IsInFamily(
    strPlayer,
    strFamilyName
)

参数
strPlayer

string

 
玩家角色的GUID

strFamilyName

string

 
行会的名字

返回值
bool

 
true玩家在指定行会中

false玩家不在指定行会中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local ranges = {0, 55, 165, 100, 100}
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local players = {}
local players = lualib:Map_GetRegionPlayersEx(map, ranges, true) --获取当前地图指定区域上的玩家GUID列表
local familyGUID = lualib:GuildGuid(player) --获取当前玩家所属行会的GUID
local family_name = lualib:Guid2Name(familyGUID) --根据行会的GUID获取行会的名称
for i = 2 ,#players do
    lualib:Warn("玩家"..i.."的名字为"..lualib:Guid2Name(players[i]))
    --判断附近玩家是否与当前玩家在同一行会
    if lualib:IsInFamily(players[i], family_name) then
        lualib:Warn("玩家"..i.."与当前玩家在同一行会")
    else
        lualib:Warn("玩家"..i.."与当前玩家不在同一行会")
    end
    lualib:Warn("----------")
end

--此示例代码运行成功如下图所示。

IsInFamily.png
<上一篇:根据名字判断公会1与公会2是否为敌对下一篇:将作战行会列表通知给玩家>
NotifyRunningFamilyWar
将作战行会列表通知给玩家

更新时间：2023-04-18 00:00:00
此函数将正在与玩家行会作战的行会列表通知给玩家。

语法
Luacopy 复制
lualib:NotifyRunningFamilyWar(
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
--以system.lua脚本为例。
--……省略部分代码

function notify_family_war(player)

--……省略部分代码

     lualib:NotifyRunningFamilyWar(player) --将作战行会列表通知给玩家
end


--……省略部分代码

--此示例代码运行成功如下图所示。

NotifyRunningFamilyWar.png
<上一篇:判断玩家是否在指定的行会中下一篇:获取玩家的行会贡献度>
Player_GetGuildCtrb
获取玩家的行会贡献度

更新时间：2023-04-18 00:00:00
此函数获取玩家的行会贡献度。

语法
Luacopy 复制
lualib:Player_GetGuildCtrb(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
uint32

 
获取成功则返回指定玩家的行会贡献度

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("调整前的贡献度："..lualib:Player_GetGuildCtrb(player))
lualib:Player_ReCalGuildCtrb(player,10)
lualib:Warn("调整后的贡献度："..lualib:Player_GetGuildCtrb(player))

--此示例代码运行成功如下图所示。

Player_GetGuildCtrb.png
<上一篇:将作战行会列表通知给玩家下一篇:判断玩家是否会长>
Player_IsGuildLeader
判断玩家是否会长

更新时间：2023-04-18 00:00:00
此函数判断玩家是否是会长。

语法
Luacopy 复制
lualib:Player_IsGuildLeader(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家是会长

false指定玩家不是会长

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Player_IsGuildLeader(player) then
    lualib:Warn("是会长")
else
    lualib:Warn("不是会长")
end

--此示例代码运行成功如下图所示。

Player_IsGuildLeader.png
<上一篇:获取玩家的行会贡献度下一篇:判断玩家是否为副会长>
Player_IsViceGuildLeader
判断玩家是否为副会长

更新时间：2023-04-18 00:00:00
此函数判断指定玩家是否为副会长。

语法
Luacopy 复制
lualib:Player_IsViceGuildLeader(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true指定玩家是副会长

false指定玩家不是副会长

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。
Player_IsViceGuildLeader.png
function main(npc,player)
    if lualib:Player_IsViceGuildLeader(player) then
        lualib:Warn("是副会长")
    else
        lualib:Warn("不是副会长")
    end
end

--此示例代码运行成功如下图所示。

Player_IsViceGuildLeader_2.png
<上一篇:判断玩家是否会长下一篇:玩家发起加入行会请求>
Player_JoinFamily
玩家发起加入行会请求

更新时间：2023-04-18 00:00:00
此函数作用为玩家发起加入行会请求。

若玩家已加入行会，则执行此接口时会弹出“您已经有帮会了”的提示框，如下图所示。

Player_JoinFamily_3.png
语法
Luacopy 复制
lualib:Player_JoinFamily(
    player_guid,
    family_guid
)
参数
player_guid

string

 
玩家角色的GUID

family_guid

string

 
行会的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

Player_JoinFamily.png
lualib:Player_JoinFamily(player, lualib:GetFamilyByName("zyl2")) --玩家发起加入行会“zyl2”的请求

--此示例代码运行成功如下图所示，该行会会收到当前玩家的入会请求。

Player_JoinFamily_2.png
<上一篇:判断玩家是否为副会长下一篇:玩家发起离开行会请求>
Player_LeaveFamily
玩家发起离开行会请求

更新时间：2023-04-18 00:00:00
此函数作用为玩家发起离开行会请求。

当发起离开行会请求的角色为行会会长时，执行此接口会弹出“帮会会长不能脱离行会”的提示框，如下图所示。

Player_LeaveFamily_2.png
语法
Luacopy 复制
lualib:Player_LeaveFamily(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_LeaveFamily(player)

--此示例代码运行成功如下图所示。

Player_LeaveFamily.png
<上一篇:玩家发起加入行会请求下一篇:调整玩家的行会贡献度>
Player_ReCalGuildCtrb
调整玩家的行会贡献度

更新时间：2023-04-18 00:00:00
此函数作用为调整玩家的行会贡献度。

语法
Luacopy 复制
lualib:Player_ReCalGuildCtrb(
    strPlayer,
    iValue
)

参数
strPlayer

string

 
玩家角色的GUID

iValue

int32

 
正值给玩家增加的贡献度

负值给玩家减少的贡献度

返回值
bool

 
true调整成功

false调整失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("调整前的贡献度："..lualib:Player_GetGuildCtrb(player))
lualib:Player_ReCalGuildCtrb(player,10)
lualib:Warn("调整后的贡献度："..lualib:Player_GetGuildCtrb(player))

--此示例代码运行成功如下图所示。

Player_GetGuildCtrb.png
<上一篇:玩家发起离开行会请求下一篇:设置行会默认封号的名称>
SetFamilyDefalutTitleName
设置行会默认封号的名称

更新时间：2023-04-27 00:00:00
此函数设置行会默认封号的名称。

语法
Luacopy 复制
lualib:SetFamilyDefalutTitleName(
    title_id,
    title_name
)
参数
title_id

uint8

 
封号ID

0行会成员

1会长

2副会长

3精英

title_name

string

 
封号名称

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetFamilyDefalutTitleName(1,"统领者") --设置默认封号“会长”的名称为“统领者”
lualib:SetFamilyDefalutTitleName(0,"小兵") --设置默认封号“行会成员”的名称为“小兵”

--此示例代码运行前，行会默认封号如下图所示。

SetFamilyDefalutTitleName.png

--此示例代码运行后，行会默认封号如下图所示。

SetFamilyDefalutTitleName_2.png
<上一篇:调整玩家的行会贡献度下一篇:批量设置行会列表中的各个行会的关系>
SetFamilyListRelation
批量设置行会列表中的各个行会的关系

更新时间：2023-04-18 00:00:00
此函数作用为批量设置行会列表中的各个行会的关系。

将联盟行会设置为敌对行会或者将敌对行会设置为联盟行会前，需要先解除行会之间的关系，否则会设置失败。

语法
Luacopy 复制
lualib:SetFamilyListRelation(
    family_list,
    opt,
    call_back_func,
    param
)
参数
family_list

table

 
行会名字列表

opt

uint8

 
执行的操作

1联盟

2敌对

3解除

其它数值无效

call_back_func

string

 
操作完成后回调的脚本函数名

回调函数格式：Callback(opt, error, param)

opt(uint8)：执行的操作（1代表联盟，2代表敌对，3代表解除）

error(string)：错误信息（回调函数调用成功则会返回空字符串（""），调用失败则会返回“行会批量操作失败”的文本内容）

param(string)：预设的回调函数参数

param

string

 
预设的回调函数参数

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
若有部分行会设置失败，其具体原因会被记录在日志中以便查询。

caution_icon注意
调用此接口后，无论设置关系成功或者失败，都会回调参数call_back_func中设置的函数。

该函数为异步函数，返回成功只代表请求投递成功，具体是否设置成功以回调函数中的实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local family_table = lualib:GetAllFamilys() --获取服务器上所有行会的名字列表
    lualib:Warn("一共有"..#family_table.."个行会")
    --将所有行会设为互相敌对的关系
    if lualib:SetFamilyListRelation(family_table,2,"set_family_result","测试") then
        lualib:SysWarnMsg(player,"执行成功")
    else
        lualib:SysWarnMsg(player,"执行失败")
    end
end

function set_family_result(opt,error,param)
    lualib:Warn("opt ="..opt)
    lualib:Warn("error ="..error)
    lualib:Warn("param = "..param)
end

--此示例代码运行成功如下图所示。

SetFamilyListRelation.png

SetFamilyListRelation_2.png
<上一篇:设置行会默认封号的名称下一篇:设置行会最大成员数>
SetFamilyMaxMember
设置行会最大成员数

更新时间：2023-04-18 00:00:00
此函数设置行会最大成员数。

note_icon 备注
设置行会的最大人数不能小于当前的行会人数，设置后会通知客户端修改最大人数。

语法
Luacopy 复制
lualib:SetFamilyMaxMember(
    family,
    max_num
)

参数
family

string

 
行会的名字或者行会的GUID

max_num

int32

 
行会的最大人数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local family = lualib:GuildGuid(player) --获取玩家所属行会的GUID
lualib:SetFamilyMaxMember(family,100) --设置行会最大人数为100
lualib:DelayCall(player, 300, "timer", "") --设置延时

function timer(player)
    local family = lualib:GuildGuid(player) --获取玩家所属行会的GUID
    local num = lualib:GetInt(family, "__max_num") --根据系统变量“__max_num”获取行会最大人数
    lualib:SysMsg_SendWarnMsg(player, lualib:Name(family).."行会最大人数为:"..num) --输出行会最大人数
end

--此示例代码运行成功如下图所示。

image_20210427110323.png
<上一篇:批量设置行会列表中的各个行会的关系下一篇:设置行会关系>
SetFamilyRelation
设置行会关系

更新时间：2023-04-18 00:00:00
此函数设置两个行会之间的关系。

将联盟行会设置为敌对行会或者将敌对行会设置为联盟行会前，需要先解除行会之间的关系，否则会设置失败。

语法
Luacopy 复制
lualib:SetFamilyRelation(
    family_name1,
    family_name2,
    opt,
    call_back_func,
    param
)

参数
family_name1

string

 
行会1的名字

family_name2

string

 
行会2的名字

opt

uint8

 
执行的操作

1联盟

2敌对

3解除

call_back_func

string

 
操作完成后回调的脚本函数名

回调函数格式：Callback(family1_name,family2_name,opt, error, param)

family1_name(string)：行会1的名字

family2_name(string)：行会2的名字

opt(uint8)：执行的操作（1代表联盟，2代表敌对，3代表解除）

error(string)：错误信息（回调函数调用成功则会返回空字符串（""），调用失败则会返回具体原因）

param(string)：预设的回调函数参数

param

string

 
预设的回调函数参数

返回值
string

 
执行成功则返回空字符串（""）

执行失败则返回失败原因

caution_icon注意
调用此接口后，无论设置关系成功或者失败，都会回调参数call_back_func中设置的函数。

该函数为异步函数，返回成功只代表请求投递成功，具体是否设置成功以回调函数中的实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local ret = lualib:SetFamilyRelation("1234", "zyl",2, "set_family_result","abc") 
    if ret ~= "" then 
       lualib:SysWarnMsg(player, "设置行会关系出错:"..ret) 
    end
end

function set_family_result(family_name1, family_name2, opt, error, param) 
    lualib:Warn("行会名1："..family_name1)
    lualib:Warn("行会名2："..family_name2)
    lualib:Warn("关系参数："..opt)
    lualib:Warn("error："..error)
    lualib:Warn("param："..param)
end

--此示例代码运行成功如下图所示，同时游戏日志中还会打印相关内容。

SetFamilyRelation.png

SetFamilyRelation_2.png
<上一篇:设置行会最大成员数下一篇:让两个行会开始交战>
StartFamilyWar
让两个行会开始交战

更新时间：2023-04-18 00:00:00
此函数作用为让两个行会开始交战。

语法
Luacopy 复制
lualib:StartFamilyWar(
    strFamily1,
    strFamily2
)

参数
strFamily1

string

 
行会1的名字

strFamily2

string

 
行会2的名字

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:StartFamilyWar("1234", "测试行会") then
    lualib:Warn("行会战开启成功")
end

--此示例代码运行成功后，上述行会开始交战。
<上一篇:设置行会关系下一篇:停止两个行会交战，并解除敌对关系>
StopFamilyWarEx
停止两个行会交战，并解除敌对关系

更新时间：2025-08-04 00:00:00
此函数作用是停止两个行会交战，并解除敌对关系。

语法
Luacopy 复制
lualib:StopFamilyWarEx(
    strFamily1,
    strFamily2
)
参数
strFamily1

string

 
行会1的名字

strFamily2

string

 
行会2的名字

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function gb(npc,player)
    if lualib:StopFamilyWarEx("测试990","测试980") then 
        lualib:SysWarnMsg(player, "停止成功") 
    else
        lualib:SysWarnMsg(player, "失败") 
    end
end

--执行示例代码，如下图所示，行会战正常关闭，敌对关系解除。

StopFamilyWarEx.png
<上一篇:让两个行会开始交战下一篇:让两个行会停止交战>
StopFamilyWar
让两个行会停止交战

更新时间：2023-04-18 00:00:00
此函数作用为让两个行会停止交战。

语法
Luacopy 复制
lualib:StopFamilyWar(
    strFamily1,
    strFamily2 
)
参数
strFamily1

string

 
行会1的名字

strFamily2

string

 
行会2的名字

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:StopFamilyWar("第一名","Hello") then
    lualib:Warn("停止行会战")
end

--此示例代码运行成功后，上述行会停止交战。
<上一篇:停止两个行会交战，并解除敌对关系
GenEscorter
生成需要护送的镖车

更新时间：2023-08-14 00:00:00
此函数作用为生成需要护送的镖车。

语法
Luacopy 复制
lualib:GenEscorter(
    strPlayer,
    strMonsterKey,
    dwLife
)

参数
strPlayer

string

 
玩家角色的GUID

strMonsterKey

string

 
镖车的索引名（KeyName）

dwLife

uint32

 
镖车的生存时间

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
lualib:GenEscorter(player, "镖车·普", 60)

--此示例代码运行成功后，会生成一个跟随着玩家的镖车。


下一篇:生成自动行走的镖车>
GenTraveler
生成自动行走的镖车

更新时间：2023-08-14 00:00:00
此函数作用为生成自动行走的镖车。

语法
Luacopy 复制
lualib:GenTraveler(
    strPlayer,
    strMonsterKey,
    dwLife,
    strPaths
)

参数
strPlayer

string

 
玩家角色的GUID

strMonsterKey

string

 
镖车的索引名（KeyName）

dwLife

uint32

 
镖车的生存时间

单位为秒（s）

strPaths

string

 
镖车的路径字符串

具体格式如下：

"地图的索引名（KeyName），第1步的X坐标，第1步的Y坐标，第1步是否使用trigger_travel回调函数（0代表不使用，1代表使用）\

地图的索引名（KeyName），第2步的X坐标，第2步的Y坐标，第2步是否使用trigger_travel回调函数（0代表不使用，1代表使用）\

..."

例如："龙城,100,100,0\龙城,100,102,1"

caution_icon 注意
当镖车所在地图与设置的地图不一致时，镖车不会自动行走并且会提示报错信息。

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
<上一篇:生成需要护送的镖车下一篇:获取玩家镖车GUID>
GetEscorter
获取玩家镖车GUID

更新时间：2023-08-14 00:00:00
此函数获取玩家镖车的GUID。

语法
Luacopy 复制
lualib:GetEscorter(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
执行成功则返回镖车的GUID

执行失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GenEscorter(player, "镖车·普", 60)
local Escorter_guid = lualib:GetEscorter(player)
lualib:Warn("镖车的GUID为"..Escorter_guid)

--此示例代码运行成功如下图所示。

GetEscorter.png
<上一篇:生成自动行走的镖车下一篇:判断玩家的镖车是否死亡>
IsEscorterDied
判断玩家的镖车是否死亡

更新时间：2023-08-14 00:00:00
此函数判断玩家的镖车是否死亡。

语法
Luacopy 复制
lualib:IsEscorterDied(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true镖车已死亡

false镖车当前存活

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    lualib:GenEscorter(player, "镖车·普", 5) --生成一个镖车
    lualib:AddTimer(player, 88288, 500, 11, "escorter") --添加一个定时器
end

function escorter(player)
    local ret = lualib:IsEscorterDied(player) --判断玩家的镖车是否死亡
    if ret then
        lualib:Warn("你的镖车任务已经失败了!")
    else
        lualib:Warn("你的镖车存活!")
    end
end

--玩家镖车死亡后，此示例代码运行成功后会打印如下内容。

IsEscorterDied.png
<上一篇:获取玩家镖车GUID下一篇:清理玩家的镖车>
RemoveEscorter
清理玩家的镖车

更新时间：2023-08-14 00:00:00
此函数作用为清理玩家的镖车。

语法
Luacopy 复制
lualib:RemoveEscorter(
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
function main(npc,player)
    lualib:GenEscorter(player, "镖车·普", 10) --生成一个镖车
    lualib:Warn("您的镖车创建完成!")
    lualib:AddTimer(player, 88588, 3000, 1, "escorter") --添加一个定时器
end

function escorter(player)
    lualib:RemoveEscorter(player) --清理玩家的镖车
    lualib:Warn("您的镖车已被移除!")
end

--此示例代码运行成功如下图所示。

RemoveEscorter.png
<上一篇:判断玩家的镖车是否死亡
CampCount
获取玩家当天参与活动次数

更新时间：2023-08-14 00:00:00
此函数获取玩家当天参与活动次数。

语法
Luacopy 复制
lualib:CampCount(
    strPlayer,
    dwCampID
)

参数
strPlayer

string

 
玩家角色的GUID

dwCampID

uint32

 
活动ID

返回值
uint32

 当天参与活动的次数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local count = lualib:CampCount(player, 2)
if count == 0 then
    lualib:Warn("今日未参加该活动!")
else
    lualib:Warn("今日已参加"..count.."次活动!")
end
下一篇:获取活动总计参与次数>
CampCounts
获取活动总计参与次数

更新时间：2023-08-14 00:00:00
此函数获取活动总计参与次数。

语法
Luacopy 复制
lualib:CampCounts(
    strPlayer,
    dwCampID
)

参数
strPlayer

string

 
玩家角色的GUID

dwCampID

uint32

 
活动ID

返回值
uint32

 总计参与活动次数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--获取开服以来玩家player参与试炼活动(ID为3)的总次数  
local sum_count = lualib:CampCounts(player, 3)
<上一篇:获取玩家当天参与活动次数下一篇:获取活动当天积分>
CampInteg
获取活动当天积分

更新时间：2023-08-14 00:00:00
此函数获取活动当天积分。

语法
Luacopy 复制
lualib:CampInteg(
    strPlayer,
    dwCampID
)

参数
strPlayer

string

 
玩家角色的GUID

dwCampID

uint32

 
活动ID

返回值
uint32

 当天活动积分
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--获取试炼活动(ID为3)的当前积分  
local jifen = lualib:CampInteg(player, 3)
<上一篇:获取活动总计参与次数下一篇:获取活动总计积分>
CampIntegs
获取活动总计积分

更新时间：2023-08-14 00:00:00
此函数获取活动总计积分。

语法
Luacopy 复制
lualib:CampIntegs(
    strPlayer,
    dwCampID
)

参数
strPlayer

string

 
玩家角色的GUID

dwCampID

uint32

 
活动ID

返回值
uint32

 总计活动积分
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--获取试炼活动(ID为3)的自开服以来的总积分  
local sum_jifen = lualib:CampInteg(player, 3)
<上一篇:获取活动当天积分下一篇:获取活动的配置表结构>
Campaign_DataRow
获取活动的配置表结构

更新时间：2022-03-14 00:00:00
此函数根据活动ID获取该活动的配置表结构。

语法
Luacopy 复制
lualib:Campaign_DataRow(
    id
)
参数
id

uint32

 
活动ID

返回值
table

 
活动的配置表结构

其定义请参见Campaign模板属性定义

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local campaign_data = lualib:Campaign_DataRow(1) --获取活动ID为1的活动的配置表结构
for k, v in pairs(campaign_data) do
    lualib:Warn(k.." ："..v)
end

--此示例代码运行成功如下图所示。

Campaign_DataRow.png
<上一篇:获取活动总计积分下一篇:获取活动的开始时间和结束时间>
GetCampaignTime
获取活动的开始时间和结束时间

更新时间：2023-08-14 00:00:00
此函数获取活动的开始时间和结束时间。

note_icon 备注
开始时间分为显示开始时间和真实开始时间。

语法
Luacopy 复制
lualib:GetCampaignTime(
    id
)
参数
id

uint32

 
活动ID

返回值
table

 
返回活动的开始时间和结束时间，存储在lua表中

table格式为{显示开始时间, 显示结束时间, 真实开始时间}

若活动不存在，则返回空table。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local activity_time = lualib:GetCampaignTime(7)
if #activity_time == 0 then
    lualib:SysWarnMsg(player, "活动不存在！")
else
    lualib:SysWarnMsg(player, "活动开始时间为 "..activity_time[1])
    lualib:SysWarnMsg(player, "活动结束时间为 "..activity_time[2])
    lualib:SysWarnMsg(player, "活动真实开始时间为 "..activity_time[3])
end

--此示例代码运行成功如下图所示。

GetCampaignTime
<上一篇:获取活动的配置表结构下一篇:加入活动>
JoinCamp
加入活动

更新时间：2023-08-14 00:00:00
此函数执行加入活动的操作。

语法
Luacopy 复制
lualib:JoinCamp(
    strPlayer,
    dwCampID,
    dwIntegral
)

参数
strPlayer

string

 
玩家角色的GUID

dwCampID

uint32

 
活动ID

dwIntegral

uint32

 
活动的积分值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--试炼教头.lua       
--试炼的在活动管理表中的活动ID为3  
lualib:JoinCamp(player, 3, 0)
<上一篇:获取活动的开始时间和结束时间下一篇:判断玩家是否受活动次数限制>
VerifyCampCount
判断玩家是否受活动次数限制

更新时间：2023-08-14 00:00:00
此函数判断玩家是否受活动次数限制。

玩家受到活动次数限制是指玩家当天参加指定活动的次数达到上限（即活动管理表中的“活动次数”选项的配置值）后，玩家当天将无法再次参加该活动。

语法
Luacopy 复制
lualib:VerifyCampCount(
    strPlayer,
    dwCampID
)

参数
strPlayer

string

 
玩家角色的GUID

dwCampID

uint32

 
活动ID

返回值
bool

 
true受限

false不受限

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:加入活动下一篇:判断玩家等级是否达到活动所需等级>
VerifyCampLevel
判断玩家等级是否达到活动所需等级

更新时间：2023-08-14 00:00:00
此函数判断玩家等级是否达到活动所需等级。

语法
Luacopy 复制
lualib:VerifyCampLevel(
    strPlayer,
    dwCampID
)

参数
strPlayer

string

 
玩家角色的GUID

dwCampID

uint32

 
活动ID

返回值
bool

 
true玩家等级达到活动所需等级

false玩家等级未达到活动所需等级

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:VerifyCampLevel(player, 1) then
    lualib:Warn("你已满足进入条件！")
else
    lualib:Warn("未达到进入等级！")
end

--当玩家等级达到活动所需等级时，此示例代码运行后游戏日志打印内容如下图所示。

VerifyCampLevel_2.png

--当玩家等级未达到活动所需等级时，此示例代码运行后游戏日志打印内容如下图所示。

VerifyCampLevel.png
<上一篇:判断玩家是否受活动次数限制
AcceptQuest
玩家接受任务

更新时间：2023-08-14 00:00:00
此函数执行玩家接受任务的操作。

语法
Luacopy 复制
lualib:AcceptQuest(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家角色的GUID

wQuestID

uint16

 
任务的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:AcceptQuest(player, 2) == true then
    return "任务接取成功"
else
    return "任务接取失败"
end
下一篇:玩家提交任务>
AccomplishQuest
玩家提交任务

更新时间：2023-08-14 00:00:00
此函数执行玩家提交任务的动作。

语法
Luacopy 复制
lualib:AccomplishQuest(
    strPlayer,
    wQuestID,
    wSelect
)

参数
strPlayer

string

 
玩家角色的GUID

wQuestID

uint16

 
任务的ID

wSelect

uint16

 
选择项（默认填0即可）

返回值
bool

 
true提交成功

false提交失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:AccomplishQuest(player, 2, 0) == true then
    msg = "恭喜你已经完成该任务！"
    return msg
else
    msg = "任务还没完成！"
    return msg
end
<上一篇:玩家接受任务下一篇:判断某任务是否可接>
CanAcceptQuest
判断某任务是否可接

更新时间：2023-08-14 00:00:00
此函数判断某任务是否可被接受。

语法
Luacopy 复制
lualib:CanAcceptQuest(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家角色的GUID

wQuestID

uint16

 
任务的ID

返回值
bool

 
true任务可接

false任务不可接

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:玩家提交任务下一篇:判断某任务是否可提交>
CanAccomplishQuest
判断某任务是否可提交

更新时间：2021-09-07 00:00:00
此函数判断某任务是否可提交。

语法
Luacopy 复制
lualib:CanAccomplishQuest(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家的GUID

wQuestID

uint16

 
任务的ID

返回值
bool

 
true任务可提交。

false任务不可提交。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--天机老人.lua   
       
--判断任务v[1]能否提交  
for i, v in ipairs(gQuestMap) do  
    if v[3] ~= "" then  
        if lualib:CanAccomplishQuest(player, v[1]) == true then  
            msg = msg.."#IMAGE1902700016# <@"..v[3].." "..v[5]..">\n"  
        end 
    end
end
<上一篇:判断某任务是否可接下一篇:玩家放弃任务>
DropQuest
玩家放弃任务

更新时间：2021-09-07 00:00:00
此函数执行玩家放弃任务的动作。

语法
Luacopy 复制
lualib:DropQuest(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家的GUID

wQuestID

uint16

 
任务的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:DropQuest(player, quest_id)
<上一篇:判断某任务是否可提交下一篇:强制玩家接受任务>
ForceAcceptQuest
强制玩家接受任务

更新时间：2021-09-07 00:00:00
此函数执行强制玩家接受任务的动作。

语法
Luacopy 复制
lualib:ForceAcceptQuest(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家的GUID

wQuestID

uint16

 
任务的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ForceAcceptQuest(player, quest_id)
<上一篇:玩家放弃任务下一篇:强制玩家完成任务>
ForceQuestReady
强制玩家完成任务

更新时间：2021-09-07 00:00:00
此函数执行强制玩家完成任务的动作。

语法
Luacopy 复制
lualib:ForceQuestReady(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家的GUID

wQuestID

uint16

 
任务的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ForceQuestReady(player, quest_id)
<上一篇:强制玩家接受任务下一篇:获取任务完成时的追踪文本>
GetQuestAccomplishing
获取任务完成时的追踪文本

更新时间：2021-09-07 00:00:00
此函数获取任务完成时的追踪文本。

语法
Luacopy 复制
lualib:GetQuestAccomplishing(
    wQuestID
)

参数
wQuestID

uint16

 
任务ID

返回值
string

 若存在任务，则返回任务追踪文本；若任务找不到，则返回""。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--超链接传送.lua        
if types == "1" then          
    questStr = lualib:GetQuestProgressing(questId)     
elseif types == "2" then          
    questStr = lualib:GetQuestAccomplishing(questId)      
end
<上一篇:强制玩家完成任务下一篇:获取玩家任务组杀怪次数>
GetQuestGroupHuntingsCount
获取玩家任务组杀怪次数

更新时间：2023-08-14 00:00:00
此函数获取玩家任务组杀怪次数。

语法
Luacopy 复制
lualib:GetQuestGroupHuntingsCount(
    strPlayer,
    wQuestID,
    wMonsterID
)

参数
strPlayer

string

 
玩家角色的GUID

wQuestID

uint16

 
任务的ID

wMonsterID

uint16

 
怪物的ID

返回值
int32

 杀怪数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取任务完成时的追踪文本下一篇:获取任务进行中的追踪文本>
GetQuestProgressing
获取任务进行中的追踪文本

更新时间：2023-08-14 00:00:00
此函数获取任务进行中的追踪文本。

语法
Luacopy 复制
lualib:GetQuestProgressing(
    wQuestID
)

参数
wQuestID

uint16

 
任务的ID

返回值
string

 
任务存在则返回任务追踪文本

任务找不到则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--超链接传送.lua        
if types == "1" then          
    questStr = lualib:GetQuestProgressing(questId)      
elseif types == "2" then          
    questStr = lualib:GetQuestAccomplishing(questId)      
end
<上一篇:获取玩家任务组杀怪次数下一篇:判断玩家是否拥有某个任务>
HasQuest
判断玩家是否拥有某个任务

更新时间：2023-08-14 00:00:00
此函数判断玩家是否拥有某个任务。

语法
Luacopy 复制
lualib:HasQuest(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家角色的GUID

wQuestID

uint16

 
任务的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:HasQuest(player, 52) then
    lualib:Warn("已接取该任务！")
else
    lualib:Warn("未接取该任务！")
end

--此示例代码运行成功如下图所示。

HasQuest.png

--此示例代码运行成功如下图所示。

HasQuest_2.png
<上一篇:获取任务进行中的追踪文本下一篇:查询玩家任务剩余次数>
QuestRemainCount
查询玩家任务剩余次数

更新时间：2023-08-14 00:00:00
此函数查询玩家指定任务的剩余次数。

语法
Luacopy 复制
lualib:QuestRemainCount(
    strPlayer,
    wQuestID
)

参数
strPlayer

string

 
玩家角色的GUID

wQuestID

uint16

 
任务的ID

返回值
int32

 剩余次数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local count = lualib:QuestRemainCount(player, quest_id)
<上一篇:判断玩家是否拥有某个任务下一篇:根据任务ID获取任务信息>
Quest_GetQuestInfo
根据任务ID获取任务信息

更新时间：2021-09-07 00:00:00
此函数根据任务ID获取任务信息。

语法
Luacopy 复制
lualib:Quest_GetQuestInfo(
    template_id
)
参数
template_id

uint16

 
任务的模板ID（即任务编号）

返回值
table

 
任务信息表

存储在lua表中

note_icon 备注
任务信息表中相关字段的说明如下所示：

id：任务编号

name：任务名称

desc：任务描述

suggest_level：任务建议等级

script_name：脚本名字

type：任务类型（1主线任务，2支线任务，3其他任务）

progessing：进行中的追踪文本

accomplishing：任务完成时的追踪文本

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    local QuestTable = lualib:Quest_GetQuestInfo(31) --获取任务编号为31的任务信息
    lualib:Warn("该任务的信息为"..serialize(QuestTable))
end

--此示例代码运行成功如下图所示。

Quest_GetQuestInfo.png
<上一篇:查询玩家任务剩余次数下一篇:设置玩家在指定任务中的杀怪数量>
SetQuestGroupHuntingsCount
设置玩家在指定任务中的杀怪数量

更新时间：2023-08-14 00:00:00
此函数设置玩家在指定任务中的杀怪数量。

语法
Luacopy 复制
lualib:SetQuestGroupHuntingsCount(
    strPlayer,
    wQuestID,
    wMonsterID,
    iCount
)

参数
strPlayer

string

 
玩家角色的GUID

wQuestID

uint16

 
任务的ID

wMonsterID

uint16

 
怪物的ID

iCount

int32

 
杀怪数量

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetQuestGroupHuntingsCount(player,4,14,2) --设置玩家在任务4中击杀怪物“白茅人”的数量为2

--此示例代码运行前效果如下图所示。

SetQuestGroupHuntingsCount.png

--此示例代码运行后效果如下图所示。

SetQuestGroupHuntingsCount_2.png

<上一篇:根据任务ID获取任务信息
CancelStall
取消玩家摆摊

更新时间：2023-08-14 00:00:00
此函数作用为取消玩家摆摊。

语法
Luacopy 复制
lualib:CancelStall(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:假人开始新摆摊>
Dummy_StartNewStall
假人开始新摆摊

更新时间：2026-02-13 19:29:00
此函数让假人开始摆摊。

语法
Luacopy 复制
lualib:Dummy_StartNewStall(
    dummy_guid,
    stall_name,
    stall_type,
    items
)

参数
dummy_guid

string

 
假人GUID

stall_name

string

 
摊位名称

stall_type

int

 
摆摊类型

1宠物摆摊

2玩家摆摊

items

table

 
物品列表，每个条目包含：

guid物品GUID

price价格

currency_type货币类型（0=金币, 1=元宝, 2=积分）

返回值
string

 
成功返回事件GUID，失败返回空字符串

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_guid = lualib:MapGuid(player)
local x = lualib:X(player)
local y = lualib:Y(player)
local name = lualib:GenRandomName()
local dummy = lualib:GenDummyEx(name, 1, 1, map_guid, x + lualib:GenRandom(1, 5), y + lualib:GenRandom(1, 5), 0)
lualib:SetDirEx(dummy, lualib:GenRandom(1, 7))
lualib:SetLevel(dummy, 23)
local stallName = "滴滴叭叭"
local item = lualib:AddSingleItem(dummy, "11级魔攻宝石", 10, false, "给假人道具", dummy)
local event_guid = lualib:Dummy_StartNewStall(dummy, stallName, 2, {{guid = item, price = 1000, currency_type = 0}})
lualib:Warn("返回的guid：" .. event_guid)

--此示例代码运行成功如下图所示。

Dummy_StartNewStall.png

Dummy_StartNewStall_2.png
<上一篇:取消玩家摆摊下一篇:假人停止新摆摊>
Dummy_StopNewStall
假人停止新摆摊

更新时间：2026-02-13 19:29:00
此函数让假人结束摆摊。

语法
Luacopy 复制
lualib:Dummy_StopNewStall(
    dummy_guid,
    close_reason
)

参数
dummy_guid

string

 
假人GUID

close_reason

string

 
收摊原因

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local x = lualib:X(player)
local y = lualib:Y(player)
local result = lualib:Map_GetRegionRoles(lualib:MapGuid(player), x, y, 10, true)
for i = 1, #result do
    if lualib:GUIDType(result[i]) == 1 then
        local stall_state = lualib:Attr(result[i], lua_role_stall)
        if stall_state ~= 0 then
            lualib:Dummy_StopNewStall(result[i], "测试")
        end
    end
end

--此示例代码运行成功如下图所示。

Dummy_StopNewStall.png

Dummy_StopNewStall_2.png
<上一篇:假人开始新摆摊下一篇:获取所有摆摊玩家的GUID>
GetAllStallPlayerGuids
获取所有摆摊玩家的GUID

更新时间：2025-01-10 00:00:00
此函数获取所有摆摊玩家的GUID。

语法
Luacopy 复制
lualib:GetAllStallPlayerGuids(
    is_offline
)
参数
is_offline

bool

 
是否只获取离线玩家的摆摊

true只获取离线玩家的摆摊

false获取全部线玩家的摆摊

返回值
table

 
返回摆摊玩家的GUID，存储在lua表中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--获取所有摆摊玩家的guid，使测试角色37，测试角色38进入摆摊状态，执行下列代码，获取所有摆摊玩家的guid
function main(npc,player)
    lualib:Warn("测试角色37GUID："..lualib:Name2Guid("测试角色37"))
    lualib:Warn("测试角色38GUID："..lualib:Name2Guid("测试角色38"))
    local playGuids = lualib:GetAllStallPlayerGuids(false)
    if playGuids ~= "" then
       for i = 1,#playGuids do
          lualib:Warn("摆摊玩家的GUID："..playGuids[i])
       end 
    end
end

--执行示例代码，如下图所示获取所有摆摊玩家的GUID。

GetAllStallPlayerGuids.png

--只获取离线玩家的摆摊，使测试角色37，测试角色38进入摆摊状态，并使测试角色38进入离线挂机状态，执行下列代码，获取离线摆摊玩家的guid

function main(npc,player)
    lualib:Warn("测试角色37GUID："..lualib:Name2Guid("测试角色37"))
    lualib:Warn("测试角色38GUID："..lualib:Name2Guid("测试角色38"))
    lualib:SetOffline(lualib:Name2Guid("测试角色38"),30)
    local playGuids = lualib:GetAllStallPlayerGuids(true)
    if playGuids ~= "" then
       for i = 1,#playGuids do
          lualib:Warn("摆摊玩家的GUID："..playGuids[i])
       end 
    end
end

--执行示例代码，如下图所示获取离线摆摊玩家的GUID。

GetAllStallPlayerGuids_2.png
<上一篇:假人停止新摆摊下一篇:获取玩家摆摊时的收购物品列表>
GetPlayerStallBuyList
获取玩家摆摊时的收购物品列表

更新时间：2022-03-18 00:00:00
此函数获取玩家摆摊时的收购物品列表。

语法
Luacopy 复制
lualib:GetPlayerStallBuyList(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
table

 
收购物品列表

为table格式，包括收购物品的ID、数量、价格类型（0代表金币，1代表元宝，2代表积分）和价格。

具体格式如下：

{

    [1]={["id"] = 物品1的ID,["amount"] = 物品1的数量,["price_type"] = 收购物品1的价格类型,["price"] = 收购物品1的价格}

    [2]={["id"] = 物品2的ID,["amount"] = 物品2的数量,["price_type"] = 收购物品2的价格类型,["price"] = 收购物品2的价格}

    ...

}

note_icon 备注
若玩家未摆摊，则会返回一个空表。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：玩家摆摊时的收购物品灰色药粉（少量）、灰色药粉（中量）和灰色药粉（大量），对应物品的ID如下图所示。

GetPlayerStallBuyList.png

GetPlayerStallBuyList_2.png
local buy_list = lualib:GetPlayerStallBuyList(player) --获取玩家摆摊时的收购物品列表
lualib:Warn("buy_list = "..serialize(buy_list))

--此示例代码运行成功如下图所示。

GetPlayerStallBuyList_3.png
<上一篇:获取所有摆摊玩家的GUID下一篇:获取玩家摆摊时的出售物品列表>
GetPlayerStallSellList
获取玩家摆摊时的出售物品列表

更新时间：2022-03-18 00:00:00
此函数获取玩家摆摊时的出售物品列表。

语法
Luacopy 复制
lualib:GetPlayerStallSellList(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
table

 
出售物品列表

为table格式，包括出售物品的ID、数量、价格类型（0代表金币，1代表元宝，2代表积分）和价格。

具体格式如下：

{

    [1]={["id"] = 物品1的ID,["amount"] = 物品1的数量,["price_type"] = 出售物品1的价格类型,["price"] = 出售物品1的价格}

    [2]={["id"] = 物品2的ID,["amount"] = 物品2的数量,["price_type"] = 出售物品2的价格类型,["price"] = 出售物品2的价格}

    ...

}

note_icon 备注
若玩家未摆摊，则会返回一个空表。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：玩家摆摊时的出售物品护身道符、护身道符（大）和超级护身道符，对应物品的ID如下图所示。

GetPlayerStallSellList.png

GetPlayerStallSellList_2.png
local sell_list = lualib:GetPlayerStallSellList(player) --获取玩家摆摊时的出售物品列表
lualib:Warn("sell_list = "..serialize(sell_list))

--此示例代码运行成功如下图所示。

GetPlayerStallSellList_3.png
<上一篇:获取玩家摆摊时的收购物品列表下一篇:关闭新摆摊>
NewStall_Close
关闭新摆摊

更新时间：2026-02-13 19:29:00
此函数通过摊位GUID关闭摊位，支持离线玩家。

如果玩家在线则正常关闭，不在线则通过邮件退回物品。

语法
Luacopy 复制
lualib:NewStall_Close(
    stall_guid
)

参数
stall_guid

string

 
摊位GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = lualib:Name2Guid("我要摆摊")
local stall_guid = lualib:NewStall_GetStallGuidByPlayer(player_guid)
if stall_guid ~= "" then
    lualib:NewStall_Close(stall_guid)
    lualib:SysMsg_SendBottomColor(player, "关闭玩家摊位", 4, 2)
end
<上一篇:获取玩家摆摊时的出售物品列表下一篇:获取所有摊主>
NewStall_GetAllStallOwners
获取所有摊主

更新时间：2026-02-13 19:29:00
此函数获取所有摆摊玩家的GUID和名称。

语法
Luacopy 复制
lualib:NewStall_GetAllStallOwners(
    stall_type_filter
)

参数
stall_type_filter

int

 
摆摊类型过滤

0全部

1宠物摆摊

2玩家摆摊

返回值
table

 
摊主信息列表，每个元素包含guid和name

guid玩家GUID

name玩家名称

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local info0 = lualib:NewStall_GetAllStallOwners(0)
lualib:Warn("全部：" .. serialize(info0))
local info1 = lualib:NewStall_GetAllStallOwners(1)
lualib:Warn("宠物摆摊：" .. serialize(info1))
local info2 = lualib:NewStall_GetAllStallOwners(2)
lualib:Warn("玩家摆摊：" .. serialize(info2))
<上一篇:关闭新摆摊下一篇:通过玩家获取摊位GUID>
NewStall_GetStallGuidByPlayer
通过玩家获取摊位GUID

更新时间：2026-02-13 19:29:00
此函数通过玩家GUID获取摊位GUID。

语法
Luacopy 复制
lualib:NewStall_GetStallGuidByPlayer(
    player_guid
)

参数
player_guid

string

 
玩家GUID

返回值
string

 
摊位GUID，如果玩家没有摊位则返回空字符串

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local player_guid = lualib:Name2Guid("我要摆摊")
local stall_guid = lualib:NewStall_GetStallGuidByPlayer(player_guid)
if stall_guid ~= "" then
    lualib:SysMsg_SendBottomColor(player, "玩家有摊位", 4, 2)
end
<上一篇:获取所有摊主下一篇:获取范围内摊位>
NewStall_GetStallGuidsInRange
获取范围内摊位

更新时间：2026-02-13 19:29:00
此函数获取地图指定范围内所有摊位的GUID列表。

语法
Luacopy 复制
lualib:NewStall_GetStallGuidsInRange(
    map_guid,
    x,
    y,
    range
)

参数
map_guid

string

 
地图GUID

x

int

 
中心点X坐标

y

int

 
中心点Y坐标

range

int

 
范围半径

返回值
table

 
摊位GUID列表

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map_guid = lualib:MapGuid(player)
local x = lualib:X(player)
local y = lualib:Y(player)
local stall_guids = lualib:NewStall_GetStallGuidsInRange(map_guid, x, y, 10)
for _, stall_guid in ipairs(stall_guids) do
    local info = lualib:NewStall_GetStallInfo(stall_guid)
    lualib:Warn(serialize(info))
end
<上一篇:通过玩家获取摊位GUID下一篇:新摆摊系统购买前触发>
on_pre_new_stall_buy
新摆摊系统购买前触发

更新时间：2026-02-13 19:29:00
此函数在玩家购买摊位物品前触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_new_stall_buy(
    stall_guid,
    buyer_guid,
    item_guid,
    price,
    amount,
    price_type
)

参数
stall_guid

string

 
摊位GUID

可通过NewStall_GetStallInfo获取卖家等详情。

buyer_guid

string

 
买家GUID

item_guid

string

 
物品GUID

price

int

 
物品价格

amount

int

 
购买数量

price_type

int

 
货币类型

0金币

1元宝

2积分

返回值
int

 
最终价格

返回负数则表示取消购买

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 注册触发器
lualib:AddTrigger("0", 493, "on_pre_new_stall_buy")

-- 回调函数实现
function on_pre_new_stall_buy(stall_guid, buyer_guid, item_guid, price, amount, price_type)
    local info = lualib:NewStall_GetStallInfo(stall_guid)
    if info then
        lualib:Warn("买家 " .. buyer_guid .. " 从 " .. info.owner_name .. " 购买物品")
        lualib:Warn("卖家GUID: " .. info.owner_guid)
        lualib:Warn("摆摊类型: " .. info.stall_type)
    end
    
    -- 打9折
    local final_price = price * 0.9
    return final_price
    
    -- 返回负数取消购买
    -- return -1
end

--执行示例代码，结果如图所示。
on_pre_new_stall_buy.png
<上一篇:获取范围内摊位下一篇:新摆摊系统收摊前触发>
on_pre_new_stall_close
新摆摊系统收摊前触发

更新时间：2026-02-13 19:29:00
此函数在玩家收摊前触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_new_stall_close(
    stall_guid,
    stall_type,
    items_json
)

参数
stall_guid

string

 
摊位GUID

可通过NewStall_GetStallInfo获取卖家等详情。

stall_type

int

 
摆摊类型

1宠物摆摊

2玩家摆摊

items_json

string

 
JSON格式的物品信息列表

格式：[{"guid":"xxx","amount":1,"price":100,"currency_type":0}, ...]

返回值
table

 
返回包含以下字段的table：

allow是否允许收摊（bool）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 注册触发器
lualib:AddTrigger("0", 492, "on_pre_new_stall_close")

-- 回调函数实现
function on_pre_new_stall_close(stall_guid, stall_type, items_json)
    lualib:Warn("摊位guid: " .. stall_guid)
    lualib:Warn("摆摊类型: " .. stall_type)
    
    local items = json.decode(items_json)
    for _, item in ipairs(items) do
        lualib:Warn("物品GUID: " .. item.guid .. ", 数量: " .. item.amount .. ", 价格: " .. item.price)
    end
    
    local result = {}
    result.allow = true
    return result
end

--执行示例代码，结果如图所示。
on_pre_new_stall_close.png
<上一篇:新摆摊系统购买前触发下一篇:新摆摊系统开摊前触发>
on_pre_new_stall_start
新摆摊系统开摊前触发

更新时间：2026-03-05 16:08:00
此函数在玩家开始新摆摊前触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_new_stall_start(
    player_guid,
    stall_type,
    stall_name,
    items_json
)

参数
player_guid

string

 
玩家GUID

stall_type

int

 
摆摊类型

1宠物摆摊

2玩家摆摊

stall_name

string

 
摊位名称

items_json

string

 
上架物品信息JSON字符串

格式：[{"guid":"xxx","amount":1,"price":100,"currency_type":0}, ...]

返回值
table

 
返回包含以下字段的table：

allow是否允许摆摊（bool）

resource_id宠物摆摊时使用的怪物表ID（int）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 注册触发器
lualib:AddTrigger("0", 491, "on_pre_new_stall_start")

-- 回调函数实现
function on_pre_new_stall_start(player_guid, stall_type, stall_name, items_json)
    lualib:Warn("player_guid: " .. player_guid)
    lualib:Warn("stall_type: " .. stall_type)
    lualib:Warn("stall_name: " .. stall_name)
    
    -- 解析物品信息
    local items = json.decode(items_json)
    for _, item in ipairs(items) do
        lualib:Warn("物品GUID: " .. item.guid)
        lualib:Warn("数量: " .. item.amount)
        lualib:Warn("价格: " .. item.price)
        lualib:Warn("货币类型: " .. item.currency_type)
    end
    
    local result = {}
    result.allow = true
    result.resource_id = 351  -- 怪物表ID
    return result
end

--执行示例代码，结果如图所示。
on_pre_new_stall_start.png
<上一篇:新摆摊系统收摊前触发下一篇:新摆摊系统下架前触发>
on_pre_new_stall_takedown
新摆摊系统下架前触发

更新时间：2026-02-13 19:29:00
此函数在玩家下架摊位物品前触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
on_pre_new_stall_takedown(
    stall_guid,
    stall_type,
    items_json,
    remaining_items_json
)

参数
stall_guid

string

 
摊位GUID

可通过NewStall_GetStallInfo获取卖家等详情。

stall_type

int

 
摆摊类型

1宠物摆摊

2玩家摆摊

items_json

string

 
请求下架的物品JSON列表

格式：[{"guid":"xxx","amount":1,"price":100,"currency_type":0}, ...]

remaining_items_json

string

 
下架后剩余的物品JSON列表

格式：[{"guid":"xxx","amount":1,"price":100,"currency_type":0}, ...]

返回值
table

 
返回包含以下字段的table：

allow是否允许下架（bool）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-- 注册触发器
lualib:AddTrigger("0", 494, "on_pre_new_stall_takedown")

-- 回调函数实现
function on_pre_new_stall_takedown(stall_guid, stall_type, items_json, remaining_items_json)
    local info = lualib:NewStall_GetStallInfo(stall_guid)
    if info.owner_guid then
        lualib:Warn("摊主下架物品: " .. info.owner_name)
    end
    
    -- 解析物品JSON
    local items = json.decode(items_json)
    for _, item in ipairs(items) do
        lualib:Warn("下架物品GUID: " .. item.guid .. ", 数量: " .. item.amount)
    end
    
    local result = {}
    result.allow = true
    return result
end

--执行示例代码，结果如图所示。
on_pre_new_stall_takedown.png
<上一篇:新摆摊系统开摊前触发
AddShop
关联NPC与指定商店

更新时间：2021-09-07 00:00:00
此函数将NPC与指定商店关联起来。

参考 OpenShop

语法
Luacopy 复制
lualib:AddShop(
    strNpc,
    wShopId
)

参数
strNpc

string

 
NPC的GUID

wShopId

uint16

 
商店ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--巫山城药店.lua                 
lualib:AddShop(npc, 8)
下一篇:打开随身商店>
OpenShopEx
打开随身商店

更新时间：2023-08-14 00:00:00
此函数打开随身商店。

参考 AddShop OpenShop

语法
Luacopy 复制
lualib:OpenShopEx(
    strPlayer,
    wShopId
)

参数
strPlayer

string

 
玩家角色的GUID

wShopId

uint16

 
商店ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:关联NPC与指定商店下一篇:打开与NPC关联过的商店>
OpenShop
打开与NPC关联过的商店

更新时间：2023-08-14 00:00:00
此函数打开与NPC关联过的商店。

参考 AddShop

note_icon 备注
NPC必须与该商店关联过。

语法
Luacopy 复制
lualib:OpenShop(
    strNpc,
    strPlayer,
    wShopId
)

参数
strNpc

string

 
NPC的GUID

strPlayer

string

 
玩家角色的GUID

wShopId

uint16

 
商店ID

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--巫山城药店.lua  

--打开商店  
function OpenShop(npc, player, id)  
    shopid = tonumber(id)  
    lualib:OpenShop(npc, player, shopid)  
    return ""  
end
<上一篇:打开随身商店
NPCTalkDetailEx
设置对话框的内容和尺寸并打开对话框（扩展）

更新时间：2023-08-14 00:00:00
此函数设置NPC对话框中的内容和尺寸，并打开指定NPC的对话框，，需要对应的NPC存在。

参考 NPCTalk NPCTalkEx NPCTalkDetail NPCTalkDetailQuest

语法
Luacopy 复制
lualib:NPCTalkDetailEx(
    strNpc,
    strPlayer,
    strTalk,
    wWidth,
    wHeight
)

参数
strNpc

string

 
NPC的GUID

strPlayer

string

 
玩家角色的GUID

strTalk

string

 
对话框的内容

wWidth

uint16

 
对话框的宽度

wHeight

uint16

 
对话框的高度

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:NPCTalkDetailEx(npc, player, msg, 400, 200)     
下一篇:打开NPC的对话框或者任务框>
NPCTalkDetailQuest
打开NPC的对话框或者任务框

更新时间：2023-08-14 00:00:00
此函数设置NPC对话框中的内容以及对话框的尺寸，并打开指定NPC的对话框，。

参考 NPCTalk NPCTalkEx NPCTalkDetail NPCTalkDetailEx

语法
Luacopy 复制
lualib:NPCTalkDetailQuest(
    strNpc,
    strPlayer,
    strTalk,
    wWidth,
    wHeight
)

参数
strNpc

string

 
NPC的GUID

strPlayer

string

 
玩家角色的GUID

strTalk

string

 
对话框的内容

wWidth

uint16

 
对话框的宽度

wHeight

uint16

 
对话框的高度

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置对话框的内容和尺寸并打开对话框（扩展）下一篇:打开物品的对话框>
NPCTalkDetail
打开物品的对话框

更新时间：2023-08-14 00:00:00
此函数设置NPC对话框中的内容和尺寸，并打开指定NPC的对话框，，无需对应的NPC存在。

参考 NPCTalk NPCTalkEx NPCTalkDetailEx

语法
Luacopy 复制
lualib:NPCTalkDetail(
    strPlayer,
    strTalk,
    wWidth,
    wHeight
)

参数
strPlayer

string

 
玩家角色的GUID

strTalk

string

 
对话框的内容

wWidth

uint16

 
对话框的宽度

wHeight

uint16

 
对话框的高度

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--乞丐.lua  

lualib:NPCTalkDetail(player, msg, 500, 300)
<上一篇:打开NPC的对话框或者任务框下一篇:设置对话框的内容并打开对话框（扩展）>
NPCTalkEx
设置对话框的内容并打开对话框（扩展）

更新时间：2023-08-14 00:00:00
此函数设置NPC对话框中的内容，并打开指定NPC的对话框，需要对应的NPC存在。

参考 NPCTalk NPCTalkDetail NPCTalkDetailEx

语法
Luacopy 复制
lualib:NPCTalkEx(
    strNpc,
    strPlayer,
    strTalk
)

参数
strNpc

string

 
NPC的GUID

strPlayer

string

 
玩家角色的GUID

strTalk

string

 
对话框的内容

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:打开物品的对话框下一篇:设置对话框的内容并打开对话框>
NPCTalk
设置对话框的内容并打开对话框

更新时间：2023-08-14 00:00:00
此函数设置NPC对话框中的内容，并打开指定NPC的对话框，无需对应的NPC存在。

参考 NPCTalkEx NPCTalkDetail NPCTalkDetailEx

语法
Luacopy 复制
lualib:NPCTalk(
    strPlayer,
    strTalk
)

参数
strPlayer

string

 
玩家角色的GUID

strTalk

string

 
对话框的内容

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--神歌城.lua  

lualib:NPCTalk(player, "灵元秘境尚未开启！\n \n&<@leave *01*确定&>")
<上一篇:设置对话框的内容并打开对话框（扩展）下一篇:修改NPC的名字>
Npc_ChangeName
修改NPC的名字

更新时间：2023-08-14 00:00:00
此函数作用为修改指定NPC的名字。

语法
Luacopy 复制
lualib:Npc_ChangeName(
    strNpc,
    strName
)

参数
strNpc

string

 
NPC的GUID

strName

string

 
NPC要修改的名字

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
<上一篇:设置对话框的内容并打开对话框下一篇:根据Npc的KeyName取得该Npc的配置表结构>
Npc_DataRow
根据Npc的KeyName取得该Npc的配置表结构

更新时间：2024-09-27 00:00:00
此函数根据Npc的KeyName取得该Npc的配置表结构。

语法
Luacopy 复制
lualib:Npc_DataRow(
    strNpcKey
)
参数
strNpcKey

string

 
Npc的KeyName

返回值
table

 
Npc的配置表结构

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local strNpcKey1 = "通用测试NPC"
local strNpcKey2 = "宠物测试npc"
local t_npc1 = lualib:Npc_DataRow(strNpcKey1)
local t_npc2 = lualib:Npc_DataRow(strNpcKey2)
lualib:Warn("通用测试NPC的配置表结构为："..serialize(t_npc1))
lualib:Warn("宠物测试NPC的配置表结构为："..serialize(t_npc2))

--NPC的配置表结构成功获取到如图所示。

Npc_DataRow.png
<上一篇:修改NPC的名字下一篇:获取NPC实体上绑定的任务信息>
Npc_GetBindQuests
获取NPC实体上绑定的任务信息

更新时间：2023-08-14 00:00:00
此函数获取NPC实体上绑定的任务信息，包括可接任务和可交任务。

语法
Luacopy 复制
lualib:Npc_GetBindQuests(
    strNpc
)

参数
strNpc

string

 
NPC的GUID

返回值
table

 
绑定的可接任务列表和可交任务列表（存储在lua表中）

返回一个lua表，里面包含两个表，分别是可接任务列表和可交任务列表。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:根据Npc的KeyName取得该Npc的配置表结构下一篇:判断NPC是否存在>
Npc_IsExist
判断NPC是否存在

更新时间：2023-08-14 00:00:00
此函数判断NPC是否存在。

语法
Luacopy 复制
lualib:Npc_IsExist(
    strNpc
)

参数
strNpc

string

 
NPC的GUID

返回值
bool

 
trueNPC存在

falseNPC不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取NPC实体上绑定的任务信息下一篇:清理NPC>
Npc_Remove
清理NPC

更新时间：2023-08-14 00:00:00
此函数作用为清理NPC。

语法
Luacopy 复制
lualib:Npc_Remove(
    strNpc
)

参数
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
<上一篇:判断NPC是否存在
MailEx
给玩家发送一封文本邮件（扩展）

更新时间：2023-08-14 00:00:00
此函数作用为给某个玩家发送一封文本邮件，并且支持设置附件积分数。

语法
Luacopy 复制
lualib:MailEx(
    sender_name,
    receiver_name,
    text,
    gold,
    yuanbao,
    integral,
    item_templates
)

参数
sender_name

string

 
系统名称

例如：“精炼系统”

receiver_name

string

 
收件人姓名（即玩家的姓名）

text

string

 
邮件内容

gold

int32

 
附件金币数

yuanbao

int32

 
附件元宝数

integral

int32

 
附件积分数

item_templates

table

 
附件物品（最大数量为5个）

table格式如下所示：
{
物品1的索引名，物品1的数量，物品1的绑定状态，
物品2的索引名，物品2的数量，物品2的绑定状态
}

note_icon 备注
物品的数量不能超过最大堆叠数。

物品的绑定状态：0不绑定，1绑定。

返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:发送邮件并根据JSON信息生成附件物品（扩展）>
MailJsonItemEx
发送邮件并根据JSON信息生成附件物品（扩展）

更新时间：2023-08-14 00:00:00
此函数作用为给玩家发送邮件并根据JSON字符串生成附件物品，并支持设置附件积分数。

语法
Luacopy 复制
lualib:MailJsonItemEx(
    sender_name,
    receiver_name,
    text,
    gold,
    yuanbao,
    integral,
    json_item
)

参数
sender_name

string

 
系统名称

例如：“精炼系统”

receiver_name

string

 
收件人姓名（即玩家的姓名）

text

string

 
邮件内容

gold

int32

 
附件金币数

yuanbao

int32

 
附件元宝数

integral

int32

 
附件积分数

json_item

string

 
附件物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json直接生成物品的JSON信息。

返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给玩家发送一封文本邮件（扩展）下一篇:发送邮件并根据JSON信息生成附件物品>
MailJsonItem
发送邮件并根据JSON信息生成附件物品

更新时间：2023-08-14 00:00:00
此函数作用为给玩家发送邮件并根据JSON字符串生成附件物品。

语法
Luacopy 复制
lualib:MailJsonItem(
    sender_name,
    receiver_name,
    text,
    gold,
    yuanbao,
    json_item
)

参数
sender_name

string

 
系统名称

例如：“精炼系统”

receiver_name

string

 
收件人姓名（即玩家的姓名）

text

string

 
邮件内容

gold

int32

 
附件金币数

yuanbao

int32

 
附件元宝数

json_item

string

 
附件物品的JSON信息

具体格式请参见此处

note_icon 备注
建议使用接口Item2Json直接生成物品的JSON信息。

返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:发送邮件并根据JSON信息生成附件物品（扩展）下一篇:给某个玩家发送一封文本邮件>
MailJsonItems
给某个玩家发送一封文本邮件

更新时间：2025-07-30 00:00:00
此函数作用是给某个玩家发送一封文本邮件。

语法
Luacopy 复制
lualib:MailJsonItems(
    sender_name,
    receiver_name,
    mail
)
参数
sender_name

string

 
这里一般填系统名称，比如"精炼系统"等等。

receiver_name

string

 
收件人姓名，即玩家的姓名。

mail

table

 
邮件内容，格式如下：

Luacopy 复制
{
    text = "这是一封邮件",  -- 邮件内容
    gold = 10,             -- 邮件金币
    yuanbao = 100,         -- 邮件元宝
    integral = 1000,       -- 邮件积分
    gen_guid = true,       -- 是否重新生成邮件物品的guid
    items = {              -- 邮件物品，json格式，最多5个物品
        {"i":261,"g":"479c1687a2393813","n":"强效金创药","s":0,"a":1,"d":1610,"dm":5000},
        {"i":262,"g":"479c1687a2393814","n":"强效魔法药","s":0,"a":1,"d":1610,"dm":5000},
        {"i":263,"g":"479c1687a2393815","n":"灵元珠","s":0,"a":1,"d":1610,"dm":5000},
    },
}
返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function yjfs(npc, player)

    local item_guid = lualib:Player_GetItemGuid(player, 1) -- 获取玩家武器装备位上的物品的GUID

    lualib:SysMsg_SendWarnMsg(player, "item_guid:" .. item_guid)

    local itemJson = lualib:Item2Json(item_guid) -- 生成对应物品的JSON信息

    local tableList = {
        text = "这是一封邮件", -- 邮件内容
        gold = 10, -- 邮件金币
        yuanbao = 100, -- 邮件元宝
        integral = 1000, -- 邮件积分
        gen_guid = true, -- 是否重新生成邮件物品的guid
        items = {itemJson}
    }
    lualib:MailJsonItems("测试系统", "阿东", tableList)
end

--执行示例代码，如下图所示，邮件发送成功，且guid id发生变化。

MailJsonItems.png

<上一篇:发送邮件并根据JSON信息生成附件物品下一篇:给在线玩家发送一封文本邮件（扩展）>
MailToPlayerEx
给在线玩家发送一封文本邮件（扩展）

更新时间：2023-08-14 00:00:00
此函数作用为给某个在线玩家发送一封文本邮件，并支持设置附件积分数。

语法
Luacopy 复制
lualib:MailToPlayerEx(
    sender_name,
    receiver_guid,
    text,
    gold,
    yuanbao,
    integral,
    item_templates
)

参数
sender_name

string

 
系统名称

例如：“精炼系统”

receiver_guid

string

 
收件人的GUID（即玩家的GUID）

text

string

 
邮件内容

gold

int32

 
附件金币数

yuanbao

int32

 
附件元宝数

integral

int32

 
附件积分数

item_templates

table

 
附件物品（最大数量为5个）

table格式如下所示：
{
物品1的索引名，物品1的数量，物品1的绑定状态，
物品2的索引名，物品2的数量，物品2的绑定状态
}

note_icon 备注
物品的数量不能超过最大堆叠数。

物品的绑定状态：0不绑定，1绑定。

返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给某个玩家发送一封文本邮件下一篇:给在线玩家发送一封文本邮件>
MailToPlayer
给在线玩家发送一封文本邮件

更新时间：2023-08-14 00:00:00
此函数作用为给某个在线玩家发送一封文本邮件。

语法
Luacopy 复制
lualib:MailToPlayer(
    sender_name,
    receiver_guid,
    text,
    gold,
    yuanbao,
    item_templates
)

参数
sender_name

string

 
系统名称

例如：“精炼系统”

receiver_guid

string

 
收件人的GUID（即玩家的GUID）

text

string

 
邮件内容

gold

int32

 
附件金币数

yuanbao

int32

 
附件元宝数

item_templates

table

 
附件物品（最大数量为5个）

table格式如下所示：
{
物品1的索引名，物品1的数量，物品1的绑定状态，
物品2的索引名，物品2的数量，物品2的绑定状态
}

note_icon 备注
物品的数量不能超过最大堆叠数。

物品的绑定状态：0不绑定，1绑定。

返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给在线玩家发送一封文本邮件（扩展）下一篇:给玩家发送一封文本邮件>
Mail
给玩家发送一封文本邮件

更新时间：2023-08-14 00:00:00
此函数作用为给某个玩家发送一封文本邮件。

语法
Luacopy 复制
lualib:Mail(
    sender_name,
    receiver_name,
    text,
    gold,
    yuanbao,
    item_templates
)

参数
sender_name

string

 
系统名称

例如：“精炼系统”

receiver_name

string

 
收件人姓名（即玩家的姓名）

text

string

 
邮件内容

gold

int32

 
附件金币数

yuanbao

int32

 
附件元宝数

item_templates

table

 
附件物品（最大数量为5个）

table格式如下所示：
{
物品1的索引名，物品1的数量，物品1的绑定状态，
物品2的索引名，物品2的数量，物品2的绑定状态
}

note_icon 备注
物品的数量不能超过最大堆叠数。

物品的绑定状态：0不绑定，1绑定。

返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给在线玩家发送一封文本邮件下一篇:给玩家发送文本邮件（不支持发送附件）>
SendMail
给玩家发送文本邮件（不支持发送附件）

更新时间：2023-08-14 00:00:00
此函数作用为给玩家发送一封文本邮件，但不支持发送附件。

语法
Luacopy 复制
lualib:SendMail(
    sender_name,
    receiver_name,
    text
)

参数
sender_name

string

 
系统名称

例如：“精炼系统”

receiver_name

string

 
收件人姓名（即玩家的姓名）

text

string

 
邮件内容

返回值
bool

 
true投递成功

false投递失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--竞技场管理员.lua                 
--竞技场管理员给玩家tips_player[1]发送邮件，内容        
lualib:SendMail(";竞技场管理员";,tips_player[1], tips_player[3]..";接受了您发起的战斗竞技，请尽快回龙场寻找竞技场管理员入场！";)    
<上一篇:给玩家发送一封文本邮件
GetAllCastle
获取服务器中定义的所有城堡

更新时间：2023-08-11 00:00:00
此函数获取服务器中定义的所有城堡列表。

语法
Luacopy 复制
lualib:GetAllCastle()

参数
无

返回值
table

 
城堡列表

存储在Lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local castle_t = lualib:GetAllCastle() 
lualib:Warn("服务器里的表为"..serialize(castle_t))

--此示例代码运行成功如下图所示。

GetAllCastle.png
下一篇:获取参与某城堡战的所有行会的名字>
GetCastleAttackFamily
获取参与某城堡战的所有行会的名字

更新时间：2023-08-11 00:00:00
此函数获取参与某城堡战的所有行会的名字。

语法
Luacopy 复制
lualib:GetCastleAttackFamily(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
string

 
参与城堡战的所有行会的名字（多个行会名字间用&隔开）

格式为：行会1&行会2&行会3&...&行会n

note_icon 备注
若当前城堡未开启城堡战，则会返回空字符串（""）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local attacks = lualib:GetCastleAttackFamily("神歌城")
lualib:Warn("行会名为"..attacks)

--此示例代码运行成功如下图所示。

GetCastleAttackFamily.png
<上一篇:获取服务器中定义的所有城堡下一篇:获取某城堡皇宫地图的GUID>
GetCastleBasiGuid
获取某城堡皇宫地图的GUID

更新时间：2023-08-11 00:00:00
此函数获取某城堡皇宫地图的GUID，即城堡设置表中“皇宫地图”选项配置地图的GUID。

该选项访问路径为：游戏工具平台→游戏配置→其他表格→城堡设置区域。

GetCastleBasiGuid_2.png
语法
Luacopy 复制
lualib:GetCastleBasiGuid(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
string

 皇宫地图的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:GetCastleBasiGuid("神歌城")
if map == "" then
    lualib:Warn("获取皇宫GUID失败")
end
lualib:Warn("执行成功"..map)

--此示例代码运行成功如下图所示。

GetCastleBasiGuid.png
<上一篇:获取参与某城堡战的所有行会的名字下一篇:获取某城堡的数值型自定义变量>
GetCastleCustomVarInt
获取某城堡的数值型自定义变量

更新时间：2023-08-11 00:00:00
此函数获取某城堡的数值型自定义变量。

语法
Luacopy 复制
lualib:GetCastleCustomVarInt(
    strCastleName,
    strKey
)

参数
strCastleName

string

 
城堡名

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
lualib:SetCastleCustomVarInt("神歌城", "award_leader_day_count", 128) --设置“神歌城”的数值型自定义变量award_leader_day_count
local day_count = lualib:GetCastleCustomVarInt("神歌城", "award_leader_day_count")  --获取“神歌城”的数值型自定义变量award_leader_day_count的值
lualib:Warn("获取的值为"..day_count)

--此示例代码运行成功如下图所示。

GetCastleCustomVarInt.png
<上一篇:获取某城堡皇宫地图的GUID下一篇:获取某城堡的字符型自定义变量>
GetCastleCustomVarStr
获取某城堡的字符型自定义变量

更新时间：2023-08-11 00:00:00
此函数获取某城堡的字符型自定义变量。

语法
Luacopy 复制
lualib:GetCastleCustomVarStr(
    strCastleName,
    strKey
)

参数
strCastleName

string

 
城堡名

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
lualib:SetCastleCustomVarStr("神歌城", "streqw", "一个优美的故事")
local day_count = lualib:GetCastleCustomVarStr("神歌城", "streqw")
lualib:Warn("获取的值为"..day_count)

--此示例代码运行成功如下图所示。

SetCastleCustomVarStr.png
<上一篇:获取某城堡的数值型自定义变量下一篇:获取某城堡攻城地图的GUID>
GetCastleMapGuid
获取某城堡攻城地图的GUID

更新时间：2023-08-11 00:00:00
此函数获取某城堡攻城地图的GUID，即城堡设置表中“城堡所在地图”选项配置地图的GUID。

该选项访问路径为：游戏工具平台→游戏配置→其他表格→城堡设置区域。

GetCastleMapGuid_2.png
语法
Luacopy 复制
lualib:GetCastleMapGuid(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
string

 攻城地图的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local castle_map = lualib:GetCastleMapGuid("神歌城")
lualib:Warn("获取的值为"..castle_map)

--此示例代码运行成功如下图所示。

GetCastleMapGuid.png
<上一篇:获取某城堡的字符型自定义变量下一篇:获取某城堡所属行会的名字>
GetCastleOwnFamily
获取某城堡所属行会的名字

更新时间：2023-08-11 00:00:00
此函数获取某城堡所属行会的名字。

语法
Luacopy 复制
lualib:GetCastleOwnFamily(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
string

 
该城堡被占领则返回城堡所属行会的名字

该城堡未被占领则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetCastleOwnFamily("神歌城", "wcc951") --设置“神歌城”所属行会为wcc951
local castle_map = lualib:GetCastleOwnFamily("神歌城") --获取“神歌城”所属行会的名字
lualib:Warn("获取的值为"..castle_map)

--此示例代码运行成功如下图所示。

GetCastleOwnFamily.png
<上一篇:获取某城堡攻城地图的GUID下一篇:获取临时占有指定城堡的行会>
GetCastleTempFamily
获取临时占有指定城堡的行会

更新时间：2023-08-11 00:00:00
此函数获取城堡战开始后临时占有指定城堡的行会的名字。

语法
Luacopy 复制
lualib:GetCastleTempFamily(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
string

 临时占有该城堡的行会的名字
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
<上一篇:获取某城堡所属行会的名字下一篇:判断行会是否参与某城堡战>
HasCastleWar
判断行会是否参与某城堡战

更新时间：2023-08-11 00:00:00
此函数判断行会是否参与某城堡战。

语法
Luacopy 复制
lualib:HasCastleWar(
    strCastleName,
    strFamilyName
)

参数
strCastleName

string

 
城堡名

strFamilyName

string

 
行会的名字

返回值
bool

 
true指定行会参与该城堡战

false指定行会未参与该城堡战

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:HasCastleWar("神歌城","wcc951") then
    lualib:Warn("该行会参与了城堡战")
else
    lualib:Warn("该行会未参与城堡战")
end

--此示例代码运行成功如下图所示。

HasCastleWar.png
<上一篇:获取临时占有指定城堡的行会下一篇:判断某城堡是否存在>
HasCastle
判断某城堡是否存在

更新时间：2023-08-11 00:00:00
此函数判断某城堡是否存在。

语法
Luacopy 复制
lualib:HasCastle(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
bool

 
true指定城堡存在

false指定城堡不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:HasCastle("神歌城") then
    lualib:Warn("存在")
else
    lualib:Warn("不存在")
end

--此示例代码运行成功如下图所示。

HasCastle.png
<上一篇:判断行会是否参与某城堡战下一篇:判断某城堡战是否未注册>
IsCastleWarNull
判断某城堡战是否未注册

更新时间：2023-08-11 00:00:00
此函数判断某城堡战是否未注册。

语法
Luacopy 复制
lualib:IsCastleWarNull(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
bool

 
true指定城堡战未注册

false指定城堡战已注册

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local warTime = lualib:GetAllTime() --获取所有的秒数
local familys = lualib:GetAllFamilys() --获取所有行会的名称列表
local strFamily = ""  
for _, v in pairs(familys) do      
    strFamily = strFamily .. v .. "&"  
end  
strFamily = string.sub(strFamily, 1, -2) --截取字符串strFamily
lualib:StartCastleWarEx("神歌城", strFamily, warTime, 7200) --开启城堡战
if  lualib:IsCastleWarNull("神歌城") then --判断城堡战是否未注册
    lualib:Warn("未注册")
else 
    lualib:Warn("已注册")
end

--此示例代码运行成功如下图所示。

IsCastleWarNull.png
<上一篇:判断某城堡是否存在下一篇:判断某城堡战是否开启>
IsCastleWarStart
判断某城堡战是否开启

更新时间：2023-08-11 00:00:00
此函数判断某城堡战是否开启。

语法
Luacopy 复制
lualib:IsCastleWarStart(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
bool

 
true城堡战开启

false城堡战未开启

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:IsCastleWarStart("神歌城") then
    lualib:Warn("已开启")
else
    lualib:Warn("未开启")
end

--此示例代码运行成功如下图所示。

IsCastleWarStart.png
<上一篇:判断某城堡战是否未注册下一篇:强制修改城堡战参与行会列表>
ModifyCastleAttacks
强制修改城堡战参与行会列表

更新时间：2023-08-11 00:00:00
此函数作用为强制修改城堡攻击行会。

caution_icon警告
必须调用StartCastleWarEx、StartCastleWar接口注册过以后才能强制修改。

语法
Luacopy 复制
lualib:ModifyCastleAttacks(
    strCastleName,
    tAttacks,
    bRemoveAll
)

参数
strCastleName

string

 
城堡名

tAttacks

table

 
参与城堡战的所有行会列表

bRemoveAll

bool

 
是否强制修改原先设置的行会

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
lualib:ModifyCastleAttacks("神歌城", {"行会1", "行会2", "行会3"}, true)
<上一篇:判断某城堡战是否开启下一篇:强制修改城堡战开启时间>
ModifyCastleStart
强制修改城堡战开启时间

更新时间：2023-08-11 00:00:00
此函数作用为强制修改城堡战开启时间。

caution_icon警告
必须调用StartCastleWarEx、StartCastleWar接口注册过以后才能强制修改。

语法
Luacopy 复制
lualib:ModifyCastleStart(
    strCastleName,
    dwTimes,
    dwDuration
)

参数
strCastleName

string

 
城堡名

dwTimes

uint32

 
城堡战开启时间（为UTC时间，可使用接口GetAllTime获取）

单位为秒（s）

dwDuration

uint32

 
持续时间

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
local curTime = lualib:GetAllTime()
lualib:ModifyCastleStart("神歌城",  curTime, 7200) --强制修改城堡战开启时间
<上一篇:强制修改城堡战参与行会列表下一篇:获取玩家所属行会占领的城堡列表>
Player_GetCastleList
获取玩家所属行会占领的城堡列表

更新时间：2023-08-11 00:00:00
此函数获取玩家所属行会占领的所有城堡列表。

语法
Luacopy 复制
lualib:Player_GetCastleList(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
table

 
玩家所属行会占领的所有城堡列表

存储在Lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t_castle = lualib:Player_GetCastleList(player)
if #t_castle == 0 then
    lualib:Warn("你的行会未占领任何城堡")
end   
for i=1,#t_castle do 
    lualib:Warn("你的行会已占领"..t_castle[i])
end

--此示例代码运行成功如下图所示。

Player_GetCastleList.png
<上一篇:强制修改城堡战开启时间下一篇:查询城堡战开始时间>
QueryCastleStart
查询城堡战开始时间

更新时间：2023-08-11 00:00:00
此函数作用为查询城堡战开始时间。

注册城堡战之后再查询城堡开启时间才有实际意义。

语法
Luacopy 复制
lualib:QueryCastleStart(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
uint32

 城堡战开始时间
note_icon 备注
返回值的格式为UTC时间戳，可以使用接口lualib:Time2Str将获取的结果转换为字符串格式。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t = lualib:QueryCastleStart("神歌城") --查询城堡战开始时间
local str = lualib:Time2Str("%Y-%m-%d %H:%M:%S", t)
lualib:Warn("城堡战开始时间为"..str)

--此示例代码运行成功如下图所示。

QueryCastleStart.png
<上一篇:获取玩家所属行会占领的城堡列表下一篇:设置某城堡的数值型自定义变量>
SetCastleCustomVarInt
设置某城堡的数值型自定义变量

更新时间：2023-08-11 00:00:00
此函数设置某城堡的数值型自定义变量。

语法
Luacopy 复制
lualib:SetCastleCustomVarInt(
    strCastleName,
    strKey,
    iValue
)

参数
strCastleName

string

 
城堡名

strKey

string

 
变量名

iValue

int32

 
变量值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetCastleCustomVarInt("神歌城", "award_leader_day_count", 128) --设置“神歌城”的数值型自定义变量award_leader_day_count
local day_count = lualib:GetCastleCustomVarInt("神歌城", "award_leader_day_countx")  --获取“神歌城”的数值型自定义变量award_leader_day_count的值
lualib:Warn("获取的值为"..day_count)

--此示例代码运行成功如下图所示。

GetCastleCustomVarInt.png
<上一篇:查询城堡战开始时间下一篇:设置某城堡的字符型自定义变量>
SetCastleCustomVarStr
设置某城堡的字符型自定义变量

更新时间：2023-08-11 00:00:00
此函数设置某城堡的字符型自定义变量。

语法
Luacopy 复制
lualib:SetCastleCustomVarStr(
    strCastleName,
    strKey,
    strValue
)

参数
strCastleName

string

 
城堡名

strKey

string

 
变量名

strValue

string

 
变量值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetCastleCustomVarStr("神歌城", "streqw", "一个优美的故事")
local day_count = lualib:GetCastleCustomVarStr("神歌城", "streqw")
lualib:Warn("获取的值为"..day_count)

--此示例代码运行成功如下图所示。

SetCastleCustomVarStr.png
<上一篇:设置某城堡的数值型自定义变量下一篇:设置某城堡所属行会的名字>
SetCastleOwnFamily
设置某城堡所属行会的名字

更新时间：2023-08-11 00:00:00
此函数设置某城堡所属行会的名字。

语法
Luacopy 复制
lualib:SetCastleOwnFamily(
    strCastleName,
    strFamilyName
)

参数
strCastleName

string

 
城堡名

strFamilyName

string

 
城堡所属行会的名字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetCastleOwnFamily("神歌城", "wcc951") --设置“神歌城”所属行会为wcc951
local castle_map = lualib:GetCastleOwnFamily("神歌城") --获取“神歌城”所属行会的名字
lualib:Warn("获取的值为"..castle_map)

--此示例代码运行成功如下图所示。

GetCastleOwnFamily.png
<上一篇:设置某城堡的字符型自定义变量下一篇:设置临时占有指定城堡的行会>
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
<上一篇:设置某城堡所属行会的名字下一篇:开启城堡战（扩展）>
StartCastleWarEx
开启城堡战（扩展）

更新时间：2023-08-11 00:00:00
此函数作用为开启城堡战。

note_icon 备注
此接口与接口StartCastleWar的区别在于设置的城堡战开启时间的格式（参数dwStartTime）。

语法
Luacopy 复制
lualib:StartCastleWarEx(
    strCastleName,
    strFamilys,
    dwStartTime,
    dwDuration
)

参数
strCastleName

string

 
城堡名

strFamilys

string

 
参与城堡战的所有行会名称（多个行会名称用“&”分隔）

格式为：行会1&行会2&行会3&...&行会n

dwStartTime

uint32

 
城堡战开启时间（为UTC时间，可使用接口GetAllTime获取）

单位为秒（s）

dwDuration

uint32

 
持续时间

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
local warTime = lualib:GetAllTime() --获取所有的秒数
local familys = lualib:GetAllFamilys() --获取所有行会的名称列表
local strFamily = ""  
for _, v in pairs(familys) do      
    strFamily = strFamily .. v .. "&"  
end  
strFamily = string.sub(strFamily, 1, -2) --截取字符串strFamily
lualib:StartCastleWarEx("神歌城", strFamily, warTime, 7200) --开启城堡战

--此示例代码运行成功后，会开启城堡战。
<上一篇:设置临时占有指定城堡的行会下一篇:开启城堡战>
StartCastleWar
开启城堡战

更新时间：2023-08-11 00:00:00
此函数作用为开启城堡战。

note_icon 备注
此接口与接口StartCastleWarEx的区别在于设置的城堡战开启时间的格式（参数dwStartTime）。

语法
Luacopy 复制
lualib:StartCastleWar(
    strCastleName,
    strFamilys,
    strStartTime,
    dwDuration
)

参数
strCastleName

string

 
城堡名

strFamilys

string

 
参与城堡战的所有行会名称（多个行会名称用“&”分隔）

格式为：行会1&行会2&行会3&...&行会n

strStartTime

string

 
城堡战开启时间

格式为：Y-m-d H:M:S

例如：2012-10-20 20:30:00

dwDuration

uint32

 
持续时间

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
local warTime = lualib:Now() --获取当前时间
local familys = lualib:GetAllFamilys() --获取所有行会的名称列表
local strFamily = ""
for _, v in pairs(familys) do
    strFamily = strFamily .. v .. "&"
end
strFamily = string.sub(strFamily, 1, -2) --截取字符串strFamily
lualib:StartCastleWar("神歌城", strFamily, warTime, 7200) --开启城堡战

--此示例代码运行成功后，会开启城堡战。
<上一篇:开启城堡战（扩展）下一篇:结束城堡战>
StopCastleWar
结束城堡战

更新时间：2023-08-11 00:00:00
此函数作用为结束城堡战。

语法
Luacopy 复制
lualib:StopCastleWar(
    strCastleName
)

参数
strCastleName

string

 
城堡名

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:StopCastleWar("神歌城") then
    lualib:Warn("停止成功") 
end

--此示例代码运行成功后，会结束城堡战。
<上一篇:开启城堡战
SendMigrateZoneMessage
发送消息到跨服服务器

更新时间：2023-08-11 00:00:00
此函数作用为发送消息到跨服服务器。

语法
Luacopy 复制
lualib:SendMigrateZoneMessage(
    dst_zone_id,
    msg
)

参数
dst_zone_id

uint32

 
目标区的区服ID

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
下一篇:启动玩家角色数据跨服（扩展）>
StartMigrateEx
启动玩家角色数据跨服（扩展）

更新时间：2023-08-11 00:00:00
此函数指定在线玩家角色数据跨服到指定的服务器上。

note_icon 备注
调用此接口后，无论是否跨服成功都会回调设置的call_back_func函数。

语法
Luacopy 复制
lualib:StartMigrateEx(
    player_guid,
    dst_zone_id,
    new_name,
    call_back_func,
    param
)

参数
player_guid

string

 
准备跨服的角色GUID

dst_zone_id

uint32

 
目标区的区服ID

new_name

string

 
玩家在目标区的新名字

call_back_func

string

 
跨服操作完成后回调的脚本函数名

param

string

 
预设的回调函数参数

返回值
string

 
启动成功则返回空字符串（""）

启动失败则返回失败原因

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function qianyi(player, param)
    local ret = lualib:StartMigrateEx(player, 87373, "new_name", "migrate_result", "abc")
    if ret ~= "" then
        lualib:SysWarnMsg(player, "数据迁移出错:"..ret)
    end
end
function migrate_result(player, err, param)
    lualib:SysWarnMsg(player, "数据迁移结果:"..err)
end
<上一篇:发送消息到跨服服务器下一篇:启动玩家角色数据跨服>
StartMigrate
启动玩家角色数据跨服

更新时间：2023-08-11 00:00:00
此函数指定在线玩家角色数据跨服到指定的服务器上。

note_icon 备注
调用此接口后，无论是否跨服成功都会回调设置的call_back_func函数。

语法
Luacopy 复制
lualib:StartMigrate(
    player_guid,
    dst_zone_id,
    call_back_func,
    param
)

参数
player_guid

string

 
准备跨服角色的GUID

dst_zone_id

uint32

 
目标区的区服ID

call_back_func

string

 
跨服操作完成后回调的脚本函数名

param

string

 
预设的回调函数参数

返回值
string

 
启动成功则返回空字符串（""）

启动失败则返回失败原因

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function qianyi(player, param)
local ret = lualib:StartMigrate(player, 87373, "migrate_result", "abc")
    if ret ~= "" then
    lualib:SysWarnMsg(player, "数据迁移出错:"..ret)
    end
end
function migrate_result(player, err, param)
    lualib:SysWarnMsg(player, "数据迁移结果:"..err)
end
<上一篇:启动玩家角色数据跨服（扩展）
GetMobaRoomMembers
获取MOBA房间成员

更新时间：2023-08-11 00:00:00
此函数获取MOBA房间成员的GUID。

语法
Luacopy 复制
lualib:GetMobaRoomMembers(
    iRoomId
)

参数
iRoomId

int32

 
房间ID

返回值
table

 
房间所有成员的GUID

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:创建一个MOBA房间>
Moba_CreateRoom
创建一个MOBA房间

更新时间：2023-08-11 00:00:00
此函数作用为创建一个MOBA房间。

语法
Luacopy 复制
lualib:Moba_CreateRoom(
    player_guid,
    room_name,
    vs_num,
    map_id,
    mode,
    pwd
)
参数
player_guid

string

 
创建房间的房主GUID

room_name

string

 
创建的房间的名字

vs_num

int16

 
创建的房间的对战人数（即几对几）

caution_icon注意
对战人数要填5以上的数值，即最少5v5。

map_id

int16

 
创建的房间的地图ID

mode

int16

 
创建的房间的模式

0MOBA（5v5或10v10）

1攻城

pwd

string

 
创建的房间的密码

返回值
int

 
创建的房间号

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function CreateRoom(player,roomName,vsNum,mapId,mode,pwd) --创建MOBA房间
    local vsNum = tonumber(vsNum)
    local mapId = tonumber(mapId)
    local mode = tonumber(mode)
    local roomId = lualib:Moba_CreateRoom(player,roomName,vsNum,mapId,mode,pwd)
    lualib:Warn(lualib:Name(player).." 通过函数创建了 房间 "..roomId)
    lualib:ShowFormWithContent(player,"脚本表单","MOBALobby.EnterCreateRoom()")
end

--此示例代码运行成功如下图所示。

Moba_CreateRoom
<上一篇:获取MOBA房间成员下一篇:玩家进入一个MOBA房间>
Moba_EnterRoom
玩家进入一个MOBA房间

更新时间：2021-09-07 00:00:00
此函数让玩家进入一个MOBA房间。

语法
Luacopy 复制
lualib:Moba_EnterRoom(
    player_guid,
    pwd,
    room_id
)
参数
player_guid

string

 
要进入房间的角色GUID

pwd

string

 
要进入房间的密码

room_id

int

 
要进入的房间ID

返回值
bool

 
是否进入成功

true进入成功

false进入失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function EnterRoom(player,pwd,roomId)
    if lualib:Moba_EnterRoom(player,pwd,tonumber(roomId)) then
        lualib:Warn(lualib:Name(player).." 通过函数进入了 房间 "..roomId)
    end
end

--房间密码错误时，运行如下图所示。

Moba_EnterRoom

--房间密码正确时，运行如下图所示。

Moba_EnterRoom_2
<上一篇:创建一个MOBA房间下一篇:使玩家离开MOBA房间>
Moba_ExitRoom
使玩家离开MOBA房间

更新时间：2021-09-07 00:00:00
此函数使玩家离开MOBA房间。

语法
Luacopy 复制
lualib:Moba_ExitRoom(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function ExitRoom(player)
    lualib:Moba_ExitRoom(player) 
    lualib:Warn(lualib:Name(player).." 通过函数强离开房间")
end

--此示例代码运行成功如下图所示。


<上一篇:玩家进入一个MOBA房间下一篇:强制开启MOBA房间内的游戏>
Moba_ForceStartGame
强制开启MOBA房间内的游戏

更新时间：2021-09-07 00:00:00
此函数强制开启MOBA房间内的游戏，无论房间内的玩家是否已准备。

语法
Luacopy 复制
lualib:Moba_ForceStartGame(
    room_id
)
参数
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
function ForceStartGame(player,roomId)
    lualib:Moba_ForceStartGame(tonumber(roomId))
    lualib:Warn(lualib:Name(player).." 通过函数强制开启游戏 "..roomId)
end

--示例代码运行如下图所示。

Moba_ForceStartGame
<上一篇:使玩家离开MOBA房间下一篇:获取所有的MOBA房间列表>
Moba_GetAllRoomList
获取所有的MOBA房间列表

更新时间：2023-08-11 00:00:00
此函数获取所有的MOBA房间列表。

语法
Luacopy 复制
lualib:Moba_GetAllRoomList()
参数
无

返回值
table

 
所有的MOBA房间列表

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetAllRoomList(player)
    local tbl = lualib:Moba_GetAllRoomList()
    lualib:Warn(lualib:Name(player).." 通过函数获得房间列表 "..serialize(tbl))
end

--此示例代码运行成功如下图所示。


<上一篇:强制开启MOBA房间内的游戏下一篇:获取MOBA房间内的阵营准备状态>
Moba_GetCampStatus
获取MOBA房间内的阵营准备状态

更新时间：2021-09-07 00:00:00
此函数获取MOBA房间内的阵营准备状态。

语法
Luacopy 复制
lualib:Moba_GetCampStatus(
    room_id,
    camp
)
参数
room_id

int32

 
房间ID

camp

int16

 
要获取的阵营

1红色方

2蓝色方

返回值
bool

 
阵营准备状态

true准备

false未准备

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetCampStatus(player,roomId,camp)
    if lualib:Moba_GetCampStatus(tonumber(roomId),tonumber(camp)) then
        lualib:Warn(lualib:Name(player).." 通过函数获得当前阵营状态 true "..camp)
    else
        lualib:Warn(lualib:Name(player).." 通过函数获得当前阵营状态 false "..camp)
    end
end

--此示例代码运行成功如下图所示。


<上一篇:获取所有的MOBA房间列表下一篇:获取MOBA房间内玩家准备状态>
Moba_GetPlayerStatus
获取MOBA房间内玩家准备状态

更新时间：2021-09-07 00:00:00
此函数获取MOBA房间内玩家准备状态。

语法
Luacopy 复制
lualib:Moba_GetPlayerStatus(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
bool

 
玩家准备状态

true准备

false未准备

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function SetMemberReadyStatus(player,param)
    if lualib:Moba_SetMemberReadyStatus(player,tonumber(param) == 1)  then --设置MOBA房间内玩家的准备状态
        if tonumber(param) == 1 then
            lualib:Warn(lualib:Name(player).." 通过函数设置状态 true")
        else
            lualib:Warn(lualib:Name(player).." 通过函数设置状态 false")
        end
    end
    GetPlayerStatus(player)
end

function GetPlayerStatus(player)
    if lualib:Moba_GetPlayerStatus(player) then
        lualib:Warn(lualib:Name(player).." 通过函数获得当前状态 true")
    else
        lualib:Warn(lualib:Name(player).." 通过函数获得当前状态 false")
    end
end

--此示例代码运行成功如下图所示。

Moba_GetPlayerStatus
<上一篇:获取MOBA房间内的阵营准备状态下一篇:获取MOBA房间状态>
Moba_GetRoomStatus
获取MOBA房间状态

更新时间：2021-09-07 00:00:00
此函数获取MOBA房间状态。

语法
Luacopy 复制
lualib:Moba_GetRoomStatus(
    room_id
)
参数
room_id

int

 
房间ID

返回值
int32

 
返回MOBA房间状态

0获取错误

1在等待状态

2在游戏中

3游戏结束

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetRoomStatus(player,roomId)
    lualib:Warn(lualib:Name(player).." 通过函数获得房间状态 "..lualib:Moba_GetRoomStatus(tonumber(roomId)).. " 房间 " ..roomId)
end

--此示例代码运行成功如下图所示。

Moba_GetRoomStatus
<上一篇:获取MOBA房间内玩家准备状态下一篇:设置MOBA房间内玩家的准备状态>
Moba_SetMemberReadyStatus
设置MOBA房间内玩家的准备状态

更新时间：2021-09-07 00:00:00
此函数设置MOBA房间内玩家的准备状态。

语法
Luacopy 复制
lualib:Moba_SetMemberReadyStatus(
    player_guid,
    ready
)
参数
player_guid

string

 
玩家角色的GUID

ready

bool

 
true准备

false取消准备

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
function SetMemberReadyStatus(player,param)
    if lualib:Moba_SetMemberReadyStatus(player,tonumber(param) == 1)  then
        if tonumber(param) == 1 then
            lualib:Warn(lualib:Name(player).." 通过函数设置状态 true")
        else
            lualib:Warn(lualib:Name(player).." 通过函数设置状态 false")
        end
    end
    GetPlayerStatus(player)
end

function GetPlayerStatus(player)
    if lualib:Moba_GetPlayerStatus(player) then --获取MOBA房间内玩家准备状态
        lualib:Warn(lualib:Name(player).." 通过函数获得当前状态 true")
    else
        lualib:Warn(lualib:Name(player).." 通过函数获得当前状态 false")
    end
end

--此示例代码运行成功如下图所示。

Moba_SetMemberReadyStatus
<上一篇:获取MOBA房间状态下一篇:设置玩家阵营>
Moba_SetPlayerCamp
设置玩家阵营

更新时间：2021-09-07 00:00:00
此函数设置玩家阵营。

语法
Luacopy 复制
lualib:Moba_SetPlayerCamp(
    player_guid,
    camp
)
参数
player_guid

string

 
玩家角色的GUID

camp

int16

 
设置的玩家阵营

1红色阵营

2蓝色阵营

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
function SetPlayerCamp(player,param)
    if lualib:Moba_SetPlayerCamp(player,tonumber(param)) then
        lualib:Warn(lualib:Name(player).." 通过函数转换阵营"..param)
    end
end

--此示例代码运行成功如下图所示。

Moba_SetPlayerCamp
<上一篇:设置MOBA房间内玩家的准备状态下一篇:获取玩家MOBA房间阵营>
Player_GetMobaRoomCamp
获取玩家MOBA房间阵营

更新时间：2023-08-11 00:00:00
此函数获取玩家MOBA房间阵营。

语法
Luacopy 复制
lualib:Player_GetMobaRoomCamp(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
int32

 
玩家阵营

-1不在MOBA房间

1红方阵营

2蓝方阵营

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置玩家阵营下一篇:获取玩家所在MOBA房间的ID>
Player_GetMobaRoomId
获取玩家所在MOBA房间的ID

更新时间：2023-08-11 00:00:00
此函数获取玩家所在MOBA房间的ID。

语法
Luacopy 复制
lualib:Player_GetMobaRoomId(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
int32

 
MOBA房间ID

0表示玩家不在房间中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取玩家MOBA房间阵营下一篇:设置MOBA房间房主>
SetMobaRoomHost
设置MOBA房间房主

更新时间：2023-08-11 00:00:00
此函数设置MOBA房间房主

当红方只有房主一人时，如果房主退出后，蓝方还有人的话，房间不会被销毁；此时，蓝方会变成红方，并在原来蓝方阵营中选出房主。

语法
Luacopy 复制
lualib:SetMobaRoomHost(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local target = lualib:Name2Guid("贯丘沐川")
lualib:Warn(tostring(lualib:SetMobaRoomHost(target)))

--此示例代码运行成功如下图所示。

SetMobaRoomHost
<上一篇:获取玩家所在MOBA房间的ID
IsOffline
判断玩家是否离线挂机

更新时间：2023-08-11 00:00:00
此函数判断玩家是否处于离线挂机状态。

语法
Luacopy 复制
lualib:IsOffline(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true玩家处于离线挂机状态

false玩家不处于离线挂机状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local map = lualib:MapGuid(player) --获取当前玩家所在地图的GUID
local tableplayer = {}
tableplayer = lualib:Map_GetMapPlayers(map, true) --获取当前地图上的玩家GUID列表（忽略死亡角色）
--判断玩家是否处于离线挂机状态
for i = 1 ,#tableplayer do
    if lualib:IsOffline(tableplayer[i]) then      
        lualib:Warn("玩家"..tableplayer[i].."处于离线挂机状态") 
    else
        lualib:Warn("玩家"..tableplayer[i].."不处于离线挂机状态")
    end
end

--此示例代码运行成功后，会判断当前地图上的玩家是否处于离线挂机状态，同时游戏日志中还会打印相关内容。

IsOffline.png
下一篇:设置开启自动挂机后的具体功能>
SetAutoOpt
设置开启自动挂机后的具体功能

更新时间：2023-08-11 00:00:00
此函数设置开启自动挂机后的具体功能，包括是否开启自动打怪的功能、是否开启自动拾取道具的功能以及挂机的时间。

note_icon 备注
此函数目前功能无效。

语法
Luacopy 复制
lualib:SetAutoOpt(
    player_guid,
    is_auto_fight,
    is_auto_pick,
    time
)

参数
player_guid

string

 
玩家角色的GUID

is_auto_fight

bool

 
是否开启自动打怪的功能

true开启

false不开启

is_auto_pick

bool

 
是否开启自动拾取道具的功能

true开启

false不开启

time

uint32

 
挂机时间

单位为秒（s）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:判断玩家是否离线挂机下一篇:设置玩家离线挂机>
SetOffline
设置玩家离线挂机

更新时间：2024-02-07 00:00:00
此函数设置玩家离线挂机并设置离线挂机的时间。

语法
Luacopy 复制
lualib:SetOffline(
    strPlayer,
    dwTimes
)

参数
strPlayer

string

 
玩家角色的GUID

dwTimes

uint32

 
挂机时间

单位为秒（s）

note_icon 备注
此参数的配置值不能超过4233600（49天）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetOffline(player, 7200) --设置离线挂机时间为7200秒（2小时）
<上一篇:设置开启自动挂机后的具体功能下一篇:让指定玩家开始挂机>
StartAutoRun
让指定玩家开始挂机

更新时间：2023-08-11 00:00:00
此函数通知客户端让指定玩家开始挂机。

语法
Luacopy 复制
lualib:StartAutoRun(
    player_guid,
    opt
)

参数
player_guid

string

 
玩家角色的GUID

opt

string

 
挂机选项字符串

note_icon 备注
此参数无效，可以设置为空字符串（""）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:StartAutoRun(player, "")

--此示例代码运行成功后，玩家开始自动挂机。
<上一篇:设置玩家离线挂机下一篇:让指定玩家停止挂机>
StopAutoRun
让指定玩家停止挂机

更新时间：2023-08-11 00:00:00
此函数通知客户端让指定玩家停止挂机。

语法
Luacopy 复制
lualib:StopAutoRun(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:StopAutoRun(player)

--此示例代码运行成功后，玩家停止自动挂机。
<上一篇:让指定玩家开始挂机
AntiIndulgeExpire
强制让玩家的沉迷状态过期

更新时间：2023-08-11 00:00:00
此函数作用为强制让玩家的沉迷状态过期，此时玩家的经验收益会恢复正常。

此函数仅在本次登录时生效，玩家返回选角界面后重新登录会失效。

语法
Luacopy 复制
lualib:AntiIndulgeExpire(
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
lualib:AntiIndulgeExpire(player) --让玩家的沉迷状态过期
local param1 = lualib:Player_GetAntiIndulge(player) --获取玩家的防沉迷状态
if param1 == 0 then
    lualib:Warn("你当前已进入防沉迷状态，无经验收益")
elseif param1 == 1 then
    lualib:Warn("你当前已进入防沉迷状态，经验收益减半")
else
    lualib:Warn("你当前未进入防沉迷状态，经验收益正常")
end

--此示例代码运行成功如下图所示。

AntiIndulgeExpire.png
下一篇:获取玩家账号实名认证的状态>
IsAccountVerified
获取玩家账号实名认证的状态

更新时间：2022-02-11 00:00:00
此函数获取玩家账号实名认证的状态。

语法
Luacopy 复制
lualib:IsAccountVerified(
    userid,
    callback,
    param_list
)
参数
userid

int32

 
玩家的账号ID

callback

string

 
回调函数名

回调函数格式：Callback(strParam, error, result)

strParam(string)：预设的回调函数参数

error(int)：错误码

result(string)：获取的实名认证结果，为JSON格式。例如：

{"state":"0","userId":39660377,"age":0,"msg":"成功","accounttype":"0"}

名称和值的描述：

"state"：0代表实名未认证；1代表实名认证已通过；2代表实名认证未通过

"userId"：玩家的账号ID

"age"：玩家的年龄

"msg"：消息，供日志使用

"accounttype"：玩家的账号类型（0玩家的年龄在18周岁以上；1玩家的年龄在16周到18周岁之间；2玩家的年龄在8周到16周岁之间；3玩家的年龄在8周岁以下）

param_list

string

 
预设的回调函数参数

返回值
bool

 
投递请求是否成功

true投递请求成功

false投递请求失败

note_icon 备注
投递请求成功只代表执行成功，具体是否获取成功以实际操作为准。

版本历史
v1.0

 
首次发布

 
v1.1

 
回调函数中的result参数获取的结果中新增accounttype字段

示例代码
Luacopy 复制
local userId = tostring(lualib:UserID(player))
lualib:IsAccountVerified(userId, 'AgeCallback', "")

function AgeCallback(player, errno, result)
    local ret = json.decode(result) --JSON转换为lua对象
    if ret["state"] == "0" or ret["state"] == "2" then
        lualib:Warn("您未实名认证或实名认证未通过，请尽快进行实名认证！")
    elseif tonumber(ret["accounttype"]) >= 1 then 
        lualib:Warn("实名限制：您是未成年人，请合理安排游戏时间。") 
    end
    return ""
end

--当玩家未实名认证时，此示例代码运行效果如下图所示。

IsAccountVerified_2.png

--当玩家的年龄小于18周岁时，此示例代码运行效果如下图所示。

IsAccountVerified.png
<上一篇:强制让玩家的沉迷状态过期下一篇:判断玩家账号是否为防沉迷账号>
IsAntiIndulge
判断玩家账号是否为防沉迷账号

更新时间：2023-08-11 00:00:00
此函数判断玩家账号是否为防沉迷账号。

语法
Luacopy 复制
lualib:IsAntiIndulge(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
bool

 
true玩家账号是防沉迷账号

false玩家账号不是防沉迷账号

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:IsAntiIndulge(player) then
    lualib:Warn("此账号是防沉迷账号！")
else
    lualib:Warn("此账号不是防沉迷账号！")
end

--此示例代码运行成功如下图所示。

IsAntiIndulge.png
<上一篇:获取玩家账号实名认证的状态下一篇:获取玩家的防沉迷状态>
Player_GetAntiIndulge
获取玩家的防沉迷状态

更新时间：2023-08-11 00:00:00
此函数获取玩家的防沉迷状态。

语法
Luacopy 复制
lualib:Player_GetAntiIndulge(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
int32

 
0无经验收益

1经验收益减半

2经验收益正常

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local param = lualib:Player_GetAntiIndulge(player) --获取玩家的防沉迷状态
if param == 0 then
    lualib:Warn("你当前已进入防沉迷状态，无经验收益")
elseif param == 1 then
    lualib:Warn("你当前已进入防沉迷状态，经验收益减半")
else
    lualib:Warn("你当前未进入防沉迷状态，经验收益正常")
end

--此示例代码运行成功如下图所示。

Player_GetAntiIndulge.png
<上一篇:判断玩家账号是否为防沉迷账号下一篇:设置玩家的防沉迷状态>
Player_SetAntiIndulge
设置玩家的防沉迷状态

更新时间：2023-08-11 00:00:00
此函数设置玩家的防沉迷状态。

语法
Luacopy 复制
lualib:Player_SetAntiIndulge(
    strPlayer,
    dwType
)

参数
strPlayer

string

 
玩家角色的GUID

dwType

uint32

 
0无经验收益

1经验收益减半

2经验收益正常

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_SetAntiIndulge(player,0) --设置玩家进入防沉迷状态且无经验收益

--此示例代码运行成功后，玩家成功进入进入防沉迷状态且无经验收益。
<上一篇:获取玩家的防沉迷状态
GetClientCheckInfo
获取客户端的校验信息

更新时间：2023-11-08 00:00:00
此函数获取客户端的校验信息。

语法
Luacopy 复制
lualib:GetClientCheckInfo(
    player_guid,
    call_back,
    param,
    time_out
)

参数
player_guid

string

 
目标客户端的角色GUID

call_back

string

 
回调函数名

回调函数格式：call_back(player, param, info_table, is_timeout)

player(string)：玩家角色的GUID

param(string)：预设的回调函数参数

info_table(table)：客户端返回的校验信息

note_icon 备注
客户端返回的校验信息是一个包含10个元素的数组。

该数组中部分元素的含义如下（其余元素暂未使用）：

第2个元素的值代表当前累计开启自动挂机的次数，下次执行此接口时会重新计算；

第3个元素的值代表打开客户端的数量；

第4个元素的值代表同属该代理的客户端打开数量；

第5个元素的值代表该区服的客户端打开数量。

is_timeout(bool)：是否校验超时（true代表校验超时，false代表校验未超时，校验信息的超时时间由参数time_out设置）

param

string

 
预设的回调函数参数

time_out

uint32

 
获取校验信息的超时时间

单位为毫秒（ms）

note_icon 备注
当收到客户端返回的校验信息或者设置的获取校验信息的超时时间已到时，才会回调call_back函数。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GetClientCheckInfo(player,"CheckInfo","2",100)

function CheckInfo(player, param, info_table, is_timeout)
    lualib:SysPromptMsg(player,"param:"..param.."||info_table:"..tostring(info_table).."||is_timeout:"..tostring(is_timeout))
    for i = 1 ,#info_table do 
      lualib:SysPromptMsg(player,i.."="..info_table[i])
    end    
end

--此示例代码运行成功如下图所示。

GetClientCheckInfo.png

GetClientCheckInfo_2.png
下一篇:获取客户端的类型>
GetClientType
获取客户端的类型

更新时间：2023-08-11 00:00:00
此函数获取客户端的类型。

语法
Luacopy 复制
lualib:GetClientType(
    player_guid
)

参数
player_guid

string

 
角色的GUID

返回值
uint8

 
客户端类型

02D端游

1页游

22D手游

3H5

43D端游

53D手游

版本历史
v1.0

 
首次发布

 
v1.1

 
新增获取客户端的类型：

43D端游

53D手游

示例代码
Luacopy 复制
local param = lualib:GetClientType(player)
if param == 0 then
    lualib:Warn("当前客户端类型为2D端游")
elseif param == 1 then
    lualib:Warn("当前客户端类型为页游")
elseif param == 2 then
    lualib:Warn("当前客户端类型为2D手游")
elseif param == 3 then
    lualib:Warn("当前客户端类型为H5")
elseif param == 4 then
    lualib:Warn("当前客户端类型为3D端游")
else
    lualib:Warn("当前客户端类型为3D手游")
end

--此示例代码运行成功如下图所示。

GetClientType.png
<上一篇:获取客户端的校验信息下一篇:获取客户端版本号（扩展）>
GetClientVerEx
获取客户端版本号（扩展）

更新时间：2023-08-16 00:00:00
此函数获取最新的客户端版本号。

语法
Luacopy 复制
lualib:GetClientVerEx(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 最新的客户端版本号
note_icon 备注
若无法获取到客户端版本号，可尝试使用接口lualib:RequestClientVer向客户端发送一个请求获取客户端版本号的协议，然后使用接口lualib:DelayCall添加一个延时回调并在对应的回调函数中使用接口lualib:GetClientVerEx获取版本号。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local param = lualib:GetClientVerEx(player)
lualib:Warn("客户端版本号为:"..param)

--此示例代码运行成功如下图所示。

GetClientVerEx.png
<上一篇:获取客户端的类型下一篇:获取客户端版本号>
GetClientVer
获取客户端版本号

更新时间：2023-08-11 00:00:00
此函数获取当前客户端的版本号。

语法
Luacopy 复制
lualib:GetClientVer(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 当前客户端的版本号
note_icon 备注
玩家刚上线时可能无法成功获取到客户端版本号，会返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local param = lualib:GetClientVer(player)
lualib:Warn("当前客户端版本号为:"..param)

--此示例代码运行成功如下图所示。

GetClientVer.png
<上一篇:获取客户端版本号（扩展）下一篇:获取最新上线玩家所使用的客户端的版本号>
GetGSClientVer
获取最新上线玩家所使用的客户端的版本号

更新时间：2023-08-11 00:00:00
此函数获取最新上线玩家所使用的客户端的版本号。

若该客户端版本在线人数大于等于5，则返回该客户端版本号；

若该客户端版本在线人数小于5，则返回上一个在线人数大于等于5的客户端的版本号。

语法
Luacopy 复制
lualib:GetGSClientVer()

参数
无

返回值
uint32

 获取最新上线玩家所使用的客户端的版本号
note_icon 备注
若无法获取到客户端版本号，可尝试使用接口lualib:RequestClientVer向客户端发送一个请求获取客户端版本号的协议，然后使用接口lualib:DelayCall添加一个延时回调并在对应的回调函数中使用接口lualib:GetGSClientVer获取版本号。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local param = lualib:GetGSClientVer()
lualib:Warn("最新的客户端版本号为:"..param)

--此示例代码运行成功如下图所示。

GetGSClientVer.png
<上一篇:获取客户端版本号下一篇:获取玩家移动客户端类型>
GetMobileClientType
获取玩家移动客户端类型

更新时间：2023-08-11 00:00:00
此函数获取玩家移动客户端的类型。

语法
Luacopy 复制
lualib:GetMobileClientType(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
int32

 
移动客户端类型

0Android

1iOS

小于0表示PC端或者未知移动客户端

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local param = lualib:GetMobileClientType(player)
if param == 0 then
    lualib:Warn("当前移动客户端类型为android")
elseif param == 1 then
    lualib:Warn("当前移动客户端类型为iOS")
else
    lualib:Warn("当前客户端类型为PC端或者未知移动客户端")
end

--此示例代码运行成功如下图所示。

GetMobileClientType.png
<上一篇:获取最新上线玩家所使用的客户端的版本号下一篇:向客户端批量发送变量通知>
NotifyVarList
向客户端批量发送变量通知

更新时间：2025-08-22 00:00:00
此函数向游戏客户端批量发送变量通知，具体功能由客户端自行解析。

语法
Luacopy 复制
lualib:NotifyVarList(
    strObject,
    key_list
)
参数
strObject

string

 
对象的GUID，可以是玩家、怪物、NPC、物品

key_list

table

 
变量列表，table格式为["a","b"]

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--服务端脚本：
function tz(npc,player)
    
    lualib:SetInt(player, "flag1", 1)
    lualib:SetInt(player, "flag2", 2)
    lualib:SetInt(player, "flag3", 3)

    lualib:NotifyVarList(player,{"flag1","flag2","flag3"})
end

--客户端获取：
if CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID) then -- 获取玩家角色自身的GUID
    local flag1 = CL:GetPlayerCustomIntData(LuaRet, "flag1")
    local flag2 = CL:GetPlayerCustomIntData(LuaRet, "flag2")
    local flag3 = CL:GetPlayerCustomIntData(LuaRet, "flag3")
    msg("flag1:" .. flag1 .. " | flag2:" .. flag2 .. " | flag3:" .. flag3)
end

--执行示例代码，如下图所示，客户端能正常通知。

NotifyVarList.png
<上一篇:获取玩家移动客户端类型下一篇:获取玩家当前登录的登录器分组ID>
Player_GetDlqGroupID
获取玩家当前登录的登录器分组ID

更新时间：2023-05-26 00:00:00
此函数获取玩家当前登录的登录器分组ID。

note_icon 备注

若使用普通登录器，则登录器分组ID和游戏分组ID相同（即此接口返回的数据与接口lualib:Player_GetGameGroupID返回的数据相同）；

若使用神途一起推登录器，则登录器分组ID和游戏分组ID不一定相同（即此接口返回的数据与接口lualib:Player_GetGameGroupID返回的数据不一定相同）。

语法
Luacopy 复制
lualib:Player_GetDlqGroupID(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 
玩家当前登录的登录器分组ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id1 = lualib:Player_GetDlqGroupID(player) --获取玩家当前登录的登录器分组ID
lualib:Warn("玩家当前登录的登录器分组ID为"..id1)
local id2 = lualib:Player_GetGameGroupID(player) --获取玩家当前登录的游戏分组ID
lualib:Warn("玩家当前登录的游戏分组ID为"..id2)

--使用普通登陆器登录游戏后，此示例代码运行成功如下图所示（登录器分组ID和游戏分组ID相同）。

Player_GetDlqGroupID.png
<上一篇:向客户端批量发送变量通知下一篇:获取玩家当前登录的游戏分组ID>
Player_GetGameGroupID
获取玩家当前登录的游戏分组ID

更新时间：2022-12-09 00:00:00
此函数获取玩家当前登录的游戏分组ID。

note_icon 备注

若使用普通登录器，则登录器分组ID和游戏分组ID相同（即此接口返回的数据与接口lualib:Player_GetDlqGroupID返回的数据相同）；

若使用神途一起推登录器，则登录器分组ID和游戏分组ID不同（即此接口返回的数据与接口lualib:Player_GetDlqGroupID返回的数据不同）。

语法
Luacopy 复制
lualib:Player_GetGameGroupID(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 
玩家当前登录的游戏分组ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id1 = lualib:Player_GetDlqGroupID(player) --获取玩家当前登录的登录器分组ID
lualib:Warn("玩家当前登录的登录器分组ID为"..id1)
local id2 = lualib:Player_GetGameGroupID(player) --获取玩家当前登录的游戏分组ID
lualib:Warn("玩家当前登录的游戏分组ID为"..id2)

--使用普通登陆器登录游戏后，此示例代码运行成功如下图所示（登录器分组ID和游戏分组ID相同）。

Player_GetDlqGroupID.png
<上一篇:获取玩家当前登录的登录器分组ID下一篇:获取玩家当前登录游戏的子包ID>
Player_GetSubPackageID
获取玩家当前登录游戏的子包ID

更新时间：2022-12-09 00:00:00
此函数获取玩家当前登录游戏的子包ID。

语法
Luacopy 复制
lualib:Player_GetSubPackageID(
    player_guid
)
参数
player_guid

string

 
玩家角色的GUID

返回值
uint32

 
玩家当前登录游戏的子包ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id3 =  lualib:Player_GetSubPackageID(player)
lualib:Warn("玩家当前登录游戏的子包ID为"..id3)

--此示例代码运行成功如下图所示。

Player_GetSubPackageID.png
<上一篇:获取玩家当前登录的游戏分组ID下一篇:请求获取客户端版本号>
RequestClientVer
请求获取客户端版本号

更新时间：2023-08-11 00:00:00
此函数作用为向客户端发送一个请求获取客户端版本号的协议。

语法
Luacopy 复制
lualib:RequestClientVer(
    player_guid
)

参数
player_guid

string

 
玩家角色的GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    lualib:RequestClientVer(player) --向客户端发送一个请求获取客户端版本号的协议
    lualib:DelayCall(player, 2000, "Test", player)
end

function Test(player)
    local param = lualib:GetClientVerEx(player) --获取当前客户端版本号
    lualib:Warn("客户端版本号为:"..param)
end

--此示例代码运行成功如下图所示。

GetClientVerEx.png
<上一篇:获取玩家当前登录游戏的子包ID下一篇:设置异常断线后客户端延迟退出游戏的时间>
SetClientDelay
设置异常断线后客户端延迟退出游戏的时间

更新时间：2023-08-11 00:00:00
此函数设置异常断线后客户端延迟退出游戏的时间。

note_icon 备注
此函数目前功能无效。

语法
Luacopy 复制
lualib:SetClientDelay(
    player_guid,
    delay
)

参数
player_guid

string

 
角色的GUID

delay

int32

 
异常断线后客户端延迟退出游戏的时间

单位为毫秒（ms）

caution_icon 注意
此参数的配置值不能小于5000。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:请求获取客户端版本号下一篇:设置客户端的MD5码黑名单检测列表>
SetMD5CheckList
设置客户端的MD5码黑名单检测列表

更新时间：2023-08-11 00:00:00
此函数设置客户端的MD5码黑名单检测列表。

当开启MD5码黑名单检测时，会检测对应客户端的MD5码是否在此接口已设置的黑名单检测列表中，若在则该MD5码的数量会加1。最终，整体的校验结果可在回调函数中获取。

语法
Luacopy 复制
lualib:SetMD5CheckList(
    player_guid,
    t_md5_list,
    call_back,
    param,
    time_out
)

参数
player_guid

string

 
目标客户端的角色GUID

t_md5_list

table

 
MD5码黑名单检测列表

call_back

string

 
收到黑名单数量上报或者校验超时后回调的函数名

回调函数格式：Callback(player, param, md5_num_table, is_timeout)

player(string)：目标客户端的角色GUID

param(string)：预设的回调函数参数

md5_num_table(userdata)：客户端返回的校验结果（即黑名单中每个MD5码的检测匹配数量）

is_timeout(bool)：是否校验超时（true代表超时，false代表未超时）

param

string

 
预设的回调函数参数

time_out

uint32

 
校验黑名单的超时时间

单位为毫秒（ms）

note_icon 备注
建议此参数设置的超时时间大于等于300000毫秒（即5分钟）。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _table_ = {"123", "abc", "asd1asdas1d1"}
function main(npc,player)
    lualib:SetMD5CheckList(player,_table_,"call_back","1",300000)
end

function call_back(player, param, md5_num_table, is_timeout)
    lualib:Warn("客户端的MD5码黑名单已上报,param="..param)
    lualib:Warn("md5_num_table:"..tostring(md5_num_table[2]))
    local length = #md5_num_table
    lualib:Warn("length:"..length)
end

--此示例代码运行成功，会根据实际检测情况打印参数。
<上一篇:设置异常断线后客户端延迟退出游戏的时间下一篇:设置是否开启严格检查模式（扩展）>
SetNetCheckEx
设置是否开启严格检查模式（扩展）

更新时间：2023-08-11 00:00:00
此函数通知客户端是否开启严格检查模式并决定是否丢弃频率过快的包，通常用于触发器lua_trigger_gp之后。

开启严格检查模式后，会对玩家行为（例如：移速过快）的检查更为严格。

语法
Luacopy 复制
lualib:SetNetCheckEx(
    player_guid,
    is_check,
    is_drop
)

参数
player_guid

string

 
玩家角色的GUID

is_check

bool

 
true开始检查

false结束检查

is_drop

bool

 
true丢弃过快的包

false不丢弃过快的包

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetNetCheckEx(player, true, true) --设置开启严格检查模式并且丢弃过快的包
<上一篇:设置客户端的MD5码黑名单检测列表下一篇:设置是否开启严格检查模式>
SetNetCheck
设置是否开启严格检查模式

更新时间：2023-08-11 00:00:00
此函数通知客户端是否开启严格检查模式，通常用于触发器lua_trigger_gp之后。

开启严格检查模式后，会对玩家行为（例如：移速过快）的检查更为严格。

语法
Luacopy 复制
lualib:SetNetCheck(
    player_guid,
    is_check
)

参数
player_guid

string

 
玩家角色的GUID

is_check

bool

 
true开启严格检查模式

false关闭严格检查模式

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetNetCheck(player, true) --开启严格检查模式
<上一篇:设置是否开启严格检查模式（扩展）
BaoKuIsInited
神兔宝库是否已完成初始化

更新时间：2022-01-07 00:00:00
此函数作用为判断神兔宝库是否已经完成初始化，即神兔宝库后台数据是否已经同步到游戏服务器。

语法
Luacopy 复制
lualib:BaoKuIsInited()
参数
无

返回值
bool

 
true已经完成初始化

false没有完成初始化

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:BaoKuIsInited() then
    lualib:Warn("宝库功能已完成初始化")
else
    lualib:Warn("宝库功能未完成初始化")
end

--此示例代码运行成功如下图所示。

BaoKuIsInited.png
CleanMergeZoneRenameData
清除合区的改名数据

更新时间：2021-11-30 00:00:00
此函数清除合区的改名数据。

若要获取合区的改名数据，可使用接口lualib:GetMergeZoneRenameData。

caution_icon警告
此函数会清除存储在数据库中的所有改名数据，请谨慎使用。

语法
Luacopy 复制
lualib:CleanMergeZoneRenameData()
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
此函数无示例代码。
下一篇:获取合区的改名数据>
GetMergeZoneRenameData
获取合区的改名数据

更新时间：2021-11-30 00:00:00
此函数获取合区的改名数据。

在合区时，有些玩家的名字可能是重复的，需要修改另一个玩家的名字，从而保证玩家的名字不重复。

这些合区的改名数据会存储在数据库中，并且可使用此接口来获取。

语法
Luacopy 复制
lualib:GetMergeZoneRenameData()
参数
无

返回值
table

 
合区的改名数据

存储在lua表中

为table格式，具体格式如下：

{

    {[1]={["time"]=时间戳1,["zoneid"]=区服1的ID,["familynames"]={["行会1的名称"]="修改后行会1的名称",},["rolenames"]={["角色1的名称"]="修改后角色名1的名称",}

    {[2]={["time"]=时间戳2,["zoneid"]=区服2的ID,["familynames"]={["行会2的名称"]="修改后行会2的名称",},["rolenames"]={["角色2的名称"]="修改后角色名2的名称",}

}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:清除合区的改名数据
GetTotalBillInMoney
获取玩家在该代理商名下所有的区服的充值总金额

更新时间：2023-03-17 00:00:00
此函数获取指定玩家在该代理商名下所有的区服的充值总金额。

语法
Luacopy 复制
lualib:GetTotalBillInMoney(
    strPlayer,
    callback,
    param
)
参数
strPlayer

string

 
玩家角色的GUID

callback

string

 
获取完成后回调的脚本函数名

回调函数格式：void Callback(errcode, strPlayer, param, money)

errcode(uint32)：错误码（0代表成功，非0代表不成功）

strPlayer(string)： 玩家角色的GUID

param(string)：预设的回调函数参数

money(int)：充值总金额

param

string

 
预设的回调函数参数

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
该函数为异步函数，返回成功只代表请求投递成功，具体是否设置成功以回调函数中的实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc,player)
    local moeny = lualib:GetTotalBillInMoney(player,"callback","8")
    if moeny then
        lualib:Warn("正常执行")
    else
        lualib:Warn("执行失败")
    end
end

function callback(errcode, strPlayer, param, money)
    lualib:Warn("错误代码为"..errcode)
    lualib:Warn("玩家名为"..strPlayer)
    lualib:Warn("参数为"..param)
    lualib:Warn("充值金额为"..money)
end

--此示例代码运行成功如下图所示。

GetTotalBillInMoney.png
DisableFlyingSword
关闭飞剑功能

更新时间：2025-07-30 00:00:00
此函数作用是关闭飞剑功能。

语法
Luacopy 复制
lualib:DisableFlyingSword(
    player_guid
)
参数
player_guid

string

 
玩家的guid

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制

local sword_config = {
    swords = {{
        client_idx = 4
    }, {
        client_idx = 3
    }, {
        client_idx = 1
    }, {
        client_idx = 2
    }, {
        client_idx = 0
    }},
    range = 5,
    cd = 100
}
function kfj(npc,player)
    lualib:EnableFlyingSword(player,sword_config)
end

--开启飞剑。

EnableFlyingSword.png
lualib:DisableFlyingSword(player) --关闭飞剑

--执行示例代码，如下图所示，关闭飞剑。

DisableFlyingSword.png
下一篇:配置并开启飞剑功能>
EnableFlyingSword
配置并开启飞剑功能

更新时间：2025-12-31 17:08:00
此函数作用是配置并开启飞剑功能。

语法
Luacopy 复制
lualib:EnableFlyingSword(
    player_guid,
    config
)
参数
player_guid

string

 
玩家的guid

config

table

 
飞剑配置表，格式如下：

Luacopy 复制
{
    --表示配置飞剑数量为4把
    --每个子table里配置单把飞剑, client_idx表示客户端飞剑配置索引
    --可以为每把飞剑单独配置range和cd, 如果没有配置则使用统一的range和cd配置
    swords = {
        { client_idx = 3, range = 9, cd = 500 },
        { client_idx = 1, range = 8 },
        { client_idx = 2, cd = 650 },
        { client_idx = 0 }
    },
    range = 10,  --表示攻击范围为10个逻辑格
    cd = 600     --表示单把飞剑攻击间隔600毫秒
    attack_player = false --类型是bool, 表示是否攻击玩家，默认为false
}
note_icon 备注
其中飞剑配置的各项参数的定义如下：

swords数组表示开启的每把飞剑的配置，数组大小表示开启飞剑的数量。

client_idx表示客户端飞剑配置索引。

range表示攻击范围，单位为逻辑格。

cd表示单把飞剑攻击间隔，单位为毫秒。

attack_player类型是bool, 表示是否攻击玩家，默认为false。

点击飞剑功能了解更多信息。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数字段attack_player支持

 
v1.2

 
新增对每把飞剑单独配置攻击距离与冷却时间的支持

示例代码
Luacopy 复制
local sword_config = {
    swords = {{
        client_idx = 4, range = 9, cd = 500
    }, {
        client_idx = 3, range = 8
    }, {
        client_idx = 1, cd = 650
    }, {
        client_idx = 2
    }, {
        client_idx = 0
    }},
    range = 5,
    cd = 100,
    attack_player = false
}
function kfj(npc,player)
    lualib:EnableFlyingSword(player,sword_config)
end

--执行示例代码，如下图所示，开启飞剑。

EnableFlyingSword.png
<上一篇:关闭飞剑功能下一篇:飞剑命中时触发>
on_flying_sword_hit
飞剑命中时触发

更新时间：2025-09-10 17:14:00
此函数是飞剑命中时触发。

非系统级回调，需要手动添加触发器。

参考 eTriggerType

语法
Luacopy 复制
lualib:on_flying_sword_hit(
    strPlayer,
    strTarget,
    idx,
    client_idx
)
参数
strPlayer

string

 
玩家guid

strTarget

string

 
目标guid

idx

UINT16

 
飞剑服务端配置索引。

client_idx

UINT16

 
飞剑客户端配置索引

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--脚本添加触发器
lualib:AddTrigger("0", lua_trigger_on_flying_sword_hit, "on_flying_sword_hit")
--添加触发器函数
function on_flying_sword_hit(player, target, idx, cidx)
    lualib:SubHp(target, 10, player)
    lualib:ShowRoleHPRefEx("", target, -10, 1)
end

--执行示例代码，如下图所示，飞剑正常造成伤害。

on_flying_sword_hit.png
<上一篇:配置并开启飞剑功能
Market_SetCurrencyAlias
设置寄售行货币别名

更新时间：2025-11-17 16:51:00
此函数作用是设置寄售行货币别名，用于系统发送邮件中的货币显示。

语法
Luacopy 复制
lualib:Market_SetCurrencyAlias(
    type,
    alias
)

参数
type

uint8

 
货币类型

0金币

1元宝

2积分

alias

string

 
别名

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function fsyj(npc,player)
    lualib:Market_SetCurrencyAlias(2,"测试币")
end

--执行示例代码，如下图所示，脚本设置货币别名，客户端通过积分交易上架，购买后邮件返回的是设置的别名。

Market_SetCurrencyAlias.png

Market_SetCurrencyAlias_2.png
SetCardMonsterImages
设置卡牌模式下怪物图片

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-06-06 00:00:00
此函数设置卡牌模式下怪物图片。

note_icon 备注
卡牌模式切换快捷键：Ctrl+Shift+Alt+F8。

语法
Luacopy 复制
CL:SetCardMonsterImages(
    _Table
)

参数
_Table

table

 
怪物图片配置存储在Lua表中，其具体内容如下：

Luacopy 复制
local s = {}
s[167] = 1000000000  --即模板ID为167的怪物使用特定图片
s[168] = 1234567890
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
s[60001] = 4020000030 --模板ID为60001的怪物使用特定图片
s[30] = 4020000035
CL:SetCardMonsterImages(s)

--此示例代码运行成功，使用快捷键Ctrl+Shift+Alt+F8切换到卡牌模式下，如下图所示。

SetCardMonsterImages.png