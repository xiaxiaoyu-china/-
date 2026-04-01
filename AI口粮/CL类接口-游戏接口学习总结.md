# 神途游戏客户端接口学习总结 - 游戏类接口

## 概述

游戏类接口是神途游戏客户端中用于管理游戏窗口和界面的重要接口集合，它提供了打开、关闭各种游戏窗口（如背包、角色、技能、任务等）的功能，以及窗口位置管理的方法。这些接口是游戏界面交互的核心，允许开发者实现各种用户界面操作。

### 核心功能

- 打开/关闭各种游戏窗口（背包、角色、技能、任务、邮件等）
- 窗口位置管理（保存、恢复、重置）
- 打开帮助面板和设置窗口
- 切换账号和创建角色
- 显示和隐藏特定功能面板

### 应用场景

- 游戏主界面的窗口管理
- 快捷键操作实现
- 界面导航功能
- 窗口位置记忆功能
- 游戏设置界面

## 窗口管理接口

### 1. 基础窗口操作接口

#### DoChangeAccount
**功能描述**：切换账号，返回登录方式选择界面，可切换服务器。

**语法**：
```lua
CL:DoChangeAccount()
```

**参数**：无

**返回值**：无

**支持平台**：手游（2D/3D）、端游（3D）

---

#### OnAchieveWindow
**功能描述**：打开或关闭成就窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnAchieveWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnBindPhoneWnd2
**功能描述**：打开手游端绑定手机窗口。

**语法**：
```lua
CL:OnBindPhoneWnd2()
```

**参数**：无

**返回值**：无

**支持平台**：手游（2D/3D）

---

#### OnCampaignWindow
**功能描述**：打开或关闭活动窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnCampaignWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnChatBlockBtn
**功能描述**：打开或关闭聊天黑名单窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnChatBlockBtn()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnEhanceRolePreperyWindow
**功能描述**：打开或关闭增强属性窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnEhanceRolePreperyWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnFamilyWindow
**功能描述**：打开或关闭行会（帮会）窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnFamilyWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnFriendWindow
**功能描述**：打开或关闭好友窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnFriendWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnGameMallWindow
**功能描述**：打开或关闭商城窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnGameMallWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnGameSettingWindow
**功能描述**：打开或关闭游戏设置窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnGameSettingWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnHeroListWindow
**功能描述**：打开或关闭英雄列表窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnHeroListWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnHeroPakageWindow
**功能描述**：打开或关闭英雄背包窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnHeroPakageWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnHeroPropWindow
**功能描述**：打开或关闭英雄属性窗口。如英雄窗口未打开，则先打开英雄窗口，然后转到属性页面。

**语法**：
```lua
CL:OnHeroPropWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnMailWindow
**功能描述**：打开或关闭邮件窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnMailWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnOpenCampaign
**功能描述**：打开或关闭活动窗口。功能与OnCampaignWindow相同。

**语法**：
```lua
CL:OnOpenCampaign()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnOpenPakage
**功能描述**：打开或关闭玩家的背包窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnOpenPakage()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnOpenTop
**功能描述**：打开或关闭排行榜窗口中的等级榜。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnOpenTop()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnOpenWorld
**功能描述**：打开或关闭大地图。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnOpenWorld()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnPaymentWindow
**功能描述**：打开或关闭游戏内的充值窗口。当窗口已打开时调用此函数，则会关闭窗口。

**语法**：
```lua
CL:OnPaymentWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnQuestWindow
**功能描述**：打开或关闭任务窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnQuestWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnRankWindow
**功能描述**：打开或关闭排行榜窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnRankWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnRoleWindow
**功能描述**：打开角色窗口。

**语法**：
```lua
CL:OnRoleWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnSettingWindow
**功能描述**：打开或关闭设置窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnSettingWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnShowHelp
**功能描述**：打开帮助面板。此接口功能与外框“帮助”按钮和小地图“?”按钮作用一样。

**语法**：
```lua
CL:OnShowHelp()
```

**参数**：无

**返回值**：无

**支持平台**：手游（2D）、端游（2D）

**示例代码**：
```lua
CL:OnShowHelp()
```

---

#### OnSkillWindow
**功能描述**：打开技能窗口。

**语法**：
```lua
CL:OnSkillWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnTeamBtn
**功能描述**：点击组队按钮，打开组队窗口。此函数的调用相当于点击了组队按钮。

**语法**：
```lua
CL:OnTeamBtn()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

#### OnVIPWindow
**功能描述**：打开或关闭VIP窗口。当窗口已打开时调用函数，则关闭窗口。

**语法**：
```lua
CL:OnVIPWindow()
```

**参数**：无

**返回值**：无

**支持平台**：所有平台

---

### 2. 高级窗口操作接口

#### OpenGameFormDlg
**功能描述**：根据指定的窗口名称和位置打开相应的窗口。

**语法**：
```lua
CL:OpenGameFormDlg(
    _FormDlgName,
    _XPos,
    _YPos
)
```

**参数**：
- `_FormDlgName` (string)：窗口的名称。支持的窗口名称包括：背包、大地图、人物面板、任务面板、邮件、技能、系统设置、高级仓库、主界面、任务追踪面板、VIP、排行榜、活动、成就、辅助。
- `_XPos` (int)：窗口位置横坐标，-1代表默认位置。
- `_YPos` (int)：窗口位置纵坐标，-1代表默认位置。

**返回值**：无

**支持平台**：所有平台

**示例代码**：
```lua
CL:OpenGameFormDlg("大地图", -1, -1) -- 默认位置打开大地图界面
```

---

#### OpenSkillSet
**功能描述**：打开角色面板中的指定页面。

**语法**：
```lua
CL:OpenSkillSet(
    _PageIndex
)
```

**参数**：
- `_PageIndex` (int)：角色面板中的页面索引。
  - 0：装备页面
  - 1：属性页面
  - 2：状态页面
  - 4：称号页面
  - 5：其他页面
  - 6：技能页面

**返回值**：无

**支持平台**：手游（2D/3D）、端游（3D）

**示例代码**：
```lua
CL:OpenSkillSet(5) -- 打开其他页面
```

---

#### ResetWndPos
**功能描述**：清除窗口自定义位置（回退到初始位置）。此接口可与CL:SaveWndPos、CL:RestoreWndPos组合使用。

**语法**：
```lua
CL:ResetWndPos(
    _Handle
)
```

**参数**：
- `_Handle` (int)：指定窗体控件的句柄。

**返回值**：无

**支持平台**：端游（2D）

**示例代码**：
```lua
-- 以官方45度美术资源展示（区号：3104）中的FriendWindow.lua文件为例
FriendWindow = {}
--……省略部分代码
local _GUIHandle = 0
--……省略部分代码

function FriendWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    --……省略部分代码

    _Parent = GUI:WndCreateWnd(_Parent,"BkImg1",1900000003,100,100)
    if _Parent ~= 0 then
        GUI:WndSetMoveWithLBM(_Parent) --设置窗口左键拖动属性
    end

    _GUIHandle = GUI:ButtonCreate(_Parent, "close", 4005200000, 200, 0 )
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript( _GUIHandle, RDWndBaseCL_mouse_lbUp, "FriendWindow.closeWnd")
        GUI:ButtonSetSelectRange(_GUIHandle, 120, 120)
    end

    --……省略部分代码

    FriendWindow.UIInit(_Parent)
end

FriendWindow.WndHandle = 0

function FriendWindow.UIInit(_Handle)
    FriendWindow.WndHandle = _Handle
    CL:Log("清除位置")
    -- 清除窗口上次保存位置
    CL:ResetWndPos(FriendWindow.WndHandle)
    CL:Log("恢复位置")
    -- 恢复窗口上次保存位置
    CL:RestoreWndPos(FriendWindow.WndHandle)
end

function FriendWindow.closeWnd(_Handle)
    GUI:WndClose(FriendWindow.WndHandle)
    CL:Log("保存位置")
    -- 保存窗口当前位置
    CL:SaveWndPos(FriendWindow.WndHandle)
end

FriendWindow.main()
```

---

#### RestoreWndPos
**功能描述**：恢复自定义窗口位置（一般在打开窗口时调用）。此接口可与CL:SaveWndPos组合使用，从而达到保存自定义窗口位置的效果。

**语法**：
```lua
CL:RestoreWndPos(
    _Handle
)
```

**参数**：
- `_Handle` (int)：指定窗体控件的句柄。

**返回值**：无

**支持平台**：端游（2D/3D）

**示例代码**：
```lua
-- 以官方45度美术资源展示（区号：3104）中的FriendWindow.lua文件为例
FriendWindow = {}
--……省略部分代码
local _GUIHandle = 0
--……省略部分代码

function FriendWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    --……省略部分代码

    _Parent = GUI:WndCreateWnd(_Parent,"BkImg1",1900000003,100,100)
    if _Parent ~= 0 then
        GUI:WndSetMoveWithLBM(_Parent) --设置窗口左键拖动属性
    end

    _GUIHandle = GUI:ButtonCreate(_Parent, "close", 4005200000, 200, 0 )
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript( _GUIHandle, RDWndBaseCL_mouse_lbUp, "FriendWindow.closeWnd")
        GUI:ButtonSetSelectRange(_GUIHandle, 120, 120)
    end

    --……省略部分代码

    FriendWindow.UIInit(_Parent)
end

FriendWindow.WndHandle = 0

function FriendWindow.UIInit(_Handle)
    FriendWindow.WndHandle = _Handle
    CL:Log("恢复位置")
    -- 恢复窗口上次保存位置
    CL:RestoreWndPos(FriendWindow.WndHandle)
end

function FriendWindow.closeWnd(_Handle)
    GUI:WndClose(FriendWindow.WndHandle)
    CL:Log("保存位置")
    -- 保存窗口当前位置
    CL:SaveWndPos(FriendWindow.WndHandle)
end

FriendWindow.main()
```

---

#### SaveWndPos
**功能描述**：记录自定义窗口位置（一般在关闭窗口时调用）。此接口可与CL:RestoreWndPos组合使用，从而达到保存自定义窗口位置的效果。

**语法**：
```lua
CL:SaveWndPos(
    _Handle
)
```

**参数**：
- `_Handle` (int)：指定窗体控件的句柄。

**返回值**：无

**支持平台**：端游（2D/3D）

**示例代码**：
```lua
-- 以官方45度美术资源展示（区号：3104）中的FriendWindow.lua文件为例
FriendWindow = {}
--……省略部分代码
local _GUIHandle = 0
--……省略部分代码

function FriendWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    --……省略部分代码

    _Parent = GUI:WndCreateWnd(_Parent,"BkImg1",1900000003,100,100)
    if _Parent ~= 0 then
        GUI:WndSetMoveWithLBM(_Parent) --设置窗口左键拖动属性
    end

    _GUIHandle = GUI:ButtonCreate(_Parent, "close", 4005200000, 200, 0 )
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript( _GUIHandle, RDWndBaseCL_mouse_lbUp, "FriendWindow.closeWnd")
        GUI:ButtonSetSelectRange(_GUIHandle, 120, 120)
    end

    --……省略部分代码

    FriendWindow.UIInit(_Parent)
end

FriendWindow.WndHandle = 0

function FriendWindow.UIInit(_Handle)
    FriendWindow.WndHandle = _Handle
    CL:Log("恢复位置")
    -- 恢复窗口上次保存位置
    CL:RestoreWndPos(FriendWindow.WndHandle)
end

function FriendWindow.closeWnd(_Handle)
    GUI:WndClose(FriendWindow.WndHandle)
    CL:Log("保存位置")
    -- 保存窗口当前位置
    CL:SaveWndPos(FriendWindow.WndHandle)
end

FriendWindow.main()
```

---

### 3. 其他功能接口

#### ShowCreateRoleWnd
**功能描述**：打开创建角色界面。

**语法**：
```lua
CL:ShowCreateRoleWnd()
```

**参数**：无

**返回值**：bool，打开成功则返回true，否则返回false。

**支持平台**：所有平台

---

#### ShowEnemyNearbyWnd
**功能描述**：显示和隐藏周围敌人面板。

**语法**：
```lua
CL:ShowEnemyNearbyWnd(
    _ShowWnd
)
```

**参数**：
- `_ShowWnd` (bool)：是否显示窗口，true表示显示，false表示隐藏。

**返回值**：无

**支持平台**：端游（2D/3D）

---

#### ShowStallGUI
**功能描述**：打开摆摊面板。

**语法**：
```lua
CL:ShowStallGUI()
```

**参数**：无

**返回值**：无

**支持平台**：手游（2D）、端游（2D）

**示例代码**：
```lua
CL:ShowStallGUI()
```

## 接口速查表

| 接口名 | 功能描述 | 适用平台 |
|--------|----------|----------|
| DoChangeAccount | 切换账号，返回登录方式选择界面 | 手游（2D/3D）、端游（3D） |
| OnAchieveWindow | 打开或关闭成就窗口 | 所有平台 |
| OnBindPhoneWnd2 | 打开手机绑定窗口 | 手游（2D/3D） |
| OnCampaignWindow | 打开或关闭活动窗口 | 所有平台 |
| OnChatBlockBtn | 打开聊天黑名单窗口 | 所有平台 |
| OnEhanceRolePreperyWindow | 打开或关闭增强属性窗口 | 所有平台 |
| OnFamilyWindow | 打开或关闭行会窗口 | 所有平台 |
| OnFriendWindow | 打开或关闭好友窗口 | 所有平台 |
| OnGameMallWindow | 打开或关闭商城窗口 | 所有平台 |
| OnGameSettingWindow | 打开或关闭游戏设置窗口 | 所有平台 |
| OnHeroListWindow | 打开或关闭英雄列表窗口 | 所有平台 |
| OnHeroPakageWindow | 打开或关闭英雄背包窗口 | 所有平台 |
| OnHeroPropWindow | 打开或关闭英雄属性窗口 | 所有平台 |
| OnMailWindow | 打开或关闭邮件窗口 | 所有平台 |
| OnOpenCampaign | 打开或关闭活动窗口 | 所有平台 |
| OnOpenPakage | 打开背包窗口 | 所有平台 |
| OnOpenTop | 打开或关闭等级榜 | 所有平台 |
| OnOpenWorld | 打开或关闭大地图 | 所有平台 |
| OnPaymentWindow | 打开或关闭充值窗口 | 所有平台 |
| OnQuestWindow | 打开或关闭任务窗口 | 所有平台 |
| OnRankWindow | 打开或关闭排行榜 | 所有平台 |
| OnRoleWindow | 打开角色窗口 | 所有平台 |
| OnSettingWindow | 打开或关闭设置窗口 | 所有平台 |
| OnShowHelp | 打开帮助面板 | 手游（2D）、端游（2D） |
| OnSkillWindow | 打开技能窗口 | 所有平台 |
| OnTeamBtn | 点击组队按钮 | 所有平台 |
| OnVIPWindow | 打开或关闭VIP窗口 | 所有平台 |
| OpenGameFormDlg | 打开指定的游戏内窗口 | 所有平台 |
| OpenSkillSet | 打开角色面板中的指定页面 | 手游（2D/3D）、端游（3D） |
| ResetWndPos | 清除窗口自定义位置 | 端游（2D） |
| RestoreWndPos | 恢复自定义窗口位置 | 端游（2D/3D） |
| SaveWndPos | 记录自定义窗口位置 | 端游（2D/3D） |
| ShowCreateRoleWnd | 打开创建角色界面 | 所有平台 |
| ShowEnemyNearbyWnd | 显示和隐藏周围敌人面板 | 端游（2D/3D） |
| ShowStallGUI | 打开摆摊面板 | 手游（2D）、端游（2D） |

## 学习建议

### 1. 基础学习路径

1. 学习基础窗口操作接口，如打开/关闭各种游戏窗口
2. 掌握窗口位置管理方法（保存、恢复、重置）
3. 了解如何打开特定页面和功能面板
4. 学习高级窗口操作接口，如OpenGameFormDlg
5. 实践创建简单的窗口管理功能

### 2. 进阶学习建议

1. 学习如何组合使用多个窗口管理接口
2. 掌握窗口位置记忆功能的实现
3. 了解窗口状态管理和事件处理
4. 学习如何优化窗口操作的性能
5. 实践创建复杂的界面导航功能

### 3. 最佳实践

1. 在打开窗口前检查是否已打开，避免重复打开
2. 合理使用窗口位置管理功能，提升用户体验
3. 为窗口操作添加适当的反馈和错误处理
4. 优化窗口显示和隐藏的动画效果
5. 测试在不同平台和分辨率下的窗口显示效果

通过以上学习总结，您可以全面掌握神途游戏客户端中游戏类接口的使用方法，开发出功能完善、用户友好的游戏界面。游戏类接口作为游戏界面交互的核心，正确使用和优化将大大提升用户体验。