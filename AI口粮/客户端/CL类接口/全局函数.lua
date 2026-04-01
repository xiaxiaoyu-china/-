BehindWall
场景遮挡触发时回调

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-09-04 18:01:00
此函数是场景遮挡触发时回调。

note_icon 备注
获取是否被场景遮挡接口参考：CL:GetBehindWall。

语法
Luacopy 复制
BehindWall(
    _Value
)
参数
_Value

int

 
1执行回调

0不执行回调

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:判断是否点中目标>
CheckNpcClicked
判断是否点中目标

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数判断当选中的角色为可对话的角色并且角色类型为怪物或者NPC时，是否点中了目标。

点中目标后会执行相应逻辑，例如：打开对话框的操作。

可在LogicFunction.lua文件中添加此全局函数来判断是否点中目标。

语法
Luacopy 复制
CheckNpcClicked(
    _GUID,
    _Type,
    _ID,
    _PosX,
    _PosY,
    _ClickX,
    _ClickY
)
参数
_GUID

string

 
目标角色的GUID

_Type

int

 
目标类型

1NPC

2怪物

_ID

int

 
目标的模板ID

_PosX

int

 
目标当前的X坐标

_PosY

int

 
目标当前的Y坐标

_ClickX

int

 
点击的场景X坐标

_ClickY

int

 
点击的场景Y坐标

返回值
bool

 
true选中目标后会执行相应的逻辑

false选中目标后无效果

note_icon 备注
若该函数不存在或者该函数存在且返回值为true，则执行相应的逻辑。

若该函数存在但返回值为false，则没有任何选中目标的效果。

在手游中，当鼠标抬起时才会执行该函数，因此_ClickX的值和_ClickY的值有可能与鼠标按下的坐标点不一致。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中（以官方45度美术资源展示（区号：3104）为例）。
function CheckNpcClicked(_GUID,_Type,_ID,_PosX,_PosY,_ClickX,_ClickY)
    msg(_GUID.." ".._Type.." ".._ID.." ".._PosX.." ".._PosY.." ".._ClickX.." ".._ClickY)
    if _Type == 2 then --判断是否为怪物
        if _PosX == _ClickX and _PosY == _ClickY then --判断目标当前坐标和鼠标点击坐标是否一致
            return true --返回true则打开对应的对话框
        else 
            return false
        end 
    end 
    return true
end

--添加完成后，重开登录器登录游戏，查看效果，示例效果如下图所示。

--当目标当前坐标和鼠标点击坐标一致时，才能打开对话框。

image_20210408154827.png
<上一篇:场景遮挡触发时回调下一篇:自定义系统消息的控件样式和动画类型>
CreateSysAnnItem
自定义系统消息的控件样式和动画类型

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-05-12 00:00:00
此函数作用为自定义系统消息的控件样式和动画类型。

若要自定义系统消息的控件样式和动画类型，可在LogicFunction.lua等文件中添加此全局函数来进行设置。

语法
Luacopy 复制
CreateSysAnnItem(
    parent,
    msg,
    param
)
参数
parent

int

 
新消息的父控件句柄

msg

string

 
新消息内容

param

int

 
自定义参数

note_icon 备注
msg参数和param参数可通过接口CL:AddSysAnnAnimation透传。

返回值
table

 
自定义样式

相关参数的具体说明如下所示：

custom：是否自定义系统消息的控件样式（true代表自定义，false代表由程序创建，为默认值）；

moveHeight：消息每次向上平移的像素距离（每增加一条消息，之前的消息会向上平移一段距离）；

centerX：设置父控件的X位置；

centerY：设置父控件的Y位置；

localZOrder：系统消息的显示层级，默认值为100；

animationType：系统消息显示的动画类型，默认值为1，0代表无动画效果。

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
<上一篇:判断是否点中目标下一篇:自定义商城购买前确认消息中的消费类型文字>
GetAttrRefNameCustom
自定义商城购买前确认消息中的消费类型文字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-09-01 00:00:00
商城中购买物品在支付前，系统会弹出消息提示面板，询问是否继续购买操作。

此函数可用于自定义该提示面板中指示消费类型的文字内容，如下图所示的“金币”。

GetAttrRefNameCustom
语法
Luacopy 复制
GetAttrRefNameCustom(
    AttrType
)
参数
_StallType

int

 
消费类型

1元宝

2绑定元宝

3积分

4金币

5绑定金币

返回值
string

 
自定义的文字内容

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对3D的支持

示例代码
Luacopy 复制
--根据需要，可将全局函数添加至GameMall.lua文件中。
function GetAttrRefNameCustom(AttrType)
    local par = AttrType
    dbg("AttrType="..par)
    if AttrType == 1 then
        return "测试元宝"
    elseif AttrType == 2 then 
        return "绑定元宝"     
    elseif AttrType == 3 then    
        return "积分"     
    elseif AttrType == 4 then
        return "金币"    
    elseif AttrType == 5 then   
        return "绑定金币"     
    else
        return "未知属性"  
    end
end

--示例效果如下图所示。

GetAttrRefNameCustom2
<上一篇:自定义系统消息的控件样式和动画类型下一篇:设置角色头像显示的资源>
GetClientTeamHeaderImageID
设置角色头像显示的资源

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-12-11 00:00:00
此函数用于更改游戏中程序默认定义的角色头像图片资源。

可在LogicFunction.lua文件中添加此全局函数。

语法
Luacopy 复制
GetClientTeamHeaderImageID(
    headerIndex,
    gender
)
参数
headerIndex

int

 
当前的头像编号

程序返回的值为0，1，2或3

编号含义请参考服务端接口lualib:SetHead的参数iHead的说明。

gender

int

 
角色的性别

1男性

2女性

返回值
int

 
角色头像的图片资源ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中。
function GetClientTeamHeaderImageID(headerIndex,gender)
    dbg("headerIndex:"..headerIndex)
    dbg("gender:"..gender)
    if gender == 1 then
      headerImageId = headerIndex + 4004900000;
    elseif gender == 2 then
      headerImageId = headerIndex + 4004910000;
    else
      headerImageId = headerIndex + 4004900000;
    end
    return headerImageId;
end

--此示例代码运行前效果如下图所示。

GetClientTeamHeaderImageID
<上一篇:自定义商城购买前确认消息中的消费类型文字下一篇:自定义聊天框角色名字格式>
GetCustomChatSenderName
自定义聊天框角色名字格式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-12-11 00:00:00
此函数自定义聊天框角色名字格式。

若要自定义聊天框角色名字格式，可在LogicFunction.lua文件中添加此全局函数来进行设置。

语法
Luacopy 复制
GetCustomChatSenderName(
    Channel,
    Sender,
    Level,
    Vip,
    Is_playerself
)
参数
Channel

int

 
频道类型

1当前

2组队

3行会

4世界

5小喇叭

7私聊（仅接收方可看到自定义的发送者名字格式）

8全服

Sender

string

 
发送者的名称

Level

int

 
发送者的等级

Vip

int

 
发送者的VIP等级

Is_playerself

bool

 
是否为玩家自己发出的消息

true是

false否

返回值
table

 
返回值存储在Lua表中，其具体内容如下：

第1个值类型必须为boolean，表示是否显示该消息；

第2个值类型必须为string，表示自定义的发送者名字格式。

note_icon 备注
若不存在该函数或该函数返回值的第2个值为空字符串，则使用程序内部默认的发送者名字格式（发送者的名称（发送者的等级））。

caution_icon 注意
返回的发送者名字格式中不允许出现冒号字符（“:”）。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

 
v1.2

 
新增对2D手游支持

示例代码
Luacopy 复制
function GetCustomChatSenderName(channel, sender, level, vip, is_playerself)
    ret = {}
    ret[1] = true
    ret[2] = "{Vip."..vip.."}"..sender.."[Lv."..level.."]"
    return ret
end

--此示例代码运行成功如下图所示。

GetCustomChatSenderName.png
<上一篇:设置角色头像显示的资源下一篇:自定义摆摊日志>
GetCustomStallLog
自定义摆摊日志

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-06-24 00:00:00
此函数自定义摆摊日志。

玩家角色在摆摊或收购过程中会自动生成摆摊日志，如下图所示。

image_20201127110732.png
若要自定义摆摊日志，可在LogicFunction.lua文件中添加此全局函数来进行设置。

语法
Luacopy 复制
GetCustomStallLog(
    _StallType,
    _PlayerName,
    _ItemCount,
    _ItemName,
    _Price,
    _PriceType
)
参数
_StallType

int

 
摆摊类型

1收购

2出售

_PlayerName

string

 
收购或者出售的玩家名字

_ItemCount

int

 
收购或者出售的物品数量

_ItemName

string

 
物品名字

_Price

int

 
物品的单价

_PriceType

int

 
物品的价格类型

0金币

1元宝

2积分

返回值
string

 
自定义的摆摊日志字符串

note_icon 备注
如果该函数没有定义或者返回空字符串，则使用默认的摆摊日志。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中（以官方45度美术资源展示（区号：3104）为例）。
function GetCustomStallLog(_StallType,_PlayerName,_ItemCount,_ItemName,_Price,_PriceType)
    local str = "出售"
    local add = "获得"
    if _StallType == 1 then 
        str = "收购"
        add = "消耗"
    end 
    local _priceType = "金币"
    if _PriceType == 0 then 
        _priceType = "金币"
    elseif _PriceType == 1 then 
        _priceType = "元宝"
    elseif _PriceType == 2 then 
        _priceType = "积分"
    end 
    str = str .." #COLORCOLOR_BLUE#玩家 #COLORCOLOR_RED#".._PlayerName.." ".._ItemName.." * ".._ItemCount.." "..add.._Price.._priceType
    return str
end

--添加完成后，重开登录器登录游戏，查看效果，示例效果如下图所示。

image_20201127101946.png
<上一篇:自定义聊天框角色名字格式下一篇:判断玩家角色是否进入安全区>
GetInSafeZone
判断玩家角色是否进入安全区

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2025-09-04 18:01:00
此函数判断玩家角色是否进入安全区。

语法
Luacopy 复制
GetInSafeZone(
    m_InSafeZone
)
参数
m_InSafeZone

int

 
1进入安全区

0未进入安全区

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetInSafeZone(in_safe_zone)
    if in_safe_zone == 1 then
        dbg("玩家角色进入安全区")
    else
        dbg("玩家角色未进入安全区")
    end
end
<上一篇:自定义摆摊日志下一篇:自定义英雄锁定目标时的提示内容>
GetLockTargetInfo
自定义英雄锁定目标时的提示内容

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数自定义英雄锁定目标时的提示内容。

若要自定义英雄锁定目标时的提示内容，可在LogicFunction.lua文件中添加此全局函数来进行设置。

语法
Luacopy 复制
GetLockTargetInfo(
    heroName,
    targetName
)
参数
heroName

string

 
英雄名称

targetName

string

 
目标名称

返回值
string

 
自定义英雄锁定目标的提示内容字符串

note_icon 备注
若不存在该函数或该函数返回空字符串，则使用程序内部默认的英雄锁定目标提示内容（英雄【heroName】锁定目标【targetName】!）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中。
function GetLockTargetInfo(heroName,targetName)
    return ""..heroName.."    :     "..targetName..""
end

--添加完成后，重开登录器登录游戏，查看效果，示例效果如下图所示。

image_20210909172622.png
<上一篇:判断玩家角色是否进入安全区下一篇:设置怪物可被攻击的最大玩家数量>
GetMaxAutoAttackPlayer
设置怪物可被攻击的最大玩家数量

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2022-08-05 00:00:00
此函数设置怪物可被攻击的最大玩家数量。

可在LogicFunction.lua文件中添加此全局函数来设置怪物可被攻击的最大玩家数量。

语法
Luacopy 复制
GetMaxAutoAttackPlayer(
    _MonsterType,
    _KeyName
)
参数
_MonsterType

int

 
怪物类型

1普通怪

2精英怪

3头目

4BOSS

5守卫

6守城怪

7镖车

_KeyName

string

 
怪物的索引名（KeyName）

返回值
int

 
怪物可被攻击的最大玩家数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetMaxAutoAttackPlayer(_MonsterType, _KeyName)
    if _MonsterType == 1 then
        --普通怪
        if _KeyName == "普通怪物1" then
            return 1
        elseif _KeyName == "普通怪物2" then
            return 2
        else
            return 1
        end
    elseif _MonsterType == 2 then
        --精英怪
        if _KeyName == "精英怪物1" then
            return 1
        elseif _KeyName == "精英怪物2" then
            return 2
        else 
            return 1
        end
    elseif _MonsterType == 3 then
        --头目
        if _KeyName == "头目怪物1" then
            return 1
        elseif _KeyName == "头目怪物2" then
            return 2
        else 
            return 1
        end
    elseif _MonsterType == 4 then
        --BOSS
        if _KeyName == "BOSS怪物1" then
            return 1
        elseif _KeyName == "BOSS怪物2" then
            return 2
        else 
            return 1
        end
    elseif _MonsterType == 5 then
        --守卫
        if _KeyName == "守卫怪物1" then
            return 1
        elseif _KeyName == "守卫怪物2" then
            return 2
        else 
            return 1
        end
    elseif _MonsterType == 6 then
        --守城怪
        if _KeyName == "守城怪物1" then
            return 1
        elseif _KeyName == "守城怪物2" then
            return 2
        else 
            return 1
        end
    elseif _MonsterType == 7 then
        --镖车
        if _KeyName == "镖车1" then
            return 1
        elseif _KeyName == "镖车2" then
            return 2
        else 
            return 1
        end
    end
end
<上一篇:自定义英雄锁定目标时的提示内容下一篇:设置怪物简装时的气泡垂直偏移量>
GetMonsterBubbleOffsetY2
设置怪物简装时的气泡垂直偏移量

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数设置怪物简装时的气泡垂直偏移量。

可在LogicFunction.lua文件中添加此全局函数来调整指定怪物简装时的气泡垂直偏移量。

GetMonsterBubbleOffsetY2.png
note_icon 备注
此全局函数与全局函数GetMonsterBubbleOffsetY的区别在于此全局函数作用于怪物简装时的气泡，而全局函数GetMonsterBubbleOffsetY作用于怪物非简装时的气泡。

语法
Luacopy 复制
GetMonsterBubbleOffsetY2(
    _MonsterID
)
参数
_MonsterID

int

 
怪物模板ID（即怪物模板表中的怪物编号）

返回值
int

 
气泡框相对于原始位置的垂直（上下）偏移量

单位为像素（px）

正值相对于原始位置向下偏移

负值相对于原始位置向上偏移

note_icon 备注
原始位置偏移量为0，此函数必须有返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中。
function GetMonsterBubbleOffsetY2(_MonsterID)
    return 50
end

--此示例代码运行前效果如下图所示。

GetMonsterBubbleOffsetY2.png

--添加完成后，重开登录器登录游戏，查看效果，示例效果如下图所示。

GetMonsterBubbleOffsetY2_2.png
<上一篇:设置怪物可被攻击的最大玩家数量下一篇:设置怪物非简装时的气泡垂直偏移量>
GetMonsterBubbleOffsetY
设置怪物非简装时的气泡垂直偏移量

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数设置怪物非简装时的气泡垂直偏移量。

有些怪物由于图片资源的原因，其气泡对话框的显示位置可能会出现异常，如下图中的镖车，气泡框显示相对于镖车上方较远。

可在LogicFunction.lua文件中添加此全局函数来调整其气泡垂直偏移量。

Image01
note_icon 备注
此全局函数与全局函数GetMonsterBubbleOffsetY2的区别在于此全局函数作用于怪物非简装时的气泡，而全局函数GetMonsterBubbleOffsetY2作用于怪物简装时的气泡。

语法
Luacopy 复制
GetMonsterBubbleOffsetY(
    _MonsterID
)
参数
_MonsterID

int

 
怪物模板ID（即怪物模板表中的怪物编号）

返回值
int

 
气泡框相对于原始位置的垂直（上下）偏移量

单位为像素（px）

正值相对于原始位置向下偏移

负值相对于原始位置向上偏移

note_icon 备注
原始位置偏移量为0，此函数必须有返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中。
function GetMonsterBubbleOffsetY(_MonsterID)
    if _MonsterID == 61104 then
      return 100
    end
    return 0
end

--此示例代码运行前效果如下图所示。

GetMonsterBubbleOffsetY.png

--添加完成后，重开登录器登录游戏，查看效果，示例效果如下图所示。

GetMonsterBubbleOffsetY_2.png
<上一篇:设置怪物简装时的气泡垂直偏移量下一篇:根据怪物的阵营值来获取怪物名字颜色值>
GetMonsterNameColorByCamp
根据怪物的阵营值来获取怪物名字颜色值

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-04-29 00:00:00
此函数根据怪物的阵营值来获取怪物名字颜色值。

此全局函数仅在全局变量MonsterUseCampColor设置为true时有实际意义。

若要根据怪物的阵营值来获取怪物名字颜色值，可在LogicFunction.lua文件中添加此全局函数来进行设置。

语法
Luacopy 复制
GetMonsterNameColorByCamp(
    camp
)
参数
camp

int

 
怪物的阵营值

返回值
unsigned int

 
怪物名字的颜色值

具体请参见颜色字符串页面

note_icon 备注
可以使用接口GUI:MakeARGB或者GUI:MakeColor来构造此全局函数的返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提：全局变量MonsterUseCampColor的配置值为true。
--客户端
function GetMonsterNameColorByCamp(camp) --根据怪物的阵营值来获取怪物名字颜色值
    local color = GUI:MakeARGB(255, 255, 255, 255) --白色
    if camp == 1 then
        color = GUI:MakeARGB(255, 255, 0, 0) --红色
    elseif camp == 2 then
        color = GUI:MakeARGB(255, 0, 255, 0) --绿色
    elseif camp == 3 then
        color = GUI:MakeARGB(255, 0, 0, 255) --蓝色
    elseif camp == 4 then
        color = GUI:MakeARGB(255, 0, 0, 0) --黑色
    end
    
    dbg("camp:"..camp)
    dbg("color:"..color)
    
    return color
end

--服务端
function main(npc, player)
    local x = lualib:X(player) --获取玩家的X坐标
    local y = lualib:Y(player) --获取玩家的Y坐标

    local map = lualib:Map_GetMapGuid("手游巫山城") --获取地图的GUID
    local Monster = lualib:Map_GenSingleCampMonster(map, x, y, 3, 4, "练功师", false, 1) --在地图指定范围中生成单只怪物（其阵营值为1）
    local Monster = lualib:Map_GenSingleCampMonster(map, x, y, 3, 4, "练功师", false, 2) --在地图指定范围中生成单只怪物（其阵营值为2）
    local Monster = lualib:Map_GenSingleCampMonster(map, x, y, 3, 4, "练功师", false, 3) --在地图指定范围中生成单只怪物（其阵营值为3）
    local Monster = lualib:Map_GenSingleCampMonster(map, x, y, 3, 4, "练功师", false, 4) --在地图指定范围中生成单只怪物（其阵营值为4）
    local Monster = lualib:Map_GenSingleCampMonster(map, x, y, 3, 4, "练功师", false, 5) --在地图指定范围中生成单只怪物（其阵营值为5）
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

GetMonsterNameColorByCamp_2.png

GetMonsterNameColorByCamp.png
<上一篇:设置怪物非简装时的气泡垂直偏移量下一篇:根据怪物的等级和索引名获取怪物名字颜色值>
GetMonsterNameColorByLevel
根据怪物的等级和索引名获取怪物名字颜色值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-02-04 00:00:00
此函数根据怪物的等级和索引名（KeyName）获取怪物名字颜色值。

若要根据怪物的等级和索引名（KeyName）获取怪物名字颜色值，可在LogicFunction.lua文件中添加此全局函数来进行设置。

语法
Luacopy 复制
GetMonsterNameColorByLevel(
    _Level,
    _KeyName
)
参数
_Level

int

 
怪物的等级

_KeyName

string

 
怪物的索引名（KeyName）

返回值
int

 
怪物名字的颜色值

具体请参见颜色字符串页面

note_icon 备注
可以使用接口GUI:MakeARGB或者GUI:MakeColor来构造此全局函数的返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetMonsterNameColorByLevel(_Level,_KeyName)
    if UserGetMonsterNameColorByLevel == nil then
        local _Color = CL:MakeARGB(255, 255, 255, 255)
        if 1 == _Level then
            _Color = CL:MakeARGB(255, 0, 255, 255)
        elseif 2 == _Level then
            _Color = CL:MakeARGB(255, 0, 183, 212)
        elseif 3 == _Level then
            _Color = CL:MakeARGB(255, 0, 134, 200)
        elseif 4 == _Level then
            _Color = CL:MakeARGB(255, 109, 109, 205)
        elseif 5 == _Level then
            _Color = CL:MakeARGB(255, 75, 75, 227)
        elseif 6 == _Level then
            _Color = CL:MakeARGB(255, 0, 51, 255)
        elseif 7 == _Level then
            _Color = CL:MakeARGB(255, 0, 8, 197)
        elseif 8 < _Level then
            _Color = CL:MakeARGB(255, 0, 8, 197)
        end
        return _Color
    else
        return UserGetMonsterNameColorByLevel(_Level)
    end
end
<上一篇:根据怪物的阵营值来获取怪物名字颜色值下一篇:设置NPC的气泡垂直偏移量>
GetNpcBubbleOffsetY
设置NPC的气泡垂直偏移量

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数设置NPC的气泡垂直偏移量。

可在LogicFunction.lua文件中添加此全局函数来调整指定NPC的气泡垂直偏移量。

GetNpcBubbleOffsetY.png
语法
Luacopy 复制
GetNpcBubbleOffsetY(
    _NpcID
)
参数
_NpcID

int

 
NPC模板ID（即NPC模板表中的编号）

返回值
int

 
气泡框相对于原始位置的垂直（上下）偏移量

单位为像素（px）

正值相对于原始位置向下偏移

负值相对于原始位置向上偏移

note_icon 备注
原始位置偏移量为0，此函数必须有返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中。
function GetNpcBubbleOffsetY(_NpcID)
    if _NpcID == 1001 then
        return -50
    end
    return 0
end

--此示例代码运行前效果如下图所示。

GetNpcBubbleOffsetY.png

--添加完成后，重开登录器登录游戏，查看效果，示例效果如下图所示。

GetNpcBubbleOffsetY_2.png
<上一篇:根据怪物的等级和索引名获取怪物名字颜色值下一篇:自定义指定场合下的声音文件路径>
GetSoundDataName
自定义指定场合下的声音文件路径

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-10-21 00:00:00
此函数作用为自定义指定场合下的声音文件路径。

若要自定义指定场合下的声音文件路径，可在LogicFunction.lua文件或者GameLogic.lua文件中添加此全局函数来进行设置。

语法
Luacopy 复制
GetSoundDataName(
    _SoundName
)
参数
_SoundName

string

 
指定场合

Start选择服务器时的声音文件（对应手游中的全局变量BGM_Title_Path）

LoginIn登陆时的声音文件

SelectRole选择角色时的声音文件（对应手游中的全局变量BGM_XuanRen_Path）

OpenDoor开门时的声音文件

返回值
string

 
自定义的声音文件路径

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetSoundDataName(_SoundName)
    if UserGetSoundDataName == nil then 
        local _NameString = ""
        --选择服务器时的声音文件
        if _SoundName == "Start" then 
            _NameString = "Sound/Music/BGM_Title"
        --登录时的声音文件
        elseif _SoundName == "LoginIn" then
            _NameString = "Sound/Music/Sound/UI/denglu_huoyansheng"
        --选择角色时的声音文件
        elseif _SoundName == "SelectRole" then
            _NameString = "Sound/Music/BGM_XuanRen"
        --开门时的声音文件
        elseif _SoundName == "OpenDoor" then
            _NameString = "Sound/UI/denglu_kaimensheng"
        else
            _NameString = ""
        end
        return _NameString
    else
        return UserGetSoundDataName(_SoundName)
    end
end
<上一篇:设置NPC的气泡垂直偏移量下一篇:设置角色名称前的VIP等级标识的缩放比例>
GetVIPLevelImageScale
设置角色名称前的VIP等级标识的缩放比例

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数设置角色名称前的VIP等级标识的缩放比例。

若要设置角色名称前的VIP等级标识的缩放比例，可在LogicFunction.lua等文件中添加此全局函数来进行设置。

语法
Luacopy 复制
GetVIPLevelImageScale(
    vipLevel
)
参数
vipLevel

int

 
VIP等级类型

范围为1-10

返回值
float

 
VIP等级标识的缩放比例（默认值为1.0）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function GetVIPLevelImageScale(vipLevel)
    if vipLevel == 1 then
        return 2.0
    elseif vipLevel == 2 then
        return 0.5
    elseif vipLevel == 8 then
        return 0.6  
    elseif vipLevel == 9 then
        return 0.5
    end
    return 1.0
end

--此示例代码执行成功后，对应的VIP等级标识会根据设置的缩放比例进行显示。
<上一篇:自定义指定场合下的声音文件路径下一篇:设置是否显示物品的比较Tips>
IsNeedCompareTips
设置是否显示物品的比较Tips

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-11-30 00:00:00
此函数设置是否显示指定类型物品的比较Tips。

可在LogicFunction.lua文件中添加此全局函数来设置是否显示指定类型物品的比较Tips。

语法
Luacopy 复制
IsNeedCompareTips(
    _ItemID,
    _Type,
    _SubType
)
参数
_ItemID

int

 
物品的模板ID

_Type

int

 
物品的主类型

具体请参见道具主类型和子类型定义页面

_SubType

int

 
物品的子类型

具体请参见道具主类型和子类型定义页面

返回值
bool

 
true显示物品的比较Tips

false不显示物品的比较Tips

note_icon 备注
1.此全局函数默认返回true，若不需要显示物品的比较Tips，请返回false。

2.端游中，当基础设置面板中未勾选“显示装备比较tip”的选项（如图1所示）时，即使此全局函数的返回值为true，也不会显示装备的比较Tips；

   手游中，当基础设置面板中未勾选“显示装备比较”的选项（如图2所示）时，即使此全局函数的返回值为true，也不会显示装备的比较Tips。

3.当物品的主类型为装备、子类型为符咒时，且同时满足以下任一条件时，即使此全局函数的返回值为true，也不会显示该类物品的比较Tips。

   a. 全局变量CompareFuZhouTip的值为false

   b. 未设置全局变量CompareFuZhouTip

图 1 端游基本设置界面

image_20210429155826.png
图 2 手游基本设置界面

image_20210429155846.png
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中（以官方45度美术资源展示（区号：3104）为例）。
function IsNeedCompareTips(_ItemID,_Type,_SubType)
    if _SubType == 1 then --若装备的子类型为武器，则设置不显示物品的比较Tips。
        return false
    else 
        return true
    end 
end

--添加完成后，重开登录器登录游戏，查看效果，示例效果如下图所示。

--装备的子类型为武器（不显示比较Tips）

image_20210429155744.png

--装备的子类型为衣服（显示比较Tips）

image_20210429155710.png

--装备的子类型为坐骑（显示比较Tips）

image_20210429155822.png
<上一篇:设置角色名称前的VIP等级标识的缩放比例下一篇:设置是否触发保护设置>
IsNeedUseProtectItem
设置是否触发保护设置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-02-24 00:00:00
此函数设置是否触发保护设置。

端游：目前仅支持Combox8保护设置（对应ID为8）和Combox9保护设置（对应ID为9），如下图所示。

ReturnIfTriggerComboxR.png
手游：目前仅支持传送相关的保护设置（对应ID依次为8和9），如下图所示。

IsNeedUseProtectItem.png
可在LogicFunction.lua文件中添加此全局函数来设置是否触发保护设置。

语法
Luacopy 复制
IsNeedUseProtectItem(
    _GUID,
    _ProtectID
)
参数
_GUID

string

 
玩家角色的GUID

_ProtectID

int

 
保护设置选项的ID

返回值
bool

 
true触发保护设置

false不触发保护设置

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

IsNeedUseProtectItem_3.png
function IsNeedUseProtectItem(_GUID,ProtectID)
    dbg("玩家角色的GUID为".._GUID)
    dbg("保护设置选项的ID为"..ProtectID)
    return true
end

--此示例代码运行成功如下图所示（当玩家血量低于700时，触发保护设置）。

IsNeedUseProtectItem_2.png
<上一篇:设置是否显示物品的比较Tips下一篇:设置职业等级前缀自定义缩写>
JobAbbr
设置职业等级前缀自定义缩写

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数设置职业等级前缀自定义缩写。

语法
Luacopy 复制
JobAbbr(
    job_type
)
参数
job_type

int

 
职业类型

1战士

2法师

3术士

返回值
string

 
自定义的职业缩写。

默认：战士(Z)，法师(F)，术士(D)

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--根据需要，将全局函数添加至LogicFunction.lua文件中
function JobAbbr(job_type)
    if job_type == 1 then
        return "Z"
    end
end

--如下图所示设置职业等级前缀自定义缩写前。

JobAbbr.png

function JobAbbr(job_type)
    if job_type == 1 then
        return "战"
    end
end

--如下图所示设置职业等级前缀自定义缩写后。

JobAbbr_2.png
<上一篇:设置是否触发保护设置下一篇:保护配置触发前的回调>
OnPreTriggerProtect
保护配置触发前的回调

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-09-12 00:00:00
此函数作用为当某一选项的保护满足条件（HP或MP低于阈值）后使用道具前的脚本回调，如果返回true表示可以使用道具，反之不可以使用。

语法
Luacopy 复制
OnPreTriggerProtect(
    index,
    role_guid
)
参数
index

int

 
数组索引值

范围0~9，对应下图1~10的选项区域。

game_protect_settings

role_guid

string

 
角色的GUID（玩家自己或者玩家的英雄）

返回值
操作结果

bool

 
true可以使用道具

false不可以使用道具

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
<上一篇:设置职业等级前缀自定义缩写下一篇:在充值跳转网址后添加自定义字符串>
PayMoneyUrlAppend
在充值跳转网址后添加自定义字符串

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-04-22 00:00:00
此函数作用为在充值跳转网址后添加自定义字符串。

若要在充值跳转网址后添加自定义字符串，可在LogicFunction.lua文件中添加此全局函数来进行设置。

语法
Luacopy 复制
PayMoneyUrlAppend()
参数
无

返回值
string

 
自定义字符串内容

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
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

--此示例代码运行前效果如下图所示。

PayMoneyUrlAppend_2.png

--此示例代码运行后效果如下图所示。

PayMoneyUrlAppend.png
<上一篇:保护配置触发前的回调

窗口
游戏程序基本的组成单位，它可以包含多个窗体控件。游戏交互涉及到窗口中各个控件的布局设计。

模态窗口
模态窗口具有优先处理并拦截游戏事件的特性，用户只能先和此窗口进行交互操作，其他窗体控件不会响应用户操作。

窗体控件
窗体控件是窗口对象内包含的对象，用于显示和接收数据。 每种类型的控件都有自己的一组属性、方法和事件，使其适用于特定用途。

按钮控件
按钮控件通过点击的操作来执行某个操作。

列表框控件
列表框控件允许用户在一个列表中选择一个或多个选项。列表框控件允许自定义背景图片和滚动条图片的资源。

编辑框控件
编辑框控件可以用于获取用户的输入或在游戏中显示特定的文本。

物品框控件
物品框控件是游戏中用于存放各类道具的控件。

默认的物品框控件可显示具体道具的图标，通过边框四周的颜色不同来表示道具品质等级的品质框。物品框内还会显示道具是否为绑定物品，和自身已装备的同类物品比较的品质箭头。

组合框控件
组合框控件类似于列表框控件，用于显示数据。但组合框有两个部分，顶部的是编辑框，下部分是显示项目的列表框。用户可在其中选择一个项。

多功能编辑框控件
多功能编辑框控件用于获取用户的输入或在游戏中显示特定的文本。除了具有编辑框的基本功能外，可在文本中插入链接，图片，甚至表情元素。

滚动窗口控件
滚动窗口是指可以左右滑动来显示内容的一种窗口，每次滑动显示一个页面。

滚动条
滚动条控件用于大量数据的展示和导航，根据滚动的方向分为水平或垂直滚动条。

滑动条
滑动条控件通过填充的矩形来显示所操作的数据百分比，例如，游戏中的音量大小调节。

图片控件
图片框控件用于显示指定格式的图片或动画。

透明度
指界面透光的程度。

灰度
用黑色为基准色,不同的饱和度的黑色来显示图像。 每个灰度对象都具有从 0%(白色)到100%(黑色)的亮度值。

镜像
将图片进行水平或垂直翻转。

骨骼动画
骨骼动画是由互相连接的“骨头”组成的骨架结构，通过控制、改变骨头的位置、朝向和放大和缩小来为角色生成的动画。相比较于传统的帧动画，骨骼动画的资源是一些小的角色部件（如头、手、胳膊、腰等）。

插槽
插槽是骨骼动画中显示图片的容器，隶属于骨骼。开启显示插槽有助于调试骨骼动画。

定时器
定时器一种按固定时间间隔触发事件的控件。

锚点
设定一个控件的位置时，可以控件的左上角，左下角，中心点或者其他控件的位置作为的一个基准点。

品质箭头
物品框中的装备和自身已装备的同类物品比较，品质高于已装备的物品，则会显示该品质箭头，用于提示玩家。

逻辑格
游戏内场景地图上划分的网格，常用于角色、怪物等移动，施放技能的定位。
GUID
Globally Unique Identifier，全局唯一标识符，是程序经过某种算法生成的用于标示对象的数据。

GUIData句柄
物品框中用来显示的通用指针（数据类型为整型），指向一个物品格子。

通过这个指针可以查询和设置里面的内容。

句柄
是控件的唯一的标识符，程序使用句柄来标识项目。

回调函数
回调函数就是一个通过函数指针调用的函数。

例如，脚本内有一个函数A，调用程序接口时，将A函数名称传入程序接口中。程序在执行完功能后，会调用和执行函数A。那么A函数就是回调函数。

图片资源ID
图片资源的唯一标识符，一般为10位的数字。

概述
更新时间：2023-11-08 00:00:00
全局变量在整个游戏存在的期间都有效，可被脚本事件所调用。某些全局变量还需要配合使用接口才能实现某一块功能，如多重血条。

如修改了全局变量，请先完全退出（大退）游戏后，再次启动以使修改生效。

您需要在游戏工具后台定位到客户端资源→GUIScript→LogicFunction.lua中来定义全局变量。

以下示例来自手游45度测试区（区号：151750），全局变量定义在函数LoadLuaClientCfg()中。

Luacopy 复制
function LoadLuaClientCfg()
    UI:Lua_Log("LoadLuaClientCfg")
    LuaGlobal["TeamMemberWindowCols"] = 2 --组队队员面板列数
    LuaGlobal["TeamMemberWindowRows"] = 5 --组队队员面板行数
    LuaGlobal["UseClientCommand"] = true --开启客户端命令功能
    LuaGlobal["TipMarginX"] = 1 --两个Tip之间水平间距
    LuaGlobal["TipCmpSameHeight"] = true --多个Tip高度使用最高的那个的高度
    LuaGlobal["ShowAchieveMsg"] = true --在聊天框显示完成成就提示
    LuaGlobal["VIPFilterLevelLower"] = false --是否显示VIP过滤等级以下的VIP功能
    LuaGlobal["ModifyQuiteGameMethod"] = true --是否更改客户端的退出方式，如果更改，退出回调 OnQuiteGame(flag) flag=1代表小退 flag=2代表大退
    LuaGlobal["UseTaskAutoAttackFlag"] = false --是否使用任务自动寻路完成后的自动挂机标记(task中的ATK标记)，默认不使用。如果设置为true，须实现自动挂机回调脚本函数OnTaskAutoAttack()
    LuaGlobal["ShowBrokenEquipTip"] = false --装备损坏时，控制是否显示tips，默认不显示，如果设置为true，TipLayout中要有tipLayoutFunctionBrokenEquip函数
    LuaGlobal["UseEquipmentGuide"] = false --是否使用装备引导面板，默认不使用
    LuaGlobal["UseSkillGuide"] = false --是否使用技能引导面板，默认不使用
    LuaGlobal["PlayerNameType"] = 0 
    LuaGlobal["AttackType"] = 1 -- 1 平滑攻击模式，先减少等待
    LuaGlobal["ClickAttacLock"] = true -- 点击其他玩家是否攻击锁定
    LuaGlobal["ClickPlayerMove"] = false -- 左键点击玩家是否移动
    LuaGlobal["AutoSkillLock"] = true -- 物理攻击玩家时是否自动技能锁定
    LuaGlobal["PickUpAllItem"] = true -- 物品内挂是否全部拾取
    LuaGlobal["ShowAllItemName"] = true -- 物品内挂是否全部现实物品名
    LuaGlobal["ShowOtherTalkString"] = true -- 是否显示他人头顶冒泡
    LuaGlobal["PrestigeDataType"] = true -- 声望字段
    LuaGlobal["MonsterSelectUseRect"] = true -- 怪物选择方式，true为默认，false为选取像素
    LuaGlobal["CommonChatBreakTime"] = 1 --普通聊天间隔秒数
    LuaGlobal["WorldChatBreakTime"] = 10 --世界频道聊天间隔秒数
    LuaGlobal["TitleFontType"] = "SIMLI18" --称号字体类型
    LuaGlobal["ShowMonsterHeaderInfo"] = true --是否显示选择怪物时候的怪物头像信息
    LuaGlobal["ShowDigBodyMagic"] = true --是否显示怪物挖肉特效
    LuaGlobal["DelegateSellDesc"] = "寄售挂单需要5000金币手续费"
    LuaGlobal["ShowPingIP"] = true
    LuaGlobal["ShowAccompanyName"] = true -- 是否显示随从名字
    LuaGlobal["ChatChannelXOffset"] = 0 --右边聊天频道的偏移，如果是37就是移到英雄怒气条的位子
    LuaGlobal["SelectUseWeap"] = true --选择角色时，武器是否作为选取区域
    LuaGlobal["QuickAddPointCount"] = 10 --快速修改人物属性的点数
    LuaGlobal["UseNewWorldMap"] = false --是否用新版的世界地图
    LuaGlobal["UseMultiDrugWhenNoDrug"] = true --没有蛊毒时使用群体蛊毒
    LuaGlobal["SkillMoveAttack"] = true
    LuaGlobal["CareStallTitleImageID"] = 1902000045 --摆摊头顶关注时图片ID
    LuaGlobal["NormalStallTitleImageID"] = 0 --摆摊头顶图片ID
    LuaGlobal["CareStallTitleFontColor"] = "DARKGOLD" --摆摊头顶关注时字体颜色
    LuaGlobal["NormalStallTitleFontColor"] = "YELLOW" --摆摊头顶字体颜色
    LuaGlobal["UseItemNoDelay"] = false
    LuaGlobal["RoleNameX"] = 152 --
    LuaGlobal["RoleNameY"] = 20 --
    LuaGlobal["DrawSelectHalo"] = true --是否显示怪物选中时候的脚底光环
    LuaGlobal["StallImage"] = 1902000060 --摆摊显示的图片
    LuaGlobal["GameMallVIPTip"] = "在商城中使用元宝购买商城物品可以获得积分（每花费1元宝，获得1积分）"
    LuaGlobal["DrawWingOnHorse"] = true --骑坐骑时是否描画翅膀
    LuaGlobal["ReconnetType"] = 0 --断线时是否重连，默认0 重连，1 则退出
    LuaGlobal["HpInfoUseDynamicPos"] = true --人物血条是否固定高度
    LuaGlobal["ManBodyID"] = 25000 --男人物裸模的ID
    LuaGlobal["WomenBodyID"] = 25500 --女人物裸模的ID
    LuaGlobal["ManShadowID"] = 25400 --男人物裸模的影子ID
    LuaGlobal["WomenShadowID"] = 25900 --女人物裸模的影子ID
    LuaGlobal["UseMagicWeaponAvatar"] = true --是否显示法宝
    LuaGlobal["NpcFontName"] = "SIMLI18" --npc名字的字体
    LuaGlobal["NpcNameColor"] = 4294894158 --npc名字的颜色
    LuaGlobal["NpcNameVOffset"] = -10 --npc名字的垂直方向偏移
    LuaGlobal["TipsBackImgID_Normal"] = "1900190004,1900190006,1900190005,1900190007,1900190008,1900190000,1900190001,1900190002,1900190003"
     --物品装备Tips的背景图片,空为默认
    LuaGlobal["TipsBackImgID_Focus"] = "1900180004,1900180006,1900180005,1900180007,1900180008,1900180000,1900180001,1900180002,1900180003"
     --当前物品Tips背景图片
    LuaGlobal["RefineImage"] = "0,0,0" --1~5 5~10 10~ 三种强化等级特效ID
    LuaGlobal["TipsDrawGrow"] = 1 --物品tips文本是否描边
    LuaGlobal["AVATAR_EFFECTBLEND1"] = 0 --绘制人物身体特效参数,0是加亮,即默认.1是正常
    LuaGlobal["AVATAR_EFFECTMASK1"] = MakeARGB(255, 255, 255, 255) --绘制人物身体特效参数,默认为MakeARGB(255,255,255,255)
    LuaGlobal["AVATAR_EFFECTBLEND2"] = 0 --武器
    LuaGlobal["AVATAR_EFFECTMASK2"] = MakeARGB(255, 255, 255, 255) --武器
    LuaGlobal["AVATAR_EFFECTBLEND3"] = 0 --坐骑
    LuaGlobal["AVATAR_EFFECTMASK3"] = MakeARGB(255, 255, 255, 255) --坐骑
    LuaGlobal["AVATAR_EFFECTMASKFORCE"] = 0 --//在中毒等会改变模型颜色的情况下是否强制使用设定的遮罩,0:非强制;1:强制
    LuaGlobal["TaskWindow_AutoQueryTask"] = 1 --在没有接主线任务时自动推荐一个主线任务
    LuaGlobal["TaskWindow_AutoQueryTaskElapse"] = 15 --自动推荐查询事件间隔
    LuaGlobal["AutoMoveItemsStr"] = "逍遥游1天,逍遥游50次,逍遥游20次,逍遥游10次,逍遥游,逍遥游1小时,逍遥游500次,逍遥游7天,逍遥游100次" --点击传送时额外判断背包中是否存在这些道具
    LuaGlobal["ChatWindowUseGrow"] = 1
    LuaGlobal["PlayerTextPosType"] = 1
    LuaGlobal["RichEdit_RI_ShowUnderline"] = 1
    LuaGlobal["CreateRole_EnterGameWithCreatedRole"] = true
    LuaGlobal["ServantIsMonster"] = false --术士宝宝或者法师宝宝是否视作monster
    LuaGlobal["MakeSureSafeDistance"] = false --自动挂机时 术士和法师是否检测安全距离
    LuaGlobal["AutoFightIsAttacPlayer"] = true --自动挂机时是否 攻击其他玩家
    LuaGlobal["AutoFightTaoRedBuff"] = true -- 挂机忽略术士红毒buff判定， true 时为只需一种绿毒
    LuaGlobal["RegineImageScale"] = 0.9 -- 精炼特效比例
    LuaGlobal["PakagePageSize"] = 100 --背包大小
    LuaGlobal["UseNewAvatart"] = true
    LuaGlobal["ShowClickGroudEffect"] = true --是否显示地面点击特效
    LuaGlobal["RockerIsfixed"] = true --摇杆固定=true  随手指移动=false
    LuaGlobal["ShowRockerFixed"] = true --如果GameSettingBasic里面有改变摇杆状态的选择框，这里要设为true，否则，设为false
    LuaGlobal["ShowTwoRocker"] = false --在固定摇杆模式下，是否需要显示两个摇杆。true表示显示两个摇杆，false表示只显示一个摇杆
    LuaGlobal["TwoRockerPos"] = 1 --双摇杆位置，只在双摇杆模式下有用。1表示跑在下面，走在上面，2表示走在下面，跑在上面
    LuaGlobal["ShowBindImage"] = true --Item 显示已绑定图片=true  不显示已绑定=false
    LuaGlobal["Android_BackPressedTwice"] = true --Android平台 点击两次返回键 是否退出游戏
    LuaGlobal["UseExtraMagic"] = true --是否使用代理Magic
    LuaGlobal["DefaultSenceScale"] = 100 --默认场景放大比例1.0
    LuaGlobal["ChatContentFillBack"] = false -- 聊天框 内容是否填充背景
    LuaGlobal["ChatContentColorForceWhite"] = true -- 聊天框 内容是否强制为白色
    LuaGlobal["ChatContentShowChannelName"] = true --  聊天框 是否显示频道名字
    LuaGlobal["ChatContentExFillBack"] = false --聊天小框 内容是否有背景色
    LuaGlobal["ChatContentExColorForceWhite"] = true -- 聊天小框 内容是否强制为白色
    LuaGlobal["OnlyWalk"] = false --只允许走路
    LuaGlobal["NpcFontName"] = "system" --- NPC字体
    LuaGlobal["RoleFontName"] = "HpFont"
     --- 人物 怪物字体
    LuaGlobal["BigEuqimentAutoLay"] = true --是否启用RoleEquiment程序自动调整任务模型位置
    LuaGlobal["ClickGroudCancelAutoAttacDuration"] = 5000 ---连续点击地面取消自动挂机的时间间隔 0 关闭 单位ms
    LuaGlobal["AutoUseSkillClickTick"] = 0 ---长按自动施放技能的判定时间，0关闭 单位ms
    LuaGlobal["ChatBubbleImageID"] = 1855033000 ---聊天气泡的贴图ID
    LuaGlobal["ChatBubbleAlpha"] = 255 ---聊天气泡的透明度 0-255
    --玩家名称的显示 value=true 走原来的显示逻辑，value=false 则强制不显示
    LuaGlobal["ShowPlayerFamilyName"] = true --是否显示玩家的行会名
    LuaGlobal["ShowPlayerALiasName"] = true --是否显示玩家的别名
    LuaGlobal["ShowPlayerMasterName"] = true --是否显示玩家的师徒名
    LuaGlobal["ShowPlayerSpouseName"] = true --是否显示玩家的配偶名称
    LuaGlobal["ShowPlayerCustomeName"] = true --是否显示玩家的自定义
    LuaGlobal["ShowOtherInfoBuff"] = false --是否显示其他玩家或者怪物的BUFF信息
    LuaGlobal["PlayerHPPosOffset"] = 45 --头顶血条位子Y偏移
    LuaGlobal["UsePlatformLogin"] = true --使用微信等第三方平台登录
    LuaGlobal["PlayerChatBubbleOffsetY"] = 0 --头顶聊天气泡Y偏移
    LuaGlobal["BGM_Title_Path"] = "Sound/Music/BGM_Title" --开始界面的BGM
    LuaGlobal["BGM_XuanRen_Path"] = "Sound/Music/BGM_XuanRen" --选人界面的BGM
    LuaGlobal["UseFixItemImageRect"] = true --物品框
    LuaGlobal["UseUserQualityEffect"] = true --是否使用蕴魂特效
    --聊天频道前缀
    LuaGlobal["CHANNEL_SYS_NAME"] = "[系统]"
    LuaGlobal["CHANNEL_Near_NAME"] = "附近"
    LuaGlobal["CHANNEL_Team_NAME"] = "队伍"
    LuaGlobal["CHANNEL_Guild_NAME"] = "帮会"
    LuaGlobal["CHANNEL_Map_NAME"] = "地图"
    LuaGlobal["CHANNEL_Speaker_NAME"] = "喇叭"
    LuaGlobal["CHANNEL_Private_NAME"] = "私聊"
    LuaGlobal["MOBAMode"] = false --MOBA逻辑
    LuaGlobal["MaxRecordTime"] = 60 --最长录音时间 单位秒
    LuaGlobal["RockerMoveTime"] = 0 --固定摇杆切换时间
    LuaGlobal["AutoTeam"] = true --是否自动组队
    LuaGlobal["UseFamilyMain"] = false
    LuaGlobal["UseFamilyRelation"] = false
    LuaGlobal["UseFamilyMemberWnd"] = false
    LuaGlobal["UseFamilyChatWnd"] = false
    LuaGlobal["AlwaysShowPetName"] = false --是否显示他人宠物名字
    LuaGlobal["ForceSelfScreenCenter"] = false --是否强制自己单位在屏幕中心，true的话可能导致出现黑边
    LuaGlobal["ShowHpText"] = false --是否显示头顶血条数字，true表示显示，false表示不显示
    LuaGlobal["UseAutoSearchMonsterRect"] = false --是否使用寻怪范围，使用则在该范围内没找到怪的情况下停止移动
    LuaGlobal["AutoSearchMonsterRectWidth"] = 10000
    LuaGlobal["AutoSearchMonsterRectHeight"] = 10000
    LuaGlobal["TEXT_TITLE_OFFSETY"] = 0 --称号偏移
    LuaGlobal["ClickGroundCancleObj"] = false --点击地面是否取消攻击锁定
    LuaGlobal["AlwaysShowMonsterHP"] = false --是否一直显示怪物血条
    LuaGlobal["ClickGroundCanMove"] = true
     --点击地面移动
    LuaGlobal["ClickGroudImageID"] = 3030820000 --地面点击特效图片ID
    LuaGlobal["PlayerCustomTextPosOffset"] = 40 --自定义名字的偏移
    LuaGlobal["AttachHurtImageID"] = 1900414900
    LuaGlobal["TaskStandWaitTick"] = 5000 --自动任务等待时间
    LuaGlobal["TaskWaitTick"] = 500 --自动任务等待时间

    -----------------------------------------多重血条-------------------------------------------------------------
    LuaGlobal["MultiHPDecreaseTime"] = 3000
    LuaGlobal["MultiHPMinDecreaseTime"] = 500 --单条血量消减时间
    LuaGlobal["MultiHPZeroImageID"] = 1857010023
    -----------------------------------------多重血条-------------------------------------------------------------
end

LoadLuaClientCfg()
下一篇:全局变量表>
全局变量表
更新时间：2026-02-28 19:36:00
下表列举了目前可用的全局变量。

按照变量名首字母进行了排序，您可在此页面进行页面搜索，定位到想要的结果。

变量名	数据类型	功能描述	示例
AccuratelyChoose	bool	
设置角色坐骑被选中的方式。

true代表点击资源实际像素点即可选中；

false代表点击资源所在矩形框即可选中，为默认值。

仅2D端游适用。

LuaGlobal["AccuratelyChoose"] = false
copy 
AddBloodImageID	unsigned int	
指定血条增加时，显示的数字飘字的起始图片资源ID。

数字0-9的图片资源ID指定时须按以下规则：从起始图片资源ID开始，末尾3位以100递增。如数字0的图片资源ID是1900407300，则指定数字1是1900407400, 数字2就要是1900407500，以此类推。

2D端游、H5适用。

LuaGlobal["AddBloodImageID"] = 1900405300
copy 
AddBloodImageInterval	unsigned int	
对应全局变量AddBloodImageID的飘字数字0-9的图片资源ID间隔，默认值为100。

如果资源ID间隔不是100，则可以通过此全局变量进行更改。

仅2D端游适用。

LuaGlobal["AddBloodImageInterval"] = 100
copy 
AddBloodPlusImageID	unsigned int	
指定血条增加时，显示的加号（+）图片资源ID。

2D端游、H5适用。

LuaGlobal["AddBloodPlusImageID"] = 1900405100
copy 
AddHpImageName	string	
指定血条增加时，显示的数字飘字的图集资源名称。

请参见自定义飘字效果了解更多信息。

2D手游、3D手游和3D端游适用。

LuaGlobal["AddHpImageName"] = "5300.png"
copy 
AllIconUseScale	bool	
设置接口CL:SetAnimIconScale是否可修改任意图片资源的缩放比例（不限于以15开头的图片资源）。

true代表接口CL:SetAnimIconScale可修改任意图片资源的缩放比例（不限于以15开头的图片资源）；

false代表接口CL:SetAnimIconScale仅支持修改以15开头的图片资源的缩放比例，为默认值。

2D手游、2D端游适用。

LuaGlobal["AllIconUseScale"] = false
copy 
AllowAutoPickUpItem	bool	
自动挂机时是否允许自动拾取物品。

true代表自动挂机时允许自动拾取物品，为默认值；

false代表自动挂机时不允许自动拾取物品。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AllowAutoPickUpItem"] = false
copy 
AllowDropHeroPackageItem	bool	
设置英雄背包中物品是否可直接丢弃至场景中。

true代表是；false代表否，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AllowDropHeroPackageItem"] = false
copy 
AllowZoomSceneItem	bool	
当道具掉落图标资源与物品图标资源一致时，设置掉落图标的显示方式。

没有掉落图标资源的道具可用物品图标资源代替，同时可使用此全局变量将物品图标资源缩小显示。

true代表掉落图标的长和宽均按照原尺寸的一半显示；

AllowZoomSceneItem_2.png
false代表掉落图标按照原尺寸大小显示，为默认值。

AllowZoomSceneItem.png
2D手游、2D端游适用。

LuaGlobal["AllowZoomSceneItem"] = false
copy 
AllSvrChatBreakTime	unsigned int	
设置全服聊天的最小时间间隔，单位为毫秒，最小值为10。

备注：全服喊话间隔也会受全局表中“全服喊话间隔”选项配置的值影响。实际全服喊话时间间隔为两者（此全局变量的值和全局表中“全服喊话间隔”选项配置的值）的最大值。

“全服喊话间隔”选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→角色相关→喊话相关区域。

AllSvrChatBreakTime.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AllSvrChatBreakTime"] = 10
copy 
AlwaysShowMonsterHP	bool	
是否一直显示怪物血条。

true代表是，即怪物血条会一直显示，为端游默认值；

AlwaysShowMonsterHP_2.png
false代表否，为手游默认值。

AlwaysShowMonsterHP.png
当此全局变量设置为false时，只要满足下列任一条件即可显示怪物血条（第2条仅适用于手游）：

（1）怪物被选中；

（2）怪物的类型为BOSS；

（3）怪物的当前血量小于最大血量。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AlwaysShowMonsterHP"] = false
copy 
AlwaysShowPetName	bool	
是否显示其他玩家的宠物名字。

true代表显示，为默认值；

AlwaysShowPetName_2.png
false代表不显示。

AlwaysShowPetName.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AlwaysShowPetName"] = false
copy 
Android_BackPressedTwice	bool	
针对Android平台，是否允许点击两次返回键退出游戏。

2D手游、3D手游适用。

LuaGlobal["Android_BackPressedTwice"] = true
copy 
AOEAroundCount	int	
在角色自动挂机的情况下，当目标周围的怪物达到一定数量时，才可以释放范围性技能。

此全局变量用于指定释放范围性技能时目标周围需要达到的怪物数量，默认值为2（代表目标周围至少有2只怪物时，才能释放范围性技能，相当于群攻范围的对象数最少为3）。

3D手游、3D端游适用。

LuaGlobal["AOEAroundCount"] = 2
copy 
AttachHurtImageID	unsigned int	
设置玩家受到额外伤害时显示的图片资源ID。

对应伤害类型定义中的伤害类型self_attach_num。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AttachHurtImageID"] = 1900414900
copy 
AttackSearchPlayer	bool	
点击普攻或SkillBar技能时是否自动选择目标攻击；

true代表是，即点击普攻键或者技能后，视野范围内没有怪物目标时，会依据当前攻击模式去寻找玩家作为目标；

false代表否，即点击普攻键或者技能时，只会自动选择怪物目标攻击，范围内没有怪物时，玩家只会空砍，不会将玩家作为攻击目标，为默认值。

仅2D手游、3D手游适用。	
LuaGlobal["AttackSearchPlayer"] = false
copy 
AttackTargetChaseInterval	int	
设置追击时的移动处理间隔。

默认值为0, 单位为毫秒。

3D手游、3D端游适用。

LuaGlobal["AttackTargetChaseInterval"] = 0
copy 
AttackType	int	
攻击模式。

1代表普通速度攻击模式。

2代表极速攻击模式。

备注：该全局变量3D无效，如果3D需要快速攻击，普攻硬直改成低，比如设置1。

2D手游、2D端游适用。

LuaGlobal["AttackType"] = 2
copy 
AutoAttacCheckCamp	bool	
设置自动挂机时是否检查角色和攻击目标为同一阵营。

true代表是，即自动挂机时检查角色和攻击目标为同一阵营；

false代表否，即自动挂机时不检查角色和攻击目标为同一阵营，为默认值。

2D手游、3D手游和3D端游适用。

LuaGlobal["AutoAttacCheckCamp"] = false
copy 
AutoAttackCheckFlySkill	bool	
设置自动挂机模式下是否检测飞行技能中的魔法阻挡点。

true代表检测；false代表不检测，为默认值。

角色处于自动挂机时，如遇到术士或法师一直站在一个点施放远程技能（如炎球）却无法打到怪物，请将此全局变量设为true。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AutoAttackCheckFlySkill"] = false
copy 
AutoAttackDelayCoefficient	int	
自动挂机时，法师和术士因攻击延迟时间过大导致施法速度过慢的问题。

此全局变量可用于设置挂机时的攻击延迟系数，可以适当降低延迟时间从而提高施法速度。

延迟时间的计算公式为：延迟时间 = 100ms * 攻击延迟系数（即此全局变量的配置值），此全局变量的默认值为10，即默认延迟时间大约为1s。

备注：

若技能冷却时间（CD时间）小于延迟时间，则两次施放技能的时间间隔为技能冷却时间（CD时间）加上延迟时间；

若技能冷却时间（CD时间）大于延迟时间，则不受延迟时间的影响。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AutoAttackDelayCoefficient"] = 10
copy 
AutoAttcCheckDrug	bool	
术士挂机时是否检测其有无符咒类别为1（即符咒类）的符咒。

该选项的访问路径为：游戏工具平台→游戏配置→装备&道具→道具模板表→基础信息→详细数据-其它类别。

AutoAttcCheckDrug.png
true代表检测；false代表不检测，为默认值。

若此全局变量设置为true且背包中存在对应药粉时，可在连续普攻中施放红绿毒。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AutoAttcCheckDrug"] = false
copy 
AutoAvoidObstacle	bool	
是否简单自动避障。

玩家前进时，正前方如果遇到阻挡点（地图、怪物、NPC等阻挡点），会尝试左前方和右前方的路，来简单自动避障；当遇到大型建筑时，左前方、右前方均有阻挡点，则无法避障。

true代表是；false代表否，为默认值。

备注：功能在3D对应全局变量SmartMove。

仅2D端游适用。

LuaGlobal["AutoAvoidObstacle"] = false
copy 
AutoChangeTarget	bool	
在自动挂机的状态下，当玩家使用普通攻击无法攻击到目标时，是否自动切换攻击目标。

true代表是，即当玩家使用普通攻击无法攻击到目标时自动切换攻击目标；

false代表否，即当玩家使用普通攻击无法攻击到目标时不切换攻击目标，为默认值。

2D手游、2D端游适用。

LuaGlobal["AutoChangeTarget"] = false
copy 
AutoDownHorseWithoutRes	bool	
控制当玩家基本属性坐骑ID（ROLE_PROP_MOUNTID）为0时是否自动下马。

true表示自动下马，为默认值；false表示不自动下马。

2D手游、2D端游适用。

LuaGlobal["AutoDownHorseWithoutRes"] = true
copy 
AutoDrugAllJob	bool	
战士和法师挂机时是否都可以使用红绿毒。

true代表是，即战士和法师挂机时都可以使用红绿毒；

false代表否，即战士和法师挂机时都不可以使用红绿毒，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AutoDrugAllJob"] = true
copy 
AutoFightIsAttacPlayer	bool	
自动挂机时是否攻击其他玩家角色。

true代表是，即自动挂机时会攻击其他玩家角色；

false代表否，即自动挂机时不会攻击其他玩家角色，为默认值。

2D手游、3D手游和3D端游适用。

LuaGlobal["AutoFightIsAttacPlayer"] = true
copy 
AutoMoveItemsStr	string	
点击传送时额外判断背包中是否存在所定义的道具。

道具的索引名称以字符串形式，中间用英文逗号隔开。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AutoMoveItemsStr"] = "逍遥游1天,逍遥游50次,逍遥游20次,逍遥游10次,逍遥游,逍遥游1小时,逍遥游500次,逍遥游7天,逍遥游100次"
copy 
AutoSearchItemDistance	int	
设置自动挂机时的道具搜索范围，单位为逻辑格，默认值为8（实际搜索范围小于8个逻辑格）。

3D手游、3D端游适用。

LuaGlobal["AutoSearchItemDistance"] = 8
copy 
AutoSearchMonsterRectHeight	int	
自动挂机时搜索怪物的场景区域高度（像素），默认值为10000。

2D手游、3D手游适用。

LuaGlobal["AutoSearchMonsterRectHeight"] = 10000
copy 
AutoSearchMonsterRectWidth	int	
自动挂机时搜索怪物的场景区域宽度（像素），默认值为10000。

2D手游、3D手游适用。

LuaGlobal["AutoSearchMonsterRectWidth"] = 10000
copy 
AutoSkillLock	bool	
物理攻击玩家时是否将攻击对象设为技能锁定对象。

true代表是；false代表否，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["AutoSkillLock"] = true
copy 
AutoSpeechInterval	int	
控制自动发言间隔。

默认值为15, 单位为秒。

可自定义自动发言间隔, 但是低于15秒的设置是无效的。

2D手游、2D端游适用。

LuaGlobal["AutoSpeechInterval"] = 15
copy 
AutoTeam	bool	
是否自动同意他人的组队邀请。

true代表是，即自动同意他人的组队邀请；

false代表否，即收到他人的组队邀请后需要玩家自行选择是否要加入该队伍。

此全局变量设置为false的情况下，若玩家收到他人的组队邀请，会显示下图中的组队按钮，点击按钮后即可选择是否要加入该队伍。

AutoTeam.png
AutoTeam_2.png
2D手游、3D手游适用。

LuaGlobal["AutoTeam"] = true
copy 
AutoUnPackItem	bool	
设置物品是否自动解包。

true代表当物品用完后会自动解包；false代表当物品用完后不会自动解包，为默认值。

3D手游、3D端游适用。

LuaGlobal["AutoUnPackItem"] = false
copy 
AutoUseSkillClickTick	int	
选中目标并点击一次技能后，该技能可自动被点击。

此全局变量用于设置技能自动被点击的时间间隔（单位为毫秒，默认值为0）。

当此全局变量设置为0时，则关闭技能自动被点击的功能。

此全局变量不支持开关类、召唤类和二段式类型的技能。

2D手游、3D手游适用。

LuaGlobal["AutoUseSkillClickTick"] = 0
copy 
AVATAR_EFFECTBLEND1	int	
绘制角色人物身体特效的参数。

0代表加亮，为默认值；1代表正常。

2D手游、2D端游适用。

LuaGlobal["AVATAR_EFFECTBLEND1"] = 0
copy 
AVATAR_EFFECTBLEND2	int	
绘制角色人物武器特效的参数。

0代表加亮，为默认值；1代表正常。

2D手游、2D端游适用。

LuaGlobal["AVATAR_EFFECTBLEND2"] = 0
copy 
AVATAR_EFFECTBLEND3	int	
绘制角色人物坐骑特效的参数。

0代表加亮，为默认值；1代表正常。

2D手游、2D端游适用。

LuaGlobal["AVATAR_EFFECTBLEND3"] = 0
copy 
AVATAR_EFFECTMASK1	unsigned int	
设置角色人物身上添加的外观特效的颜色。

仅在全局变量AVATAR_EFFECTMASKFORCE = 1时生效。

2D手游、2D端游适用。

LuaGlobal["AVATAR_EFFECTMASK1"] = MakeARGB(255,255,255,255) --绘制人物身体特效参数,默认为MakeARGB(255,255,255,255)
copy 
AVATAR_EFFECTMASK2	unsigned int	
设置角色武器上添加的外观特效的颜色。

仅在全局变量AVATAR_EFFECTMASKFORCE = 1时生效。

2D手游、2D端游适用。

LuaGlobal["AVATAR_EFFECTMASK2"] = MakeARGB(255,255,255,255)
copy 
AVATAR_EFFECTMASK3	unsigned int	
设置角色坐骑上添加的外观特效的颜色。

仅在全局变量AVATAR_EFFECTMASKFORCE = 1时生效。

2D手游、2D端游适用。

LuaGlobal["AVATAR_EFFECTMASK3"] = MakeARGB(255,255,255,255)
copy 
AVATAR_EFFECTMASKFORCE	unsigned int	
在中毒等会改变模型颜色的情况下是否强制使用设定的遮罩。

0代表非强制，为默认值；1代表强制。

2D手游、2D端游适用。

LuaGlobal["AVATAR_EFFECTMASKFORCE"] = 0
copy 
AvoidOverlapWithTargetOnAttack	bool	
判断攻击时是否检测玩家自己和攻击目标站在相同逻辑格中。

true代表是，即攻击时检测玩家自己和攻击目标站在相同逻辑格中。

false代表否，保持原来的流程，即攻击时不检测玩家自己和攻击目标站在相同逻辑格中，为默认值。

当此全局变量设置为true且玩家自己和攻击目标站在相同逻辑格中时，玩家会随机移动到某一合适的逻辑格后再进行攻击。

2D手游、2D端游适用。

LuaGlobal["AvoidOverlapWithTargetOnAttack"] = false
copy 
BackPictureNum	int	
设置加载界面中用于切换的图片的生效数量，默认值为0（即不生效）。

若要设置加载界面中切换图片的时间间隔，可使用全局变量ChangeBackPictureTime。

备注：

加载界面中用于切换的图片的命名规则为StartBack + n.jpg（n∈[0,此全局变量的配置值-1]）；

加载界面中的图片按照0到此全局变量的配置值-1的顺序依次进行播放；

加载界面中用于切换的图片的存储路径如下：

端游：游戏主目录/extra/区服ID/GUIRes/Start

手游：游戏主目录/res/extra/区服ID/GUIRes/Start

2D手游、2D端游适用。

LuaGlobal["BackPictureNum"] = 5
copy 
BaseMoveActionSpeed	int	
当角色需要计算移动动作速度倍率时，可使用此全局变量（默认值为200）设置计算用的基础速度，全局变量MoveActionSpeedRate设置移动动作变速的幅度。

移动动作速度倍率计算公式：动作速度倍率 = 1 + (1000/当前玩家速度- 1000/BaseMoveActionSpeed) * MoveActionSpeedRate。

例如：移动动作变速的幅度值为0.08，计算用的基础速度值为200，若此时当前玩家速度为100，则动作加速倍率 = 1 + (1000/100- 1000/200) * 0.08 = 1.4。

3D手游、3D端游适用。

LuaGlobal["BaseMoveActionSpeed"] = 200
copy 
BGM_Title_Path	string	
游戏开始界面的背景音乐指定路径。

注：在配置指定路径时，路径名称需要连起来填写，不能带有分隔符。

2D手游、3D手游适用。

LuaGlobal["BGM_Title_Path"] = "SoundMusicBGM_Title"
copy 
BGM_XuanRen_Path	string	
游戏选择角色界面的背景音乐指定路径。

注：在配置指定路径时，路径名称需要连起来填写，不能带有分隔符。

2D手游、3D手游适用。

LuaGlobal["BGM_XuanRen_Path"] = "SoundMusicBGM_XuanRen"
copy 
BigEuqimentAutoLay	bool	
是否启用RoleEquiment程序自动调整人物模型位置。

true代表启用；false代表不启用，为默认值。

请参见如何解决装备内观显示偏移FAQ文档。

2D手游、2D端游适用。

LuaGlobal["BigEuqimentAutoLay"] = true
copy 
BigMapPlayerselfPosImg	int	
自定义玩家自身在大地图上的图标资源ID。

2D手游、3D手游和3D端游的默认值为1859900011，2D端游默认值为1900500011。

BigMapPlayerselfPosImg.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["BigMapPlayerselfPosImg"] = 1859900011 --2D手游、3D手游和3D端游
copy 
LuaGlobal["BigMapPlayerselfPosImg"] = 1900500011 --2D端游
copy 
BigMapPlayerselfTwinkingImg	int	
设置在打开大地图后显示的玩家自身图标资源ID（也可以是AnimSetting.xml文件中配置的动画资源），默认值为0（代表关闭上述功能，使用默认资源显示）。

设置后，该资源仅会显示1秒左右，可以达到闪烁提示玩家自身位置的效果。

BigMapPlayerselfTwinkingImg.gif
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["BigMapPlayerselfTwinkingImg"] = 0
copy 
BigMapShowBossReliveTime	bool	
设置大地图上是否显示BOSS重生的倒计时。

true代表是，即大地图上会显示BOSS重生的倒计时；

BigMapShowBossReliveTime.png
false代表否，即大地图上不会显示BOSS重生的倒计时，为默认值。

备注：若要使用BOSS重生倒计时功能，则小地图图标表中的“怪物名字”和“怪物被击杀时的图片ID”选项必须配置。

该选项访问路径为：游戏工具平台→游戏配置→其他表格→小地图图标区域。

BigMapShowBossReliveTime_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["BigMapShowBossReliveTime"] = false
copy 
BigMapTeammateMark	unsigned int	
自定义其他队友在大地图上的图标资源ID，默认值为1859900012。

BigMapTeammateMark.png
3D手游、3D端游适用。

LuaGlobal["BigMapTeammateMark"] = 1859900012
copy 
BigMapWindow_JumpNameFont	string	
大地图界面打开后，显示的跳转点文字的字体名。

BigMapWindow_JumpNameFont.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["BigMapWindow_JumpNameFont"] = "SIMLI18"
copy 
BigMapWindow_JumpNameTxtColor	unsigned int	
大地图界面打开后，显示的跳转点文字的颜色。

BigMapWindow_JumpNameFont.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["BigMapWindow_JumpNameTxtColor"] = GUI:MakeARGB(255,255,240,0)
copy 
BinHashCache	bool	
是否使用二进制hash文件进行缓存。

仅2D端游适用。

LuaGlobal["BinHashCache"] = true
copy 
BuffIconDrawPosX	int	
设置玩家角色面板下的BUFF图标在水平方向的偏移值，默认值为17。

BuffIconDrawSizeY.png
此全局变量仅对玩家角色面板（对应PlayerHeaderInfo.lua脚本文件）下的BUFF图标生效。

仅2D端游适用。

LuaGlobal["BuffIconDrawPosX"] = 17
copy 
BuffIconDrawPosY	int	
设置玩家角色面板下的BUFF图标在垂直方向的偏移值，默认值为3。

BuffIconDrawSizeY.png
此全局变量仅对玩家角色面板（对应PlayerHeaderInfo.lua脚本文件）下的BUFF图标生效。

仅2D端游适用。

LuaGlobal["BuffIconDrawPosY"] = 3
copy 
BuffIconDrawSizeX	int	
设置玩家角色面板下的BUFF图标的宽度，单位为像素（px），默认值为22。

BuffIconDrawSizeY.png
此全局变量仅对玩家角色面板（对应PlayerHeaderInfo.lua脚本文件）下的BUFF图标生效。

仅2D端游适用。

LuaGlobal["BuffIconDrawSizeX"] = 22
copy 
BuffIconDrawSizeY	int	
设置玩家角色面板下的BUFF图标的宽度，单位为像素（px），默认值为22。

BuffIconDrawSizeY.png
此全局变量仅对玩家角色面板（对应PlayerHeaderInfo.lua脚本文件）下的BUFF图标生效。

仅2D端游适用。

LuaGlobal["BuffIconDrawSizeY"] = 22
copy 
BuffMountOffsetMatchHPImage	bool	
骑乘坐骑时，控制角色身上称号BUFF与血条图片的相对位置是否不变。

true代表是；false代表否，为默认值。

2D手游、2D端游适用。

LuaGlobal["BuffMountOffsetMatchHPImage"] = true
copy 
CacheMapList	string	
缓存跳转之前的场景资源，以字符串形式，中间用英文逗号隔开。

"巫山城,龙城"表示只缓存巫山城和龙城；

"All"表示所有场景资源都缓存。

""表示不缓存场景资源，为默认值。

3D手游、3D端游适用。

LuaGlobal["CacheMapList"] = "巫山城,龙城"
copy 
CameraOffsetZ	float	
自定义角色在场景中显示的位置，默认值为0。

数值越大角色在场景中显示的位置越往上。

默认情况下，角色在场景中显示的位置如下图所示。


当设置LuaGlobal["CameraOffsetZ"] = 6.5时，角色在场景中显示的位置如下图所示。

CameraOffsetZ.png
3D手游、3D端游适用。

LuaGlobal["CameraOffsetZ"] = 0
copy 
CameraRotationOffsetX	int	
调节摄像头的视角，范围为0-90，默认值为40。

若需要视角更趋向水平，则只需将此全局变量的值调小即可；

若需要视角更趋向垂直，则只需将此全局变量的值调大即可。

3D手游、3D端游适用。

LuaGlobal["CameraRotationOffsetX"] = 40
copy 
CameraZoomLevel	bool	
设置是否开启自动保存摄像机距离档位至本地配置的功能。

true代表开启；false代表关闭，为默认值。

开启此功能后，若玩家在游戏中改变了摄像机距离的档位，则新的档位会保存在本地。

备注：仅当首次安装游戏、更换游戏区服、玩家安装新目录或删除了原目录再安装时，该设置会恢复为区服自定义的配置值（若指定区服未自定义，则会恢复为官方默认值）。

若要修改摄像机距离的档位的默认值，请参见FAQ：如何自定义摄像机距离的档位的默认值。

3D手游、3D端游适用。

LuaGlobal["CameraZoomLevel"] = false
copy 
CareStallTitleFontColor	string	
设置角色摆摊被其他角色关注时，其头顶显示的摊位名的字体颜色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CareStallTitleFontColor"] = "DARKGOLD"
copy 
CareStallTitleImageID	unsigned int	
设置角色摆摊被其他角色关注时，其头顶显示的摊位名的背景图片资源ID。

若此全局变量的配置值为单个图片资源ID，则角色摆摊被关注时摊位名的背景图片会使用默认的单图模式；

若此全局变量的配置值为9个图片资源ID（为字符串格式，中间以英文逗号分割），则角色摆摊被关注时摊位名的背景图片会使用九宫格模式（可实现为摊位名添加一个描边气泡的功能，如下图所示）。

CareStallTitleImageID.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CareStallTitleImageID"]  = 1902000045 --单图模式
copy 
LuaGlobal["CareStallTitleImageID"]  = "4000500400, 4000500402, 4000500406, 4000500408, 4000500404, 4000500401, 4000500407, 4000500403, 4000500405" --九宫格模式
copy 
CastleWarEnemyColor	unsigned int	
设置攻城战敌方名字的颜色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CastleWarEnemyColor"] = MakeARGB(255,253,108,15)
copy 
CastleWarOtherColor	unsigned int	
设置攻城战第三方名字的颜色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CastleWarOtherColor"] = MakeARGB(255,252,249,28)
copy 
CastleWarSelfColor	unsigned int	
设置攻城战我方名字的颜色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CastleWarSelfColor"] = MakeARGB(255,254,67,243)
copy 
CBGSellWndItemsCount	int	
设置神兔宝库每页可显示的最大商品数量，范围为1~5，默认值为5。

备注：ShentuBaoku.lua脚本文件创建商品列表的数量时，注意要和此全局变量配置的值保持一致。

此全局变量设置为2的效果如下图所示。

CBGSellWndItemsCount.png
2D手游、2D端游适用。

LuaGlobal["CBGSellWndItemsCount"] = 5
copy 
ChangeBackPictureTime	int	
设置加载界面中切换图片的时间间隔，单位为毫秒（ms），默认值为15000。

若要设置加载界面中用于切换的图片的生效数量，可使用全局变量BackPictureNum。

2D手游、2D端游适用。

LuaGlobal["ChangeBackPictureTime"] = 15000
copy 
CHANNEL_AllServer_NAME	string	
设置聊天全服频道中显示的消息的前缀，默认为“世界”。如显示“玩家角色名[定义的前缀]”。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_AllServer_NAME"] = "世界"
copy 
CHANNEL_Camp_NAME	string	
设置聊天阵营频道中显示的消息的前缀，默认为“阵营”。如显示“玩家角色名[定义的前缀]”。

CHANNEL_Camp_NAME.png
2D手游、3D手游适用。

LuaGlobal["CHANNEL_Camp_NAME"] = "阵营"
copy 
CHANNEL_Guild_NAME	string	
设置聊天帮会频道中显示的消息的前缀。如显示“玩家角色名[定义的前缀]”。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_Guild_NAME"]  = "帮会"
copy 
CHANNEL_Map_NAME	string	
设置聊天地图频道中显示的消息的前缀。如显示“玩家角色名[定义的前缀]”。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_Map_NAME"]  = "地图"
copy 
CHANNEL_Near_NAME	string	
设置聊天附近频道中显示的消息的前缀。如显示“玩家角色名[定义的前缀]”。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_Near_NAME"]  = "附近"
copy 
CHANNEL_Private_NAME	string	
设置聊天私聊频道中显示的消息的前缀。如显示“玩家角色名[定义的前缀]”。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_Private_NAME"] = "私聊"
copy 
CHANNEL_Speaker_NAME	string	
设置聊天小喇叭显示的消息的前缀。如显示“玩家角色名[定义的前缀]”。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_Speaker_NAME"] = "喇叭"
copy 
CHANNEL_SYS_NAME	string	
设置聊天系统频道显示的消息的前缀。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_SYS_NAME"] = "[系统]" 
copy 
CHANNEL_Team_NAME	string	
设置聊天队伍频道中显示的消息的前缀。如显示“玩家角色名[定义的前缀]”。

2D手游、3D手游适用。

LuaGlobal["CHANNEL_Team_NAME"] = "队伍"
copy 
ChatBubbleAlpha	int	
设置聊天气泡的透明度，范围为0~255。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatBubbleAlpha"] = 255
copy 
ChatBubbleImageID	unsigned int	
设置聊天气泡的九宫格贴图样式，此处配置对应的九宫格贴图资源的起始ID即可。

2D手游、3D手游适用。

LuaGlobal["ChatBubbleImageID"] = 1855033000
copy 
ChatChannelXOffset	int	
设置所有频道、当前频道、私聊频道、行会频道、世界频道、组队频道按钮的水平偏移。

此全局变量仅针对通过ChatWindow.lua文件创建的聊天框。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatChannelXOffset"] =  0
copy 
ChatContentColorForceWhite	bool	
设置聊天框中的内容是否强制为白色。

true代表是；false代表否，为默认值。

2D手游、3D手游适用。

LuaGlobal["ChatContentColorForceWhite"] = false
copy 
ChatContentExFillBack	bool	
设置聊天小框中的内容是否填充背景。

true代表是；false代表否，为默认值。

2D手游、3D手游适用。

LuaGlobal["ChatContentExFillBack"] = true
copy 
ChatContentFillBack	bool	
设置聊天框中的内容是否填充背景。

true代表是；false代表否，为默认值。

2D手游、3D手游适用。

LuaGlobal["ChatContentFillBack"] = true
copy 
ChatContentShowChannelName	bool	
设置聊天框是否显示频道名字。

true代表显示频道名字；false代表不显示频道名字，为默认值。

ChatContentShowChannelName.png
2D手游、3D手游适用。

LuaGlobal["ChatContentShowChannelName"] = false
copy 
ChatExContentShowByChannel	bool	
设置聊天框是否按照频道显示内容。

true代表根据频道显示内容；false代表显示全部内容，为默认值。

2D手游、3D手游适用。

LuaGlobal["ChatExContentShowByChannel"] = false
copy 
ChatWindowInputWidth	int	
设置聊天界面输入框的长度，单位为像素，默认值为200。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatWindowInputWidth"] = 200
copy 
ChatWindowMaxLine	int	
设置聊天窗口允许的最大行数。

手游中，默认值为50；端游中，默认值为100。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatWindowMaxLine"] = 100
copy 
ChatWindowMenuImage	unsigned int	
自定义聊天窗口右键角色名弹出菜单条目的图片样式。

ChatWindowMenuImage.png
2D端游、3D端游适用。

LuaGlobal["ChatWindowMenuImage"] = 1900340224
copy 
ChatWindowShowAllSvrChannel	bool	
设置是否开启全服聊天功能。

true代表开启；false代表关闭，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatWindowShowAllSvrChannel"] = false
copy 
ChatWindowShowCampChannel	bool	
设置是否启用阵营频道。

true代表启用阵营频道；false代表关闭阵营频道，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatWindowShowCampChannel"] = false
copy 
ChatWindowShowLevel	bool	
设置是否在聊天框内显示的玩家角色等级。

true代表显示，为默认值；false代表不显示。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatWindowShowLevel"] = true
copy 
ChatWindowUseBufferLock	bool	
设置锁定聊天窗口是否使用新的逻辑。

ChatWindowUseBufferLock.png
true代表是，即使用缓存锁将超出容量的消息缓存起来，不再及时显示在聊天窗口中；

false代表否，即保持原来的效果（可能会出现无法锁定的情况），为默认值。

仅2D端游适用。

LuaGlobal["ChatWindowUseBufferLock"] = false
copy 
ChatWindowUseGrow	int	
设置聊天内容是否描边。

1代表描边；0代表不描边，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ChatWindowUseGrow"] = 0
copy 
ChatWindowWhiteBack	bool	
设置聊天框内容是否使用白色背景。

true代表是；false代表否，为默认值。

2D手游、3D手游适用。

LuaGlobal["ChatWindowWhiteBack"] = false
copy 
CheckClientFile	bool	
设置服务端是否开启检查客户端的完整性。

true代表开启，为默认值，会影响客户端的启动速度；false代表关闭。

此全局变量的配置需和全局表中的检测客户端完整性字段的配置一致。如果两者配置不一致，会导致无法进入游戏。

当全局表中的检测客户端完整性字段配置为开启时，此全局变量要设置为true；当全局表中的检测客户端完整性字段配置为关闭时，此全局变量要设置为false。

仅2D端游适用。

LuaGlobal["CheckClientFile"] = false
copy 
ChiShaAlways	bool	
设置是否开启刀刀风刺。

true代表开启；false代表不开启，为默认值。

2D手游、2D端游适用。

LuaGlobal["ChiShaAlways"] = false
copy 
ClickAttacLock	bool	
点击其他玩家角色时，是否将其设为普攻的锁定对象。

true代表是；false代表否，为默认值。

2D端游、3D端游适用。

LuaGlobal["ClickAttacLock"] = false
copy 
ClickGroudCancelAutoAttacDuration	int	
连续点击地面取消自动挂机的时间间隔（单位为毫秒）。

若将此全局变量设置为0，则表示连续点击地面不会取消自动挂机。

2D手游、3D手游适用。

LuaGlobal["ClickGroudCancelAutoAttacDuration"] = 5000
copy 
ClickGroudImageID	unsigned int	
点击地面时的特效图片资源起始ID。

ClickGroudImageID.png
仅2D手游适用。

LuaGlobal["ClickGroudImageID"] = 3030820000
copy 
ClickGroundCancleObj	bool	
点击地面时，是否取消攻击锁定。

true代表是，即点击地面时取消攻击锁定；

false代表否，即点击地面时不取消攻击锁定，为默认值。

2D手游、3D手游适用。

LuaGlobal["ClickGroundCancleObj"] = false
copy 
ClickGroundCanMove	bool	
点击场景地面时角色是否可以移动。

true代表是，即点击场景地面时角色可以移动，为默认值；

false代表否，即点击场景地面时角色不可以移动。

2D手游、3D手游适用。

LuaGlobal["ClickGroundCanMove"] = true
copy 
ClickMonsterMove	bool	
左键点击怪物时玩家角色是否移动。

true代表野怪会直接去打，宠物则是移动，为默认值；false代表野怪会直接去打, 宠物则是仅选中。

仅2D端游适用。

LuaGlobal["ClickMonsterMove"] = true
copy 
ClickPlayerMove	bool	
手游：双击其他玩家时玩家本身是否移动。

端游：左键点击其他玩家时玩家本身是否移动。

true代表移动，为默认值；false代表不移动。

2D手游、2D端游适用。

LuaGlobal["ClickPlayerMove"] = false
copy 
CommonAttackSearchPlayer	bool	
设置点击普攻按钮时是否会自动选择玩家作为攻击目标。

true代表是，即点击普攻按钮时会优先选择玩家作为攻击目标；

false代表否，即点击普攻按钮时会优先选择怪物作为攻击目标，为默认值。

仅3D手游适用。

LuaGlobal["CommonAttackSearchPlayer"] = false
copy 
CommonChatBreakTime	int	
普通聊天发送消息的间隔时间（单位为秒），默认值为1。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CommonChatBreakTime"] = 1
copy 
CompareFuZhouTip	bool	
装备类型为符咒的物品显示Tips并且身上有同类型的符咒时，是否显示符咒类型装备的Tips比较。

CompareFuZhouTip.png
true代表显示Tips比较；false代表不显示Tips比较，为默认值。

此全局变量仅在GUI:ItemCtrlEnableCompareTips的参数enable设置为true时生效。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CompareFuZhouTip"] = false
copy 
CorrectFontHeight	bool	
设置是否开启矫正字体高度。

true代表是，即开启矫正字体高度；

false代表否，即关闭矫正字体高度的功能，为默认值。

注意：当此全局变量设置为true时，会矫正所有控件中的文字字体高度，可能会导致某些控件显示异常（例如：调用接口GUI:RichEditSetOffSet的多功能编辑框），需要重新适配。

仅手游适用。

LuaGlobal["CorrectFontHeight"] = false
copy 
CorrectFontWidth	bool	
设置是否开启矫正字体宽度。开启后，手游端非雅黑字体文字在聊天框内显示超出范围等异常将得到改善。

true代表是，即开启矫正字体宽度；

false代表否，即关闭矫正字体宽度，为默认值。

仅手游适用。

LuaGlobal["CorrectFontWidth"] = false
copy 
CounterAttackCheckAttackMode	int	
是否根据攻击模式反击。

true代表根据攻击模式反击；false代表不根据攻击模式反击，为默认值。

3D手游、3D端游适用。

LuaGlobal["CounterAttackCheckAttackMode"] = false
copy 
CounterAttackGrayName	bool	
是否反击灰名玩家。

true代表反击；false代表不反击，为默认值。

3D手游、3D端游适用。

LuaGlobal["CounterAttackGrayName"] = false
copy 
CounterAttackType	int	
在开启了自动反击的情况下，可用于设置反击对象的类型。

0代表反击所有对象，为默认值；

1代表只反击玩家。

关于如何开启自动反击，请参考接口CL:SetCounterAttackID的说明。

3D手游和3D端游适用。

LuaGlobal["CounterAttackType"] = 0
copy 
CreateRole_EnterGameWithCreatedRole	bool	
进入游戏时是否创建角色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["CreateRole_EnterGameWithCreatedRole"] = false
copy 
CustomPakagePageSize	int	
设置背包每页的容量，即每页可容纳物品的最大数量，默认值为40。

2D端游、3D端游适用。

LuaGlobal["CustomPakagePageSize"] = 40
copy 
DamageTriggeredProtectionDelayMS	int	
玩家收到伤害后延迟多久会触发保护。

单位为毫秒，0代表立即触发，为默认值。

备注：仅对保护设置里面的8和9有效，对应保护面板里的Combox8和Combox9、Check8和Check9控件和生命值限制，如下图所示：DamageTriggeredProtectionDelayMS.png。

2D手游、2D端游适用。

LuaGlobal["DamageTriggeredProtectionDelayMS"] = 0
copy 
DefaultJob	int	
自定义新建角色的默认职业。

1代表战士，为默认值；

2代表法师；

3代表术士；

其他数值设置不生效，会修正为战士。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["DefaultJob"] = 1
copy 
DefaultSenceScale	int	
默认场景放大的比例（百分比），默认值为125。

仅2D手游适用。

LuaGlobal["DefaultSenceScale"] = 125
copy 
DefaultStallTitleImageID	int	
摆摊默认背景图片，该图片实际不会显示出来；如果该图片资源不存在，则全局变量NormalStallTitleImageID和CareStallTitleImageID也将不会显示。

2D手游、2D端游适用。

LuaGlobal["DefaultStallTitleImageID"] = 1902000045
copy 
DefaultUseConfigGameProtectSettingData	bool	
设置是否使用用户自定义的GameProtectSetting配置。

true代表是，即使用用户自定义的GameProtectSetting配置，为默认值；

false代表否，即使用db文件夹中下载更新的配置（游戏保护设置中保存的配置）。

备注：

若要玩家的保护配置更新，则需要将此全局变量设置为false；

工具后台中修改保护设置中的物品时的注意点：

①如果是添加或删除物品（即设置的物品种类数量发生变化），则修改完成之后即可生效；

②如果是替换物品（即设置的物品种类数量未发生变化），则只有当物品的种类数量大于2时修改才会生效；

③物品“无”也算作一种物品。

例如：下图中框选部分有3个物品“无”，则看作3种物品。

DefaultUseConfigGameProtectSettingData_2.png
2D手游、3D手游和3D端游适用。

LuaGlobal["DefaultUseConfigGameProtectSettingData"] = true
copy 
DelegateChargeInfo	string	
寄售时点击“确定”按钮后的弹出窗口的提示内容。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["DelegateChargeInfo"] = "本次委托将收取5000金币手续费，确定要委托吗?"
copy 
DelegateSellDesc	string	
寄售界面的提示内容，如“寄售挂单需要5000金币手续费”。

DelegateSellDesc.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["DelegateSellDesc"] = "寄售挂单需要5000金币手续费"
copy 
DisableDeleteNonEmptyMail	bool	
控制删除邮件时，是否收到服务端删除成功的协议再进行删除。

true代表开启支持新的邮件删除逻辑；

false代表沿用原邮件删除逻辑，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["DisableDeleteNonEmptyMail"] = false
copy 
DLImageType	int	
设置下载进度条图片的类型。

0代表使用图片资源1805400004，为默认值；

DLImageType.png
非0代表使用图片资源1933600001。

DLImageType_2.png
相关接口：SetDrawDLImage和Lua_SetDrawDLImage（设置下载资源时是否显示进度条）。

仅2D端游适用。

LuaGlobal["DLImageType"] = 0
copy 
DoNotDrawTransparentWhenStone	bool	
当玩家添加“模型变色”类型为“石化”的BUFF时，玩家自己不会显示石化状态。

若要设置玩家自己显示石化状态，则需要将此全局变量设置为true。

DoNotDrawTransparentWhenStone.png
“模型变色”选项访问路径为：游戏工具平台→游戏配置→技能→Buff模板表→Buff模板信息区域。

DoNotDrawTransparentWhenStone_2.png
true代表玩家自己会显示石化状态；

false代表玩家自己不会显示石化状态，为默认值。

仅2D端游适用。

LuaGlobal["DoNotDrawTransparentWhenStone"] = true
copy 
DragWindowAlpha	int	
设置窗口拖动时的透明度，默认值为150。

备注：

透明度分为256个等级，其值介于0~255之间。

0表示全透明，255表示不透明。

若要此全局变量生效，需要同时满足以下2个条件：

1.全局变量SupportWindowMove设置为true；

2.使用接口GUI:WndSetCascadeOpacity设置了拖动窗口显示透明度。

2D手游、3D手游适用。

LuaGlobal["DragWindowAlpha"] = 150
copy 
DrawSelectHalo	bool	
怪物被选中时是否显示脚底的光环。

true代表是，即怪物被选中时显示脚底的光环，为默认值；

DrawSelectHalo_2.png
false代表否，即怪物被选中时不显示脚底的光环。

DrawSelectHalo.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["DrawSelectHalo"] = true
copy 
DrawWingOnHorse	bool	
骑坐骑时是否绘制翅膀。

true代表是，即骑坐骑时绘制翅膀，为默认值；

DrawWingOnHorse.png
false代表否，即骑坐骑时不绘制翅膀。

DrawWingOnHorse_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["DrawWingOnHorse"] = true
copy 
EditDrawPosAs2D	bool	
设置Edit垂直方向偏移是否与2D保持一致。

true代表与2D保持一致；false代表按照3D方式偏移，为默认值。

3D手游、3D端游适用。

LuaGlobal["EditDrawPosAs2D"] = false
copy 
EmulatorRegistForbidden	bool	
控制是否禁止在模拟器上登录使用快速注册的功能。

true代表禁止，false代表允许，为默认值。

2D手游、3D手游适用。

LuaGlobal["EmulatorRegistForbidden"] = true
copy 
EnableCacheLastMapTerrain	bool	
设置是否缓存上一张地图的地形图片资源。

true代表进行缓存；false代表不缓存，为默认值。

仅2D手游适用。

LuaGlobal["EnableCacheLastMapTerrain"] = false
copy 
EnableCustomFilterMethods	bool	
设置是否使用新的Lua筛选方式来处理物品拾取检查的问题。

新的物品设置界面如下图所示，点击“查看”按钮可查看该分类下物品的详细信息。

EnableCustomFilterMethods.png
image_20211217113108.png
true代表是，即使用新的Lua筛选方式（支持自定义）来处理物品拾取检查的问题，可将物品设置中的物品进行分类整理；

false代表否，即使用原始Lua筛选方式来处理物品拾取检查的问题，为默认值。

具体请参见FAQ说明：如何开启新的物品设置功能。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["EnableCustomFilterMethods"] = false
copy 
EnableHairstyleMatching	bool	
当打开自身角色面板或者查看其他玩家装备时，若未找到头发控件，设置是否使用新的逻辑。

true代表是，即使用新的逻辑，即由客户端自动创建一个头发控件并使用AvatarHairstyleSetting.xml文件中的配置，具体请参见角色发型样式配置说明；

false代表否，即使用原有逻辑，为默认值。

2D手游、2D端游适用。

LuaGlobal["EnableHairstyleMatching"] = true
copy 
EnableModifyWingsScale	bool	
设置是否允许修改他人翅膀的显示比例。

true代表是，即允许修改他人翅膀的显示比例；

false代表否，即不允许修改他人翅膀的显示比例，为默认值。

此全局变量仅用于控制“他人翅膀显示比例”的设置选项是否生效。

相关配置说明请参见FAQ：如何修改他人翅膀显示比例。

2D手游、2D端游适用。

LuaGlobal["EnableModifyWingsScale"] = false
copy 
EnableMouseZoom	bool	
设置是否使用鼠标滚轮拉近或拉远摄像头。

true代表是，为默认值；

false代表否。

仅3D端游适用。

LuaGlobal["EnableMouseZoom"] = true
copy 
EnableRushTrail	bool	
设置施放“蛮力冲锋”技能时是否显示残影。

true代表是，即施放“蛮力冲锋”技能时会显示残影；

SetRushTrailConfig.png
false代表否，即施放“蛮力冲锋”技能时不会显示残影，为默认值。

备注：

1.需要将全局变量RushAction设置为0；

2.如需调整残影的效果，可使用接口CL:SetRushTrailConfig进行设置。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["EnableRushTrail"] = false
copy 
ExpImageID	unsigned int	
设置玩家角色自身经验增加时显示的图片资源ID。

对应伤害类型定义中的伤害类型add_exp_num。

ExpImageID.png
2D手游、3D手游适用。

LuaGlobal["ExpImageID"] = 1900409400
copy 
FamilyTitleWnd_Edit_ImgId	unsigned int	
行会封号编辑面板的图片资源ID。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["FamilyTitleWnd_Edit_ImgId"] = 1901400211
copy 
FamilyTitleWnd_Set_ImgId	unsigned int	
行会封号授予面板的图片资源ID。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["FamilyTitleWnd_Set_ImgId"] = 1901400210
copy 
FamilyWarEnemyColor	unsigned int	
设置行会战敌方名字的颜色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["FamilyWarEnemyColor"] = MakeARGB(255,222,108,15)
copy 
FamilyWarOtherColor	unsigned int	
设置行会战第三方名字的颜色。

2D手游、2D端游适用。

LuaGlobal["FamilyWarOtherColor"] = MakeARGB(255,165,249,28)
copy 
FamilyWarSelfColor	unsigned int	
设置行会战我方名字的颜色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["FamilyWarSelfColor"] = MakeARGB(255,251,67,243)
copy 
FightOnHorse	手游：bool
端游：int	
骑坐骑时是否可以攻击。

手游：true代表是；false代表否。

端游：1代表是；0代表否。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["FightOnHorse"] = true --手游
copy 
LuaGlobal["FightOnHorse"] = 1 --端游
copy 
FindNearstMonsterWhenPlayerBlocked	bool	
当角色前方有障碍（如建筑物、山等）时，是否继续寻找怪物。

true代表继续寻找；false代表停止寻找，为默认值。

仅2D手游适用。

LuaGlobal["FindNearstMonsterWhenPlayerBlocked"] = true
copy 
FirstShowNPCChangeName	bool	
设置是否优先显示通过服务端接口lualib:Npc_ChangeName设置或变更的NPC名称。

true代表优先显示；false代表默认显示顺序。

默认显示顺序：手游NPC名字>通过服务端接口设置的NPC名字>NPC名字。

优先显示顺序：通过服务端接口设置的NPC名字>手游NPC名字>NPC名字。

NPC名字和手游NPC名字可通过游戏工具平台→NPC模板表进行设置。

FirstShowNPCChangeName

2D手游、3D手游适用。

LuaGlobal["FirstShowNPCChangeName"] = true
copy 
ForbidMobileOffsetRevise	bool	
设置怪物模板表中的“怪物在场景中绘制时的Y偏移”选项是否只调整怪物模型在垂直方向上的偏移。

true代表是，即该选项只会调整怪物模型在垂直方向上的偏移；

false代表否，即保持原状态，该选项会同时调整怪物模型、怪物名字和血条等信息在垂直方向上的偏移，为默认值。

“怪物在场景中绘制时的Y偏移”选项的访问路径为：游戏工具平台→游戏配置→怪物→怪物模板表→基础信息→基础信息区域。

ForbidMobileOffsetRevise.png
仅2D手游适用。

LuaGlobal["ForbidMobileOffsetRevise"] = false
copy 
ForceAcceptMainTask	int	
打开任务面板后，当点击取消/关闭按钮或者按Esc键关闭任务面板时，如果当前待接受的任务是主线任务，设置是否强制接受该任务。

1代表强制接受，为默认值；

0代表不会强制接受。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ForceAcceptMainTask"] = 1
copy 
ForceRockerInRadius	bool	
设置单摇杆的滑块是否只能在摇杆移动范围内滑动。

true代表是，即滑块位置限制在摇杆移动范围内；

false代表否，即滑块可以移动至摇杆移动范围外，为默认值。

2D手游、3D手游适用。

LuaGlobal["ForceRockerInRadius"] = false
copy 
ForceSelfScreenCenter	bool	
是否强制角色自身显示在屏幕中心。

备注：强制在屏幕中心可能会导致屏幕两边出现黑边。

仅2D手游适用。

LuaGlobal["ForceSelfScreenCenter"] = false
copy 
ForceShowPlayerHP	bool	
设置是否强制显示角色血条。

例如：在角色HP满血状态下，强制显示角色血条。

true代表显示；false代表不显示，为默认值。

2D手游、3D手游适用。

LuaGlobal["ForceShowPlayerHP"] = false
copy 
ForceShowPlayerHPText	bool	
控制是否满血状态强制显示血量。

true代表强制显示血量；

false代表不强制显示血量，为默认值。

仅2D手游适用。

LuaGlobal["ForceShowPlayerHPText"] = false
copy 
FrameSkinFontColor	string	
设置端游主界面窗口标题和按钮文字（如“投诉”、“充值”、“官网”、“论坛”和“帮助”）的颜色。

字符串以英文“,”隔开，按顺序依次为对应按钮正常显示时，鼠标悬停高亮时，按钮被按下时和按钮不可用时的字体颜色。窗口标题字体颜色和按钮正常状态字体颜色一致。

2D端游、3D端游适用。

请参考如何自定义端游主界面边框样式获取更多信息。

LuaGlobal["FrameSkinFontColor"]=  "0xffffffff, 0xff000000, 0xffff0000, 0xff0000ff" --十六进制写法
LuaGlobal["FrameSkinFontColor"]=  ""..GUI:MakeARGB(255, 255, 255, 0)..","..GUI:MakeARGB(255, 0, 0, 255)..","..GUI:MakeARGB(255, 255, 0, 0)..","..GUI:MakeARGB(255, 0, 0, 0).."" --使用MakeARGB接口写法
copy 
FrameSkinNum	int	
指定端游自定义边框样式资源文件夹的数字，比如1表示读取\GUIRes\FrameSkin1文件夹下的资源。

程序优先读取代理自定义资源目录，再读取官方资源目录下的相应文件夹。

备注：若此全局变量指定的数字对应的文件夹不存在，则会默认使用FrameSkin文件夹下的资源。

2D端游、3D端游适用。

请参考如何自定义端游主界面边框样式获取更多信息。

LuaGlobal["FrameSkinNum"] = 1 --表示从GUIRes/FrameSkin1文件夹里面读取
copy 
GameItemSettingListBoxCheckButtonImageID	string	
自定义物品拾取设置中列表条目中的复选框的图片资源ID。

GameItemSettingListBoxCheckButtonImageID.png
图片资源ID为字符串形式，第一个字符串用来设置复选框未选中时的图片资源ID，第二个字符串用来设置复选框已选中时的图片资源ID，两者之间用英文逗号（“,”）隔开。

备注：必须同时设置复选框未选中和已选中的图片资源ID（且均不为0），否则会使用默认值（"1900112013,1900112014"）。

仅2D端游适用。

LuaGlobal["GameItemSettingListBoxCheckButtonImageID"] = "1900112013,1900112014"
copy 
GameItemSettingListBoxColumnPos	string	
自定义物品拾取设置中每列的位置。

物品拾取设置共有四列，分别为：“物品名称”列、“极品提示”列、“自动拾取”列和“显示名称”列。

GameItemSettingListBoxColumnPos.png
此全局变量为字符串格式，字符串中每一个数值按照上述顺序分别对应一列的位置，中间用英文逗号（“,”）隔开。

备注：必须同时设置四列的位置，否则会使用默认值（"0,149,282,417"）。

仅2D端游适用。

LuaGlobal["GameItemSettingListBoxColumnPos"] = "0,149,282,417"
copy 
GameMainBar_BackImageToLeft	int	
游戏主工具栏背景图片到游戏窗口左边框的距离。

2D端游、3D端游适用。

LuaGlobal["GameMainBar_BackImageToLeft"] = 207
copy 
GameMainBar_BackImageToRight	int	
游戏主工具栏背景图片到游戏窗口右边框的距离。

2D端游、3D端游适用。

LuaGlobal["GameMainBar_BackImageToRight"] = 450
copy 
GameMainBar_BackImageYOff	int	
游戏主工具栏中聊天框背景在垂直方向上的偏移值。

GameMainBar_BackImageYOff.png
2D端游、3D端游适用。

LuaGlobal["GameMainBar_BackImageYOff"] = 87
copy 
GameMallItemPageCount	int	
商城面板每页展示的物品数量，默认值为8。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["GameMallItemPageCount"] = 8
copy 
GameMallTabCount	int	
商城面板页签的最大数量，默认值为7。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["GameMallTabCount"] = 7
copy 
GameMallVIPTip	string	
商城界面底部的提示信息。

仅2D端游适用。

LuaGlobal["GameMallVIPTip"] = "在商城中使用元宝购买商城物品可以获得积分（每花费1元宝，获得1积分）"
copy 
HeroHeaderInfo_HeadImageID	string	
设置英雄的头像资源ID。

ID以英文逗号“,”隔开，依次代表男战士、女战士、男法师、女法师、男术士、女术士。

仅2D端游适用。

LuaGlobal["HeroHeaderInfo_HeadImageID"] = "1856530019,1856530022,1856530020,1856530023,1856530021,1856530024"
copy 
HeroSkillItemCount	int	
设置英雄技能界面中技能图标框的生效个数，默认值为5。

HeroSkillItemCount.png
2D手游、2D端游适用。

LuaGlobal["HeroSkillItemCount"] = 5
copy 
HighLightStallTitleFontColor	string	
自定义摆摊名字的字体颜色。

3D手游、3D端游适用。

LuaGlobal["HighLightStallTitleFontColor"] = "WHITE"
copy 
HighLightStallTitleImageID	string	
自定义摆摊名字的高亮图片。

3D手游、3D端游适用。

LuaGlobal["HighLightStallTitleImageID"] = "1902000045"
copy 
HightSelfMagicID	int	
设置勾选“突出玩家自己”的选项后，用于突出玩家自身的特效资源ID，默认值为0。

特效资源ID为Magic.xml文件中的Id字段的值。

官方演示的特效资源ID为60084，如下图所示。

HightSelfMagicID.png
3D手游、3D端游适用。

LuaGlobal["HightSelfMagicID"] = 0
copy 
HPIMAGEOFFSET	int	
设置并调整玩家自身角色，其他角色和怪物头顶血条的偏移。

HPIMAGEOFFSET
默认数值根据版本的不同而不同，请参考以下默认值：

45度：-91
60度：-71
国际版：-91
精品版：-73

2D手游、2D端游适用。

LuaGlobal["HPIMAGEOFFSET"] = -91
copy 
HpMpImageFill	bool	
设置血条/魔法值条/内功条是否将对应的控件填充完整。

true代表是，即血条/魔法值条/内功条将对应的控件填充完整，如下图所示。

HpMpImageFill_2.png
false代表否，即血条/魔法值条/内功条对应的控件使用原来的样式填充，为默认值，如下图所示。

HpMpImageFill.png
仅2D手游适用。

LuaGlobal["HpMpImageFill"] = false
copy 
HpMpPictureUseScale	bool	
设置是否开启血条和蓝条对应图片的缩放功能。

true代表开启，即允许血条和蓝条对应图片进行缩放且修复了某些血条资源缩放后显示有重影的问题；

false代表不开启，即不允许血条和蓝条对应图片进行缩放，为默认值。

仅2D手游适用。

LuaGlobal["HpMpPictureUseScale"] = false
copy 
HpWordUnit	string	
替换手游和端游中怪物头顶血条以及端游中角色头顶血条的单位（“万”和“亿”）的文字。

其中，第一个字符串用来替换“万”，第二个字符串用来替换“亿”。

此全局变量仅在全局变量WrapPlayerHp和WrapMonsterHp设置为true时生效。

2D手游、2D端游适用。

LuaGlobal["HpWordUnit"] = "W,Y"
copy 
HurtNumStyle	int	
指定飘字样式。

手游：

2代表基础飘字样式，即会向角色攻击方向飘字并带有适当的缩放效果，为默认值；

HurtNumStyle_2.gif
3代表新款飘字样式，即会从目标右上方向斜向飘字并逐渐隐藏。

HurtNumStyle_3.gif
端游：

0代表使用全局变量NewHurtNumStyle中指定的飘字样式，为默认值；

1代表老款飘字样式，即会从角色头顶向上飘字并逐渐隐藏；

NewHurtNumStyle.gif
2代表基础飘字样式，即会向角色攻击方向飘字并带有适当的缩放效果；

HurtNumStyle_5.gif
3代表新款飘字样式，即会从目标右上方向斜向飘字并逐渐隐藏。

HurtNumStyle_4.gif
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["HurtNumStyle"] = 2 --手游
copy 
LuaGlobal["HurtNumStyle"] = 1 --端游
copy 
IgnoreClickPet	bool	
玩家是否不可选中自己的宠物。

true代表是，即玩家不可以选中自己的宠物；

false代表否，即玩家可以选中自己的宠物，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["IgnoreClickPet"] = true
copy 
IgnoreInvisibleServant	bool	
术士挂机召唤宠物时是否忽略隐形宠物。

true代表是，即术士挂机召唤宠物时忽略隐形宠物；

false代表否，即术士挂机召唤宠物时不忽略隐形宠物，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["IgnoreInvisibleServant"] = false
copy 
InputMoneyMaxCharNum	int	
输入框中输入金币个数时允许的最大字符数。

InputMoneyMaxCharNum.png
2D端游、3D端游适用。

LuaGlobal["InputMoneyMaxCharNum"] = 8
copy 
InputYuanbaoMaxCharNum	int	
输入框中输入元宝个数时允许的最大字符数。

仅2D端游适用。

LuaGlobal["InputYuanbaoMaxCharNum"] = 8
copy 
IntelliAutoAtkLockTime	int	
设置玩家角色最后一次攻击目标怪物后，仍认为该玩家角色正在攻击目标怪物的时间段（单位为毫秒）。

具体请参见新挂机模式说明文档。

2D手游、3D手游和3D端游适用。

LuaGlobal["IntelliAutoAtkLockTime"] = 3000 --默认值是3000
copy 
IntelligentAutoFight	bool	
是否开启新的智能挂机。

true代表开启；false代表不开启，为默认值。

如果设置为开启，则挂机时会判断攻击目标怪物的角色数量是否达到上限。如达到上限，则挂机选怪时不选择此怪物。

具体请参见新挂机模式说明文档。

2D手游、3D手游和3D端游适用。

LuaGlobal["IntelligentAutoFight"] = false
copy 
InterruptAutoPathAfterTeleport	bool	
瞬移后是否打断自动寻路。

true代表瞬移后会打断自动寻路；

false代表瞬移后不会打断自动寻路，为默认值。

2D手游、2D端游适用。

LuaGlobal["InterruptAutoPathAfterTeleport"] = false
copy 
IsAddChatPrefix	bool	
在指定频道聊天时是否显示对应的前缀。

true代表是，即在指定频道聊天时是否显示对应的前缀。

目前仅支持以下频道：

组队频道：对应前缀为【组队】；

行会频道：对应前缀为【行会】；

喊话频道：对应前缀为(!)。

false代表否，即在指定频道聊天时不会显示对应的前缀，为默认值。

仅2D端游适用。

LuaGlobal["IsAddChatPrefix"] = false
copy 
IsAllowMousePenetrateUI	bool	
设置是否启用鼠标UI穿透功能。

true代表启用鼠标UI穿透的功能，即按住鼠标移动过程中鼠标指针移到UI位置时不会打断移动；

false代表关闭鼠标UI穿透的功能，即按住鼠标移动过程中鼠标指针移到UI位置时会打断移动，为默认值。

2D端游、3D端游适用。

LuaGlobal["IsAllowMousePenetrateUI"] = false
copy 
IsClickPlayerWithAltToPrivateChat	bool	
设置是否开启Alt + 鼠标左键点击玩家即可开始私聊的功能。

true代表是，即开启Alt + 鼠标左键点击玩家开始私聊的功能，为默认值；

false代表否，即关闭Alt + 鼠标左键点击玩家开始私聊的功能。

2D端游、3D端游适用。

LuaGlobal["IsClickPlayerWithAltToPrivateChat"] = true
copy 
IsEnableAnnouncementShow	bool	
设置当客户端接收到由服务端接口lualib:SysMsg_SendBoardMsg发出的消息后是否显示此控件。

IsEnableAnnouncementShow.png
true代表是，即当客户端接收到由服务端接口lualib:SysMsg_SendBoardMsg发出的消息后，会显示AnnPlayWnd控件（公告栏）；

false代表否，即当客户端接收到由服务端接口lualib:SysMsg_SendBoardMsg发出的消息后，不会显示AnnPlayWnd控件（公告栏），为默认值。

2D手游、3D手游适用。

LuaGlobal["IsEnableAnnouncementShow"] = false
copy 
IsFaceToFaceTradeAutoAgree	bool	
角色面对面交易时是否自动打开交易面板。

true代表是，即角色面对面交易时自动打开交易面板，在角色移动之后（非面对面）会自动关闭交易面板；

false代表否，即角色面对面交易时不会自动打开交易面板，会有交易请求提醒，询问玩家是否同意交易，为默认值。

仅2D端游适用。

LuaGlobal["IsFaceToFaceTradeAutoAgree"] = false
copy 
IsFullScreenRocker	bool	
是否开启全屏摇杆。

true代表启用；false代表不启用，为默认值。

启用后，屏幕场景上任何可触碰的位置均可控制摇杆进行移动。

2D手游、3D手游适用。

LuaGlobal["IsFullScreenRocker"] = false --默认不开启，固定在屏幕左下角区域
copy 
IsShowApplyErrorMsgOfHero	bool	
当物品的“使用者范畴”选项的配置值为0（即“只有人可用”）时，英雄使用该物品失败，此时是否显示“英雄：使用物品失败”的提示信息。

true代表显示，为默认值；false代表不显示。

IsShowApplyErrorMsgOfHero.png
2D端游、3D端游适用。

LuaGlobal["IsShowApplyErrorMsgOfHero"]= true
copy 
IsShowFamilyList	bool	
设置在使用接口CL:GetFamilyList获取行会信息列表时是否弹出行会界面。

true代表是，即在使用接口CL:GetFamilyList获取行会信息列表时弹出行会界面，为默认值；

false代表否，即在使用接口CL:GetFamilyList获取行会信息列表时不弹出行会界面。

此全局变量支持端游，手游对应的全局变量为MobileIsShowFamilyList。

2D端游、3D端游适用。

LuaGlobal["IsShowFamilyList"] = true
copy 
IsShowSysMsgInCurActiveChannel	bool	
是否在当前活跃的频道显示系统消息。

true代表在当前活跃的频道显示系统消息；false代表在当前活跃的频道不线显示系统消息，为默认值。

备注：主要用于修复SetShowChannelText接口的相关逻辑问题。

仅2D端游适用。

LuaGlobal["IsShowSysMsgInCurActiveChannel"] = false
copy 
IsUseAttackSpeed	bool	
设置当“攻速流程”选项设置为“是”时，是否开启新的攻速流程模式。

true代表是，即当“攻速流程”选项设置为“是”时会开启新的攻速流程模式，此时施放技能会忽略CD（类似于普攻）；

IsUseAttackSpeed.gif
false代表否，即当“攻速流程”选项设置为“是”时仍使用原有的攻速流程模式，此时施放技能不会忽略CD，为默认值。

当此全局变量设置为true时，可解决“攻速流程”选项不会生效的问题。

“攻速流程”选项访问路径为：游戏工具平台→游戏配置→技能→技能模板表→基础配置→CD配置区域。

IsUseAttackSpeed.png
2D手游、2D端游适用。

LuaGlobal["IsUseAttackSpeed"] = false
copy 
IsUseClientItemCD	bool	
某道具挂载了技能后，点击道具就会触发技能。若使用服务端回调函数（例如：on_pre_item_apply）阻止角色使用该道具或者该道具挂载脚本返回false，则会出现点击该物品后不会触发技能但是技能会进入冷却状态的问题。

此全局变量用于控制是否由客户端直接控制道具所绑定技能的冷却状态。

true代表是，即由客户端直接控制道具所绑定技能的冷却状态，为默认值；

false代表否，即由服务端控制道具所绑定技能的冷却状态。

如遇到上述问题，可将此全局变量设置为false，此时点击物品后技能不会触发也不会进入冷却状态。

2D手游、2D端游适用。

LuaGlobal["IsUseClientItemCD"] = true
copy 
ItemCtrlIsShowQuestionMark	bool	
设置物品框在图片资源未加载时，是否显示默认的提示图片，如下图所示。

ItemCtrlIsShowQuestionMark
true代表显示，为默认值。

false代表不显示。

2D手游、3D手游适用。

LuaGlobal["ItemCtrlIsShowQuestionMark"] =  true
copy 
ItemCtrlNumAboveBindImage	bool	
设置是否物品框的数量显示在绑定的锁图标上层。

true代表是，即物品框的数量显示在绑定的锁图标上层；

ItemCtrlNumAboveBindImage.png
false代表否，即物品框的数量显示在绑定的锁图标下层，为默认值。

ItemCtrlNumAboveBindImage_2.png
仅2D手游适用。

LuaGlobal["ItemCtrlNumAboveBindImage"] = false
copy 
ItemCtrlRefineLevelColor	unsigned int	
在开启了物品框显示精炼等级(即全局变量ItemCtrlShowRefineLevel设置为true时)的前提下，设置精炼等级显示文本的颜色。

ItemCtrlRefineLevelColor.png
仅2D手游适用。

LuaGlobal["ItemCtrlRefineLevelColor"] = MakeARGB(255,254,67,243)
copy 
ItemCtrlShowRefineLevel	bool	
设置物品框是否显示精炼等级。

true代表显示，为默认值；

ItemCtrlRefineLevelColor.png
false代表不显示。

ItemCtrlShowRefineLevel.png
2D手游、3D手游适用。

LuaGlobal["ItemCtrlShowRefineLevel"] = false
copy 
ItemCtrlTextAutoFit	bool	
物品框上显示的文字是否自适应居中显示。

true代表物品框文字根据物品框大小自适应居中；

false 代表物品框文字位置为默认位置，为默认值。

备注：该设置仅对由程序控制文字显示有效，即不是通过脚本定义的物品框文字。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ItemCtrlTextAutoFit"] = true
copy 
ItemTipDelayTime	int	
设置物品Tips的显示延迟时间，默认值为300，单位为毫秒（ms）。

此全局变量仅在物品框控件自定义属性db_click_use_item非空（例如：GUI:WndAddProperty(_GUIHandle,"db_click_use_item","1")）时生效。

2D手游、3D手游适用。

LuaGlobal["ItemTipDelayTime"] = 300
copy 
JumpPointImageId	unsigned int	
自定义跳转点显示的图片资源ID。

当设置大地图中不显示跳转点的名字（即全局变量UseJumpPointName设置为false）时，此全局变量可自定义跳转点显示的图片资源。

JumpPointImageId.png
0代表使用默认图片资源，为默认值。

仅3D端游适用。

LuaGlobal["JumpPointImageId"] = 0
copy 
KeepChatWinChannelPrefix	bool	
设置聊天窗口在消息发送后是否保留频道前缀。

true代表保留，即发送消息后保留上一次的频道，为默认值。

false代表不保留，则程序会移除上一次前缀并返回至当前频道。

2D端游、3D端游适用。

LuaGlobal["KeepChatWinChannelPrefix"] = true
copy 
KnockingAttackMagicNum	int	
设置暴击时目标处单独播放的暴击特效的模板ID，默认值为0（即不显示暴击特效）。

KnockingAttackMagicNum.png
备注：

暴击特效不会跟随伤害数字飘动；

仅玩家攻击目标时可打出此暴击特效（对所有玩家可见）。

2D手游、2D端游适用。

LuaGlobal["KnockingAttackMagicNum"] = 0
copy 
KnockingImageID	int	
设置玩家角色自身受到致命伤害时的图片资源ID。

对应伤害类型定义中的伤害类型self_zheming_num。

KnockingImageID.png
2D手游、3D手游适用。

LuaGlobal["KnockingImageID"] = 1900409500
copy 
KnockingImageID2	unsigned int	
设置玩家角色自身受到致命伤害时的图片资源ID。

对应伤害类型定义中的伤害类型self_zheming_num2。

KnockingImageID2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["KnockingImageID2"] = 1900409500
copy 
LimitQuickBarRepeatPlacement	bool	
设置是否开启限制在快捷技能栏中重复放置同一个技能的功能。

true代表开启，即快捷技能栏中不可重复放置同一个技能；

false代表关闭，即快捷技能栏中可以重复放置同一个技能，为默认值。

备注：当此全局变量设置为true时，若在快捷技能栏中重复放置同一个技能，则先放置该技能的快捷技能栏中的设置将会被取消。

例如：当此全局变量设置为true时，若在快捷技能栏1号位中已存在某个技能，之后再次在快捷技能栏2号位中放置某个技能，则快捷技能栏1号位中的设置会被取消。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["LimitQuickBarRepeatPlacement"] = false
copy 
LittleMapTeammateMark	unsigned int	
自定义其他队友在小地图上的图标资源ID，默认值为0。

LittleMapTeammateMark.png
3D手游、3D端游适用。

LuaGlobal["LittleMapTeammateMark"] = 0
copy 
LoadFamilyChatContent	bool	
设置在重新打开行会聊天界面时是否显示以前的聊天记录。

true代表是，即在重新打开行会聊天界面时显示以前的聊天记录；

false代表否，即在重新打开行会聊天界面时不显示以前的聊天记录，为默认值。

备注：此全局变量仅支持老版行会聊天界面（如下图所示）。

LoadFamilyChatContent.pngji'shu
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["LoadFamilyChatContent"] = false
copy 
LoadingImageCount	int	
游戏加载界面（如下图）中用于加载切换的背景图片的数量。

LoadingImageCount.png

手游中，默认值为2；端游中，默认值为3。

2D手游、2D端游适用。

LuaGlobal["LoadingImageCount"] = 3
copy 
LockScreenResolution	int	
是否锁定屏幕分辨率。

0代表不锁定，即玩家可以切换屏幕分辨率，为默认值；

LockScreenResolution.png
1代表锁定，即玩家不可以切换屏幕分辨率。

2D端游、3D端游适用。

LuaGlobal["LockScreenResolution"] = 0
copy 
LockTargetSkillList	string	
在创建技能是否根据鼠标落点施放选项时，用于关联复选框控件的数字编号和相关的技能ID。

请参见如何在游戏设置中添加技能是否根据鼠标落点施放的选项FAQ文档。

多个技能组以竖线“|”分隔，技能组中多个技能ID以英文“,”分隔；空字符串""为默认值。

2D手游、2D端游和H5适用。

LuaGlobal["LockTargetSkillList"] = "101,2070,2071,2072,2073|102,33,445,345"
copy 
LongFireCheckSkillShape	bool	
设置是否会根据远程烈焰斩的技能形状检查该技能是否可以施放。

true代表是，即会根据远程烈焰斩的技能形状检查该技能是否可以施放；

false代表否，即不会根据远程烈焰斩的技能形状检查该技能是否可以施放，会直接施放该技能，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["LongFireCheckSkillShape"] = false
copy 
m_CustomDrawInterval	bool	
手游物品框是否使用自定义描绘时间间隔。

当此全局变量设置为true时，可使用接口GUI:ItemCtrlSetUseCustomDrawInterval设置描绘时间间隔；

当此全局变量设置为false时，代表使用默认的时间间隔（150ms），为默认值。

仅2D手游适用。

LuaGlobal["m_CustomDrawInterval"] = true
copy 
MageTaoAutoAttkUseSkill	bool	
当法师和术士自动挂机时，是否自动施放通过接口CL:AddAttackAutoUseSkill添加的技能。

当接口CL:AddAttackAutoUseSkill设置了多个技能时，先设置的技能的优先级高于后设置的技能的优先级。

true代表自动施放；false代表不施放，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MageTaoAutoAttkUseSkill"] = false 
copy 
MageTaoFirstUseSkill	bool	
设置是否开启设置优先使用的技能的功能（仅适用于法师和术士职业的角色）。

true代表开启，则可使用客户端接口CL:SetSkillFirstID进行技能的指定；

false代表关闭，为默认值。

2D手游、3D手游适用。

LuaGlobal["MageTaoFirstUseSkill"] = false
copy 
MagicSpeedMax	float	
控制magic加速最大倍率。

默认值为2。

3D手游、3D端游适用。

LuaGlobal["MagicSpeedMax"] = 2
copy 
MakeSureSafeDistance	bool	
自动挂机时，术士和法师是否检测安全距离。

true代表检测安全距离后自动走位到安全距离，为默认值；

false代表不检测安全距离，原地施放技能。

在安全距离下玩家可以攻击怪物，但怪物无法攻击玩家。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MakeSureSafeDistance"] = false
copy 
ManBodyID	int	
男性人物裸模ID（对应图片资源ID的前5位）。

若图片资源ID的第1位为0，则默认省略。

此全局变量的默认值为8100。

ManBodyID.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ManBodyID"] = 25000
copy 
ManShadowID	int	
男性人物裸模的影子ID（对应图片资源ID的前5位）。

若图片资源ID的第1位为0，则默认省略。

此全局变量的默认值为8000。

ManShadowID.png
2D手游、2D端游适用。

LuaGlobal["ManShadowID"] = 25400
copy 
MaxRecordTime	int	
最长录音时间，默认值为60，单位为秒（s）。

2D手游、3D手游适用。

LuaGlobal["MaxRecordTime"] = 60
copy 
MergeSafeZone	bool	
设置是否开启合并安全区的功能。

true代表开启合并安全区的功能，并且当安全区有重合的区域时不显示重合部分的光柱；

MergeSafeZone_2.png
false代表不开启合并安全区的功能，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MergeSafeZone"] = false
copy 
MianYiImageID	unsigned int	
设置玩家角色自身防御成功（即免疫）时显示的图片资源ID。

对应伤害类型定义中的伤害类型self_mianyi。

self_mianyi.png
2D手游、2D端游和3D手游适用。

LuaGlobal["MianYiImageID"] = 1900414700
copy 
MinWndBtnPixture	string	
设置收到信件时提示的按钮控件的图片资源ID。

图片资源ID为字符串形式，三者之间用英文逗号（“,”）隔开。

第一个数值用来设置向上翻页的按钮控件的图片资源ID；

MinWndBtnPixture_2
第二个数值用来设置向下翻页的按钮控件的图片资源ID；

MinWndBtnPixture_3
第三个数值用来设置显示发件人的按钮控件的图片资源ID。

MinWndBtnPixture_1
备注：向上翻页和向下翻页的按钮控件仅在收到六位及以上人数的玩家发来的信件时才会显示。

仅2D手游适用。

LuaGlobal["MinWndBtnPixture"] = "4002200086,4002200090,4002250054"
copy 
MinWndPos	string	
设置收到信件时提示的整体控件的坐标位置，以屏幕右下角为原点，默认坐标为(72,400)。

坐标位置为字符串形式，两者之间用英文逗号（“,”）隔开。

第一个数值用来设置整体控件的横坐标；

第二个数值用来设置整体控件的纵坐标。

仅2D手游适用。

LuaGlobal["MinWndPos"] = "72,400"
copy 
MissImageID	unsigned int	
设置玩家角色自身闪避成功时显示的图片资源ID。

对应伤害类型定义中的伤害类型self_miss。

other_miss.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MissImageID"] = 1900414300
copy 
MOBAMode	bool	
是否开启MOBA（对战）逻辑。

true代表开启；false代表关闭，为默认值。

仅2D手游适用。

LuaGlobal["MOBAMode"] = false
copy 
MobileIsShowFamilyList	bool	
设置在使用接口CL:GetFamilyList获取行会信息列表时是否弹出行会界面。

true代表是，即在使用接口CL:GetFamilyList获取行会信息列表时弹出行会界面；

false代表否，即在使用接口CL:GetFamilyList获取行会信息列表时不弹出行会界面，为默认值。

此全局变量仅支持手游，端游对应的全局变量为IsShowFamilyList。

2D手游、3D手游适用。

LuaGlobal["MobileIsShowFamilyList"] = false
copy 
MobileNpcTalkSendEvent	bool	
手游NpcTalk是否发送打开NPC面板事件LUA_EVENT_OPENNPCTALK。

true代表发送事件，为默认值；false代表不发送事件。

仅3D手游适用。

LuaGlobal["MobileNpcTalkSendEvent"] = false
copy 
ModifyQuiteGameMethod	bool	
是否更改返回到角色选择界面的方式。

true代表更改；false代表不更改，为默认值。

具体请参见接口CL:QuiteToLogin的描述。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ModifyQuiteGameMethod"] = false
copy 
MonsterHPBackImage	int	
设置怪物血条背景框图。

MonsterHPBackImage.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MonsterHPBackImage"] = 4001620038
copy 
MonsterHPImage	int64	
自定义怪物的血条图片。

手游默认值为1850000039，端游默认值为1900120000。

AlwaysShowMonsterHP_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MonsterHPImage"] = 1900120000
copy 
MonsterHurtImageID	unsigned int	
指定怪物受伤害血条减少时，显示的数字飘字的起始图片资源ID。

数字0-9的图片资源ID指定时须按以下规则：从起始图片资源ID开始，末尾3位以100递增。如数字0的图片资源ID是1900407300，则指定数字1是1900407400, 数字2就要是1900407500，以此类推。

2D端游、H5适用。

LuaGlobal["MonsterHurtImageID"] = 1900407300
copy 
MonsterHurtImageInterval	unsigned int	
对应全局变量MonsterHurtImageID的飘字数字0-9的图片资源ID间隔，默认值为100。

如果资源ID间隔不是100，则可以通过此全局变量进行更改。

仅2D端游适用。

LuaGlobal["MonsterHurtImageInterval"] = 100
copy 
MonsterHurtImageName	string	
指定怪物受伤害血条减少时，显示的数字飘字的图集资源名。

请参见自定义飘字效果了解更多信息。

2D手游、3D手游和3D端游适用。

LuaGlobal["MonsterHurtImageName"] = "5300.png"
copy 
MonsterHurtMinusImageID	unsigned int	
指定怪物受伤害血条减少时，显示的减号（-）图片资源ID。

2D端游、H5适用。

LuaGlobal["MonsterHurtMinusImageID"] = 1900407299
copy 
MonsterNoHighlight	string	
设置选中但不高亮显示的怪物编号列表。编号以字符串形式，中间用英文逗号隔开。

MonsterNoHighlight.png
当此全局变量配置为"*"字符串（即LuaGlobal["MonsterNoHighlight"] = "*"）时，表示所有怪物均不高亮显示。

caution_icon 注意
请不要尝试在老版2D客户端（即2021年3月4日之前的客户端版本）中将此全局变量配置为"*"字符串，否则会导致客户端崩溃。

iOS和安卓互通的版本尤其需要注意。当iOS版本和安卓版本不一致时，若将此全局变量配置为"*"字符串可能会出现安卓客户端正常运行而iOS客户端崩溃的现象。

2D手游、2D端游和3D手游适用。

LuaGlobal["MonsterNoHighlight"] = "12, 228, 229"
copy 
MonsterSelectUseRect	bool	
设置怪物被选择的方式。

true代表点击资源所在矩形框即可选中，为默认值；

false代表点击资源实际像素点即可选中。

2D手游、2D端游适用。

LuaGlobal["MonsterSelectUseRect"] = true
copy 
MonsterShowLevel	手游：bool
端游、H5：int	
显示怪物名字时是否显示等级。

手游：true代表显示；false代表不显示，为默认值。

端游、H5：1代表显示；0代表不显示，为默认值。

（以手游为例）当此全局变量设置为true时，显示怪物名字时会显示等级；

MonsterShowLevel_2.png
当此全局变量设置为false时，显示怪物名字时不会显示等级。

MonsterShowLevel_2.png
2D手游、2D端游、3D手游、3D端游和H5适用。

LuaGlobal["MonsterShowLevel"] = false --手游
copy 
LuaGlobal["MonsterShowLevel"] = 0 --端游、H5
copy 
MonsterUseCampColor	bool	
设置是否开启根据怪物的阵营值来自定义怪物名字颜色的功能。

true代表是，即开启根据怪物的阵营值来自定义怪物名字颜色的功能；

false代表否，即关闭根据怪物的阵营值来自定义怪物名字颜色的功能，为默认值。

当此全局变量设置为true时，可使用全局函数GetMonsterNameColorByCamp来获取不同阵营的怪物的名字颜色值。

2D手游、2D端游适用。

LuaGlobal["MonsterUseCampColor"] = false
copy 
MonsterUseRealAttackSpeed	bool	
设置是否使用怪物攻击时实际的动画播放速度。

true代表是，即使用怪物攻击时实际的动画播放速度（怪物攻击时实际的动画播放速度速度会受攻击速度相关属性的影响）；

false代表否，即使用正常的动画播放速度，为默认值。

2D手游、2D端游适用。

LuaGlobal["MonsterUseRealAttackSpeed"] = false
copy 
MotionChangeList	string	
设置绑定不同模型动作。

冒号“:”右边的动作替换左边的，多个动作以竖线“,”分隔；空字符串""为默认值。

新增职业之间技能动作替换。

冒号“:”右边的技能替换左边的，多个技能以竖线“,”分隔；空字符串""为默认值。

3D手游、3D端游适用。

LuaGlobal["MotionChangeList"] = "男术士跑:男战士跑,男术士走:男战士走"
copy 
LuaGlobal["MotionChangeList"] = "男战士技能2:男法师技能1,男战士技能1:男法师技能2"
copy 
MountOffsetEnable	bool	
设置角色骑乘坐骑时，头顶的称号BUFF与血条图片等是否随之向上偏移。

true代表是，即角色骑乘坐骑时，头顶的称号BUFF与血条图片等会随之向上偏移，为默认值；

false代表否，即角色骑乘坐骑时，头顶的称号BUFF与血条图片等不会发生偏移（与未骑乘状态相同）。

2D手游、2D端游适用。

LuaGlobal["MountOffsetEnable"] = true
copy 
MouseDownInterval	int	
设置程序接收鼠标左键按下响应的时间间隔。

默认值是50（不能低于50），单位为毫秒。

在设置的时间间隔内，多次点击鼠标左键攻击无效。

此全局变量适当调大可避免同时打出多次伤害的问题，建议设置为100。

2D端游、3D端游适用。

LuaGlobal["MouseDownInterval"] = 50
copy 
MouseItemWidth	int	
设置背包物品拖动时物品图标的显示宽度，单位为像素（px），默认值为0（即使用图标原始尺寸）。

MouseItemWidth.png
2D手游、3D手游适用。

LuaGlobal["MouseItemWidth"] = 0
copy 
MoveActionSpeedRate	float	
当角色移速发生变化时，可使用此全局变量（默认值为0）设置移动动作变速的幅度，全局变量BaseMoveActionSpeed设置计算用的基础速度，从而达到角色移速和移动动作的速度相匹配的效果。

移动动作速度倍率计算公式：动作速度倍率 = 1 + (1000/当前玩家速度- 1000/BaseMoveActionSpeed) * MoveActionSpeedRate。

例如：移动动作变速的幅度值为0.08，计算用的基础速度值为200，若此时当前玩家速度为100，则动作加速倍率 = 1 + (1000/100- 1000/200) * 0.08 = 1.4。

3D手游、3D端游适用。

LuaGlobal["MoveActionSpeedRate"] = 0
copy 
MoveAttackSkillDistancePer	float	
控制移动释放技能时的距离。

默认值为0.8，代表距离为0.8倍的技能释放距离。

3D手游、3D端游适用。

LuaGlobal["MoveAttackSkillDistancePer"] = 0.8
copy 
MpImageName	string	
指定魔法值减少时显示飘字的数字图集资源名。

其设置步骤与受伤减血飘字相似，请参见自定义飘字效果了解更多信息。

2D手游、3D手游和3D端游适用。

LuaGlobal["MpImageName"] = "mp.png"
copy 
MultiHPDecreaseTime	int	
此全局变量与多重血条相关，用于设置减少血量的动画播放时间，默认值为3000，单位为毫秒。

当单次扣除多条血条并且动画播放速度太快导致动画效果不明显时，可以通过全局变量MultiHPMinDecreaseTime来设置单条血条减少血量的动画播放的最短时间。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MultiHPDecreaseTime"] = 2000
copy 
MultiHPMinDecreaseTime	int	
此全局变量与多重血条相关，用于设置单条血条减少血量的动画播放的最短时间，默认值为2000，单位为毫秒。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MultiHPMinDecreaseTime"] = 300
copy 
MultiHPZeroImageID	unsigned int	
多重血条相关，血条数量数字（即下图中乘号后面的数字）的起始图片资源ID，即数字0的图片资源ID。

MultiHPZeroImageID.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["MultiHPZeroImageID"] = 1857010023
copy 
NcRechargeUsePaymentWnd	bool	
设置点击“充值”按钮后是否在游戏内的充值面板进行充值。

NcRechargeUsePaymentWnd.png
拓展作用：当元宝不足弹窗，点击“充值”按钮时全局变量也是适用的。

NcRechargeUsePaymentWnd_2.png
true代表是，即点击“充值”按钮后在游戏内的充值面板进行充值；

false代表否，即点击“充值”按钮后使用外部跳转链接进行充值，为默认值。

此全局变量仅在同时满足以下两个条件时，设置为true才会生效，否则使用外部跳转链接进行充值。

1.玩家角色已进入游戏场景内；

2.PaymentWnd.lua脚本文件存在。

具体请参见说明：端游扫码支付功能。

仅2D端游适用。

LuaGlobal["NcRechargeUsePaymentWnd"] = false
copy 
NewHurtNumStyle	bool	
是否使用基础飘字样式。

true代表是，为默认值；false代表否。

当此全局变量设置为true时，会向角色攻击方向飘字并带有适当缩放效果。

HurtNumStyle_5.gif
当此全局变量设置为false时，会从角色头顶向上飘字并逐渐隐藏。

NewHurtNumStyle.gif
2D端游、3D端游适用。

LuaGlobal["NewHurtNumStyle"] = false
copy 
NormalizeCishaBehavior	bool	
控制刺杀包是否在高速模式下表现与正常模式下一致。

true代表刺杀包是否在高速模式下表现与正常模式下一致，即点击地板为普攻, 存在可刺杀目标时才为刺杀包；false代表刺杀包是否在高速模式下表现与正常模式下不一致，为默认值。

仅2D端游适用。

LuaGlobal["NormalizeCishaBehavior"] = false
copy 
NormalStallTitleFontColor	string	
设置角色摆摊时，其头顶显示的摊位名的字体颜色。

此全局变量的默认值为"WHITE"。

NormalStallTitleFontColor.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NormalStallTitleFontColor"] = "WHITE"
copy 
NormalStallTitleImageID	int	
设置角色摆摊时，其头顶显示的摊位名的背景图片资源ID。

NormalStallTitleImageID.png
若此全局变量的配置值为单个图片资源ID，则角色摆摊时摊位名的背景图片会使用默认的单图模式；

若此全局变量的配置值为9个图片资源ID（为字符串格式，中间以英文逗号分割），则角色摆摊时摊位名的背景图片会使用九宫格模式（可实现为摊位名添加一个描边气泡的功能，如下图所示）。

NormalStallTitleImageID_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NormalStallTitleImageID"] = 1902000049 --单图模式
copy 
LuaGlobal["NormalStallTitleImageID"] = "4000500400, 4000500402, 4000500406, 4000500408, 4000500404, 4000500401, 4000500407, 4000500403, 4000500405" --九宫格模式
copy 
NPCChangeNameLineBreak	bool	
设置是否将接口lualib:Npc_ChangeName中设置的NPC名称中包含的“\n”替换为空格。

true代表替换；false代表不替换，为默认值。

备注：“\\n”在此全局变量设置为true和false时，都会被替换成换行。

仅2D手游适用。

LuaGlobal["NPCChangeNameLineBreak"] = true
copy 
NpcFontName	string	
NPC名字的字体。

NpcNameColor.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcFontName"] = "SIMLI18"
copy 
NpcNameColor	unsigned long	
NPC名字的颜色。

NpcNameColor.png
此全局变量仅在NPC模板表中的“名字颜色”字段配置为0时生效。

对应选项的访问路径为：游戏工具平台→游戏配置→NPC→NPC模板表区域。

NpcNameColor_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcNameColor"] = 4294894158
copy 
NpcNameVOffset	int	
NPC名字在垂直方向上的偏移量。

2D端游、3D手游和3D端游适用。

2D手游推荐变量设置为0，在NPC模板表中配置NPC名字上下偏移或者手游NPC名字上下偏移来实现功能。

对应选项的访问路径为：游戏工具平台→游戏配置→NPC→NPC模板表区域。

NpcNameVOffset.png	
LuaGlobal["NpcNameVOffset"] = -10
copy 
NpcQuestHeadImage	string	
NPC头顶的任务图标资源ID。

NpcQuestHeadImage.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcQuestHeadImage"] = "1043400000, 1043200000, 1043300000" --分别为1：任务可交，2：任务可接，3：任务已接不可交
copy 
NpcSubNameColor	string	
NPC称号文字的颜色。

NpcSubNameColor.png
此全局变量仅在全局变量ShowNpcSubName设置为true时生效。

2D手游、3D手游适用。

LuaGlobal["NpcSubNameColor"] = "4294956800"
copy 
NpcTalk_AutoCalcHeadImgPos	bool	
NPC对话面板中，是否自动计算NPC头像位置。

true代表是，即自动计算NPC头像位置，为默认值；

false代表否，即使用控件创建时指定的位置。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcTalk_AutoCalcHeadImgPos"] = true
copy 
NpcTalk_ScriptCtrlPos	bool	
在NPC对话面板的背景图片为非九宫格模式时，设置该字段决定是否使用脚本调整NPC对话面板上的控件位置以及大小。

true代表使用脚本设置NPC对话面板上的关闭按钮控件、滑动条控件和任务列表的位置以及大小；

false代表程序根据背景图片的大小自动调整NPC对话面板上的关闭按钮控件、滑动条控件和任务列表的位置以及大小，为默认值。

2D端游、3D端游适用。

LuaGlobal["NpcTalk_ScriptCtrlPos"] = false
copy 
NpcTalkBkAroundImg	string	
NPC对话面板上，自定义面板大小时九宫格的背景图片。

图片资源ID以字符串形式，中间用英文逗号（","）隔开。

字符串中前九项为九宫格的背景图片资源ID，第十项为分割线的图片资源ID。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcTalkBkAroundImg"] = "1800820000,1800820001,1800820002,1800820003,1800820008,1800820004,1800820005,1800820006,1800820007,1903700043"--依次是左上角，右上角，左下角，右下角，中间背景，上边，下边，左边，右边，分割线 
copy 
NpcTalkBkNameBottomImg	string	
NPC对话面板上，NPC名字底部的背景图资源ID。

NpcTalkBkNameBottomImg.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcTalkBkNameBottomImg"] = "1903700020"
copy 
NpcTalkBKNoTaskImg	string	
NPC对话面板上，当没有任务时的背景图片资源ID。

NpcTalkBKNoTaskImg.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcTalkBKNoTaskImg"] = "4000060000"
copy 
NpcTalkBkTaskImg	string	
NPC对话面板上，有任务时背景图和选中时高亮图片资源ID。

下图中的框选部分为人物被选中时的高亮图片。

NpcTalkBkTaskImg.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcTalkBkTaskImg"] = "4000060000,1903700015"
copy 
NpcTalkBkTaskStatusImg	string	
NPC对话面板上，任务选项上当前任务可提交，可接受和不可提交三种状态下使用的图片资源ID。

NpcTalkBkTaskStatusImg.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["NpcTalkBkTaskStatusImg"] = "1903700016, 1903700018, 1903700017"
copy 
NpcTalkClipContainer	bool	
是否裁剪NPC对话框中富文本框内容。

true代表裁剪；false代表不裁剪，为默认值。

若设置为true，当文本溢出文本框时，溢出部分被剪裁不显示。

2D手游、3D手游适用。

LuaGlobal["NpcTalkClipContainer"] = true
copy 
OmitWaitTickSkillLinks	string	
设置需要忽略动作等待时间的技能链列表。

技能链编号以字符串形式，中间用英文逗号隔开。

2D手游、2D端游适用。

LuaGlobal["OmitWaitTickSkillLinks"] = "SkillLinkage1,SkillLinkage2,SkillLinkage3"
copy 
OnlyHidePlayerInSafeZone	bool	
是否只隐藏安全区内其他玩家角色。

此全局变量仅在设置了接口CL:SetHideRoleFlag且设置的值不为0的情况下生效。

true代表是，即只隐藏安全区内的其他玩家角色，不隐藏安全区外的其他玩家角色；

OnlyHidePlayerInSafeZone.png
false代表否，即隐藏其他所有玩家角色，为默认值。

OnlyHidePlayerInSafeZone_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["OnlyHidePlayerInSafeZone"] = false
copy 
OnlyWalk	bool	
设置是否只允许走路。

true代表只允许走路；

false代表可以走路或者跑步，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["OnlyWalk"] = true
copy 
OtherJobUseCiSha	bool	
控制其他职业是否也能处理刺杀相关逻辑。

true代表其他职业处理刺杀相关逻辑；false代表其他职业不处理刺杀相关逻辑，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["OtherJobUseCiSha"] = false
copy 
OtherKnockingImageID	int	
设置其他玩家角色受到致命伤害时显示的图片资源ID。

对应伤害类型定义中的伤害类型other_zhiming_num。

OtherKnockingImageID.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["OtherKnockingImageID"] = 1900409500
copy 
OtherKnockingImageID2	unsigned int	
设置其他玩家角色受到致命伤害时显示的图片资源ID。

对应伤害类型定义中的伤害类型other_zhiming_num2。

OtherKnockingImageID2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["OtherKnockingImageID2"] = 1900409500
copy 
OtherMianYiImageID	unsigned int	
设置其他玩家角色防御成功（即免疫）时显示的图片资源ID。

对应伤害类型定义中的伤害类型other_mianyi。

other_mianyi.png
2D手游、3D手游适用。

LuaGlobal["OtherMianYiImageID"] = 1900414700
copy 
OtherMissImageID	unsigned int	
设置其他玩家角色闪避成功时显示的图片资源ID。

对应伤害类型定义中的伤害类型other_miss。

other_miss.png
2D手游、2D端游和3D端游适用。

LuaGlobal["OtherMissImageID"] = 1900414300
copy 
OtherRoleHeadInfoClickUseSize	bool	
设置其他角色面板或怪物面板鼠标点击拖动的响应范围是否为整个窗口区域。

true代表拖动响应范围为整个窗口区域；false代表响应区域维持原有的状态，如下图所示，为默认值。

OtherRoleHeadInfoClickUseSize.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["OtherRoleHeadInfoClickUseSize"] = true
copy 
OverlapBindItem	bool	
设置当要拾取的物品与背包的物品绑定属性不一致时是否可以进行堆叠。

true代表是，即当要拾取的物品与背包的物品绑定属性不一致时可以进行堆叠；

false代表否，即当要拾取的物品与背包的物品绑定属性不一致时不可以进行堆叠，为默认值。

2D手游、2D端游适用。

LuaGlobal["OverlapBindItem"] = true
copy 
PackItemCanDrag	bool	
物品框是否支持按住物品进行拖动的操作。功能生效时，角色背包中的物品支持拖动到其他物品框格子中。请参见下图：

PackItemCanDrag
注意：

1）支持英雄的版本，英雄或角色背包界面处于按钮移动-开的状态，拖动操作无效；

2）拖动功能仅对以点击页签切换物品框页面的背包面板类型有效（即不适用于左右滑动切换物品框页面的背包面板类型）；

3）支持将背包装备拖动到装备栏、将背包物品直接拖动到仓库和扩展仓库（包括反向拖动）中，其余将物品拖动场景中的操作为丢弃物品操作；

4）如当前服务区开启了摆摊BUFF，摆摊时则不能拖动角色背包内的物品。

true代表是；false代表否，为默认值。

2D手游、3D手游适用。

LuaGlobal["PackItemCanDrag"] = true
copy 
PakagePageSize	int	
设置背包的最大容量，即背包可容纳物品的最大数量，默认值为40。

2D手游、3D手游适用。

LuaGlobal["PakagePageSize"] = 40
copy 
PickItemInterval	int	
捡物品的时间间隔，单位为毫秒(ms)，默认值为0。

此全局变量仅在全局变量UsePickItemInterval设置为true时生效。

2D手游、3D手游适用。

LuaGlobal["PickItemInterval"] = 800
copy 
PickUpAllItem	bool	
物品内挂是否全部拾取。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PickUpAllItem"] = false
copy 
PickUpAllItemType	int	
设置物品设置（旧）面板中“全部拾取”选项的定义类型。

PickUpAllItemType.png
0代表勾选该选项则自动拾取所有物品，取消勾选该选项则按照物品列表中已勾选“自动拾取”选项的列表项目进行自动拾取，为默认值；

1代表勾选该选项则按照物品列表中已勾选“自动拾取”选项的列表项目进行自动拾取，取消勾选该选项则不自动拾取任何物品。

3D手游、3D端游适用。

LuaGlobal["PickUpAllItemType"] = 0
copy 
PlayerBigHurtImageID	unsigned int	
指定被击角色受暴击伤害血条减少时，显示的数字飘字的起始图片资源ID。

默认值为1900405300。

数字0-9的图片资源ID指定时须按以下规则：从起始图片资源ID开始，末尾3位以100递增。如数字0的图片资源ID是1900407300，则指定数字1是1900407400, 数字2就要是1900407500，以此类推。

仅2D端游适用。

LuaGlobal["PlayerBigHurtImageID"] = 1900407300
copy 
PlayerBigHurtImageInterval	unsigned int	
对应全局变量PlayerBigHurtImageID的飘字数字0-9的图片资源ID间隔，默认值为100。

如果资源ID间隔不是100，则可以通过此全局变量进行更改。

仅2D端游适用。

LuaGlobal["PlayerBigHurtImageInterval"] = 100
copy 
PlayerBigHurtImageName	string	
指定被击角色受暴击伤害血条减少时，显示的数字飘字的图集资源名。

默认值为"5300.png"。

请参见自定义飘字效果了解更多信息。

2D手游、3D手游和3D端游适用。

LuaGlobal["PlayerBigHurtImageName"]="7300.png"
copy 
PlayerBKBeforeHP	bool	
设置血条框与血条的绘制顺序。

true代表血条框绘制在血条前面；

false代表血条框绘制在血条后面，为默认值。

2D手游、2D端游适用。

LuaGlobal["PlayerBKBeforeHP"] = false
copy 
PlayerCastleNameBeforeFamilyName	bool	
控制城堡名是否显示在行会名的左边。

true城堡名显示在行会名的左边；
false城堡名显示在行会名的右边，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerCastleNameBeforeFamilyName"] = false
copy 
PlayerChatBubbleOffsetY	int	
角色头顶显示的聊天气泡在垂直方向上的偏移值，默认值为0。

PlayerChatBubbleOffsetY.png
仅2D手游适用。

LuaGlobal["PlayerChatBubbleOffsetY"] = 0
copy 
PlayerCustomTextPosOffset	int	
角色自定义名称在垂直方向上的偏移值。

2D手游、3D手游适用。

LuaGlobal["PlayerCustomTextPosOffset"] = 900
copy 
PlayerDieUseMirrorDir	bool	
设置人物死亡动作是否使用镜像模式。

true代表是，即人物死亡动作使用镜像模式；

false代表否，即人物死亡动作不使用镜像模式，为默认值。

开启镜像模式后，人物死亡动作只需要上、右上、右、右下、下这五个方向的资源。

其余方向对应关系为：左上对应右上，左对应右，左下对应右下。

仅2D手游适用。

LuaGlobal["PlayerDieUseMirrorDir"] = false
copy 
z
PlayerDigImage	unsigned int	
玩家挖肉时头顶的图片资源ID。

PlayerDigImage.png
2D手游、2D端游适用。

LuaGlobal["PlayerDigImage"] = 1070400000
copy 
PlayerHPBKImage	int	
设置血条框背景图片，默认值为1850000038。

2D手游、2D端游适用。

LuaGlobal["PlayerHPBKImage"] = 1850000038
copy 
PlayerHPImage	int	
设置玩家角色头顶血条的图片资源ID。

如需单独设置玩家自己的血条图片，可使用全局变量PlayerSelfHPImage进行配置。

PlayerHPImage.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerHPImage"] = 1900120000
copy 
PlayerHPPosOffset	int	
头顶血条在垂直方向上的偏移。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerHPPosOffset"] = 0
copy 
PlayerHurtImageID	unsigned int	
指定其他玩家受伤害血条减少时，显示的数字飘字的起始图片资源ID。

数字0-9的图片资源ID指定时须按以下规则：从起始图片资源ID开始，末尾3位以100递增。如数字0的图片资源ID是1900407300，则指定数字1是1900407400, 数字2就要是1900407500，以此类推。

2D端游、H5适用。

LuaGlobal["PlayerHurtImageID"] = 1900407300
copy 
PlayerHurtImageInterval	unsigned int	
对应全局变量PlayerHurtImageID的飘字数字0-9的图片资源ID间隔，默认值为100。

如果资源ID间隔不是100，则可以通过此全局变量进行更改。

仅2D端游适用。

LuaGlobal["PlayerHurtImageInterval"] = 100
copy 
PlayerHurtImageName	string	
指定其他玩家受伤害血条减少时，显示的数字飘字的图集资源名。

请参见自定义飘字效果了解更多信息。

2D手游、3D手游和3D端游适用。

LuaGlobal["PlayerHurtImageName"] = "5300.png"
copy 
PlayerHurtMinusImageID	unsigned int	
指定其他玩家受伤害血条减少时，显示的减号（-）图片资源ID。

2D端游、H5适用。

LuaGlobal["PlayerHurtMinusImageID"] = 1900407299
copy 
PlayerInnerPosOffset	int	
玩家内功条偏移量，默认值为0。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerInnerPosOffset"] = 3
copy 
PlayerMinusBigHurtImageID	unsigned int	
指定被击角色受暴击伤害或者额外伤害血条减少时，显示的减号（-）图片资源ID。

PlayerMinusBigHurtImageID.png
仅2D端游适用。

LuaGlobal["PlayerMinusBigHurtImageID"] = 1900405200
copy 
PlayerMpAddImageID	unsigned int	
指定魔法值增加时，显示的加号（+）图片资源ID。

仅2D端游适用。

LuaGlobal["PlayerMpAddImageID"] = 1900403400
copy 
PlayerMpHurtImageID	unsigned int	
指定魔法值减少时显示飘字的数字起始图片资源ID。

数字0-9的图片资源ID指定时须按以下规则：从起始图片资源ID开始，末尾3位以100递增。如数字0的图片资源ID是1900410300，则指定数字1是1900410400, 数字2就要是1900410500，以此类推。

仅2D端游适用。

LuaGlobal["PlayerMpHurtImageID"] = 1900410300
copy 
PlayerMpHurtImageInterval	unsigned int	
对应全局变量PlayerMpHurtImageID的飘字数字0-9的图片资源ID间隔，默认值为100。

如果资源ID间隔不是100，则可以通过此全局变量进行更改。

仅2D端游适用。

LuaGlobal["PlayerMpHurtImageInterval"] = 100
copy 
PlayerMpHurtMinusImageID	unsigned int	
指定魔法值减少时显示飘字的减号（-）图片资源ID。

仅2D端游适用。

LuaGlobal["PlayerMpHurtMinusImageID"] = 1900410200
copy 
PlayerMPImage	unsigned int	
指定角色头顶显示的魔法值条的图片资源ID。

2D手游、2D端游、3D手游和3D端游适用。	
LuaGlobal["PlayerMPImage"] = 1900190019
copy 
PlayerNameCenterInHorizontal	bool	
是否将玩家角色名字单独居中。

true代表是，即玩家角色名字单独居中而VIP图标显示在其左侧；

PlayerNameCenterInHorizontal.png
false代表否，即玩家角色名字和VIP图标一起居中，为默认值。

PlayerNameCenterInHorizontal_2.png
2D手游、3D手游适用。

LuaGlobal["PlayerNameCenterInHorizontal"] = false --角色名字和VIP图标一起居中
copy 
PlayerNameForceConvert	bool	
设置是否强制修复因部分特殊字符（如“·”）引起的选择角色界面上的玩家名称显示为乱码的问题。

true代表是，强制修复上述乱码问题；

false代表否，即保持原来的效果，为默认值。

仅2D手游适用。

LuaGlobal["PlayerNameForceConvert"] = false
copy 
PlayerNameGrayColor	string	
控制玩家灰名颜色。

默认值为"GRAY"。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerNameGrayColor"] = "GRAY"
copy 
PlayerNameType	int	
行会名、师徒名、配偶名及称谓的显示位置。

0代表显示在角色名下方；1代表显示在角色名上方。

此全局变量仅在全局变量PlayerTextPosType设置为0时生效。

当此全局变量设置为0时，由上到下显示的顺序依次为玩家名、行会名、配偶名、师徒名、称谓；

PlayerNameType_2.png
当此全局变量设置为1时，由上到下显示的顺序依次为行会名、配偶名、师徒名、称谓、玩家名；

PlayerNameType.png
当此全局变量设置为2时，由上到下显示的顺序依次为称谓、行会名、配偶名、师徒名、玩家名。

PlayerNameType_3_s
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerNameType"] = 0
copy 
PlayerNoHighlight	bool	
控制是否取消角色被选中时的高亮效果。

true代表取消，即角色被选中时不显示高亮效果；

PlayerNoHighlight.png
false代表不取消，即角色被选中时显示高亮效果，为默认值。

PlayerNoHighlight_2.png
2D手游、2D端游和3D手游适用。

LuaGlobal["PlayerNoHighlight"] = true
copy 
PlayerSelfBigHurtImageID	unsigned int	
指定玩家自身受暴击伤害血条减少时，显示的数字飘字的起始图片资源ID。

默认值为1900407300。

数字0-9的图片资源ID指定时须按以下规则：从起始图片资源ID开始，末尾3位以100递增。如数字0的图片资源ID是1900407300，则指定数字1是1900407400, 数字2就要是1900407500，以此类推。

仅2D端游适用。

LuaGlobal["PlayerSelfBigHurtImageID"] = 1900405300
copy 
PlayerSelfBigHurtImageInterval	unsigned int	
对应全局变量PlayerSelfBigHurtImageID的飘字数字0-9的图片资源ID间隔，默认值为100。

如果资源ID间隔不是100，则可以通过此全局变量进行更改。

仅2D端游适用。

LuaGlobal["PlayerSelfBigHurtImageInterval"] = 100
copy 
PlayerSelfBigHurtImageName	string	
指定玩家自身受暴击伤害血条减少时，显示的数字飘字的图集资源名。

默认值为"7300.png"。

请参见自定义飘字效果了解更多信息。

2D手游、3D手游和3D端游适用。

LuaGlobal["PlayerSelfBigHurtImageName"]="5300.png"
copy 
PlayerSelfHPImage	int64	
自定义玩家自己的血条图片，默认值为0（即使用全局变量PlayerHPImage中配置的血条图片）。

PlayerHPImage.png
2D手游、2D端游适用。

LuaGlobal["PlayerSelfHPImage"] = 0
copy 
PlayerSelfHurtImageID	unsigned int	
指定玩家自身受伤害血条减少时，显示的数字飘字的起始图片资源ID。

数字0-9的图片资源ID指定时须按以下规则：从起始图片资源ID开始，末尾3位以100递增。如数字0的图片资源ID是1900407300，则指定数字1是1900407400, 数字2就要是1900407500，以此类推。

2D端游、H5适用。

LuaGlobal["PlayerSelfHurtImageID"] = 1900407300
copy 
PlayerSelfHurtImageInterval	unsigned int	
对应全局变量PlayerSelfHurtImageID的飘字数字0-9的图片资源ID间隔，默认值为100。

如果资源ID间隔不是100，则可以通过此全局变量进行更改。

仅2D端游适用。

LuaGlobal["PlayerSelfHurtImageInterval"] = 100
copy 
PlayerSelfHurtImageName	string	
指定玩家自身受伤害血条减少时，显示的数字飘字的图集资源名。

请参见自定义飘字效果了解更多信息。

2D手游、3D手游和3D端游适用。

LuaGlobal["PlayerSelfHurtImageName"] = "5300.png"
copy 
PlayerSelfHurtMinusImageID	unsigned int	
指定玩家受自身伤害血条减少时，显示的减号（-）图片资源ID。

2D端游、H5适用。

LuaGlobal["PlayerSelfHurtMinusImageID"] = 1900407299
copy 
PlayerSelfMinusBigHurtImageID	unsigned int	
指定玩家自身受暴击伤害或者额外伤害血条减少时，显示的减号（-）图片资源ID。

PlayerMinusBigHurtImageID.png
仅2D端游适用。

LuaGlobal["PlayerSelfMinusBigHurtImageID"] = 1900407299
copy 
PlayerSelfTransparency	bool	
是否进行自身半透明效果处理。

true代表是，为默认值；false代表否。

若此全局变量设置为false，则去除玩家自身半透明效果（即玩家自身的颜色与其他玩家统一）。

仅2D端游适用。

LuaGlobal["PlayerSelfTransparency"] = false
copy 
PlayerShowFamilyTitle	bool	
设置在玩家的行会名后是否显示玩家的行会封号。

true代表是，即在玩家的行会名后显示玩家的行会封号；

PlayerShowFamilyTitle.png
false代表否，即在玩家的行会名后不显示玩家的行会封号，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerShowFamilyTitle"] = false
copy 
PlayerTextPosOffset	int	
2D手游、3D手游和3D端游：角色名字和血条在垂直方向上的整体偏移量，默认值为0。

2D手游中，使用此全局变量时，建议将全局变量UseNewPlayerTextPosOffset设置为true，以避免出现偏移值有误的问题。

PlayerTextPosOffset.png
2D端游：角色名字在垂直方向上的偏移量，默认值为0。

PlayerTextPosOffset_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerTextPosOffset"] = -50 
copy 
PlayerTextPosType	int	
角色名字的显示位置。

0代表角色中间，为默认值；

PlayerTextPosType.png
1代表角色头顶。

PlayerTextPosTyp_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PlayerTextPosType"] = 1
copy 
PlayGongShaSound	bool	
设置是否播放自己和其他玩家的攻杀音效。

true代表播放自己和其他玩家的攻杀音效，为默认值；false代表不播放自己和其他玩家的攻杀音效。

2D手游、2D端游适用。

LuaGlobal["PlayGongShaSound"] = true
copy 
PrestigeDataType	bool	
设置声望字段数值的来源。

true代表从玩家角色属性获取声望字段数值；

false代表获取自定义变量（“shengwang”）的取值。

具体请参见FAQ：如何设置人物声望。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["PrestigeDataType"] = true
copy 
QuestItemIsUseDefaultPos	bool	
设置任务面板中物品框的位置是否由程序控制。

QuestItemIsUseDefaultPos.png
true代表是，即任务面板中物品框的位置由程序控制，使用程序中设置的默认位置，为默认值；

false代表否，即任务面板中物品框的位置由脚本控制，可通过脚本设置任务面板中物品框的位置。

2D端游、3D端游适用。

LuaGlobal["QuestItemIsUseDefaultPos"] = true
copy 
QuickAddPointCount	int	
当强化点数有剩余时，点击强化属性界面上的加号/减号按钮（框选部分）时单次增加/减少的属性点数。

例如：当此全局变量设置为10时，点击一次加号按钮可增加10点属性。

QuickAddPointCount.png
2D端游、3D端游适用。

LuaGlobal["QuickAddPointCount"] = 10
copy 
ReconnetType	int	
断线时是否重连。

0代表重连，为默认值；1代表退出。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ReconnetType"] = 0
copy 
RedBlueDrugInterval	int	
红绿毒施放的时间间隔，单位为毫秒（ms），默认值为8000。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RedBlueDrugInterval"] = 25*100
copy 
REDDRUG_SKILLID	string	
2D：设置红毒和群体红毒的技能特效，用于区分红毒和绿毒起手的显示。此处应配置相关红毒技能对应的特效编号（具体请参考技能模板表中的“技能特效”选项）。

“技能特效”选项访问路径为：游戏工具平台→游戏配置→技能→技能模板表→基础配置→特效配置区域。

REDDRUG_SKILLID.png
3D：设置红毒和群体红毒的技能特效，用于区分红毒和绿毒起手及子弹特效的显示。此处应配置相关红毒的技能特效编号的前5位（具体请参考技能配置（3D）说明页面中的id字段）。

配置值为字符串形式，中间用英文逗号（“,”）隔开，定义分别为"红毒技能特效编号, 群体红毒技能特效编号"，默认值为""。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["REDDRUG_SKILLID"] = ""
copy 
RedPKData	int	
设置玩家名称变为红色所需要的PK值，默认值为200。

2D手游、2D端游适用。

LuaGlobal["RedPKData"] = 200
copy 
RefineImage	string	
设置精炼等级为1~5级、6~10级和11-15级时显示的精炼特效的图片资源ID。

精炼特效的图片资源ID以字符串的形式，中间用英文逗号“,”隔开，按顺序依次为精炼等级为1~5级时的精炼特效、精炼等级为6~10级时的精炼特效和精炼等级为11~15级时的精炼特效。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RefineImage"] = "0,0,0"
copy 
RefreshData	bool	
返回前台时是否刷新数据。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RefreshData"] = true
copy 
RefreshDataIsShowMessage	bool	
设置在断线重连刷新时是否重新提示背包中的物品。

true代表是，即在断线重连刷新时会重新提示背包中的物品，为默认值；

false代表否，即在断线重连刷新时不会重新提示背包中的物品。

此全局变量仅在全局变量RefreshData设置为true时生效。

当此全局变量设置为true时，断线重连刷新后背包中的所有物品都会被重新提示一遍。

RefreshDataIsShowMessage.png
2D端游、3D端游适用。

LuaGlobal["RefreshDataIsShowMessage"] = true
copy 
RegineImageScale	double	
设置精炼特效的缩放比例。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RegineImageScale"] = 0.9
copy 
ReturnIfTriggerComboxR	string	
当同时可触发Combox9保护设置和Combox8保护设置时，触发Combox9保护设置后是否不再触发Combox8保护设置。

ReturnIfTriggerComboxR.png
true代表是，即触发Combox9保护设置后不再触发Combox8保护设置；

false代表否，即触发Combox9保护设置后仍会触发Combox8保护设置，为默认值。

当此全局变量设置为true时，可改善保护设置可能导致冲突的问题。

仅2D端游适用。

LuaGlobal["ReturnIfTriggerComboxR"] = false
copy 
RichEdit_RI_ShowUnderline	手游：bool
端游：int	
多功能编辑框的超链接是否要加下划线。

RichEdit_RI_ShowUnderline.png
手游：true代表是；false代表否。

端游：1代表是；0代表否。

2D手游、2D端游和3D端游适用。

LuaGlobal["RichEdit_RI_ShowUnderline"] = true --手游
copy 
LuaGlobal["RichEdit_RI_ShowUnderline"] = 1 --端游
copy 
RockerIsfixed	bool	
是否固定摇杆的位置。

true代表固定摇杆位置，为默认值；false代表不固定摇杆位置。

当此全局变量设置为false时，摇杆随着手指移动。

2D手游、3D手游适用。

LuaGlobal["RockerIsfixed"] = true
copy 
RockerMoveCancelAutoAttack	bool	
设置非摇杆新配置模式下，是否在移动摇杆后立即取消自动战斗状态。

true代表是；false代表否，为默认值。

仅2D手游、3D手游适用。

LuaGlobal["RockerMoveCancelAutoAttack"] = true
copy 
RockerMoveCancelAutoPickup	bool	
设置非摇杆新配置模式下，是否在移动摇杆后立即取消拾取状态。

true代表是；false代表否，为默认值。

仅2D手游、3D手游适用。

LuaGlobal["RockerMoveCancelAutoPickup"] = false
copy 
RockerMoveTime	int	
摇杆的移动延迟时间（单位为毫秒）。默认值为0。

设置的延迟时间越大表示摇杆越迟钝。

2D手游、3D手游适用。

LuaGlobal["RockerMoveTime"] = 0
copy 
RockerPosXBegin	int	
固定摇杆模式时，摇杆默认的移动的范围

以屏幕左下方位置(0, 25)为起始点，设置X方向的起始位置（像素）。

仅2D手游适用。

LuaGlobal["RockerPosXBegin"] = 70
copy 
RockerPosXEnd	int	
固定摇杆模式时，摇杆默认的移动的范围

以屏幕左下方位置(0, 25)为起始点，设置X方向的终点位置（像素）。

仅2D手游适用。

LuaGlobal["RockerPosXEnd"] = 220
copy 
RockerPosYBegin	int	
固定摇杆模式时，摇杆默认的移动的范围

以屏幕左下方位置(0, 25)为起始点，设置Y方向的起始位置（像素）。

仅2D手游适用。

LuaGlobal["RockerPosYBegin"] = 70
copy 
RockerPosYEnd	int	
固定摇杆模式时，摇杆默认的移动的范围。

以屏幕左下方位置(0, 25)为起始点，设置Y方向的终点位置（像素）。

仅2D手游适用。

LuaGlobal["RockerPosYEnd"] = 220
copy 
RoleFontName	string	
玩家角色和怪物名字的字体。

RoleFontName.png
2D手游、2D端游和3D手游适用。

LuaGlobal["RoleFontName"] = "HpFont"
copy 
RoleGUIXOffset	int	
设置角色“装备”界面、“属性”界面、“状态”界面、“称号”界面、“技能”界面和“其他”界面在水平方向上的偏移，默认值为31。

以装备界面为例，如下图所示。

RoleGUIXOffset.png
仅2D端游适用。

LuaGlobal["RoleGUIXOffset"] = 31
copy 
RoleGUIYOffset	int	
设置角色“装备”界面、“属性”界面、“状态”界面、“称号”界面、“技能”界面和“其他”界面在垂直方向上的偏移，默认值为48。

以装备界面为例，如下图所示。

RoleGUIXOffset.png
仅2D端游适用。

LuaGlobal["RoleGUIYOffset"] = 48
copy 
RoleHPFont	bool	
目前RoleFontName仅应用于角色名字字体，包含怪物与玩家，新增全局变量RoleHPFont，以设置角色数字显血的字体。

端游：默认值为system

手游：默认值为RoleFontName变量的设定值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RoleHPFont"] = "system"
copy 
RoleHpTextOffsetY	int	
设置玩家角色和怪物血条文字的在垂直方向上的偏移，单位为像素（px），默认值为0。

RoleHpTextOffsetY.png
正数代表向下偏移，负数代表向上偏移。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RoleHpTextOffsetY"] = 0
copy 
RoleMarkImageID	int	
设置角色突出显示的图片资源。

SetShowMarkRoleList.png
相关接口请参考：SetShowMarkRoleList

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RoleMarkImageID"] = 4005400045
copy 
RoleMarkYOffset	int	
自定义角色突出显示标记的高度，默认值为35。

SetShowMarkRoleList.png
相关接口请参考：SetShowMarkRoleList

2D手游、2D端游适用。

LuaGlobal["RoleMarkYOffset"] = 35
copy 
RoleNameX	int	
RoleName控件中的角色名在水平方向上的偏移，默认值为152。

备注：上述的角色名仅在RoleGuiNew.lua脚本文件中的RoleName控件不存在时才会出现。

2D端游和3D端游适用。

LuaGlobal["RoleNameX"] = 152
copy 
RoleNameY	int	
RoleName控件中的角色名在垂直方向上的偏移，默认值为20。

备注：上述的角色名仅在RoleGuiNew.lua脚本文件中的RoleName控件不存在时才会出现。

2D端游和3D端游适用。

LuaGlobal["RoleNameY"] = 20
copy 
RoleSelectRingImage	unsigned int	
配置角色被选中时所展示的光环的图片资源ID。

RoleSelectRingImage.png
2D手游、2D端游适用。

LuaGlobal["RoleSelectRingImage"] = 1046500000
copy 
RoleSelectRingImageBlend	int	
设置角色被选中时显示的光圈的混色方式。

可选的配置值为-1、1、2、3、4、5和6，其中-1为默认值（不混色），其余混色类型值的说明可参考接口GUI:WndSetBlendType中参数blendtype的说明。

2D手游、2D端游适用。

LuaGlobal["RoleSelectRingImageBlend"] = -1
copy 
RoleSkillItemCount	int	
角色技能界面中技能图标框的生效个数。

RoleSkillItemCount.png
2D端游、3D端游适用。

LuaGlobal["RoleSkillItemCount"] = 12
copy 
RoleSkillKeyImageStr	int	
角色技能界面中，快捷键显示的图片资源ID。

RoleSkillKeyImageStr.png
图片资源ID以字符串形式，中间用英文逗号“,”隔开。

2D端游、3D端游适用。

LuaGlobal["RoleSkillKeyImageStr"] = "1930200099,1930200035,1930200039,1930200043,1930200047,1930200051,1930200055,1930200059,1930200063,1930200067,1930200071,1930200075,1930200079,1930200083,1930200087,1930200091,1930200095"
copy 
RoleTalkBubbleImage	string	
自定义角色头顶对话气泡框的样式。

RoleTalkBubbleImage.png
图片资源ID为字符串形式，分别对应对话气泡框上、中、下的图片资源ID，图片资源ID之间用英文逗号（“,”）隔开。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RoleTalkBubbleImage"] = "1900190011,1900190010,1900190009"
copy 
RoleUIBringTop	bool	
设置是否把装备界面显示在角色面板的顶层。

装备界面置于顶层时，例如在显示较长的武器时，武器显示区域会覆盖角色面板上的其他控件，如按钮等。

RoleUIBringTop

true代表是，为默认值；false代表否。

仅2D端游适用。

LuaGlobal["RoleUIBringTop"] = true
copy 
RushAction	int	
用于控制蛮力冲锋时的动作。

0代表默认的跑步动作，为默认值；

1代表战斗待机动作。

RushAction.png
2D手游、2D端游适用。

LuaGlobal["RushAction"] = 1
copy 
RushFailedTime	int	
控制冲撞失败客户端僵直时间。

默认值为1000，单位为毫秒。

3D手游、3D端游适用。

LuaGlobal["RushFailedTime"] = 1000
copy 
RushSkillFailedShake	bool	
设置技能“蛮力冲锋”施放失败后是否显示冲锋失败的动画。

true代表是，即技能“蛮力冲锋”施放失败后角色撞到阻挡物会回弹一步，同时伴随画面的抖动；

false代表否，即技能“蛮力冲锋”施放失败只会播放一段“蛮力冲锋”特效或者站立不动，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RushSkillFailedShake"] = false
copy 
RushUseServerSpeed	bool	
控制客户端的蛮力冲锋速度是否使用全局模板表中蛮力冲锋的移动速度设置值。

RushUseServerSpeed.png
true代表使用，false代表不使用，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["RushUseServerSpeed"] = true
copy 
SafeDistance	int	
设置术士和法师自动挂机时的安全距离。

默认值为1，单位为逻辑格。

仅2D手游适用。

LuaGlobal["SafeDistance"] = 1
copy 
SelectCorpseType	int	
设置是否支持选中尸体与对选中的尸体施放技能的功能。

0代表不支持该功能，为默认值；

1代表支持该功能。

SelectCorpseType.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["SelectCorpseType"] = 0
copy 
SelectDieObj	bool	
死亡目标是否可被选中。

true代表是，即死亡目标可被选中；

false代表否，即死亡目标不可被选中，为默认值。

2D手游、3D手游适用。

LuaGlobal["SelectDieObj"] = false
copy 
SelectPlayerSpellTarget	int	
设置在未选中目标的情况下使用服务端接口lualib:Player_SpellTarget施放技能的位置。

0代表服务端接口lualib:Player_SpellTarget所指定目标的位置，为端游默认值；

1代表玩家正面朝向的第一个逻辑格，为手游默认值。

2D手游、2D端游适用。

LuaGlobal["SelectPlayerSpellTarget"] = 0
copy 
SelectRole_AutoGetList	bool	
打开选角界面时是否自动请求角色列表。

true代表是，为默认值；false代表否。

当此全局变量设置为false时，需要脚本主动请求角色列表。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["SelectRole_AutoGetList"] = true
copy 
SelectUseWeap	bool	
设置选择角色时武器是否作为选取区域。

true代表是，即点击角色武器时可以选中角色，为默认值；

false代表否，即点击角色武器时不可选中角色。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["SelectUseWeap"] = true
copy 
SelfChangeFamilyColorInAvatarBuff	bool	
玩家在配置了能改变人物外形的BUFF的情况下是否改变角色身上的行会名颜色。

true代表改变行会名的颜色；

false代表不改变行会名的颜色，为默认值。

行会名的颜色随玩家名字、称号等其他文本的颜色一起变化。

仅2D手游适用。

LuaGlobal["SelfChangeFamilyColorInAvatarBuff"] = true
copy 
SenceItemShowBankground	bool	
设置当物品掉落在场景中时物品名称后是否会显示背景框。

true代表显示背景框，为默认值；

SenceItemShowBankground.png
false代表不显示背景框。

SenceItemShowBankground_2.png
仅2D端游适用。

LuaGlobal["SenceItemShowBankground"] = true
copy 
SeparateShowNameSetting	bool	
控制是否分开设置玩家自身和其他玩家的名字是否可见。

true代表分开设置玩家自身和其他玩家的名字可见性(对应设置：是否隐藏自己名字，是否隐藏他人名字)；

false代表统一设置玩家自身和其他玩家的名字可见性(对应设置：是否显示名字)，为默认值。

若此全局变量设置为true，则“是否显示名字”的设置失效。

若此全局变量设置为false，则“是否隐藏自己名字”和“是否隐藏他人名字”的设置失效。

2D手游、2D端游、3D手和3D端游适用。

LuaGlobal["SeparateShowNameSetting"] = true
copy 
ServantIsMonster	bool	
术士宠物（或法师宠物）是否视作怪物。

true代表将术士宠物（或法师宠物）视作怪物；

false代表不将术士宠物（或法师宠物）视作怪物，为默认值。

2D手游、3D手游适用。

LuaGlobal["ServantIsMonster"] = false
copy 
ShiftCiShaNoChase	bool	
控制是否在shift强攻时追击攻击对象。

true代表在shift强攻时追击攻击对象；false代表在shift强攻时不追击攻击对象，为默认值。

仅3D端游适用。

LuaGlobal["ShiftCiShaNoChase"] = false
copy 
ShowAccompanyName	bool	
是否显示宠物名字。

true代表显示；

ShowAccompanyName_2.png
false代表不显示，为默认值。

ShowAccompanyName.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowAccompanyName"] = true
copy 
ShowAchieveMsg	bool	
聊天框是否显示完成成就提示。

true代表显示，为默认值；false代表不显示。

2D手游、2D端游适用。

LuaGlobal["ShowAchieveMsg"] = ture
copy 
ShowAllItemName	bool	
物品内挂是否全部显示物品名称。

true代表是，为默认值；false代表否。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowAllItemName"] = false
copy 
ShowBindImage	bool	
已绑定物品是否显示绑定图片。

ShowBindImage.png
true代表显示，为默认值；false代表不显示。

仅2D手游适用。

LuaGlobal["ShowBindImage"] = false
copy 
ShowBrokenEquipTip	bool	
装备损坏（即提示耐久不足时）时，是否显示装备损坏的tips。

true代表显示；false代表不显示，为默认值。

当此全局变量设置为true时，TipLayout.lua文件中需存在tipLayoutFunctionBrokenEquip函数。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowBrokenEquipTip"] = false
copy 
ShowBuffInAvatarBuffState	bool	
设置角色处于变身状态时是否显示变身前的BUFF图标。

ShowBuffInAvatarBuffState.png
true代表显示；false代表不显示，为默认值。

2D手游、2D端游和3D端游适用。

LuaGlobal["ShowBuffInAvatarBuffState"] = false
copy 
ShowClickGroudEffect	bool	
是否显示地面点击特效。

ClickGroudImageID.png
true代表显示，为默认值；false代表不显示。

仅2D手游适用。

LuaGlobal["ShowClickGroudEffect"] = true
copy 
ShowDigBodyMagic	bool	
是否显示怪物挖肉特效。

true代表显示，为默认值；false代表不显示。

2D手游、2D端游适用。

LuaGlobal["ShowDigBodyMagic"] = true
copy 
ShowDigWithStand	int	
是否使用站立动作代替挖肉动作(因老资源缺少挖肉动作)。

1代表是，为默认值；0代表否。

2D手游、2D端游适用。

LuaGlobal["ShowDigWithStand"] = 1
copy 
ShowFamilyWarColorInSafeArea	bool	
在开启行会战的情况下，玩家处于安全区内时，头顶的名称是否会显示行会战颜色。

true代表是，即玩家处于安全区内时，头顶的名称会显示行会战颜色，为默认值；

false代表否，即玩家处于安全区内时，头顶的名称不会显示行会战颜色。

仅2D端游适用。

LuaGlobal["ShowFamilyWarColorInSafeArea"] = false
copy 
ShowForbidSkillTip	bool	
设置是否显示技能被禁止时的提示。

如需设置角色自身禁用技能，请参考接口CL:ForbidPlayerSelfSkill的说明。

true代表开启提示，为默认值；

false代表关闭提示。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowForbidSkillTip"] = true
copy 
ShowHeroCustomName	bool	
设置是否显示英雄的自定义名称。

true代表是；false代表否，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowHeroCustomName"] = true
copy 
ShowHpText	bool	
是否显示怪物头顶血条数字。

true代表是，为默认值；false代表否。

2D手游、2D端游和3D手游适用。

LuaGlobal["ShowHpText"] = false
copy 
ShowHPTextAsOthers	bool	
设置玩家自身开启外形BUFF时，数字显血的表现是否和其他玩家保持一致（即开启数字显血功能且血量不满的情况下才显示数字血量）。

true代表是；false代表否，为默认值。

2D手游、2D端游适用。

LuaGlobal["ShowHPTextAsOthers"] = true
copy 
ShowHurtTipsWhenHPPercentBelow	float	
设置残血界面泛红提醒的血量百分比(当前血量/总血量)阈值，取值范围为0到1之间的浮点数，默认值为0。

当减血时发现血量低于该阈值，会调起显示HurtTips.lua脚本界面；当血量恢复该阈值及以上或者归零，则关闭HurtTips.lua脚本界面。

2D手游、2D端游适用。

LuaGlobal["ShowHurtTipsWhenHPPercentBelow"] = 0
copy 
ShowInner	手游：bool
端游：int	
设置是否一直显示角色头顶内功数值条。

手游：true代表显示；false代表不显示，为默认值。

端游：1代表显示；0代表不显示，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowInner"] = false --手游
copy 
LuaGlobal["ShowInner"] = 0 --端游
copy 
ShowInnerForce	bool	
设置当前内功值小于最大内功值时是否显示角色头顶内功数值条。

true代表显示；false代表不显示，为默认值。

当此全局变量设置为true时，若当前内功值达到最大内功值，则不会显示角色头顶内功数值条。

备注：若设置此全局变量为true，请确保ShowInner设置为false。

2D手游、3D手游和H5适用。

LuaGlobal["ShowInnerForce"] = true
copy 
ShowInnerMonster	int	
是否显示怪物头顶内功数值条。

1代表显示；0代表不显示，为默认值。

仅2D端游适用。

LuaGlobal["ShowInnerMonster"] = 1
copy 
ShowIsPlayerHPHeight	bool	
设置怪物血条高度是否根据人物血条高度计算并显示。

true代表是，即怪物血条高度根据人物血条高度计算并显示，为默认值。

ShowIsPlayerHPHeight.png
false代表否，即怪物血条高度按照怪物自身高度计算并显示。

ShowIsPlayerHPHeight_2.png
3D手游、3D端游适用。

LuaGlobal["ShowIsPlayerHPHeight"] = true
copy 
ShowItemAboveBeam	bool	
对于物品掉落时光柱特效，设置物品掉落图标是否显示在光柱的上层。

true代表是；false代表否，为默认值。

备注：端游中，鼠标悬浮在物品上方时才会显示物品掉落图标。

2D手游、2D端游适用。

LuaGlobal["ShowItemAboveBeam"] = true
copy 
ShowMessageWhenBuyItemInGameMall	bool	
设置在商城批量购买物品时是否显示购买确认提示对话框。

ShowMessageWhenBuyItemInGameMall.png
true代表显示，即在商城批量购买物品时会显示购买确认提示对话框，为默认值；

false代表不显示，即在商城批量购买物品时不会显示购买确认提示对话框。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowMessageWhenBuyItemInGameMall"] = true
copy 
ShowMissWhenHurtZero	bool	
伤害值为0的情况下是否显示miss（闪避）效果。

true代表显示，为默认值；false代表不显示。

2D手游、2D端游、3D手游、3D端游和H5适用。

LuaGlobal["ShowMissWhenHurtZero"] = false
copy 
ShowMonsterHeaderInfo	bool	
设置选择怪物时是否显示怪物头像信息。

ShowMonsterHeaderInfo.png
true代表显示，为默认值；false代表不显示。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowMonsterHeaderInfo"] = true
copy 
ShowMonsterHpPercentage	bool	
设置怪物血量是否显示为百分比格式。

true代表是，即怪物血量显示为百分比格式；

ShowMonsterHpPercentage.png
false代表否，即怪物血量显示为数值格式，为默认值。

ShowMonsterHpPercentage_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowMonsterHpPercentage"] = false
copy 
ShowMpHurt	bool	
设置是否显示魔法值减少飘字。

true代表显示；false为不显示，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowMpHurt"] = true
copy 
ShowNameInMonsterAvatar	bool	
在其他玩家视角下，对于外形表中模型类型为怪物类型的外观，控制其外形名称是否保持一直显示。

true代表一直显示；false代表仅点击或鼠标悬停于目标上时才显示外形名称，为默认值。

2D手游、2D端游适用。

LuaGlobal["ShowNameInMonsterAvatar"] = true
copy 
ShowNpcSubName	bool	
是否显示NPC称号。

NpcSubNameColor.png
true代表显示；false代表不显示，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowNpcSubName"] = false
copy 
ShowOtherInfoBuff	bool	
是否显示其他玩家角色或者怪物的BUFF信息。

true代表显示，为默认值；

ShowOtherInfoBuff_2.png
false代表不显示。

ShowOtherInfoBuff.png
2D手游、3D手游适用。

LuaGlobal["ShowOtherInfoBuff"] = false
copy 
ShowOtherTalkString	bool	
是否显示玩家角色（包括其他玩家角色）头顶的消息冒泡。

ShowOtherTalkString.png
true代表显示，为默认值；false代表不显示。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowOtherTalkString"] = true
copy 
ShowPartingWordsInputBox	bool	
设置行会成员被踢出行会时是否会显示“临别赠言”弹窗。

ShowPartingWordsInputBox.png
true代表是，即行会成员被踢出行会时会显示“临别赠言”弹窗，为默认值；

false代表否，即行会成员被踢出行会时不会显示“临别赠言”弹窗。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowPartingWordsInputBox"] = true
copy 
ShowPingIP	bool	
小地图上是否显示IP地址和端口号。

ShowPingIP.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowPingIP"] = true
copy 
ShowPlayerCustomeName	bool	
是否显示玩家角色的称谓。

若要显示玩家角色的称谓，则需要同时满足以下两个条件：

（1）在游戏设置中勾选“显示称谓”的选项；

（2）将此全局变量设置为true。

true代表显示，为默认值；false代表不显示。

2D手游、3D手游适用。

LuaGlobal["ShowPlayerCustomeName"] = true
copy 
ShowPlayerFamilyName	bool	
是否显示玩家角色的行会名。

若要显示玩家角色的行会名，则需要同时满足以下两个条件：

（1）在游戏设置中勾选“显示行会名”的选项；

（2）将此全局变量设置为true。

true代表显示，为默认值；false代表不显示。

2D手游、3D手游适用。

LuaGlobal["ShowPlayerFamilyName"] = true
copy 
ShowPlayerHPText	bool	
是否显示玩家头顶血条数字。

仅在血量不满的情况下才会显示血条数字。

ShowPlayerHpText.png
true代表是；false代表否，为默认值。

2D手游、3D手游适用。

LuaGlobal["ShowPlayerHPText"] = true
copy 
ShowPlayerInfoWhenAvatarHidden	bool	
设置角色模型隐藏时是否显示角色信息（包括血条、名字等信息）。

true代表角色模型隐藏时显示角色信息；

ShowPlayerInfoWhenAvatarHidden.png
false代表角色模型隐藏时不显示角色信息，为默认值。

仅2D手游适用。

LuaGlobal["ShowPlayerInfoWhenAvatarHidden"] = false
copy 
ShowPlayerMasterName	bool	
是否显示玩家角色的师徒名。

true代表显示，为默认值；false代表不显示。

若要显示玩家角色的师徒名，则需要同时满足以下两个条件：

（1）在游戏设置中勾选“显示称谓”的选项；

（2）将此全局变量设置为true。

2D手游、2D端游、3D手游适用。

LuaGlobal["ShowPlayerMasterName"] = true
copy 
ShowPlayerMP	int	
是否在玩家角色头顶显示魔法值蓝条。

红条和蓝条同时显示的规则是：

当剩余百分比HP比MP少时，红条显示在蓝条的上层。

ShowPlayerMP_1

当剩余百分比MP比HP少时，蓝条显示在红条的上层。

ShowPlayerMP_2

1代表是；0代表否，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowPlayerMP"] = 1
copy 
ShowPlayerOtherNamesWhenSelected	bool	
在游戏设置中未勾选显示其他名称的选项的情况下，当选中玩家（端游中为鼠标滑到玩家身上）时，设置是否显示目标玩家的其他名称。

ShowPlayerOtherNamesWhenSelected.png
true代表显示，即在游戏设置中未勾选显示其他名称的选项的情况下，当选中玩家（端游中为鼠标滑到玩家身上）时，仍显示目标玩家的其他名称；

false代表不显示，即在游戏设置中未勾选显示其他名称的选项的情况下，当选中玩家（端游中为鼠标滑到玩家身上）时，不显示目标玩家的其他名称。

备注：其他名称包括：行会名、行会封号、称谓(别名、师徒名、配偶名和自定义名称)。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowPlayerOtherNamesWhenSelected"] = true
copy 
ShowPlayerSpouseName	bool	
是否显示玩家角色的配偶名。

若要显示玩家角色的配偶名，则需要同时满足以下两个条件：

（1）在游戏设置中勾选“显示称谓”的选项；

（2）将此全局变量设置为true。

true代表显示，为默认值；false代表不显示。

2D手游、3D手游适用。

LuaGlobal["ShowPlayerSpouseName"] = true
copy 
ShowRockerFixed	bool	
游戏设置的基本面板中固定摇杆位置选项对应的复选框勾选是否生效。

ShowRockerFixed.png
true代表生效，即此复选框勾选时会固定摇杆位置，此复选框未勾选时不会固定摇杆位置；

false代表不生效，即此复选框勾选时和未勾选时均会固定摇杆位置，为默认值。

如果游戏设置的基本面板中有固定摇杆位置选项对应的复选框时，则需设置此全局变量为true，否则设置此全局变量为false。

2D手游、3D手游适用。

LuaGlobal["ShowRockerFixed"] = true
copy 
ShowRoleMPRefWithZeroHPRef	bool	
当使用服务端接口lualib:ShowRoleHPRefAndMPRef设置角色血量的变化量为0而蓝量的变化量不为0时，角色头顶不会显示蓝量的变化量。

若要在角色头顶显示蓝量的变化量，则需要将此全局变量设置为true。

ShowRoleMPRefWithZeroHPRef.png
true代表是，即角色头顶显示蓝量的变化量；

false代表否，即角色头顶不显示蓝量的变化量，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowRoleMPRefWithZeroHPRef"] = true
copy 
ShowTeamMsg	bool	
设置是否显示组队消息。

true代表显示，为默认值；false代表不显示。

2D手游、3D手游和H5适用。

LuaGlobal["ShowTeamMsg"] = false
copy 
ShowTitleWhenStall	bool	
设置角色摆摊时是否显示称号。

true代表角色摆摊时会显示称号，为默认值；

false代表角色摆摊时隐藏称号。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["ShowTitleWhenStall"] = true
copy 
ShowTwoRocker	bool	
在固定摇杆模式下，是否需要显示双摇杆。

true代表是；false代表否，为默认值。

当此全局变量设置为true时，双摇杆中跑步摇杆和走路摇杆的相对位置设置请参见全局变量TwoRockerPos。

2D手游、3D手游适用。

LuaGlobal["ShowTwoRocker"] = false
copy 
SkillBarCanRecvClickMsgWhenClickBlank	bool	
设置技能栏（SkillBar）空白处是否可以穿透。

若可以穿透，则点击事件会传送到SkillBar下层。例如，空白处下方是场景地图，点击则会使角色移动到点击位置。

true代表穿透，为默认值；false代表不穿透。

2D手游、3D手游适用。

LuaGlobal["SkillBarCanRecvClickMsgWhenClickBlank"] = true
copy 
SkillBarCanRotate	bool	
设置技能栏（SkillBar）是否可以旋转。

true代表可以旋转，为默认值；false代表不可以旋转。

2D手游、3D手游适用。

LuaGlobal["SkillBarCanRotate"] = true
copy 
SkillBarItemBackImageFitUISize	bool	
是否允许SkillBar栏背景图片适应UI大小。

默认值为false。

2D手游、3D手游适用。

LuaGlobal["SkillBarItemBackImageFitUISize"] = false
copy 
SkillBarShowAllWidgets	bool	
设置技能栏（SkillBar）是否可以显示所有图标，默认显示4个。

true代表显示；false代表不显示，为默认值。

2D手游、3D手游适用。

LuaGlobal["SkillBarShowAllWidgets"] = false
copy 
SkillBarTranslucentWhenSkillDeleted	bool	
当快捷栏中的技能变为不可用（如被删除）时，在快捷栏中是否显示为半透明的状态。

true代表显示为半透明状态；

SkillBarTranslucentWhenSkillDeleted.png
false代表默认状态，为默认值。

手游默认状态：删除技能之后，快捷栏里的技能图标不会消失，需要手动将技能图标从快捷栏中移除。

端游默认状态：删除技能之后，如果刷新快捷栏，快捷栏中对应的技能就会消失。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["SkillBarTranslucentWhenSkillDeleted"] = true
copy 
SkillBarType	int	
技能栏类型。

0代表弧形技能栏，为默认值；

SkillBarType_2.png
1代表9宫格类型技能栏。

SkillBarType.png
2D手游、3D手游适用。

LuaGlobal["SkillBarType"] = 1
copy 
SkillLevel	int	
设置技能面板中的技能等级的显示规则。

0代表技能面板中的技能等级与技能模板表中“技能等级”选项的配置值相同；

1代表技能面板中的技能等级为技能模板表中“技能等级”选项的配置值加1；

-1代表技能面板中的技能等级为技能模板表中“技能等级”选项的配置值减1，为默认值。

“技能等级”选项的访问路径为：游戏工具平台→游戏配置→技能→技能模板表→基础信息二区域。

SkillLevel.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["SkillLevel"] = -1
copy 
SkillMoveAttack	bool	
当角色与目标的距离大于技能施放距离时，设置施放技能时是否会主动靠近目标。

true代表是，即当角色与目标的距离大于技能施放距离时施放技能时会主动靠近目标；

SkillMoveAttack_2.gif
false代表否，即当角色与目标的距离大于技能施放距离时施放技能时不会主动靠近目标，为默认值。

SkillMoveAttack.gif
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["SkillMoveAttack"] = true
copy 
SKillToggleOverlappingSelection	bool	
当某目标被其他目标遮挡时，可能会出现后方的目标无法被选中的情况，可使用此全局变量设置当选中目标且鼠标悬浮在2个目标上时，施放技能是否使用改善后的逻辑。

true代表施放技能时会使用改善后的逻辑，即使用技能时会切换到另一个目标，再次施放此技能或者施放其他会锁定目标的技能则会切换到另一个目标；

SKillToggleOverlappingSelection.gif
false代表施放技能时使用原逻辑，即只能选中较近的目标来施放技能，为默认值。

备注：技能模板表中“是否锁定目标”选项设置为“否”的技能，无法切换选中的目标。

对应选项访问路径为：游戏管理平台→游戏配置→技能→技能模板表→基础配置→锁定配置区域。

SKillToggleOverlappingSelection
仅3D端游适用。

LuaGlobal["SKillToggleOverlappingSelection"] = false
copy 
SmartMove	bool	
设置是否开启跑步时智能避开前方阻挡（包括怪物、其他角色等）的功能。

true代表开启，即开启跑步时智能避开前方阻挡的功能；

false代表关闭，即关闭跑步时智能避开前方阻挡的功能，为默认值。

备注：功能在2D对应全局变量AutoAvoidObstacle。

仅3D端游适用。

LuaGlobal["SmartMove"] = false
copy 
SpeakerWindowMessageShowDuration	unsigned int	
用于修改小喇叭消息显示的时长，单位为毫秒（ms）。
端游默认显示时长为15000毫秒，手游默认时长为10000毫秒。
备注：该设置仅在游戏启动加载时生效一次，建议在LogicFunction.lua中设置。

手游中，也可使用接口GUI:WndSetUserData在SpeakerWindow.lua中进行设置，用法为GUI:WndSetUserData(_Parent, interval, 3)。其中将参数interval修改为需要的时长即可，单位为毫秒（ms）。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["SpeakerWindowMessageShowDuration"] = 10000
copy 
SpellActionSpeed	float	
设置临时对应施法动作速度倍率。

该变量是纯倍数乘算的，若设置1以下相当于减速。

3D手游、3D端游适用。

LuaGlobal["SpellActionSpeed"] = 0
copy 
SpellOnTargetGrid	bool	
当技能设置为根据鼠标落点打逻辑格时，若鼠标落点在角色身上，设置技能目标点是否为选中角色的脚下。

true代表开启；false代表不开启，为默认值。

2D手游、2D端游适用。

LuaGlobal["SpellOnTargetGrid"] = true
copy 
StallBackImagePadding	int	
设置角色摆摊时的摊位名与背景图片的间距，单位为像素（px）。

此全局变量仅在全局变量NormalStallTitleImageID或者CareStallTitleImageID设置摊位名的背景图片使用九宫格模式时生效。

设置间距前的效果图如下。

StallBackImagePadding.png
设置间距后的效果图如下。

StallBackImagePadding_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["StallBackImagePadding"] = 0
copy 
StallImage	unsigned int	
设置摆摊时显示的图片。

StallImage.png
2D手游、2D端游适用。

LuaGlobal["StallImage"] = 1902000060
copy 
StallImageVec	string	
自定义摆摊的八个方向的图片资源ID，依次为从上边开始的顺时针的八个方向。

未配置的方向则使用默认的摆摊图片。

此全局变量仅在全局变量StallUsePlayerCurDir设置为true时生效。

2D手游、2D端游适用。

LuaGlobal["StallImageVec"] = "1814700000, 1814700100, 1814700200, 1814700300, 1814700400, 1814700500, 1814700600, 1814700700" --依次为上边、右上角、右边、右下角、下边、左下角、左边、左上角
copy 
StallNameFont	string	
自定义摆摊时显示的摊位名的字体。

StallNameFont.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["StallNameFont"] = "system"
copy 
StallNameOffset	int	
摆摊名在垂直方向上的偏移值，默认值为0。

StallNameOffset.png
2D手游、2D端游和3D手游适用。

LuaGlobal["StallNameOffset"] = 10
copy 
StallOpenType	int	
设置打开其他玩家摆摊界面的方式。

0代表点击摆摊人物打开摆摊界面，为默认值；

1代表点击摆摊人物头顶的摆摊称号打开摆摊界面；

2代表点击摆摊人物或者摆摊人物头顶的摆摊称号均可打开摆摊页面。

2D手游、3D手游适用。

LuaGlobal["StallOpenType"]  = 0 
copy 
StallTitleImageXOffset	int	
设置角色摆摊时头顶显示的图片在水平方向上的偏移值，默认值为0。

正数代表向右偏移；负数代表向左偏移。

NormalStallTitleImageID.png

2D手游、2D端游适用。

LuaGlobal["StallTitleImageXOffset"] = 0
copy 
StallTitleImageYOffset	int	
设置角色摆摊时头顶显示的图片在垂直方向上的偏移值，默认值为0。

正数代表向下偏移；负数代表向上偏移。

NormalStallTitleImageID.png

2D手游、2D端游适用。

LuaGlobal["StallTitleImageYOffset"] = 0
copy 
StallUsePlayerCurDir	bool	
是否开启摆摊方向和玩家角色朝向一致的功能。

true代表开启；false代表摆摊方向和原有表现一致，即固定为左下方向，为默认值。

2D手游、2D端游适用。

LuaGlobal["StallUsePlayerCurDir"] = true
copy 
StartBackImageAutoFit	bool	
是否开启游戏加载界面背景图的自适应功能。

true代表开启，即游戏加载界面背景图随客户端分辨率进行缩放（锁定纵横比）；

false代表关闭，即不对游戏加载界面背景图进行缩放，为默认方式。

2D端游、3D端游适用。

LuaGlobal["StartBackImageAutoFit"] = true
copy 
StealthAlpha	float	
自定义术士施放隐身技能后，角色模型的透明程度。

StealthAlpha.png
范围为0-1，0表示全透明，1表示不透明，默认值为0.6。

数值越小，角色模型透明程度越高。

3D手游、3D端游适用。

LuaGlobal["StealthAlpha"] = 0.6
copy 
SupportWindowMove	bool	
设置是否支持窗口拖动。

true代表支持窗口拖动，使用接口GUI:WndSetMoveWithLBM设置后即可拖动窗口；

false代表不支持窗口拖动，为默认值。

2D手游、3D手游适用。

LuaGlobal["SupportWindowMove"] = false
copy 
SwitchAttacIsUseAtkMode	bool	
在2D手游中使用接口CL:SwitchAttacObj后会出现无法自动识别自身攻击模式的问题。

此全局变量用于设置是否使用修复后的逻辑。

true代表使用修复后的逻辑，即使用接口CL:SwitchAttacObj后会自动识别自身攻击模式；

false代表使用修复前的逻辑，即使用接口CL:SwitchAttacObj后不会自动识别自身攻击模式，为默认值。

仅2D手游适用。

LuaGlobal["SwitchAttacIsUseAtkMode"] = false
copy 
SwitchAttacObjWithHero	bool	
设置在使用快捷方式选择目标时是否可以选中他人英雄。

true代表是，即在使用快捷方式选择目标时可以选中他人英雄，为默认值；

false代表否，即在使用快捷方式选择目标时不可以选中他人英雄。

2D手游、2D端游适用。

LuaGlobal["SwitchAttacObjWithHero"] = true
copy 
SwitchObjectAutoAttack	bool	
设置切换目标后是否直接对新目标进行攻击。

true代表是，即切换目标后直接对新目标进行攻击，为默认值；

false代表否，即保持原状态，切换目标后需要点击一下普攻键才会攻击新目标。

仅3D手游适用。

LuaGlobal["SwitchObjectAutoAttack"] = true
copy 
SysAnnWindowBackImageList	string	
设置游戏界面顶部消息的九宫格背景图片资源ID。

SysAnnWindowBackImageList.png
图片资源ID以字符串形式，中间用英文逗号（“,”）隔开。

图片资源ID的顺序依次为左上角、上边、右上角、左边、中间、右边、左下角、下边、右下角。

2D手游、3D手游适用。

LuaGlobal["SysAnnWindowBackImageList"]="4000500300, 4000500301, 4000500302, 4000500303, 4000500304, 4000500305, 4000500306, 4000500307, 4000500308"
copy 
SysAnnYOffset	int	
调整客户端顶部消息在垂直方向上的偏移值。

0代表客户端顶部消息使用默认位置（如下图所示），为默认值。

正数代表向下偏移，负数代表向上偏移。

SysAnnYOffset.png
2D手游、2D端游、3D手和3D端游适用。

LuaGlobal["SysAnnYOffset"] = 0
copy 
TalkBubbleUseEnter	bool	
怪物聊天气泡是否支持使用换行符“\n”转行的功能。

TalkBubbleUseEnter
true代表是，即支持使用换行符“\n”转行的功能；

false代表否，即不支持使用换行符“\n”转行的功能，为默认值。

2D手游、2D端游适用。

LuaGlobal["TalkBubbleUseEnter"] = true
copy 
TaoCustomDefenseMagicBuffID	string	
配置术士技能魔法防御BuffID。

程序可处理施放Buff的技能等级（至多为四级），如需配置四级以上技能等级的Buff，需将对应的Buff ID指定于此全局变量中。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TaoCustomDefenseMagicBuffID"] = "190, 180" --如第五，第六级的Buff ID为180和190
copy 
TaoCustomDefensePhysicBuffID	string	
配置术士技能物理防御BuffID。

程序可处理施放Buff的技能等级（至多为四级），如需配置四级以上技能等级的Buff，需将对应的Buff ID指定于此全局变量中。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TaoCustomDefensePhysicBuffID"] = "190, 180" --如第五，第六级的Buff ID为180和190
copy 
TargetSelectDistance	int	
目标选择范围半径，用于手游目标切换。

单位为逻辑格，默认值为0则不显示光圈。

仅3D手游适用。

LuaGlobal["TargetSelectDistance"] = 0
copy 
TargetSelectMagicID	int	
目标选择范围光圈资源ID，用于手游目标切换。

默认值为202。

仅3D手游适用。

LuaGlobal["TargetSelectMagicID"] = 202
copy 
TargetSelectType	int	
目标选择方式。

0代表滑动，为默认值，即攻击按钮右上滑动寻找玩家，左下滑动寻找怪物；

TargetSelectType.png
1代表点击，即手动选择场景中的目标。

TargetSelectType_2.png
2D手游、3D手游适用。

2代表滑动，即攻击按钮右上滑动寻找玩家，左下滑动寻找怪物，左上滑动寻找英雄。

仅2D手游适用。	
LuaGlobal["TargetSelectType"] = 0
copy 
TaskOperationDlg_AreaEnable	bool	
任务操作界面是否只在固定范围（此范围由脚本控制）显示。

true代表是，为默认值；false代表否。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TaskOperationDlg_AreaEnable"] = true
copy 
TaskStandWaitTick	int	
在未收到玩家操作的前提下，设置自动接收任务到自动确认执行下一步操作的时间间隔，单位为毫秒。

2D手游、3D手游适用。

LuaGlobal["TaskStandWaitTick"] = 5000
copy 
TaskWaitTick	int	
设置自动接收任务到开始执行任务的时间间隔，单位为毫秒。

2D手游、3D手游适用。

LuaGlobal["TaskWaitTick"] = 500
copy 
TaskWindow_AutoQueryTask	int	
在没有接收主线任务时，是否自动推荐一个主线任务。

1代表是；0代表否。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TaskWindow_AutoQueryTask"] = 1
copy 
TaskWindow_AutoQueryTaskElapse	int	
自动推荐任务查询事件的时间间隔，单位为秒，默认值为15。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TaskWindow_AutoQueryTaskElapse"] = 15 --默认15s执行一次
copy 
TaskWindow_TextPrefix	string	
自定义任务面板的追踪文本的前缀内容，默认值为两个空格（" "）。

TaskWindow_TraceTextSpaceStart.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TaskWindow_TextPrefix"] = "  "
copy 
TaskWindowUseNewLine	bool	
设置任务面板的任务追踪文本是否可以自动换行。

true代表是，即任务面板的任务追踪文本可以自动换行，如下图所示；

TaskWindowUseNewLine_2.png
false代表否，即任务面板的任务追踪文本不可自动换行，为默认值，如下图所示。

TaskWindowUseNewLine.png
备注：当此全局变量设置为true时，需要适当增加指定窗体控件的高度，否则可能导致原有文本内容显示不全。

2D手游、3D手游适用。

LuaGlobal["TaskWindowUseNewLine"] = false
copy 
TeamMemberWindowCols	int	
组队队员面板的列数，默认值为2。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TeamMemberWindowCols"] = 2
copy 
TeamMemberWindowRows	int	
组队队员面板的行数，默认值为5。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TeamMemberWindowRows"] = 5
copy 
TEXT_TITLE_OFFSETY	int	
称号在垂直方向上的偏移量，默认值为0。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TEXT_TITLE_OFFSETY"] = 3
copy 
TipCmpSameHeight	bool	
当有多个Tip高度时，是否使用最高的Tip高度。

true代表是，即使用最高的Tip高度；false代表否，为默认值。

2D端游、3D端游适用。

LuaGlobal["TipCmpSameHeight"] = true
copy 
TipMarginX	int	
两个Tips之间的水平间距，单位为像素（px）。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TipMarginX"] = 60
copy 
TipPageMarginX	int	
设置分页Tips之间的水平间距，默认值为1，单位为像素（px）。

将Tips文本的类型设置为page即可实现分页Tips的功能。

仅2D端游适用。

LuaGlobal["TipPageMarginX"] = 1
copy 
TipsBackImgID_Focus	string	
当前查看物品的Tips框的边框和背景图片资源ID。

TipsBackImgID_Focus.png
仅2D端游适用。

LuaGlobal["TipsBackImgID_Focus"] = "1900180004,1900180006,1900180005,1900180007,1900180008,1900180000,1900180001,1900180002,1900180003"--依次是左上角，右上角，左下角，右下角，中间背景，上边，下边，左边，右边
copy 
TipsBackImgID_Normal	string	
已装备的物品的Tips框的边框和背景图片资源ID。

TipsBackImgID_Normal.png
仅2D端游适用。

LuaGlobal["TipsBackImgID_Normal"] = "0,0,0,0,0,0,0,0,0"--依次是左上角，右上角，左下角，右下角，中间背景，上边，下边，左边，右边，默认为空
copy 
TipsDrawGrow	bool	
Tips边框是否使用描边。

true代表使用，为默认值；false代表不使用。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TipsDrawGrow"] = true
copy 
TipsLineVerDisp	int	
Tips的行间距。

此全局变量只对脚本里面使用TipLayoutFunction函数显示的Tips生效，并且只有Tips中使用换行符(\n)才有效果。

2D手游、2D端游适用。

LuaGlobal["TipsLineVerDisp"] = 2
copy 
TipsPageHorDisp	int	
Tips左右边界距离。

此全局变量只对脚本里面使用TipLayoutFunction函数显示的Tips生效。

2D手游、2D端游适用。

LuaGlobal["TipsPageHorDisp"] = 8
copy 
TipsPageVerDisp	int	
Tips上边界距离。

此全局变量只对脚本里面使用TipLayoutFunction函数显示的Tips生效。

2D手游、2D端游适用。

LuaGlobal["TipsPageVerDisp"] = 8
copy 
TipsUseScaleAndColor	bool	
Tips中图片或者动画是否同时使用缩放和变色效果。

当不设置此全局变量时，若Tips中的图片或者动画同时进行缩放和变色的设置，颜色变化可能会失效。

true代表开启支持图片或者动画同时缩放和变色；

false代表不支持图片或者动画同时缩放和变色，为默认值。

2D手游、2D端游适用。

LuaGlobal["TipsUseScaleAndColor"] = false
copy 
TitleFontType	string	
玩家称号的字体。

TitleFontType.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["TitleFontType"] = "SIMLI18"
copy 
ToggleOverlappingSelection	bool	
当某目标被其他目标遮挡时，可能会出现后方的目标无法被选中的情况，可使用此全局变量设置当选中有重叠的目标时是否使用改善后的逻辑。

true代表选中目标时会使用改善后的逻辑，具体选中逻辑如下所示：

手游：点击重叠的多个目标即可切换选中的目标；

端游：使用Ctrl + 鼠标左键点击重叠的多个目标即可切换选中的目标。

ToggleOverlappingSelection.gif
false代表选中目标时使用原逻辑，即只能选中较近的目标，为默认值。

备注：

在端游中，直接点击鼠标左键，可以切换到重叠的怪物并跑过去进行攻击；

在端游中，若开启了“免shift”功能，则可以切换到重叠的人物并跑过去进行攻击。

3D手游、3D端游适用。

LuaGlobal["ToggleOverlappingSelection"] = false
copy 
TouchTaskWndAutoAttack	bool	
设置点击“任务导航”（如下图所示）中已接受的任务自动寻路到达目的地后，是否会进入自动挂机状态。

TouchTaskWndAutoAttack.png
true代表是，即点击“任务导航”中已接受的任务自动寻路到达目的地后，会进入自动挂机状态，为默认值；

false代表否，即点击“任务导航”中已接受的任务自动寻路到达目的地后，不会进入自动挂机状态。

2D手游、3D手游适用。

LuaGlobal["TouchTaskWndAutoAttack"] = true
copy 
TwoRockerPos	int	
设置双摇杆的位置。

此全局变量仅在全局变量ShowTwoRocker设置为true且为固定摇杆模式的情况下生效。

1代表跑步摇杆在下面，走路摇杆在上面，为默认值；

TwoRockerPos_2.png
2代表走路摇杆在下面，跑步摇杆在上面。

TwoRockerPos.png
2D手游、3D手游适用。

LuaGlobal["TwoRockerPos"] = 1
copy 
UniformPlayerSelf	bool	
设置人物简装时是否简装玩家自己。

true代表是，即人物简装时会简装玩家自己；

false代表否，即人物简装时不会简装玩家自己，为默认值。

2D手游、2D端游适用。

LuaGlobal["UniformPlayerSelf"] = false
copy 
UseAllProtectItem	bool	
设置在触发保护机制时，是否可以使用保护设置中的全部药品。

此全局变量同样也适用于英雄保护设置。

true代表是，即触发保护机制时可以使用保护设置中的全部药品。

在触发保护机制时，会优先使用保护设置面板中选中的药品，当指定药品用完（或者指定药品不存在）时，会按照保护设置面板中的下拉列表顺序去使用药品。

备注：若下拉列表中的物品都不存在，则会寻找对应药品的打捆物品，并解捆指定药品。

false代表否，即触发保护机制时只能使用当前保护设置面板中选中的药品，为默认值。

2D手游、2D端游适用。

LuaGlobal["UseAllProtectItem"] = false
copy 
UseAutoSearchMonsterRect	bool	
是否使用全局变量AutoSearchMonsterRectWidth和AutoSearchMonsterRectHeight设置的寻怪范围。

true代表使用；false代表不使用，为默认值。

若将此全局变量设置为true，则在该范围内没找到怪物的情况下角色会停止移动。

2D手游、3D手游适用。

LuaGlobal["UseAutoSearchMonsterRect"] = false
copy 
UseCampColor	bool	
是否启用阵营颜色来区分我方阵营和敌方阵营。

true代表使用；false代表不使用，为默认值。

当此全局变量设置为true时，分为以下两种情况：

若其他玩家角色的阵营与玩家角色自身的阵营一致，则其他玩家角色的名字（包括行会名、别名）会显示为白色；

若其他玩家角色的阵营与玩家角色自身的阵营不一致，则其他玩家角色的名字（包括行会名、别名）会显示为橙色（即RGBA(249,108,15,255)）。

UseCampColor.png
2D手游、3D手游适用。

LuaGlobal["UseCampColor"] = false
copy 
UseClientCommand	bool	
是否开启客户端命令功能。

true代表开启；false代表关闭，为默认值。

当此全局变量设置为true时，在聊天框输入“@@content”指令会调用CommonFun.lua文件中的ClientCommandHandler(content)函数（content表示任意字符串）。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseClientCommand"] = false
copy 
UseCQSkillEffect	bool	
设置爆炎剑诀和裂地斩（在技能模板表中，技能链ID须分别设置为1065和1060）是否开启攻击动作中不暂停的效果。

true代表开启；false代表关闭，为默认值。

2D手游、2D端游适用。

LuaGlobal["UseCQSkillEffect"] = true
copy 
UseDoorEffect	bool	
手游帐号登录时，存在不会触发通知播放游戏登录时开门的特效事件（即LUA_EVENT_OPENDOOR_EFFECT）的问题。

若要在帐号登录时触发通知播放游戏登录时开门的特效事件，则需将此全局变量设置为true。

true代表是；false代表否，为默认值。

仅2D手游适用。

LuaGlobal["UseDoorEffect"] = false
copy 
UseExtraMagic	bool	
是否使用代理自定义的特效。

true代表使用；false代表不使用，为默认值。

2D手游、3D手游适用。

LuaGlobal["UseExtraMagic"] = false
copy 
UseFamilyChatWnd	bool	
是否使用行会聊天框。

true代表使用，为默认值；false代表不使用。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseFamilyChatWnd"] = true
copy 
UseFamilyMain	bool	
是否使用行会主面板。

true代表使用，为默认值；false代表不使用。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseFamilyMain"] = true
copy 
UseFamilyMemberWnd	bool	
是否使用行会成员面板。

true代表使用，为默认值；false代表不使用。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseFamilyMemberWnd"] = true
copy 
UseFamilyPageDefalutPos	bool	
3D手游：设置是否由程序控制FamilyMain和FamilyMember控件的偏移。

3D端游：设置是否由程序控制FamilyChat、FamilyMember、FamilyRelation和FamilyMain控件的偏移。

true代表由程序控制上述控件的偏移，为默认值；

false代表由脚本控制上述控件的偏移。

3D手游、3D端游适用。

LuaGlobal["UseFamilyPageDefalutPos"] = true
copy 
UseFamilyRelation	bool	
是否使用行会结盟面板。

true代表使用，为默认值；false代表不使用。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseFamilyRelation"] = true
copy 
UseFixItemImageRect	bool	
设置物品框的品质框是否居中显示。

true代表是；false代表否，为默认值。

建议设置为true。

仅2D手游适用。

LuaGlobal["UseFixItemImageRect"] = true
copy 
UseGamePad	bool	
设置是否开启摇杆的新配置模式。

true代表开启，即使用摇杆的新配置模式；

false代表不开启，即使用摇杆的原配置模式，为默认值。

备注：当此全局变量设置为true时，会加载GamePad.lua脚本文件，原有RockerWnd.lua和RockerWnd2.lua脚本文件不再生效，相关接口也不再生效。

具体请参见FAQ说明：如何开启手游摇杆的新配置模式。

仅2D手游适用。

LuaGlobal["UseGamePad"] = false
copy 
UseHeroEquipNewStyle	bool	
在脚本配置的基础上，设置是否可由程序自动调整英雄装备面板的内观模型附加偏移和缩放。

true代表是，即程序会根据BigIconData.xml配置文件来自动调整英雄装备面板的内观模型附加偏移和缩放；

false代表否，仅由脚本自行调整，为默认值。

仅2D端游适用。

LuaGlobal["UseHeroEquipNewStyle"] = false
copy 
UseHighFrameRateUpdateGUIData	int	
原定时器精度较低，现增加此全局变量用于设置是否使用改善后的定时器精度。

1代表是，即使用改善后的定时器精度（最小时间间隔在16毫秒左右）；

0代表否，即使用原定时器精度（最小时间间隔在34毫秒左右），为默认值。

2D手游、3D手游和3D端游适用。

LuaGlobal["UseHighFrameRateUpdateGUIData"] = 0
copy 
UseHightPerformance	bool	
自动挂机时，是否降低帧率运行。

true代表开启，即挂机模式下保持原有帧率运行；

false代表关闭，为默认值，即挂机模式下降低帧率运行。

2D手游、3D手游适用。

LuaGlobal["UseHightPerformance"] = true
copy 
UseItemNoDelay	bool	
物品的冷却时间是否忽略网络延迟的时间。

true代表是；false代表否，为默认值。

当此全局变量设置为true时，物品的冷却时间会忽略网络延迟的时间；

当此全局变量设置为false时，物品的冷却时间会默认加上网络延迟的时间。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseItemNoDelay"] = false
copy 
UseJumpPointName	bool	
设置大地图中是否直接显示跳转点的名字。

true代表大地图中会直接显示跳转点的名字，为默认值；

UseJumpPointName.png
false代表大地图中不会直接显示跳转点的名字，但鼠标悬浮在图片显示范围内时会显示对应跳转点的名字。

UseJumpPointName_2.png
如需自定义跳转点显示的图片资源ID，可使用全局变量JumpPointImageId进行设置。

2D端游、3D端游适用。

LuaGlobal["UseJumpPointName"] = true
copy 
UseMagicWeaponAvatar	bool	
是否显示法宝。

UseMagicWeaponAvatar.png
true代表显示；false代表不显示，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseMagicWeaponAvatar"] = true
copy 
UseMonsterEntityLevel	bool	
设置是否显示怪物实体等级。

true代表是，即显示怪物的实体等级；

false代表否，即显示怪物的模板等级，为默认值。

显示怪物的实体等级需同时满足以下两个要求，否则会显示怪物的模板等级：

(1)此全局变量设置为true；

(2)服务端使用接口lualib:SetLevel设置了怪物的实体等级并且设置的怪物实体等级大于0。

备注：

(1)实体等级为怪物属性中的等级，可通过服务端接口lualib:SetLevel进行设置；

(2)模板等级为怪物模板表中“等级”字段的值。

对应选项访问路径为：游戏工具平台→游戏配置→怪物→怪物模板表→基础信息→基础信息区域。

UseMonsterEntityLevel.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseMonsterEntityLevel"] = false
copy 
UseMultiDrugWhenNoDrug	bool	
当术士处于挂机状态且没有蛊毒咒时，是否使用群体蛊毒血咒。

true代表是；false代表否，为默认值。

2D手游、2D端游适用。

LuaGlobal["UseMultiDrugWhenNoDrug"] = false
copy 
UseNewAvatart	bool	
是否使用新人物模型。

true代表使用；false代表不使用，为默认值。

仅2D手游适用。

LuaGlobal["UseNewAvatart"] = true
copy 
UseNewPlayerTextPosOffset	bool	
使用全局变量PlayerTextPosOffset设置玩家名称在垂直方向上的偏移时，可能会出现偏移值有误的问题。

此全局变量用于设置是否使用修复后的玩家名称偏移逻辑。

true代表使用修复后的玩家名称偏移逻辑；

false代表使用原玩家名称偏移逻辑，为默认值。

仅2D手游适用。

LuaGlobal["UseNewPlayerTextPosOffset"] = false
copy 
UseNewRockerPosCheck	bool	
双摇杆模式下，可能会出现无法点击“聊天”和“功能”进行切换的问题。

UseNewRockerPosCheck.png
若要避免上述问题，可使用此全局变量启用改善后的响应范围检查逻辑。

true代表启用改善后的响应范围检查逻辑；

false代表启用改善前的响应范围检查逻辑，为默认值。

在双摇杆模式下，当此全局变量设置为false时，接口CL:UpdateRockerWnd2Rect和CL:UpdateRockerWndRect均不生效。

仅2D手游适用。

LuaGlobal["UseNewRockerPosCheck"] = false
copy 
UseNewWorldMap	bool	
是否用新版的世界地图。

true代表使用；

UseNewWorldMap.png
false代表不使用，为默认值。

UseNewWorldMap_2.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseNewWorldMap"] = false
copy 
UsePCProtectStrategy	bool	
设置手游回城保护策略是否与端游一致。

true代表是；false代表否，为默认值。

当此全局变量设置为true时，会先判断是否满足保护配置中第二项的传送物品（以下图为例，即回城石）的使用条件，若满足其使用条件，则使用该物品。继续判断是否满足保护配置中第一项的传送物品（以下图为例，即随机石）的使用条件，若满足其使用条件，则使用该物品。具体使用顺序与保护设置中的配置有关，后使用的物品的传送效果会覆盖先使用的物品的传送效果。

当此全局变量设置为false时，会先判断是否满足保护配置中第二项的传送物品（以下图为例，即回城石）的使用条件，若满足其使用条件，则使用该物品，并且不会继续判断是否满足保护配置中第一项的传送物品的使用条件（以下图为例，即随机石）。若未满足保护配置中第二项的传送物品的使用条件，则继续判断是否满足保护配置中第一项的传送物品的使用条件。

UsePCProtectStrategy.png
仅2D手游适用。

LuaGlobal["UsePCProtectStrategy"] = true
copy 
UsePickItemInterval	bool	
是否开启捡物品的时间间隔。

true代表开启；false代表不开启，为默认值。

当此全局变量设置为true时，捡物品的时间间隔使用全局变量PickItemInterval设置的时间间隔；

当此全局变量设置为false时，捡物品的时间间隔默认为1000毫秒。

2D手游、3D手游适用。

LuaGlobal["UsePickItemInterval"] = false
copy 
UsePlatformLogin	bool	
是否使用微信等第三方平台登录方式。

true代表使用；false代表不使用，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UsePlatformLogin"] = false
copy 
UsePopupMenu	bool	
设置是否允许脚本修改右键菜单。

true代表是，即允许脚本修改右键菜单；

false代表否，即不允许脚本修改右键菜单，为默认值。

具体请参见FAQ：如何修改端游右键菜单。

2D端游、3D端游适用。

LuaGlobal["UsePopupMenu"] = false
copy 
UsePreStoredSkill	bool	
设置除技能“烈焰斩”外的其他预存技能配置是否生效。

true代表是，即除技能“烈焰斩”外的其他预存技能配置会生效；

false代表否，即除技能“烈焰斩”外的其他预存技能配置不会生效，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UsePreStoredSkill"] = false
copy 
UseRushBeforeAttack	bool	
设置开启自动冲击时是否会先施放“蛮力冲锋”技能再进行普攻。

true代表是，即开启自动冲击时会先施放“蛮力冲锋”技能再进行普攻；

false代表否，即开启自动冲击时会先进行普攻再施放“蛮力冲锋”技能，为默认值。

3D手游、3D端游适用。

LuaGlobal["UseRushBeforeAttack"] = false
copy 
UseSettingColor	bool	
设置客户端顶部广播消息文字和客户端弹幕消息文字的背景颜色和前景颜色，是否使用服务端接口（参见SysMsg_SendTopColor、SysMsg_SendTopColorByClientType、SysMsg_SendScrollMsg和SysMsg_SendAllPlayerScrollMsg）中指定的颜色值。

true代表是，即使用接口中设置的颜色；

false代表否，即使用透明的背景颜色以及程序中默认的前景颜色，为默认值。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseSettingColor"] = false
copy 
UseSkillReplace	bool	
设置是否开启施放未学习的技能时会随机寻找同一技能链下的已学技能来施放的功能。

true代表是，即开启施放未学习的技能时会随机寻找同一技能链下的已学技能来施放的功能，为手游默认值；

false代表否，即施放未学习的技能时可以直接施放该技能，为端游默认值。

备注：配合接口CL:ForbidUseNormalAttack使用，允许替换的技能，如果不存在，可以使用同一技能链里的其他技能。

2D手游、2D端游适用。

LuaGlobal["UseSkillReplace"] = true
copy 
UseTaskAutoAttackFlag	bool	
是否使用任务自动寻路完成后的自动挂机标记(task中的ATK标记)。

true代表使用；false代表不使用，为默认值。

当此全局变量设置为true时，须实现自动挂机回调LogicFunction.lua脚本文件中的OnTaskAutoAttack()函数。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["UseTaskAutoAttackFlag"] = false
copy 
UseUserQualityEffect	bool	
是否使用脚本定义的精炼特效。

true代表使用脚本定义的精炼特效；

false代表使用程序定义的精炼特效，为默认值。

当此全局变量设置为true时，会调用脚本文件LogicFunction.lua中的GetItemCtrlEffectImageID函数；

当此全局变量设置为false时，会使用程序定义的精炼特效。

程序定义的精炼特效可通过全局变量RefineImage进行修改。

仅2D手游适用。

LuaGlobal["UseUserQualityEffect"] = true
copy 
VIPFilterLevelLower	bool	
是否显示过滤等级及以下等级的VIP功能。

true代表是，即显示过滤等级及以下等级的VIP功能；

false代表否，即显示对应过滤等级的VIP功能，为默认值。

例如：选中的过滤等级为5，若此全局变量设置为true，则显示VIP等级为1-5级的VIP功能；

VIPFilterLevelLower_2.png
若此全局变量设置为false，则显示VIP等级为5级的VIP功能。

VIPFilterLevelLower.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["VIPFilterLevelLower"] = false
copy 
VipLevelSel_NormalColor	unsigned long	
选择VIP等级界面上被取消选中的选项文字的颜色（即该选项需要先被选中后再被取消选中才能显示此全局变量配置的颜色）。

VipLevelSel_NormalColor.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["VipLevelSel_NormalColor"] = 4278221133
copy 
VipLevelSel_SelectColor	unsigned long	
选择VIP等级界面上被选中的选项文字的颜色。

VipLevelSel_SelectColor.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["VipLevelSel_SelectColor"] = 4278221311
copy 
VIPPanelDescription	string	
VIP界面的描述信息。

VIPPanelDescription.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["VIPPanelDescription"] = "您好，这个是VIP功能！专区购买VIP等级可以享受需求VIP等级的所有功能，也可以单独购买单个功能！"
copy 
VisitStall_SelectEffectImg	string	
摆摊界面物品被选中时的动画效果的图片资源起始ID。

VisitStall_SelectEffectImg.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["VisitStall_SelectEffectImg"] = "1076300000"
copy 
WingsYOffsetCorrectionVal	int	
在基本设置中调整他人翅膀显示比例时，设置翅膀在垂直方向上的偏移值，可用于修正翅膀在垂直方向上的显示位置。

此全局变量的默认值为0。

正数代表向上偏移；负数代表向下偏移。

备注：

此全局变量的配置值应为翅膀在垂直方向上的中心点到人物模型脚底的距离；

此全局变量的配置值在每个区服可能都不尽相同，且对该区服每对翅膀和人物模型都会生效，故须仔细决定该值（程序不作额外计算）。

相关配置说明请参见FAQ：如何修改他人翅膀显示比例。

2D手游、2D端游适用。

LuaGlobal["WingsYOffsetCorrectionVal"] = 0
copy 
WomenBodyID	int	
女性人物裸模ID（对应图片资源ID的前5位）。

若图片资源ID的第1位为0，则默认省略。

此全局变量的默认值为8150。

WomanBodyID.png
2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["WomenBodyID"] = 25500
copy 
WomenShadowID	int	
女性人物裸模的影子ID（对应图片资源ID的前5位）。

若图片资源ID的第1位为0，则默认省略。

此全局变量的默认值为8050。

WomanShadowID.png
2D手游、2D端游适用。

LuaGlobal["WomenShadowID"] = 25900
copy 
WorldChatBreakTime	int	
世界频道聊天消息间隔时间，单位为秒，默认值为10。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["WorldChatBreakTime"] = 10
copy 
WrapMonsterHp	bool	
怪物血量过高时是否使用“万”、“亿”的格式表示。

true代表开启；false代表关闭，为默认值。

在该功能开启时，怪物生命值在以下区间内的表现方式：
0≤HP<10000：显示具体的HP数值。

10000≤HP<100000000：显示以“万”为单位的数字，最多保留1位小数，小数点后1位为0时不显示小数。

例如，怪物当前血量153400，角色血量上限200000，显示为“15.3万/20万”。

100000000≤HP：显示以“亿”为单位的数字，最多保留2位小数，小数点后2位都为0时不显示小数，第2位为0时，则保留1位小数显示。

例如，怪物当前血量801000000，血量上限7550000000，显示为“8.01亿/75.5亿”。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["WrapMonsterHp"] = false
copy 
WrapPlayerHp	bool	
角色血量过高时是否使用“万”、“亿”的格式表示。

true代表开启；false代表关闭，为默认值。

在该功能开启时，角色生命值在以下区间内的表现方式：
0≤HP<10000：显示具体的HP数值。

10000≤HP<100000000：显示以“万”为单位的数字，最多保留1位小数，小数点后1位为0时不显示小数。

例如，角色当前血量153400，角色血量上限200000，显示为“15.3万/20万”。

100000000≤HP：显示以“亿”为单位的数字，最多保留2位小数，小数点后2位都为0时不显示小数，第2位为0时，则保留1位小数显示。

例如，角色当前血量801000000，血量上限7550000000，显示为“8.01亿/75.5亿”。

备注：角色的魔法值或内功值以及NPC不支持该方式显示。

2D手游、2D端游、3D手游和3D端游适用。

LuaGlobal["WrapPlayerHp"] = false
copy 
YellowPKData	int	
设置玩家名称变为黄色所需要的PK值，默认值为100。

2D手游、2D端游适用。

LuaGlobal["YellowPKData"] = 100
copy 
<上一篇:概述下一篇:已废弃全局变量表>
已废弃全局变量表
更新时间：2021-11-30 00:00:00
下表列举了目前已废弃的全局变量。

按照变量名首字母进行了排序，仅供参考。

变量名	数据类型	功能描述	示例
ShowPlayerALiasName	bool	
是否显示玩家角色的别名。

若要显示玩家角色的别名，则需要同时满足以下两个条件：

（1）在游戏设置中勾选“显示称谓”的选项；

（2）将此全局变量设置为true。

true代表显示，为默认值；false代表不显示。

2D手游、3D手游适用。

LuaGlobal["ShowPlayerALiasName"] = true
copy 
AutoFightTaoRedBuff	bool	
挂机时忽略术士红毒BUFF（减防）的判定。

true代表只需一种绿毒（减血）。

LuaGlobal["AutoFightTaoRedBuff"] = true
copy 
AntiState	bool	
设置是否开启实名认证功能，默认为不开启。

LuaGlobal["AntiState"] = true
copy 
ChatContentExColorForceWhite	bool	
设置聊天小框中的内容是否强制为白色。

true代表是；false代表否，为默认值。

LuaGlobal["ChatContentExColorForceWhite"] = true
copy 
ForceChiShaAlways	bool	
设置是否使用刀刀风刺设置新逻辑。

游戏设置面板中开启刀刀风刺且设置了全局变量ChiShaAlways的值为true后，攻击中可能仍然会带有普通攻击。

此全局变量修正相关逻辑。

true代表开启了刀刀风刺设置后，不会带有普通攻击；

false代表保持原状，为默认值。

LuaGlobal["ForceChiShaAlways"] = true
copy 
HpInfoUseDynamicPos	bool	
人物血条是否固定高度。

true代表是，即人物的血条高度不会根据人物状态的变化而改变；

false代表否，即人物的血条高度会根据人物状态的变化而改变。

LuaGlobal["HpInfoUseDynamicPos"] = true
copy 
OhterAttachHurtImageID	unsigned int	
其他玩家角色受到伤害时显示的图片资源ID。

LuaGlobal["OhterAttachHurtImageID"] = 1900414900
copy 
ShowStallNameWhenPlayerHide	bool	
隐藏玩家时是否显示摊位名。

LuaGlobal["ShowStallNameWhenPlayerHide"] = true
copy 
UseEquipmentGuide	bool	
是否使用装备引导面板，默认为不使用。

LuaGlobal["UseEquipmentGuide"] = false
copy 
UseSkillGuide	bool	
是否使用技能引导面板，默认为不使用。

LuaGlobal["UseSkillGuide"] = false
copy 
<上一篇:全局变量表



















































