菜单控件概览
更新时间：2023-05-31 00:00:00
菜单控件是按照游戏中功能分组排列的按钮集合。例如：游戏中排行榜复制姓名、复制行会名称以及查看资料的功能（如下图所示）。

menu_overview.png
创建控件
你可以使用下表所列的接口，创建菜单控件。

接口名	中文名	返回值类型	功能描述	适用客户端
MenuCreate	创建菜单	
int

此函数创建一个弹出菜单。	端游
设置控件
你可以使用下表所列的接口，设置菜单条目和菜单窗口是否显示。

接口名	中文名	返回值类型	功能描述	适用客户端
MenuSetAllItemVisiable	设置全部菜单条目是否可见	
bool

此函数设置全部菜单条目是否可见。	端游
MenuSetItemVisiable	设置指定菜单条目是否可见	
bool

此函数设置指定菜单条目是否可见	端游
获取控件信息
在创建或设置菜单控件后，可以通过以下接口获取菜单句柄。

接口名	中文名	返回值类型	功能描述	适用客户端
MenuGetMenu	获取菜单	
int

此函数尝试获取菜单句柄。	端游
其他操作
在创建或设置菜单控件后，可以通过以下接口添加、删除、重置或刷新菜单。

接口名	中文名	返回值类型	功能描述	适用客户端
MenuAddItem	添加菜单条目	
bool

此函数获取菜单窗口并为菜单添加菜单条目。	端游
MenuDeleteMenu	删除菜单	
bool

此函数获取菜单窗口并删除。	端游
MenuDelItem	删除菜单条目	
bool

此函数获取菜单窗口并从菜单中删除对应菜单条目。	端游
MenuDestroyMenu	重置菜单	
bool

此函数获取菜单窗口并重置菜单。	端游
MenuFlushMenu	刷新菜单	
bool

此函数获取菜单窗口并刷新菜单。	端游
MenuShowPopupMenu	设置菜单隐藏或显示	
bool

此函数获取菜单窗口并设置菜单隐藏或显示。	端游
<上一篇:骨骼动画概览下一篇:3D专用接口概览>
MenuSetAllItemVisiable
设置全部菜单条目是否可见

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-05-31 00:00:00
此函数设置全部菜单条目是否可见。

菜单句柄参数可通过全局变量Temporary来传递。

note_icon 备注
此接口设置全部菜单条目不可见仅在本次打开菜单时生效，即关闭菜单重新打开后失效。

语法
Luacopy 复制
GUI:MenuSetAllItemVisiable(
    _Flag
)
参数
_Flag

bool

 
true表示菜单条目可见

false表示菜单条目不可见

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224)
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
    GUI:MenuSetAllItemVisiable(false) --设置全部菜单条目不可见
end
下一篇:设置指定菜单条目是否可见>
MenuSetItemVisiable
设置指定菜单条目是否可见

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定菜单条目是否可见。

菜单句柄参数可通过全局变量Temporary来传递。

note_icon 备注
此接口设置菜单项不可见仅在本次打开菜单时生效，即关闭菜单重新打开后失效。

语法
Luacopy 复制
GUI:MenuSetItemVisiable(
    _ItemId,
    _Flag
)
参数
_ItemId

int

 
菜单条目的ID

_Flag

bool

 
true表示菜单条目可见

false表示菜单项条目可见

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
    GUI:MenuSetItemVisiable(1,false) --设置菜单条目1不可见
end

--此示例代码运行成功如下图所示。

MenuSetItemVisiable.png
<上一篇:设置全部菜单条目是否可见
MenuGetMenu
获取菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数尝试根据父窗口句柄获取菜单句柄。

语法
Luacopy 复制
GUI:MenuGetMenu(
    _HandleID
)
参数
_HandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息

返回值
int

 
获取成功则返回菜单句柄

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
    dbg("菜单句柄为："..GUI:MenuGetMenu(_GUIHandle)) --获取菜单句柄
end

--此示例代码运行成功如下图所示，同时控制台会输入如下内容。

MenuAddItem.png

MenuGetMenu.png
MenuAddItem
添加菜单条目

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并为菜单控件添加条目。

菜单句柄参数可通过全局变量Temporary来传递。

语法
Luacopy 复制
GUI:MenuAddItem(
    _ItemId,
    _TextInfo,
    _FlagImage,
    _ParentId,
    _ItemImg
)
参数
_ItemId

int

 
添加条目的ID

_TextInfo

string

 
添加的条目文本

_FlagImage

unsigned int

 
添加条目前面的图片

_ParentId

int

 
添加条目的父菜单项ID

note_icon 备注
当此参数设置为-1时，表示此菜单没有父菜单项。

_ItemImg

unsigned int

 
添加条目的背景图片

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
end

--此示例代码运行成功如下图所示。

MenuAddItem.png
下一篇:删除菜单条目>
MenuDelItem
删除菜单条目

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并从菜单中删除对应菜单条目。

菜单句柄参数可通过全局变量Temporary来传递。

caution_icon 注意
不可在菜单打开状态下进行删除，否则会导致程序崩溃。

语法
Luacopy 复制
GUI:MenuDelItem(
    _ItemId
)
参数
_ItemId

int

 
菜单条目的ID

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuDelItem(0) --删除菜单条目0
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
end

--此示例代码运行成功如下图所示。

MenuDelItem.png
<上一篇:添加菜单条目下一篇:删除菜单>
MenuDeleteMenu
删除菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数删除菜单。

caution_icon 注意
此接口删除的是菜单对象本身（不可重复删除），被删除的菜单后续不可再被使用。

不可在菜单打开状态下进行删除，否则会导致程序崩溃。

语法
Luacopy 复制
GUI:MenuDeleteMenu()
参数
无

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
end

CL:AddDelayTask("OnDeleteMenu()", 3000, 1) --添加一个定时器回调OnDeleteMenu()函数，间隔时间3000毫秒，回调1次

function OnDeleteMenu()
    local _GUIHandle = GetWindow(_Parent, "MenuTestWnd")
    GUI:MenuDeleteMenu() --删除菜单
end

--此示例代码运行成功如下图所示（打开菜单3秒后执行删除菜单的操作）。

MenuDeleteMenu.gif
<上一篇:删除菜单条目下一篇:重置菜单>
MenuDestroyMenu
重置菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数重置菜单。

菜单句柄参数可通过全局变量Temporary来传递。

note_icon 备注
此接口与MenuDeleteMenu接口的区别在于此接口并没有删除菜单本身，只是重置菜单的各项属性，后续仍可通过菜单句柄对菜单进行操作。

语法
Luacopy 复制
GUI:MenuDestroyMenu()
参数
无

返回值
bool

 
true重置成功

false重置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置

    GUI:MenuDestroyMenu() --重置菜单
    GUI:MenuAddItem(2,"测试菜单条目2",0,-1,1900340224) --添加菜单条目2
end

--此示例代码运行成功如下图所示（条目2为执行重置菜单操作后添加的条目）。

MenuAddItem_2.png
<上一篇:删除菜单下一篇:刷新菜单>
MenuFlushMenu
刷新菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并刷新菜单。

菜单句柄参数可通过全局变量Temporary来传递。

语法
Luacopy 复制
GUI:MenuFlushMenu()
参数
无

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
    GUI:MenuFlushMenu() --刷新菜单
end
<上一篇:重置菜单下一篇:设置菜单隐藏或显示>
MenuShowPopupMenu
设置菜单隐藏或显示

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并设置菜单隐藏或显示。

菜单句柄参数可通过全局变量Temporary来传递。

语法
Luacopy 复制
GUI:MenuShowPopupMenu(
    _UseMousePos
)
参数
_UseMousePos

bool

 
true表示在鼠标位置显示菜单

false表示不在鼠标位置显示菜单

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
end

--此示例代码运行成功如下图所示。

MenuAddItem.png
<上一篇:刷新菜单
下面是封装接口：
MenuAddItem
添加菜单条目

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并为菜单控件添加条目。

语法
Luacopy 复制
MenuAddItem(
    _Handle,
    _Info,
    _ItemId,
    _TextInfo,
    _FlagImage,
    _ParentId,
    _ItemImg
)
参数
_Handle

int

 
指定菜单控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定菜单控件的描述

_ItemId

int

 
添加条目的ID

_TextInfo

string

 
添加的条目文本

_FlagImage

unsigned int

 
添加条目前面的图片

_ParentId

int

 
添加条目的父菜单项ID

note_icon 备注
当此参数设置为-1时，表示此菜单没有父菜单项。

_ItemImg

unsigned int

 
添加条目的背景图片

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
end

--此示例代码运行成功如下图所示。

MenuAddItem.png
下一篇:创建菜单>
MenuCreate
创建菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数根据父窗口句柄和菜单ID创建菜单。

note_icon 备注
创建完成后默认不显示，需要调用MenuShowPopupMenu接口显示。

语法
Luacopy 复制
MenuCreate(
    _Handle,
    _Info,
    _WndId
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的描述

_WndId

string

 
菜单ID

返回值
int

 
创建成功则返回菜单窗口句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
end

--此示例代码运行成功如下图所示。

MenuAddItem.png
<上一篇:添加菜单条目下一篇:删除菜单条目>
MenuDelItem
删除菜单条目

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并从菜单中删除对应菜单条目。

caution_icon 注意
不可在菜单打开状态下进行删除，否则会导致程序崩溃。

语法
Luacopy 复制
MenuDelItem(
    _Handle,
    _Info,
    _ItemId
)
参数
_Handle

int

 
指定菜单控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定菜单控件的描述

_ItemId

int

 
菜单条目的ID

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目
    MenuDelItem(Menu, nil, 0) --删除菜单条目0
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
end

--此示例代码运行成功如下图所示。

MenuDelItem.png
<上一篇:创建菜单下一篇:删除菜单>
MenuDeleteMenu
删除菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数删除菜单。

caution_icon 注意
此接口删除的是菜单对象本身（不可重复删除），被删除的菜单后续不可再被使用。

不可在菜单打开状态下进行删除，否则会导致程序崩溃。

语法
Luacopy 复制
MenuDeleteMenu(
    _Handle,
    _Info
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的描述

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = GUI:MenuCreate(_GUIHandle, "MenuId") --创建菜单
    Temporary = Menu
    GUI:MenuAddItem(0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    GUI:MenuAddItem(1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    GUI:MenuShowPopupMenu(true) --设置菜单显示在鼠标位置
end

CL:AddDelayTask("OnDeleteMenu()", 3000, 1) --添加一个定时器回调OnDeleteMenu()函数，间隔时间3000毫秒，回调1次

function OnDeleteMenu()
    local _GUIHandle = GetWindow(_Parent, "MenuTestWnd")
    MenuDeleteMenu(_GUIHandle,nil) --删除菜单
end

--此示例代码运行成功如下图所示（打开菜单3秒后执行删除菜单的操作）。

MenuDeleteMenu.gif
<上一篇:删除菜单条目下一篇:重置菜单>
MenuDestroyMenu
重置菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数重置菜单。

note_icon 备注
此接口与MenuDeleteMenu接口的区别在于此接口并没有删除菜单本身，只是重置菜单的各项属性，后续仍可通过菜单句柄对菜单进行操作。

语法
Luacopy 复制
MenuDestroyMenu(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定菜单控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定菜单控件的描述

返回值
bool

 
true重置成功

false重置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置

    MenuDestroyMenu(Menu, nil) --重置菜单
    MenuAddItem(Menu, nil, 2,"测试菜单条目2",0,-1,1900340224) --添加菜单条目2
end

--此示例代码运行成功如下图所示（条目2为执行重置菜单操作后添加的条目）。

MenuAddItem_2.png
<上一篇:删除菜单下一篇:刷新菜单>
MenuFlushMenu
刷新菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并刷新菜单。

语法
Luacopy 复制
MenuFlushMenu(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定菜单控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定菜单控件的描述

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
    MenuFlushMenu(Menu,nil) --刷新菜单
end
<上一篇:重置菜单下一篇:获取菜单>
MenuGetMenu
获取菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数尝试根据父窗口句柄获取菜单句柄。

语法
Luacopy 复制
MenuGetMenu(
    _Handle,
    _Info
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的描述

返回值
int

 
获取成功则返回菜单句柄

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    MenuAddItem(Menu, nil, 1,"测试菜单条目2",0,-1,1900340224) --添加菜单条目1
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
    dbg("菜单句柄为："..MenuGetMenu(_GUIHandle,"")) --获取菜单句柄
end

--此示例代码运行成功如下图所示，同时控制台会输入如下内容。

MenuAddItem.png

MenuGetMenu.png
<上一篇:刷新菜单下一篇:设置全部菜单条目是否可见>
MenuSetAllItemVisiable
设置全部菜单条目是否可见

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置全部菜单条目是否可见。

note_icon 备注
此接口设置全部菜单条目不可见仅在本次打开菜单时生效，即关闭菜单重新打开后失效。

语法
Luacopy 复制
MenuSetAllItemVisiable(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定菜单控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定菜单控件的描述

_Flag

bool

 
true表示菜单条目可见

false表示菜单条目不可见

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
    MenuSetAllItemVisiable(Menu, nil,false) --设置全部菜单条目不可见
end
<上一篇:获取菜单下一篇:设置指定菜单条目是否可见>
MenuSetItemVisiable
设置指定菜单条目是否可见

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定菜单条目是否可见。

note_icon 备注
此接口设置菜单项不可见仅在本次打开菜单时生效，即关闭菜单重新打开后失效。

语法
Luacopy 复制
MenuSetItemVisiable(
    _Handle,
    _Info,
    _ItemId,
    _Flag
)
参数
_Handle

int

 
指定菜单控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定菜单控件的描述

_ItemId

int

 
菜单条目的ID

_Flag

bool

 
true表示菜单条目可见

false表示菜单项条目可见

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
    MenuSetItemVisiable(Menu, nil, 1,false) --设置菜单条目1不可见
end

--此示例代码运行成功如下图所示。

MenuSetItemVisiable.png
<上一篇:设置全部菜单条目是否可见下一篇:设置菜单隐藏或显示>
MenuShowPopupMenu
设置菜单隐藏或显示

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取菜单窗口并设置菜单隐藏或显示。

语法
Luacopy 复制
MenuShowPopupMenu(
    _Handle,
    _Info,
    _UseMousePos
)
参数
_Handle

int

 
指定菜单控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定菜单控件的描述

_UseMousePos

bool

 
true表示在鼠标位置显示菜单

false表示不在鼠标位置显示菜单

返回值
bool

 
true菜单存在

false菜单不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",0,200,200)
if _GUIHandle~=0 then
    local Menu = MenuCreate(_GUIHandle,nil,"MenuId") --创建菜单
    MenuAddItem(Menu, nil, 0,"测试菜单条目0",0,-1,1900340224) --添加菜单条目0
    MenuAddItem(Menu, nil, 1,"测试菜单条目1",0,-1,1900340224) --添加菜单条目1
    MenuShowPopupMenu(Menu,nil,true) --设置菜单显示在鼠标位置
end

--此示例代码运行成功如下图所示。

MenuAddItem.png
<上一篇:设置指定菜单条目是否可见
