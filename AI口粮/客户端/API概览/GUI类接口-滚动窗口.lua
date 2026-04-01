滚动窗口控件概览
更新时间：2021-09-07 00:00:00
滚动窗口是指可以左右滑动来显示内容的一种窗口，每次滑动显示一个页面。

游戏中玩家的背包界面即为一个滚动窗口。

创建控件
你可以使用下表所列的接口，创建滚动窗口控件。

接口名	中文名	返回值类型	功能描述	适用客户端
WndViewCreat	创建滚动窗口控件	
int

此函数创建滚动窗口控件。	手游、H5
设置控件
你可以使用下表所列的接口，设置滚动窗口控件的可视区域、滚动速度、页面大小等属性。

接口名	中文名	返回值类型	功能描述	适用客户端
WndSetViewPortSize	设置滚动窗口控件的可视区域	
无

此函数设置滚动窗口控件的可视区域。	手游、H5
WndViewGetCurrentPage	获取滚动窗口的当前页	
int

此函数获取滚动窗口的当前页索引。	手游、H5
WndViewSetAutoScrollRatio	设置滚动窗口的滚动速度	
无

此函数设置滚动窗口的滚动速度。	手游、H5
WndViewSetCurrentPage	设置滚动窗口的当前页	
无

此函数设置滚动窗口的当前页，设置后将会立即滚动到指定的页。	手游、H5
WndViewSetPageSize	设置滚动窗口控件的页大小	
无

此函数设置滚动窗口控件的单个页的大小。	手游、H5
你可以使用以下接口移除控件中所有的子控件。

接口名	中文名	返回值类型	功能描述	适用客户端
WndViewClear	移除滚动窗口中所有子控件	
无

此函数移除滚动窗口中所有的子控件。	手游、H5
<上一篇:多功能编辑框控件概览下一篇:图片控件概览>
WndSetViewPortSize
设置滚动窗口控件的可视区域

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2023-05-05 00:00:00
此函数设置滚动窗口控件的可视区域。

滚动窗口控件的可视区域是指单个页中用户可见其子控件的范围。

语法
Luacopy 复制
GUI:WndSetViewPortSize(
    _HandleID,
    _SizeX,
    _SizeY
)
参数
_HandleID

int

 
滚动窗口的句柄。

点击窗口句柄了解更多信息。

_SizeX

int

 
可视区域的宽度，单位为像素（px）。

_SizeY

int

 
可视区域的高度，单位为像素（px）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local PageWidth = 410 --背包单页的宽度
local PacgeCount = 4  -- 背包总页数
local OnePageCount = 25--每页背包格子的数量
local _PageView = GUI:WndViewCreat(_Parent, "PakageView") --创建滚动窗口控件

if _PageView ~= 0 then
    GUI:WndSetUserData(_PageView, PacgeCount, 0) --设置自定义数据，用于页面计数
    GUI:WndSetPenetratType(_PageView, 2) --设置穿透类型为WndView的滚动
    GUI:WndSetFlagsM(_PageView, flg_wndBase_useBkBuffer) --设置使用背景缓存标记
    GUI:WndSetSizeM(_PageView, PageWidth * PacgeCount, 430) --设置滚动窗口的大小
    GUI:WndSetPosM(_PageView, 20, 57) --设置滚动窗口的位置
    GUI:WndSetViewPortSize(_PageView, 403, 430) --设置滚动窗口的可视区域
    GUI:WndViewSetPageSize(_PageView, PageWidth, 430) --设置滚动窗口的页大小
    GUI:WndViewSetAutoScrollRatio(_PageView, 30) --设置滚动窗口的滚动速度

    local intervalX = 82
    local intervalY = 80
    for PageIndex = 0, PacgeCount - 1 do --创建物品框作为子控件，用于物品的展示和交互
        local LineIndex = 1
        local posY = 4
        for i = 1, OnePageCount do
            local posX = intervalX * (LineIndex - 1) + PageWidth * PageIndex + 4
            local _GUIHandle = GUI:ItemCtrlCreate(_PageView, "Item"..(i - 1 + OnePageCount * PageIndex), 1853800010, posX, posY, 66, 66)
            if _GUIHandle ~= 0 then
                GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.onPackageItem")
            end
            if LineIndex % 5 == 0 then
                LineIndex = 1
                posY = posY + intervalY
            else
                LineIndex = LineIndex + 1
            end
        end
    end
end

--此示例代码创建了背包内的包含多个物品框的滚动窗口，效果如下。

WndViewCreat
下一篇:移除滚动窗口中所有子控件>
WndViewClear
移除滚动窗口中所有子控件

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数移除滚动窗口中所有的子控件。

caution_icon 注意
此函数目前功能无效。

语法
Luacopy 复制
GUI:WndViewClear(
    _HandleID
)
参数
_HandleID

int

 
滚动窗口的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置滚动窗口控件的可视区域下一篇:创建滚动窗口控件>
WndViewCreat
创建滚动窗口控件

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2023-05-05 00:00:00
此函数创建滚动窗口控件。

滚动窗口允许通过左右滑动来展示不同的内容。如手游背包界面中存放物品的区域即为滚动窗口。

语法
Luacopy 复制
GUI:WndViewCreat(
    _HandleID,
    _ID
)
参数
_HandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息。

_ID

string

 
滚动窗口控件的名称。

返回值
句柄

int

 
若创建成功，则返回新建滚动窗口控件的句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local PageWidth = 410 --背包单页的宽度
local PacgeCount = 4  -- 背包总页数
local OnePageCount = 25--每页背包格子的数量
local _PageView = GUI:WndViewCreat(_Parent, "PakageView") --创建滚动窗口控件

if _PageView ~= 0 then
    GUI:WndSetUserData(_PageView, PacgeCount, 0) --设置自定义数据，用于页面计数
    GUI:WndSetPenetratType(_PageView, 2) --设置穿透类型为WndView的滚动
    GUI:WndSetFlagsM(_PageView, flg_wndBase_useBkBuffer) --设置使用背景缓存标记
    GUI:WndSetSizeM(_PageView, PageWidth * PacgeCount, 430) --设置滚动窗口的大小
    GUI:WndSetPosM(_PageView, 20, 57) --设置滚动窗口的位置
    GUI:WndSetViewPortSize(_PageView, 403, 430) --设置滚动窗口的可视区域
    GUI:WndViewSetPageSize(_PageView, PageWidth, 430) --设置滚动窗口的页大小
    GUI:WndViewSetAutoScrollRatio(_PageView, 30) --设置滚动窗口的滚动速度

    local intervalX = 82
    local intervalY = 80
    for PageIndex = 0, PacgeCount - 1 do --创建物品框作为子控件，用于物品的展示和交互
        local LineIndex = 1
        local posY = 4
        for i = 1, OnePageCount do
            local posX = intervalX * (LineIndex - 1) + PageWidth * PageIndex + 4
            local _GUIHandle = GUI:ItemCtrlCreate(_PageView, "Item"..(i - 1 + OnePageCount * PageIndex), 1853800010, posX, posY, 66, 66)
            if _GUIHandle ~= 0 then
                GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.onPackageItem")
            end
            if LineIndex % 5 == 0 then
                LineIndex = 1
                posY = posY + intervalY
            else
                LineIndex = LineIndex + 1
            end
        end
    end
end

--此示例代码创建了背包内的包含多个物品框的滚动窗口，效果如下。

WndViewCreat
<上一篇:移除滚动窗口中所有子控件下一篇:获取滚动窗口的当前页>
WndViewGetCurrentPage
获取滚动窗口的当前页

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2023-05-05 00:00:00
此函数获取滚动窗口的当前页索引。

语法
Luacopy 复制
GUI:WndViewGetCurrentPage(
    _HandleID
)
参数
_HandleID

int

 
滚动窗口的句柄。

点击窗口句柄了解更多信息。

返回值
参数

int

 
当前页索引值。

第1页的索引值为0，依次类推。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local PageWidth = 410 --背包单页的宽度
local PacgeCount = 4  -- 背包总页数
local OnePageCount = 25--每页背包格子的数量
local _PageView = GUI:WndViewCreat(_Parent, "PakageView") --创建滚动窗口控件

if _PageView ~= 0 then
    GUI:WndSetUserData(_PageView, PacgeCount, 0) --设置自定义数据，用于页面计数
    GUI:WndSetPenetratType(_PageView, 2) --设置穿透类型为WndView的滚动
    GUI:WndSetFlagsM(_PageView, flg_wndBase_useBkBuffer) --设置使用背景缓存标记
    GUI:WndSetSizeM(_PageView, PageWidth * PacgeCount, 430) --设置滚动窗口的大小
    GUI:WndSetPosM(_PageView, 20, 57) --设置滚动窗口的位置
    GUI:WndSetViewPortSize(_PageView, 403, 430) --设置滚动窗口的可视区域
    GUI:WndViewSetPageSize(_PageView, PageWidth, 430) --设置滚动窗口的页大小
    GUI:WndViewSetAutoScrollRatio(_PageView, 30) --设置滚动窗口的滚动速度

    local intervalX = 82
    local intervalY = 80
    for PageIndex = 0, PacgeCount - 1 do --创建物品框作为子控件，用于物品的展示和交互
        local LineIndex = 1
        local posY = 4
        for i = 1, OnePageCount do
            local posX = intervalX * (LineIndex - 1) + PageWidth * PageIndex + 4
            local _GUIHandle = GUI:ItemCtrlCreate(_PageView, "Item"..(i - 1 + OnePageCount * PageIndex), 1853800010, posX, posY, 66, 66)
            if _GUIHandle ~= 0 then
                GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.onPackageItem")
            end
            if LineIndex % 5 == 0 then
                LineIndex = 1
                posY = posY + intervalY
            else
                LineIndex = LineIndex + 1
            end
        end
    end
end

--此示例代码创建了背包内的包含多个物品框的滚动窗口，效果如下。

WndViewCreat
<上一篇:创建滚动窗口控件下一篇:设置滚动窗口的滚动速度>
WndViewSetAutoScrollRatio
设置滚动窗口的滚动速度

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2023-05-05 00:00:00
此函数设置滚动窗口的滚动速度。

note_icon 备注
此接口为接口WndViewSetActionSpeed的替代接口。

语法
Luacopy 复制
GUI:WndViewSetAutoScrollRatio(
    _HandleID,
    _Ratio
)
参数
_HandleID

int

 
滚动窗口的句柄

点击窗口句柄了解更多信息

_Ratio

float

 
滚动速度

默认值为10

数值越大，滚动速度越快。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local PageWidth = 410 --背包单页的宽度
local PacgeCount = 4  -- 背包总页数
local OnePageCount = 25--每页背包格子的数量
local _PageView = GUI:WndViewCreat(_Parent, "PakageView") --创建滚动窗口控件

if _PageView ~= 0 then
    GUI:WndSetUserData(_PageView, PacgeCount, 0) --设置自定义数据，用于页面计数
    GUI:WndSetPenetratType(_PageView, 2) --设置穿透类型为WndView的滚动
    GUI:WndSetFlagsM(_PageView, flg_wndBase_useBkBuffer) --设置使用背景缓存标记
    GUI:WndSetSizeM(_PageView, PageWidth * PacgeCount, 430) --设置滚动窗口的大小
    GUI:WndSetPosM(_PageView, 20, 57) --设置滚动窗口的位置
    GUI:WndSetViewPortSize(_PageView, 403, 430) --设置滚动窗口的可视区域
    GUI:WndViewSetPageSize(_PageView, PageWidth, 430) --设置滚动窗口的页大小
    GUI:WndViewSetAutoScrollRatio(_PageView, 30) --设置滚动窗口的滚动速度

    local intervalX = 82
    local intervalY = 80
    for PageIndex = 0, PacgeCount - 1 do --创建物品框作为子控件，用于物品的展示和交互
        local LineIndex = 1
        local posY = 4
        for i = 1, OnePageCount do
            local posX = intervalX * (LineIndex - 1) + PageWidth * PageIndex + 4
            local _GUIHandle = GUI:ItemCtrlCreate(_PageView, "Item"..(i - 1 + OnePageCount * PageIndex), 1853800010, posX, posY, 66, 66)
            if _GUIHandle ~= 0 then
                GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.onPackageItem")
            end
            if LineIndex % 5 == 0 then
                LineIndex = 1
                posY = posY + intervalY
            else
                LineIndex = LineIndex + 1
            end
        end
    end
end

--此示例代码创建了背包内的包含多个物品框的滚动窗口，效果如下。

WndViewCreat
<上一篇:获取滚动窗口的当前页下一篇:设置滚动窗口的当前页>
WndViewSetCurrentPage
设置滚动窗口的当前页

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2023-05-05 00:00:00
此函数设置滚动窗口的当前页，设置后将会立即滚动到指定的页。

语法
Luacopy 复制
GUI:WndViewSetCurrentPage(
    _HandleID,
    _Page
)
参数
_HandleID

int

 
滚动窗口的句柄。

点击窗口句柄了解更多信息。

_Page

int

 
当前页索引值。

第1页为1，依次类推。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local PageWidth = 410 --背包单页的宽度
local PacgeCount = 4  -- 背包总页数
local OnePageCount = 25--每页背包格子的数量
local _PageView = GUI:WndViewCreat(_Parent, "PakageView") --创建滚动窗口控件

if _PageView ~= 0 then
    GUI:WndSetUserData(_PageView, PacgeCount, 0) --设置自定义数据，用于页面计数
    GUI:WndSetPenetratType(_PageView, 2) --设置穿透类型为WndView的滚动
    GUI:WndSetFlagsM(_PageView, flg_wndBase_useBkBuffer) --设置使用背景缓存标记
    GUI:WndSetSizeM(_PageView, PageWidth * PacgeCount, 430) --设置滚动窗口的大小
    GUI:WndSetPosM(_PageView, 20, 57) --设置滚动窗口的位置
    GUI:WndSetViewPortSize(_PageView, 403, 430) --设置滚动窗口的可视区域
    GUI:WndViewSetPageSize(_PageView, PageWidth, 430) --设置滚动窗口的页大小
    GUI:WndViewSetAutoScrollRatio(_PageView, 30) --设置滚动窗口的滚动速度
    GUI:WndViewSetCurrentPage(_PageView,2) --设置翻到第2页
    local intervalX = 82
    local intervalY = 80
    for PageIndex = 0, PacgeCount - 1 do --创建物品框作为子控件，用于物品的展示和交互
        local LineIndex = 1
        local posY = 4
        for i = 1, OnePageCount do
            local posX = intervalX * (LineIndex - 1) + PageWidth * PageIndex + 4
            local _GUIHandle = GUI:ItemCtrlCreate(_PageView, "Item"..(i - 1 + OnePageCount * PageIndex), 1853800010, posX, posY, 66, 66)
            if _GUIHandle ~= 0 then
                GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.onPackageItem")
            end
            if LineIndex % 5 == 0 then
                LineIndex = 1
                posY = posY + intervalY
            else
                LineIndex = LineIndex + 1
            end
        end
    end
end

--此示例代码创建了背包内的包含多个物品框的滚动窗口，效果如下，默认打开后显示第2页。

WndViewCreat
<上一篇:设置滚动窗口的滚动速度下一篇:设置滚动窗口控件的页大小>
WndViewSetPageSize
设置滚动窗口控件的页大小

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2023-05-05 00:00:00
此函数设置滚动窗口控件的单个页的大小。

语法
Luacopy 复制
GUI:WndViewSetPageSize(
    _HandleID,
    _SizeX,
    _SizeY
)
参数
_HandleID

int

 
滚动窗口的句柄。

点击窗口句柄了解更多信息。

_SizeX

int

 
页的宽度，单位为像素（px）。

_SizeY

int

 
页的高度，单位为像素（px）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local PageWidth = 410 --背包单页的宽度
local PacgeCount = 4  -- 背包总页数
local OnePageCount = 25--每页背包格子的数量
local _PageView = GUI:WndViewCreat(_Parent, "PakageView") --创建滚动窗口控件

if _PageView ~= 0 then
    GUI:WndSetUserData(_PageView, PacgeCount, 0) --设置自定义数据，用于页面计数
    GUI:WndSetPenetratType(_PageView, 2) --设置穿透类型为WndView的滚动
    GUI:WndSetFlagsM(_PageView, flg_wndBase_useBkBuffer) --设置使用背景缓存标记
    GUI:WndSetSizeM(_PageView, PageWidth * PacgeCount, 430) --设置滚动窗口的大小
    GUI:WndSetPosM(_PageView, 20, 57) --设置滚动窗口的位置
    GUI:WndSetViewPortSize(_PageView, 403, 430) --设置滚动窗口的可视区域
    GUI:WndViewSetPageSize(_PageView, PageWidth, 430) --设置滚动窗口的页大小
    GUI:WndViewSetAutoScrollRatio(_PageView, 30) --设置滚动窗口的滚动速度

    local intervalX = 82
    local intervalY = 80
    for PageIndex = 0, PacgeCount - 1 do --创建物品框作为子控件，用于物品的展示和交互
        local LineIndex = 1
        local posY = 4
        for i = 1, OnePageCount do
            local posX = intervalX * (LineIndex - 1) + PageWidth * PageIndex + 4
            local _GUIHandle = GUI:ItemCtrlCreate(_PageView, "Item"..(i - 1 + OnePageCount * PageIndex), 1853800010, posX, posY, 66, 66)
            if _GUIHandle ~= 0 then
                GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.onPackageItem")
            end
            if LineIndex % 5 == 0 then
                LineIndex = 1
                posY = posY + intervalY
            else
                LineIndex = LineIndex + 1
            end
        end
    end
end

--此示例代码创建了背包内的包含多个物品框的滚动窗口，效果如下。

WndViewCreat
<上一篇:设置滚动窗口的当前页





























