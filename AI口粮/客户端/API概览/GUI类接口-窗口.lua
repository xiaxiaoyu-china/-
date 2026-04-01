窗体控件概览
更新时间：2023-11-28 00:00:00
窗体控件是游戏程序基本的组成单位，用于显示和接收数据。

使用窗体控件及其相关接口可创建游戏中的各种交互界面。

游戏中常见的窗体控件除窗口外，还有按钮、编辑框、图片框、复选框和滚动条等。

创建控件
你可以使用下表所列的接口，创建窗口或其他窗体控件。

接口名	中文名	返回值类型	功能描述	适用客户端
ButtonCreate	创建按钮控件	
int

此函数以指定的窗口作为父窗口，新建一个按钮控件。	手游、端游、H5
CheckBoxCreate	创建复选框控件	
int

此函数以指定的窗口作为父窗口，新建一个复选框控件。	手游、端游、H5
ComboBoxCreate	创建组合框控件	
int

此函数以指定的窗口作为父窗口，新建一个组合框控件。	手游、端游
EditCreate	创建编辑框控件	
int

此函数以指定的窗口作为父窗口，新建一个编辑框控件。	手游、端游、H5
ImageCreate	创建图片控件	
int

此函数以指定的窗口作为父窗口，新建一个图片控件。	手游、端游、H5
ItemCtrlCreate	创建物品框控件	
int

此函数以指定的窗口作为父窗口，新建一个物品框控件。	手游、端游、H5
ListBoxCreate	创建列表框控件	
int

此函数以指定的窗口作为父窗口，新建一个列表框控件。	手游、端游
MenuCreate	创建菜单	
int

此函数创建一个弹出菜单。	端游
RichEditCreate	创建多功能编辑框控件	
int

此函数以指定的窗口作为父窗口，新建一个多功能编辑框控件。	手游、端游、H5
ScrollBarHCreate	创建水平滚动条控件	
int

此函数以指定的窗口作为父窗口，新建一个水平滚动条控件。	手游、端游
ScrollBarVCreate	创建垂直滚动条控件	
int

此函数以指定的窗口作为父窗口，新建一个垂直滚动条控件。	手游、端游
SkeAnimCreate	创建骨骼动画	
int

此函数以指定的窗口作为父窗口，新建一个骨骼动画控件。	手游、端游、H5
SlideCreate	创建滑动条控件	
int

此函数以指定的窗口作为父窗口，新建一个滑动条控件。	手游、H5
WndCreateGUIItem	创建窗口	
int

此函数以指定的窗口作为父窗口，新建一个窗口。	手游、端游
WndCreateScrollWnd	创建带滚动条窗口	
int

此函数以指定的窗口作为父窗口，新建一个带滚动条的窗口。	端游
WndCreateScrollWndEx	创建带滚动条窗口（扩展）	
int

此函数以指定的窗口作为父窗口，创建一个带滚动条的窗口，并且可以选择创建带竖直滚动条的窗口或者带水平滚动条的窗口。	端游
WndCreateWnd	创建窗口	
int

此函数以指定的窗口作为父窗口，新建一个窗口。	手游、端游、H5
设置控件
你可以设置窗口或窗体控件的大小、外观、事件属性和其他参数。

接口名	中文名	返回值类型	功能描述	适用客户端
ScrollWndSetFlushFrameCount	设置滚动窗口无滚动条时的刷新频率	
无

此函数设置滚动窗口无滚动条时的刷新频率。	端游
ScrollWndSetScrollBarImage	设置带滚动条的窗口中滚动条的图片	
无

此函数设置带滚动条的窗口中滚动条的图片。	端游
ScrollWndSetScrollPos	设置滚动窗口中滚动条滑块的位置	
无

此函数设置滚动窗口中滚动条滑块的位置。	端游
ScrollWndSetScrollStep	设置滚动窗口滚动条步长	
无

此函数设置滚动窗口滚动条步长。	端游
SetHighPriorityUIName	标记窗体控件为高优先级UI	
无

此函数标记窗体控件为高优先级UI。	手游
SetLocalZOrder	设置窗体控件的描绘顺序	
无

此函数设置窗体控件在其兄弟控件中的描绘顺序。	手游、端游
SetWndModel	设置窗口为模态窗口	
无

此函数设置窗口为模态窗口。	手游、端游、H5
WndBindNpcToWnd	将创建的窗口与指定的NPC绑定	
无

此函数通过窗口句柄和NPC的ID将创建的窗口与指定的NPC做关联。	手游、端游
WndSetBlendType	设置指定窗体控件的混色类型	
无

此函数设置指定窗体控件的混色类型，目前支持图片控件、按钮控件和物品框控件。	手游、端游
WndSetActiveM	设置窗体控件的激活状态	
无

此函数设置窗体控件的激活状态。	手游、端游
WndSetCanRevMsg	设置窗口是否响应操作	
无

此函数设置窗体控件是否响应操作。	手游、端游、H5
WndSetEnableM	设置窗口是否可用	
无

此函数设置有响应的控件是否能使用。	手游、端游、H5
WndSetFlagsM	设置窗体控件的标记	
无

此函数设置窗体控件的标记。	手游、端游、H5
WndSetFlags	设置窗体控件的标记	
无

此函数设置窗体控件的标记。	手游、端游、H5
WndSetFocusM	设置窗体控件获得焦点	
无

此函数设置指定的窗体控件获得焦点。	手游、端游
WndSetFontSize	自定义窗体控件的文字大小	
无

此函数自定义窗体控件的文字大小。	手游
WndSetHintWidth	设置窗体控件的提示文字的宽度	
无

此函数设置指定窗体控件的提示文字宽度。	手游、端游
WndSetHint	设置窗体控件的提示文字	
无

此函数设置指定窗体控件的提示文字。	手游、端游
WndSetIDM	设置窗体控件的名称	
无

此函数设置指定控件的名称。	手游、端游、H5
WndSetIDParam	设置窗体控件的自定义参数	
无

此函数用于设置与指定窗体控件相关联的自定义参数。	手游、端游、H5
WndSetImageID	设置控件图片资源编号	
无

此函数设置指定控件的图片资源编号。	手游、端游、H5
WndSetIsESCClose	设置窗口Esc关闭属性	
无

此函数设置窗口属性，是否按Esc键自动关闭窗口。	端游
WndSetKeyFocusM	设置窗体控件是否具有键盘焦点	
无

此函数设置指定的窗体控件是否具有键盘焦点。	手游、端游
WndSetMagicUIWithParam	设置窗体控件的MagicUI特效参数	
无

此函数设置具体窗体控件具有MagicUI特效。	手游、端游、H5
WndSetMobilePopupMenu	设置窗口为弹出菜单	
无

此函数设置窗口为弹出菜单。	手游、H5
WndSetMagicUI	设置窗体控件是否具有MagicUI特效	
无

此函数设置窗体控件是否具有MagicUI特效。	手游、端游、H5
WndSetModalWnd	设置窗口是否为模态窗口	
无

此函数设置窗口是否为模态窗口。	手游、端游
WndSetMouseEnableIN	设置窗体控件是否响应点击操作	
无

此函数设置指定的窗体控件是否响应点击操作。	手游、端游
WndSetMoveWithLBM	设置窗口左键拖动属性	
无

此函数设置窗口属性，使窗口可用鼠标左键进行拖动。	手游、端游、H5
WndSetParam	设置窗体控件的自定义参数	
无

此函数用于设置与指定窗体控件相关联的自定义参数。	手游、端游、H5
WndSetPenetratType	设置窗口的穿透类型	
无

此函数设置窗口的穿透类型。	手游
WndSetPopupMenu	设置窗口为弹出菜单	
无

此函数设置窗口为弹出菜单。	手游、端游
WndSetPosByDeviceSize	自动调整窗体控件的位置和大小	
无

此函数根据分辨率自动调整窗体控件的位置和大小。	手游、端游
WndSetPosM	设置窗体控件的位置	
无

此函数设置指定窗体控件的位置。	手游、端游、H5
WndSetScrollType	设置窗口的滚动类型	
无

此函数设置指定窗口的滚动类型，分为水平（左右）滚动和垂直（上下）滚动。	手游、H5
WndSetSizeM	设置窗口大小	
无

此函数设置指定窗口的大小。	手游、端游、H5
WndSetTextArrangeType	设置窗体控件文字的排列方式	
无

此函数设置窗体控件文字的排列方式。	手游、端游、H5
WndSetTextColorM	设置窗体控件的文字颜色	
无

此函数设置窗体控件的文字颜色。	手游、端游、H5
WndSetTextM	设置窗体控件的文本内容	
无

此函数设置窗体控件的文本内容。	手游、端游、H5
WndSetTextOffset	设置窗体控件的文字偏移	
无

此函数设置窗体控件的文字偏移。	手游、端游、H5
WndSetTextOutlineSize	自定义窗体控件的文字描边粗细	
无

此函数自定义窗体控件的文字描边粗细。	手游
WndSetTipAutoRemove	设置窗体控件的Tip面板是否重新加载	
无

此函数设置窗体控件的Tip面板是否重新加载。	手游、端游
WndSetTipFunction	设置窗体控件的Tip面板回调函数	
无

此函数设置窗体控件的Tip面板回调函数。	手游、端游
WndSetTipInfo	设置窗体控件的Tip内容	
无

此函数设置窗体控件的Tip内容。	端游
WndSetTipsContent	设置Tip包围盒的计算方式	
无

此函数设置Tip包围盒的计算方式。	手游、端游、H5
WndSetUserData	设置窗体控件的用户自定义数据	
无

此函数设置窗体控件的用户自定义数据。	手游、端游、H5
WndSetVisible	设置窗体控件是否可见	
无

此函数设置控件是否可见的属性。	手游、端游、H5
WndSetScrollPosition	设置窗口滚动位置	
无

此函数设置窗口滚动位置。	手游、H5
WndSetUseTextGrow	设置控件文字是否使用描边	
无

此函数设置控件文字是否使用描边，控件包括编辑框、列表框、多功能编辑框、复选框、组合框和按钮。	手游、端游、H5
WndSetUserDataEx	设置窗体控件的用户自定义数据（扩展）	
无

此函数设置窗体控件的用户自定义数据。	手游、端游
WndSetCascadeOpacity	设置拖动窗口是否显示透明度	
无

此函数设置当全局变量SupportWindowMove设置为true时拖动窗口是否显示透明度。	手游
获取控件信息
在创建或设置窗体控件后，可以通过以下接口获取如控件句柄、大小、文字、文字颜色等属性。

接口名	中文名	返回值类型	功能描述	适用客户端
GetWndMousePos	获取鼠标相对指定窗口的位置	
无

此函数获取鼠标相对指定窗口的位置。	手游、端游
ScrollWndGetScrollPos	获取滚动窗口中滚动条滑块的位置	
int

此函数获取滚动窗口中滚动条滑块的位置。	端游
WndFindChildM	获取子窗口句柄	
int

此函数通过父窗口句柄和要查询的子窗口的名称，获取相应子窗口的句柄。	手游、端游、H5
WndFindWindow	获取窗口句柄	
int

此函数通过父窗口句柄和要查询窗口（子控件）的名称，获取相应窗口（子控件）的句柄。	手游、端游、H5
WndFlagMask	判断窗体控件标记中是否有特定掩码	
bool

此函数判断窗体控件标记中是否有特定掩码。	手游、端游、H5
WndGetBlendType	获取指定窗体控件的混色类型	
int

此函数获取指定窗体控件的混色类型，目前支持图片控件、按钮控件和物品框控件。	手游、端游
WndGetCanRevMsg	获取窗口是否响应操作	
bool

此函数获取窗口是否响应操作。	端游、H5
WndGetChildCount	获取窗口子控件数量	
int

此函数通过传入的窗口句柄找到该窗口，并查询所有子窗口，最后返回子窗口数量。	手游、端游、H5
WndGetChildWnd	获取所有子控件的类型和句柄	
bool

此函数通过指定的控件句柄查找该控件下所有子控件的类型和句柄。	手游、端游、H5
WndGetEnableM	获取窗口是否可用	
bool

此函数获取有响应的控件是否能使用。	手游、端游、H5
WndGetFlags	获取窗体控件的标记	
unsigned int

此函数获取窗体控件的标记。	手游、端游、H5
WndGetHint	获取窗体控件的提示文字	
string

此函数获取当鼠标悬浮于窗体控件上的提示文字。	手游、端游
WndGetIDM	获取窗体控件的名称	
string

此函数获取指定窗体控件的名称。	手游、端游、H5
WndGetIDParam	获取窗体控件的自定义参数	
unsigned int

此函数用于获取与指定窗体控件相关联的自定义参数。	手游、端游、H5
WndGetImageID	获取控件图片资源编号	
int

此函数获取指定控件的图片资源编号。	手游、端游、H5
WndGetIsESCClose	获取窗口Esc关闭属性	
bool

此函数获取窗口是否可按Esc键自动关闭的属性。	端游
WndGetItemGUIDataHandle	获取物品框中物品的GUIData句柄	
long

此函数获取物品框中物品的GUIData句柄。	手游、端游、H5
WndGetMagicUI	获取窗体控件是否具有MagicUI特效	
int

此函数获取指定的窗体控件是否具有MagicUI特效。	手游、端游、H5
WndGetMouseEnableIN	获取窗体控件是否响应点击操作	
bool

此函数获取指定的窗体控件是否响应点击操作。	手游、端游
WndGetMoveWithLBM	获取窗口左键拖动属性	
bool

此函数获取窗口是否可用鼠标左键进行拖动的属性。	端游、H5
WndGetParam	获取窗体控件的自定义参数	
unsigned int

此函数用于获取与指定窗体控件相关联的自定义参数。	手游、端游、H5
WndGetParentM	获取父窗口句柄	
int

此函数通过指定的窗口句柄，获取相应窗口的父窗口（即父控件）的句柄。	手游、端游、H5
WndGetPosM	获取窗体控件相对于父窗体的坐标位置	
bool

此函数获取窗体控件在其父窗口容器内所在的坐标位置。	手游、端游、H5
WndGetProperty	获取窗体控件的自定义属性	
string

此函数获取窗体控件的自定义属性的值。	手游、端游、H5
WndGetRegistScript	获取窗体控件的事件回调函数	
string

此函数获取指定的窗体控件事件对应的回调函数名称。	手游、端游、H5
WndGetScreenPos	获取窗体控件的屏幕坐标	
bool

此函数获取窗体控件相对于游戏主窗口左上角的坐标位置。	手游、端游、H5
WndGetSizeM	获取窗口大小	
bool

此函数获取指定窗口的大小。	手游、端游、H5
WndGetTextColorM	获取窗体控件的文字颜色	
unsigned int

此函数获取窗体控件的文字颜色。	手游、端游、H5
WndGetText	获取窗体控件的文字	
string

此函数获取窗体控件的文字。	手游、端游、H5
WndGetUserData	获取窗体控件的用户自定义数据	
int

此函数获取窗体控件的用户自定义数据。	手游、端游、H5
WndGetVisible	获取窗体控件的可见状态	
bool

此函数获取指定窗体控件的可见状态。	手游、端游、H5
WndIsLive	判断窗口是否存在	
bool

此函数判断指定的窗口是否存在。	手游、端游、H5
WndMoveToParentBottom	将窗口移动至最下层	
无

此函数将指定的窗口移动至其父窗口下所有子控件的最下层。	手游、端游、H5
WndPtInWindowM	判断指定坐标点是否在窗体控件内	
bool

此函数判断指定坐标点是否在指定窗体控件内。	手游、端游
WndGetUseTextGrow	获取控件文字是否使用描边	
bool

此函数获取控件文字是否使用描边，控件包括编辑框、列表框、多功能编辑框、复选框、组合框和按钮。	手游、端游、H5
WndGetPenetratType	获取窗口滚动类型	
number

此函数获取窗口滚动类型。	H5
WndGetScrollPosition	获取窗口滚动位置	
number

此函数获取窗口滚动位置。	H5
WndGetUserDataEx	获取窗体控件的用户自定义数据（扩展）	
uint

此函数获取窗体控件的用户自定义数据。	手游、端游
其他操作
在创建或设置窗体控件后，可以通过以下接口进行添加或删除定时器、自定义参数、设置渲染层级、设置回调函数等操作。

接口名	中文名	返回值类型	功能描述	适用客户端
WndAddFlags	添加窗体控件的标记	
无

此函数添加窗体控件的标记。	手游、端游、H5
WndAddProperty	为窗体控件添加自定义属性	
无

此函数为指定的窗体控件添加自定义属性。	手游、端游、H5
WndAddTimerBrief	在窗体控件中添加简易定时器	
int

此函数在指定的窗体控件中添加一个简易定时器，无需指定定时器ID（由程序自动生成）。	手游、端游、H5
WndAddTimer	在窗体控件中添加定时器	
bool

此函数在指定的窗体控件中添加一个定时器。	手游、端游、H5
WndAscOrder	提高窗体控件的渲染层级	
无

此函数提高窗体控件在其父窗体控件中所有子控件中的渲染层级。	手游
WndBringTopM	将活动窗口移动至最上层	
无

此函数将指定的活动窗口移动至其父窗口下所有子控件的最上层。	手游、端游
WndCalSize	重新计算窗口大小	
无

此函数根据所有子窗口位置布局重新计算所指定窗口的宽度和高度。	手游、端游、H5
WndClearScript	清除窗体控件的事件回调函数	
bool

此函数清除指定窗体控件的事件回调函数。	手游、端游、H5
WndClose	关闭窗口	
无

此函数将关闭指定的窗口。	手游、端游、H5
WndDelAllTimer	删除窗体控件中所有的定时器	
无

此函数删除窗体控件中所有已创建的定时器。	手游、端游、H5
WndDelProperty	删除窗体控件的自定义属性	
无

此函数删除窗体控件的自定义属性的值。	手游、端游、H5
WndDelTimer	删除窗体控件中指定的定时器	
bool

此函数删除窗体控件中指定的定时器。	手游、端游、H5
WndDescOrder	降低窗体控件的渲染层级	
无

此函数降低窗体控件在其父窗体控件中所有子控件中的渲染层级。	手游
WndDlgClear	移除所有子控件	
无

此函数移除父窗口下所有的子控件，并将其设置回最初的位置。	手游、端游、H5
WndDlgScrollToBottom	将窗口滚动到底部	
无

此函数将窗体控件内的所有子控件，即整个窗体的页面移动到最底部。	手游、端游、H5
WndInvalidate	刷新控件的绘制内容	
无

此函数刷新控件的绘制内容。	端游
WndMoveToParentTop	将窗口移动至最上层	
无

此函数将指定的窗口移动至其父窗口下所有子控件的最上层。	手游、端游、H5
WndRegistScript	注册窗体控件的事件回调函数	
bool

此函数指定窗体控件的事件类型及事件发生时回调的函数。	手游、端游、H5
WndTween	设置窗口缓动动画	
无

此函数设置窗口缓动动画。	H5
WndClearTween	清除窗口缓动动画	
无

此函数清除窗口缓动动画。	H5
ScrollWndRecvMouseWheelMsgFromParent	使滚动窗口接收来自父窗口的鼠标滚轮滚动事件	
无

此函数使滚动窗口接收来自父窗口的鼠标滚轮滚动事件（即RDWndBaseCL_mouse_wheel事件）。	端游
WndScrollWndClear	移除带滚动条窗口下所有子控件	
无

此函数移除带滚动条窗口下所有子控件。移除带滚动条窗口下所有子控件后，由于子窗口高度小于带滚动条窗口高度，滚动条会被隐藏。	端游
WndDlgScrollToTop	将窗口滚动到顶部	
无

此函数将窗体控件内的所有子控件，即整个窗体的页面移动到最顶部。	手游

ButtonCreate
创建按钮控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个按钮控件。

语法
Luacopy 复制
GUI:ButtonCreate(
    _ParentHandle,
    _pButtonID,
    _ImageId,
    _PosX,
    _PosY
)
参数
_ParentHandle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pButtonID

char

 
新建按钮控件的名称

_ImageId

unsigned int

 
新建按钮控件的图片资源ID

_PosX

int

 
新建按钮控件位置的横坐标

_PosY

int

 
新建按钮控件位置的纵坐标

返回值
int

 
创建成功则返回新建按钮控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在窗口右上角创建一个关闭按钮
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,225,0)

--此示例代码成功创建了如下图所示的按钮控件。

创建按钮控件
下一篇:创建复选框控件>
CheckBoxCreate
创建复选框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-12 00:00:00
此函数以指定的窗口作为父窗口，新建一个复选框控件。

语法
Luacopy 复制
GUI:CheckBoxCreate(
    _ParentHandle, 
    _pCheckID,
    _ImageID,
    _Tital,
    _PosX, 
    _PosY
)
参数
_ParentHandle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pCheckID

char

 
新建复选框控件的名称

_ImageID

unsigned int

 
新建复选框控件的图片资源ID

_Tital

string

 
新建复选框控件的标题

_X

int

 
新建复选框控件位置的横坐标

_Y

int

 
新建复选框控件位置的纵坐标

返回值
int

 
创建成功则返回新建复选框控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"ExampleCheckBox0",1900112013,"复选框CheckBox",100,200)

--此示例代码成功创建了如下图所示的复选框控件。

创建复选框控件
<上一篇:创建按钮控件下一篇:创建组合框控件>
ComboBoxCreate
创建组合框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个组合框控件。

语法
Luacopy 复制
GUI:ComboBoxCreate(
    _ParentHandleID,
    _pWndItemID,
    _ImageID,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _Length
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pWndItemID

char

 
新建组合框控件的名称

_ImageId

int

 
新建组合框控件的图片资源ID

_PosX

int

 
新建组合框控件位置的横坐标

_PosY

int

 
新建组合框控件位置的纵坐标

_SizeX

int

 
新建组合框控件的宽度

_SizeY

int

 
新建组合框控件的高度

_Length

int

 
新建组合框控件的下拉背景的高度

返回值
int

 
创建成功则返回新建组合框控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ComboBoxCreate(_Parent,"ExampleComboBox0",1901200072,100,200,100,30,200)

--此示例代码成功创建了如下图所示的组合框控件。

创建组合框控件
<上一篇:创建复选框控件下一篇:创建编辑框控件>
EditCreate
创建编辑框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个编辑框控件。

语法
Luacopy 复制
GUI:EditCreate(
    _HandleID,
    _pEditID,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY
)
参数
_HandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pEditID

char

 
新建编辑框控件的名称

_PosX

int

 
新建编辑框控件位置的横坐标

_PosY

int

 
新建编辑框控件位置的纵坐标

_SizeX

int

 
新建编辑框控件的宽度

_SizeY

int

 
新建编辑框控件的高度

返回值
句柄

int

 
创建成功则返回新建编辑框控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"设 置")
end

--此示例代码成功创建了如下图所示的编辑框控件。

Edit Example
<上一篇:创建组合框控件下一篇:创建图片控件>
ImageCreate
创建图片控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个图片控件。

语法
Luacopy 复制
GUI:ImageCreate(
    _ParentHandle,
    _pWndID, 
    _ImageID, 
    _PosX, 
    _PosY
)
参数
_ParentHandle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pWndID

char

 
新建图片控件的名称

_ImageId

unsigned int

 
新建图片控件的图片资源ID

_PosX

int

 
新建图片控件位置的横坐标

_PosY

int

 
新建图片控件位置的纵坐标

返回值
句柄

int

 
若创建成功，则返回新建图片控件的句柄。

如创建失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ImageCreate(_Parent,"CloseButton", 1853710066, 0, 0) --新建一个图片控件，获取控件句柄

--此示例代码成功创建了如下图所示的图片控件。

ImageCreate Sample
<上一篇:创建编辑框控件下一篇:创建物品框控件>
ItemCtrlCreate
创建物品框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个物品框控件。

语法
Luacopy 复制
GUI:ItemCtrlCreate(
    _ParentHandleID,
    _pItemCtrlID,
    _ImageID,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY
)
参数
_ParentHandleID

long

 
父窗口句柄

点击窗口句柄了解更多信息。

_pItemCtrlID

char

 
新建物品框的名称。

_ImageId

unsigned int

 
新建物品框的图片资源ID。

_PosX

int

 
新建物品框位置的横坐标。

_PosY

int

 
新建物品框位置的纵坐标。

_SizeX

int

 
新建物品框的宽度。

_SizeY

int

 
新建物品框的高度。

返回值
句柄

int

 
若创建成功，则返回新建物品框的句柄。

如创建失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,0,0,34,34) --创建物品框
if _GUIHandle ~= 0 then
    GUI:ItemCtrlSetBackImageID(_GUIHandle, 1930100036) --设置物品框背景图片
end

--请将示例代码复制到Package.lua中创建物品框，效果如下。

ItemCtrlSetBackImageID
<上一篇:创建图片控件下一篇:创建列表框控件>
ListBoxCreate
创建列表框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个列表框控件。

语法
Luacopy 复制
GUI:ListBoxCreate(
    _ParentHandleID,
    _pWndID,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息。

_pEditID

char

 
新建列表框的名称。

_PosX

int

 
新建列表框位置的横坐标。

_PosY

int

 
新建列表框位置的纵坐标。

_SizeX

int

 
新建列表框的宽度。

_SizeY

int

 
新建列表框的高度。

返回值
句柄

int

 
若创建成功，则返回新建列表框的句柄。

如创建失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ListBoxCreate(_Parent,"ListBox0",100,200,100,100)

--此示例代码成功创建了如下图所示的列表框控件。

创建列表框控件
<上一篇:创建物品框控件下一篇:创建菜单>
MenuCreate
创建菜单

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-04-19 00:00:00
此函数根据父窗口句柄和菜单ID创建菜单。

note_icon 备注
创建完成后默认不显示，需要调用MenuShowPopupMenu接口显示。

语法
Luacopy 复制
GUI:MenuCreate(
    _ParentID,
    _WndId
)
参数
_ParentID

int

 
父窗口句柄

点击窗口句柄了解更多信息

_WndId

string

 
新建菜单控件的ID

返回值
int

 
创建成功则返回新建菜单控件的句柄

创建失败则返回0

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
<上一篇:创建列表框控件下一篇:创建多功能编辑框控件>
RichEditCreate
创建多功能编辑框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个多功能编辑框控件。

多功能编辑框相比较编辑框，可添加文本链接，标识符等。如\n可进行文本换行。

语法
Luacopy 复制
GUI:RichEditCreate(
    _ParentHandleID,
    _pWndItemID,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息。

_pWndItemID

const char

 
新建子控件的ID。

_PosX

int

 
新建子控件位置的横坐标。

_PosY

int

 
新建子控件位置的纵坐标。

_SizeX

int

 
新建子控件的宽度。

_SizeY

int

 
新建子控件的高度。

返回值
句柄

int

 
若创建成功，则返回新建多功能编辑框控件的句柄。

如创建失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit",200,200,200,50) --创建多功能编辑框
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框") --添加文本
end

--此示例代码成功创建了如下图所示的多功能编辑框控件。

RichEditCreate
<上一篇:创建菜单下一篇:创建水平滚动条控件>
ScrollBarHCreate
创建水平滚动条控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-25 00:00:00
此函数以指定的窗口作为父窗口，新建一个水平滚动条控件。

语法
Luacopy 复制
GUI:ScrollBarHCreate(
    _ParentHandleID,
    _pItemCtrlID,
    _ImageUp,
    _ImageDown,
    _ImageThumb,
    _ImageBack,
    _PosX,
    _PosY,
    _Length
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pItemCtrlID

char

 
新建水平滚动条的名称

_ImageUp

int

 
向左滚动按钮的图片资源ID

_ImageDown

int

 
向右滚动按钮的图片资源ID

_ImageThumb

int

 
滚动条的前景（即滑块）图片资源ID

_ImageBack

int

 
滚动条的背景图片资源ID

_PosX

int

 
新建水平滚动条位置的横坐标

_PosY

int

 
新建水平滚动条位置的纵坐标

_Length

int

 
新建水平滚动条的长度

返回值
int

 
创建成功则返回新建水平滚动条控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ScrollBarHCreate(_Parent,"ExampleScrollBarV0", 1900510006, 1900510006, 1900100006, 1900190017, 80, 100, 100)

--此示例代码成功创建了如下图所示的水平滚动条控件。

创建水平滚动条控件
<上一篇:创建多功能编辑框控件下一篇:创建垂直滚动条控件>
ScrollBarVCreate
创建垂直滚动条控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-03-25 00:00:00
此函数以指定的窗口作为父窗口，新建一个垂直滚动条控件。

语法
Luacopy 复制
GUI:ScrollBarVCreate(
    _ParentHandleID,
    _pItemCtrlID,
    _ImageUp,
    _ImageDown,
    _ImageThumb,
    _ImageBack,
    _PosX,
    _PosY,
    _Length
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pItemCtrlID

char

 
新建垂直滚动条的名称

_ImageUp

int

 
向上滚动按钮的图片资源ID

_ImageDown

int

 
向下滚动按钮的图片资源ID

_ImageThumb

int

 
滚动条的前景（即滑块）图片资源ID

_ImageBack

int

 
滚动条的背景图片资源ID

_PosX

int

 
新建垂直滚动条位置的横坐标

_PosY

int

 
新建垂直滚动条位置的纵坐标

_Length

int

 
新建垂直滚动条的高度

返回值
int

 
创建成功则返回新建垂直滚动条控件的句柄

如创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ScrollBarVCreate(_Parent, "ChatScroll", 1930000007, 1930000011, 1930000015, 1930000006, 678, 260, 104)

--此示例代码成功创建了如下图所示的垂直滚动条控件。

创建垂直滚动条控件
<上一篇:创建水平滚动条控件下一篇:创建骨骼动画>
SkeAnimCreate
创建骨骼动画

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个骨骼动画控件。

游戏的角色选择界面中选展示的角色人物动画即为典型的骨骼动画。

note_icon 备注
创建的骨骼动画默认停留在第1帧。要设置动画播放，请参见SkeAnimSetAnimation函数。

语法
Luacopy 复制
GUI:SkeAnimCreate(
    _ParentHandleID,
    _pID,
    _pDataFile,
    _pAtlasFile,
    _Scale,
    _PosX,
    _PosY
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息。

_pID

string

 
骨骼动画控件的名称。

_pDataFile

string

 
数据文件的路径。

存放路径通常在游戏目录中GUIRes下，文件的后缀名为.skel。

_pAtlasFile

string

 
图集文件的路径。

存放路径通常在游戏目录中GUIRes下，文件的后缀名为.atlas。

_Scale

float

 
骨骼动画的缩放比例。

如设置为1时为原始大小，设置为0.5时，则宽度和高度均为原始大小的1/2。

_PosX

int

 
骨骼动画位置的横坐标。

_PosY

int

 
骨骼动画位置的纵坐标。

返回值
句柄

int

 
新建骨骼动画控件的句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SkeAnimCreate(_Parent,"SkeExample", "spine/nan zhanshi/Nan Zhanzhi.skel", "spine/nan zhanshi/Nan Zhanzhi.atlas",0.67,1000,560) --创建一个男战士角色的骨骼动画
if _GUIHandle ~= 0 then
    dbg("句柄为：" .. _GUIHandle)
end

--此示例代码成功创建了如下图所示的骨骼动画控件，同时控制台将输出“句柄为：174”。

SkeAnimCreate
<上一篇:创建垂直滚动条控件下一篇:创建滑动条控件>
SlideCreate
创建滑动条控件

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dsupport

更新时间：2022-05-27 00:00:00
此函数以指定的窗口作为父窗口，新建一个滑动条控件。

下图为控制音量大小的滑动条实例。

slide_overview

①前景

②滑块

③背景

语法
Luacopy 复制
GUI:SlideCreate(_ParentHandleID,  
    _pWndID,  
    _backImage, 
    _slideImage, 
    _thumbImage, 
    _PosX, 
    _PosY, 
    _SizeX, 
    _SizeY  
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息

_pWndID

char

 
新建滑动条的名称

_backImage

unsigned int

 
背景图片资源ID

_slideImage

unsigned int

 
前景图片资源ID

_thumbImage

unsigned int

 
滑块的图片资源ID

_PosX

int

 
新建滑动条位置的横坐标

_PosY

int

 
新建滑动条位置的纵坐标

_SizeX

int

 
新建滑动条的宽度

_SizeY

int

 
新建滑动条的高度

返回值
int

 
创建成功则返回新建滑动条控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:SlideCreate(_Parent, "SlideScale2", 1854000012, 1854000013, 1854000014, 80, 100, 612, 23) --创建滑动条控件
if _GUIHandle ~= 0 then
    GUI:SlideSetPercent(_GUIHandle, 30) --设置滑块立即滑动到30%的位置
    dbg("滑块位置："..GUI:SlideGetPercent(_GUIHandle)) --获取滑动条当前的百分比
end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

SlideSetPercent.png

SlideGetPercent.png
<上一篇:创建骨骼动画下一篇:创建窗口>
WndCreateGUIItem
创建窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数以指定的窗口作为父窗口，新建一个窗口。

note_icon 备注
此函数创建的窗口一般只作为父窗口用，不显示贴图资源，也不具备设置一些如带上下滚动条等高级属性。

请参见WndCreateWnd函数，以创建具备更多高级属性的窗口。

语法
Luacopy 复制
GUI:WndCreateGUIItem(
    _ParentHandleID,
    _ID,
    _ImageID,
    _X,
    _Y,
    _Order
)
参数
_ParentHandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息。

_ID

string

 
新建窗口的名称。

_ImageID

unsigned int

 
新建窗口的图片资源ID。

此参数不起作用。一般设置为0。

_X

int

 
新建窗口位置的横坐标。

_Y

int

 
新建窗口位置的纵坐标。

_Order

int

 
窗口描绘的层级。

数值越大，窗口显示越靠前。

caution_icon 注意
此参数仅支持手游，端游使用时请忽略此参数。

返回值
句柄

int

 
新建窗口的句柄。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateGUIItem(_Parent,"GUI_Example",0,200,200,2)
if _GUIHandle ~= 0 then
    GUI:ButtonCreate(_GUIHandle,"ExampleBtn1",1853710066,0,0)
end

--此示例代码创建了一个父窗口，并在其下面创建一个按钮控件。

WndCreateGUIItem
<上一篇:创建滑动条控件下一篇:创建带滚动条窗口（扩展）>
WndCreateScrollWndEx
创建带滚动条窗口（扩展）

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-07 00:00:00
此函数以指定的窗口作为父窗口，创建一个带滚动条的窗口，并且可以选择创建带竖直滚动条的窗口或者带水平滚动条的窗口。

语法
Luacopy 复制
GUI:WndCreateScrollWndEx(
    _ParentHandle,
    _ID,
    _X,
    _Y,
    _Width,
    _Height,
    _Vert
)
参数
_ParentHandle

int

 
父窗口句柄

点击窗口句柄了解更多信息

note_icon 备注
若此参数为0，则代表父窗口为根节点的窗口。

_ID

string

 
新建的名称

_X

int

 
新建的横坐标

_Y

int

 
新建的纵坐标

_Width

int

 
新建的宽度

单位为像素（px）

_Height

int

 
新建的高度

单位为像素（px）

_Vert

bool

 
是否创建带竖直滚动条的窗口

true表示创建带竖直滚动条的窗口

false表示创建带水平滚动条的窗口

返回值
int

 
新建带滚动条窗口的句柄

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local str = ""  
str =str.. "#COLORCOLOR_GOLD#第一行第一行第一行第一行第一行\n"
str =str.. "#COLORCOLOR_GREENG#第二行第二行第二行第二行第二行\n"
str =str.. "#COLORCOLOR_GOLD#第三行第三行第三行第三行第三行\n"
str =str.. "#COLORCOLOR_GREENG#第四行第四行第四行第四行第四行\n"
str =str.. "#COLORCOLOR_GOLD#第五行第五行第五行第五行第五行\n"
str =str.. "#COLORCOLOR_GREENG#第六行第六行第六行第六行第六行"
local wnd = GUI:WndCreateScrollWndEx(_Parent,"Notice", 100, 100,250, 150,false) --创建一个带水平滚动条的窗口
  
_GUIHandle = GUI:RichEditCreate(wnd, "Text", 0, 0, 400,100)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置窗口为不可用状态
    GUI:RichEditAppendString(_GUIHandle, str) --多功能编辑框添加文本
end

--此示例代码运行成功如下图所示。

WndCreateScrollWndEx.png
<上一篇:创建窗口下一篇:创建带滚动条窗口>
WndCreateScrollWnd
创建带滚动条窗口

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-07 00:00:00
此函数以指定的窗口作为父窗口，新建一个带滚动条的窗口。

语法
Luacopy 复制
GUI:WndCreateScrollWnd(
    _ParentHandle,
    _ID,
    _X,
    _Y,
    _Width,
    _Height
)
参数
_ParentHandle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_ID

string

 
新建的名称

_X

int

 
新建的横坐标

_Y

int

 
新建的纵坐标

_Width

int

 
新建的宽度

单位为像素（px）

_Height

int

 
新建的高度

单位为像素（px）

返回值
int

 
新建带滚动条窗口的句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local str = ""  
str =str.. "#COLORCOLOR_GOLD#第一行第一行第一行第一行第一行\n"
str =str.. "#COLORCOLOR_GREENG#第二行第二行第二行第二行第二行\n"
str =str.. "#COLORCOLOR_GOLD#第三行第三行第三行第三行第三行\n"
str =str.. "#COLORCOLOR_GREENG#第四行第四行第四行第四行第四行\n"
str =str.. "#COLORCOLOR_GOLD#第五行第五行第五行第五行第五行\n"
str =str.. "#COLORCOLOR_GREENG#第六行第六行第六行第六行第六行"
local wnd = GUI:WndCreateScrollWnd(_Parent,"Notice", 150, 150,300, 100) --创建一个带滚动条的窗口
  
_GUIHandle = GUI:RichEditCreate(wnd, "Text", 30, 0, 250,150)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置窗口为不可用状态
    GUI:RichEditAppendString(_GUIHandle, str) --多功能编辑框添加文本
end

--此示例代码运行成功如下图所示。

WndCreateScrollWnd.png
<上一篇:创建带滚动条窗口（扩展）下一篇:创建窗口>
WndCreateWnd
创建窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-07-21 00:00:00
此函数以指定的窗口作为父窗口，新建一个窗口。

note_icon 备注
使用此接口创建的窗口的默认标记为flg_wndBase_autoTop（将控件置于所在父窗口的最上层）。

语法
Luacopy 复制
GUI:WndCreateWnd(
    _ParentHandle,  
    _ID, 
    _ImageID,
    _X,
    _Y
)
参数
_ParentHandle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_ID

string

 
新建窗口的名称

_ImageId

unsigned int

 
新建窗口的图片资源ID

_X

int

 
新建窗口位置的横坐标

_Y

int

 
新建窗口位置的纵坐标

返回值
int

 
创建成功则返回新建窗口的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200)

--此示例代码成功创建了如下图所示的窗口控件。

创建窗口控件
<上一篇:创建带滚动条窗口下一篇:创建物品框列表>
WndItemListCreate
创建物品框列表

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数创建物品框列表。

语法
Luacopy 复制
GUI:WndItemListCreate(
    _ParentId,
    _WndId,
    _ImageID,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY
)
参数
_ParentId

number

 
父窗口句柄

点击窗口句柄了解更多信息。

_WndId

string

 
窗口ID

_ImageID

number

 
图片ID

_PosX

number

 
X坐标

_PosY

number

 
Y坐标

_SizeX

number

 
宽度，单位为像素。

_SizeY

number

 
高度，单位为像素。

返回值
void

 
窗口句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] 
local _ItemList = GUI:WndItemListCreate(_Parent, "ItemList", 1871220016, 42,  90, 100, 100)
--图片资源ID"1871220016"设置的是每一个物品框的背景图 
<上一篇:创建窗口
ScrollWndMirrorScrollbar
设置镜像显示滚动窗口的滚动条

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-02-14 00:00:00
此函数设置镜像显示滚动窗口的滚动条。

可用于镜像显示滚动条，如垂直滚动条在左右两侧切换显示，水平滚动条则在上下两边切换显示，由于滚动条需要占用部分父控件控件，通常需要手动调整子控件显示偏移量。

语法
Luacopy 复制
GUI:ScrollWndMirrorScrollbar(
    _Handle
)
参数
_Handle

int

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str = ""  
str =str.. "#COLORCOLOR_GOLD#第一行第一行第一行第一行第一行\n"
str =str.. "#COLORCOLOR_GREENG#第二行第二行第二行第二行第二行\n"
str =str.. "#COLORCOLOR_GOLD#第三行第三行第三行第三行第三行\n"
str =str.. "#COLORCOLOR_GREENG#第四行第四行第四行第四行第四行\n"
str =str.. "#COLORCOLOR_GOLD#第五行第五行第五行第五行第五行\n"
str =str.. "#COLORCOLOR_GREENG#第六行第六行第六行第六行第六行"
local wnd = GUI:WndCreateScrollWndEx(_Parent,"Notice", -150, -150,250, 150,true) --创建一个带滚动条的窗口
if wnd ~= 0 then
    GUI:ScrollWndMirrorScrollbar(wnd) -- 设置镜像显示
end
  
_GUIHandle = GUI:RichEditCreate(wnd, "Text", 30, 30, 250,200)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置窗口为不可用状态
    GUI:RichEditAppendString(_GUIHandle, str) --多功能编辑框添加文本
end

--垂直滚动条镜像显示前

ScrollWndMirrorScrollbar.png

--垂直滚动条镜像显示后

ScrollWndMirrorScrollbar_2.png

--水平滚动条镜像显示前

ScrollWndMirrorScrollbar_3.png

--水平滚动条镜像显示后

ScrollWndMirrorScrollbar_4.png
下一篇:设置滚动窗口无滚动条时的刷新频率>
ScrollWndSetFlushFrameCount
设置滚动窗口无滚动条时的刷新频率

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置滚动窗口无滚动条时的刷新频率。

note_icon 备注
当滚动窗口有滚动条时，每一帧都会通知刷新。

语法
Luacopy 复制
GUI:ScrollWndSetFlushFrameCount(
    handle,
    flush_frame_count
)
参数
handle

long

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

flush_frame_count

int

 
窗口刷新的帧数间隔（即每隔多少帧刷新一次）

note_icon 备注
窗口刷新的帧数间隔的值（大于等于0）越小刷新越快，默认值为6。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）的Package.lua文件为例
Package = {}
function Package.main()

--……省略部分代码
   
    local AddX = 60
	
    local _GUIHandle = GUI:WndCreateScrollWnd(_Parent,"ScrollWnd0",-100,367,200,200) --创建一个滚动窗口
    if _GUIHandle ~= 0 then
        GUI:ScrollWndSetFlushFrameCount(_GUIHandle,0) --设置滚动窗口无滚动条时的刷新频率
        --在滚动窗口中创建一个按钮子控件通过按钮的闪烁频率来观察滚动窗口的刷新频率
        _GUIHandle = GUI:ButtonCreate(_GUIHandle,"SettlePackage",4000240016,0, 110)
        if _GUIHandle ~= 0 then
            GUI:WndSetTextM(_GUIHandle,"闪 烁") --设置按钮的文字内容
            GUI:ButtonSetShine(_GUIHandle, true) --设置按钮为闪烁状态
            GUI:WndSetTextColorM(_GUIHandle, 4290950816) --设置按钮字体颜色
        end
    end

--……省略部分代码
end

--……省略部分代码

Package.main()

--当窗口刷新的帧数间隔的值设置为0时，运行结果如下图所示。

ScrollWndSetFlushFrameCount_2.gif

--当窗口刷新的帧数间隔的值设置为10时，运行结果如下图所示。

ScrollWndSetFlushFrameCount.gif
<上一篇:设置镜像显示滚动窗口的滚动条下一篇:设置带滚动条的窗口中滚动条的图片>
ScrollWndSetScrollBarImage
设置带滚动条的窗口中滚动条的图片

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数设置带滚动条的窗口中滚动条的图片。

语法
Luacopy 复制
GUI:ScrollWndSetScrollBarImage(
    _Handle,
    up,
    mid,
    down,
    _BackImageID
)
参数
_Handle

int

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

up

unsigned int

 
滚动条向上滚动的按钮的图片资源ID

mid

unsigned int

 
滚动条滑块图片资源ID

down

unsigned int

 
滚动条向下滚动的按钮的图片资源ID

_BackImageID

unsigned int

 
滚动条背景图片资源ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以官方45度美术资源展示（区号：3104）的GameStallUploadBuyItem.lua文件为例
GameStallUploadBuyItem = {}

--……省略部分代码

function GameStallUploadBuyItem.main()
--……省略部分代码

    local _X = 67 + _LeftWidth
    local _Y = 70+ 95
    local _StallItemList = GUI:WndCreateScrollWnd(_Parent, "StallBuyItemList", _X, _Y, _RightWidth - 2, 272 - 36 + 110)
    if _StallItemList ~= 0 then
        GUI:WndSetUserData(_StallItemList, _X, 0)
        GUI:WndSetUserData(_StallItemList, _Y, 1)
        GUI:ScrollWndSetScrollBarImage( _StallItemList, 4002200040, 1900010042, 4002200044, 4002410003)  --设置滚动条图片
    end
	
--……省略部分代码
end

--……省略部分代码

GameStallUploadBuyItem.main()


--此示例代码运行成功如下图所示。

ScrollWndSetScrollBarImage_2.png
<上一篇:设置滚动窗口无滚动条时的刷新频率下一篇:设置滚动窗口中滚动条滑块的位置>
ScrollWndSetScrollPos
设置滚动窗口中滚动条滑块的位置

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-12-20 00:00:00
此函数设置滚动窗口中滚动条滑块的位置。

caution_icon注意
使用此接口设置的值会覆盖form字符串中通用属性scrollpos的值。

此接口仅在指定窗口为滚动窗口且带有滚动条时生效。

语法
Luacopy 复制
GUI:ScrollWndSetScrollPos(
    _Handle,
    _Pos
)
参数
_Handle

int

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

_Pos

int

 
滚动条中滑块的位置

范围为0-100（默认值为0）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local str = ""  
str =str.. "#COLORCOLOR_GOLD#第一行第一行第一行第一行第一行\n"
str =str.. "#COLORCOLOR_GREENG#第二行第二行第二行第二行第二行\n"
str =str.. "#COLORCOLOR_GOLD#第三行第三行第三行第三行第三行\n"
str =str.. "#COLORCOLOR_GREENG#第四行第四行第四行第四行第四行\n"
str =str.. "#COLORCOLOR_GOLD#第五行第五行第五行第五行第五行\n"
str =str.. "#COLORCOLOR_GREENG#第六行第六行第六行第六行第六行"
local wnd = GUI:WndCreateScrollWnd(_Parent,"Notice", 150, 150,300, 100) --创建一个带滚动条的窗口
if wnd ~= 0 then
    GUI:ScrollWndSetScrollPos(wnd, 50) --设置滚动条中滑块的位置为50
end

_GUIHandle = GUI:RichEditCreate(wnd, "Text", 30, 0, 250,150)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置窗口为不可用状态
    GUI:RichEditAppendString(_GUIHandle, str) --多功能编辑框添加文本
end

--此示例代码运行成功如下图所示。

ScrollWndSetScrollPos.png
<上一篇:设置带滚动条的窗口中滚动条的图片下一篇:设置滚动窗口滚动条步长>
ScrollWndSetScrollStep
设置滚动窗口滚动条步长

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-01-11 00:00:00
此函数设置滚动窗口滚动条步长。

点击向上或向下滚动按钮时，滚动条单次滚动的最小距离为设置的步长值。

语法
Luacopy 复制
GUI:ScrollWndSetScrollStep(
    _Handle,
    _Step
)
参数
_Handle

int

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

_Step

int

 
指定步长数值。默认的范围为0 ~ 100。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local str = ""  
str =str.. "#COLORCOLOR_GOLD#第一行第一行第一行第一行第一行\n"
str =str.. "#COLORCOLOR_GREENG#第二行第二行第二行第二行第二行\n"
str =str.. "#COLORCOLOR_GOLD#第三行第三行第三行第三行第三行\n"
str =str.. "#COLORCOLOR_GREENG#第四行第四行第四行第四行第四行\n"
str =str.. "#COLORCOLOR_GOLD#第五行第五行第五行第五行第五行\n"
str =str.. "#COLORCOLOR_GREENG#第六行第六行第六行第六行第六行"
local wnd = GUI:WndCreateScrollWnd(_Parent,"Notice", 150, 150,300, 100) --创建一个带滚动条的窗口
if wnd ~= 0 then
    GUI:ScrollWndSetScrollPos(wnd, 0) --设置滚动条中滑块的位置为0
    GUI:ScrollWndSetScrollStep(wnd, 10) --设置步长为10
end

_GUIHandle = GUI:RichEditCreate(wnd, "Text", 30, 0, 250,150)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置窗口为不可用状态
    GUI:RichEditAppendString(_GUIHandle, str) --多功能编辑框添加文本
end

--点击10次向下滚动按钮，滚动窗口滑动到最底部。
<上一篇:设置滚动窗口中滚动条滑块的位置下一篇:标记窗体控件为高优先级UI>
SetHighPriorityUIName
标记窗体控件为高优先级UI

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数标记窗体控件为高优先级UI。

当有游戏事件要处理时，高优先级UI会优先于普通UI处理事件消息。

语法
Luacopy 复制
GUI:SetHighPriorityUIName(
    _Name
)
参数
_Name

string

 
窗体控件的名称。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Parent = GUI:WndCreateWnd(_Parent, "AwardsWnd", 1859710000, 0, 0) --创建主窗口
local _DeviceSizeX =1440
local _DeviceSizeY = 900
if _Parent ~= 0 then
    GUI:WndSetIsESCClose(_Parent, true) --设置按ESC键可关闭窗口
    GUI:WndSetSizeM(_Parent, _DeviceSizeX, _DeviceSizeY) --设置窗口初始大小为屏幕的宽和高
    GUI:ImageSetFitSize(_Parent, true) --设置图片自适应窗口大小显示
    GUI:ImageSetAlpha(_Parent, 200) --设置图片透明度
    GUI:SetHighPriorityUIName("AwardsWnd") --提供主窗口的消息处理优先级
end
<上一篇:设置滚动窗口滚动条步长下一篇:设置窗体控件的描绘顺序>
SetLocalZOrder
设置窗体控件的描绘顺序

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置窗体控件在其兄弟控件中的描绘顺序。

描绘级别越高，显示越靠前。

语法
Luacopy 复制
GUI:SetLocalZOrder(
    _HandleID,
    _Order
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Order

int

 
优先级顺序。数值越大，级别越高。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:标记窗体控件为高优先级UI下一篇:设置是否开启遮挡时的场景半透明效果>
SetOccludeSceneTranparent
设置是否开启遮挡时的场景半透明效果

手游 2Dnot_support 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2024-11-27 00:00:00
此函数设置是否开启遮挡时的场景半透明效果。

语法
Luacopy 复制
CL:SetOccludeSceneTranparent(
    _Flag
)
参数
_Flag

bool

 
true开启遮挡时的场景半透明效果

false关闭遮挡时的场景半透明效果

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置窗体控件的描绘顺序下一篇:设置窗口为模态窗口>
SetWndModel
设置窗口为模态窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-09-22 00:00:00
此函数设置窗口为模态窗口。

模态窗口具有优先处理并拦截游戏事件的特性，用户只能先和此窗口进行交互操作，其他窗体控件不会响应用户操作。

note_icon 备注
端游调用此接口暂无效果。

note_icon 备注
类似功能接口，可参见WndSetModalWnd函数。

语法
Luacopy 复制
GUI:SetWndModel(
    _HandleID,
    _PosX,
    _PosY
)
参数
_HandleID

int

 
窗口的句柄。

_PosX

int

 
窗口位置的横坐标。

_PosY

int

 
窗口位置的纵坐标。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置是否开启遮挡时的场景半透明效果下一篇:将创建的窗口与指定的NPC绑定>
WndBindNpcToWnd
将创建的窗口与指定的NPC绑定

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-07-18 00:00:00
此函数通过窗口句柄和NPC的ID将创建的窗口与指定的NPC做关联。

语法
Luacopy 复制
GUI:WndBindNpcToWnd(
    _Handle,
    _NpcTemplateID
)
参数
_Handle

long

 
窗口句柄

_NpcTemplateID

int

 
NPC的ID

note_icon 备注
可在游戏工具平台→游戏配置→NPC模板表中查看。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
GUI:WndBindNpcToWnd(_Handle, 48) --仓库管理员的ID为48
<上一篇:设置窗口为模态窗口下一篇:设置窗体控件的激活状态>
WndSetActiveM
设置窗体控件的激活状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的激活状态。

从非激活状态到激活状态，会将此窗口提升到父窗口的最上层，从而避免指定窗口被盖住。

语法
Luacopy 复制
GUI:WndSetActiveM(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true指定窗体控件为激活状态

false指定窗体控件为非激活状态

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"RoleName",180,212,181,17) --创建编辑框控件
if _GUIHandle ~= 0 then
    GUI:WndSetActiveM(_GUIHandle, true) --设置编辑框控件为激活状态
    GUI:EditSetMaxCharNum(_GUIHandle, 14) --设置编辑框控件允许的最大字符个数
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框控件的文本内容为“设置”
end

--此示例代码运行成功如下图所示（编辑框控件会主动弹出光标）。

WndSetActiveM.png
<上一篇:将创建的窗口与指定的NPC绑定下一篇:设置指定窗体控件的混色类型>
WndSetBlendType
设置指定窗体控件的混色类型

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-08-19 00:00:00
此函数设置指定窗体控件的混色类型，目前支持图片控件、按钮控件和物品框控件。

参考 WndGetBlendType

note_icon 备注
此接口的作用与接口CL:ImageSetBlendType的作用类似，但此接口适用的控件类型更为丰富（包括图片控件、按钮控件和物品框控件），建议直接使用此接口。

语法
Luacopy 复制
GUI:WndSetBlendType(
    handle,
    blendtype
)
参数
handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

blendtype

int

 
混色类型值（1-6）

源图片是指指定窗体控件中的图片

目标图片是指当前的颜色缓冲区（即绘制区域的背景图片）

1表示将源图片的颜色和目标图片的颜色进行混合（忽略源图的透明度）；

2表示将源图片的颜色和目标图片的颜色进行混合（不忽略源图的透明度）；

3表示目标图片的颜色值按照源图片的Alpha值取反后，将源图片的颜色和目标图片的颜色进行混合；

4（混色时最常用的方式）表示源图片的颜色值乘以自身的Alpha值，目标图片的颜色值按照源图片的Alpha值取反后，将源图片的颜色和目标图片的颜色进行混合；

5表示目标图片的颜色值按照源图片的颜色值取反后，将源图片的颜色和目标图片的颜色进行混合；

6表示源图片的颜色值乘以自身的Alpha值，目标图片的颜色值按照源图片的颜色值取反后，将源图片的颜色和目标图片的颜色进行混合。

note_icon 备注
1.第一种混合方式中，会完全使用源图片的颜色值和目标图片的颜色值，最终的颜色值就是两种颜色值的简单相加.

2.第四种混合方式中，源图片的Alpha值越大，则产生的新颜色中源图片的颜色值所占比例就越大，而目标图片的颜色值所占比例越小。

3.目标图片的颜色值按照源图片的Alpha值取反表示目标图片的颜色值 = 目标图片的颜色值*（1-源图片的Alpha值）；

   目标图片的颜色值按照源图片的颜色值取反表示目标图片的颜色值 = 目标图片的颜色值*（1-源图片的颜色值）。

4.上述颜色均按照1：1的比例进行混合。

5.此参数配置为其他值时，当前接口无效。

note_icon 备注
颜色计算公式：最终的颜色值 = （源图片的颜色值 X 源因子） + （目标图片的颜色值 X 目标因子），其中“X”表示向量的点积运算。

计算中用到的参数含义（计算中涉及到的图片的颜色值和Alpha值的范围均为0-1）：

Rs表示源图片颜色的红色值，Gs表示源图片颜色的绿色值，Bs表示源图片颜色的蓝色值，As表示源图片的Alpha值；

Rd表示目标图片颜色的红色值，Gd表示目标图片颜色的绿色值，Bd表示目标图片颜色的蓝色值，Ad表示目标图片的Alpha值。

当参数blendtype设置为1时，源因子和目标因子的值均为1，此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 * 1）=（Rs + Rd, Gs + Gd , Bs + Bd, As + Ad）

当参数blendtype设置为2时，源因子的值为源图片的Alpha值，目标因子的值为1，此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 源图片的Alpha值） + （目标背景颜色 * 1）=（Rs * As + Rd, Gs * As + Gd , Bs * As + Bd, As * As + Ad）

当参数blendtype设置为3时，源因子的值为1，目标因子的值为（1-源图片的Alpha值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 *（1-源图片的Alpha值））=（Rs + Rd（1-As）, Gs + Gd（1-As） , Bs + Bd（1-As）, As + Ad（1-As））

当参数blendtype设置为4时，源因子的值为源图片的Alpha值，目标因子的值为（1-源图片的Alpha值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 源图片的Alpha值） + （目标背景颜色 * （1-源图片的Alpha值））=（Rs * As + Rd（1-As）, Gs * As + Gd（1-As） , Bs * As + Bd（1-As）, As * As + Ad（1-As））

当参数blendtype设置为5时，源因子的值为1，目标因子的值为（1-源图片的颜色值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 1） + （目标背景颜色 *（1-源图片的颜色值））=（Rs + Rd（1-Rs）, Gs + Gd（1-Gs） , Bs + Bd（1-Bs）, As + Ad（1-As））

当参数blendtype设置为6时，源因子的值为源图片的颜色值，目标因子的值为（1-源图片的颜色值），此时颜色计算公式如下所示。

最终的颜色值 = （源图片颜色值 * 源图片的颜色值） + （目标背景颜色 * （1-源图片的颜色值））=（Rs * Rs + Rd（1-Rs）, Gs * Gs + Gd（1-Gs） , Bs * Bs + Bd（1-Bs）, As * As + Ad（1-As））

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_Handle = GUI:ImageCreate(_Parent, "Modelmagic", 3005400000, 100, 450)
if 0 ~= _Handle then
    GUI:WndSetCanRevMsg(_Handle, false)
end  

local addx = 200
for i = 1 ,6 do 
    _Handle = GUI:ImageCreate(_Parent, "Modelmagic"..i, 3005400000, addx*i-350, 150)
    if 0 ~= _Handle then
        GUI:WndSetCanRevMsg(_Handle, false)
        GUI:WndSetBlendType(_Handle, i)
        dbg("图片控件"..i.."的混色类型："..GUI:WndGetBlendType(_Handle))
    end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

--第一排的图片中，从左往右图片控件的混色类型依次为1、2、3、4、5、6；第二排的图片为该图片未进行混色的效果。

ImageSetBlendType.png

ImageGetBlendType.png
<上一篇:设置窗体控件的激活状态下一篇:设置窗口在拖动物品时能否接收窗口事件>
WndSetCanDragItem
设置窗口在拖动物品时能否接收窗口事件

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2023-06-02 00:00:00
此函数设置指定窗体控件在拖动物品时是否能接收窗口事件。

相关接口：ItemCtrlSetCanDrag。

语法
Luacopy 复制
GUI:WndSetCanDragItem(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
是否能接收窗口事件（点击窗口事件了解更多信息）

true能接收窗口事件

false不能接收窗口事件

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
<上一篇:设置指定窗体控件的混色类型下一篇:设置窗口是否响应操作>
WndSetCanRevMsg
设置窗口是否响应操作

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件是否响应操作。

note_icon 备注
功能类似于WndSetMouseEnableIN接口，区别在于此函数所接收的操作类型除鼠标点击外，还有包括按键等其他方式。

语法
Luacopy 复制
GUI:WndSetCanRevMsg(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true消息将会传递至此窗口下的子控件

false消息将不会传递至此窗口下的子控件

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "PasswordHint", 180, 180, 80, 40)
if _GUIHandle ~= 0 then
    GUI:WndSetCanRevMsg(_GUIHandle,true) --设置编辑框响应操作
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本内容为“设置”
end

--此示例代码运行成功如下图所示（鼠标点击后指定编辑框有光标可以进行编辑）。

WndSetCanRevMsg.png
<上一篇:设置窗口在拖动物品时能否接收窗口事件下一篇:设置拖动窗口是否显示透明度>
WndSetCascadeOpacity
设置拖动窗口是否显示透明度

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置当全局变量SupportWindowMove设置为true时拖动窗口是否显示透明度。

语法
Luacopy 复制
GUI:WndSetCascadeOpacity(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗口控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
拖动窗口是否显示透明度

true表示显示透明度

false表示不显示透明度

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D手游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent,"BkImg1",4005020000,100,100)
if _GUIHandle ~= 0 then
    GUI:WndSetMoveWithLBM(_GUIHandle) --设置窗口左键拖动属性
    GUI:WndSetCascadeOpacity(_GUIHandle,true) --拖动窗口显示透明度
end

--此示例代码运行成功如下图所示。

WndSetCascadeOpacity.png
<上一篇:设置窗口是否响应操作下一篇:设置窗口是否可用>
WndSetEnableM
设置窗口是否可用

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置有响应的控件是否可使用。

note_icon 备注
有响应的控件包括按钮控件、编辑框控件等。

语法
Luacopy 复制
GUI:WndSetEnableM(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
要设置属性的控件句柄

点击窗口句柄了解更多信息

_Flag

bool

 
控件是否可用

true可用

false不可用

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"test1",1802500006,200 ,200) --创建按钮控件1
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, true) --设置按钮控件1可用
    if GUI:WndGetEnableM(_GUIHandle) then --获取按钮控件1是否可用
        dbg("按钮控件1可用")
    else
        dbg("按钮控件1不可用")
    end
end

_GUIHandle = GUI:ButtonCreate(_Parent,"test2",1802500006,200 ,300) --创建按钮控件2
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置按钮控件2不可用
    if GUI:WndGetEnableM(_GUIHandle) then --获取按钮控件2是否可用
        dbg("按钮控件2可用")
    else
        dbg("按钮控件2不可用")
    end
end

--此示例代码运行成功如下图所示（上方的按钮控件可以点击，下方的按钮控件不可点击），同时控制台会输出如下内容。

WndSetEnableM.png

WndGetEnableM.png
<上一篇:设置拖动窗口是否显示透明度下一篇:设置窗体控件的标记>
WndSetFlagsM
设置窗体控件的标记

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置窗体控件的标记。

脚本中有预先定义了窗体控件的标记，可对相应的控件做设置变更。

语法
Luacopy 复制
GUI:WndSetFlagsM(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Flag

unsigned int

 
标记类型。

点击控件标记了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 100, 100, 200, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框文字
    GUI:WndSetFlagsM(_GUIHandle,flg_dlgEdit_textInCenter) --设计编辑框标记，表示文字在中间位置
end
<上一篇:设置窗口是否可用下一篇:设置窗体控件的标记>
WndSetFlags
设置窗体控件的标记

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的标记。

脚本WndDefine.lua中有预先定义了窗体控件的标记，可实现相应的控件设置。

note_icon 备注
此接口功能与接口GUI:WndSetFlagsM相同。

caution_icon 注意
若要添加多个标记，请使用接口GUI:WndAddFlags。

语法
Luacopy 复制
GUI:WndSetFlags(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Flag

unsigned int

 
标记类型

点击控件标记了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 100, 100, 200, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框文字
    GUI:WndSetFlags(_GUIHandle,flg_dlgEdit_textInCenter) --设置标记，表示文字在中间位置
end

--示例代码设置了以下两个标记：
flg_dlgEdit_textInCenter = 0x00400000
<上一篇:设置窗体控件的标记下一篇:设置窗体控件获得焦点>
WndSetFocusM
设置窗体控件获得焦点

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定的窗体控件获得焦点。

语法
Luacopy 复制
GUI:WndSetFocusM(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"exampleBtn",4000230000,430,500) --创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetFocusM(_GUIHandle) --设置按钮控件获得焦点
end

_GUIHandle2 = GUI:ButtonCreate(_Parent,"exampleBtn2",4000230000,500,500) --创建一个按钮控件

--此示例代码运行成功如下图所示。

--左侧按钮控件设置了焦点（按钮控件处于鼠标悬浮状态），而右侧按钮控件未设置焦点。

WndSetFocusM.png
<上一篇:设置窗体控件的标记下一篇:自定义窗体控件的文字大小>
WndSetFontSize
自定义窗体控件的文字大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-08-27 00:00:00
此函数设置窗体控件的文字大小。

note_icon 备注
在2D客户端中，此接口支持的窗体控件包括按钮、编辑框、多功能编辑框、复选框控件和列表框控件等。

在3D客户端中，此接口支持的窗体控件包括编辑框、多功能编辑框和按钮控件等。

当未使用此接口进行设置时，默认size为0，即文字大小使用默认值。

语法
Luacopy 复制
GUI:WndSetFontSize(
    _HandleID,
    _Size
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Size

int

 
文字大小

单位为像素（px）

note_icon 备注
若此参数设置为0，则文字大小使用默认值。

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local edit = GUI:EditCreate(_Parent,"Edit",200,200,80,20)
if edit ~= 0 then 
    GUI:EditSetTextM(edit,"测试") --设置编辑框的文本内容
    GUI:WndSetEnableM(edit,false) --设置窗口不可用
    GUI:WndSetSizeM(edit,80,20) --设置窗口大小为80*20
    GUI:WndSetFontSize(edit, 40) --将编辑框中的文字大小设置为40px
end 

local edit = GUI:EditCreate(_Parent,"Edit2",290,200,80,60)
if edit ~= 0 then 
    GUI:EditSetTextM(edit,"测试字体") --设置编辑框的文本内容
    GUI:WndSetEnableM(edit,false) --设置窗口不可用
    GUI:WndSetSizeM(edit,80,20) --设置窗口大小为80*20
end

--此示例代码运行成功如下图所示（左边编辑框中的文字大小设置为40px，右边编辑框未设置）。

WndSetFontSize.png
<上一篇:设置窗体控件获得焦点下一篇:设置窗体控件的提示文字的宽度>
WndSetHintWidth
设置窗体控件的提示文字的宽度

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的提示文字宽度。

当鼠标悬浮于窗体控件上，提示文字将会显示。默认状况下，程序会根据文本的长度来自动匹配宽度，但也可通过调用此函数来设置一个固定宽度。

caution_icon 注意
仅在端游中有效果，手游中设置后没有任何效果。

语法
Luacopy 复制
GUI:WndSetHintWidth(
    _HandleID,
    _Width
)
>
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Width

int

 
提示文字的宽度。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _SaveCheck = GUI:CheckBoxCreate(_Parent, "SaveLoginName", 1804300007, "", 200, 200)
if _SaveCheck ~= 0 then
    GUI:WndSetHintWidth(_SaveCheck, 50) --设置提示文字宽度
    GUI:WndSetHint(_SaveCheck, "是否保存账号") --设置提示文字宽度
    GUI:WndSetSizeM(_SaveCheck, 24, 24) --设置复选框大小
end

--示例创建的复选框控件，当鼠标悬浮于其上时，效果如下图。

WndSetHintWidth
<上一篇:自定义窗体控件的文字大小下一篇:设置窗体控件的提示文字>
WndSetHint
设置窗体控件的提示文字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的提示文字。

当鼠标悬浮于窗体控件上，提示文字将会显示。

caution_icon 注意
仅端游会显示提示文字，手游中设置后没有任何效果。

语法
Luacopy 复制
GUI:WndSetHint(
    _HandleID,
    _HintInof
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_HintInof

string

 
提示文字的内容。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"Campaign",1930000210,67,67) --新建一个按钮
if _GUIHandle ~= 0 then
   GUI:WndSetHint(_GUIHandle,"活动") --设置提示文字
   GUI:WndSetParam(_GUIHandle, 0) --设置自定义参数
   GUI:WndSetSizeM(_GUIHandle,21, 21) --设置按钮的大小
end

--示例创建的按钮，当鼠标悬浮于其上时，效果如下图。

WndSetHint
<上一篇:设置窗体控件的提示文字的宽度下一篇:设置窗体控件的名称>
WndSetIDM
设置窗体控件的名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的名称。

语法
Luacopy 复制
GUI:WndSetIDM(
    _HandleID,
    _NewId
)
参数
_HandleID

int

 
要指定控件的句柄

点击窗口句柄了解更多信息

_NewId

string

 
要设置的窗体控件名称

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"New_Window",1900000003,200,200)
if _GUIHandle ~= 0 then
    dbg("该窗体控件改变前的名称为："..GUI:WndGetIDM(_GUIHandle)) --获取该窗体控件改变后的名称
    GUI:WndSetIDM(_GUIHandle,"GUI_Example") --设置该窗体控件的名称为“GUI_Example”
    dbg("该窗体控件改变后的名称为："..GUI:WndGetIDM(_GUIHandle)) --获取该窗体控件改变后的名称
end

--此示例代码运行成功如下图所示。

Lua_WndSetIDM.png
<上一篇:设置窗体控件的提示文字下一篇:设置窗体控件的自定义参数>
WndSetIDParam
设置窗体控件的自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数用于设置与指定窗体控件相关联的自定义参数。

语法
Luacopy 复制
GUI:WndSetIDParam(
    _HandleID,
    _Param
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Param

unsigned int

 
自定义参数的数值。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --创建窗口
if _Wnd ~= 0 then
    GUI:WndSetIDParam(_Wnd,3) --设置自定义参数值“3”
end
<上一篇:设置窗体控件的名称下一篇:设置控件图片资源编号>
WndSetImageID
设置控件图片资源编号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定控件的图片资源编号。

语法
Luacopy 复制
GUI:WndSetImageID(
    _HandleID,
    _ImageId 
)
参数
_HandleID

int

 
要指定控件的句柄。

点击窗口句柄了解更多信息。

_ImageId

unsigned int

 
图片资源的编号

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建新窗口
GUI:WndSetImageID(_GUIHandle, 1900000034)--设置窗口使用编号为"1900000034"的图片资源
<上一篇:设置窗体控件的自定义参数下一篇:设置窗口Esc关闭属性>
WndSetIsESCClose
设置窗口Esc关闭属性

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置Esc关闭属性，即按Esc键是否会关闭指定窗口。

语法
Luacopy 复制
GUI:WndSetIsESCClose(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true按Esc键会关闭窗口

false按Esc键不会关闭窗口

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"test",1900000003,200,200) --创建一个窗口
if _GUIHandle ~= 0 then
    GUI:WndSetIsESCClose(_GUIHandle,true) --设置按Esc键会关闭指定窗口
end

--此示例代码执行后，按Esc键会关闭指定窗口。
<上一篇:设置控件图片资源编号下一篇:设置窗体控件是否具有键盘焦点>
WndSetKeyFocusM
设置窗体控件是否具有键盘焦点

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定的窗体控件是否具有键盘焦点。

窗体控件具有键盘焦点后，即可直接接收相应按键的消息。

语法
Luacopy 复制
GUI:WndSetKeyFocusM(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Flag

bool

 
true指定窗体控件具有键盘焦点

false指定窗体控件不具有键盘焦点

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"edit_example", 200, 200, 150, 30) --创建一个编辑框控件
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"测试键盘焦点") --设置编辑框控件的文本内容
    GUI:WndSetKeyFocusM(_GUIHandle,true) --设置编辑框控件具有键盘焦点
end

--此示例代码运行成功如下图所示（指定的窗体控件可直接接收按键的消息）。

WndSetKeyFocusM.gif
<上一篇:设置窗口Esc关闭属性下一篇:设置窗体控件的MagicUI特效参数>
WndSetMagicUIWithParam
设置窗体控件的MagicUI特效参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置具体窗体控件具有MagicUI特效。

设置后，窗体控件创建时具有一段过渡动画的特效。

note_icon 备注
相比较WndSetMagicUI函数，此函数增加了缩放和透明度参数的设置。

caution_icon 注意
透明度变化的效果目前暂不可用。

语法
Luacopy 复制
GUI:WndSetMagicUIWithParam(
    _HandleID,
    _InitScale,
    _FinalScale,
    _ScaleInterval,
    _InitOpacity,
    _FinalOpacity,
    _OpacityInterval
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_InitScale

int

 
特效开始前，窗体控件的初始大小。

将要设置的倍数乘以10000即为设置值

例如：

5000图片的宽度和高度均缩小至原始尺寸的一半大小

10000图片的宽度和高度均为原始尺寸

20000图片的宽度和高度均放大1倍，为原始尺寸的2倍大小

_FinalScale

int

 
特效结束后，窗体控件的最终大小。

将要设置的倍数乘以10000即为设置值

例如：

5000图片的宽度和高度均缩小至原始尺寸的一半大小

10000图片的宽度和高度均为原始尺寸

20000图片的宽度和高度均放大1倍，为原始尺寸的2倍大小

caution_icon 注意
初始大小不能大于最终大小。

_ScaleInterval

int

 
从初始大小到最终大小的缩放所经过的时间，单位为毫秒（ms）。

_InitOpacity

int

 
特效开始前，窗体控件的初始透明度。

0代表完全透明

将要设置的透明度值（范围为0~1）乘以10000即为设置值（范围为0~10000）

例如：

5000窗体控件的初始透明度为原始透明度的1/2

10000窗体控件的初始透明度为原始透明度，即不透明

_FinalOpacity

int

 
特效结束后，窗体控件的最终透明度。

0代表完全透明

将要设置的透明度值（范围为0~1）乘以10000即为设置值（范围为0~10000）

例如：

5000窗体控件的初始透明度为原始透明度的1/2

10000窗体控件的初始透明度为原始透明度，即不透明

_OpacityInterval

int

 
从初始透明度到最终透明度过渡所经过的时间，单位为毫秒（ms）。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"edit_example", 200, 200, 150, 30) --创建一个编辑框
if _GUIHandle ~= 0 then
    GUI:WndSetMagicUIWithParam(_GUIHandle,5000,10000,1000,0,5000,1000)
    GUI:EditSetTextM(_GUIHandle,"MagicUI特效展示")
end

--此示例代码的效果如下。

WndSetMagicUIWithParam
<上一篇:设置窗体控件是否具有键盘焦点下一篇:设置窗体控件是否具有MagicUI特效>
WndSetMagicUI
设置窗体控件是否具有MagicUI特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-19 00:00:00
此函数设置指定窗体控件是否具有MagicUI特效。

设置后，窗体控件创建时具有一段过渡动画的特效。

语法
Luacopy 复制
GUI:WndSetMagicUI(
    _HandleID,
    _Type
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Type

int

 
1有MagicUI特效

0无MagicUI特效

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"edit_example", 200, 200, 150, 30) --创建一个编辑框控件
if _GUIHandle ~= 0 then
    GUI:WndSetMagicUI(_GUIHandle,1) --设置指定窗体控件具有MagicUI特效
    GUI:EditSetTextM(_GUIHandle,"MagicUI特效展示") --设置编辑框的文本内容
end

--此示例代码的效果如下。

WndSetMagicUI
<上一篇:设置窗体控件的MagicUI特效参数下一篇:设置窗口为弹出菜单>
WndSetMobilePopupMenu
设置窗口为弹出菜单

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2023-01-06 00:00:00
此函数设置指定窗口为弹出菜单。

调用此接口设置弹出菜单后，点击游戏内任意位置（包括窗口自身）都会关闭该窗口。

参考 WndSetPopupMenu

语法
Luacopy 复制
GUI:WndSetMobilePopupMenu(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
FamilyMainWnd = {}

--……省略部分代码

function FamilyMainWnd.main()

--……省略部分代码

    local _HelpWnd = GUI:WndCreateWnd(_Parent, "HelpWnd", 0, 0, 0 + 60)
    if _HelpWnd ~= 0 then
        GUI:WndSetSizeM(_HelpWnd, _WndSizeX, _WndSizeY)
        GUI:WndSetVisible(_HelpWnd, false)

        _GUIHandle = GUI:ImageCreate(_HelpWnd, "BG", 0, _WndSizeX/6 - 77, _WndSizeY/2 + 90)
        if _GUIHandle ~= 0 then
            local _Image9ID = 1855014000
            GUI:WndSetSizeM(_GUIHandle, 588, 200)
            GUI:ImageSetAroundImage(_GUIHandle, _Image9ID + 0, _Image9ID + 2, _Image9ID + 6, _Image9ID + 8, 
                _Image9ID + 4, _Image9ID + 1, _Image9ID + 7, _Image9ID + 3, _Image9ID + 5)

            local str = "#COLORCOLOR_ORANGE#帮会说明:#COLORCOLOR_WHITE#\n"
            ..REColor["提示文字"].."1.捐献#COLORCOLOR_GREENG#元宝"..REColor["提示文字"].."或#COLORCOLOR_GREENG#装备"..REColor["提示文字"].."可获得贡献并增加#COLORCOLOR_GREENG#帮会资金\n"
            ..REColor["提示文字"].."2.帮会资金满后帮会#COLORCOLOR_GREENG#自动升级\n"
            ..REColor["提示文字"].."3.高级装备可存入#COLORCOLOR_GREENG#帮会仓库"..REColor["提示文字"].."与其他成员交换装备\n"
            ..REColor["提示文字"].."4.离开帮会后帮会贡献会清空\n"

            _GUIHandle = GUI:RichEditCreate(_GUIHandle, "Info", 20, 20, 920, 240)
            if _GUIHandle ~= 0 then
                GUI:WndSetCanRevMsg(_GUIHandle, false)
                GUI:RichEditSetOffSet(_GUIHandle, 15)
                GUI:RichEditAppendString(_GUIHandle, str)
            end
        end
    end

--……省略部分代码
end

--……省略部分代码

function FamilyMainWnd.OnHelpBtn(_Handle)
    --FamilyMainWnd.OnSwitchBtn(_Handle)
    local _Parent = GUI:WndGetParentM(_Handle)
    local _HelpWnd = GetWindow(_Parent, "HelpWnd")
    local bool
    GUI:WndSetVisible(_HelpWnd, true)
    GUI:WndSetMobilePopupMenu(_HelpWnd)
    --WndSetVisible(_Parent, "HelpWnd", not WndGetVisible(_Parent, "HelpWnd"))
end

--……省略部分代码

FamilyMainWnd.main()

--此示例代码运行成功如下图所示。

WndSetMobilePopupMenu.png
<上一篇:设置窗体控件是否具有MagicUI特效下一篇:设置窗口是否为模态窗口>
WndSetModalWnd
设置窗口是否为模态窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置窗口是否为模态窗口。

如设置为模态窗口，则此窗口具有优先处理并拦截游戏事件的特性，用户只能先和此窗口进行交互操作，其他窗体控件不会响应用户操作。

note_icon 备注
类似功能接口，可参见SetWndModel函数。

语法
Luacopy 复制
GUI:WndSetModalWnd(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
窗口的句柄。

_Flag

bool

 
true设置为模态窗口。

false取消设置为模态窗口。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置窗口为弹出菜单下一篇:设置窗体控件是否响应点击操作>
WndSetMouseEnableIN
设置窗体控件是否响应点击操作

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数设置指定的窗体控件是否响应点击操作。

语法
Luacopy 复制
GUI:WndSetMouseEnableIN(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Flag

bool

 
是否相应点击操作。

true响应

false不响应

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置窗口是否为模态窗口下一篇:设置窗口左键拖动属性>
WndSetMoveWithLBM
设置窗口左键拖动属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置窗口可左键拖动的属性。

手游中，在全局变量SupportWindowMove设置为true后再设置此接口即可拖动窗口。

手游中，如需要设置窗口拖动时的透明度，请参见全局变量DragWindowAlpha和接口GUI:WndSetCascadeOpacity。

语法
Luacopy 复制
GUI:WndSetMoveWithLBM(
    _HandleID
)
参数
_HandleID

int

 
指定窗口控件的句柄

点击窗口句柄了解更多信息

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent,"BkImg1",4005020000,100,100)
if _GUIHandle ~= 0 then
    GUI:WndSetMoveWithLBM(_GUIHandle) --设置窗口左键拖动属性
    GUI:WndSetCascadeOpacity(_GUIHandle,true) --拖动窗口显示透明度
end

--此示例代码运行成功如下图所示。

WndSetCascadeOpacity.png
<上一篇:设置窗体控件是否响应点击操作下一篇:设置窗体控件的自定义参数>
WndSetParam
设置窗体控件的自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数用于设置与指定窗体控件相关联的自定义参数的数值。

note_icon 备注
此函数功能同WndSetIDParam。

语法
Luacopy 复制
GUI:WndSetParam(
    _HandleID,
    _Param
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Param

unsigned int

 
自定义参数的数值

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --创建窗口
if _Wnd ~= 0 then
    GUI:WndSetParam(_Wnd,3) --设置自定义参数值“3”
end
<上一篇:设置窗口左键拖动属性下一篇:设置窗口的穿透类型>
WndSetPenetratType
设置窗口的穿透类型

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置窗口的穿透类型。

当穿透时，子控件的鼠标滚动事件会传递给父控件处理。

语法
Luacopy 复制
GUI:WndSetPenetratType(
    _HandleID,
    _Type
)
参数
_HandleID

int

 
翻页窗口的句柄。

点击窗口句柄了解更多信息。

_Type

int

 
穿透类型。

0默认值，表示无穿透。

1用于技能栏的转动，脚本一般不调用。

2用于翻页窗口控件的页滚动。

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
local _PageView = GUI:WndViewCreat(_Parent, "PakageView") --创建翻页窗口控件

if _PageView ~= 0 then
    GUI:WndSetUserData(_PageView, PageCount, 0) --设置自定义数据，用于页面计数
    GUI:WndSetPenetratType(_PageView, 2) --设置穿透类型为WndView的滚动
    GUI:WndSetFlagsM(_PageView, flg_wndBase_useBkBuffer) -设置使用背景缓存标记
    GUI:WndSetSizeM(_PageView, PageWidth * PacgeCount, 430) --设置翻页窗口的大小
    GUI:WndSetPosM(_PageView, 20, 57) --设置翻页窗口的位置
    GUI:WndSetViewPortSize(_PageView, 403, 430) --设置翻页窗口的可视区域
    GUI:WndViewSetPageSize(_PageView, PageWidth, 430) --设置翻页窗口的页大小
    GUI:WndViewSetAutoScrollRatio(_PageView, 30) --设置翻页窗口的滚动速度

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

--此示例代码创建了背包内的包含多个物品框的翻页窗口，效果如下。

WndViewCreat
<上一篇:设置窗体控件的自定义参数下一篇:设置窗口为弹出菜单>
WndSetPopupMenu
设置窗口为弹出菜单

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-02-24 00:00:00
此函数设置指定窗口为弹出菜单。

调用此接口设置弹出菜单后，在游戏内只能点击窗口以外的区域才会关闭窗口（点击窗口自身不会关闭）。

参考 WndSetMobilePopupMenu

语法
Luacopy 复制
GUI:WndSetPopupMenu(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
AttacTypeSelect.UIInit(_Parent)

AttacTypeSelect.AttackModeTable = { --申明table作为菜单按钮的选项内容
{"全体", 0},
{"和平", 1},
{"组队", 2},
{"行会", 3},
{"善恶", 4},
{"联盟", 5},
{"阵营", 6}
}

function AttacTypeSelect.UIInit(_Handle)
    GUI:WndSetPopupMenu(_Handle) --设置窗口为弹出菜单
    AttacTypeSelect.WndHandle = _Handle --传入窗口的句柄
    GUI:WndSetPosM(AttacTypeSelect.WndHandle, 40, 120) --设置窗口的大小
    for i = 1, #(AttacTypeSelect.AttackModeTable) do 
        local _GUIHandle = GUI:WndFindChildM(_Handle, "AttacType"..i) --AttacType1,AttacType2……为菜单中各个按钮的名称
        if _GUIHandle ~= 0 then  
            GUI:WndSetSizeM(_GUIHandle, 32, 17) --依次按钮大小
            GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,200,200,200)) --依次按钮文字颜色
            GUI:WndSetTextM(_GUIHandle, PlayerHeaderInfo.attackModeTable[i][1]) --依次按钮文字
        end
    end
end

--此示例代码创建了一个窗口，包括了7个按钮，效果如下。

WndSetPopupMenu
<上一篇:设置窗口的穿透类型下一篇:自动调整窗体控件的位置和大小>
WndSetPosByDeviceSize
自动调整窗体控件的位置和大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数根据分辨率自动调整窗体控件的位置和大小。

端游中，程序根据当前用户设置的分辨率，与1024×768的比值计算一个缩放因子，再根据此缩放因子调整窗体控件的位置和大小。

caution_icon 注意
手游调用此函数无任何效果。

语法
Luacopy 复制
GUI:WndSetPosByDeviceSize(
    _HandleID,
    _ChangePos,
    _ChangeSize
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_ChangePos

bool

 
是否调整窗体控件位置。

_ChangeSize

bool

 
是否调整窗体控件大小。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置窗口为弹出菜单下一篇:设置窗体控件的位置>
WndSetPosM
设置窗体控件的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件相对于父窗体的坐标位置。

语法
Luacopy 复制
GUI:WndSetPosM(
    _HandleID,
    _XPos,
    _YPos
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_XPos

int

 
窗体控件相对于父窗体的横坐标

_YPos

int

 
窗体控件相对于父窗体的纵坐标

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"关闭") --设置文字内容
    GUI:WndSetPosM(_GUIHandle, 500, 500) --重新设置按钮控件的位置
end

--此示例代码在坐标(200px, 200px)创建了一个按钮控件，然后重设位置至坐标(500px, 500px)。
<上一篇:自动调整窗体控件的位置和大小下一篇:设置窗口滚动位置>
WndSetScrollPosition
设置窗口滚动位置

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2023-07-03 00:00:00
此函数设置指定窗口的滚动偏移位置和缓动时间。

语法
Luacopy 复制
GUI:WndSetScrollPosition(
    _HandleID,
    _Offset,
    _Duration
)
参数
_HandleID

long

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Offset

float

 
滚动偏移位置

单位为像素（px）

水平滚动的窗口：正数代表向右偏移、负数代表向左偏移

垂直滚动的窗口：正数代表向下偏移、负数代表向上偏移

_Duration

int

 
缓动时间

单位为毫秒（ms）

数值越小滚动速度越快

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
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_TagWnd = GUI:WndCreateWnd(_Parent, "TagWnd", 0, 105 , 150)
if _TagWnd ~= 0 then
    GUI:WndSetSizeM(_TagWnd, 300, 100) --设置窗口尺寸为300*100
    GUI:WndSetFlagsM(_TagWnd, flg_wndBase_useBkBuffer) --设置窗口滚动标记
    GUI:WndSetScrollType(_TagWnd, 1) --设置窗口滚动类型
    for i = 1, 30 do
        local intervalX = 45
        local _GUIHandle = GUI:ImageCreate(_TagWnd, "Num"..i, 4000230000, intervalX*(i - 1), 0) --创建图片控件
        if _GUIHandle ~= 0 then
            GUI:WndSetEnableM(_GUIHandle, false) --设置图片控件为不可用状态
        end
    end
    GUI:WndSetScrollPosition(_TagWnd,-100,5) --设置窗口滚动位置
end

--此示例代码运行成功如下图所示。

WndSetScrollPosition.gif
<上一篇:设置窗体控件的位置下一篇:设置窗口的滚动类型>
WndSetScrollType
设置窗口的滚动类型

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗口的滚动类型，分为水平（左右）滚动和垂直（上下）滚动。

语法
Luacopy 复制
GUI:WndSetScrollType(
    _HandleID,
    _Type
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息。

_Type

int

 
滚动类型。

1表示水平滚动，其他值则表示垂直滚动。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _WndHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200)
GUI:WndSetScrollType(_WndHandle,2)
<上一篇:设置窗口滚动位置下一篇:设置窗口大小>
WndSetSizeM
设置窗口大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗口的大小。

语法
Luacopy 复制
GUI:WndSetSizeM(
    _HandleID,
    _W,
    _H
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_W

int

 
要设置的窗口宽度

单位为像素（px）

_H

int

 
要设置的窗口高度

单位为像素（px）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建新窗口
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,500,500)--设置窗口大小为500*500
    if GUI:WndGetSizeM(_GUIHandle) then --获取窗口大小
        local _Width = LuaRet[1]
        local _Height = LuaRet[2]
        dbg("Width is:".._Width)
        dbg("Height is:".._Height)
    end
end

--此示例代码运行成功如下图所示。

WndSetSizeM.png
<上一篇:设置窗口的滚动类型下一篇:设置窗体控件文字的排列方式>
WndSetTextArrangeType
设置窗体控件文字的排列方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置窗体控件文字的排列方式。

较常用窗体控件，如按钮等，可调用此函数设置文字的偏移量及排列方式。

语法
Luacopy 复制
GUI:WndSetTextArrangeType(
    _HandleID,
    _XOffset,
    _YOffset,
    _FontDistance,
    _ArrangeType
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_XOffset

int

 
文字的横坐标偏移量。

_YOffset

int

 
文字的纵坐标偏移量。

_FontDistance

int

 
文字的间距，单位为像素（px）。

_ArrangeType

int

 
排列类型。

0表示水平排列

1表示垂直排列

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"关闭") --设置文字内容
    GUI:WndSetTextArrangeType(_GUIHandle, 10, 10, 20, 1) --设置文字的排列方式
end

--此示例代码的效果如下。文字垂直方向排列，偏移是以按钮左上角进行了偏移。

WndSetTextArrangeType
<上一篇:设置窗口大小下一篇:设置窗体控件文本颜色>
WndSetTextColorM
设置窗体控件文本颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的文本颜色。

较常用窗体控件有按钮控件、编辑框控件等，可调用此函数设置指定控件中文本的颜色。

语法
Luacopy 复制
GUI:WndSetTextColorM(
    _HandleID,
    _Color
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Color

unsigned int

 
文本颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"关闭") --设置按钮控件的文本内容
    GUI:WndSetTextColorM(_GUIHandle, COLOR_RED) --设置按钮控件的文本颜色为红色
end

--此示例代码运行成功如下图所示。

WndSetTextColorM_2.png
<上一篇:设置窗体控件文字的排列方式下一篇:设置窗体控件的文本内容>
WndSetTextM
设置窗体控件的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的文本内容。

较常用窗体控件有按钮控件、编辑框控件等，可调用此函数设置指定控件中文本的内容。

语法
Luacopy 复制
GUI:WndSetTextM(
    _HandleID,
    _Text
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Text

string

 
文本内容

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"关闭") --设置按钮控件的文本内容
    GUI:WndSetTextColorM(_GUIHandle, COLOR_RED) --设置按钮控件的文本颜色为红色
end

--此示例代码运行成功如下图所示。

WndSetTextColorM_2.png
<上一篇:设置窗体控件文本颜色下一篇:设置窗体控件的文字偏移>
WndSetTextOffset
设置窗体控件的文字偏移

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置窗体控件的文字偏移。

较常用窗体控件，如按钮等，可调用此函数设置文字的偏移量。

语法
Luacopy 复制
GUI:WndSetTextOffset(
    _HandleID,
    _X,
    _Y
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_X

int

 
横坐标偏移量

_Y

int

 
纵坐标偏移量

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"关闭") --设置文字内容
    GUI:WndSetTextOffset(_GUIHandle, 5, -5) --设置文字的偏移
end

--此示例代码的效果如下。文字以按钮中心点进行了偏移。

WndSetTextOffset
<上一篇:设置窗体控件的文本内容下一篇:自定义窗体控件的文字描边粗细>
WndSetTextOutlineSize
自定义窗体控件的文字描边粗细

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置窗体控件的文字描边粗细。

note_icon 备注
此接口支持的窗体控件包括编辑框控件、列表框控件、多功能编辑框控件、复选框控件、组合框控件和按钮控件。

当未使用此接口进行设置时，默认size为0，即文字描边粗细使用默认值。

语法
Luacopy 复制
GUI:WndSetTextOutlineSize(
    _HandleID,
    _Size
)
参数
_HandleID

int

 
指定窗口控件的句柄

点击窗口句柄了解更多信息

_Size

int

 
文字描边粗细

单位为像素（px）

note_icon 备注
若此参数设置为0，则文字描边粗细使用默认值。

在3D手游和3D端游中，文字描边粗细支持的最大值为3px。

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
local edit = GUI:EditCreate(_Parent,"Edit",200,200,80,20)
if edit ~= 0 then 
    GUI:EditSetTextM(edit,"测试") --设置编辑框的文本内容
    GUI:WndSetEnableM(edit,false) --设置窗口不可用
    GUI:WndSetSizeM(edit,80,20) --设置窗口大小为80*20
    GUI:WndSetTextOutlineSize(edit,2) --将编辑框中的文字描边粗细设置为2px
end 

local edit = GUI:EditCreate(_Parent,"Edit2",290,200,80,60)
if edit ~= 0 then 
    GUI:EditSetTextM(edit,"测试字体") --设置编辑框的文本内容
    GUI:WndSetEnableM(edit,false) --设置窗口不可用
    GUI:WndSetSizeM(edit,80,20) --设置窗口大小为80*20
end

--此示例代码运行成功如下图所示（左边编辑框中的文字描边粗细设置为2px，右边编辑框未设置）。

WndSetTextOutlineSize.png
<上一篇:设置窗体控件的文字偏移下一篇:设置窗体控件的Tip面板是否重新加载>
WndSetTipAutoRemove
设置窗体控件的Tip面板是否重新加载

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的Tip面板再次显示时是否重新加载。

默认情况下，鼠标离开窗体控件后，Tip面板缓存被清空，再次显示时会重新加载内容。

语法
Luacopy 复制
GUI:WndSetTipAutoRemove(
    _HandleID,
    _AutoRemove
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_AutoRemove

bool

 
trueTip再次显示时会重新加载，为默认值

falseTip再次显示时不会重新加载

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Tip_Flag = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,100,100) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTipAutoRemove(_GUIHandle, true) --设置Tip再次显示时会重新加载数据
    GUI:WndSetTipFunction(_GUIHandle,"show_msg") --设置对应的回调函数
end

function show_msg()
    Tip_Flag = Tip_Flag + 1
    local _str = ""
    if Tip_Flag % 2 == 0 then
        _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"金币\n\",\"color\":\"RED\"},{\"type\":\"img\",\"imgid\":1853900004},{}]"
    else
        _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"元宝\n\",\"color\":\"RED\"},{\"type\":\"img\",\"imgid\":1853900002},{}]"
    end
    return _str
end

--此示例代码执行后，每次显示内容重新加载，金币和元宝图片会交替显示。

WndSetTipAutoRemove.gif
<上一篇:自定义窗体控件的文字描边粗细下一篇:设置窗体控件的Tips物品数据>
WndSetTipByID
设置窗体控件的Tips物品数据

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2025-01-10 00:00:00
此函数给控件设置Tips的物品数据，方便组合Tips所需的json数据。

note_icon 备注
1、此接口需要配合接口GUI:WndSetTipFunction一起使用，功能等同于GUI:WndSetTipInfo。

2、执行逻辑：鼠标移入该控件时，触发事件RDWnd2DBaseCL_wndtips_initilize，进行tip初始化操作，根据接口GUI:WndSetTipByID给定的物品数据，调用GUI:WndSetTipFunction设置的回调函数，并传递参数。

3、传递的参数：（值都是字符串类型）
TipParam["GUID"], 物品GUID
TipParam["ITEMID"], 物品模板id
TipParam["ENTITY"], 是否是实体，1表示是，0表示否
也可以通过脚本封装一个接口GetTipParam获取，比如local guid = GetTipParam("GUID");

语法
Luacopy 复制
GUI:WndSetTipByID(
    handle,
    item_guid,
    ower_guid,
    item_id
)
参数
handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

item_guid

string

 
物品的guid

item_guid

string

 
物品所属角色的guid

item_guid

int

 
物品模板id

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local item_guid = "" -- 物品GUID
local role_guid = "" -- 物品拥有者的GUID
local item_temp_id = 0 -- 物品模板ID

if CL:GetPackageItemGUIDList() then
  item_guid = LuaRet[1]
  dbg("背包中第一个物品的GUID：" .. item_guid)
end

if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_ENTITY_ROLE) then
  dbg("背包中第一个物品的拥有者GUID：" .. LuaRet)
  role_guid = LuaRet
end

if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_ID) then
  dbg("背包中第一个物品的模板ID：" .. LuaRet)
  item_temp_id = LuaRet
end

local handle = GUI:EditCreate(_Parent, "test", 630, 550, 40, 22)
if handle ~= 0 then
  GUI:WndSetTextM(handle, "测试")
  GUI:WndSetTipFunction(handle, "tipLayoutFunctionProp")
  GUI:WndSetTipByID(handle, item_guid, role_guid, item_temp_id)
end

--此示例代码运行成功如下图所示，物品Tips面板正常显示。

WndSetTipByID.png
<上一篇:设置窗体控件的Tip面板是否重新加载下一篇:设置窗体控件的Tip面板回调函数>
WndSetTipFunction
设置窗体控件的Tip面板回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件的Tip面板回调函数。

程序将会从回调函数的返回值中读取Tip面板的显示内容。

caution_icon 注意
此函数不能与WndSetTipInfo函数和Lua_WndSetTipInfo函数一起使用。

语法
Luacopy 复制
GUI:WndSetTipFunction(
    _HandleID,
    _FuncName
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_FuncName

string

 
回调脚本函数的名称

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,0,0) --创建按钮控件
GUI:WndSetTipFunction(_GUIHandle , "show_msg") --设置对应的回调函数

function show_msg()
    local _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"金币\n\",\"color\":\"RED\"},{\"type\":\"img\",\"imgid\":1853900004},{}]"
    return _str
end

--此示例代码运行成功如下图所示。

WndSetTipFunction.png
<上一篇:设置窗体控件的Tips物品数据下一篇:设置窗体控件的Tip内容>
WndSetTipInfo
设置窗体控件的Tip内容

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数设置指定窗体控件的Tip内容。

Tip面板（GUITipPanel）允许放置文字、图片和特效等元素，并可指定颜色、大小等属性。

端游中典型的Tip面板，鼠标悬停于背包中物品时，显示的该物品的说明面板。

WndSetTipInfo_3.png
语法
Luacopy 复制
GUI:WndSetTipInfo(
    _HandleID,
    _TipInfo
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_TipInfo

string

 
Tip内容

具体请参见Tips文本格式页面

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,0,0) --创建一个按钮控件
local _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"金币\n\",\"font\":\"SIMLI18\"},{\"type\":\"img\",\"imgid\":1853900004},{}]" --定义Tip内容
if _GUIHandle ~= 0 then
    GUI:WndSetTipInfo(_GUIHandle, _str) --为按钮控件设置Tip内容
end

--此示例代码运行成功如下图所示。

WndSetTipInfo_2.png
<上一篇:设置窗体控件的Tip面板回调函数下一篇:设置tip包围盒的计算方式>
WndSetTipsContent
设置tip包围盒的计算方式

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-07-11 00:00:00
此函数设置tip包围盒的计算方式。

计算包围盒有两种方式：

1.GUITipPanel的子控件GUITipBase0 ~ GUITipBase2中最大的宽高作为包围盒。

2.所有直系子控件的最大右边界和最大下边界作为包围盒。

note_icon 备注
此接口仅对使用接口WndCreateWnd创建的窗口生效。

语法
Luacopy 复制
GUI:WndSetTipsContent(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Flag

bool

 
true上述第一种方式。

false上述第二种方式。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置窗体控件的Tip内容下一篇:设置窗体控件的UTF8文本内容>
WndSetUTF8Text
设置窗体控件的UTF8文本内容

手游 2Dsupport 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2024-04-15 00:00:00
此函数设置窗体控件的UTF8文本内容。

较常用窗体控件有按钮控件、编辑框控件等，可调用此函数设置指定控件的UTF8文本内容。

note_icon 备注
明确是UTF8编码的文本，建议使用新接口。

新接口的性能更好，而且支持某些特殊字符，比如"··"。

语法
Luacopy 复制
GUI:WndSetUTF8Text(
    _HandleID,
    _Text
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Text

string

 
文本内容

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
_GUIHandle = GUI:ButtonCreate(_Parent,"test",4010210000,490,510)
if _GUIHandle ~= 0 then
    GUI:WndSetUTF8Text(_GUIHandle, "··")
end

--此示例代码运行成功如下图所示。

WndSetUTF8Text.png
<上一篇:设置tip包围盒的计算方式下一篇:设置控件文字是否使用描边>
WndSetUseTextGrow
设置控件文字是否使用描边

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-05-20 00:00:00
此函数设置控件文字是否使用描边，控件包括编辑框、列表框、多功能编辑框、复选框、组合框和按钮。

默认情况下，控件文字有描边。

文字不使用描边效果如下图所示。

WndSetUseTextGrow1

文字使用描边效果如下图所示。

WndSetUseTextGrow2

note_icon 备注
1.若使用form表单创建的控件无法使用此接口去除文字描边，则可尝试使用form字符串通用属性usegrow并将其设置为false；

2.建议不要同时使用form字符串通用属性usegrow和此接口。

语法
Luacopy 复制
GUI:WndSetUseTextGrow(
    _Handle,
    _used
)
参数
_Handle

long

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_used

bool

 
是否描边

true使用描边

false不使用描边

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckBox",1932500100,"同意自由对战",212,150)
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"同意自由对战")
    GUI:WndSetUseTextGrow(_GUIHandle, true) --设置控件文字使用描边 
    GUI:WndSetParam(_GUIHandle, 0)
    GUI:WndSetSizeM(_GUIHandle,98, 21)
    GUI:WndSetTextColorM(_GUIHandle, 4294967295)
    GUI:CheckBoxSetAutoChange(_GUIHandle, true)
end

--此示例代码运行成功如下图所示。


<上一篇:设置窗体控件的UTF8文本内容下一篇:设置窗体控件的用户自定义数据（扩展）>
WndSetUserDataEx
设置窗体控件的用户自定义数据（扩展）

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数设置窗体控件的用户自定义数据。

note_icon 备注
此接口与接口GUI:WndSetUserData的功能相同，区别在于参数_Data的数据类型不同。

语法
Luacopy 复制
GUI:WndSetUserDataEx(
    _HandleID,
    _Data,
    _DataIndex
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Data

uint

 
自定义数据的数值

默认值为0

note_icon 备注
此参数可设置的范围为 0 到 4294967295。

_DataIndex

int

 
自定义数据的索引

从0开始，依次类推。

note_icon 备注
支持最多创建10组自定义数据。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent, "test", 0, 200, 200)
if _GUIHandle ~= 0 then
    GUI:WndSetUserDataEx(_GUIHandle,4010620000,0) --设置第0条窗体控件的用户自定义数据
    local data0 = GUI:WndGetUserDataEx(_GUIHandle,0) --获取第0条窗体控件的用户自定义数据的数值
    dbg("自定义数据0的数值为"..data0)
end

--此示例代码运行成功如下图所示。

WndGetUserDataEx.png
<上一篇:设置控件文字是否使用描边下一篇:设置窗体控件的用户自定义数据>
WndSetUserData
设置窗体控件的用户自定义数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置窗体控件的用户自定义数据。

note_icon 备注
此接口与接口GUI:WndSetUserDataEx的功能相同，区别在于参数_Data的数据类型不同。

语法
Luacopy 复制
GUI:WndSetUserData(
    _HandleID,
    _Data,
    _DataIndex
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Data

int

 
自定义数据的数值

默认值为0

note_icon 备注
此参数可设置的范围为 -2147483648 到 2147483647。

若需要设置更大的数值请使用接口GUI:WndSetUserDataEx。

_DataIndex

int

 
自定义数据的索引

从0开始，依次类推。

note_icon 备注
支持最多创建10组自定义数据。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
-- 设置遥感固定情况下位置偏移 OffsetX, OffsetY
GUI:WndSetUserData(_Parent, 180, 0)
GUI:WndSetUserData(_Parent, 160, 1)
GUI:WndSetUserData(_Parent, 1857000006, 2) ---WalkBackImageID
GUI:WndSetUserData(_Parent, 1857000015, 3) ---RunBackImageID
GUI:WndSetUserData(_Parent, 1857000018, 4) ---WalkTextureImageID
GUI:WndSetUserData(_Parent, 1857000017, 5) ---RunTextureImageID
GUI:WndSetUserData(_Parent, 1, 6) -- 摇杆type

--此示例代码的对手游中的遥控窗体控件定义了7组自定义数据。
<上一篇:设置窗体控件的用户自定义数据（扩展）下一篇:设置窗体控件是否可见>
WndSetVisible
设置窗体控件是否可见

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数设置指定窗体控件是否可见。

语法
Luacopy 复制
GUI:WndSetVisible(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Flag

bool

 
true设置为可见状态

false设置为不可见状态

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建新窗口
if _GUIHandle ~= 0 then
    GUI:WndSetVisible(_GUIHandle, false) --设置窗体控件为不可见状态
end

--此代码执行成功后不会看到创建的窗体控件。
<上一篇:设置窗体控件的用户自定义数据下一篇:设置窗口缓动动画>
WndTween
设置窗口缓动动画

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数设置窗口缓动动画。

语法
Luacopy 复制
GUI:WndTween(
    _HandleID,
    vars,
    time,
    completeFun,
    EaseType
)
参数
_HandleID

number

 
窗口句柄

点击窗口句柄了解更多信息。

vars

string

 
缓动json串

例如：'{"x":100, "y":100, "alpha":0.5, "scaleX":0.5, "scaleY":0.5, "rotation":90}'

time

number

 
缓动时间，单位为毫秒。

completeFun

string

 
lua回调函数名

EaseType

number

 
缓动类型

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
local ItemBar = GUI:WndCreateWnd(_Parent , "ItemBar", 0, -115, 270)
GUI:ImageSetAlpha(ItemBar,0)
GUI:WndTween(ItemBar , '{"alpha":1}', 100, "effects_appear", EASETYPE_QUADOUT) --EASETYPE_QUADOUT值为11

function effects_appear(_Handle)
 --回调函数
end
<上一篇:设置窗体控件是否可见
GetWndMousePos
获取鼠标相对指定窗口的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取鼠标相对指定窗口的位置。

note_icon 备注
获取的坐标位置存储在LuaRet中。

LuaRet[1]横坐标（X）；

LuaRet[2]纵坐标（Y）。

语法
Luacopy 复制
GUI:GetWndMousePos(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
GUI:GetWndMousePos(_Parent)
dbg("X:" .. LuaRet[1]) --输出横坐标
dbg("Y:" .. LuaRet[2]) --输出纵坐标

--此示例代码将在控制台输出当前鼠标的坐标位置。
--X:1426
--Y:121
下一篇:获取滚动窗口中滚动条滑块的位置>
ScrollWndGetScrollPos
获取滚动窗口中滚动条滑块的位置

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2024-01-11 00:00:00
此函数获取滚动窗口中滚动条滑块的位置。

caution_icon注意
此接口仅在指定窗口为滚动窗口且带有滚动条时生效。

语法
Luacopy 复制
GUI:ScrollWndGetScrollPos(
    _Handle
)
参数
_Handle

int

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

返回值
int

 
滚动条中滑块的位置

范围为0-100

版本历史
v1.0

 
首次发布

v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local str = ""  
str =str.. "#COLORCOLOR_GOLD#第一行第一行第一行第一行第一行\n"
str =str.. "#COLORCOLOR_GREENG#第二行第二行第二行第二行第二行\n"
str =str.. "#COLORCOLOR_GOLD#第三行第三行第三行第三行第三行\n"
str =str.. "#COLORCOLOR_GREENG#第四行第四行第四行第四行第四行\n"
str =str.. "#COLORCOLOR_GOLD#第五行第五行第五行第五行第五行\n"
str =str.. "#COLORCOLOR_GREENG#第六行第六行第六行第六行第六行"
local wnd = GUI:WndCreateScrollWnd(_Parent,"Notice", 150, 150,300, 100) --创建一个带滚动条的窗口
if wnd ~= 0 then
    GUI:ScrollWndSetScrollPos(wnd, 50) --设置滚动条中滑块的位置为50
end

_GUIHandle = GUI:RichEditCreate(wnd, "Text", 30, 0, 250,150)
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置窗口为不可用状态
    GUI:RichEditAppendString(_GUIHandle, str) --多功能编辑框添加文本
end

local id = CL:AddDelayTask("Timer()", 200, 1)

function Timer()
    local pos = GUI:ScrollWndGetScrollPos(wnd)
    dbg("滑动条的位置是："..pos)
end

--此示例代码运行成功如下图所示。同时dbgview中将输出“滑动条的位置是：50”

ScrollWndSetScrollPos.png
<上一篇:获取鼠标相对指定窗口的位置下一篇:获取子窗口句柄>
WndFindChildM
获取子窗口句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数通过父窗口句柄和要查询的子窗口的名称，获取相应子窗口的句柄。

note_icon 备注
此函数功能类似于GetWindow。

区别在于此接口的查询深度为1，即只查询传入句柄的窗口中所有子窗口，不再继续查询子窗口下包含的窗口。

语法
Luacopy 复制
GUI:WndFindChildM(
    _HandleID,
    _ID
)
参数
_HandleID

int

 
父窗口句柄（将从此窗口开始查询）

点击窗口句柄了解更多信息

_ID

string

 
要查询窗口的名称

返回值
int

 
获取成功则返回窗口（子控件）的句柄

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local  _Handle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",1900000003,200,200) --新建一个窗口
if _Handle ~= 0 then
    dbg("创建的窗口句柄：".._Handle)
end

local _GUIHandle = GUI:WndFindChildM(_Parent,"MenuTestWnd") --获取窗口的句柄
if _GUIHandle ~= 0 then
    dbg("获取得到的窗口句柄：".._GUIHandle)
end

--此示例代码运行成功如下图所示（新建窗口时返回的窗口句柄与获取得到的窗口句柄一致）。

WndFindChild.png
<上一篇:获取滚动窗口中滚动条滑块的位置下一篇:获取窗口句柄>
WndFindWindow
获取窗口句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数通过父窗口句柄和要查询窗口（子控件）的名称，获取相应窗口（子控件）的句柄。

语法
Luacopy 复制
GUI:WndFindWindow(
    _HandleID,
    _Info
)
参数
_HandleID

int

 
父窗口句柄，将从此句柄查询。

点击窗口句柄了解更多信息。

_Info

string

 
要查询窗口的名称。

参数值设置为parent则获取父窗口信息，否则根据设置的字符串获取相应窗口（子控件）的句柄。

返回值
句柄

int

 
返回窗口（子控件）的句柄。

如获取失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _CommonHandle = GUI:WndFindWindow(_Parent, "ExampleItemCtrl0")--获取名称为ExampleItemCtrl0的子控件句柄
<上一篇:获取子窗口句柄下一篇:判断窗体控件标记中是否有特定掩码>
WndFlagMask
判断窗体控件标记中是否有特定掩码

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数判断窗体控件标记中是否有特定掩码。

语法
Luacopy 复制
GUI:WndFlagMask(
    _HandleID,
    _Mask
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Mask

unsigned int

 
掩码的十进制值。

返回值
bool

 
true表示存在指定的掩码。

false表示不存在指定的掩码。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 100, 100, 200, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框文字
    GUI:WndSetFlags(_GUIHandle,flg_dlgEdit_textInCenter) --设置标记，表示文字在中间位置
    GUI:WndAddFlags(_GUIHandle,flg_dlgEdit_noBackground) --添加标记
    dbg("标记值："..GUI:WndGetFlags(_GUIHandle))
    if GUI:WndFlagMask(_GUIHandle, 4194304) then
        dbg("存在掩码")
    else
        dbg("不存在掩码")
    end
end

--示例代码设置了以下两个标记：
flg_dlgEdit_textInCenter = 0x00400000 (十进制：4194304)
flg_dlgEdit_noBackground = 0x00200000 (十进制：2097152)
控制台将输出：
“标记值：6291456”
“存在掩码”
<上一篇:获取窗口句柄下一篇:获取指定窗体控件的混色类型>
WndGetBlendType
获取指定窗体控件的混色类型

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2022-08-19 00:00:00
此函数获取指定窗体控件的混色类型，目前支持图片控件、按钮控件和物品框控件。

参考 WndSetBlendType

note_icon 备注
此接口的作用与接口CL:ImageGetBlendType的作用类似，但此接口适用的控件类型更为丰富（包括图片控件、按钮控件和物品框控件），建议直接使用此接口。

语法
Luacopy 复制
GUI:WndGetBlendType(
    handle
)
参数
handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
混色类型值（1-6）

具体可参考接口GUI:WndSetBlendType的参数blendtype的说明。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
_Handle = GUI:ImageCreate(_Parent, "Modelmagic", 3005400000, 100, 450)
if 0 ~= _Handle then
    GUI:WndSetCanRevMsg(_Handle, false)
end  

local addx = 200
for i = 1 ,6 do 
    _Handle = GUI:ImageCreate(_Parent, "Modelmagic"..i, 3005400000, addx*i-350, 150)
    if 0 ~= _Handle then
        GUI:WndSetCanRevMsg(_Handle, false)
        GUI:WndSetBlendType(_Handle, i)
        dbg("图片控件"..i.."的混色类型："..GUI:WndGetBlendType(_Handle))
    end

--此示例代码运行成功如下图所示，同时控制台中还会打印相关内容。

--第一排的图片中，从左往右图片控件的混色类型依次为1、2、3、4、5、6；第二排的图片为该图片未进行混色的效果。

ImageSetBlendType.png

ImageGetBlendType.png
<上一篇:判断窗体控件标记中是否有特定掩码下一篇:获取窗口是否响应操作>
WndGetCanRevMsg
获取窗口是否响应操作

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取窗口是否响应操作。

语法
Luacopy 复制
GUI:WndGetCanRevMsg(
    _HandleID
)
参数
_HandleID

int

 
要获取属性的窗口句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true消息将会传递至此窗口下的子控件。

false消息将不会传递至此窗口下的子控件。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _CommonHandle = GUI:WndGetCanRevMsg(_Parent)--获取窗口属性
<上一篇:获取指定窗体控件的混色类型下一篇:获取窗口子控件数量>
WndGetChildCount
获取窗口子控件数量

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数通过传入的窗口句柄找到该窗口，并查询所有子窗口，最后返回子窗口数量。

语法
Luacopy 复制
GUI:WndGetChildCount(
    _HandleID
)
参数
_HandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息。

返回值
数量

int

 
返回子窗口的数量。

如获取失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
GUI:WndGetChildCount(_Parent)
<上一篇:获取窗口是否响应操作下一篇:获取所有子控件的类型和句柄>
WndGetChildWnd
获取所有子控件的类型和句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-04-29 00:00:00
此函数通过指定的控件句柄查找该控件下所有子控件的类型和句柄。

语法
Luacopy 复制
GUI:WndGetChildWnd(
    _HandleID
)
参数
_HandleID

int

 
指定父控件的句柄（将从此句柄下查找子控件）

点击窗口句柄了解更多信息

返回值
手游、H5：

bool

 
true获取成功

false获取失败（未查询到任何子控件）

 
端游：

bool

 
true执行成功

false执行失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取子控件的类型和句柄存储在LuaRet中。

LuaRet[n][1]第n个子控件的类型（具体请参见控件类型说明页面）

LuaRet[n][2]第n个子控件的句柄

端游中，若返回值为true仅代表执行成功，具体是否获取成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建一个窗体控件作为父控件
if _GUIHandle ~= 0 then
    GUI:ImageCreate(_GUIHandle,"GUI_Example1", 1853710066, 10, 0) --创建一个图片控件
    GUI:ButtonCreate(_GUIHandle, "GUI_Example2", 4000230000, 10, 100) --创建一个按钮控件
    GUI:CheckBoxCreate(_GUIHandle,"GUI_Example3",1900112013,"复选框CheckBox",10,200) --创建一个复选框控件
end

dbg("接口GUI:WndGetChildWnd的返回值："..tostring(GUI:WndGetChildWnd(_GUIHandle))) --打印接口GUI:WndGetChildWnd的返回值

if GUI:WndGetChildWnd(_GUIHandle) then
    for i=1,#LuaRet do
        dbg("获取控件类型_CtrlType:"..LuaRet[i][1]) --打印控件类型
        dbg("获取控件句柄_CtrlHandle:"..LuaRet[i][2]) --打印控件句柄
        dbg("获取控件名称_CtrlIDM:"..GUI:WndGetIDM(LuaRet[i][2])) --打印控件名称
    end
end

--此示例代码运行成功后控制台中会打印相关内容。

WndGetChildWnd.png
<上一篇:获取窗口子控件数量下一篇:获取窗口是否可用>
WndGetEnableM
获取窗口是否可用

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取有响应的控件是否能使用。

note_icon 备注
有响应的控件包括按钮控件、编辑框控件等。

语法
Luacopy 复制
GUI:WndGetEnableM(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
true控件可用

false控件不可用

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"test1",1802500006,200 ,200) --创建按钮控件1
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, true) --设置按钮控件1可用
    if GUI:WndGetEnableM(_GUIHandle) then --获取按钮控件1是否可用
        dbg("按钮控件1可用")
    else
        dbg("按钮控件1不可用")
    end
end

_GUIHandle = GUI:ButtonCreate(_Parent,"test2",1802500006,200 ,300) --创建按钮控件2
if _GUIHandle ~= 0 then
    GUI:WndSetEnableM(_GUIHandle, false) --设置按钮控件2不可用
    if GUI:WndGetEnableM(_GUIHandle) then --获取按钮控件2是否可用
        dbg("按钮控件2可用")
    else
        dbg("按钮控件2不可用")
    end
end

--此示例代码运行成功如下图所示（上方的按钮控件可以点击，下方的按钮控件不可点击），同时控制台会输出如下内容。

WndSetEnableM.png

WndGetEnableM.png
<上一篇:获取所有子控件的类型和句柄下一篇:获取窗体控件的标记>
WndGetFlags
获取窗体控件的标记

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取窗体控件的标记。

脚本WndDefine.lua中有预先定义了窗体控件的标记。

请点击控件标记了解更多信息。

语法
Luacopy 复制
GUI:WndGetFlags(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
unsigned int

 
标记的数值（十进制格式）

note_icon 备注
如此控件设置了多个标记，则返回值为各个标记的数值和。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 100, 100, 200, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框文字
    GUI:WndSetFlags(_GUIHandle,flg_dlgEdit_textInCenter) --设置标记，表示文字在中间位置
    GUI:WndAddFlags(_GUIHandle,flg_dlgEdit_noBackground) --添加标记
    dbg("标记值："..GUI:WndGetFlags(_GUIHandle))
end

--示例代码设置了以下两个标记：
flg_dlgEdit_textInCenter = 0x00400000 (十进制：4194304)
flg_dlgEdit_noBackground = 0x00200000 (十进制：2097152)
十六进制值将转换为十进制后求和，控制台将输出"标记值：6291456"
<上一篇:获取窗口是否可用下一篇:获取窗体控件的提示文字>
WndGetHint
获取窗体控件的提示文字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取当鼠标悬浮于窗体控件上的提示文字。

语法
Luacopy 复制
GUI:WndGetHint(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

string

 
提示文字的内容。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _SaveCheck = GUI:CheckBoxCreate(_Parent, "SaveLoginName", 1804300007, "", 200, 200)
if _SaveCheck ~= 0 then
    GUI:WndSetHintWidth(_SaveCheck, 50) --设置提示文字宽度
    GUI:WndSetHint(_SaveCheck, "是否保存账号") --设置提示文字宽度
    GUI:WndSetSizeM(_SaveCheck, 24, 24) --设置复选框大小
end
dbg("提示文字的内容为：" .. GUI:WndGetHint(_SaveCheck))

--示例代码将在控制台输出“提示文字的内容为：是否保存账号”。
<上一篇:获取窗体控件的标记下一篇:获取窗体控件的名称>
WndGetIDM
获取窗体控件的名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定窗体控件的名称。

语法
Luacopy 复制
GUI:WndGetIDM(
    _HandleID
)
参数
_HandleID

int

 
要获取名称的控件句柄

点击窗口句柄了解更多信息

返回值
string

 
获取成功则返回指定窗体控件的名称

获取失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"New_Window",1900000003,200,200)
if _GUIHandle ~= 0 then
    dbg("该窗体控件改变前的名称为："..GUI:WndGetIDM(_GUIHandle)) --获取该窗体控件改变后的名称
    GUI:WndSetIDM(_GUIHandle,"GUI_Example") --设置该窗体控件的名称为“GUI_Example”
    dbg("该窗体控件改变后的名称为："..GUI:WndGetIDM(_GUIHandle)) --获取该窗体控件改变后的名称
end

--此示例代码运行成功如下图所示。

Lua_WndSetIDM.png
<上一篇:获取窗体控件的提示文字下一篇:获取窗体控件的自定义参数>
WndGetIDParam
获取窗体控件的自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数用于获取与指定窗体控件相关联的自定义参数。

语法
Luacopy 复制
GUI:WndGetIDParam(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

unsigned int

 
函数执行成功则返回自定义参数的数值。否则执行失败返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --创建窗口
if _Wnd ~= 0 then
    GUI:WndSetIDParam(_Wnd,3) --设置自定义参数值“3”
end
local param = GUI:WndGetIDParam(_Wnd)
dbg("User parameter is: " .. param)

--示例代码将在控制台输出“User parameter is: 3”。
<上一篇:获取窗体控件的名称下一篇:获取控件图片资源编号>
WndGetImageID
获取控件图片资源编号

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定控件的图片资源编号。

语法
Luacopy 复制
GUI:WndGetImageID(
    _HandleID
)
参数
_HandleID

int

 
要指定控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

int

 
获取成功，则返回指定控件的图片资源编号。

获取失败，则返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200)--新建一个窗口，获取窗口句柄
local _ResourceID = GUI:WndGetImageID(_GUIHandle) --获取窗口图片资源的ID，即"1900000003"
<上一篇:获取窗体控件的自定义参数下一篇:获取窗口Esc关闭属性>
WndGetIsESCClose
获取窗口Esc关闭属性

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取窗口是否可按Esc键自动关闭的属性。

语法
Luacopy 复制
GUI:WndGetIsESCClose(
    _HandleID
)
参数
_HandleID

int

 
要获取属性的窗口句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true可按Esc键自动关闭。

false不可按Esc键自动关闭。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _CommonHandle = GUI:WndGetIsESCClose(_Parent)--获取窗口属性
<上一篇:获取控件图片资源编号下一篇:获取物品框中物品的GUIData句柄>
WndGetItemGUIDataHandle
获取物品框中物品的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取物品框中物品的GUIData句柄。

note_icon 备注
此函数为早期接口，推荐使用ItemCtrlGetGUIData函数，两者功能相同。

语法
Luacopy 复制
GUI:WndGetItemGUIDataHandle(
    _HandleID
)
参数
_HandleID

int

 
指定物品框控件的句柄

点击窗口句柄了解更多信息

返回值
long

 
物品的GUIData句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    dbg("物品的GUIData句柄为"..GUI:WndGetItemGUIDataHandle(_GUIHandle))  --获取物品框中物品的GUIData句柄
end

--此示例代码运行成功如下图所示。

WndGetItemGUIDataHandle.png
<上一篇:获取窗口Esc关闭属性下一篇:获取窗体控件是否具有MagicUI特效>
WndGetMagicUI
获取窗体控件是否具有MagicUI特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定的窗体控件是否具有MagicUI特效。

语法
Luacopy 复制
GUI:WndGetMagicUI(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

int

 
1有MagicUI特效

0无MagicUI特效

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"edit_example", 200, 200, 150, 30) --创建一个编辑框
if _GUIHandle ~= 0 then
    GUI:WndSetMagicUI(_GUIHandle,1)
    GUI:EditSetTextM(_GUIHandle,"MagicUI特效展示")
    if GUI:WndGetMagicUI(_GUIHandle) == 1 then
        dbg("有MagicUI特效")
    else
        dbg("无MagicUI特效")
    end
end

--此示例代码将在控制台输出“有MagicUI特效”。
<上一篇:获取物品框中物品的GUIData句柄下一篇:获取窗体控件是否响应点击操作>
WndGetMouseEnableIN
获取窗体控件是否响应点击操作

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数获取指定的窗体控件是否响应点击操作。

语法
Luacopy 复制
GUI:WndGetMouseEnableIN(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
是否相应点击操作。

true响应

false不响应

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取窗体控件是否具有MagicUI特效下一篇:获取窗口左键拖动属性>
WndGetMoveWithLBM
获取窗口左键拖动属性

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取窗口是否可用鼠标左键进行拖动的属性。

语法
Luacopy 复制
GUI:WndGetMoveWithLBM(
    _HandleID
)
参数
_HandleID

int

 
要获取属性的窗口句柄。

点击窗口句柄了解更多信息。

返回值
属性

bool

 
true可用鼠标左键进行拖动。

false不可用鼠标左键进行拖动。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _CommonHandle = GUI:WndGetMoveWithLBM(_Parent)--获取窗口属性
<上一篇:获取窗体控件是否响应点击操作下一篇:获取窗体控件的自定义参数>
WndGetParam
获取窗体控件的自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数用于获取与指定窗体控件相关联的自定义参数的数值。

note_icon 备注
此函数功能同WndGetIDParam。

请配对使用，即如调用WndSetParam设置参数，必须使用WndGetParam获取参数。

语法
Luacopy 复制
GUI:WndGetParam(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
unsigned int

 
执行成功则返回自定义参数的数值

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --创建窗口
if _Wnd ~= 0 then
    GUI:WndSetParam(_Wnd,3) --设置自定义参数值“3”
end
local param = GUI:WndGetParam(_Wnd)
dbg("User parameter is: " .. param)

--示例代码将在控制台输出“User parameter is: 3”。
<上一篇:获取窗口左键拖动属性下一篇:获取父窗口句柄>
WndGetParentM
获取父窗口句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2023-05-31 00:00:00
此函数通过指定的窗口句柄，获取相应窗口的父窗口（即父控件）的句柄。

语法
Luacopy 复制
GUI:WndGetParentM(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
int

 
获取成功则返回父窗口句柄

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
dbg("父窗口句柄为：" .. _Parent)
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --新建窗口
if _Wnd ~= 0 then
    local handle = GUI:WndGetParentM(_Wnd) --获取父窗口句柄
    dbg("ExampleWnd的父窗口句柄为：" .. handle)
end

--此示例代码运行成功如下图所示（两次打印的父窗口句柄一致）。

WndGetParentM.png
<上一篇:获取窗体控件的自定义参数下一篇:获取窗体控件相对于父窗体的坐标位置>
WndGetPosM
获取窗体控件相对于父窗体的坐标位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取窗体控件在其父窗口容器内所在的坐标位置。

语法
Luacopy 复制
GUI:WndGetPosM(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的坐标位置存储在LuaRet中。

LuaRet[1]横坐标；

LuaRet[2]纵坐标。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"SafeCB",1930001000,"",250,50) --创建一个复选框控件
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
    GUI:CheckBoxSetText(_GUIHandle, "安全区") --设置复选框控件的文本内容
    if GUI:WndGetPosM(_GUIHandle) then
        local _XPOS = LuaRet[1]
        local _YPOS = LuaRet[2]
        dbg("横坐标为：" .. _XPOS)
        dbg("纵坐标为：" .. _YPOS)
    end
end

--此示例代码运行成功如下图所示。

WndGetPosM.png
<上一篇:获取父窗口句柄下一篇:获取窗体控件的自定义属性>
WndGetProperty
获取窗体控件的自定义属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定窗体控件的自定义属性的值。

程序将根据属性名称获取对应的属性值。

note_icon 备注
自定义属性主要分为两种：

1.程序中已定义具体功能的属性，相关信息请参见窗体控件的自定义属性定义页面；

2.脚本中自定义的属性，主要用于区分各个窗体控件在游戏中的实际用途。

  例如：对于按钮控件，可定义描述为“按钮功能”的属性以区别每个按钮控件在游戏中实际的用途。

语法
Luacopy 复制
GUI:WndGetProperty(
    _HandleID,
    _Key
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Key

string

 
属性名称

返回值
string

 
指定的自定义属性的属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",4000240016,66,236) --创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --设置按钮控件上的文字为“背包扩展”
    GUI:WndAddProperty(_GUIHandle,"按钮功能","解锁") --设置按钮控件的文本内容支持换行符“\n”
    dbg("自定义属性值为"..GUI:WndGetProperty(_GUIHandle,"按钮功能")) --获取按钮控件“按钮功能”属性的属性值
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

WndAddProperty_2.png

WndGetProperty_2.png
<上一篇:获取窗体控件相对于父窗体的坐标位置下一篇:获取窗体控件的事件回调函数>
WndGetRegistScript
获取窗体控件的事件回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定的窗体控件事件对应的回调函数名称。

语法
Luacopy 复制
GUI:WndGetRegistScript(
    _HandleID,
    _Msg
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Msg

int

 
指定窗体控件的事件ID。

请点击窗体控件事件，了解更多信息。

返回值
参数

string

 
返回事件对应的回调函数名称。如没有，则返回空字符串。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_WindowHandle = GUI:WndCreateWnd(_Parent, "example", 1859710000, 100, 100) --新建一个窗口
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_WindowHandle, 500, 500) --设置窗口大小
    GUI:ImageSetFitSize(_WindowHandle, true) --设置窗口图片自适应窗口大小
    GUI:WndRegistScript(_WindowHandle, RDWndBaseCL_mouse_lbClick, "Close_Window") --注册窗体“鼠标左键点击”事件发生时回调的函数
    dbg("回调函数名称：" .. GUI:WndGetRegistScript(_WindowHandle,RDWndBaseCL_mouse_lbClick))
end

function Close_Window()
    WndClose(_WindowHandle) --关闭窗口
end

--此示例代码创建一个窗口，当鼠标左键点击窗口时，窗口关闭。控制台将输出“回调函数名称：Close_Window”。
<上一篇:获取窗体控件的自定义属性下一篇:获取窗体控件的屏幕坐标>
WndGetScreenPos
获取窗体控件的屏幕坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定窗体控件相对于游戏主窗口左上角的坐标位置。

语法
Luacopy 复制
GUI:WndGetScreenPos(
    _HandleID
)
参数
_HandleID

int

 
要获取属性的窗口句柄

点击窗口句柄了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的坐标位置存储在LuaRet中。

LuaRet[1]横坐标；

LuaRet[2]纵坐标。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"SafeCB",1930001000,"",100,200) --创建复选框控件
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
    GUI:CheckBoxSetText(_GUIHandle, "安全区") --设置复选框控件的文本内容
    if GUI:WndGetScreenPos(_GUIHandle) then
        local _XPOS = LuaRet[1]
        local _YPOS = LuaRet[2]
        dbg("横坐标为：" .. _XPOS)
        dbg("纵坐标为：" .. _YPOS)
    end
end

--此示例代码运行成功如下图所示。

WndGetScreenPos.png
<上一篇:获取窗体控件的事件回调函数下一篇:获取窗口大小>
WndGetSizeM
获取窗口大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定窗口的大小。

语法
Luacopy 复制
GUI:WndGetSizeM(
    _HandleID
)
参数
_HandleID

int

 
要获取属性的窗口句柄

点击窗口句柄了解更多信息

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取窗口大小的数值存储在LuaRet中。

LuaRet[1]窗口的宽度，单位为像素（px）；

LuaRet[2]窗口的高度，单位为像素（px）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建新窗口
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,500,500)--设置窗口大小为500*500
    if GUI:WndGetSizeM(_GUIHandle) then --获取窗口大小
        local _Width = LuaRet[1]
        local _Height = LuaRet[2]
        dbg("Width is:".._Width)
        dbg("Height is:".._Height)
    end
end

--此示例代码运行成功如下图所示。

WndSetSizeM.png
<上一篇:获取窗体控件的屏幕坐标下一篇:获取窗体控件的文字颜色>
WndGetTextColorM
获取窗体控件的文字颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-07-18 00:00:00
此函数获取窗体控件的文字颜色。

较常用窗体控件，如按钮、编辑框等，可调用此函数获取文字的颜色属性。

语法
Luacopy 复制
GUI:WndGetTextColorM(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
unsigned int

 
窗体控件文字透明度和颜色的十进制值

如FF00FF00，分别表示ARGB中的透明度、红色值、绿色值和蓝色值，再将其转换为十进制值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title",400, 100,100, 30) --创建编辑框控件
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文字内容
    GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,0x00,0xFF,0x00)) --设计文字颜色，0x代表其后为十六进制数值
end
dbg("按钮的文字颜色为：" .. GUI:WndGetTextColorM(_GUIHandle))

--示例代码将在控制台输出“按钮的文字颜色为：‭4278255360‬”。
<上一篇:获取窗口大小下一篇:获取窗体控件的文字>
WndGetText
获取窗体控件的文字

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取窗体控件的文字。

较常用窗体控件，如按钮，可调用此函数获取文字的内容。

语法
Luacopy 复制
GUI:WndGetText(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

返回值
参数

string

 
文字内容。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"关闭") --设置文字内容
end
dbg("按钮的文字内容为：" .. GUI:WndGetText(_GUIHandle))

--示例代码将在控制台输出“按钮的文字内容为：关闭”。
<上一篇:获取窗体控件的文字颜色下一篇:获取控件的类型>
WndGetUIType
获取控件的类型

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-02-24 00:00:00
此函数获取控件的类型。

语法
Luacopy 复制
GUI:WndGetUIType(
    handle
)
参数
handle

int

 
句柄

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
GUI:WndGetUIType(_Parent)
dbg("窗口控件类型"..LuaRet)

--获取结果如下图所示。

WndGetUIType.png

--此示例代码运行成功如下图所示，与预期编号一一对应。

WndGetUIType_2.png
<上一篇:获取窗体控件的文字下一篇:获取控件文字是否使用描边>
WndGetUseTextGrow
获取控件文字是否使用描边

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取控件文字是否使用描边，控件包括编辑框、列表框、多功能编辑框、复选框、组合框和按钮。

语法
Luacopy 复制
GUI:WndGetUseTextGrow(
    _Handle
)
参数
_Handle

long

 
控件句柄

点击窗口句柄了解更多信息。

返回值
bool

 
true使用描边

false不使用描边

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取控件的类型下一篇:获取窗体控件的用户自定义数据（扩展）>
WndGetUserDataEx
获取窗体控件的用户自定义数据（扩展）

手游 2Dsupport 3Dnot_support

端游 2Dsupport 3Dnot_support

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数获取窗体控件的用户自定义数据。

note_icon 备注
此接口与接口GUI:WndGetUserData的功能相同，区别在于返回值的数据类型不同。

语法
Luacopy 复制
GUI:WndGetUserDataEx(
    _HandleID,
    _DataIndex
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_DataIndex

int

 
自定义数据的索引

从0开始，依次类推。

返回值
uint

 
自定义数据的数值

note_icon 备注
返回值的范围为 0 到 4294967295。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent, "test", 0, 200, 200)
if _GUIHandle ~= 0 then
    GUI:WndSetUserDataEx(_GUIHandle,4010620000,0) --设置第0条窗体控件的用户自定义数据
    local data0 = GUI:WndGetUserDataEx(_GUIHandle,0) --获取第0条窗体控件的用户自定义数据的数值
    dbg("自定义数据0的数值为"..data0)
end

--此示例代码运行成功如下图所示。

WndGetUserDataEx.png
<上一篇:获取控件文字是否使用描边下一篇:获取窗体控件的用户自定义数据>
WndGetUserData
获取窗体控件的用户自定义数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取窗体控件的用户自定义数据。

note_icon 备注
此接口与接口GUI:WndGetUserDataEx的功能相同，区别在于返回值的数据类型不同。

语法
Luacopy 复制
GUI:WndGetUserData(
    _HandleID,
    _DataIndex
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_DataIndex

int

 
自定义数据的索引

从0开始，依次类推。

返回值
int

 
自定义数据的数值

note_icon 备注
返回值的范围为 -2147483648 到 2147483647。

若需要获取更大的数值请使用接口GUI:WndGetUserDataEx。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
-- 设置遥感固定情况下位置偏移 OffsetX, OffsetY
GUI:WndSetUserData(_Parent, 180, 0)
GUI:WndSetUserData(_Parent, 160, 1)
GUI:WndSetUserData(_Parent, 1857000006, 2) ---WalkBackImageID
GUI:WndSetUserData(_Parent, 1857000015, 3) ---RunBackImageID
GUI:WndSetUserData(_Parent, 1857000018, 4) ---WalkTextureImageID
GUI:WndSetUserData(_Parent, 1857000017, 5) ---RunTextureImageID
GUI:WndSetUserData(_Parent, 1, 6) -- 摇杆type
dbg("取得参数为：" .. GUI:WndGetUserData(_Parent, 4))--取得第5组参数值

--示例代码将在控制台输出“取得参数为：1857000018”。
<上一篇:获取窗体控件的用户自定义数据（扩展）下一篇:获取窗体控件的可见状态>
WndGetVisible
获取窗体控件的可见状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数获取指定窗体控件的可见状态。

语法
Luacopy 复制
GUI:WndGetVisible(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
true指定窗体控件为可见状态

false指定窗体控件为不可见状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建新窗口
if _GUIHandle ~= 0 then
    GUI:WndSetVisible(_GUIHandle, true) --设置窗体控件为可见状态
    if GUI:WndGetVisible(_GUIHandle) then --获取窗体控件的可见状态
        dbg("指定窗体控件可见")
    else
        dbg("指定窗体控件不可见")
    end
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

Lua_WndSetVisible.png

WndGetVisibleM.png
<上一篇:获取窗体控件的用户自定义数据下一篇:判断窗口是否存在>
WndIsLive
判断窗口是否存在

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数判断指定的窗口是否存在。

语法
Luacopy 复制
GUI:WndIsLive(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
bool

 
true窗口存在

false窗口已被关闭或者窗口不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --新建一个窗口
if GUI:WndIsLive(_GUIHandle) then --判断窗口是否存在
    dbg("窗口存在")
else
    dbg("窗口已被关闭")
end

--此示例代码运行成功如下图所示。

WndIsLive.png
<上一篇:获取窗体控件的可见状态下一篇:判断指定坐标点是否在窗体控件内>
WndPtInWindowM
判断指定坐标点是否在窗体控件内

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数判断指定坐标点是否在指定窗体控件内。

语法
Luacopy 复制
GUI:WndPtInWindowM(
    _HandleID,
    _X,
    _Y
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_X

int

 
指定坐标点相对于指定窗体控件左上角的横坐标

_Y

int

 
指定坐标点相对于指定窗体控件左上角的纵坐标

note_icon 备注
此接口以指定窗体控件的左上角为原点进行判断，因此要判断的坐标点的坐标是相对于指定窗体控件左上角的坐标。

返回值
bool

 
true指定坐标点在窗体控件内

false指定坐标点不在窗体控件内

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --新建一个窗口
if GUI:WndPtInWindowM(_GUIHandle,10, 10) then --判断指定坐标点是否在窗口内
    dbg("指定坐标在窗口内")
else
    dbg("指定坐标不在窗口内")
end

--此示例代码运行成功如下图所示。

WndPtInWindowM.png
<上一篇:判断窗口是否存在
ScrollWndRecvMouseWheelMsgFromParent
使滚动窗口接收来自父窗口的鼠标滚轮滚动事件

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-02-11 00:00:00
此函数使滚动窗口接收来自父窗口的鼠标滚轮滚动事件（即RDWndBaseCL_mouse_wheel事件）。

语法
Luacopy 复制
GUI:ScrollWndRecvMouseWheelMsgFromParent(
    _Handle
)
参数
_Handle

long

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent, "BG123", 0, 200, 200)  --创建一个窗口控件
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,140, 270) --设置窗口的大小
    --设置此窗口的九宫格背景图片
    local Image9ID = "4000500500"
    GUI:ImageSetAroundImage(_GUIHandle,tonumber(CL:Plus(Image9ID,"0")),tonumber(CL:Plus(Image9ID,"2")),tonumber(CL:Plus(Image9ID,"6")),tonumber(CL:Plus(Image9ID,"8")),tonumber(CL:Plus(Image9ID,"4")),tonumber(CL:Plus(Image9ID,"1")),tonumber(CL:Plus(Image9ID,"7")),tonumber(CL:Plus(Image9ID,"3")),tonumber(CL:Plus(Image9ID,"5")))
    --------------------
    GUI:WndSetPopupMenu(_GUIHandle) --设置窗口为弹出菜单
    --------------------
    _GUIHandle = GUI:WndCreateScrollWnd(_GUIHandle, "ScrollWnd12",0,5,135,235) --创建一个带滚动条的窗口
    if _GUIHandle ~= 0 then
    GUI:ScrollWndRecvMouseWheelMsgFromParent(_GUIHandle) --使此滚动窗口接收来自父窗口的鼠标滚轮滚动事件
        --设置每个菜单项的大小和背景图片
        for i = 1, 10 do
            local Handle = GUI:ImageCreate(_GUIHandle, "Cell" .. i, 0, 10, 47 * (i - 1) + 10)
            if Handle ~= 0 then
                GUI:WndSetSizeM(Handle,100, 40)
                local Image9ID = "4010500000"
                GUI:ImageSetAroundImage(Handle,tonumber(CL:Plus(Image9ID,"0")),tonumber(CL:Plus(Image9ID,"2")),tonumber(CL:Plus(Image9ID,"6")),tonumber(CL:Plus(Image9ID,"8")),tonumber(CL:Plus(Image9ID,"4")),tonumber(CL:Plus(Image9ID,"1")),tonumber(CL:Plus(Image9ID,"7")),tonumber(CL:Plus(Image9ID,"3")),tonumber(CL:Plus(Image9ID,"5")))
            end
        end
    end 
end

--此示例代码运行成功如下图所示（滚动窗口可以接收来自父窗口的鼠标滚轮滚动事件）。

ScrollWndRecvMouseWheelMsgFromParent.gif
下一篇:添加窗体控件的标记>
WndAddFlags
添加窗体控件的标记

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数添加窗体控件的标记。

脚本WndDefine.lua中有预先定义窗体控件的标记，可实现相应的控件设置。

语法
Luacopy 复制
GUI:WndAddFlags(
    _HandleID,
    _Flag
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

_Flag

unsigned int

 
标记类型。

点击控件标记了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "title", 100, 100, 200, 30)
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框文字
    GUI:WndSetFlags(_GUIHandle,flg_dlgEdit_textInCenter) --设置标记，表示文字在中间位置
    GUI:WndAddFlags(_GUIHandle,flg_dlgEdit_noBackground) --添加标记
end

--示例代码设置了以下两个标记：
flg_dlgEdit_textInCenter = 0x00400000
flg_dlgEdit_noBackground = 0x00200000
<上一篇:使滚动窗口接收来自父窗口的鼠标滚轮滚动事件下一篇:为窗体控件添加自定义属性>
WndAddProperty
为窗体控件添加自定义属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数为指定的窗体控件添加自定义属性。

note_icon 备注
自定义属性主要分为两种：

1.程序中已定义具体功能的属性，相关信息请参见窗体控件的自定义属性定义页面；

2.脚本中自定义的属性，主要用于区分各个窗体控件在游戏中的实际用途。

  例如：对于按钮控件，可定义描述为“按钮功能”的属性以区别每个按钮控件在游戏中实际的用途。

语法
Luacopy 复制
GUI:WndAddProperty(
    _HandleID,
    _Key,
    _Val
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Key

string

 
属性名称

_Val

string

 
属性值

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",4000240016,66,236) --创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --设置按钮控件上的文字为“背包扩展”
    GUI:WndAddProperty(_GUIHandle,"按钮功能","解锁") --设置按钮控件的文本内容支持换行符“\n”
    dbg("自定义属性值为"..GUI:WndGetProperty(_GUIHandle,"按钮功能")) --获取按钮控件“按钮功能”属性的属性值
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

WndAddProperty_2.png

WndGetProperty_2.png
<上一篇:添加窗体控件的标记下一篇:在窗体控件中添加简易定时器（扩展）>
WndAddTimerBriefEx
在窗体控件中添加简易定时器（扩展）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-04-22 00:00:00
此函数在指定的窗体控件中添加一个简易定时器，无需指定定时器ID（由程序自动生成）。

定时器的作用是每隔一段指定的时间间隔就运行一次指定的事件代码，即脚本回调函数。

note_icon 备注
此函数与GUI:WndAddTimerEx函数的区别在于由此函数生成的定时器无需指定ID，而由程序自动生成。

语法
Luacopy 复制
GUI:WndAddTimerBriefEx(
    _HandleID,
    _Elapse,
    _ScriptHandle,
    _Param
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Elapse

int

 
执行回调函数的时间间隔

单位为毫秒（ms）

_ScriptHandle

string

 
回调函数名称

_Param

string

 
预设的回调参数

将传递至回调函数的第5个参数

返回值
int

 
执行成功则返回创建的定时器ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _GUIHandle ~= 0 then
    local _ID = GUI:WndAddTimerBriefEx(_GUIHandle, 1000, "Timer", "custom_param_contents") --添加一个定时器
    dbg("生成的定时器ID为：" .. _ID)
end

function Timer(handle, id, elapse, tick, cParam)
    counter = counter+1
    dbg("定时器句柄：" .. handle)
    dbg("定时器id：" .. id)
    dbg("定时器的时间间隔：" .. elapse)
    dbg("定时器tick：" .. tick)
    dbg("自定义的参数内容为："..cParam)
end

--此示例代码运行成功如下图所示,每隔一秒执行一次回调函数Timer()（截取部分）。

WndAddTimerBriefEx
<上一篇:为窗体控件添加自定义属性下一篇:在窗体控件中添加简易定时器>
WndAddTimerBrief
在窗体控件中添加简易定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数在指定的窗体控件中添加一个简易定时器，无需指定定时器ID（由程序自动生成）。

定时器的作用是每隔一段指定的时间间隔就运行一次指定的事件代码，即脚本回调函数。

note_icon 备注
此函数与GUI:WndAddTimer函数的区别在于由此函数生成的定时器无需指定ID，而由程序自动生成。

语法
Luacopy 复制
GUI:WndAddTimerBrief(
    _HandleID,
    _Elapse,
    _ScriptHandle
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Elapse

int

 
执行回调函数的时间间隔

单位为毫秒（ms）

_ScriptHandle

string

 
脚本回调函数的名称

返回值
int

 
执行成功则返回创建的定时器ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _GUIHandle ~= 0 then
    local _ID = GUI:WndAddTimerBrief(_GUIHandle, 1000, "Timer") --添加一个定时器
    dbg("生成的定时器ID为：" .. _ID)
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行成功如下图所示,每隔一秒执行一次回调函数Timer()（截取部分）。

WndAddBriefTimer.png
<上一篇:在窗体控件中添加简易定时器（扩展）下一篇:在窗体控件中添加定时器（扩展）>
WndAddTimerEx
在窗体控件中添加定时器（扩展）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-12-11 00:00:00
此函数在指定的窗体控件中添加一个定时器。

定时器的作用是每隔一段指定的时间间隔就运行一次指定的事件代码，即脚本回调函数。

此扩展接口支持预设回调参数，客户端程序将传递该参数至回调函数中。

语法
Luacopy 复制
GUI:WndAddTimer(
    _HandleID,
    _ID,
    _Elapse,
    _ScriptHandle,
    _Param
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_ID

int

 
定时器ID

_Elapse

int

 
执行回调函数的时间间隔

单位为毫秒（ms）

_ScriptHandle

string

 
回调函数名称

_Param

string

 
预设的回调参数

将传递至回调函数的第5个参数

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _GUIHandle ~= 0 then
    GUI:WndAddTimerEx(_GUIHandle, 1, 2000, "Timer", "custom_param_contents") --添加一个定时器
end

function Timer(handle, id, elapse, tick, cParam) --参数cParam排序第5
    counter = counter+1
    dbg("定时器句柄：" .. handle)
    dbg("定时器id：" .. id)
    dbg("定时器的时间间隔：" .. elapse)
    dbg("定时器tick：" .. tick)
    dbg("自定义的参数内容为："..cParam)
end

--此示例代码运行成功如下图所示,每隔2秒执行一次回调函数Timer()（截取部分）。

WndAddTimerEx
<上一篇:在窗体控件中添加简易定时器下一篇:在窗体控件中添加定时器>
WndAddTimer
在窗体控件中添加定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数在指定的窗体控件中添加一个定时器。

定时器的作用是每隔一段指定的时间间隔就运行一次指定的事件代码，即脚本回调函数。

语法
Luacopy 复制
GUI:WndAddTimer(
    _HandleID,
    _ID,
    _Elapse,
    _ScriptHandle
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_ID

int

 
定时器ID

_Elapse

int

 
执行回调函数的时间间隔

单位为毫秒（ms）

_ScriptHandle

string

 
脚本回调函数的名称。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _GUIHandle ~= 0 then
    GUI:WndAddTimer(_GUIHandle, 1, 1000, "Timer") --添加一个定时器
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行成功如下图所示,每隔一秒执行一次回调函数Timer()（截取部分）。

WndAddTimer.png
<上一篇:在窗体控件中添加定时器（扩展）下一篇:提高窗体控件的渲染层级>
WndAscOrder
提高窗体控件的渲染层级

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数提高窗体控件在其父窗体控件中所有子控件中的渲染层级。

渲染层级越高，控件显示越靠前。

语法
Luacopy 复制
GUI:WndAscOrder(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:在窗体控件中添加定时器下一篇:将活动窗口移动至最上层>
WndBringTopM
将活动窗口移动至最上层

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数将指定的活动窗口移动至其父窗口下所有子控件的最上层。

caution_icon 注意
指定的窗口须为活动窗口。非活动窗口的移动请参见WndMoveToParentTop函数。

语法
Luacopy 复制
GUI:WndBringTopM(
    _HandleID
)
参数
_HandleID

int

 
指定活动窗口的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:提高窗体控件的渲染层级下一篇:重新计算窗口大小>
WndCalSize
重新计算窗口大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据所有子窗口位置布局重新计算当前窗口的宽度和高度。

重新计算的窗口宽度和高度为当前窗口的左上角到所有子窗口布局位置的最大宽度和最大高度

以下图为例，图片控件为父控件，两个按钮控件均为子控件，使用此接口重新计算的窗口大小范围如红框所示。

WndCalSize.png
语法
Luacopy 复制
GUI:WndCalSize(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle1 = GUI:ImageCreate(_Parent,"testImg", 1900000003, 200, 200) --创建一个图片控件作为父窗口
if _GUIHandle1 ~= 0 then
    GUI:WndSetEnableM(_GUIHandle1, false) --设置图片控件是否可用
end

_GUIHandle2 = GUI:ButtonCreate(_GUIHandle1, "testbutton",  4000240016, 252,40) --创建一个按钮控件作为子窗口
_GUIHandle3 = GUI:ButtonCreate(_GUIHandle1, "testbutton2",  4000240016, 300,60) --创建一个按钮控件作为子窗口

--获取重新计算前的窗口大小（即父窗口的大小）
if GUI:WndGetSizeM(_GUIHandle1) then
    local _Width = LuaRet[1] --获取窗口宽度
    local _Height = LuaRet[2] --获取窗口高度
    dbg("Width1 is:".._Width)
    dbg("Height1 is:".._Height)
end

local v = GUI:WndCalSize(_GUIHandle1) --重新计算窗口大小

--获取重新计算后的窗口大小
if GUI:WndGetSizeM(_GUIHandle1) then
    local _Width = LuaRet[1] --获取窗口宽度
    local _Height = LuaRet[2] --获取窗口高度
    dbg("Width2 is:".._Width)
    dbg("Height2 is:".._Height)
end

--此示例代码运行成功如下图所示。

WndCalSize_2.png
<上一篇:将活动窗口移动至最上层下一篇:清除窗体控件的事件回调函数>
WndClearScript
清除窗体控件的事件回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数清除指定窗体控件的事件回调函数。

语法
Luacopy 复制
GUI:WndClearScript(
    _HandleID,
    _Msg
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Msg

int

 
指定窗体控件的事件ID

点击窗口事件了解更多信息

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _WindowHandle = GUI:WndCreateWnd(_Parent, "example", 1859710000, 100, 100) --新建一个窗口
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_WindowHandle, 500, 500) --设置窗口大小
    GUI:ImageSetFitSize(_WindowHandle, true) --设置窗口图片自适应窗口大小
    GUI:WndRegistScript(_WindowHandle, RDWndBaseCL_mouse_lbClick, "Close_Window") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

if GUI:WndClearScript(_WindowHandle,RDWndBaseCL_mouse_lbClick) then
    dbg("事件回调函数已清除")
end

function Close_Window()
    WndClose(_WindowHandle) --关闭窗口
end

--此示例代码创建一个窗口，控制台将输出“事件回调函数已清除”。当鼠标左键点击窗口时，无任何效果。
<上一篇:重新计算窗口大小下一篇:清除窗口缓动动画>
WndClearTween
清除窗口缓动动画

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数清除窗口缓动动画。

语法
Luacopy 复制
GUI:WndClearTween(
    _HandleID
)
参数
_HandleID

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
local anim = GUI:ImageCreate(_Parent , "EnergyAnim", 3034220000, -32, -37)
GUI:WndClearTween(anim)
<上一篇:清除窗体控件的事件回调函数下一篇:关闭窗口>
WndClose
关闭窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数作用为关闭指定窗口。

语法
Luacopy 复制
GUI:WndClose(
    _HandleID
)
参数
_HandleID

int

 
指定窗口控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _WindowHandle = GUI:WndCreateWnd(_Parent, "example", 1859710000, 100, 100) --新建一个窗口
if _WindowHandle ~= 0 then
    GUI:WndSetSizeM(_WindowHandle, 500, 500) --设置窗口大小
    GUI:ImageSetFitSize(_WindowHandle, true) --设置窗口图片自适应窗口大小
    GUI:WndRegistScript(_WindowHandle, RDWndBaseCL_mouse_lbClick, "Close_Window") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

function Close_Window(_WindowHandle)
    GUI:WndClose(_WindowHandle) --关闭窗口
end
--此示例代码创建一个窗口，当鼠标左键点击窗口时，窗口关闭。
<上一篇:清除窗口缓动动画下一篇:删除窗体控件中所有的定时器>
WndDelAllTimer
删除窗体控件中所有的定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数删除指定窗体控件中所有已创建的定时器。

语法
Luacopy 复制
GUI:WndDelAllTimer(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Handle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _Handle ~= 0 then
    GUI:WndAddTimer(_Handle, 1, 1000, "Timer") --添加一个定时器
    GUI:WndDelAllTimer(_Handle) --删除所有定时器
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行后，定时器回调函数未被运行。
<上一篇:关闭窗口下一篇:删除窗体控件的自定义属性>
WndDelProperty
删除窗体控件的自定义属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数删除指定窗体控件的自定义属性的值。

程序将根据属性名称删除对应的属性值。

note_icon 备注
自定义属性主要分为两种：

1.程序中已定义具体功能的属性，相关信息请参见窗体控件的自定义属性定义页面；

2.脚本中自定义的属性，主要用于区分各个窗体控件在游戏中的实际用途。

  例如：对于按钮控件，可定义描述为“按钮功能”的属性以区别每个按钮控件在游戏中实际的用途。

语法
Luacopy 复制
GUI:WndDelProperty(
    _HandleID,
    _Key
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Key

string

 
属性名称

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",4000240016,66,236) --创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --设置按钮控件上的文字为“背包扩展”
    GUI:WndAddProperty(_GUIHandle,"按钮功能","解锁") --设置按钮控件的文本内容支持换行符“\n”
    GUI:WndDelProperty(_GUIHandle,"按钮功能") --删除按钮控件的“按钮功能”属性
    dbg("自定义属性值为"..GUI:WndGetProperty(_GUIHandle,"按钮功能")) --获取按钮控件“按钮功能”属性的属性值
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容（获取的属性值为空）。

WndAddProperty_2.png

WndDelProperty_2.png
<上一篇:删除窗体控件中所有的定时器下一篇:删除窗体控件中指定的定时器>
WndDelTimer
删除窗体控件中指定的定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数删除指定窗体控件中指定的定时器。

语法
Luacopy 复制
GUI:WndDelTimer(
    _HandleID,
    _ID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_ID

int

 
要删除的定时器ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Handle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _Handle ~= 0 then
    GUI:WndAddTimer(_Handle, 1, 1000, "Timer") --添加一个定时器
    GUI:WndDelTimer(_Handle, 1) --删除定时器
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行后，定时器回调函数未被运行。
<上一篇:删除窗体控件的自定义属性下一篇:降低窗体控件的渲染层级>
WndDescOrder
降低窗体控件的渲染层级

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dnot_support

H5 2Dnot_support

更新时间：2021-09-07 00:00:00
此函数降低窗体控件在其父窗体控件中所有子控件中的渲染层级。

渲染层级越低，控件显示越靠后。

语法
Luacopy 复制
GUI:WndDescOrder(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:删除窗体控件中指定的定时器下一篇:移除所有子控件>
WndDlgClear
移除所有子控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数移除父窗口下所有的子控件，并将其设置回最初的位置。

note_icon 备注
此接口只能移除由接口GUI:WndCreateWnd创建的父控件下的子控件。

语法
Luacopy 复制
GUI:WndDlgClear(
    _HandleID
)
参数
_HandleID

int

 
父窗口句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
wnd = GUI:WndCreateWnd(_Parent,"GUI_Example",0,200,200)
if wnd ~= 0 then
    --创建10个图片控件
    for i = 0 ,5 do
        _GUIHandle = GUI:ImageCreate(wnd, "BG"..i, 1854510011, 150, 7 + i*60)
        if _GUIHandle ~= 0 then
            GUI:WndSetSizeM(_GUIHandle, 100, 50) --设置图片大小为200*50
            GUI:ImageSetFitSize(_GUIHandle, true) --设置图片控件自动缩放
        end
    end
end

--创建一个按钮控件，并注册鼠标左键点击触发ClearScrollWnd函数的事件。
_GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn",4000240016,215,260)
if _GUIHandle ~= 0 then
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "ClearScrollWnd")
    GUI:WndSetTextM(_GUIHandle,"清除子控件")
end

function ClearScrollWnd(_Handle)
    GUI:WndDlgClear(wnd) --移除父窗口下所有子控件
end

--此示例代码运行成功如下图所示。

WndDlgClear.gif
<上一篇:降低窗体控件的渲染层级下一篇:将窗口滚动到底部>
WndDlgScrollToBottom
将窗口滚动到底部

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2022-02-08 00:00:00
此函数将窗体控件内的所有子控件，即整个窗体的页面移动到最底部。

语法
Luacopy 复制
GUI:WndDlgScrollToBottom(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle2 = GUI:WndCreateWnd(_Parent, "testWnd", 0, 300, 230) --创建一个窗体控件
if _GUIHandle2 ~= 0 then
    GUI:WndSetFlagsM(_GUIHandle2, flg_wndBase_useBkBuffer) --设置窗体控件的标记（用于滑动）
    GUI:WndSetSizeM(_GUIHandle2, 200, 150) --设置窗口大小
end

--创建10个图片控件
for i = 1 ,10 do 
    _GUIHandle = GUI:ImageCreate(_GUIHandle2,"testImg"..i,4008000030+i,50,-20 + 40*i)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false) --设置图片控件不可用
    end
end

--创建一个按钮控件
_GUIHandle = GUI:ButtonCreate(_Parent, "testBtn", 4010210000, 270,400)
if _GUIHandle ~= 0 then
    GUI:WndSetTextColorM(_GUIHandle, 0XFFFFF2C9) --设置按钮控件的文本颜色
    GUI:WndSetTextM(_GUIHandle, "划到底部") --设置按钮控件的文本内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Bottom") --注册窗体“鼠标左键弹起”事件发生时回调的函数
end

function Bottom()
    GUI:WndDlgScrollToBottom(_GUIHandle2) --将窗口滚动到底部
end

--此示例代码运行成功如下图所示。

--点击按钮控件后，窗口滚动到最底部。

WndDlgScrollToBottom.gif
<上一篇:移除所有子控件下一篇:将窗口滚动到顶部>
WndDlgScrollToTop
将窗口滚动到顶部

手游 2Dsupport 3Dsupport

端游 2Dnot_support 3Dsupport

H5 2Dnot_support

更新时间：2022-11-21 00:00:00
此函数将窗体控件内的所有子控件，即整个窗体的页面移动到最顶部。

语法
Luacopy 复制
GUI:WndDlgScrollToTop(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

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
_GUIHandle2 = GUI:WndCreateWnd(_Parent, "testWnd", 0, 300, 230) --创建一个窗体控件
if _GUIHandle2 ~= 0 then
    GUI:WndSetFlagsM(_GUIHandle2, flg_wndBase_useBkBuffer) --设置窗体控件的标记（用于滑动）
    GUI:WndSetSizeM(_GUIHandle2, 200, 150) --设置窗口大小
end

--创建10个图片控件
for i = 1 ,10 do 
    _GUIHandle = GUI:ImageCreate(_GUIHandle2,"testImg"..i,4008000030+i,50,-20 + 40*i)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false) --设置图片控件不可用
    end
end

--创建一个按钮控件
_GUIHandle = GUI:ButtonCreate(_Parent, "testBtn", 4010210000, 270,400)
if _GUIHandle ~= 0 then
    GUI:WndSetTextColorM(_GUIHandle, 0XFFFFF2C9) --设置按钮控件的文本颜色
    GUI:WndSetTextM(_GUIHandle, "划到顶部") --设置按钮控件的文本内容
    GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Top") --注册窗体“鼠标左键弹起”事件发生时回调的函数
end

function Top()
    GUI:WndDlgScrollToTop(_GUIHandle2) --将窗口滚动到顶部
end

--此示例代码运行成功如下图所示。

--点击按钮控件后，窗口滚动到最顶部。

WndDlgScrollToTop.gif
<上一篇:将窗口滚动到底部下一篇:获取窗口滚动类型>
WndGetPenetratType
获取窗口滚动类型

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取窗口滚动类型。

语法
Luacopy 复制
GUI:WndGetPenetratType(
    _HandleID
)
参数
_HandleID

number

 
窗口句柄

点击窗口句柄了解更多信息。

返回值
number

 
滚动类型

0垂直滚动

1水平滚动

2翻页

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]

_GUIHandle = GUI:WndCreateWnd(_Parent, "TagWnd", 0, 105 + _OffsetX, 1091+63 + 10+_OffsetY)
GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer) --设置窗口滚动标记
GUI:WndSetScrollType(_GUIHandle, 1) --设置窗口滚动类型

local type = GUI:WndGetPenetratType(_GUIHandle)
dbg("滚动类型:"..type)

--此示例代码运行成功如下图所示。

WndGetPenetratType
<上一篇:将窗口滚动到顶部下一篇:获取窗口滚动位置>
WndGetScrollPosition
获取窗口滚动位置

手游 2Dnot_support 3Dnot_support

端游 2Dnot_support 3Dnot_support

H5 2Dsupport

更新时间：2021-09-07 00:00:00
此函数获取窗口滚动位置。

语法
Luacopy 复制
GUI:WndGetScrollPosition(
    _HandleID
)
参数
_HandleID

number

 
窗口句柄

点击窗口句柄了解更多信息。

返回值
number

 
滚动位置

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]

_GUIHandle = GUI:WndCreateWnd(_Parent, "TagWnd", 0, 105, 1091)
GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer) --设置窗口滚动标记
GUI:WndSetScrollType(_GUIHandle, 1) --设置窗口滚动类型

CL:AddDelayTask("GetS(".._GUIHandle..")",1000,1) --1秒后调用 

function GetS(_GUIHandle)
    local l = GUI:WndGetScrollPosition(_GUIHandle)
    dbg("滚动位置:"..l)
end

--此示例代码运行成功如下图所示。

WndGetScrollPosition
<上一篇:获取窗口滚动类型下一篇:刷新控件的绘制内容>
WndInvalidate
刷新控件的绘制内容

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-10-19 00:00:00
此函数刷新控件的绘制内容。

caution_icon 注意
仅对使用了flg_wndBase_useBkBuffer（背景缓冲）标记的控件有效。

语法
Luacopy 复制
GUI:WndInvalidate(
    _HandleID
)
参数
_HandleID

int

 
指定控件的句柄。

点击窗口句柄了解更多信息。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200)--新建一个窗口，获取窗口句柄
if _GUIHandle ~= 0 then
    GUI:WndInvalidate(_GUIHandle) --刷新新建的窗口
end
<上一篇:获取窗口滚动位置下一篇:将窗口移动至最下层>
WndMoveToParentBottom
将窗口移动至最下层

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-09-29 00:00:00
此函数将指定的窗口移动至其父窗口中所有子控件的最下层。

语法
Luacopy 复制
GUI:WndMoveToParentBottom(
    _HandleID
)
参数
_HandleID

int

 
指定窗口的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:刷新控件的绘制内容下一篇:将窗口移动至最上层>
WndMoveToParentTop
将窗口移动至最上层

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数将指定的窗口移动至其父窗口中所有子控件的最上层。

语法
Luacopy 复制
GUI:WndMoveToParentTop(
    _HandleID
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent, "ClickBack", 1859710000, 120, 100) --创建一个窗口
if _GUIHandle ~= 0 then
    GUI:ImageSetAlpha(_GUIHandle, 130) --设置图片控件的透明度为130
    GUI:WndSetSizeM(_GUIHandle, 200, 200) --设置窗口大小为200*200
    GUI:ImageSetFitSize(_GUIHandle, true) --设置图片资源根据图片控件的大小进行缩放
    GUI:WndMoveToParentTop(_GUIHandle) --将窗口移动至最上层
end

_GUIHandle1 = GUI:ImageCreate(_Parent,"BG1",4000230000,150,150) --创建第一个图片控件

_GUIHandle2 = GUI:ImageCreate(_Parent,"BG2",4000230000,230,150) --创建第二个图片控件

--若未使用接口WndMoveToParentTop将窗口移动至最上层，则对应效果如下图所示。

WndMoveToParentTop_2.png
--此示例代码运行成功如下图所示。

WndMoveToParentTop.png
<上一篇:将窗口移动至最下层下一篇:注册窗体控件的事件回调函数（支持lua函数对象）>
WndRegScriptEvent
注册窗体控件的事件回调函数（支持lua函数对象）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2025-05-23 00:00:00
此函数指定窗体控件的事件类型及事件发生时回调的函数。

每个窗体控件的事件支持注册多个脚本回调函数，事件发生依次进行回调。

语法
Luacopy 复制
GUI:WndRegScriptEvent(
    _HandleID,
    _Msg,
    _FuncName,
    _Param
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Msg

int

 
指定窗体控件的事件ID

点击窗口事件了解更多信息

_Func

lua_function

 
回调函数

note_icon 备注
_Func必须是函数对象，不能是字符串，如果需要使用字符串可以使用接口GUI:WndRegistScriptEx。

_Param

string

 
预设的回调参数

将传递至回调函数的第5个参数

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent, "Close", 4000230000, 600, 300)                              
if _GUIHandle ~= 0 then
  GUI:WndRegScriptEvent(_GUIHandle, RDWndBaseCL_mouse_lbUp, CloseTest, "aaa") 
  GUI:ButtonSetSelectRange(_GUIHandle, 120, 120)     
end
function CloseTest(_Handle,wParam, x, y, cParam)
  dbg("自定义的参数内容为："..cParam)
end

--此示例代码创建一个窗口，点击关闭按钮，调用回调函数，参数可以被正常接收，控制台中打印日志：

--自定义的参数内容为：aaa
<上一篇:将窗口移动至最上层下一篇:注册窗体控件的事件回调函数（扩展）>
WndRegistScriptEx
注册窗体控件的事件回调函数（扩展）

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-12-11 00:00:00
此函数指定窗体控件的事件类型及事件发生时回调的函数。

每个窗体控件的事件支持注册多个脚本回调函数，事件发生依次进行回调。

此扩展接口支持预设回调参数，客户端程序将传递该参数至回调函数中。

语法
Luacopy 复制
GUI:WndRegistScriptEx(
    _HandleID,
    _Msg,
    _FuncName,
    _Param
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Msg

int

 
指定窗体控件的事件ID

点击窗口事件了解更多信息

_FuncName

string

 
回调函数名称

note_icon 备注
当事件发生时，即回调指定的函数。

_Param

string

 
预设的回调参数

将传递至回调函数的第5个参数

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _WindowHandle = GUI:WndCreateWnd(_Parent, "example", 1859710000, 100, 100) --新建一个窗口
if _WindowHandle ~= 0 then
    GUI:WndSetSizeM(_WindowHandle, 500, 500) --设置窗口大小
    GUI:ImageSetFitSize(_WindowHandle, true) --设置窗口图片自适应窗口大小
    GUI:WndRegistScriptEx(_WindowHandle, RDWndBaseCL_mouse_lbClick, "Close_Window", "custom_param_contents") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

function Close_Window(_WindowHandle, wParam, x, y, cParam) --参数cParam排序第5，wParam, x, y不推荐脚本使用，但必须写入
    dbg("自定义的参数内容为："..cParam)
    GUI:WndClose(_WindowHandle) --关闭窗口
end

--此示例代码创建一个窗口，当鼠标左键点击窗口时，窗口关闭。dbgview控制台将输出：“自定义的参数内容为：custom_param_contents”
<上一篇:注册窗体控件的事件回调函数（支持lua函数对象）下一篇:注册窗体控件的事件回调函数>
WndRegistScript
注册窗体控件的事件回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-10-19 00:00:00
此函数指定窗体控件的事件类型及事件发生时回调的函数。

每个窗体控件的事件支持注册多个脚本回调函数，事件发生依次进行回调。

语法
Luacopy 复制
GUI:WndRegistScript(
    _HandleID,
    _Msg,
    _FuncName
)
参数
_HandleID

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Msg

int

 
指定窗体控件的事件ID

点击窗口事件了解更多信息

_FuncName

string

 
回调函数名称

note_icon 备注
当事件发生时，即回调指定的函数。

返回值
bool

 
true控件存在

false控件不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _WindowHandle = GUI:WndCreateWnd(_Parent, "example", 1859710000, 100, 100) --新建一个窗口
if _WindowHandle ~= 0 then
    GUI:WndSetSizeM(_WindowHandle, 500, 500) --设置窗口大小
    GUI:ImageSetFitSize(_WindowHandle, true) --设置窗口图片自适应窗口大小
    GUI:WndRegistScript(_WindowHandle, RDWndBaseCL_mouse_lbClick, "Close_Window") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

function Close_Window(_WindowHandle)
    GUI:WndClose(_WindowHandle) --关闭窗口
end

--此示例代码创建一个窗口，当鼠标左键点击窗口时，窗口关闭。
<上一篇:注册窗体控件的事件回调函数（扩展）下一篇:移除带滚动条窗口下所有子控件>
WndScrollWndClear
移除带滚动条窗口下所有子控件

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2022-01-24 00:00:00
此函数移除带滚动条窗口下所有子控件。

移除带滚动条窗口下所有子控件后，由于子窗口高度小于带滚动条窗口高度，滚动条会被隐藏。

语法
Luacopy 复制
GUI:WndScrollWndClear(
    WndID
)
参数
WndID

int

 
指定滚动窗口的句柄

点击窗口句柄了解更多信息

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增对3D端游支持

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"]
wnd = GUI:WndCreateScrollWnd(_Parent,"ScrollWnd", 350, 150,230, 400) --创建一个带滚动条的窗口
if wnd ~= 0 then
    --创建10个图片控件
    for i = 0 ,9 do
        _GUIHandle = GUI:ImageCreate(wnd, "BG"..i, 1854510011, 7, 7 + i*60)
        if _GUIHandle ~= 0 then
            GUI:WndSetSizeM(_GUIHandle, 200, 50) --设置图片大小为200*50
            GUI:ImageSetFitSize(_GUIHandle, true) --设置图片控件自动缩放
        end
    end
end

--创建一个按钮控件，并注册鼠标左键点击触发ClearScrollWnd函数的事件。
_GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn",4000240016,215,260)
if _GUIHandle ~= 0 then
    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "ClearScrollWnd")
    GUI:WndSetTextM(_GUIHandle,"清除子控件")
end

function ClearScrollWnd(_Handle)
    GUI:WndScrollWndClear(wnd) --移除带滚动条窗口下所有子控件
end

--此示例代码运行成功如下图所示（点击按钮后所有子控件被移除）。

WndScrollWndClear.gif
<上一篇:注册窗体控件的事件回调函数
以下是封装接口：
CreateButton
创建按钮控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个按钮控件。

语法
Luacopy 复制
CreateButton(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建按钮控件的图片资源ID

_PosX

int

 
新建按钮控件位置相对于父控件位置的横坐标

_PosY

int

 
新建按钮控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建按钮控件的宽度

此参数无效。

_SizeY

int

 
新建按钮控件的高度

此参数无效。

_ID

string

 
新建按钮控件的名称

_Align

int

 
新建按钮控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建按钮控件的提示文字（即鼠标移到复选框控件上的Tips描述）

手游中此参数无效。

返回值
int

 
创建成功则返回新建按钮控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Handle = GUI:WndCreateWnd(_Parent,"TestWnd",0,200,200) --创建一个窗口作为父窗口
local _handle = CreateButton(_Parent,"TestWnd",4000230000,10,10,1000,10,"closeButton",0,"closeButton") --创建一个按钮控件
if _handle ~= 0 then
    dbg("窗口句柄：".._handle)
end
--此示例代码运行成功如下图所示。

CreateButton.png

CreateButton_2.png
下一篇:创建复选框控件>
CreateCheckBox
创建复选框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个复选框控件。

语法
Luacopy 复制
CreateCheckBox(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo,
    _Title
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建复选框控件的图片资源ID

_PosX

int

 
新建复选框控件位置相对于父控件位置的横坐标

_PosY

int

 
新建复选框控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建复选框控件的宽度

此参数无效。

_SizeY

int

 
新建复选框控件的高度

此参数无效。

_ID

string

 
新建复选框控件的名称

_Align

int

 
新建复选框控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建复选框控件的提示文字（即鼠标移到复选框控件上的Tips描述）

手游中此参数无效。

_Title

string

 
新建复选框控件的标题

返回值
int

 
创建成功则返回新建复选框控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _handle = CreateCheckBox(_Parent,"",1900112013,100,100,100,1000,"ExampleCheckBox",1,"ExampleCheckBox","字符串创建的复选框")
if _handle ~= 0 then
    dbg("窗口句柄：".._handle)
    GUI:CheckBoxSetCheck(_handle, true) --设置复选框控件为勾选状态
end

--此示例代码运行成功如下图所示。

CreateCheckBox.png

CreateCheckBox_2.png
<上一篇:创建按钮控件下一篇:创建组合框控件>
CreateComboBox
创建组合框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个组合框控件。

语法
Luacopy 复制
CreateComboBox(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo,
    _Length
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建组合框控件的图片资源ID

_PosX

int

 
新建组合框控件位置相对于父控件位置的横坐标

_PosY

int

 
新建组合框控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建组合框控件的宽度

_SizeY

int

 
新建组合框控件的高度

_ID

string

 
新建组合框控件的名称

_Align

int

 
新建组合框控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建组合框控件的提示文字（即鼠标移到组合框控件上的Tips描述）

手游中此参数无效。

_Length

int

 
新建组合框控件的下拉背景的高度

返回值
int

 
创建成功则返回新建组合框控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateComboBox(_Parent,"" , 4000230020, 100, 100, 80, 27,"TypeCB",0, "ExampleComboBox",90)
if _GUIHandle ~= 0 then
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox01", 1, COLOR_WHITE)--添加条目1并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox02", 2, COLOR_WHITE)--添加条目2并设置文本颜色为白色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox03", 3, COLOR_GOLD)--添加条目3并设置文本颜色为金色
    GUI:ComboBoxAddString(_GUIHandle, "ComboBox04", 4, COLOR_GOLD)--添加条目4并设置文本颜色为金色
    GUI:ComboBoxSetCurSelect(_GUIHandle, 3) --设置选中第4条条目
    dbg("组合框中选中的条目的索引为:"..GUI:ComboBoxGetCurSelect(_GUIHandle)) --获取组合框中当前选中条目的索引
end

--此示例代码运行成功如下图所示，第4条条目被选中，同时控制台会输出如下内容。

CreateComboBox.png

ComboBoxGetCurSelect.png
<上一篇:创建复选框控件下一篇:创建窗口>
CreateCtrl
创建窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-12-31 00:00:00
此函数以指定的窗口作为父窗口，新建一个窗口。

语法
Luacopy 复制
CreateCtrl(
    _Handle,
    _Info,
    _Type,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_Type

int

 
控件类型

1图片控件

2按钮控件

3复选框控件(无效)

4编辑框控件

5组合框控件(无效)

6列表框控件

7单选按钮控件(无效)

8静态文本框控件

9水平滚动条控件(无效)

10垂直滚动条控件(无效)

11树形控件(手游中无效)

12多功能编辑框控件

13物品框控件

14窗体控件

_ImageId

int

 
新建控件的图片资源ID

_PosX

int

 
新建控件位置的横坐标

_PosY

int

 
新建控件位置的纵坐标

_SizeX

int

 
新建控件的宽度

单位为像素（px）

_SizeY

int

 
新建控件的高度

单位为像素（px）

_ID

string

 
新建控件的名称

_Align

int

 
新建控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建控件的提示文字（即鼠标移到控件上的Tips描述）

手游中此参数无效。

返回值
int

 
创建成功则返回新建控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateCtrl(_Parent,"",4,0,200,200,100,20,"ExampleEdit",0,"ExampleEdit") --新建一个编辑框控件
if _GUIHandle ~= 0 then
    EditSetTextM(_GUIHandle,"","设 置") --设置编辑框控件的文本内容
end

--此示例代码运行成功如下图所示。

CreateEdit.png
<上一篇:创建组合框控件下一篇:创建编辑框控件>
CreateEdit
创建编辑框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个编辑框控件。

语法
Luacopy 复制
CreateEdit(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建编辑框控件的图片资源ID

_PosX

int

 
新建编辑框控件位置相对于父控件位置的横坐标

_PosY

int

 
新建编辑框控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建编辑框控件的宽度

单位为像素（px）

_SizeY

int

 
新建编辑框控件的高度

单位为像素（px）

_ID

string

 
新建编辑框控件的名称

_Align

int

 
新建编辑框控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建编辑框控件的提示文字（即鼠标移到编辑框控件上的Tips描述）

手游中此参数无效。

返回值
int

 
创建成功则返回新建编辑框控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateEdit(_Parent,"",0,200,200,100,20,"ExampleEdit",0,"ExampleEdit")
if _GUIHandle ~= 0 then
    EditSetTextM(_GUIHandle,"","设 置") --设置编辑框控件的文本内容
end

--此示例代码运行成功如下图所示。

CreateEdit.png
<上一篇:创建窗口下一篇:创建图片控件>
CreateImage
创建图片控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个图片控件。

语法
Luacopy 复制
CreateImage(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建图片控件的图片资源ID

_PosX

int

 
新建图片控件位置相对于父控件位置的横坐标

_PosY

int

 
新建图片控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建图片控件的宽度

此参数无效。

_SizeY

int

 
新建图片控件的高度

此参数无效。

_ID

string

 
新建图片控件的名称

_Align

int

 
新建图片控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建图片控件的提示文字（即鼠标移到图片控件上的Tips描述）

手游中此参数无效。

返回值
int

 
创建成功则返回新建图片控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateImage(_Parent,"",1900000003,200,200,100,20,"CloseButton",0,"ExampleImage")

--此示例代码运行成功如下图所示。

CreateImage.png
<上一篇:创建编辑框控件下一篇:创建物品框控件>
CreateItemCtrl
创建物品框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个物品框控件。

语法
Luacopy 复制
CreateItemCtrl(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建物品框控件的图片资源ID

_PosX

int

 
新建物品框控件位置相对于父控件位置的横坐标

_PosY

int

 
新建物品框控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建物品框控件的宽度

单位为像素（px）

_SizeY

int

 
新建物品框控件的高度

单位为像素（px）

_ID

string

 
新建物品框控件的名称

_Align

int

 
新建物品框控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建物品框控件的提示文字（即鼠标移到物品框控件上的Tips描述）

手游中此参数无效。

返回值
int

 
创建成功则返回新建物品框控件句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = CreateItemCtrl(_Parent,"",1850400004,100,100,100,100,"ExampleItemCtrl",0,"ExampleItemCtrl")

--此示例代码运行成功如下图所示。

CreateItemCtrl.png
<上一篇:创建图片控件下一篇:创建列表框控件>
CreateListBox
创建列表框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个列表框控件。

语法
Luacopy 复制
CreateListBox(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建列表框控件的图片资源ID

此参数无效。

_PosX

int

 
新建列表框控件位置相对于父控件位置的横坐标

_PosY

int

 
新建列表框控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建列表框控件的宽度

手游中此参数无效。

_SizeY

int

 
新建列表框控件的高度

单位为像素（px）

_ID

string

 
新建列表框控件的名称

_Align

int

 
新建列表框控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建列表框控件的提示文字（即鼠标移到列表框控件上的Tips描述）

手游中此参数无效。

返回值
int

 
创建成功则返回新建列表框控件句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateListBox(_Parent,"",1805900000,100,100,150,100,"ExampleListBox",0,"ExampleListBox")
if _GUIHandle ~= 0 then
    GUI:ListBoxAddString(_GUIHandle, "条目1-红色", COLOR_RED) --添加条目，颜色为红色
    GUI:ListBoxAddString(_GUIHandle, "条目2-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
    GUI:ListBoxAddString(_GUIHandle, "条目3-红色", COLOR_RED) --添加条目，颜色为红色
    GUI:ListBoxAddString(_GUIHandle, "条目4-绿色", GUI:MakeARGB(255,0,255,0)) --添加条目，颜色为绿色
end

--此示例代码运行成功如下图所示。

CreateListBox.png
<上一篇:创建物品框控件下一篇:创建多功能编辑框控件>
CreateRichEdit
创建多功能编辑框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个多功能编辑框控件。

语法
Luacopy 复制
CreateRichEdit(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo,
    _Title
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建多功能编辑框控件的图片资源ID

_PosX

int

 
新建多功能编辑框控件位置相对于父控件位置的横坐标

_PosY

int

 
新建多功能编辑框控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建多功能编辑框控件的宽度

单位为像素（px）

_SizeY

int

 
新建多功能编辑框控件的高度

单位为像素（px）

_ID

string

 
新建多功能编辑框控件的名称

_Align

int

 
新建多功能编辑框控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建多功能编辑框控件的提示文字（即鼠标移到多功能编辑框控件上的Tips描述）

此参数无效。

返回值
int

 
创建成功则返回新建多功能编辑框控件句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateRichEdit(_Parent,"",0,100,100,100,30,"ExampleRichEdit",0,"ExampleRichEdit")
if _GUIHandle ~= 0 then
    GUI:RichEditAppendString(_GUIHandle, "这是一个多功能编辑框") --添加文本
end

--此示例代码运行成功如下图所示。

CreateRichEdit.png
<上一篇:创建列表框控件下一篇:创建静态文本框控件>
CreateStatic
创建静态文本框控件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个静态文本框控件。

语法
Luacopy 复制
CreateStatic(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建静态文本框控件的图片资源ID

此参数无效。

_PosX

int

 
新建静态文本框控件位置相对于父控件位置的横坐标

_PosY

int

 
新建静态文本框控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建静态文本框控件的宽度

单位为像素（px）

_SizeY

int

 
新建静态文本框控件的高度

单位为像素（px）

_ID

string

 
新建静态文本框控件的名称

_Align

int

 
新建静态文本框控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建静态文本框控件的提示文字（即鼠标移到静态文本框控件上的Tips描述）

此参数无效。

返回值
int

 
创建成功则返回新建静态文本框控件句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _handle = CreateStatic(_Parent,"",1900000003,100,100,150,100,"ExampleStatic",0,"ExampleStatic")
if _handle ~= 0 then
    UI:Lua_FindWindow(_Parent,"ExampleStatic") --获取目标控件句柄
    UI:Lua_StaticSetText("静态文本框") --设置静态文本框控件的文本内容
end

--此示例代码运行成功如下图所示。

CreateStatic.png
<上一篇:创建多功能编辑框控件下一篇:创建树形控件>
CreateTreeCtrl
创建树形控件

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，新建一个树形控件。

note_icon 备注
树形控件在脚本中的使用频率较低，大多由程序直接控制，例如游戏任务面板。

语法
Luacopy 复制
CreateTreeCtrl(
    _Handle,
    _Info,
    _ImageId,
    _PosX,
    _PosY,
    _SizeX,
    _SizeY,
    _ID,
    _Align,
    _HintInfo
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ImageId

int

 
新建树形控件的图片资源ID

此参数无效。

_PosX

int

 
新建树形控件位置相对于父控件位置的横坐标

_PosY

int

 
新建树形控件位置相对于父控件位置的纵坐标

_SizeX

int

 
新建树形控件的宽度

单位为像素（px）

_SizeY

int

 
新建树形控件的高度

单位为像素（px）

_ID

string

 
新建树形控件的名称

_Align

int

 
新建树形控件的对齐方式

此参数保留，须为0。

_HintInfo

string

 
新建树形控件的提示文字（即鼠标移到树形控件上的Tips描述）

返回值
int

 
创建成功则返回新建树形控件句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _handle = CreateTreeCtrl(_Parent,"",0,100,100,100,100,"ExampleTree",0,"ExampleTree")
if _handle ~= 0 then
    dbg("窗口句柄：".._handle)
end

--此示例代码运行成功如下图所示。

CreateTreeCtrl_2.png

CreateTreeCtrl_3.png
<上一篇:创建静态文本框控件下一篇:根据窗口名和文件名创建窗口并加载同名布局文件>
CreateWndFromFile
根据窗口名和文件名创建窗口并加载同名布局文件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，根据指定窗口名称和文件名称新建一个窗口，并在该窗口上加载同名的布局文件。

语法
Luacopy 复制
CreateWndFromFile(
    _Handle,
    _Info,
    _ID,
    _FileName
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ID

string

 
窗口名称

_FileName

string

 
文件名称

注意：文件名称不需要带后缀（.lay），文件内容须使用XML格式标准。

返回值
int

 
创建成功则返回新建窗体控件句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateWndFromFile(_Parent,"","EnhanceChange","EnhanceChange")
if _GUIHandle ~= 0 then
    dbg("窗口句柄为".._GUIHandle)
end

--此示例代码运行成功如下图所示。

CreateWnd.png

CreateWnd_2.png
<上一篇:创建树形控件下一篇:通过form字符串创建窗口>
CreateWndFromString
通过form字符串创建窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，根据form字符串新建一个窗口。

语法
Luacopy 复制
CreateWndFromString(
    _Handle,
    _Info,
    _ID,
    _String,
    _IsCanDrag,
    _IsEscClose
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ID

string

 
新建窗口的名称

_String

string

 
form字符串

具体请参见form解析创建窗口页面

_IsCanDrag

bool

 
是否设置窗口左键拖动属性

此参数无效。

_IsEscClose

bool

 
是否设置窗口Esc关闭属性（在手游中此参数无效）

true按Esc键会关闭窗口

false按Esc键不会关闭窗口

返回值
int

 
创建成功则返回新建窗体控件的句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local ui2 = "<?xml version='1.0' encoding='GB2312' standalone='yes' ?><Root>"
.."<ClassProperty UIType='0' ImageID='0' PosX='0' PosY='0' SizeX='1' SizeY='1' UIID='WebBox' AlignType='0' UIHint=''>"
.."<Property UIType='1' ImageID='1805900000' PosX='0' PosY='0' SizeX='129' SizeY='123' UIID='image' AlignType='0' UIHint='' />"
.."<Property UIType='2' ImageID='4000230000' PosX='0' PosY='12' SizeX='29' SizeY='23' UIID='CloseBtn' AlignType='0' UIHint='' />"
.."</ClassProperty>"
.."<Functions />"
.."</Root>"

local _handle = CreateWndFromString(_Parent,"","NewWnd",ui2,true,false)
dbg("窗口句柄：".._handle)

--此示例代码运行成功如下图所示。

CreateWndFromString.png
CreateWndFromString_2.png
<上一篇:根据窗口名和文件名创建窗口并加载同名布局文件下一篇:根据窗口名创建窗口并加载同名布局文件>
CreateWnd
根据窗口名创建窗口并加载同名布局文件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数以指定的窗口作为父窗口，根据指定窗口名称新建一个窗口，并在该窗口上加载同名的布局文件。

语法
Luacopy 复制
CreateWnd(
    _Handle,
    _Info,
    _ID
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的名称

_ID

string

 
窗口名称以及文件名称

注意：文件名称不需要带后缀（.lay），文件内容使用XML格式标准。

返回值
int

 
创建成功则返回新建窗体控件句柄

创建失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = CreateWnd(_Parent,nil,"EnhanceChange")
if _GUIHandle ~= 0 then
    dbg("窗口句柄为".._GUIHandle)
end

--此示例代码运行成功如下图所示。

CreateWnd.png

CreateWnd_2.png
<上一篇:通过form字符串创建窗口下一篇:获取窗口句柄>
GetWindow
获取窗口句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数通过父窗口句柄和要查询窗口（子控件）的名称，获取相应窗口（子控件）的句柄。

语法
Luacopy 复制
GetWindow(
    _Handle,
    _Info
)
参数
_Handle

int

 
父窗口句柄（将从此窗口开始查询）

点击窗口句柄了解更多信息

_Info

string

 
要查询窗口的名称

若此参数的值设置为parent，则会获取父窗口信息，否则根据设置的字符串获取相应窗口（子控件）的句柄。

返回值
int

 
获取成功则返回窗口（子控件）的句柄

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local  _Handle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",1900000003,200,200) --新建一个窗口
if _Handle ~= 0 then
    dbg("创建的窗口句柄：".._Handle)
end

local _GUIHandle = GetWindow(_Parent,"MenuTestWnd") --获取窗口的句柄
if _GUIHandle ~= 0 then
    dbg("获取得到的窗口句柄：".._GUIHandle)
end

--此示例代码运行成功如下图所示（新建窗口时返回的窗口句柄与获取得到的窗口句柄一致）。

GetWindow.png
<上一篇:根据窗口名创建窗口并加载同名布局文件下一篇:一键设置静态文本框属性>
StaticSetProp
一键设置静态文本框属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数一键设置静态文本框属性。

语法
Luacopy 复制
StaticSetProp(
    _Handle,
    _Info,
    _Visible,
    _Enable,
    _CanRevMsg,
    _Text
)
参数
_Handle

int

 
指定静态文本框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定静态文本框控件的描述

_Visible

bool

 
是否可见

true可见

false不可见

_Enable

bool

 
是否可用

true静态文本框控件可用

false静态文本框控件不可用

_CanRevMsg

bool

 
是否可接收消息

true可接收消息

false不可接收消息

_Text

string

 
文本内容

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
local _handle = CreateStatic(_Parent,"",1900000003,100,100,150,100,"ExampleStatic",0,"ExampleStatic")
if _handle ~= 0 then
    StaticSetProp(_handle,nil,true,false,false,"静态文本框") --一键设置静态文本框属性
end

--此示例代码运行成功如下图所示。

StaticSetProp.png
<上一篇:获取窗口句柄下一篇:设置静态文本框的文本内容>
StaticSetText
设置静态文本框的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定静态文本框控件的文本内容。

语法
Luacopy 复制
StaticSetText(
    _Handle,
    _Info,
    _Text
)
参数
_Handle

int

 
指定静态文本框控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定静态文本框控件的描述

_Text

string

 
文本内容

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
local _handle = CreateStatic(_Parent,"",1900000003,100,100,150,100,"ExampleStatic",0,"ExampleStatic")
if _handle ~= 0 then
    StaticSetText(_handle,nil,"静态文本框") --设置静态文本框的文本内容
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

StaticSetProp.png
<上一篇:一键设置静态文本框属性下一篇:激活指定类型的窗口>
WndActiveItemWindow
激活指定类型的窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数激活指定类型的窗口。

语法
Luacopy 复制
WndActiveItemWindow(
    _Handle,
    _Info,
    _WindowType
)
参数
_Handle

int

 
父窗口句柄

点击窗口句柄了解更多信息

_Info

string

 
父窗口的描述

_WindowType

int

 
窗口类型的索引值

具体请参见窗口类型页面

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
WndActiveItemWindow(_Parent,"",ITEMWINDOW_ADVWAREHOUSE) --激活高级仓库
dbg("当前被激活的窗口类型的索引值："..WndGetCurItemWindow()) --获取被激活的窗口类型的索引值

--此示例代码运行成功如下图所示。

WndActiveItemWindow.png
<上一篇:设置静态文本框的文本内容下一篇:添加窗口特效>
WndAddEffect
添加窗口特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数作用为添加窗口特效。

语法
Luacopy 复制
WndAddEffect(
    _Handle,
    _Info,
    _ImageId,
    _X,
    _Y,
    _Elapse,
    count
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_ImageId

int

 
特效的图片资源ID

_X

int

 
特效相对父控件在水平方向上的偏移

单位为像素（px），默认值为0。

_Y

int

 
特效相对父控件在垂直方向上的偏移

单位为像素（px），默认值为0。

_Elapse

int

 
特效播放的时间间隔

单位为毫秒（ms），默认值为100。

count

int

 
指定特效播放的次数

0默认值（一直循环播放特效）

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
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,100,200)--创建按钮控件
if _GUIHandle ~= 0 then
    GUI:ButtonSetScale(_GUIHandle, 35000, 30000) --设置按钮控件的缩放比例
    WndAddEffect(_GUIHandle, "",3000100400, -100, -175, 100, 0) --添加窗口特效
end

--此示例代码运行成功如下图所示。

WndAddEffect.gif
<上一篇:激活指定类型的窗口下一篇:为窗体控件添加自定义属性>
WndAddProperty
为窗体控件添加自定义属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数为指定的窗体控件添加自定义属性。

note_icon 备注
自定义属性主要分为两种：

1.程序中已定义具体功能的属性，相关信息请参见窗体控件的自定义属性定义页面；

2.脚本中自定义的属性，主要用于区分各个窗体控件在游戏中的实际用途。

  例如：对于按钮控件，可定义描述为“按钮功能”的属性以区别每个按钮控件在游戏中实际的用途。

语法
Luacopy 复制
WndAddProperty(
    _Handle,
    _Info,
    _Key,
    _Val
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Key

string

 
属性名称

_Val

string

 
属性值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",4000240016,66,236) --创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包\n扩展") --设置按钮控件上的文字为“背包扩展”
    GUI:ButtonSetScale(_GUIHandle, 12500, 15000) --设置按钮控件的缩放比例
    WndAddProperty(_GUIHandle,"","button_text_support_slash_n","1") --设置按钮控件的文本内容支持换行符“\n”
    dbg("自定义属性值为"..WndGetProperty(_GUIHandle,"","button_text_support_slash_n")) --获取按钮控件“button_text_support_slash_n”属性的属性值
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

WndAddProperty.png

WndGetProperty.png
<上一篇:添加窗口特效下一篇:在窗体控件中添加简易定时器>
WndAddTimerBrief
在窗体控件中添加简易定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数在指定的窗体控件中添加一个简易定时器，无需指定定时器ID（由程序自动生成）。

定时器的作用是每隔一段指定的时间间隔运行一次指定的事件代码，即脚本回调函数。

note_icon 备注
此函数与WndAddTimer函数的区别在于由此函数生成的定时器无需指定ID，而由程序自动生成。

语法
Luacopy 复制
WndAddTimerBrief(
    _Handle,
    _Info,
    _Elapse,
    _ScriptHandle
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Elapse

int

 
执行回调函数的时间间隔

单位为毫秒（ms）

_ScriptHandle

string

 
脚本回调函数的名称

返回值
int

 
执行成功则返回创建的定时器ID

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _GUIHandle ~= 0 then
    local _ID = WndAddTimerBrief(_GUIHandle,"", 1000, "Timer") --添加一个定时器
    dbg("生成的定时器ID为：" .. _ID)
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行成功如下图所示,每隔一秒执行一次回调函数Timer()（截取部分）。

WndAddBriefTimer.png
<上一篇:为窗体控件添加自定义属性下一篇:在窗体控件中添加定时器>
WndAddTimer
在窗体控件中添加定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数在指定的窗体控件中添加一个定时器。

定时器的作用是每隔一段指定的时间间隔运行一次指定的事件代码，即脚本回调函数。

语法
Luacopy 复制
WndAddTimer(
    _Handle,
    _Info,
    _ID,
    _Elapse,
    _ScriptHandle
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_ID

int

 
定时器ID

_Elapse

int

 
执行回调函数的时间间隔

单位为毫秒（ms）

_ScriptHandle

string

 
脚本回调函数的名称

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _GUIHandle ~= 0 then
    WndAddTimer(_GUIHandle,"", 1, 1000, "Timer") --添加一个定时器
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行成功如下图所示,每隔一秒执行一次回调函数Timer()（截取部分）。

WndAddTimer.png
<上一篇:在窗体控件中添加简易定时器下一篇:查找窗口是否存在>
WndAttach
查找窗口是否存在

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数查找指定窗口是否存在。

语法
Luacopy 复制
WndAttach(
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

 
要查询的窗口名称

返回值
bool

 
true执行成功（指定窗口存在）

false执行失败（指定窗口不存在）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --新建窗口
if WndAttach(_Parent,"ExampleWnd") then
    dbg("窗口存在")
else
    dbg("窗口不存在")
end

--此示例代码运行成功如下图所示。

WndAttach.png
<上一篇:在窗体控件中添加定时器下一篇:重新计算窗口大小>
WndCalSize
重新计算窗口大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数根据所有子窗口位置布局重新计算当前窗口的宽度和高度。

重新计算的窗口宽度和高度为当前窗口的左上角到所有子窗口布局位置的最大宽度和最大高度

以下图为例，图片控件为父控件，两个按钮控件均为子控件，使用此接口重新计算的窗口大小范围如红框所示。

WndCalSize.png
语法
Luacopy 复制
WndCalSize(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的名称

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
_GUIHandle1 = GUI:ImageCreate(_Parent,"testImg", 1900000003, 200, 200) --创建一个图片控件作为父窗口
if _GUIHandle1 ~= 0 then
    GUI:WndSetEnableM(_GUIHandle1, false) --设置图片控件是否可用
end

_GUIHandle2 = GUI:ButtonCreate(_GUIHandle1, "testbutton",  4000240016, 252,40) --创建一个按钮控件作为子窗口
_GUIHandle3 = GUI:ButtonCreate(_GUIHandle1, "testbutton2",  4000240016, 300,60) --创建一个按钮控件作为子窗口

--获取重新计算前的窗口大小（即父窗口的大小）
if GUI:WndGetSizeM(_GUIHandle1) then
    local _Width = LuaRet[1] --获取窗口宽度
    local _Height = LuaRet[2] --获取窗口高度
    dbg("Width is:".._Width)
    dbg("Height is:".._Height)
end

local v = WndCalSize(_GUIHandle1,"") --重新计算窗口大小
dbg("窗口返回值为"..tostring(v))

--获取重新计算后的窗口大小
if GUI:WndGetSizeM(_GUIHandle1) then
    local _Width = LuaRet[1] --获取窗口宽度
    local _Height = LuaRet[2] --获取窗口高度
    dbg("Width is:".._Width)
    dbg("Height is:".._Height)
end

--此示例代码运行成功如下图所示。

WndCalSize_3.png
<上一篇:查找窗口是否存在下一篇:模拟左键单击触发左键点击事件>
WndClick
模拟左键单击触发左键点击事件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数模拟左键单击触发左键点击事件。

note_icon 备注
此接口不支持由脚本自定义的窗口事件，只对由程序控制的控件生效。

语法
Luacopy 复制
WndClick(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

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
<上一篇:重新计算窗口大小下一篇:从窗口队列中删除数据>
WndCloseItemWindow
从窗口队列中删除数据

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数从窗口队列中删除指定窗口类型的数据。

语法
Luacopy 复制
WndCloseItemWindow(
    _Handle,
    _Info,
    _WindowType
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_WindowType

int

 
窗口类型

点击窗口类型了解更多信息

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
WndCloseItemWindow(_Parent,"",ITEMWINDOW_WAREHOUSE) --从窗口队列中删除仓库类型数据
<上一篇:模拟左键单击触发左键点击事件下一篇:关闭窗口>
WndCloseM
关闭窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数作用为关闭指定窗口。

语法
Luacopy 复制
WndCloseM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

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
local _WindowHandle = GUI:WndCreateWnd(_Parent, "example", 1859710000, 100, 100) --新建一个窗口
if _WindowHandle ~= 0 then
    GUI:WndSetSizeM(_WindowHandle, 500, 500) --设置窗口大小
    GUI:ImageSetFitSize(_WindowHandle, true) --设置窗口图片自适应窗口大小
    GUI:WndRegistScript(_WindowHandle, RDWndBaseCL_mouse_lbClick, "Close_Window") --注册窗体“鼠标左键点击”事件发生时回调的函数
end

function Close_Window(_WindowHandle)
    WndClose(_WindowHandle,"") --关闭窗口
end
--此示例代码创建一个窗口，当鼠标左键点击窗口时，窗口关闭。
<上一篇:从窗口队列中删除数据下一篇:模拟左键双击触发左键双击事件>
WndDbClick
模拟左键双击触发左键双击事件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数模拟左键双击触发左键双击事件。

note_icon 备注
此接口不支持由脚本自定义的窗口事件，只对由程序控制的控件生效。

语法
Luacopy 复制
WndDbClick(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

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
<上一篇:关闭窗口下一篇:删除窗体控件中所有的定时器>
WndDelAllTimer
删除窗体控件中所有的定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数删除指定窗体控件中所有已创建的定时器。

语法
Luacopy 复制
WndDelAllTimer(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Handle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _Handle ~= 0 then
    WndAddTimer(_Handle,"", 1, 1000, "Timer") --添加一个定时器
    WndDelAllTimer(_Handle,"") --删除所有定时器
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行后，定时器回调函数未被运行。
<上一篇:模拟左键双击触发左键双击事件下一篇:删除窗口特效>
WndDelEffect
删除窗口特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数作用为删除窗口特效。

语法
Luacopy 复制
WndDelEffect(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",1930001006,100,200)--创建按钮控件
if _GUIHandle ~= 0 then
    GUI:ButtonSetScale(_GUIHandle, 35000, 30000) --设置按钮控件的缩放比例
    WndAddEffect(_GUIHandle, "",3000100400, -100, -175, 100, 0) --添加窗口特效
    WndDelEffect(_GUIHandle, "") --删除窗口特效
end

--此示例代码运行成功如下图所示（按钮控件上不再播放特效）。

WndDelEffect.png
<上一篇:删除窗体控件中所有的定时器下一篇:删除窗体控件的自定义属性>
WndDelProperty
删除窗体控件的自定义属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数删除指定窗体控件指定自定义属性的值。

程序将根据属性名称删除对应的属性值。

note_icon 备注
自定义属性主要分为两种：

1.程序中已定义具体功能的属性，相关信息请参见窗体控件的自定义属性定义页面；

2.脚本中自定义的属性，主要用于区分各个窗体控件在游戏中的实际用途。

  例如：对于按钮控件，可定义描述为“按钮功能”的属性以区别每个按钮控件在游戏中实际的用途。

语法
Luacopy 复制
WndDelProperty(
    _Handle,
    _Info,
    _Key
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Key

string

 
属性名称

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",4000240016,66,236) --创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包扩展") --设置按钮控件上的文字为“背包扩展”
    WndAddProperty(_GUIHandle,"","按钮功能","解锁") --设置按钮控件的“按钮功能”属性
    WndDelProperty(_GUIHandle,"","按钮功能") --删除按钮控件的“按钮功能”属性
    dbg("自定义属性值为"..WndGetProperty(_GUIHandle,"","按钮功能")) --获取按钮控件“按钮功能”属性的属性值
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容（获取的属性值为空）。

WndAddProperty_2.png

WndDelProperty_2.png
<上一篇:删除窗口特效下一篇:删除窗体控件中指定的定时器>
WndDelTimer
删除窗体控件中指定的定时器

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数删除指定窗体控件中指定的定时器。

语法
Luacopy 复制
WndDelTimer(
    _Handle,
    _Info,
    _ID
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_ID

int

 
要删除的定时器ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local counter = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Handle = GUI:WndCreateWnd(_Parent, "BgImage", 1859710000, 0, 0) --创建一个窗口
if _Handle ~= 0 then
    WndAddTimer(_Handle,"", 1, 1000, "Timer") --添加一个定时器
    WndDelTimer(_Handle,"", 1) --删除定时器
end

function Timer()
    counter = counter+1
    dbg("定时器秒数：" .. counter)
end

--此示例代码运行后，定时器回调函数未被运行。
<上一篇:删除窗体控件的自定义属性下一篇:获取子窗口句柄>
WndFindChild
获取子窗口句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数通过父窗口句柄和要查询窗口（子控件）的名称，获取相应窗口（子控件）的句柄。

note_icon 备注
此函数功能类似于GetWindow。

区别在于此接口的查询深度为1，即只查询传入句柄的窗口中所有子窗口，不再继续查询子窗口下包含的窗口。

语法
Luacopy 复制
WndFindChild(
    _Handle,
    _Info,
    _Child
)
参数
_Handle

int

 
父窗口句柄（将从此窗口开始查询）

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Child

string

 
要查询窗口的名称

若此参数的值设置为parent，则会获取父窗口信息，否则根据设置的字符串获取相应窗口（子控件）的句柄。

返回值
int

 
获取成功则返回窗口（子控件）的句柄

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local  _Handle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",1900000003,200,200) --新建一个窗口
if _Handle ~= 0 then
    dbg("创建的窗口句柄：".._Handle)
end

local _GUIHandle = WndFindChild(_Parent,"","MenuTestWnd") --获取窗口的句柄
if _GUIHandle ~= 0 then
    dbg("获取得到的窗口句柄：".._GUIHandle)
end

--此示例代码运行成功如下图所示（新建窗口时返回的窗口句柄与获取得到的窗口句柄一致）。

WndFindChild.png
<上一篇:删除窗体控件中指定的定时器下一篇:获取当前被激活窗口类型的索引值>
WndGetCurItemWindow
获取当前被激活窗口类型的索引值

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取当前被激活的窗口类型的索引值。

语法
Luacopy 复制
WndGetCurItemWindow()
参数
无

返回值
int

 
当前被激活的窗口类型的索引值

具体请参见窗口类型页面

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
WndActiveItemWindow(_Parent,"",ITEMWINDOW_ADVWAREHOUSE) --激活高级仓库
dbg("当前被激活的窗口类型的索引值："..WndGetCurItemWindow()) --获取被激活的窗口类型的索引值

--此示例代码运行成功如下图所示。

WndActiveItemWindow.png
<上一篇:获取子窗口句柄下一篇:获取窗口是否可用>
WndGetEnableM
获取窗口是否可用

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取有响应的控件是否能使用。

note_icon 备注
有响应的控件包括按钮控件、编辑框控件等。

语法
Luacopy 复制
WndGetEnableM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
bool

 
true控件可用

false控件不可用

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"test1",1802500006,200 ,200) --创建按钮控件1
if _GUIHandle ~= 0 then
    WndSetEnableM(_GUIHandle,"", true) --设置按钮控件1可用
    if WndGetEnableM(_GUIHandle,"") then --获取按钮控件1是否可用
        dbg("按钮控件1可用")
    else
        dbg("按钮控件1不可用")
    end
end

_GUIHandle = GUI:ButtonCreate(_Parent,"test2",1802500006,200 ,300) --创建按钮控件2
if _GUIHandle ~= 0 then
    WndSetEnableM(_GUIHandle,"",false) --设置按钮控件2不可用
    if WndGetEnableM(_GUIHandle,"") then --获取按钮控件2是否可用
        dbg("按钮控件2可用")
    else
        dbg("按钮控件2不可用")
    end
end

--此示例代码运行成功如下图所示（上方的按钮控件可以点击，下方的按钮控件不可点击），同时控制台会输出如下内容。

WndSetEnableM.png

WndGetEnableM.png
<上一篇:获取当前被激活窗口类型的索引值下一篇:获取窗体控件的名称>
WndGetIDM
获取窗体控件的名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定窗体控件的名称。

语法
Luacopy 复制
GUI:WndGetIDM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
string

 
获取成功则返回指定窗体控件的名称

获取失败则返回空字符串（""）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"New_Window",1900000003,200,200)
if _GUIHandle ~= 0 then
    dbg("该窗体控件改变前的名称为："..WndGetIDM(_GUIHandle,"")) --获取该窗体控件改变后的名称
    WndSetIDM(_GUIHandle,"","GUI_Example") --设置该窗体控件的名称为“GUI_Example”
    dbg("该窗体控件改变后的名称为："..WndGetIDM(_GUIHandle,"")) --获取该窗体控件改变后的名称
end

--此示例代码运行成功如下图所示。

Lua_WndSetIDM.png
<上一篇:获取窗口是否可用下一篇:获取物品框中物品的GUIData句柄>
WndGetItemGUIDataHandle
获取物品框中物品的GUIData句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取物品框中物品的GUIData句柄。

note_icon 备注
推荐使用GUI:ItemCtrlGetGUIData函数，两者功能相同。

语法
Luacopy 复制
WndGetItemGUIDataHandle(
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

 
指定窗体控件的描述

返回值
long

 
物品的GUIData句柄

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemN1",1850400004,515,126,66,66)
if _GUIHandle ~= 0 then
    dbg("物品的GUIData句柄为"..WndGetItemGUIDataHandle(_GUIHandle,""))  --获取物品框中物品的GUIData句柄
end

--此示例代码运行成功如下图所示。

WndGetItemGUIDataHandle.png
<上一篇:获取窗体控件的名称下一篇:获取窗体控件的自定义参数>
WndGetParam
获取窗体控件的自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数用于获取与指定窗体控件相关联的自定义参数的数值。

note_icon 备注
请配对使用，即调用封装接口WndSetParam设置自定义参数的数值时，必须使用封装接口WndGetParam获取自定义参数的数值。

语法
Luacopy 复制
WndGetParam(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
int

 
执行成功则返回自定义参数的数值

执行失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --创建窗口
if _Wnd ~= 0 then
    WndSetParam(_Wnd,"",3) --设置自定义参数值“3”
end
local param = WndGetParam(_Wnd,"")
dbg("User parameter is: " .. param)

--此示例代码运行成功如下图所示。

WndSetParam.png
<上一篇:获取物品框中物品的GUIData句柄下一篇:获取父窗口句柄>
WndGetParentM
获取父窗口句柄

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数通过指定的窗口句柄，获取相应窗口的父窗口（即父控件）的句柄。

语法
Luacopy 复制
WndGetParentM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
int

 
获取成功则返回父窗口句柄

获取失败则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
dbg("父窗口句柄为：" .. _Parent)
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --新建窗口
if _Wnd ~= 0 then
    local handle = WndGetParentM(_Wnd,"") --获取父窗口句柄
    dbg("ExampleWnd的父窗口句柄为：" .. handle)
end

--此示例代码运行成功如下图所示（两次打印的父窗口句柄一致）。

WndGetParentM.png
<上一篇:获取窗体控件的自定义参数下一篇:获取窗体控件相对于父窗体的坐标位置>
WndGetPosM
获取窗体控件相对于父窗体的坐标位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2023-05-31 00:00:00
此函数获取指定窗体控件在其父窗口容器内所在的坐标位置。

语法
Luacopy 复制
WndGetPosM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的坐标位置存储在LuaRet中。

LuaRet[1]窗体控件相对于父窗体的横坐标；

LuaRet[2]窗体控件相对于父窗体的纵坐标。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"SafeCB",1930001000,"",250,50) --创建一个复选框控件
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
    GUI:CheckBoxSetText(_GUIHandle, "安全区") --设置复选框控件的文本内容
    if WndGetPosM(_GUIHandle,"") then
        local _XPOS = LuaRet[1]
        local _YPOS = LuaRet[2]
        dbg("横坐标为：" .. _XPOS)
        dbg("纵坐标为：" .. _YPOS)
    end
end

--此示例代码运行成功如下图所示。

WndGetPosM.png
<上一篇:获取父窗口句柄下一篇:获取窗体控件的自定义属性>
WndGetProperty
获取窗体控件的自定义属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定窗体控件的自定义属性的值。

程序将根据属性名称获取对应的属性值。

note_icon 备注
自定义属性主要分为两种：

1.程序中已定义具体功能的属性，相关信息请参见窗体控件的自定义属性定义页面；

2.脚本中自定义的属性，主要用于区分各个窗体控件在游戏中的实际用途。

  例如：对于按钮控件，可定义描述为“按钮功能”的属性以区别每个按钮控件在游戏中实际的用途。

语法
Luacopy 复制
WndGetProperty(
    _Handle,
    _Info,
    _Key
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Key

string

 
属性名称

返回值
string

 
指定的自定义属性的属性值

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExtPackage",4000240016,66,236) --创建一个按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"背包\n扩展") --设置按钮控件上的文字为“背包扩展”
    GUI:ButtonSetScale(_GUIHandle, 12500, 15000) --设置按钮控件的缩放比例
    WndAddProperty(_GUIHandle,"","button_text_support_slash_n","1") --设置按钮控件的文本内容支持换行符“\n”
    dbg("自定义属性值为"..WndGetProperty(_GUIHandle,"","button_text_support_slash_n")) --获取按钮控件“button_text_support_slash_n”属性的属性值
end

--此示例代码运行成功如下图所示，同时控制台还会输出如下内容。

WndAddProperty.png

WndGetProperty.png
<上一篇:获取窗体控件相对于父窗体的坐标位置下一篇:获取窗体控件的屏幕坐标>
WndGetScreenPos
获取窗体控件的屏幕坐标

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定窗体控件相对于游戏主窗口左上角的坐标位置。

语法
Luacopy 复制
WndGetScreenPos(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取的坐标位置存储在LuaRet中。

LuaRet[1]横坐标；

LuaRet[2]纵坐标。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:CheckBoxCreate(_Parent,"SafeCB",1930001000,"",100,200) --创建复选框控件
if _GUIHandle ~= 0 then
    GUI:WndSetSizeM(_GUIHandle,21, 21) --设置复选框控件的大小
    GUI:CheckBoxSetText(_GUIHandle, "安全区") --设置复选框控件的文本内容
    if WndGetScreenPos(_GUIHandle,"") then
        local _XPOS = LuaRet[1]
        local _YPOS = LuaRet[2]
        dbg("横坐标为：" .. _XPOS)
        dbg("纵坐标为：" .. _YPOS)
    end
end

--此示例代码运行成功如下图所示。

WndGetScreenPos.png
<上一篇:获取窗体控件的自定义属性下一篇:获取窗口大小>
WndGetSizeM
获取窗口大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定窗口的大小。

语法
Luacopy 复制
WndGetSizeM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
bool

 
true获取成功

false获取失败

note_icon 备注
此函数返回操作成功或失败。如操作成功，则获取窗口大小的数值存储在LuaRet中。

LuaRet[1]窗口的宽度，单位为像素（px）；

LuaRet[2]窗口的高度，单位为像素（px）。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建窗口
if _GUIHandle ~= 0 then
    WndSetSizeM(_GUIHandle,"",500,500)--设置窗口大小为500*500
    if WndGetSizeM(_GUIHandle,"") then --获取窗口大小
        local _Width = LuaRet[1]
        local _Height = LuaRet[2]
        dbg("Width is:".._Width)
        dbg("Height is:".._Height)
    end
end

--此示例代码运行成功如下图所示。

WndSetSizeM.png
<上一篇:获取窗体控件的屏幕坐标下一篇:获取窗体控件的可见状态>
WndGetVisibleM
获取窗体控件的可见状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数获取指定窗体控件的可见状态。

语法
Luacopy 复制
WndGetVisibleM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
bool

 
true指定窗体控件为可见状态

false指定窗体控件为不可见状态

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建窗口
if _GUIHandle ~= 0 then
    WndSetVisibleM(_GUIHandle,"", true) --设置窗体控件为可见状态
    if WndGetVisibleM(_GUIHandle,"") then --获取窗体控件的可见状态
        dbg("指定窗体控件可见")
    else
        dbg("指定窗体控件不可见")
    end
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

Lua_WndSetVisible.png

WndGetVisibleM.png
<上一篇:获取窗口大小下一篇:刷新控件的绘制内容>
WndInvalidate
刷新控件的绘制内容

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数作用为刷新指定窗体控件的绘制内容，使用此接口后会立即刷新指定窗体控件的绘制内容。

caution_icon 注意
仅对使用了flg_wndBase_useBkBuffer（背景缓冲）标记的窗体控件有效。

语法
Luacopy 复制
WndInvalidate(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

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
local _GUIHandle = GUI:WndCreateWnd(_Parent,"MenuTestWnd",1900000003,200,200)
if GUI:WndGetSizeM(_GUIHandle) then
    WndSetFlagsM(_GUIHandle,"",flg_wndBase_useBkBuffer) --设置窗体控件的标记
    WndInvalidate(_GUIHandle,"") --刷新控件的绘制内容
end

--此示例代码运行成功指定窗体控件会被立即刷新。
<上一篇:获取窗体控件的可见状态下一篇:判断窗口是否存在>
WndIsLive
判断窗口是否存在

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数判断指定的窗口是否存在。

语法
Luacopy 复制
WndIsLive(
    _Handle,
    _Info
)
参数
_Handle

int

 
父窗口的句柄

点击窗口句柄了解更多信息

_Info

string

 
要判断的窗口的名称

返回值
bool

 
true窗口存在

false窗口已被关闭或者窗口不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --新建一个窗口
if WndIsLive(_Parent,"GUI_Example") then --判断窗口是否存在
    dbg("窗口存在")
else
    dbg("窗口已被关闭")
end

--此示例代码运行成功如下图所示。

WndIsLive.png
<上一篇:刷新控件的绘制内容下一篇:将窗口移动至最下层>
WndMoveToParentBottom
将窗口移动至最下层

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数将指定的窗口移动至其父窗口中所有子控件的最下层。

语法
Luacopy 复制
WndMoveToParentBottom(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗口的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent, "ClickBack", 1859710000, 120, 100) --创建一个窗口
if _GUIHandle ~= 0 then
    GUI:ImageSetAlpha(_GUIHandle, 130) --设置图片控件的透明度为130
    GUI:WndSetSizeM(_GUIHandle, 200, 200) --设置窗口大小为200*200
    GUI:ImageSetFitSize(_GUIHandle, true) --设置图片资源根据图片控件的大小进行缩放
end

_GUIHandle1 = GUI:ImageCreate(_Parent,"BG1",4000230000,150,150) --创建第一个图片控件
if _GUIHandle ~= 0 then
    WndMoveToParentBottom(_GUIHandle1,"") --将窗口移动至最下层
end

_GUIHandle2 = GUI:ImageCreate(_Parent,"BG2",4000230000,230,150) --创建第二个图片控件

--若未使用接口WndMoveToParentBottom将窗口移动至最下层，则对应效果如下图所示。

WndMoveToParentTop_2.png
--此示例代码运行成功如下图所示。

WndMoveToParentBottom.png
<上一篇:判断窗口是否存在下一篇:将窗口移动至最上层>
WndMoveToParentTop
将窗口移动至最上层

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数将指定的窗口移动至其父窗口中所有子控件的最上层。

语法
Luacopy 复制
WndMoveToParentTop(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:WndCreateWnd(_Parent, "ClickBack", 1859710000, 120, 100) --创建一个窗口
if _GUIHandle ~= 0 then
    GUI:ImageSetAlpha(_GUIHandle, 130) --设置图片控件的透明度为130
    GUI:WndSetSizeM(_GUIHandle, 200, 200) --设置窗口大小为200*200
    GUI:ImageSetFitSize(_GUIHandle, true) --设置图片资源根据图片控件的大小进行缩放
    WndMoveToParentTop(_GUIHandle,"") --将窗口移动至最上层
end

_GUIHandle1 = GUI:ImageCreate(_Parent,"BG1",4000230000,150,150) --创建第一个图片控件

_GUIHandle2 = GUI:ImageCreate(_Parent,"BG2",4000230000,230,150) --创建第二个图片控件

--若未使用接口WndMoveToParentTop将窗口移动至最上层，则对应效果如下图所示。

WndMoveToParentTop_2.png
--此示例代码运行成功如下图所示。

WndMoveToParentTop.png
<上一篇:将窗口移动至最下层下一篇:打开指定类型的物品窗口>
WndOpenItemWindow
打开指定类型的物品窗口

手游 2Dsupport 3Dsupport

端游 2Dsupport3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数创建一个窗口类型-函数名的键值对，并将其加入到窗口队列中。

该函数用于获取打开该类型窗口时需要锁定的物品列表。

语法
Luacopy 复制
WndOpenItemWindow(
    _Handle,
    _Info,
    _WindowType,
    _LuaFunc_GetGUIDList
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_WindowType

int

 
窗口类型

点击窗口类型了解更多信息

_LuaFunc_GetGUIDList

string

 
获取物品窗口中要显示的物品的函数接口名

返回值
bool

 
true执行成功

false执行失败

note_icon 备注
如操作成功，获取的当前队列最前的物品窗口的ID（类型：int）存储在全局变量LuaRet中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
if WndOpenItemWindow(_Parent,"",ITEMWINDOW_DAOJUHECHENG, "GetItemGUIDList") then
    dbg("当前队列最前的物品窗口的ID为"..LuaRet)
else
    dbg("执行失败")
end

GetItemGUIDList = function()
    local t = {}
    if CL:GetPackageItemGUIDList() then
        t = LuaRet
    end
    return t
end

--此示例代码运行成功如下图所示。

WndOpenItemWindow.png
<上一篇:将窗口移动至最上层下一篇:判断指定坐标点是否在窗体控件内>
WndPtInWindowM
判断指定坐标点是否在窗体控件内

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数判断指定坐标点是否在指定窗体控件内。

语法
Luacopy 复制
WndPtInWindowM(
    _Handle,
    _Info,
    _PosX,
    _PosY
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_PosX

int

 
指定坐标点相对于指定窗体控件左上角的横坐标

_PosY

int

 
指定坐标点相对于指定窗体控件左上角的纵坐标

note_icon 备注
此接口以指定窗体控件的左上角为原点进行判断，因此要判断的坐标点的坐标是相对于指定窗体控件左上角的坐标。

返回值
bool

 
true指定坐标点在窗体控件内

false指定坐标点不在窗体控件内

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --新建一个窗口
if WndPtInWindowM(_GUIHandle,"",10, 10) then --判断指定坐标点是否在窗口内
    dbg("指定坐标在窗口内")
else
    dbg("指定坐标不在窗口内")
end

--此示例代码运行成功如下图所示。

WndPtInWindowM.png
<上一篇:打开指定类型的物品窗口下一篇:清除控件的所有回调函数>
WndPurgeScript
清除控件的所有回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数根据指定的窗体控件的事件ID，清除对应事件所注册的所有回调函数。

语法
Luacopy 复制
WndPurgeScript(
    _Handle,
    _Info,
    _Msg
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Msg

int

 
指定窗体控件的事件ID

点击窗口事件了解更多信息

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
local _GUIHandle = GUI:ImageCreate(_Parent,"EnterImg",4000230000,455, 390)
if _GUIHandle ~= 0 then
    WndRegistScript(_GUIHandle,nil, RDWndBaseCL_mouse_lbClick, "Close_Wnd")--注册“鼠标左键点击”事件发生时回调的函数
    WndRegistScript(_GUIHandle,nil, RDWndBaseCL_mouse_lbClick,"dbg_text")--注册“鼠标左键点击”事件发生时回调的函数
    WndPurgeScript(_GUIHandle,nil, RDWndBaseCL_mouse_lbClick)--清除“鼠标左键点击”事件发生时所有的回调函数
end

function Close_Wnd(_GUIHandle)
    GUI:WndClose(_GUIHandle)
end

function dbg_text()
    dbg("当前有窗体注册事件")
end

--此示例代码运行效果为鼠标左键点击窗口无法关闭，控制台不会输出“当前有窗体注册事件”的文字。
<上一篇:判断指定坐标点是否在窗体控件内下一篇:模拟右键单击触发右键点击事件>
WndRClick
模拟右键单击触发右键点击事件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数模拟右键单击触发右键点击事件。

note_icon 备注
此接口不支持由脚本自定义的窗口事件，只对由程序控制的控件生效。

语法
Luacopy 复制
WndRClick(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

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
<上一篇:清除控件的所有回调函数下一篇:模拟右键双击触发右键双击事件>
WndRDbClick
模拟右键双击触发右键双击事件

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数模拟右键双击触发右键双击事件。

note_icon 备注
此接口不支持由脚本自定义的窗口事件，只对由程序控制的控件生效。

语法
Luacopy 复制
WndRDbClick(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

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
<上一篇:模拟右键单击触发右键点击事件下一篇:注册窗体控件的事件回调函数>
WndRegistScript
注册窗体控件的事件回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数指定窗体控件的事件类型及事件发生时回调的函数。

每个窗体控件的事件支持注册多个脚本回调函数，事件发生依次进行回调。

语法
Luacopy 复制
WndRegistScript(
    _Handle,
    _Info,
    _Msg,
    _FuncName
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Msg

int

 
指定窗体控件的事件ID

点击窗口事件了解更多信息

_FuncName

string

 
回调函数名称

note_icon 备注
当事件发生时，即回调指定的函数。

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
local _GUIHandle = GUI:ImageCreate(_Parent,"EnterImg",4000230000,455, 390)
if _GUIHandle ~= 0 then
    WndRegistScript(_GUIHandle,nil, RDWndBaseCL_mouse_lbClick, "Close_Wnd")--注册“鼠标左键点击”事件发生时回调的函数
end
function Close_Wnd(_GUIHandle)
    GUI:WndClose(_GUIHandle)
end

--此示例代码运行成功如下图所示。

WndRegistScript.gif
<上一篇:模拟右键双击触发右键双击事件下一篇:设置窗体控件的激活状态>
WndSetActiveM
设置窗体控件的激活状态

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件的激活状态。

语法
Luacopy 复制
WndSetActiveM(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Flag

bool

 
true指定窗体控件为激活状态

false指定窗体控件为非激活状态

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"RoleName",180,212,181,17) --创建编辑框控件
if _GUIHandle ~= 0 then
    WndSetActiveM(_GUIHandle,"", true) --设置编辑框控件为激活状态
    GUI:EditSetMaxCharNum(_GUIHandle, 14) --设置编辑框控件允许的最大字符个数
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置编辑框控件的文本内容为“设置”
end

--此示例代码运行成功如下图所示（编辑框控件会主动弹出光标）。

WndSetActiveM.png
<上一篇:注册窗体控件的事件回调函数下一篇:设置窗口是否响应操作>
WndSetCanRevMsg
设置窗口是否响应操作

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件是否响应操作。

note_icon 备注
功能类似于GUI:WndSetMouseEnableIN接口，区别在于此函数所接收的操作类型除鼠标点击外，还有包括按键等其他方式。

语法
Luacopy 复制
WndSetCanRevMsg(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Flag

bool

 
true消息将会传递至此窗口下的子控件

false消息将不会传递至此窗口下的子控件

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent, "PasswordHint", 180, 180, 180, 140)
if _GUIHandle ~= 0 then
    WndSetCanRevMsg(_GUIHandle,"",true) --设置编辑框响应操作
    GUI:EditSetTextM(_GUIHandle,"设 置") --设置文本内容为“设置”
end

--此示例代码运行成功如下图所示（鼠标点击后指定编辑框有光标可以进行编辑）。

WndSetCanRevMsg.png
<上一篇:设置窗体控件的激活状态下一篇:设置窗口是否可用>
WndSetEnableM
设置窗口是否可用

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置有响应的控件是否可用。

note_icon 备注
有响应的控件包括按钮控件、编辑框控件等。

语法
Luacopy 复制
WndSetEnableM(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Flag

bool

 
控件是否可用

true可用

false不可用

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"test1",1802500006,200 ,200) --创建按钮控件1
if _GUIHandle ~= 0 then
    WndSetEnableM(_GUIHandle,"", true) --设置按钮控件1可用
    if WndGetEnableM(_GUIHandle,"") then --获取按钮控件1是否可用
        dbg("按钮控件1可用")
    else
        dbg("按钮控件1不可用")
    end
end

_GUIHandle = GUI:ButtonCreate(_Parent,"test2",1802500006,200 ,300) --创建按钮控件2
if _GUIHandle ~= 0 then
    WndSetEnableM(_GUIHandle,"",false) --设置按钮控件2不可用
    if WndGetEnableM(_GUIHandle,"") then --获取按钮控件2是否可用
        dbg("按钮控件2可用")
    else
        dbg("按钮控件2不可用")
    end
end

--此示例代码运行成功如下图所示（上方的按钮控件可以点击，下方的按钮控件不可点击），同时控制台会输出如下内容。

WndSetEnableM.png

WndGetEnableM.png
<上一篇:设置窗口是否响应操作下一篇:设置窗口Esc关闭属性>
WndSetEscClose
设置窗口Esc关闭属性

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置Esc关闭属性，即按Esc键是否会关闭指定窗口。

语法
Luacopy 复制
WndSetEscClose(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Flag

bool

 
true按Esc键会关闭窗口

false按Esc键不会关闭窗口

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
local _GUIHandle = GUI:WndCreateWnd(_Parent,"test",1900000003,200,200) --创建一个窗口
if _GUIHandle ~= 0 then
    WndSetEscClose(_GUIHandle,"",true) --设置按Esc键会关闭指定窗口
end

--此示例代码执行后，按Esc键会关闭指定窗口。
<上一篇:设置窗口是否可用下一篇:设置窗体控件的标记>
WndSetFlagsM
设置窗体控件的标记

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置窗体控件的标记。

脚本中有预先定义的窗体控件标记，可对相应的控件做设置变更。

语法
Luacopy 复制
WndSetFlagsM(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Flag

unsigned int

 
标记类型

点击控件标记了解更多信息

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
local _GUIHandle = GUI:WndCreateWnd(_Parent,"test",1900000003,200,200) --创建一个窗口
if _GUIHandle ~= 0 then
    _GUIHandle1 = GUI:EditCreate(_GUIHandle, "testedit", 0, 0, 252, 30) --以新建窗口为父控件创建一个新的编辑框控件
    if _GUIHandle1 ~= 0 then
        GUI:EditSetTextM(_GUIHandle1,"设 置") --设置编辑框控件的文本内容
        WndSetFlagsM(_GUIHandle1,"",flg_dlgEdit_textInCenter) --设置编辑框控件中的文字左右居中
    end
end

--此示例代码运行前效果如下图所示。

WndSetFlagsM.png

--此示例代码运行后效果如下图所示，添加标记后编辑框控件中的文字左右居中。

WndSetFlagsM_2.png

<上一篇:设置窗口Esc关闭属性下一篇:设置窗体控件获得焦点>
WndSetFocusM
设置窗体控件获得焦点

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定的窗体控件获得焦点。

语法
Luacopy 复制
WndSetFocusM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
_GUIHandle = GUI:ButtonCreate(_Parent,"exampleBtn",4000230000,430,500) --创建一个按钮控件
if _GUIHandle ~= 0 then
    WndSetFocusM(_GUIHandle, "") --设置按钮控件获得焦点
end

_GUIHandle2 = GUI:ButtonCreate(_Parent,"exampleBtn2",4000230000,500,500) --创建一个按钮控件

--此示例代码运行成功如下图所示。

--左侧按钮控件设置了焦点（按钮控件处于鼠标悬浮状态），而右侧按钮控件未设置焦点。

WndSetFocusM.png
<上一篇:设置窗体控件的标记下一篇:设置窗体控件的名称>
WndSetIDM
设置窗体控件的名称

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件的名称。

语法
Luacopy 复制
WndSetIDM(
    _Handle,
    _Info,
    _NewId
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_NewId

string

 
要设置的窗体控件名称

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"New_Window",1900000003,200,200)
if _GUIHandle ~= 0 then
    dbg("该窗体控件改变前的名称为："..WndGetIDM(_GUIHandle,"")) --获取该窗体控件改变后的名称
    WndSetIDM(_GUIHandle,"","GUI_Example") --设置该窗体控件的名称为“GUI_Example”
    dbg("该窗体控件改变后的名称为："..WndGetIDM(_GUIHandle,"")) --获取该窗体控件改变后的名称
end

--此示例代码运行成功如下图所示。

Lua_WndSetIDM.png
<上一篇:设置窗体控件获得焦点下一篇:设置窗体控件是否具有键盘焦点>
WndSetKeyFocusM
设置窗体控件是否具有键盘焦点

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件是否具有键盘焦点。

窗体控件具有键盘焦点后，即可直接接收相应按键的消息。

语法
Luacopy 复制
WndSetKeyFocusM(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Flag

bool

 
true指定窗体控件具有键盘焦点

false指定窗体控件不具有键盘焦点

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"edit_example", 200, 200, 150, 30) --创建一个编辑框控件
if _GUIHandle ~= 0 then
    GUI:EditSetTextM(_GUIHandle,"测试键盘焦点") --设置编辑框控件的文本内容
    WndSetKeyFocusM(_GUIHandle, "",true) --设置编辑框控件具有键盘焦点
end

--此示例代码运行成功如下图所示（指定的窗体控件可直接接收按键的消息）。

WndSetKeyFocusM.gif
<上一篇:设置窗体控件的名称下一篇:设置窗体控件是否具有MagicUI特效>
WndSetMagicUI
设置窗体控件是否具有MagicUI特效

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-19 00:00:00
此函数设置指定窗体控件是否具有MagicUI特效。

设置后，在窗体控件创建时会有一段过渡动画的特效。

语法
Luacopy 复制
WndSetMagicUI(
    _Handle,
    _Info,
    _Type
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Type

int

 
1有MagicUI特效

0无MagicUI特效

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:EditCreate(_Parent,"edit_example", 200, 200, 150, 30) --创建一个编辑框控件
if _GUIHandle ~= 0 then
    WndSetMagicUI(_GUIHandle,"",1) --设置指定窗体控件具有MagicUI特效
    GUI:EditSetTextM(_GUIHandle,"MagicUI特效展示") --设置编辑框的文本内容
end

--此示例代码的效果如下。

WndSetMagicUI
<上一篇:设置窗体控件是否具有键盘焦点下一篇:设置窗口左键拖动属性>
WndSetMoveWithLBM
设置窗口左键拖动属性

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置窗口可左键拖动的属性。

手游中，在全局变量SupportWindowMove设置为true后再设置此接口即可拖动窗口。

手游中，如需要设置窗口拖动时的透明度，请参见全局变量DragWindowAlpha和接口GUI:WndSetCascadeOpacity。

语法
Luacopy 复制
WndSetMoveWithLBM(
    _Handle,
    _Info
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

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
_GUIHandle = GUI:WndCreateWnd(_Parent,"BkImg1",4005020000,100,100)
if _GUIHandle ~= 0 then
    WndSetMoveWithLBM(_GUIHandle,"") --设置窗口左键拖动属性
    GUI:WndSetCascadeOpacity(_GUIHandle,true) --拖动窗口显示透明度
end

--此示例代码运行成功如下图所示。

WndSetCascadeOpacity.png
<上一篇:设置窗体控件是否具有MagicUI特效下一篇:设置窗体控件的自定义参数>
WndSetParam
设置窗体控件的自定义参数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数用于设置与指定窗体控件相关联的自定义参数的数值。

note_icon 备注
请配对使用，即调用此接口设置自定义参数的数值时，必须使用封装接口WndGetParam获取自定义参数的数值。

语法
Luacopy 复制
WndSetParam(
    _Handle,
    _Info,
    _Param
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Param

unsigned int

 
自定义参数的数值

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _Wnd = GUI:WndCreateWnd(_Parent,"ExampleWnd", 1900000003, 100, 200) --创建窗口
if _Wnd ~= 0 then
    WndSetParam(_Wnd,"",3) --设置自定义参数值“3”
end
local param = WndGetParam(_Wnd,"")
dbg("User parameter is: " .. param)

--此示例代码运行成功如下图所示。

WndSetParam.png
<上一篇:设置窗口左键拖动属性下一篇:设置窗体控件的位置>
WndSetPosM
设置窗体控件的位置

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置窗体控件相对于父窗体的坐标位置。

语法
Luacopy 复制
WndSetPosM(
    _Handle,
    _Info,
    _X,
    _Y
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_X

int

 
窗体控件相对于父窗体的横坐标

_Y

int

 
窗体控件相对于父窗体的纵坐标

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    GUI:WndSetTextM(_GUIHandle,"关闭") --设置文字内容
    WndSetPosM(_GUIHandle,"",500, 500) --重新设置按钮控件的位置
end

--此示例代码在坐标(200px, 200px)创建了一个按钮控件，然后重设位置至坐标(500px, 500px)。
<上一篇:设置窗体控件的自定义参数下一篇:设置窗口大小>
WndSetSizeM
设置窗口大小

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗口的大小。

语法
Luacopy 复制
WndSetSizeM(
    _Handle,
    _Info,
    _W,
    _H
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_W

int

 
要设置的窗口宽度

单位为像素（px）

_H

int

 
要设置的窗口高度

单位为像素（px）

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建窗口
if _GUIHandle ~= 0 then
    WndSetSizeM(_GUIHandle,"",500,500)--设置窗口大小为500*500
    if WndGetSizeM(_GUIHandle,"") then --获取窗口大小
        local _Width = LuaRet[1]
        local _Height = LuaRet[2]
        dbg("Width is:".._Width)
        dbg("Height is:".._Height)
    end
end

--此示例代码运行成功如下图所示。

WndSetSizeM.png
<上一篇:设置窗体控件的位置下一篇:设置窗体控件文本颜色>
WndSetTextColorM
设置窗体控件文本颜色

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件的文本颜色。

较常用窗体控件有按钮控件、编辑框控件等，可调用此函数设置指定控件中文本的颜色。

语法
Luacopy 复制
WndSetTextColorM(
    _Handle,
    _Info,
    _Color
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Color

unsigned int

 
文本颜色

具体请参见颜色字符串页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    WndSetTextM(_GUIHandle,"","关闭") --设置按钮控件的文本内容
    WndSetTextColorM(_GUIHandle,"", COLOR_RED) --设置按钮控件的文本颜色为红色
end

--此示例代码运行成功如下图所示。

WndSetTextColorM_2.png
<上一篇:设置窗口大小下一篇:设置窗体控件的文本内容>
WndSetTextM
设置窗体控件的文本内容

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件的文本内容。

较常用窗体控件有按钮控件、编辑框控件等，可调用此函数设置指定控件中文本的内容。

语法
Luacopy 复制
WndSetTextM(
    _Handle,
    _Info,
    _Text
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Text

string

 
文本内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--示例代码中的COLOR_RED为GlobalDefine.lua脚本文件中定义的颜色标记。
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleButton",1850000307,200,200) --创建按钮控件
if _GUIHandle ~= 0 then
    WndSetTextM(_GUIHandle,"","关闭") --设置按钮控件的文本内容
    WndSetTextColorM(_GUIHandle,"", COLOR_RED) --设置按钮控件的文本颜色为红色
end

--此示例代码运行成功如下图所示。

WndSetTextColorM_2.png
<上一篇:设置窗体控件文本颜色下一篇:设置窗体控件的Tip面板是否重新加载>
WndSetTipAutoRemove
设置窗体控件的Tip面板是否重新加载

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件的Tip面板再次显示时是否重新加载。

默认情况下，鼠标离开窗体控件后，Tip面板缓存被清空，再次显示时会重新加载内容。

note_icon 备注
手游调用此接口不会显示Tip内容。

语法
Luacopy 复制
WndSetTipAutoRemove(
    _Handle,
    _Info,
    _AutoRemove
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_AutoRemove

bool

 
trueTip再次显示时会重新加载，为默认值

falseTip再次显示时不会重新加载

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local Tip_Flag = 0
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,100,100) --创建按钮控件
if _GUIHandle ~= 0 then
    WndSetTipAutoRemove(_GUIHandle,"", true) --设置Tip再次显示时会重新加载数据
    GUI:WndSetTipFunction(_GUIHandle,"show_msg") --设置对应的回调函数
end

function show_msg()
    Tip_Flag = Tip_Flag + 1
    local _str = ""
    if Tip_Flag % 2 == 0 then
        _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"金币\n\",\"color\":\"RED\"},{\"type\":\"img\",\"imgid\":1853900004},{}]"
    else
        _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"元宝\n\",\"color\":\"RED\"},{\"type\":\"img\",\"imgid\":1853900002},{}]"
    end
    return _str
end

--此示例代码执行后，每次显示内容重新加载，金币和元宝图片会交替显示。

WndSetTipAutoRemove.gif
<上一篇:设置窗体控件的文本内容下一篇:设置窗体控件的Tip面板回调函数>
WndSetTipFunction
设置窗体控件的Tip面板回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件的Tip面板回调函数。

程序将会从回调函数的返回值中读取Tip面板的显示内容。

note_icon 备注
手游调用此接口不会显示Tip内容。

caution_icon 注意
此函数不能与WndSetTipInfo函数、GUI:WndSetTipInfo函数和Lua_WndSetTipInfo函数一起使用。

语法
Luacopy 复制
WndSetTipFunction(
    _Handle,
    _Info,
    _FuncName
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_FuncName

string

 
回调脚本函数的名称

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,0,0) --创建按钮控件
WndSetTipFunction(_GUIHandle,"", "show_msg") --设置对应的回调函数

function show_msg()
    local _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"金币\n\",\"color\":\"RED\"},{\"type\":\"img\",\"imgid\":1853900004},{}]"
    return _str
end

--此示例代码运行成功如下图所示。

WndSetTipFunction.png
<上一篇:设置窗体控件的Tip面板是否重新加载下一篇:设置窗体控件的Tip内容>
WndSetTipInfo
设置窗体控件的Tip内容

手游 2Dnot_support 3Dnot_support

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-26 00:00:00
此函数设置指定窗体控件的Tip内容。

Tip面板（GUITipPanel）允许放置文字、图片和特效等元素，并可指定颜色、大小等属性。

端游中典型的Tip面板，鼠标悬停于背包中物品时，显示的该物品的说明面板。

WndSetTipInfo_3.png
语法
Luacopy 复制
WndSetTipInfo(
    _Handle,
    _Info,
    _TipInfo
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_TipInfo

string

 
Tip内容

具体请参见Tips文本格式页面

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,0,0) --创建一个按钮控件
local _str = "[{\"type\":\"all\",\"width\":100,\"height\":100},{\"type\":\"text\",\"info\":\"金币\n\",\"font\":\"SIMLI18\"},{\"type\":\"img\",\"imgid\":1853900004},{}]" --定义Tip内容
if _GUIHandle ~= 0 then
    WndSetTipInfo(_GUIHandle,"", _str) --为按钮控件设置Tip内容
end

--此示例代码运行成功如下图所示。

WndSetTipInfo_2.png
<上一篇:设置窗体控件的Tip面板回调函数下一篇:设置窗体控件是否可见>
WndSetVisibleM
设置窗体控件是否可见

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dnot_support

更新时间：2021-11-16 00:00:00
此函数设置指定窗体控件是否可见。

语法
Luacopy 复制
WndSetVisibleM(
    _Handle,
    _Info,
    _Flag
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Flag

bool

 
true设置为可见状态

false设置为不可见状态

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local _Parent = LuaGlobal["AttachPartent"] --获取父窗口句柄
local _GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200) --创建窗口
if _GUIHandle ~= 0 then
    WndSetVisibleM(_GUIHandle,"", true) --设置窗体控件为可见状态
    if WndGetVisibleM(_GUIHandle,"") then --获取窗体控件是否可见
        dbg("指定窗体控件可见")
    else
        dbg("指定窗体控件不可见")
    end
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

Lua_WndSetVisible.png

WndGetVisibleM.png
<上一篇:设置窗体控件的Tip内容下一篇:清除指定名称的回调函数>
WndUnRegistScript
清除指定名称的回调函数

手游 2Dsupport 3Dsupport

端游 2Dsupport 3Dsupport

H5 2Dsupport

更新时间：2021-11-16 00:00:00
此函数根据窗体控件的事件ID和函数名称，清除对应事件下指定的回调函数。

语法
Luacopy 复制
WndUnRegistScript(
    _Handle,
    _Info,
    _Msg,
    _FuncName
)
参数
_Handle

int

 
指定窗体控件的句柄

点击窗口句柄了解更多信息

_Info

string

 
指定窗体控件的描述

_Msg

int

 
指定窗体控件的事件ID

点击窗口事件了解更多信息

_FuncName

string

 
要清除的回调函数的名称

note_icon 备注
当事件发生时，即回调指定的函数。

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
local _GUIHandle = GUI:ImageCreate(_Parent,"EnterImg",4000230000,455, 390)
if _GUIHandle ~= 0 then
    WndRegistScript(_GUIHandle,nil, RDWndBaseCL_mouse_lbClick, "Close_Wnd")--注册“鼠标左键点击”事件发生时回调的函数
    WndRegistScript(_GUIHandle,nil, RDWndBaseCL_mouse_lbClick,"dbg_text")--注册“鼠标左键点击”事件发生时回调的函数
    WndUnRegistScript(_GUIHandle,nil, RDWndBaseCL_mouse_lbClick, "Close_Wnd")--清除“鼠标左键点击”事件发生时回调的函数Close_Wnd()
end

function Close_Wnd(_GUIHandle)
    GUI:WndClose(_GUIHandle)
end

function dbg_text()
    dbg("当前有窗体注册事件")
end

--此示例代码运行效果为鼠标左键点击窗口无法关闭，控制台可以输出“当前有窗体注册事件”的文字。

WndUnRegistScript.png
<上一篇:设置窗体控件是否可见







