物品框控件概览
更新时间：2023-09-11 00:00:00
物品框控件是游戏中用于存放各类道具的UI控件。默认的物品框控件可显示具体道具的图标，通过边框四周的颜色不同来表示道具品质等级的品质框。物品框内还会显示道具是否为绑定物品，和自身已装备的同类物品比较的品质箭头。

创建控件
你可以使用下表所列的接口，创建物品框控件。

接口名	中文名	返回值类型	功能描述	适用客户端
ItemCtrlCreate	创建物品框控件	
int

此函数以指定的窗口作为父窗口，新建一个物品框控件。	手游、端游、H5
设置控件
你可以使用下表所列的接口，设置或清空物品框中的物品内容或相关联的tips。

接口名	中文名	返回值类型	功能描述	适用客户端
ItemCtrlSetGUIData	设置物品框中物品的GUIData句柄	
无

此函数设置物品框中物品的GUIData句柄。	手游、端游、H5
ItemCtrlSetJson	根据JSON字符串填充物品框物品	
无

此函数根据JSON字符串填充物品框物品。	手游、端游、H5
ItemCtrlClearItemData	清空物品框数据	
无

此函数清空物品框中原有的数据。	手游、端游、H5
ItemCtrlClearTips	清除物品框tips	
无

此函数清除物品框所关联tips的全部内容。	手游、端游、H5
ItemCtrlEnableCompareTips	设置是否显示物品框中装备的Tips比较	
无

此函数设置是否显示指定物品框控件中装备的Tips比较。	手游、端游
你可以使用下表所列的接口，设置物品框外观相关的图片。

接口名	中文名	返回值类型	功能描述	适用客户端
ItemCtrlSetBackImageID	设置物品框背景图片	
无

此函数设置物品框的背景图片。	手游、端游、H5
ItemCtrlSetDefaultImage	设置物品框默认图片	
无

此函数设置物品框的默认图片。	手游、端游、H5
ItemCtrlSetEffectImageID	设置物品框特效图片	
无

此函数设置物品框的特效动画图片。	手游、端游、H5
ItemCtrlSetFrontImageID	设置物品框前景图片	
无

此函数设置物品框的前景图片。	手游、端游、H5
ItemCtrlSetHighlightImageID	设置物品框高亮图片	
无

此函数设置物品框高亮时图片要显示的图片。	手游、端游、H5
ItemCtrlSetTopImageID	设置物品框顶部图片	
无

此函数设置物品框顶部的图片。	手游、端游、H5
你可以使用下表所列的接口，设置物品框控件的图标的类型、大小、数据管理方式等属性。

接口名	中文名	返回值类型	功能描述	适用客户端
ItemCtrlSetBigIcon	设置物品框中的物品是否显示为大图标	
无

此函数设置物品框中的物品是否显示为大图标。	手游、端游、H5
ItemCtrlSetBigIconAnim	物品框设置为大图标时是否播放动画	
无

此函数控制在物品框设置为大图标类型时，是否播放所配置的动画。	手游、端游
ItemCtrlSetBigIconOffset	设置物品框中物品大图标的偏移	
无

此函数设置物品框中物品大图标的X坐标和Y坐标的偏移，可用于校正物品图片的位置。	手游、端游、H5
ItemCtrlSetForceDisableTip	设置物品框是否强制禁用tip	
无

此函数设置物品框是否强制禁用tip。	手游、端游、H5
ItemCtrlSetFrontImageOffset	设置物品框前景图片的偏移	
无

此函数设置物品框前景图片的X和Y的偏移量。	手游、端游、H5
ItemCtrlSetBackImageIsAdapt	设置物品框背景图片是否自适应显示	
无

此函数设置物品框背景图片是否根据物品框控件的大小自适应显示。	手游、端游
ItemCtrlSetGUIDataPropByType	设置物品框中物品的属性值	
bool

此函数根据GUIData属性类型设置物品框中物品的属性值。	端游、H5
ItemCtrlSetIconImageType	设置物品框的图标类型	
int

此函数设置物品框的图标类型，即普通图标或大图标。	手游、端游、H5
ItemCtrlSetIconSize	设置物品框中物品的图标尺寸大小	
无

此函数设置物品框中物品的图标尺寸大小。	手游、端游、H5
ItemCtrlSetItemDataAutoManager	设置物品框数据自动管理	
无

此函数设置物品框控件中的物品数据是否由程序自动管理。	手游、端游、H5
ItemCtrlSetRBtnUse	设置物品框是否可使用右键	
无

此函数设置右键点击物品框是否使用物品的属性。	手游、端游
ItemCtrlSetShowRefineLevel	设置物品框是否显示精炼等级	
无

此函数设置指定的物品框是否显示精炼等级。精炼等级文本默认是全局显示的，这种情况下，可使用该函数单独设置某个物品框是否显示精炼等级。	手游
ItemCtrlSetRefineLevelPos	设置物品框中精炼等级文本位置	
无

此函数设置物品框中精炼等级文本位置。	手游
ItemCtrlSetShowItemCount	设置物品框是否显示物品数量	
无

此函数设置物品框是否显示物品数量。	手游、端游、H5
ItemCtrlSetNumberConfig	设置物品框中物品数量数字的格式	
bool

此函数设置指定物品框中物品数量数字的格式，如字体、偏移量等。	手游、端游
ItemCtrlSetShowLockImage	设置物品框是否显示锁定图标	
无

此函数设置指定的物品框是否显示锁定图标。	手游、端游、H5
ItemCtrlSetShowQualityArrow	设置物品框是否显示品质比较箭头	
无

此函数设置物品框是否显示品质比较箭头。	手游、端游、H5
ItemCtrlSetTipsShowInTop	设置物品框Tips是否置顶显示	
无

此函数设置物品框的Tips是否置顶显示。	手游
ItemCtrlSetLockImage	设置物品框显示绑定物品的锁图标	
无

此函数设置物品框显示绑定物品的锁图标。	端游
ItemCtrlSetMouseEnableSelect	设置物品框中的物品是否能被拾起	
无

此函数设置使用鼠标点击物品框控件时控件中的物品（或者技能）是否能被拾起（跟随鼠标移动）。	端游
ItemCtrlSetInvalidLockData	设置物品框未生效状态的锁图标	
无

此函数设置物品框未生效状态的锁图标。	端游、H5
ItemCtrlSetQualityImage	设置物品框的品质比较箭头	
无

此函数设置物品框的品质比较箭头的样式，缩放和偏移等属性。	手游、端游
ItemCtrlSetUseCustomDrawInterval	设置物品框描绘时间间隔	
无

此函数设置物品框描绘时间间隔。	手游
RDItemCtrlShowQualityBG	设置物品框是否显示品质背景框	
无

此函数设置物品框是否显示品质背景框。	端游
ItemCtrlSetColor	设置物品框中道具的颜色	
无

此函数设置指定物品框控件中道具的颜色。	手游、端游
获取控件信息
在创建或设置物品框控件后，可以通过以下接口获取物品框控件的外观图片资源ID、数据管理方式、其他属性等信息。

接口名	中文名	返回值类型	功能描述	适用客户端
ItemCtrlGetBackImageID	获取物品框背景图片	
int

此函数获取物品框的背景图片。	手游、端游、H5
ItemCtrlGetBigIconOffset	获取物品框中物品大图标的偏移	
bool

此函数获取物品框中物品大图标的X坐标和Y坐标的偏移量。	手游、端游、H5
ItemCtrlGetBigIcon	获取物品框中物品是否为大图标	
int

此函数获取物品框的类型是大图标还是普通类型。	手游、端游、H5
ItemCtrlGetDefaultImage	获取物品框默认图片	
int

此函数获取物品框的默认图片ID。	手游、端游、H5
ItemCtrlGetForceDisableTip	获取物品框是否强制禁用tip	
bool

此函数获取物品框是否强制禁用tip。	手游、端游、H5
ItemCtrlGetFrontImageID	获取物品框前景图片	
int

此函数获取物品框前景图片。	手游、端游、H5
ItemCtrlGetGUIDataPropByType	获取物品框中物品的属性值	
bool

此函数根据指定的GUIData属性类型获取物品框中物品对应的属性值。	端游、H5
ItemCtrlGetGUIData	获取物品框中物品的GUIData句柄	
int

此函数获取物品框中物品的GUIData句柄。	手游、端游、H5
ItemCtrlGetHighlightImageID	获取物品框选中图片	
int

此函数获取高亮物品框时（即被选中）要显示的图片。	手游、端游、H5
ItemCtrlGetIconImageType	获取物品框的图标类型	
int

此函数获取物品框的图标类型，即普通图标或大图标。	手游、端游、H5
ItemCtrlGetIconSize	获取物品框中物品的图标尺寸大小	
无

此函数获取物品框中物品的图标尺寸大小。	手游、端游
ItemCtrlGetItemDataAutoManager	获取物品框数据是否自动管理	
bool

此函数获取物品框控件中的物品数据是否由程序自动管理。	手游、端游、H5
ItemCtrlGetRBtnUse	获取物品框是否可使用右键	
bool

此函数获取右键点击物品框是否使用物品的属性。	手游、端游
ItemCtrlIsShowItemCount	获取物品框是否显示物品数量	
bool

此函数获取物品框是否显示物品数量。	手游、端游、H5
ItemCtrlGetNumberConfig	获取物品框中物品数量数字的格式信息	
bool

此函数获取指定物品框中物品数量数字的格式信息，如字体名、偏移量等。	手游、端游
ItemCtrlGetColor	获取物品框中道具的颜色	
int

此函数获取指定物品框控件中道具的颜色。	手游、端游
<上一篇:图片控件概览下一篇:组合框控件概览>

ItemCtrlSetBackImageAdaptType
设置物品框静态背景图片自适应的方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-07-24 00:00:00
此函数设置物品框静态背景图片自适应的方式。

背景图片显示在物品图片的下方。

语法
Luacopy 复制
GUI:ItemCtrlSetBackImageAdaptType(
    _HandleID,
    _Type,
    _Cx,
    _Cy
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Type

int

 
自适应类型

0表示按格子缩放

1表示按图片缩放

2表示指定图片宽高

_Cx

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Cy

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN14",1850400004,805,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    GUI:ItemCtrlSetBackImageID(_GUIHandle,1800000065)  --设置物品框的背景图片
    GUI:ItemCtrlSetBackImageIsAdapt(_GUIHandle, true)  --设置物品框的背景图片自适应显示
    GUI:ItemCtrlSetBackImageAdaptType(_GUIHandle,1,0.5,0.5) --设置物品框静态背景图片自适应的方式
end

--自适应类型为按格子缩放，图片缩放到格子宽0.5倍，高0.5倍时，此示例代码运行成功如下图所示。

--端游：

ItemCtrlSetBackImageAdaptType.png

--手游：

ItemCtrlSetBackImageAdaptType_2.png

--自适应类型为按图片缩放，图片保持原大小时，此示例代码运行成功如下图所示。

--端游：

ItemCtrlSetBackImageAdaptType_3.png

--手游：

ItemCtrlSetBackImageAdaptType_4.png

--自适应类型为指定图片宽高，宽和高都为50时，此示例代码运行成功如下图所示。

--端游：

ItemCtrlSetBackImageAdaptType_5.png

--手游：

ItemCtrlSetBackImageAdaptType_6.png

下一篇:设置物品框背景图片>
ItemCtrlSetBackImageID
设置物品框背景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框的背景图片。

背景图片显示在物品图片的下方。

note_icon 备注
端游中，背景图片默认以物品框左上角为原点创建。

手游和H5中，背景图片默认从物品框中心点绘制。

语法
Luacopy 复制
GUI:ItemCtrlSetBackImageID(
    _HandleID,
    _ImgId
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_ImgId

int

 
背景图片的ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN14",1850400004,605,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    GUI:ItemCtrlSetBackImageID(_GUIHandle,1800000065)  --设置物品框的背景图片
end

--此示例代码运行成功如下图所示。

--端游：

RDItemCtrlSetBackImageID.png

--手游：

RDItemCtrlSetBackImageID_2.png
<上一篇:设置物品框静态背景图片自适应的方式下一篇:设置物品框背景图片是否自适应显示>
ItemCtrlSetBackImageIsAdapt
设置物品框背景图片是否自适应显示

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnon_support

更新时间：2023-09-27 00:00:00
此函数设置物品框背景图片是否根据物品框控件的大小自适应显示。

要设置物品框的背景图片，请参见接口ItemCtrlSetBackImageID的说明。

语法
Luacopy 复制
GUI:ItemCtrlSetBackImageIsAdapt(
    _HandleID,
    _IsAdapt
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_IsAdapt

bool

 
true自适应显示

false以图片原尺寸显示

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN14",1850400004,605,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    GUI:ItemCtrlSetBackImageID(_GUIHandle,1800000065)  --设置物品框的背景图片
    GUI:ItemCtrlSetBackImageIsAdapt(_GUIHandle, true)  --设置物品框的背景图片自适应显示
end

--此示例代码运行成功如下图所示。

--以原大小显示：

ItemCtrlSetBackImageIsAdapt

--自适应显示：

ItemCtrlSetBackImageIsAdapt2
<上一篇:设置物品框背景图片下一篇:物品框设置为大图标时是否播放动画>
ItemCtrlSetBigIconAnim
物品框设置为大图标时是否播放动画

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数控制在物品框设置为大图标类型时，是否播放所配置的动画。

note_icon 备注
此接口主要适用于未在AnimSetting.xml文件中配置的动画。

如果在AnimSetting.xml文件中配置了相关动画，则优先使用AnimSetting.xml文件中的配置。

语法
Luacopy 复制
GUI:ItemCtrlSetBigIconAnim(
    _HandleID,
    _Anim,
    _AnimSpeed
)
参数
_HandleID

long

 
物品框句柄

_Anim

bool

 
是否播放动画

_AnimSpeed

unsigned int

 
动画帧间隔时间

单位为毫秒

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"TestBigIcon", 0, 1000, 1000, 100, 100)
if _GUIHandle ~= 0 then
    GUI:ImageSetDrawCenter(_GUIHandle, true) --设置图片控件以中心点绘制
    GUI:WndSetSizeM(_GUIHandle, 100, 100) --设置窗口大小为100*100
    GUI:ItemCtrlSetBigIcon(_GUIHandle, 10) --设置物品框中物品为大图标
    GUI:WndSetCanRevMsg(_GUIHandle, false) --设置窗口不响应操作
    GUI:ItemCtrlSetTopImageID(_GUIHandle, 1221800300) --设置物品框顶部图片
    GUI:ItemCtrlSetBigIconAnim(_GUIHandle, true, 150) --物品框设置为大图标时播放动画
end
<上一篇:设置物品框背景图片是否自适应显示下一篇:设置物品框中物品大图标的偏移>
ItemCtrlSetBigIconOffset
设置物品框中物品大图标的偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框中物品大图标的X坐标和Y坐标的偏移，可用于校正物品图片的位置。

语法
Luacopy 复制
GUI:ItemCtrlSetBigIconOffset(
    _HandleID,
    _OffsetX,
    _OffsetY
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_OffsetX

int

 
图片的水平偏移量

_OffsetY

int

 
图片的垂直偏移量

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,245,200,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false)  --根据物品的索引名称填充物品框
    RDItemCtrlSetBigIcon(_GUIHandle,nil,true)  --设置物品框中为大图标物品框
end

_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN2",1850400004,245,200,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false)  --根据物品的索引名称填充物品框
    RDItemCtrlSetBigIcon(_GUIHandle,nil,true)  --设置物品框中为大图标物品框
    GUI:ItemCtrlSetBigIconOffset(_GUIHandle,200,0)  --设置物品框中物品大图标的水平偏移为200
end

--此示例代码运行成功如下图所示（左边为偏移前的图标，右边为偏移后的图标）。

RDItemCtrlSetBigIconOffset.png
<上一篇:物品框设置为大图标时是否播放动画下一篇:设置物品框中的物品是否显示为大图标>
ItemCtrlSetBigIcon
设置物品框中的物品是否显示为大图标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框中的物品是否显示为大图标。

大图标物品一般用于显示角色模型中各部位显示。

语法
Luacopy 复制
GUI:ItemCtrlSetBigIcon(
    _HandleID,
    _BigIconType
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_BigIconType

int

 
0普通图标

其他数值大图标

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN10",1850400004,245,200,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false)  --根据物品的索引名称填充物品框
    GUI:ItemCtrlSetBigIcon(_GUIHandle,1) --设置物品框中的物品显示为大图标
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetBigIcon.png
<上一篇:设置物品框中物品大图标的偏移下一篇:设置物品框是否支持拖动物品操作>
ItemCtrlSetCanDrag
设置物品框是否支持拖动物品操作

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-06-02 00:00:00
此函数设置指定物品框控件是否支持拖动物品操作。

相关接口：WndSetCanDragItem。

语法
Luacopy 复制
GUI:ItemCtrlSetCanDrag(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
是否支持拖动物品

true支持拖动物品

false不支持拖动物品

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
--将以下示例代码放在Package.lua文件中执行，执行前需确保全局变量PackItemCanDrag已设置为true。
LuaGlobal["PakagePageSize"] = 200 --包裹每页的数量
Package = {}

function Package.main()

--……省略部分代码

    GUI:WndSetCanDragItem(_Parent, true) --设置窗口在拖动物品时能接收窗口事件

    _GUIHandle = GUI:ImageCreate(_Parent, "BM_ItemBG", 4005400000,0, 0)
    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "BM_Item", 0, 0,0, 60, 60)
    if _GUIHandle ~= 0 then
        GUI:ItemCtrlSetCanDrag(_GUIHandle, true) --设置物品框是否支持拖动物品操作
        GUI:WndSetEnableM(_GUIHandle, true) --设置物品框可用
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle,4004400100) --设置物品框高亮时要显示的图片
        RDItemCtrlSetGUIDataPropByType(_Parent, "BM_Item", ITEMGUIDATA_INVALIDATE, true) --设置物品框为有效状态
        Sys_PushBackItemWindow(_GUIHandle,"test") --放入物品
    end

    Package.UIInit(_Parent)
end

function test(this, GUIData, DragIn, GUID, ItemId, KeyName, ItemPos, IsBound, Count)
    return true
end

--……省略部分代码

Package.main()
--此示例代码运行成功如下图所示。

WndSetCanDragItem.gif
<上一篇:设置物品框中的物品是否显示为大图标下一篇:设置物品框中道具的颜色>
ItemCtrlSetColor
设置物品框中道具的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-10-25 00:00:00
此函数设置指定物品框控件中道具的颜色。

参考 ItemCtrlGetColor

语法
Luacopy 复制
GUI:ItemCtrlSetColor(
    handle,
    color
)
参数
handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

color

unsigned int

 
要设置的颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对3D的支持

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,200,200,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
end

_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN2",1850400004,200,300,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    GUI:ItemCtrlSetColor(_GUIHandle,COLOR_RED) --设置道具颜色为红色
end

--此示例代码运行成功如下图所示。

--从上到下依次为物品框1、物品框2，其中物品框1未设置道具颜色、物品框2中的道具被设置为红色。

ItemCtrlSetColor.png
<上一篇:设置物品框是否支持拖动物品操作下一篇:设置物品框默认图片>
ItemCtrlSetDefaultImage
设置物品框默认图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框的默认图片。

语法
Luacopy 复制
GUI:ItemCtrlSetDefaultImage(
    _HandleID,
    _ImgId
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_ImgId

int

 
默认图片的ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1900010042)--设置默认图片
end
<上一篇:设置物品框中道具的颜色下一篇:设置物品框内部元素的绘制顺序>
ItemCtrlSetDrawCallOrder
设置物品框内部元素的绘制顺序

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-09-04 17:45:00
此函数设置物品框内部元素的绘制顺序，同时降低层级，避免覆盖子控件。

note_icon 备注
端游与手游不同，端游不会覆盖子控件，而手游会覆盖子控件。

语法
Luacopy 复制
GUI:ItemCtrlSetDrawCallOrder(
    handle,
    order_obj
)
参数
handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

order_obj

table

 
绘制顺序配置

Luacopy 复制
local order_obj = {
  order = {
    "draw_bg", -- 背景，(相关接口：ItemCtrlSetBackImageID、ItemCtrlSetBackImageIsAdapt、ItemCtrlSetBackImageAdaptType)
    "draw_color_bg", -- 品质背景，【道具类型，有效】(相关接口：RDItemCtrlShowQualityBG、SetQualityImageDataEx、SetQualityImageData)（技能栏默认不显示品质）
    "draw_icon", -- 图标，【道具类型，有效】（相关表：道具模板表）(相关接口：SetSkillImageIDMap)（相关变量：ItemCtrlIsShowQuestionMark）
    "draw_sellout", -- 售完，【道具类型，有效】（相关变量：ItemCtrlTextAutoFit）
    "draw_highlight", -- 选中高亮，【道具类型，有效】（相关接口：ItemCtrlSetHighlightImageID）
    "draw_invalid_lock", -- 无效锁定，（相关接口：ItemCtrlSetInvalidLockData）
    "draw_color_rect", -- 品质矩形，【道具类型，有效】(相关接口：RDItemCtrlShowQualityBG、SetQualityImageDataEx、SetQualityImageData)（相关变量：UseFixItemImageRect）（技能栏默认不显示品质）
    "draw_arrow", -- 比较箭头，【道具类型，有效】（相关接口：ItemCtrlSetShowQualityArrow、ItemCtrlSetQualityImage）
    "draw_effect", -- 特效，【道具类型，有效】 （相关接口：ItemCtrlSetEffectImageID）
    "draw_number", -- 物品数量，【道具类型，有效】（相关接口：ItemCtrlSetShowItemCount）
    "draw_bind", -- 绑定，【道具类型，有效】（相关接口：ItemCtrlSetShowLockImage）（相关变量：ShowBindImage）
    "draw_front", -- 前景图，【道具类型，有效】（相关接口：ItemCtrlSetFrontImageID）
    "draw_lock", -- 锁定，【道具类型，有效】（相关变量：ItemCtrlTextAutoFit）
    "draw_sellon", -- 摆摊已上架，【道具类型，有效】（相关变量：ItemCtrlTextAutoFit）
    "draw_refine" -- 精炼等级，【道具类型，有效】（相关接口：ItemCtrlSetShowRefineLevel）（相关变量：ItemCtrlShowRefineLevel）
    }
 }
返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local order_obj = {
  order = {
    "draw_bg", -- 背景，(相关接口：ItemCtrlSetBackImageID、ItemCtrlSetBackImageIsAdapt、ItemCtrlSetBackImageAdaptType)
    "draw_color_bg", -- 品质背景，【道具类型，有效】(相关接口：RDItemCtrlShowQualityBG、SetQualityImageDataEx、SetQualityImageData)（技能栏默认不显示品质）
    "draw_icon", -- 图标，【道具类型，有效】（相关表：道具模板表）(相关接口：SetSkillImageIDMap)（相关变量：ItemCtrlIsShowQuestionMark）
    "draw_sellout", -- 售完，【道具类型，有效】（相关变量：ItemCtrlTextAutoFit）
    "draw_highlight", -- 选中高亮，【道具类型，有效】（相关接口：ItemCtrlSetHighlightImageID）
    "draw_invalid_lock", -- 无效锁定，（相关接口：ItemCtrlSetInvalidLockData）
    "draw_color_rect", -- 品质矩形，【道具类型，有效】(相关接口：RDItemCtrlShowQualityBG、SetQualityImageDataEx、SetQualityImageData)（相关变量：UseFixItemImageRect）（技能栏默认不显示品质）
    "draw_arrow", -- 比较箭头，【道具类型，有效】（相关接口：ItemCtrlSetShowQualityArrow、ItemCtrlSetQualityImage）
    "draw_effect", -- 特效，【道具类型，有效】 （相关接口：ItemCtrlSetEffectImageID）
    "draw_number", -- 物品数量，【道具类型，有效】（相关接口：ItemCtrlSetShowItemCount）
    "draw_bind", -- 绑定，【道具类型，有效】（相关接口：ItemCtrlSetShowLockImage）（相关变量：ShowBindImage）
    "draw_front", -- 前景图，【道具类型，有效】（相关接口：ItemCtrlSetFrontImageID）
    "draw_lock", -- 锁定，【道具类型，有效】（相关变量：ItemCtrlTextAutoFit）
    "draw_sellon", -- 摆摊已上架，【道具类型，有效】（相关变量：ItemCtrlTextAutoFit）
    "draw_refine" -- 精炼等级，【道具类型，有效】（相关接口：ItemCtrlSetShowRefineLevel）（相关变量：ItemCtrlShowRefineLevel）
    }
 }
GUI:ItemCtrlSetDrawCallOrder(handle, order_obj)
 
<上一篇:设置物品框默认图片下一篇:设置物品框特效图片>
ItemCtrlSetEffectImageID
设置物品框特效图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框的特效动画图片。

特效动画图片显示在物品图片和前景图片之间。

语法
Luacopy 复制
GUI:ItemCtrlSetEffectImageID(
    _HandleID,
    _ImgId,
    _Scale
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_ImgId

int

 
物品框特效图片的ID

_Scale

float

 
特效图片的缩放比例

例如：2表示为原大小的2倍

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN16",1850400004,66,276,66,66)
if _GUIHandle ~= 0 then
    --设置物品框为有效状态
    LuaArg = true
    GUI:ItemCtrlSetGUIDataPropByType(_GUIHandle,ITEMGUIDATA_INVALIDATE)
    --设置物品框中物品的图片ID
    LuaArg = 1891410039
    GUI:ItemCtrlSetGUIDataPropByType(_GUIHandle,ITEMGUIDATA_IMAGEID)
    GUI:ItemCtrlSetEffectImageID(_GUIHandle, 3021800000,0.5)  --设置物品框特效图片和缩放比例
end

--此示例代码运行成功如下图所示。

ItemCtrlSetEffectImageID.png
<上一篇:设置物品框内部元素的绘制顺序下一篇:设置物品框是否强制禁用tip>
ItemCtrlSetForceDisableTip
设置物品框是否强制禁用tip

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框是否强制禁用tip。

如下图显示的“逍遥游”物品的介绍框即为tip。禁用后，点击物品框时将不再显示tip。

tip example
语法
Luacopy 复制
GUI:ItemCtrlSetForceDisableTip(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_Flag

bool

 
true禁用tip

false未禁用tip

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetForceDisableTip(_GUIHandle,true) --设置物品框不显示tip
end
<上一篇:设置物品框特效图片下一篇:设置物品框前景图片>
ItemCtrlSetFrontImageID
设置物品框前景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框的前景图片。

前景图片会显示在物品图片的上方。

note_icon 备注
端游中，前景图片默认以物品框左上角为原点创建，默认偏移量为(X：-16, Y：-16)。

手游和H5中，前景图片默认从物品框中心点绘制，并自动缩放为物品框的大小。

可调用ItemCtrlSetFrontImageOffset接口调整偏移量。

语法
Luacopy 复制
GUI:ItemCtrlSetFrontImageID(
    _HandleID,
    _ImgId
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_ImgId

int

 
前景图片的ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN13",1850400004,515,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    GUI:ItemCtrlSetFrontImageID(_GUIHandle,1800000065)  --设置物品框的前景图片
end

--此示例代码运行成功如下图所示。

--端游：

RDItemCtrlSetFrontImageID.png

--手游：

RDItemCtrlSetFrontImageID_2.png
<上一篇:设置物品框是否强制禁用tip下一篇:设置物品框前景图片的偏移>
ItemCtrlSetFrontImageOffset
设置物品框前景图片的偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框前景图片的X和Y的偏移量。

语法
Luacopy 复制
GUI:ItemCtrlSetFrontImageOffset(
    _HandleID,
    _XOff,
    _YOff
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_XOff

int

 
图片的水平偏移量。

_YOff

int

 
图片的垂直偏移量。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,0,0,34,34) --创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetBackImageID(_GUIHandle, 1930100036) --设置物品框背景图片
    GUI:ItemCtrlSetFrontImageID(_GUIHandle, 1903600007) --设置物品框前景图片
    GUI:ItemCtrlSetFrontImageOffset(_GUIHandle, 0, 0) --设置物品框前景图片偏移量为0
end

--请将示例代码复制到Package.lua中创建物品框，设置图片效果如下。

ItemCtrlSetFrontImageOffset
<上一篇:设置物品框前景图片下一篇:设置物品框中物品的属性值>
ItemCtrlSetGUIDataPropByType
设置物品框中物品的属性值

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数根据GUIData属性类型设置物品框中物品的属性值。

语法
Luacopy 复制
GUI:ItemCtrlSetGUIDataPropByType(
    _HandleID,
    _PropType
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_PropType

int

 
GUIData属性类型

点击此处了解更多信息

note_icon 备注
对应属性类型的参数需要通过全局变量LuaArg来传递。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN6",1850400004,605 + 60,126,66,66)
if _GUIHandle ~= 0 then
    --设置物品框为有效状态
    LuaArg = true
    GUI:ItemCtrlSetGUIDataPropByType(_GUIHandle,ITEMGUIDATA_INVALIDATE)
    --设置物品框中物品的图片ID
    LuaArg = 1891410039
    GUI:ItemCtrlSetGUIDataPropByType(_GUIHandle,ITEMGUIDATA_IMAGEID)
end

--此示例代码运行成功如下图所示。

ItemCtrlSetGUIDataPropByType.png
<上一篇:设置物品框前景图片的偏移下一篇:设置物品框中物品的GUIData句柄>
ItemCtrlSetGUIData
设置物品框中物品的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框中物品的GUIData句柄。

语法
Luacopy 复制
GUI:ItemCtrlSetGUIData(
    _HandleID,
    _ItemDataHandle
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_ItemDataHandle

long

 
物品的GUIData句柄

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30) --创建物品框
local _ItemHandle = CL:GetEquimentItemDataPart(1) --获取角色自身穿着的武器的GUIData句柄，参数“1”代表物品位置类型中的“武器”
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetGUIData(_GUIHandle, _ItemHandle) --传入该武器的GUIData句柄
end
<上一篇:设置物品框中物品的属性值下一篇:设置物品框高亮图片>
ItemCtrlSetHighlightImageID
设置物品框高亮图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框高亮时图片要显示的图片。

语法
Luacopy 复制
GUI:ItemCtrlSetHighlightImageID(
    _HandleID,
    _ImgId
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_ImgId

int

 
物品框高亮时显示的图片ID

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN15",1850400004,695,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    GUI:ItemCtrlSetHighlightImageID(_GUIHandle,4001630108)  --设置物品框高亮时要显示的图片
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetHighlightImageID.png
<上一篇:设置物品框中物品的GUIData句柄下一篇:设置物品框的图标类型>
ItemCtrlSetIconImageType
设置物品框的图标类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框的图标类型，即普通图标或大图标。

语法
Luacopy 复制
GUI:ItemCtrlSetIconImageType(
    _HandleID,
    _Type
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_Type

int

 
图标类型：

0普通图标

其他非0值代表大图标

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetIconImageType(_GUIHandle, 0)
end
<上一篇:设置物品框高亮图片下一篇:设置物品框中物品的图标尺寸大小>
ItemCtrlSetIconSize
设置物品框中物品的图标尺寸大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-22 00:00:00
此函数设置指定物品框控件中物品的图标尺寸大小。

参考 ItemCtrlGetIconSize

语法
Luacopy 复制
GUI:ItemCtrlSetIconSize(
    _HandleID,
    _IconXSize,
    _IconYSize
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_IconXSize

int

 
图标的宽度

单位为像素（px）

_IconYSize

int

 
图标的高度

单位为像素（px）

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl1", 1850400004, 100, 200, 70, 70) --创建物品框1
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false) --根据物品的索引名称填充物品框
    GUI:ItemCtrlSetIconSize(_GUIHandle,60,60) --设置指定物品框控件中物品的图标尺寸大小为60*60
    GUI:ItemCtrlGetIconSize(_GUIHandle) --获取指定物品框控件中物品的图标尺寸大小
    dbg("物品框1中物品的图标尺寸大小为:"..LuaRet[1].."*"..LuaRet[2])
end

local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl2", 1850400004, 100, 300, 70, 70) --创建物品框2
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false) --根据物品的索引名称填充物品框
    GUI:ItemCtrlSetIconSize(_GUIHandle,20,20) --设置指定物品框控件中物品的图标尺寸大小为20*20
    GUI:ItemCtrlGetIconSize(_GUIHandle) --获取指定物品框控件中物品的图标尺寸大小
    dbg("物品框2中物品的图标尺寸大小为:"..LuaRet[1].."*"..LuaRet[2])
end

local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl3", 1850400004, 100, 400, 70, 70) --创建物品框3
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false) --根据物品的索引名称填充物品框
    GUI:ItemCtrlGetIconSize(_GUIHandle) --获取指定物品框控件中物品的图标尺寸大小
    dbg("物品框3中物品的图标尺寸大小为:"..LuaRet[1].."*"..LuaRet[2])
end

--此示例代码运行成功如下图所示。

--从上到下依次为物品框1、物品框2和物品框3，其中物品框1和物品框2分别设置了对应的物品图标尺寸，物品框3未设置物品图标尺寸。

ItemCtrlGetIconSize.png

ItemCtrlGetIconSize_2.png
<上一篇:设置物品框的图标类型下一篇:设置物品框未生效状态的锁图标>
ItemCtrlSetInvalidLockData
设置物品框未生效状态的锁图标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2025-02-24 00:00:00
此函数设置物品框未生效状态的锁图标。

游戏中，物品框在未生效的状态下，会显示锁定。

使用此接口可设置锁图标的资源和偏移。

语法
Luacopy 复制
GUI:ItemCtrlSetInvalidLockData(
    _HandleID,
    _LockImgID,
    _OffsetX,
    _OffsetY
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_LockImgID

unsigned int

 
锁图标的图片资源ID

若设置为0，则不显示图标。

_OffsetX

int

 
锁图标X轴偏移

_OffsetY

int

 
锁图标Y轴偏移

note_icon 备注
偏移若均设置为0，则图标显示为位置默认为左上角。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

 
v1.1

 
新增对2D手游支持

示例代码
Luacopy 复制
--以官方美术资源展示服务区（区号3104），脚本文件NPCShop.lua为例。
function NPCShop.main()
    --……省略部分代码
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item"..i,0,46+ i % 2 * ItemDX+ addX,91+ math.floor( i / 2 ) * ItemDY+ addY,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 4000620003)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetInvalidLockData(_GUIHandle,1853790037,15,20) --设置未生效状态下的锁图标
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    --……省略部分代码
end

--修改脚本后，进入巫山城地图，对话巫山城铁匠NPC，选择购买→二手市场，效果如下图。

ItemCtrlSetInvalidLockData
<上一篇:设置物品框中物品的图标尺寸大小下一篇:设置物品框数据自动管理>
ItemCtrlSetItemDataAutoManager
设置物品框数据自动管理

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框控件中的物品数据是否由程序自动管理。

note_icon 备注
一般情况下，物品数据由程序自动管理，否则由脚本管理物品框数据。

语法
Luacopy 复制
GUI:ItemCtrlSetItemDataAutoManager(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true设置自动管理

false设置由脚本管理

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true) --设置物品数据为自动管理
end
<上一篇:设置物品框未生效状态的锁图标下一篇:设置物品框显示绑定物品的锁图标>
ItemCtrlSetLockImage
设置物品框显示绑定物品的锁图标

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置物品框显示绑定物品的锁图标。

设置后图标显示对所有物品框生效。

设置生效后，如需设置单个物品框的锁图标是否显示，请参见接口ItemCtrlSetShowLockImage的说明。

语法
Luacopy 复制
GUI:ItemCtrlSetLockImage(
    _ImageID,
    _OffsetX,
    _OffsetY,
    _ScaleX,
    _ScaleY
)
参数
_ImageID

unsigned int

 
锁图标的图片资源ID

若设置为0，则不显示图标。

_OffsetX

int

 
锁图标X轴偏移

_OffsetY

int

 
锁图标Y轴偏移

偏移若均设置为0，则图标显示为位置默认为左下角。

_ScaleX

int

 
锁图标图片宽度缩放比例

将要设置的倍数乘以10000即为设置值

例如：

8000锁图标图片宽度缩小至原始宽度的0.8倍大小

10000锁图标图片宽度为原始宽度

14000锁图标图片宽度放大0.4倍，为原始宽度的1.4倍大小

_ScaleY

int

 
锁图标图片高度缩放比例

将要设置的倍数乘以10000即为设置值

规则和_ScaleX相同，不再赘述。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GUI:ItemCtrlSetLockImage(1853790037,0,0,10000,10000)

--此示例代码运行成功如下图所示。

ItemCtrlSetLockImage
<上一篇:设置物品框数据自动管理下一篇:设置物品框中的物品是否能被拾起>
ItemCtrlSetMouseEnableSelect
设置物品框中的物品是否能被拾起

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-11-04 00:00:00
此函数设置使用鼠标点击物品框控件时控件中的物品（或者技能）是否能被拾起（跟随鼠标移动）。

物品框控件中的物品（或者技能）被拾起（跟随鼠标移动）的效果如下图所示。

ItemCtrlSetMouseEnableSelect.png
语法
Luacopy 复制
GUI:ItemCtrlSetMouseEnableSelect(
    _Handle,
    flag
)
参数
_Handle

long

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

flag

bool

 
物品框控件中的物品（或者技能）是否能被拾起

true是

false否

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以RoleSkill.lua脚本文件为例。
RoleSkill = {}
function RoleSkill.main()

--……省略部分代码

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill0",0,23+lx,40+ly,52,52)
    if _GUIHandle ~= 0 then

        --……省略部分代码

        GUI:ItemCtrlSetMouseEnableSelect(_GUIHandle,false) --设置鼠标点击不可被拾起
    end

end

--……省略部分代码

RoleSkill.main()

--此示例代码运行前，鼠标点击Skill0控件，技能图标可被拾起，如下图所示。

ItemCtrlSetMouseEnableSelect.png

--此示例代码运行后，鼠标点击Skill0控件，技能图标不可被拾起。
    
<上一篇:设置物品框显示绑定物品的锁图标下一篇:设置物品框中物品数量数字的格式>
ItemCtrlSetNumberConfig
设置物品框中物品数量数字的格式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-04-07 00:00:00
此函数设置指定物品框中物品数量数字的格式，如字体、偏移量等。

如下图中，物品右下角的数字即为物品数量。

item count example

语法
Luacopy 复制
GUI:ItemCtrlSetNumberConfig(
    _HandleID,
    _FontName,
    _OffsetX,
    _OffsetY
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_FontName

string

 
字体名称（即FontSetting.xml文件中的FontUseName字段的值）

具体请参见字体样式配置页面

_OffsetX

int

 
水平方向上的偏移

单位为像素（px）

_OffsetY

int

 
垂直方向上的偏移

单位为像素（px）

返回值
bool

 
true指定的物品框句柄有效

false指定的物品框句柄无效（请检查句柄参数）

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    dbg("\nkeyName为：".. RDItemCtrlGetGUIDataKeyName(_GUIHandle,nil))
end

_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN2",1850400004,515,200,66,66)
if _GUIHandle ~= 0 then
    local _GUIData = RDItemCtrlGetGUIData(_Parent, "ItemN1") --获取物品框ItemN1中物品的GUIData句柄
    if _GUIData ~= 0 then 
        RDItemCtrlFillGUIData(_GUIHandle,nil,_GUIData)  --根据物品的GUIData句柄填充物品框ItemN2
        GUI:ItemCtrlSetNumberConfig(_GUIHandle,"Big40",-20,-15)
    end 
end

--此示例代码运行成功如下图所示。根据自身的装备，实际展示的物品也会不同。

ItemCtrlSetNumberConfig
<上一篇:设置物品框中的物品是否能被拾起下一篇:设置物品框的品质比较箭头>
ItemCtrlSetQualityImage
设置物品框的品质比较箭头

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-07-18 00:00:00
此函数设置物品框的品质比较箭头的样式，缩放和偏移等属性。

设置后对所有物品框生效。

当玩家背包中存在比装备栏中品质更好的装备时，物品栏的物品会显示如下图中的绿色箭头（默认样式）来提示玩家。

backpack

物品的品质数值在游戏工具平台→道具模板表，进入某个物品编辑界面，其他配置的品质一栏。

ItemCtrlSetQualityImage_2.png

物品框默认不显示品质比较箭头，如需设置单个物品框是否显示品质比较箭头，请参见接口ItemCtrlSetShowQualityArrow的说明。

语法
Luacopy 复制
GUI:ItemCtrlSetQualityImage(
    _ImageID,
    _OffsetX,
    _OffsetY,
    _ScaleX,
    _ScaleY
)
参数
_ImageID

unsigned int

 
品质比较箭头的图片资源ID

若设置为0，则不显示图标。

_OffsetX

int

 
品质比较箭头X轴偏移

_OffsetY

int

 
品质比较箭头Y轴偏移

note_icon 备注
若品质比较箭头的X轴偏移和Y轴偏移均设置为0，则图标显示为位置默认为右下角。

_ScaleX

int

 
X轴方向缩放（即宽度的缩放比例）

将要设置的倍数乘以10000即为设置值

例如：

5000品质比较箭头宽度缩小至原始宽度的一半大小

10000品质比较箭头宽度为原始宽度

20000品质比较箭头宽度放大1倍，为原始宽度的2倍大小

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

 
v1.1

 
新增对2D手游支持

 
v1.2

 
新增对3D手游支持

示例代码
Luacopy 复制
--以官方美术资源展示服务区（区号3104），脚本文件Package.lua为例。
Package = {}
function Package.main()
    --……省略部分代码
    local ItemX1 = 37 + 65 - 35
    local ItemY1 = 99 + 70 - 10
    local ItemDx1 = 47 + 13
    local ItemDy1 = 47 + 13

    GUI:ItemCtrlSetQualityImage(1850400045, 0, 0, 10000, 10000) --创建物品框前设置品质比较箭头

    for i = 0,39 do 
        _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item"..i,0,ItemX1 + (i % 8) * ItemDx1,ItemY1 + math.floor(i / 8 ) *  ItemDy1,60,60)
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, 0)
            GUI:WndSetSizeM(_GUIHandle,60, 60)
            GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
            GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
            GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 4000620003)
            GUI:WndSetEnableM(_GUIHandle, true)
            GUI:ItemCtrlSetShowQualityArrow(_GUIHandle, true) --创建显示品质比较箭头
        end
    end
    --……省略部分代码
Package.main()

--设置后，如装备品质高于当前已穿的同类型装备，则显示品质比较箭头，例如下图所示。

ItemCtrlSetQualityImage
<上一篇:设置物品框中物品数量数字的格式下一篇:设置物品框是否可使用右键>
ItemCtrlSetRBtnUse
设置物品框是否可使用右键

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置右键点击物品框是否使用物品的属性。

语法
Luacopy 复制
GUI:ItemCtrlSetRBtnUse(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true右键点击物品框使用物品

false右键点击物品框无任何作用

note_icon 备注
即使设置为true，手游中右键点击物品框使用物品的功能已不再生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetRBtnUse(_GUIHandle, true) --设置右键点击使用物品
end
<上一篇:设置物品框的品质比较箭头下一篇:设置物品框中精炼等级文本位置>
ItemCtrlSetRefineLevelPos
设置物品框中精炼等级文本位置

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置物品框中精炼等级文本显示的位置。

精炼等级文本默认是显示的，如设置了关闭，请参见全局变量ItemCtrlShowRefineLevel的说明。

语法
Luacopy 复制
GUI:ItemCtrlSetRefineLevelPos(
    _HandleID,
    _PosX,
    _PosY
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_PosX

int

 
以物品框左上角为参照点，精炼等级显示的X坐标（像素）。

精炼等级文字的实际X坐标位置为此参数设置值 - 精炼等级文字的宽度（像素）。

_PosY

int

 
以物品框左上角为参照点，精炼等级显示的Y坐标（像素）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
UI:Lua_GetPlayerSelfEquipData() --获取自身装备GUID列表
local tEquipList = LuaRet
_GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl", 1853800010, 200, 400, 66, 66) --创建物品框
if _GUIHandle ~= 0 then
  RDItemCtrlSetGUIDataPropByGUID(_GUIHandle, "", tEquipList[1])--根据GUID填充物品框
  GUI:ItemCtrlSetRefineLevelPos(_GUIHandle,55,10) --设置精炼等级显示文本的偏移
end

--此示例代码运行成功如下图所示。根据自身的装备，实际展示的物品也会不同。

ItemCtrlSetRefineLevelPos
<上一篇:设置物品框是否可使用右键下一篇:设置物品框是否显示物品数量>
ItemCtrlSetShowItemCount
设置物品框是否显示物品数量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-03-27 00:00:00
此函数设置物品框是否显示物品数量。

如下图中，物品右下角的数字即为物品数量。

item count example

语法
Luacopy 复制
GUI:ItemCtrlSetShowItemCount(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true显示物品数量

false不显示物品数量

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    GUI:ItemCtrlSetShowItemCount(_GUIHandle, true) --设置显示物品数量
end

--此示例代码运行成功如下图所示。

ItemCtrlSetShowItemCount.png
<上一篇:设置物品框中精炼等级文本位置下一篇:设置物品框是否显示锁定图标>
ItemCtrlSetShowLockImage
设置物品框是否显示锁定图标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定的物品框是否显示锁定图标。

请参见接口ItemCtrlSetLockImage的说明了解如何设置物品框显示绑定物品的锁图标。

lock_icon
对于指定的物品框，可调用此函数禁止显示锁定图标。

语法
Luacopy 复制
GUI:ItemCtrlSetShowLockImage(
    _HandleID,
    _ShowLockImage
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_ShowLockImage

bool

 
是否显示锁定图标。

true显示锁定图标。

false不显示锁定图标。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30) --创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetShowLockImage(_GUIHandle, false)--设置不显示锁定图标
end
<上一篇:设置物品框是否显示物品数量下一篇:设置物品框是否显示品质比较箭头>
ItemCtrlSetShowQualityArrow
设置物品框是否显示品质比较箭头

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置物品框是否显示品质比较箭头。

当玩家背包中存在比装备栏中品质更好的装备时，物品栏的物品会显示如下图中的绿色箭头（默认样式）来提示玩家。

backpack

如设置为不显示，即使背包中有比装备栏更好的装备，此箭头也不显示。

如需设置品质比较箭头的样式和大小，请参见接口ItemCtrlSetQualityImage的说明。

语法
Luacopy 复制
GUI:ItemCtrlSetShowQualityArrow(
    _HandleID,
    _ShowQualityArrow
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_ShowQualityArrow

bool

 
true显示品质比较箭头

false不显示品质比较箭头

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Item0", 0, 500, 500, 68, 68)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetShowQualityArrow(_GUIHandle, false)--设置不显示品质比较箭头
end

--请将示例代码复制到Package.lua中创建物品框。
<上一篇:设置物品框是否显示锁定图标下一篇:设置物品框是否显示精炼等级>
ItemCtrlSetShowRefineLevel
设置物品框是否显示精炼等级

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2025-04-22 00:00:00
此函数设置指定的物品框是否显示精炼等级。

精炼等级文本默认是全局显示的，这种情况下，可使用该函数单独设置某个物品框是否显示精炼等级。

如全局变量ItemCtrlShowRefineLevel设置了全局不显示精炼等级，则该函数不起作用。

语法
Luacopy 复制
GUI:ItemCtrlSetShowRefineLevel(
    _HandleID,
    value
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

value

bool

 
是否显示精炼等级

true显示精炼等级

false不显示精炼等级

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
UI:Lua_GetPlayerSelfEquipData() --获取自身装备GUID列表
local tEquipList = LuaRet
_GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl", 1853800010, 200, 400, 66, 66) --创建物品框
if _GUIHandle ~= 0 then
  RDItemCtrlSetGUIDataPropByGUID(_GUIHandle, "", tEquipList[1])--根据GUID填充物品框
  GUI:ItemCtrlSetShowRefineLevel(_GUIHandle, false) --设置该物品框不显示精炼等级
end

--此示例代码运行成功如下图所示。根据自身的装备，实际展示的物品也会不同。

ItemCtrlSetShowRefineLevel
<上一篇:设置物品框是否显示品质比较箭头下一篇:设置物品框Tips是否置顶显示>
ItemCtrlSetTipsShowInTop
设置物品框Tips是否置顶显示

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置物品框的Tips是否置顶显示。

note_icon 备注
消息窗口除外。即当有消息窗口时，Tips界面即使设置了置顶显示，也会置于消息窗口的下层。

语法
Luacopy 复制
GUI:ItemCtrlSetTipsShowInTop(
    _HandleID,
    _ShowTipInTop
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_ShowTipInTop

bool

 
Tips是否置顶显示：

true置顶显示。

false不置顶显示。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_GUIHandle = GUI:ItemCtrlCreate(_Parent, "TItem11", 1853800010, 450 , 408, 66, 66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, nil,"盾牌1", 1, true) --"盾牌1"是所在区的物品索引名称
    GUI:ItemCtrlSetTipsShowInTop(_GUIHandle, true)
end

--此示例代码运行成功如下图所示。

ItemCtrlSetTipsShowInTop
<上一篇:设置物品框是否显示精炼等级下一篇:设置物品框顶部图片>
ItemCtrlSetTopImageID
设置物品框顶部图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置物品框顶部的图片。

note_icon 备注
端游优先使用顶部图片来显示大图标。

caution_icon 注意
此函数在手游中不起作用。

语法
Luacopy 复制
GUI:ItemCtrlSetTopImageID(
    _HandleID,
    _ImgId
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

_ImgId

int

 
物品框顶部图片的ID。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置物品框Tips是否置顶显示下一篇:设置物品框描绘时间间隔>
ItemCtrlSetUseCustomDrawInterval
设置物品框描绘时间间隔

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置物品框描绘时间间隔。

note_icon 备注
原手游中物品框描绘更新的时间间隔默认为150ms，若物品框上有序列帧子控件，即使序列帧动画的描绘时间间隔小于150ms，也是每150ms更新一帧。

此接口可以让序列帧动画播放更加流畅。

语法
Luacopy 复制
GUI:ItemCtrlSetUseCustomDrawInterval(
    _HandleID,
    _Use,
    _Interval
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Use

bool

 
是否设置新的描绘时间间隔

true设置新的描绘时间间隔

false使用默认的时间间隔（150ms）

_Interval

int

 
描绘时间间隔

note_icon 备注
若设置的描绘时间间隔小于50ms，程序内部会自动调整为50ms。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
_GUIHandle = GUI:ItemCtrlCreate(_ItemList, "Item"..i, 0, 38 + intervalX*(index_x - 1)-20, 33-12 + intervalY*(index_y - 1), 66, 66)
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetUseCustomDrawInterval(_GUIHandle, true, 50)
    _GUIHandle = GUI:ImageCreate(_GUIHandle,"effect",3031805000,0,0)
    if _GUIHandle ~= 0 then 
        GUI:WndSetCanRevMsg(_GUIHandle,false) --设置物品框不响应操作
    end
    for k,v in pairs(reward_list[i][1]) do
        RDItemCtrlSetGUIDataPropByKeyName(_ItemList, "Item"..i, k, v, true) --根据索引名称填充物品框 
    end
end

--此示例代码运行前效果如下图所示。

ItemCtrlSetUseCustomDrawInterval.gif

--此示例代码运行后效果如下图所示。

ItemCtrlSetUseCustomDrawInterval_2.gif
<上一篇:设置物品框顶部图片下一篇:设置物品框是否显示品质背景框>
RDItemCtrlShowQualityBG
设置物品框是否显示品质背景框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-01-24 00:00:00
此函数设置指定物品框控件是否显示品质背景框（包括品质框的边框和底框）。

语法
Luacopy 复制
GUI:RDItemCtrlShowQualityBG(
    handle,
    flag
)
参数
handle

long

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

flag

bool

 
是否显示品质背景框

true显示

false不显示

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

 
v1.2

 
新增对2D手游支持

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
<上一篇:设置物品框描绘时间间隔
ItemCtrlGetBackImageID
获取物品框背景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框的背景图片。

背景图片会显示在物品的下方。

如背包内的物品框中物品下方或空白物品栏的背景图片。

backpack
语法
Luacopy 复制
GUI:ItemCtrlGetBackImageID(
    _HandleID,
    _ImgId
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
物品框背景图片ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemCtrlImgID = GUI:ItemCtrlGetBackImageID(_GUIHandle)--获取背景图片ID
end
下一篇:获取物品框中物品大图标的偏移>
ItemCtrlGetBigIconOffset
获取物品框中物品大图标的偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框中物品大图标的X坐标和Y坐标的偏移量。

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的偏移量存储在LuaRet中。

LuaRet[1]图片的水平偏移量；

LuaRet[2]图片的垂直偏移量。

语法
Luacopy 复制
GUI:ItemCtrlGetBigIconOffset(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
bool

 
true获取成功。

false获取失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 30, -30)--设置大图标物品框偏移
    if GUI:ItemCtrlGetBigIconOffset(_GUIHandle) then --执行成功
        local _XoffSet = LuaRet[1]
        local _YoffSet = LuaRet[2]
end
<上一篇:获取物品框背景图片下一篇:获取物品框中物品是否为大图标>
ItemCtrlGetBigIcon
获取物品框中物品是否为大图标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框的类型是大图标还是普通类型。

相比普通物品框，大图标类型的物品框尺寸大小并不局限在固定的大小方格内。

语法
Luacopy 复制
GUI:ItemCtrlGetBigIcon(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

int

 
大图标类型

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemBigIcon = GUI:ItemCtrlGetBigIcon(_GUIHandle) --获取大图标还是普通类型
end
<上一篇:获取物品框中物品大图标的偏移下一篇:获取物品框中道具的颜色>
ItemCtrlGetColor
获取物品框中道具的颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-10-25 00:00:00
此函数获取指定物品框控件中道具的颜色。

参考 ItemCtrlSetColor

语法
Luacopy 复制
GUI:ItemCtrlGetColor(
    handle
)
参数
handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
获取成功则返回指定物品框控件中道具的颜色属性

获取失败则返回0

版本历史
v1.0

 
首次发布

 
v1.1

 
增加对3D的支持

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,200,200,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    GUI:ItemCtrlSetColor(_GUIHandle,COLOR_RED) --设置道具颜色为红色
    dbg("当前控件设置的颜色属性为:"..GUI:ItemCtrlGetColor(_GUIHandle)) --获取道具颜色属性
end

--此示例代码运行成功如下图所示。

ItemCtrlGetColor_2.png

ItemCtrlGetColor.png
<上一篇:获取物品框中物品是否为大图标下一篇:获取物品框默认图片>
ItemCtrlGetDefaultImage
获取物品框默认图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框的默认图片ID。

语法
Luacopy 复制
GUI:ItemCtrlGetDefaultImage(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
物品框默认图片ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemCtrlImgID = GUI:ItemCtrlGetDefaultImage(_GUIHandle)--获取默认图片ID
end
<上一篇:获取物品框中道具的颜色下一篇:获取物品框是否强制禁用tip>
ItemCtrlGetForceDisableTip
获取物品框是否强制禁用tip

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框是否强制禁用tip。

如下图显示的“逍遥游”物品的介绍框即为tip。禁用后，点击物品框时将不再显示tip。

tip example
语法
Luacopy 复制
GUI:ItemCtrlGetForceDisableTip(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true禁用tip

false未禁用tip

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlGetForceDisableTip(_GUIHandle) --获取物品框是否显示tip
end
<上一篇:获取物品框默认图片下一篇:获取物品框前景图片>
ItemCtrlGetFrontImageID
获取物品框前景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框前景图片。

语法
Luacopy 复制
GUI:ItemCtrlGetFrontImageID(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
物品框前景图片ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemCtrlImgID = GUI:ItemCtrlGetFrontImageID(_GUIHandle)--获取前景图片ID
end
<上一篇:获取物品框是否强制禁用tip下一篇:获取物品框中物品的属性值>
ItemCtrlGetGUIDataPropByType
获取物品框中物品的属性值

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数根据指定的GUIData属性类型获取物品框中物品对应的属性值。

语法
Luacopy 复制
GUI:ItemCtrlGetGUIDataPropByType(
    _HandleID, 
    _PropType
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_PropType

int

 
GUIData属性类型

点击此处了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的物品的GUIData属性值存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
for i = 1,2 do 
    local _Item = GUI:ItemCtrlCreate(_Parent,"Item0"..i,1853600001,60 + i * 120 + 100, 280,66,66 )
    if _Item ~= 0 then 
        RDItemCtrlSetGUIDataPropByKeyName(_Item,nil,"武器26117",1,false) --将道具放入物品框中
        if _Item ~= 0 then
            local _ItemProp = GUI:ItemCtrlGetGUIDataPropByType(_Item, 5) --获取物品框中物品的属性值
            if _ItemProp then
                dbg(tostring(_ItemProp).."  "..LuaRet)    
            end
        end
    end 
end

--此示例代码运行成功如下图所示。

ItemCtrlGetGUIDataPropByType.png
<上一篇:获取物品框前景图片下一篇:获取物品框中物品的GUIData句柄>
ItemCtrlGetGUIData
获取物品框中物品的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框中物品的GUIData句柄。

语法
Luacopy 复制
GUI:ItemCtrlGetGUIData(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
执行成功则返回物品的GUIData句柄

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN3",1850400004,335,126,66,66)
if _GUIHandle ~= 0 then
    dbg(GUI:ItemCtrlGetGUIData(_GUIHandle).." 物品的GUIData句柄")--获取物品的GUIData句柄
end

--此示例代码运行成功如下图所示。

ItemCtrlGetGUIData.png
<上一篇:获取物品框中物品的属性值下一篇:获取物品框选中图片>
ItemCtrlGetHighlightImageID
获取物品框选中图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取高亮物品框时（即被选中）要显示的图片。

语法
Luacopy 复制
GUI:ItemCtrlGetHighlightImageID(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
物品框选中图片ID

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemCtrlImgID = GUI:ItemCtrlGetHighlightImageID(_GUIHandle)--获取物品框选中图片ID
end
<上一篇:获取物品框中物品的GUIData句柄下一篇:获取物品框的图标类型>
ItemCtrlGetIconImageType
获取物品框的图标类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框的图标类型，即普通图标或大图标。

语法
Luacopy 复制
GUI:ItemCtrlGetIconImageType(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
返回图标类型：

0普通图标

其他非0值代表大图标

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemCtrlIconImageType = GUI:ItemCtrlGetIconImageType(_GUIHandle)--获取物品框的图标类型
end
<上一篇:获取物品框选中图片下一篇:获取物品框中物品的图标尺寸大小>
ItemCtrlGetIconSize
获取物品框中物品的图标尺寸大小

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-04-22 00:00:00
此函数获取指定物品框控件中物品的图标尺寸大小。

参考 ItemCtrlSetIconSize

语法
Luacopy 复制
GUI:ItemCtrlGetIconSize(
    _GUIHandle
)
参数
_GUIHandle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

note_icon 备注
获取的图标尺寸信息存储在全局变量LuaRet中。

LuaRet[1]：图标的宽度（单位为像素（px））

LuaRet[2]：图标的高度（单位为像素（px））

若未使用接口GUI:ItemCtrlSetIconSize设置物品图标尺寸，则直接返回-1（为默认值）；

若获取的图标宽度和高度均为0，则代表获取失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl1", 1850400004, 100, 200, 70, 70) --创建物品框1
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false) --根据物品的索引名称填充物品框
    GUI:ItemCtrlSetIconSize(_GUIHandle,60,60) --设置指定物品框控件中物品的图标尺寸大小为60*60
    GUI:ItemCtrlGetIconSize(_GUIHandle) --获取指定物品框控件中物品的图标尺寸大小
    dbg("物品框1中物品的图标尺寸大小为:"..LuaRet[1].."*"..LuaRet[2])
end

local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl2", 1850400004, 100, 300, 70, 70) --创建物品框2
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false) --根据物品的索引名称填充物品框
    GUI:ItemCtrlSetIconSize(_GUIHandle,20,20) --设置指定物品框控件中物品的图标尺寸大小为20*20
    GUI:ItemCtrlGetIconSize(_GUIHandle) --获取指定物品框控件中物品的图标尺寸大小
    dbg("物品框2中物品的图标尺寸大小为:"..LuaRet[1].."*"..LuaRet[2])
end

local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl3", 1850400004, 100, 400, 70, 70) --创建物品框3
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false) --根据物品的索引名称填充物品框
    GUI:ItemCtrlGetIconSize(_GUIHandle) --获取指定物品框控件中物品的图标尺寸大小
    dbg("物品框3中物品的图标尺寸大小为:"..LuaRet[1].."*"..LuaRet[2])
end

--此示例代码运行成功如下图所示。

--从上到下依次为物品框1、物品框2和物品框3，其中物品框1和物品框2分别设置了对应的物品图标尺寸，物品框3未设置物品图标尺寸。

ItemCtrlGetIconSize.png

ItemCtrlGetIconSize_2.png
<上一篇:获取物品框的图标类型下一篇:获取物品框数据是否自动管理>
ItemCtrlGetItemDataAutoManager
获取物品框数据是否自动管理

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框控件中的物品数据是否由程序自动管理。

语法
Luacopy 复制
GUI:ItemCtrlGetItemDataAutoManager(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true自动管理

false脚本管理

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemCtrlAutoMgmt = GUI:ItemCtrlGetItemDataAutoManager(_GUIHandle) --获取物品数据是否自动管理
end
<上一篇:获取物品框中物品的图标尺寸大小下一篇:获取物品框中物品数量数字的格式信息>
ItemCtrlGetNumberConfig
获取物品框中物品数量数字的格式信息

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-04-07 00:00:00
此函数获取指定物品框中物品数量数字的格式信息，如字体名、偏移量等。

如下图中，物品右下角的数字即为物品数量。

item count example

语法
Luacopy 复制
GUI:ItemCtrlGetNumberConfig(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
true指定的物品框句柄有效

false指定的物品框句柄无效，请检查句柄参数

note_icon 备注
获取的格式信息存储在全局变量LuaRet中。

LuaRet[1]：字体名

LuaRet[2]：水平方向上的偏移（单位为像素（px））

LuaRet[3]：垂直方向上的偏移（单位为像素（px））

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    dbg("\nkeyName为：".. RDItemCtrlGetGUIDataKeyName(_GUIHandle,nil))
end

_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN2",1850400004,515,200,66,66)
if _GUIHandle ~= 0 then
    local _GUIData = RDItemCtrlGetGUIData(_Parent, "ItemN1") --获取物品框ItemN1中物品的GUIData句柄
    if _GUIData ~= 0 then 
        RDItemCtrlFillGUIData(_GUIHandle,nil,_GUIData)  --根据物品的GUIData句柄填充物品框ItemN2
        GUI:ItemCtrlSetNumberConfig(_GUIHandle,"Big40",-20,-15)
        GUI:ItemCtrlGetNumberConfig(_GUIHandle)
        dbg("数字字体为"..LuaRet[1].."偏移X为"..LuaRet[2].."偏移Y为"..LuaRet[3])
    end 
end

--此示例代码运行成功如下图所示。根据自身的装备，实际展示的物品也会不同。

ItemCtrlSetNumberConfig

--控制台输出：keyName为：100绑定元宝
--数字字体为Big40偏移X为-20偏移Y为-15
<上一篇:获取物品框数据是否自动管理下一篇:获取物品框是否可使用右键>
ItemCtrlGetRBtnUse
获取物品框是否可使用右键

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取右键点击物品框是否使用物品的属性。

语法
Luacopy 复制
GUI:ItemCtrlGetRBtnUse(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true右键点击物品框使用物品

false右键点击物品框无任何作用

note_icon 备注
即使获取为true，手游中右键点击物品框使用物品的功能已不再有效。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    local _ItemCtrlRBtnUseItem = GUI:ItemCtrlGetRBtnUse(_GUIHandle) --获取右键点击是否使用物品的属性
end
<上一篇:获取物品框中物品数量数字的格式信息下一篇:获取物品框是否显示物品数量>
ItemCtrlIsShowItemCount
获取物品框是否显示物品数量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-03-27 00:00:00
此函数获取物品框是否显示物品数量。

如下图中，物品右下角的数字即为物品数量。

item count example

语法
Luacopy 复制
GUI:ItemCtrlIsShowItemCount(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
属性

bool

 
true显示物品数量

false不显示物品数量

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    GUI:ItemCtrlSetShowItemCount(_GUIHandle, true) --设置显示物品数量
    local _ItemCountFlag = GUI:ItemCtrlIsShowItemCount(_GUIHandle) --获取是否显示物品数量属性
    if _ItemCountFlag == true then
        dbg("显示")
    else
        dbg("不显示")
    end
end

--此示例代码运行成功后，控制台会输出：“显示”。
<上一篇:获取物品框是否可使用右键
ItemCtrlClearItemData
清空物品框数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数清空物品框中原有的数据。

语法
Luacopy 复制
GUI:ItemCtrlClearItemData(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30) --创建物品框
local _ItemHandle = CL:GetEquimentItemDataPart(1)--获取角色自身穿着的武器的GUIData句柄，参数“1”代表物品位置类型中的“武器”
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetGUIData(_GUIHandle, _ItemHandle)--传入该武器的GUIData句柄
    GUI:ItemCtrlClearItemData(_GUIHandle)--清空物品框所有数据
end
下一篇:清除物品框tips>
ItemCtrlClearTips
清除物品框tips

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数清除指定物品框所关联tips的全部数据，并重新加载。

note_icon 备注
手游和H5调用此接口已无效果。

语法
Luacopy 复制
GUI:ItemCtrlClearTips(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 200, 30, 30)--创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlClearTips(_GUIHandle)--清除物品框tips
end
<上一篇:清空物品框数据下一篇:设置是否显示物品框中装备的Tips比较>
ItemCtrlEnableCompareTips
设置是否显示物品框中装备的Tips比较

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-05-27 00:00:00
此函数设置是否显示指定物品框控件中装备的Tips比较。

语法
Luacopy 复制
GUI:ItemCtrlEnableCompareTips(
    handle,
    enable
)
参数
handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

enable

bool

 
是否显示装备的Tips比较

true显示（为默认值）

false不显示

note_icon 备注
此接口优先级高于全局变量CompareFuZhouTip。

全局变量CompareFuZhouTip仅在此参数设置为true时生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游和3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_GUIHandle = GUI:ItemCtrlCreate(_Parent, "Item", 1853800010, 200, 200, 66, 66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_Parent, "Item","战士50紫武器", 1, false) --根据物品的索引名称填充物品框控件
    GUI:WndSetEnableM(_GUIHandle, true) --设置物品框控件可用
    GUI:ItemCtrlEnableCompareTips(_GUIHandle, true) --设置显示指定物品框控件中装备的Tips比较
end

--当接口GUI:ItemCtrlEnableCompareTips的参数enable设置为true时，此示例代码运行效果如下图所示。

ItemCtrlEnableCompareTips_2.png

--当接口GUI:ItemCtrlEnableCompareTips的参数enable设置为false时，此示例代码运行效果如下图所示。

ItemCtrlEnableCompareTips.png
<上一篇:清除物品框tips下一篇:根据JSON字符串填充物品框物品>
ItemCtrlSetJson
根据JSON字符串填充物品框物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数根据JSON字符串填充物品框物品。

语法
Luacopy 复制
GUI:ItemCtrlSetJson(
    _HandleID,
    _JsonString
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_JsonString

string

 
JSON字符串

具体格式请参见此处

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN17",1850400004,156,276,66,66)
if _GUIHandle ~= 0 then
    local str = [[{"i":2533,"g":"4a9315cac4f5c285","n":"斩夜","s":22,"a":1,"d":100000,"dm":100000,"eq":{}}}}]]
    GUI:ItemCtrlSetJson(_GUIHandle,str)
end

--此示例代码运行成功如下图所示。

ItemCtrlSetJson.png
<上一篇:设置是否显示物品框中装备的Tips比较
下面是封装接口：
RDItemCtrlClearGUIData
清除物品框中已有的物品数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数清除物品框中已有的物品数据，使其重置为无物品状态。

语法
Luacopy 复制
RDItemCtrlClearGUIData(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN8",1850400004,66,201,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"10000绑定元宝",2,false)  --根据索引名称（KeyName）填充物品框 
    RDItemCtrlClearGUIData(_GUIHandle,nil)  --清除物品框中已有的物品数据
end

--此示例代码运行成功如下图所示。


下一篇:清除物品框tips>
RDItemCtrlClearTips
清除物品框tips

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数清除指定物品框所关联tips的全部数据，并重新加载。

note_icon 备注
手游和H5调用此封装接口已无效果。

语法
Luacopy 复制
RDItemCtrlClearTips(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:清除物品框中已有的物品数据下一篇:根据物品的GUIData句柄填充物品框>
RDItemCtrlFillGUIData
根据物品的GUIData句柄填充物品框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据物品的GUIData句柄填充物品框。

语法
Luacopy 复制
RDItemCtrlFillGUIData(
    _Handle,
    _Info,
    _GUIDataHandle
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_GUIDataHandle

int

 
物品的GUIData句柄

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    dbg("\nkeyName为：".. RDItemCtrlGetGUIDataKeyName(_GUIHandle,nil))
end

_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN2",1850400004,515,200,66,66)
if _GUIHandle ~= 0 then
    local _GUIData = RDItemCtrlGetGUIData(_Parent, "ItemN1") --获取物品框ItemN1中物品的GUIData句柄
    if _GUIData ~= 0 then 
        RDItemCtrlFillGUIData(_GUIHandle,nil,_GUIData)  --根据物品的GUIData句柄填充物品框ItemN2
    end 
end

--此示例代码运行成功如下图所示。

RDItemCtrlFillGUIData.png
<上一篇:清除物品框tips下一篇:获取物品框指向物品的索引名>
RDItemCtrlGetGUIDataKeyName
获取物品框指向物品的索引名

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-19 00:00:00
此函数获取物品框指向物品的索引名（KeyName）。

note_icon 备注
此接口只能获取使用GUID填充的物品框中对应物品的索引名。

语法
Luacopy 复制
RDItemCtrlGetGUIDataKeyName(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

返回值
string

 
执行成功则返回物品的索引名（KeyName）

执行失败则返回空字符串

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN5",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    dbg("\nkeyName为：".. RDItemCtrlGetGUIDataKeyName(_GUIHandle,nil))
end

--此示例代码运行成功如下图所示。

RDItemCtrlGetGUIDataKeyName_2.png

RDItemCtrlGetGUIDataKeyName.png
<上一篇:根据物品的GUIData句柄填充物品框下一篇:获取物品框中物品的属性值>
RDItemCtrlGetGUIDataPropByType
获取物品框中物品的属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取物品框中物品的属性值。

note_icon 备注
此接口效果与接口GUI:ItemCtrlGetGUIDataPropByType相同，但参数不同。

手游中不可使用接口GUI:ItemCtrlGetGUIDataPropByType代替此接口。

语法
Luacopy 复制
RDItemCtrlGetGUIDataPropByType(
    _Handle,
    _Info,
    _PropType
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_PropType

int

 
GUIData属性类型

点击此处了解更多信息

返回值
操作结果

 
获取成功则返回物品对应属性的属性值

note_icon 备注
属性值的数据类型根据指定的GUIData属性类型确定

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN4",1850400004,425,126,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"10000绑定元宝",2,false)  --根据物品的索引名称填充物品框
    dbg("数量为:" ..RDItemCtrlGetGUIDataPropByType(_GUIHandle,nil,ITEMGUIDATA_ITEMCOUNT))  --获取物品框中物品的数量
end

--此示例代码运行成功如下图所示。

RDItemCtrlGetGUIDataPropByType.png
<上一篇:获取物品框指向物品的索引名下一篇:获取物品框中物品的GUIData句柄>
RDItemCtrlGetGUIData
获取物品框中物品的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数获取物品框中物品的GUIData句柄。

note_icon 备注
此接口效果与接口GUI:ItemCtrlGetGUIData相同，但参数不同。

语法
Luacopy 复制
RDItemCtrlGetGUIData(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

返回值
int

 
执行成功则返回物品的GUIData句柄

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN3",1850400004,335,126,66,66)
if _GUIHandle ~= 0 then
    dbg(RDItemCtrlGetGUIData(_GUIHandle,"").." 物品的GUIData句柄")
end

--此示例代码运行成功如下图所示。

RDItemCtrlGetGUIData_1.png
<上一篇:获取物品框中物品的属性值下一篇:设置物品框背景图片>
RDItemCtrlSetBackImageID
设置物品框背景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框的背景图片。

背景图片显示在物品图片的下方。

note_icon 备注
端游中，背景图片默认以物品框左上角为原点创建。

手游和H5中，背景图片默认从物品框中心点绘制。

语法
Luacopy 复制
RDItemCtrlSetBackImageID(
    _Handle,
    _Info,
    _ImgId
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_ImgId

int

 
背景图片的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN14",1850400004,605,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    RDItemCtrlSetBackImageID(_GUIHandle,nil,1800000065)  --设置物品框的背景图片
end

--此示例代码运行成功如下图所示。

--端游：

RDItemCtrlSetBackImageID.png

--手游：

RDItemCtrlSetBackImageID_2.png
<上一篇:获取物品框中物品的GUIData句柄下一篇:设置物品框中物品大图标的偏移>
RDItemCtrlSetBigIconOffset
设置物品框中物品大图标的偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框中物品大图标的X坐标和Y坐标的偏移，可用于校正物品图片的位置。

语法
Luacopy 复制
RDItemCtrlSetBigIconOffset(
    _Handle,
    _Info,
    _OffsetX,
    _OffsetY
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_OffsetX

int

 
图片的水平偏移量

_OffsetY

int

 
图片的垂直偏移量

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,245,200,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false)  --根据物品的索引名称填充物品框
    RDItemCtrlSetBigIcon(_GUIHandle,nil,true)  --设置物品框中为大图标物品框
end

_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN2",1850400004,245,200,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false)  --根据物品的索引名称填充物品框
    RDItemCtrlSetBigIcon(_GUIHandle,nil,true)  --设置物品框中为大图标物品框
    RDItemCtrlSetBigIconOffset(_GUIHandle,nil,200,0)  --设置物品框中物品大图标的水平偏移为200
end

--此示例代码运行成功如下图所示（左边为偏移前的图标，右边为偏移后的图标）。

RDItemCtrlSetBigIconOffset.png
<上一篇:设置物品框背景图片下一篇:设置物品框中的物品是否显示为大图标>
RDItemCtrlSetBigIcon
设置物品框中的物品是否显示为大图标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框中的物品是否显示为大图标。

大图标物品一般用于角色模型中各部位的显示。

语法
Luacopy 复制
RDItemCtrlSetBigIcon(
    _Handle,
    _Info,
    _IsBigIcon
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_IsBigIcon

bool

 
物品是否显示为大图标

true显示为大图标

false显示为普通图标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN10",1850400004,245,200,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false)  --根据物品的索引名称填充物品框
    RDItemCtrlSetBigIcon(_GUIHandle,nil,true)  --设置物品框中的物品显示为大图标
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetBigIcon.png
<上一篇:设置物品框中物品大图标的偏移下一篇:设置物品框特效图片>
RDItemCtrlSetEffectImageID
设置物品框特效图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框特效图片。

特效动画图片显示在物品图片和前景图片之间。

语法
Luacopy 复制
RDItemCtrlSetEffectImageID(
    _Handle,
    _Info,
    _ImgId,
    _Scale
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_ImgId

int

 
物品框特效图片的ID

_Scale

float

 
特效图片的缩放比例

例如：2表示为原大小的2倍

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN16",1850400004,66,276,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"斩夜",1,false)  --根据物品的索引名称填充物品框
    RDItemCtrlSetEffectImageID(_GUIHandle,nil, 3021800000,0.5)  --设置物品框特效图片和缩放比例
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetEffectImageID.png
<上一篇:设置物品框中的物品是否显示为大图标下一篇:设置物品框前景图片>
RDItemCtrlSetFrontImageID
设置物品框前景图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框前景图片。

前景图片会显示在物品图片的上方。

note_icon 备注
端游中，前景图片默认以物品框左上角为原点创建，默认偏移量为(X：-16, Y：-16)。

手游和H5中，前景图片默认从物品框中心点绘制，并自动缩放为物品框的大小。

可调用ItemCtrlSetFrontImageOffset接口调整偏移量。

语法
Luacopy 复制
RDItemCtrlSetFrontImageID(
    _Handle,
    _Info,
    _ImgId
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_ImgId

int

 
前景图片的ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN13",1850400004,515,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    RDItemCtrlSetFrontImageID(_GUIHandle,nil,1800000065)  --设置物品框的前景图片
end

--此示例代码运行成功如下图所示。

--端游：

RDItemCtrlSetFrontImageID.png

--手游：

RDItemCtrlSetFrontImageID_2.png
<上一篇:设置物品框特效图片下一篇:根据索引名填充物品框数据>
RDItemCtrlSetGUIDataByKeyName
根据索引名填充物品框数据

手游 2Dsupport 3Dsupport

端游 2Dno_support 3Dno_support

H5 2Dno_support

更新时间：2024-05-11 00:00:00
此函数根据索引名（KeyName）填充物品框。

语法
Luacopy 复制
RDItemCtrlSetGUIDataByKeyName(
    _Handle,
    _KeyName,
    _Count,
    _IsBind
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_KeyName

string

 
物品的索引名（KeyName）

_Count

int

 
物品堆叠的数量

_IsBind

bool

 
物品是否绑定

true绑定状态

false非绑定状态

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN9",1850400004,156,201,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataByKeyName(_GUIHandle,"强化石" , 1, false)
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetGUIDataByKeyName.png
<上一篇:设置物品框前景图片下一篇:设置物品框是否有效>
RDItemCtrlSetGUIDataEnable
设置物品框是否有效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框是否有效。

语法
Luacopy 复制
RDItemCtrlSetGUIDataEnable(
    _Handle,
    _Info,
    _Enable
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_Enable

bool

 
物品框是否有效

true物品框有效

false物品框无效

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN7",1850400004,695,126,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataEnable(_GUIHandle,nil,true)  --设置物品框为有效状态
end
<上一篇:根据索引名填充物品框数据下一篇:根据物品GUID填充物品框>
RDItemCtrlSetGUIDataPropByGUID
根据物品GUID填充物品框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据物品的GUID填充物品框控件，填充后物品框显示物品的实体属性。

语法
Luacopy 复制
RDItemCtrlSetGUIDataPropByGUID(
    _Handle,
    _Info,
    _ItemGUID
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_ItemGUID

string

 
物品的GUID

note_icon 备注
服务端传过来的GUID需先调用接口Lua_Str2GUID将服务端GUID转换为客户端GUID。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN5",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    local itemGUIDTable = {} 
    if CL:GetPackageItemGUIDList() then --获取背包中的道具GUID
        itemGUIDTable = LuaRet
    end
    RDItemCtrlSetGUIDataPropByGUID(_GUIHandle,nil,itemGUIDTable[1]) --使用获取的第一个物品的GUID填充物品框
    dbg("\nkeyName为：".. RDItemCtrlGetGUIDataKeyName(_GUIHandle,nil))  --获取物品框指向物品的索引名称
end

--此示例代码运行成功如下图所示。

RDItemCtrlGetGUIDataKeyName_2.png

RDItemCtrlGetGUIDataKeyName.png
<上一篇:设置物品框是否有效下一篇:根据物品ID填充物品框>
RDItemCtrlSetGUIDataPropByItemID
根据物品ID填充物品框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据物品的模板ID填充物品框控件。

语法
Luacopy 复制
RDItemCtrlSetGUIDataPropByItemID(
    _Handle,
    _Info,
    __ItemID,
    _Count,
    _IsBind
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_ItemID

int

 
物品的模板ID

_Count

int

 
物品堆叠的数量

_IsBind

bool

 
物品是否绑定

true绑定状态

false非绑定状态

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN19",1850400004,335,276,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByItemID(_GUIHandle,nil,2533,1,true)  --根据物品的模板ID填充物品框
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetGUIDataPropByItemID.png
<上一篇:根据物品GUID填充物品框下一篇:根据索引名填充物品框>
RDItemCtrlSetGUIDataPropByKeyName
根据索引名填充物品框

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dno_support

更新时间：2024-10-25 00:00:00
此函数根据索引名（KeyName）填充物品框。

语法
Luacopy 复制
RDItemCtrlSetGUIDataPropByKeyName(
    _Handle,
    _Info,
    _KeyName,
    _Count,
    _IsBind
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_KeyName

string

 
物品的索引名（KeyName）

_Count

int

 
物品堆叠的数量

_IsBind

bool

 
物品是否绑定

true绑定状态

false非绑定状态

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN4",1850400004,425,126,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle,nil,"10000绑定元宝",2,false)  --根据物品的索引名称填充物品框
    dbg("数量为:" ..RDItemCtrlGetGUIDataPropByType(_GUIHandle,nil,ITEMGUIDATA_ITEMCOUNT))  --获取物品框中物品的数量
end

--此示例代码运行成功如下图所示。

RDItemCtrlGetGUIDataPropByType.png
<上一篇:根据物品ID填充物品框下一篇:设置物品框中物品的属性值>
RDItemCtrlSetGUIDataPropByType
设置物品框中物品的属性值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据GUIData属性类型设置物品框中物品的属性值。

语法
Luacopy 复制
RDItemCtrlSetGUIDataPropByType(
    _Handle,
    _Info,
    _PropType,
    _PropValue
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_PropType

int

 
GUIData属性类型

点击此处了解更多信息

_PropValue

 
属性值

属性值的数据类型根据指定的GUIData属性类型确定

返回值
bool

 
true设置属性成功

false设置属性失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN6",1850400004,605,126,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetGUIDataPropByType(_GUIHandle,nil,ITEMGUIDATA_INVALIDATE,true)  --设置物品框为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle,nil,ITEMGUIDATA_IMAGEID,1891410039)  --设置物品框中物品的图片ID
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetGUIDataPropByType.png
<上一篇:根据索引名填充物品框下一篇:设置物品框高亮图片>
RDItemCtrlSetHighlightImageID
设置物品框高亮图片

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框高亮时图片要显示的图片。

语法
Luacopy 复制
RDItemCtrlSetHighlightImageID(
    _Handle,
    _Info,
    _ImgId
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_ImgId

int

 
物品框高亮时显示的图片ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN15",1850400004,695,201,66,66)
if _GUIHandle ~= 0 then
    --将物品框设置为有效状态
    RDItemCtrlSetGUIDataPropByType(_GUIHandle, nil, ITEMGUIDATA_INVALIDATE, true) 
    RDItemCtrlSetHighlightImageID(_GUIHandle,nil,4001630108)  --设置物品框高亮时要显示的图片
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetHighlightImageID.png
<上一篇:设置物品框中物品的属性值下一篇:设置物品框数据是否可自动管理>
RDItemCtrlSetItemDataAutoManager
设置物品框数据是否可自动管理

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置物品框控件中的物品数据是否由程序自动管理。

note_icon 备注
此接口效果与接口GUI:ItemCtrlSetItemDataAutoManager相同，但参数不同。

一般情况下，物品数据由程序自动管理，否则由脚本管理物品框数据。

语法
Luacopy 复制
RDItemCtrlSetItemDataAutoManager(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_Flag

bool

 
是否设置自动管理

true设置自动管理

false设置由脚本管理

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,156,126,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetItemDataAutoManager(_GUIHandle,"",true)  --设置物品框数据由程序自动管理
end
<上一篇:设置物品框高亮图片下一篇:根据JSON字符串填充物品框物品>
RDItemCtrlSetJson
根据JSON字符串填充物品框物品

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据JSON字符串填充物品框物品。

语法
Luacopy 复制
RDItemCtrlSetJson(
    _Handle,
    _Info,
    _JsonString
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_JsonString

string

 
JSON字符串

具体格式请参见此处

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN17",1850400004,156,276,66,66)
if _GUIHandle ~= 0 then
    local str = [[{"i":2533,"g":"4a9315cac4f5c285","n":"斩夜","s":22,"a":1,"d":100000,"dm":100000,"eq":{}}}}]]
    RDItemCtrlSetJson(_GUIHandle,nil,str)  --根据JSON字符串填充物品框物品
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetJson.png
<上一篇:设置物品框数据是否可自动管理下一篇:一键设置物品框属性>
RDItemCtrlSetProp
一键设置物品框属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数一键设置物品框属性。

语法
Luacopy 复制
RDItemCtrlSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _AutoManager,
    _RBtnUse,
    _GUIDataEnable
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
物品框控件是否可用

true物品框控件可用

false物品框控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_AutoManager

bool

 
是否可自动管理

true可自动管理

false由脚本管理

_RBtnUse

bool

 
是否右键使用物品

true右键点击物品框使用物品

false右键点击物品框无任何作用

_GUIDataEnable

bool

 
物品框是否有效

true物品框有效

false物品框无效

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN0",1850400004,66,126,66,66)
if _GUIHandle ~= 0 then
    local _Visible,_Enable,_CanRevMsg,_AutoManager,_RBtnUse,_GUIDataEnable = true,true,true,true,true,true 
    --1. 是否可见；2.物品框控件是否可用；3.是否接收消息；4.是否可自动管理；5.是否右键使用物品；6.物品框是否有效
    RDItemCtrlSetProp(_GUIHandle,"",_Visible, _Enable, _CanRevMsg, _AutoManager, _RBtnUse, _GUIDataEnable)
end

--此示例代码运行成功如下图所示。

RDItemCtrlSetProp.png
<上一篇:根据JSON字符串填充物品框物品下一篇:设置物品框是否可使用右键>
RDItemCtrlSetRBtnUse
设置物品框是否可使用右键

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数设置右键点击物品框是否使用物品的属性。

note_icon 备注
此接口效果与接口GUI:ItemCtrlSetRBtnUse相同，但参数不同。

语法
Luacopy 复制
RDItemCtrlSetRBtnUse(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

_Flag

bool

 
是否右键点击物品框使用物品

true右键点击物品框使用物品

false右键点击物品框无任何作用

note_icon 备注
即使设置为true，手游中右键点击物品框使用物品的功能已不再生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN2",1850400004,245,126,66,66)
if _GUIHandle ~= 0 then
    RDItemCtrlSetRBtnUse(_GUIHandle,"",true)  --设置右键点击物品框使用物品
end
<上一篇:一键设置物品框属性下一篇:根据精炼等级显示精炼特效>
RDItemCtrlUpdateRefineAnimate
根据精炼等级显示精炼特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据装备的精炼等级在物品框中显示对应的精炼特效。

精炼等级为0级时无特效；精炼等级为1~5级时为一环特效；精炼等级为6~10级时为二环特效；精炼等级为11~15级时为三环特效，如下图所示（以官方45度美术资源展示（区号：3104）为例）。

图 1 精炼等级为1~5级时的特效

RDItemCtrlUpdateRefineAnimate.gif
图 2 精炼等级为6~10级时的特效

RDItemCtrlUpdateRefineAnimate_2.gif
图 3 精炼等级为11~15级时的特效

RDItemCtrlUpdateRefineAnimate_3.gif
note_icon 备注
该特效的样式根据游戏版本的不同，可能会有所不同。

精炼等级的特效动画可通过全局变量RefineImage进行修改。

语法
Luacopy 复制
RDItemCtrlUpdateRefineAnimate(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定物品框控件的描述

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN12",1850400004,425,201,66,66)
if _GUIHandle ~= 0 then
    local _ItemHandle = CL:GetEquimentItemDataPart(1)  --获取角色自身穿着的武器的GUIData句柄，参数“1”代表物品位置类型中的“武器”
    GUI:ItemCtrlSetGUIData(_GUIHandle, _ItemHandle)  --向物品框传入该武器的GUIData句柄
    RDItemCtrlUpdateRefineAnimate(_GUIHandle,nil)  --根据精炼等级显示精炼特效
end

--此示例代码运行成功如下图所示。

RDItemCtrlUpdateRefineAnimate.gif
<上一篇:设置物品框是否可使用右键




