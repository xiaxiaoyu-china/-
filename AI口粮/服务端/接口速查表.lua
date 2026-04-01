接口速查表
更新时间：2026-02-13 20:39:00
本页汇总所有可用的接口，并按基础类别分类。

您可在此页面按Ctrl+F进行页面内搜索，定位到想要的结果，点击接口名可快速跳转至详情说明页。

系统	
AccountName	获取玩家的账号名
AccountNameEx	获取玩家的账号名（扩展）
AddScheduled	给服务器添加计划任务
AddTimer	给对象添加定时器
AddTimerEx	给对象添加定时器（扩展）
AddTrigger	给对象添加触发器
AllTimers	返回对象所有定时器
Base64Decode	将字符串进行BASE64解码
Base64Encode	将字符串进行BASE64编码
ClearTimer	清除对象的所有定时器
ClearTrigger	移除所有触发器
Debug	打印调试日志
DisaFbdLogin	解除禁止登录
DisableScheduled	清除服务器计划任务
DisableTimer	取消对象的定时器
Error	打印错误日志
GBKToUTF8	GBK转UTF8编码
GMLevel	获取玩家的GM等级
GSRunScript	让GS里所有人执行一段脚本
GSTriggerScript	让所有GS去执行一段脚本
GenRandom	生成随机数
GenTimerId	自动生成对象的定时器ID
GenUniqueID	生成系统唯一标识符
GetAgentId	获取代理ID
GetAllDBVars	获取所有的数据库变量
GetAllDays	获取所有的天数
GetAllMonths	获取所有的月数
GetAllNotInGamePlayerName	获取服务器上所有不在线玩家的名字
GetAllOnlinePlayerNames	获取当前服务器所有在线玩家列表
GetAllPlayerCount	获取服务器所有人数
GetAllPlayerNames	获取当前服务器所有在线玩家列表（包括离线挂机的玩家）
GetAllTime	获取所有的秒数
GetAllTimeMs	获取所有毫秒数
GetAllWeeks	获取所有的周数
GetAllYears	获取所有的年数
GetConstVar	读取系统常量表
GetCurScriptName	获取当前正在运行的脚本文件名
GetDBDayInt	获取数据库上设置的数值型天变量
GetDBDayStr	获取数据库上设置的字符型天变量
GetDBNum	获取数据库中存储的数值型变量
GetDBNumMergeType	获取数据库变量合区类型
GetDBStr	获取数据库中存储的字符型变量
GetDay	获取指定时间值的天
GetEngineType	获取引擎类型
GetGSVer	获得游戏服务器版本号
GetGroupId	获取组ID
GetGroupName	获取组Name
GetLuaPerformance	查询所有脚本的性能参数
GetMonth	获取指定时间值的月
GetPlatformInfo	获取玩家第三方登录平台信息
GetPlayerCount	获取服务器上所有玩家数量
GetSvrId	获取服务器ID
GetSvrRunTime	获取服务器运行总时间
GetTickCount	获取系统的时钟嘀答数
GetURL	获取一个URL的内容
GetWeek	获取指定时间值的周
GetYear	获取指定时间值的年
GetZoneId	获取区ID
GetZoneKey	获取区密钥
GetZoneName	获取区服名称
GetZoneType	获取区服类型
Guid2Number	GUID字符串转为十进制字符串
HasScheduled	判断服务器是否有计划任务
HasTimer	判断对象是否有定时器
HasTrigger	判断对象是否拥有某触发器
IO_AppendFile	追加文本到文本文件
IO_CheckTextInFile	判断文本是否为文本文件中的某行
IO_CreateTextFile	创建文本文件
IO_DeleteDir	删除目录
IO_DeleteDirEx	递归删除目录及其子目录与文件
IO_DeleteFile	删除文件
IO_DirExists	判断文件目录是否存在
IO_EmptyTextFile	清空文本文件内容
IO_FileCTime	获取文件创建时间
IO_FileExists	判断文件是否存在
IO_FileList	获得指定目录中所有txt文件名
IO_FileMTime	获取文件修改时间
IO_FileSize	返回文件大小
IO_ForceDir	创建文件目录
IO_GetFileString	读取文本文件所有内容
IO_GetFileText	读取文本文件内容
IO_GetLuaPath	获取服务器LUA文件夹的绝对路径
IO_SetFileText	设置文本文件内容
IO_TextFileCheckLine	在文本中检查内容是否存在
IO_TextFileDeleteLine	从文本文件中删除指定行
IO_TextFileDeleteLineStr	从文本文件中删除指定内容的行
IO_TextFileFuzzyCheckLine	检查文本文件是否包含指定文本内容
IO_TextFileGetLine	从文本文件中取出指定行
IO_TextFileInsertLine	在文本文件中插入内容
IO_TextFileRndGetLine	从文本文件中取出随机行
IO_TextFileTotalLine	获得文本内容的总行数
InputDlg	通知客户端显示输入框
IsBanString	判断字符串是不是敏感词
IsInCollection	查找是否存在指定字符串
IsServerCanCreateRole	获取全服是否可以创建角色
IsTestServer	是否是测试区
Log	上传角色的物品操作行程日志
LogDetail	上传角色的物品操作行程日志
LogDetailWithId	上传角色的物品操作行程日志
LogWithId	上传角色的物品操作行程日志
MD5	字符串MD5加密
Mod	取模运算
MsgBox	通知客户端显示消息框
Now	获取当前时间
Number2Guid	将数字表示的GUID转为引擎用GUID
Player_IsGM	判断玩家是否是GM
Player_RunGMCmd	让玩家执行GM指令
PostDBEvt	投递数据库事件
PostURL	获取一个URL以post方式投递的数据
PostURLEx	获取一个URL以post方式投递的数据
Print	打印信息日志
ReloadConfig	重载系统表
ReloadGMList	重载GM表
ReloadScript	重载某类型脚本
RemoveTrigger	移除指定的触发器
RunClientScript	运行指定客户端脚本
ScriptFuncToPlayer	给玩家执行一段脚本中的函数
ScriptTextToPlayer	给玩家执行一段脚本
SendCaptchaReq	发送验证码请求
SendSpeakerMsg	发送喇叭消息
ServerCreateRoleSwitch	控制全服是否可以创建角色
SetDBDayInt	在数据库上设置数值型天变量
SetDBDayStr	在数据库上设置字符型天变量
SetDBMerge	设置数据表合区类型
SetDBNum	设置数据库中存储数值型变量
SetDBNumEx	设置数据库中存储数值型变量（扩展）
SetDBStr	设置数据库中存储字符型变量
SetDBStrEx	设置数据库中存储字符型变量（扩展）
SetFbdLogin	禁止登录
SetFormAllowFunc	设置表单的允许回调函数列表
SetLog	设置日志开关
SetPlayerTopLevel	设置服务器开放等级上限
SetScriptTimeout	设置当前正在运行的脚本死循环判断时间
SetTriggerFilters	设置触发器类型中判断对象的过滤器
ShowForm	通知客户端显示表单
ShowFormWithContent	通知客户端显示表单
Str2Time	字符串时间转换数值型时间
Str2Zip	ZIP压缩
StrSplit	字符串分割函数
SysCenterMsg	发送客户端中部消息（可跨GS调用）
SysGuildMsg	发送客户端底部行会消息
SysMapMsg	发送客户端底部地图消息
SysMsg_SendAllPlayerScrollMsg	对所有玩家发送滚动消息
SysMsg_SendAllPlayerScrollMsgByClientType	根据客户端类型发送所有角色滚动通知
SysMsg_SendBoardMsg	发送客户端面板消息
SysMsg_SendBottomColor	发送客户端底部消息
SysMsg_SendBroadcastColor	发送客户端底部广播消息
SysMsg_SendBroadcastColorByClientType	发送客户端底部广播消息
SysMsg_SendBroadcastMsg	发送客户端底部广播消息
SysMsg_SendCenterMsg	发送客户端中部消息
SysMsg_SendCenterMsgByClientType	在指定客户端类型中发送客户端中部消息
SysMsg_SendGuildMsg	发送客户端底部行会消息
SysMsg_SendInputDlg	通知客户端显示输入框
SysMsg_SendMapMsg	发送客户端底部地图消息
SysMsg_SendMsgDlg	通知客户端显示消息框
SysMsg_SendPromptMsg	发送客户端底部提示消息
SysMsg_SendRoleTalk	发送角色当前说话通知
SysMsg_SendScrollMsg	对指定角色发送滚动消息
SysMsg_SendTipsMsg	发送客户端左上角消息
SysMsg_SendTopColor	发送客户端顶部广播消息
SysMsg_SendTopColorByClientType	发送客户端顶部广播消息
SysMsg_SendTopMsg	发送客户端顶部消息
SysMsg_SendTriggerMsg	发送客户端底部触发消息
SysMsg_SendWarnMsg	发送客户端底部警告消息
SysMsg_SendWebMsg	通知客户端显示Web页面框
SysMsg_SendWebPage	通知客户端打开网页
SysPromptMsg	发送客户端底部提示消息
SysSpeakMsg	发送客户端喇叭消息
SysTipsMsg	发送客户端左上角消息
SysTopMsg	发送客户端顶部消息
SysTriggerMsg	发送客户端底部触发消息
SysWarnMsg	发送客户端底部警告消息
Time2Str	数值型时间转换字符串时间
TimeDiff	获取字符串时间的差值
TimeDiffEx	获取字符串时间的差值的绝对值
UTF8ToGBK	UTF8编码转GBK编码
UUIDToGUID	获取玩家或英雄的GUID
UrlDecode	将字符串进行URL解码
UrlEncode	将字符串进行URL编码
UserID	获取玩家的账号ID
Warn	打印警告日志
Zip2Str	ZIP解压
json.decode	JSON字符串转换成lua对象
json.encode	lua对象转换为json字符串
number_arithmetic	int64类型数据的四则运算
number_logic	int64类型数据的逻辑运算
string.chr	ASCII转换为字符
string.indexOf	查找子字符串
string.left	从字符串左边截取字符串
string.mid	从字符串中截取字符串
string.ord	返回字符的ASCII码
string.replace	字符串替换
string.right	从字符串右边截取字符串
string.split	字符串分割
string.trim	移除字符串首尾空格
对象通用	
AddAgentInt	增加代理级游戏整型变量值
DelAgentInt	删除代理级游戏整型变量
DelAgentStr	删除代理级游戏字符串变量
DelayCall	给指定对象添加延时回调
Distance	获取对象间的距离
GUIDType	根据GUID获取对象的类型
GetAgentInt	获取代理级游戏整型变量
GetAgentStr	获取代理级游戏字符串变量
GetDayInt	获取对象实体上设置的数值型天变量
GetDayIntExpireTime	取得对象实体上设置的数值型天变量的过期剩余时间
GetDayStr	获取对象实体上设置的字符型天变量
GetDayStrExpireTime	取得对象实体上设置的字符串型天变量的过期剩余时间
GetInt	获取对象实体上存储的整型数值变量
GetStr	获取对象实体上存储的字符型变量
GetTempInt	获取对象实体上存储的整型数值变量
GetTempStr	获取对象实体上存储的字符型变量
GetWeekInt	获取对象实体上设置的数值型周变量
GetWeekStr	获取对象实体上设置的字符型周变量
Guid2Id	获取对象在配置表中的ID
Guid2Name	根据GUID获取对象的名称
Id2KeyName	获取对象的索引名
KeyName	获取对象的索引名
KeyName2Id	获取对象的ID
KeyName2Name	获取对象的名称
MapGuid	获取对象当前地图的GUID
Name	获取对象的Name
NotifyVar	向客户端发送变量通知
SetAgentInt	设置代理级游戏整型变量
SetAgentStr	设置代理级游戏字符串变量
SetBeginTimeEveryday	设置天变量和周变量的每天开始时间
SetDayInt	在对象实体上设置数值型天变量
SetDayIntEx	在对象实体上设置数值型天变量（扩展）
SetDayStr	在对象实体上设置字符型天变量
SetDayStrEx	在对象实体上设置字符型天变量（扩展）
SetInt	在对象实体上存储整型数值变量
SetStr	在对象实体上存储字符型变量
SetTempInt	在对象实体上存储整型数值变量
SetTempStr	在对象实体上存储字符型变量
SetWeekInt	在对象实体上设置数值型周变量
SetWeekIntEx	在对象实体上设置数值型周变量（扩展）
SetWeekIntEx2	在对象实体上设置数值型周变量（扩展2）
SetWeekStr	在对象实体上设置字符型周变量
SetWeekStrEx	在对象实体上设置字符型周变量（扩展）
SetWeekStrEx2	在对象实体上设置字符型周变量（扩展2）
SubAgentInt	减少代理级游戏整型变量值
VarList	获取对象的所有自定义变量列表
X	获取对象的X坐标
Y	获取对象的Y坐标
玩家	
Achievement	获取角色的成就
AddAvataBuff	给角色添加变身BUFF
AddBindGold	给角色添加绑定金币
AddBindIngot	给角色添加绑定元宝
AddBuff	给角色添加BUFF
AddBuff2	给角色添加可指定技能的BUFF
AddBuffEx	给角色添加BUFF（扩展）
AddBuffWithAttrs	给角色添加可设置实例属性拓展值的BUFF
AddBuffWithAttrsEx	给角色添加可设置实例属性拓展值的BUFF（扩展）
AddBuffWithAttrsEx2	给角色添加BUFF（扩展2）
AddBuffWithAttrsLimit	给角色添加持续时间不超过最大存在时限的BUFF
AddBuffWithParams	根据填写的BUFF参数类型添加BUFF
AddBuffWithParamsEx	根据填写的BUFF参数类型添加BUFF（扩展）
AddDeposit	给角色添加仓库金币
AddExp	给角色添加经验
AddGold	给角色添加非绑定金币
AddHeroRage	增加英雄的怒气值
AddHp	增加角色的生命值（HP值）
AddIngot	给角色添加非绑定元宝
AddInnerForce	增加角色内功值
AddIntegral	给角色添加积分
AddMp	增加角色MP
AddSkill	给角色添加技能
AddTitle	给玩家添加称号
AddTitleEx	给玩家添加称号（扩展）
AllServantBetry	玩家所有宠物背叛
Amulet	获取玩家当前装备的法宝（守护）
ApplyEquipEx	让玩家穿装备
ApplyTitle	给玩家使用称号
Armor	获取玩家当前装备的衣服
Attr	获取角色属性值
Brawn	获取角色的腕力
BuffKey2ID	获取BUFF的ID
BuffStack	获取角色指定BUFF的堆叠层数
Buff_DataRow	获取BUFF的配置表结构
Camp	获取角色的阵营
CanAttack	判断目标角色是否可被攻击
CanAttackEx	判断目标是否可攻击
CanFixEquip	判断某件装备能否被修理
ClearDynamicAttrs	清除角色或物品的动态属性
ClearTopList	清除排行榜
ClearTopListByType	按排行榜类型清除排行榜
CopyHero	生成英雄的分身
CreateHeroForPlayer	创建英雄
DelAllSkill	删除玩家所有技能
DelBuff	删除角色BUFF
DelSkill	删除角色的某个技能
DelUnmatchedSkill	删除玩家非本职业技能
DelUnmatchedSkillEx	删除玩家非本职业技能（扩展）
DeleteHeroForPlayer	删除英雄
DeleteInt	删除对象实体上的整型数值变量
DeleteStr	删除对象实体上的字符型变量
DestroyDummy	清除假人
Dir	获取角色的方向
DisableAutoReply	取消玩家自动回复
DisableEquip	让玩家脱下装备
DoRepelWithSkill	根据技能表配置直接释放技能击退效果
DummyLockTarget	指定假人锁定敌人
DummyMove	让假人移动到指定位置
DummyRunOneStep	假人向指定坐标的方向跑动一步
DummyWalkOneStep	假人向指定坐标的方向移动一步
Energy	获取角色的活力
EquipWeight	获取角色的装备负重
Equip_GetExtNum	获取装备当前扩展属性条目数
Equip_GetExtProp	获取装备的某条扩展属性
Equip_GetIdentifyNum	获取装备当前鉴定属性条目数
Equip_GetIdentifyProp	获取装备的某条鉴定属性
Equip_GetLuckCurse	获取装备的幸运诅咒值
Equip_GetQualProp	获取装备的某条品质属性
Equip_GetRefineLevel	获取装备精炼等级
Equip_GetRefineProp	获取装备的精炼属性
Equip_SetExtProp	设置装备的某条扩展属性
Equip_SetIdentifyProp	设置装备的鉴定属性
Equip_SetLuckCurse	设置装备的幸运诅咒值
Equip_SetQualProp	设置装备的某条品质属性
Equip_SetRefineLevel	设置装备的精炼等级
Equip_SetRefineProp	设置装备的精炼属性
FlushPlayerData	将玩家/英雄数据刷新到数据库服务器
Gem	获取玩家当前装备的宝石
GenDummy	生成假人
GenDummyEx	生成假人（扩展）
GenHeroForPlayer	载入玩家的某个英雄
GenRandomName	生成一个随机名字
GenTeam	创建队伍
Gender	获取角色的性别
GetAccountRoleInfo	获取当前区服游戏账号下的所有角色信息
GetActiveCount	获取玩家本次登录的活跃点数
GetActiveCountToday	获取玩家当日的活跃点数
GetAllInts	取得对象实体上存储的所有整型数值变量
GetAllSkills	获取角色所有技能的ID
GetAllStrs	取得对象实体上存储的所有字符型变量
GetBindGold	获取角色绑定金币数量
GetBindGoldStr	获取角色绑定金币数量（字符串版）
GetBindIngot	获取角色绑定元宝数量
GetBuffAtt1	获取BUFF的Att1属性的拓展值
GetBuffHost	获取角色身上Buff的释放者
GetBuffInterval	获取角色BUFF触发时间间隔
GetBuffList	获取指定角色的BUFF列表
GetBuffTime	获取BUFF剩余时间
GetBuffWithAttrs	获取角色BUFF的实例属性拓展值列表
GetCopyWho	获取分身的真身的GUID
GetCurrentHero	获取玩家召唤的英雄的GUID
GetDeposit	获取角色仓库金币数量
GetDummyList	获取玩家的假人列表
GetDummyLord	根据假人的GUID获取其主人的GUID
GetDummyNum	获取玩家的假人数量
GetDynamicAttr	获取对象的动态属性
GetEquipSuitCount	获取角色身上指定套装中装备数量
GetEquipSuitCountEx	获取角色身上指定套装中装备数量（扩展）
GetExp	获取角色经验值
GetExpStr	获取角色经验值（字符串版）
GetGold	获取角色非绑定金币数量
GetGoldStr	获取角色非绑定金币数量（字符串版）
GetHeroCopyNum	获得英雄的分身数量
GetHeroLord	获取英雄主人的GUID
GetHeroRage	获取英雄的怒气值
GetHeroState	获取英雄的状态（适用脚本控制英雄AI）
GetHeroStatus	获取英雄的状态
GetIngot	获取角色非绑定元宝数量
GetInnerForce	获取角色内功值
GetInnerForceExp	获取角色内功经验值
GetIntegral	获取角色积分数量
GetItemGold	获取金币类型物品的金币数量
GetItemsByKeys	获取玩家物品的GUID列表
GetJoinHitTarget	获取英雄合击的目标的GUID
GetLinkageBySkillId	根据技能ID获取所属的技能链编号
GetLinkageBySkillKeyName	根据技能索引名获取所属的技能链编号
GetPlayerCurrentHeroList	获取玩家已经载入的英雄列表
GetPlayerGloryState	获取玩家成就状态
GetPlayerHeroList	获取玩家所有的英雄列表
GetPlayerUUID	获取玩家或英雄的UUID
GetRolePropBeforeCalc	获取角色属性参与倍数计算前的值
GetServantBetrayLeftTime	获取玩家某个宝宝背叛剩余时间
GetServantState	获取宠物的状态
GetSkillByLinkage	获取角色拥有的技能
GetSkillExp	获取玩家技能的熟练度
GetSuitItemListByID	根据套装ID获取套装装备列表ID
GetTitle	获取玩家当前使用的称号
GetTopList	获取指定类型的排行榜数据
GetTopListGuids	查询前多少名等级的玩家信息
GetTotalBill	获取玩家充值元宝数量
GetVipLevel	获取玩家的VIP等级
GetVipLevelRemain	获取VIP剩余时间
GetVipRemain	获取VIP功能剩余时间
Hair	获取角色的发型编号
HairColor	获取角色的头发颜色
HardwareCode	获取玩家的硬件码
HasBuff	角色是否拥有指定BUFF
HasSkill	判断角色是否拥有指定技能
HasTitle	玩家是否拥有指定称号
HasZhenshi	判断玩家是否处于珍视状态
Head	获取角色的头像编号
Helmet	获取玩家当前装备的头盔
HeroGetMaster	获取英雄主人的GUID
HeroTakeOnEquipFromMasterBag	让英雄穿戴主人背包中的装备
Hero_DataRow	获取英雄的配置表结构
Hero_GetLordSpecifiedTarget	获取主人给英雄指定的攻击目标
Hero_GetProtectPos	获取英雄保护的位置
Hero_Hit	英雄使用指定技能攻击指定目标
Hero_SetInvDetect	设置英雄的反隐侦测类型
Hero_SetInvDetectRange	设置英雄的反隐侦测范围
Hero_SetLordSpecifiedTarget	给英雄设置主人指定的攻击目标
Hp	获取角色的生命值（HP值）
HpPoint	获取角色的生命值属性点数（HP属性点数）
InnerForceLevelUp	提升角色内功等级
InnerForce_DataRow	获取内功的配置表结构
Ip	获取玩家的IP字符串
IsHeroCopy	判断英雄是否为分身
Job	获取角色的职业
JuJu	获取玩家当前装备的符咒
KickByHardwareCode	通过玩家硬件码踢出玩家
KickByIp	通过玩家IP地址踢出玩家
KickByName	通过玩家角色名或账号名踢出玩家
Kill	立即杀死角色
KillEx	立即杀死角色（扩展）
LastAtkTime	获取玩家的最后攻击时间TICK值
LastKeepPkgTime	获取玩家的最后心跳包时间
LastLogoutTime	获取玩家的最后退出时间
LastMoveTime	获取玩家的最后移动时的TICK值
LastTalkTime	获取玩家的最后聊天时间TICK值
LeaveTeam	离开队伍
Level	获取角色的等级
LoadPlayer	引擎加载玩家
LoadPlayerEx	引擎加载玩家（扩展）
LockSwitch	获取角色的安全锁开关状态
LoginTime	获取玩家的登录时间
LuckCurse	获取角色的幸运诅咒值
MagAtk	获取角色的魔攻上限/下限值
MagAtkPoint	获取角色的魔法攻击属性点数
MagDef	获取角色的魔防上限/下限值
MagDefPoint	获取角色的魔法防御属性点数
Medal	获取玩家当前装备的勋章
Meritor	获取角色的功勋
Mount	获取玩家当前装备的坐骑
Mp	获取角色的魔法值（MP值）
MpPoint	获取角色的魔法值属性点数（MP属性点数）
Name2Guid	根据玩家的角色名获取该玩家的GUID
Necklace	获取玩家当前装备的项链
NewStall_GetStallInfo	获取摊位详细信息
OnGloryTrigger	产生一个成就的触发事件
OnlineTime	获取玩家在线时间
OnlineTimeEx	获取玩家在线时间（扩展）
OnlineTimeWithoutOfflineTime	获取玩家在线时间（不包含离线挂机时间）
OnlineTimeWithoutOfflineTimeEx	获取玩家在线时间（不包含离线挂机时间）（扩展）
PhyAtk	获取角色的物攻上限/下限值
PhyAtkPoint	获取角色的物理攻击属性点数
PhyDef	获取角色的物防上限/下限值
PhyDefPoint	获取角色的物理防御属性点数
Pk	获取角色的PK值
Player_AddEffect	设置玩家特效
Player_AddExp	给角色添加经验
Player_AddExpStr	给角色添加经验（字符串版）
Player_AddGold	给角色添加金币
Player_AddGoldStr	给角色添加金币（字符串版）
Player_AddIngot	给角色添加元宝
Player_AddInnerForceExp	给角色添加内功经验
Player_AddIntegral	给角色添加积分
Player_Catch	给玩家生成一个宠物
Player_CatchEx	给玩家生成一个宠物（扩展）
Player_CatchEx2	给玩家生成一个宠物（扩展2）
Player_ChangeAttackMode	设置角色攻击模式
Player_ChangeName	修改玩家角色名
Player_ChangeNameEx	修改玩家角色名（扩展）
Player_Chat	以指定角色身份进行喊话
Player_DeleteEmptyMails	删除玩家空邮件
Player_DisableForbidChannelTalk	取消玩家在某个频道的禁言
Player_DisableForbidTalk	取消玩家禁言
Player_DisableForbidTalkType	取消玩家禁言类型
Player_DragFromRole	将目标玩家拉到自己面前
Player_DropItemEx	强制玩家丢弃物品（扩展）
Player_FixEquip	修理玩家所有装备
Player_FixSingleEquip	修理玩家指定装备
Player_ForceAddExp	强制添加玩家经验
Player_GetAllEquipment	获取玩家所有装备栏的装备
Player_GetAllSuits	获取玩家当前所有套装对应的装备列表
Player_GetAllTitles	获取玩家所有称号
Player_GetAttackMode	获取玩家的攻击模式
Player_GetBeauty	获取玩家的魅力值
Player_GetCreateTime	根据玩家的GUID获取角色的创建时间
Player_GetEquipGuid	获取玩家某装备栏中装备的物品的GUID
Player_GetEquipName	获取玩家某装备栏中装备的物品的名称
Player_GetExpLimit	获取玩家当前等级经验上限
Player_GetItemGuid	获取玩家某装备位上的物品的GUID
Player_GetOnlineTimeOfDay	获取玩家当天总在线时间
Player_GetPowerHitCount	获取玩家多少次普攻后可以触发重击
Player_GetQuestStatusByNpc	获取玩家在指定任务NPC处的任务状态
Player_GetServantCount	获取玩家的宠物数量
Player_GetServantLevel	获取玩家召唤宠物的等级
Player_GetServantList	获取玩家的宠物的GUID列表
Player_GetShieldInterval	获取玩家上次开盾后距离当前时间间隔
Player_GetSkillCD	获取角色技能CD时间
Player_GetSkillCDEx	获取角色正在冷却中的技能CD时间
Player_GetTeamGuid	获取玩家队伍的GUID
Player_GetTeamList	获取玩家所有队友的GUID
Player_GoHome	让玩家回城
Player_GuildRunScript	让玩家行会里所有人执行一段脚本
Player_HasTeam	判断玩家是否处于组队状态
Player_IsAttackModeLock	判断玩家攻击模式是否被锁定
Player_IsCanAttack	判断玩家是否可使用物理攻击
Player_IsCanMove	判断玩家是否可以移动
Player_IsCanNpcTalk	判断玩家是否能与NPC交互
Player_IsCanTalk	判断玩家是否能说话
Player_IsCanTurn	判断玩家是否可以转向
Player_IsCanUseItem	判断玩家是否可使用物品
Player_IsCloudClient	获取玩家是否是云挂机状态
Player_IsCompleteQuest	玩家是否完成指定任务
Player_IsDie	判断玩家是否死亡
Player_IsDoingProgressBar	判断玩家是否在读条中
Player_IsForbiddenChat	根据玩家名字判断玩家是否被禁言
Player_IsGoldEnough	判断角色的金币数量是否足够
Player_IsGoldStrEnough	判断角色的金币数量是否足够（字符串版）
Player_IsInGS	判断玩家是否在本GS上
Player_IsIngotEnough	判断角色的元宝数量是否足够
Player_IsIntegralEnough	判断角色的积分数量是否足够
Player_IsOnline	判断玩家是否在线
Player_IsPlayer	根据GUID判断指定角色是否为玩家
Player_IsServantNear	判断玩家的宠物是否在附近
Player_IsTeamLeader	判断玩家是否为队长
Player_ItemRequest	批量添加/删除玩家物品
Player_JumpToRole	跳转到目标玩家面前
Player_KillServant	杀死玩家所有宠物
Player_MapMove	让玩家跳转到指定地图随机坐标
Player_MapMoveXY	让玩家跳转到指定地图指定坐标
Player_MapMoveXYEx	让玩家跳转到指定地图指定坐标范围内的随机点
Player_NpcMove	跳转到指定NPC附近
Player_PickupAllByRadius	玩家拾取可捡物品
Player_PickupAllByRadiusWithCallback	玩家根据回调函数拾取指定的可捡物品
Player_PickupAllByRadiusWithKeyName	玩家拾取指定的可捡物品
Player_PickupAllByRadiusWithKeyNameEx	玩家拾取指定的可捡物品（扩展）
Player_Relive	让玩家或者假人复活
Player_RunScript	让玩家执行一段脚本
Player_SetAlias	设置玩家的称谓
Player_SetAttackModeLock	设置是否允许玩家改变攻击模式
Player_SetBeauty	设置玩家的魅力值
Player_SetForbidChannelTalk	禁止玩家在某个频道发言
Player_SetForbidTalk	设置玩家禁言的原因和时间
Player_SetForbidTalkType	设置玩家禁言的原因、类型和时间
Player_SetGhost	设置玩家是否进入幽灵模式
Player_SetGhostEx	设置角色是否进入幽灵模式（扩展）
Player_SetInvincible	设置玩家是否进入无敌模式
Player_SetNameColor	设置玩家名字的颜色
Player_SetPowerHitCount	设置玩家多少次普攻后可以触发重击
Player_SetServantLevel	设置召唤宠物的等级
Player_SetShieldInterval	设置玩家上次开盾后距离当前时间间隔
Player_SetSkillCD	设置角色技能CD时间
Player_SetSkillCDEx	设置角色技能CD时间（扩展）
Player_SpellGrid	玩家对目标逻辑格释放技能
Player_SpellPosX	获取玩家或英雄释放技能的中心点的X坐标
Player_SpellPosY	获取玩家或英雄释放技能的中心点的Y坐标
Player_SpellTarget	玩家对目标角色释放技能
Player_SpellTarget2	玩家对目标角色释放技能（新）
Player_SubExp	扣除角色经验
Player_SubExpStr	扣除角色经验（字符串版）
Player_SubGold	扣除角色金币
Player_SubGoldStr	扣除角色金币（字符串版）
Player_SubIngot	扣除角色元宝
Player_SubInnerForceExp	扣除角色内功经验
Player_SubIntegral	扣除角色积分
Player_Summon	玩家召唤宠物
Player_SwapBagItems	玩家间交换包裹中的物品
Player_Taming	玩家捕捉怪物作为宠物
Player_TamingEx	玩家捕捉宝宝
Player_TeamRunScript	让玩家队伍里所有人执行一段脚本
Player_TransactionRequest	批量操作(添加/删除)玩家的物品、金币和元宝
Prestige	获取角色的声望
ProgressBarStart	让玩家开启进度条
ProgressBarStop	让玩家取消读取进度条
ReliveMapGuid	获取玩家复活地图的GUID
RelivePoint	获取玩家离开复活区前所在的坐标点
RemainPoint	获取角色的剩余属性点数
RemoveSelfNotifyAttrs	移除通知到客户端的玩家属性
RemoveTitle	移除玩家称号
Ride	玩家上马
Ring	获取玩家当前装备的戒指
RoleRankTop	获取指定属性排名第一的在线角色的GUID
Role_AddSkillChannel	对目标添加通道技能
Role_DataRow	根据职业和等级取得角色的配置表结构
Role_GetAttackRole	获取最后一次角色攻击的对象GUID
Role_GetBeAttackRole	获取指定角色最后一次攻击对象的GUID
Role_GetForbiddenSkillLinkage	获取对象禁用技能链
Role_GetLuckWithDef	获取指定角色是否开启幸运影响防御的功能
Role_GetSkillLinkageDamageType	获取角色技能链对应的伤害类型表
Role_HasFireSkill	判断角色是否有预存技能
Role_HasFireSkillWithLinkage	判断角色是否有指定的预存技能链
Role_IsAlive	判断角色是否存活
Role_SetForbiddenSkillLinkage	设置对象禁用技能链
Role_SetGhost	设置角色是否进入幽灵模式
Role_SetLuckWithDef	设置指定角色是否开启幸运影响防御的功能
Role_SetSkillLinkageDamageType	设置角色技能链对应的伤害类型表
SendRoleHPNtf	向周围通知角色血量
SendRoleInnerForceNtf	向周围通知角色内功数值
ServantBetry	玩家某个宠物背叛
Servant_GetEnemyMode	获取单个宠物的遇敌模式
Servant_IsSummon	判断宠物是否为玩家召唤的宠物
Servant_SetEnemyMode	设置单个宠物的遇敌模式
SetAchievement	设置角色成就
SetAttrLimit	设置角色全局属性的上/下限
SetAutoReply	设置玩家自动回复的内容
SetBrawn	设置角色腕力
SetBuffStack	设置角色指定BUFF的堆叠层数
SetBuffTime	设置指定BUFF的剩余时间
SetBuffWithAttrs	设置角色BUFF的attr属性
SetCamp	设置角色的阵营
SetCheckModePct	设置严格模式下误差百分比
SetCustomEquipSites	为自定义装备子类型设置多个自定义装备位
SetDedicatedDropChance	设置装备位独立爆率
SetDir	设置角色方向
SetDirEx	设置角色方向（扩展）
SetDummyAIOption	设置假人的AI配置
SetDummyDefaultAIOption	设置假人的默认AI配置
SetDummyDefaultSkillAI	设置假人的默认技能AI策略
SetDummySkillAI	设置假人的技能AI策略
SetDummyStandalone	设置是否允许假人独立存在
SetDummyState	设置假人状态
SetDynamicAttr	设置对象的动态属性
SetDynamicAttrBatch	批量设置玩家动态属性
SetEnergy	设置角色活力
SetEquipWeight	设置角色装备负重
SetGender	设置角色性别
SetHair	设置角色的发型
SetHairColor	设置角色的头发颜色
SetHead	设置角色的头像
SetHeroRage	设置英雄的怒气值
SetHeroSkillSwitch	设置是否开启英雄的指定技能
SetHeroState	设置玩家已经载入的英雄状态
SetHp	设置角色的生命值（HP值）
SetHpPoint	设置角色生命值属性点数（HP属性点数）
SetInnerForce	设置角色内功值
SetInnerForceLevel	设置玩家内功等级
SetIsBrust	设置是否显示为暴击
SetJob	设置角色职业
SetLevel	设置角色等级
SetLockSwitch	设置角色的安全锁开关状态
SetLuckCurse	设置角色幸运诅咒值
SetMagAtk	设置角色的魔攻上限/下限值
SetMagAtkPoint	设置角色魔法攻击属性点数
SetMagDef	设置角色的魔防上限/下限值
SetMagDefPoint	设置角色魔法防御属性点数
SetMeritor	设置角色功勋
SetMp	设置角色MP
SetMpPoint	设置角色魔法值属性点数（MP属性点数）
SetPanelSize	设置角色NPC面板的尺寸
SetPhyAtk	设置角色的物攻上限/下限值
SetPhyAtkPoint	设置角色物理攻击属性点数
SetPhyDef	设置角色的物防上限/下限值
SetPhyDefPoint	设置角色物理防御属性点数
SetPk	设置角色PK值
SetPrestige	设置角色声望
SetRemainPoint	设置角色剩余属性点数
SetSelfNotifyAttrs	配置需要通知到客户端的玩家属性
SetServantMasterName	修改宠物主人的名字
SetServantNotPickList	设置宠物禁止拾取的物品列表
SetServantPickItem	设置是否开启宠物自动捡物功能
SetServantPickList	宠物拾取列表中添加或删除某物品
SetServantPickListByType	宠物拾取列表中添加或删除某类型物品
SetServantState	设置宠物的状态
SetSkillExp	设置玩家技能的熟练度
SetTaoAtk	设置角色的术攻上限/下限值
SetTaoAtkPoint	设置角色咒术攻击属性点数
SetUseNewAttrCalcRule	设置是否使用新的BUFF的属性计算规则
SetVipLevel	设置玩家的VIP等级
Shoes	获取玩家当前装备的鞋子
Shoulder	获取玩家当前装备的腰带（护肩）
ShowRoleHPRef	向周围通知角色血量的变化
ShowRoleHPRefAndMPRef	向周围通知角色血量和蓝量的变化
ShowRoleHPRefAndMPRefWithSkillID	向周围通知角色血量和蓝量的变化
ShowRoleHPRefEx	向周围通知角色血量的变化（扩展）
ShowRoleHPRefExWithSkillID	向周围通知角色血量的变化
SkillKey2ID	根据技能的索引名获取技能的ID
Skill_DataRow	获取技能的配置表结构
StallSetBuyList	设置假人摆摊时的收购列表
StartStall	假人摆摊
StopStall	结束假人摆摊
SubBindGold	扣除角色绑定金币
SubBindIngot	扣除角色绑定元宝
SubDeposit	扣除角色仓库金币
SubExp	扣除角色经验
SubGold	扣除角色非绑定金币
SubHeroRage	减少英雄的怒气值
SubHp	扣除角色的生命值（HP值）
SubIngot	扣除角色非绑定元宝
SubIngotEx	扣除角色非绑定元宝（扩展）
SubInnerForce	扣除角色内功值
SubIntegral	扣除角色积分
SubMp	扣除角色MP
SysRoleTalk	发送角色当前说话的内容
TakeOff	让玩家脱下装备
TakeOffEx	让玩家脱下装备（扩展）
TakeOn	让玩家穿戴装备
TakeOnEx	让玩家穿戴装备（扩展）
TaoAtk	获取角色的术攻上限/下限值
TaoAtkPoint	获取角色的咒术攻击属性点数
TeamChangeLeader	组队移交队长
TeamInvite	邀请玩家组队
Team_GetMemberList	根据队伍的GUID获取所有队员的GUID
TitleName	获取玩家的称谓
Title_DataRow	根据称号的索引名获取该称号的配置表结构
ToAttrName	获取属性的类型名
TotalTime	获取玩家在线时间的总和
Turn	角色转向
UnRide	玩家下马
UserId2Guid	根据玩家账号ID获取当前角色GUID
Weapon	获取玩家当前装备的武器
Wings	获取玩家当前装备的翅膀
Wrist	获取玩家当前装备的护腕
物品	
AddItem	给玩家添加物品
AddSingleItem	给玩家添加单个物品
AllItemList	获取玩家所有物品的GUID列表
ApplyItem	让玩家使用道具
ApplyItemTarget	让玩家对某目标使用道具或道具所配置的技能
ApplyItemXY	让玩家对附近某坐标点使用道具
CalcDrops	根据掉落索引计算掉落物品的概率
CalcDropsByMonsterKeyname	根据怪物的索引名计算掉落物品的概率
CalcDropsEx	根据掉落索引计算掉落物品的概率（扩展）
CalcDropsWithFactor	根据掉落索引和掉落因子计算掉落物品的概率
DelItem	删除玩家物品
DelItemEx	删除玩家物品（扩展）
DelItemsBatch	批量删除玩家物品
DropItem	丢弃玩家物品
GiveBindItem	给玩家添加绑定物品
GiveItem	给玩家添加非绑定物品
GiveOneBindItem	给玩家添加单个绑定物品
GiveOneItem	给玩家添加单个非绑定物品
HasItem	判断玩家是否拥有道具
InAdvWarehouse	判断道具是否在玩家高级仓库中
InEquip	判断道具是否在玩家装备栏中
InWarehouse	判断道具是否在玩家仓库中
IsBanItem	根据物品GUID判断是否为地图禁止物品
IsBanItemByKeyname	根据物品索引名判断是否为地图禁止物品
Item2Json	生成物品的JSON信息
Item2JsonEx	生成物品的JSON信息（扩展）
ItemCount	获取玩家指定物品的数量
ItemCountEx	获取玩家指定物品的数量（扩展）
ItemDropFreezeTime	获取物品的掉落冻结时间
ItemDropHost	获取物品的掉落源
ItemDropTime	获取物品的掉落时间
ItemDropType	获取物品的掉落类型
ItemKey2ID	根据物品的索引名获取物品的ID
ItemRole	获取物品的归属者的GUID
Item_ChangeName	修改物品的名称
Item_DataRow	获取物品的配置表结构
Item_Destroy	销毁物品
Item_GetAllLuckCurse	根据物品GUID取得该物品的幸运诅咒值总和
Item_GetAmount	获取物品的堆叠数量
Item_GetBySite	根据装备位获取物品的GUID
Item_GetDurability	获取物品的当前耐久值
Item_GetID	获取物品的模板ID
Item_GetIcon	获取物品图标对应的图片资源ID
Item_GetLevel	获取物品的可使用等级
Item_GetLife	获取物品的剩余存在时间
Item_GetMaxDurability	获取物品的最大耐久值
Item_GetRepairCharge	获取物品的修理价格
Item_GetRole	获取物品所在包裹的玩家GUID
Item_GetSite	获取物品的装备位
Item_GetStack	获取物品的最大堆叠数量
Item_GetSubType	获取物品的子类型
Item_GetType	获取物品的主类型
Item_GetUsesCount	获取物品的剩余使用次数
Item_IsBind	判断物品是否绑定
Item_IsExist	判断物品是否存在
Item_IsTimeLimit	判断物品是否为时限道具
Item_MapRemove	清理地图上的某个物品
Item_NotifyUpdate	通知物品属性更新
Item_NotifyUpdateEx	通知物品属性更新（扩展）
Item_SetAmount	设置物品的堆叠数量
Item_SetBind	设置物品是否绑定
Item_SetBindEx	根据物品GUID设置该物品是否绑定
Item_SetDurability	设置物品的当前耐久值
Item_SetLife	设置物品的剩余存在时间
Item_SetMaxDurability	设置物品的最大耐久值
Item_SetUsesCount	设置物品的剩余使用次数
ItemsByType	根据道具的类型查找物品
Json2Item	生成物品的实体
Json2ItemEx	生成物品的实体（扩展）
Json2ItemEx2	生成物品的实体（扩展2）
Json2ItemWithSiteType	根据物品的JSON信息生成物品的实体
JsonToEquipWithSite	从Json直接生成装备到装备位
Mall_DataRows	获取商城的所有配置表结构
Map_PlayerPKDropItemFromJson	模拟玩家PK掉落并根据JSON字符串生成物品
ModifyItemGold	修改金币类型物品的金币数量
MoveItem	移动物品
SetItemColor	设置物品名称在场景中显示的颜色
SetItemDropFreezeTime	修改物品的掉落冻结时间
SetItemDropTypeWithHost	设置物品的掉落类型和归属
TakeItem	删除玩家物品
TakeItemEx	删除玩家物品（扩展）
包裹	
AddBagSite	增加背包格子数
BagFree	获取玩家包裹中的空格子数量
BagItemList	获取玩家包裹所有物品的GUID列表
BagSize	获取玩家包裹中的格子数量
ClearBag	清空玩家包裹
FindFirstBagFreeSlot	获取玩家背包中的第一个空格位
GetBagFree	获取玩家背包中的空格子数量
GetBagFreeEx	获取玩家包裹中的空格子数量
GetBagSize	获取玩家背包中的格子数量
GetBagSizeEx	获取玩家包裹中的格子数量
InBag	判断道具是否在玩家背包中
IsBagLock	判断玩家或者英雄包裹是否被锁定
SetBagLock	锁定/解锁玩家或者英雄的包裹
SetWeight	设置角色背包负重
Weight	获取角色的背包负重
仓库	
AddAdvWarehouseSite	增加高级仓库的格子数
MoveItemToWarehouse	将背包中的物品移动到仓库或者高级仓库中
OpenWarehouse	打开玩家仓库
OpenWarehouseAdv	打开玩家高级仓库
OpenWarehouseAdvEx	打开玩家高级仓库（扩展）
OpenWarehouseEx	打开玩家仓库（扩展）
怪物	
GetMonsterCount	获取怪物数量
MonsterKey2ID	获取怪物的编号
Monster_AddPersistentDetectableRole	将角色添加到怪物的永久侦测列表
Monster_AddSkillData	设置怪物指定技能的使用概率权重
Monster_AddTargetHate	增加怪物的单个目标仇值
Monster_ClearHateList	清除怪物的仇恨列表
Monster_DataRow	获取怪物的配置表结构
Monster_DelSkillData	删除怪物指定技能的使用概率权重
Monster_Escape	让怪物行走到指定坐标
Monster_ForceSpellTarget	让怪物对目标角色强制施放技能
Monster_Gen_DataRow	获取怪物的刷新表结构
Monster_Gen_DataRow_By_Map	根据地图的索引名获取怪物刷新表结构
Monster_Gen_DataRow_By_Monster	根据怪物的索引名获取怪物刷新表结构
Monster_GetAttackTarget	获取怪物的攻击目标
Monster_GetCurTarget	获取怪物的攻击目标
Monster_GetDropOwner	获取怪物掉落物品所归属玩家的GUID
Monster_GetEscapePoint	计算怪物的逃跑坐标点
Monster_GetHateList	获取怪物的仇恨列表
Monster_GetMaster	获取怪物主人的名字
Monster_GetRebornTime	获取怪物的重生时间
Monster_GetSpecial	获取相应等级的抽取类型怪物
Monster_IsDie	判断怪物是否死亡
Monster_IsExist	判断怪物是否存在
Monster_IsMonster	判断对象是否为怪物
Monster_JumpXY	让怪物跳转到指定地图的指定坐标范围
Monster_Remove	清理怪物
Monster_SetAttackTarget	设置怪物的攻击目标
Monster_SetAttackType	设置怪物允许攻击的角色类型
Monster_SetDetectInv	设置怪物使用侦测隐形
Monster_SetDropOwner	设置怪物掉落归属
Monster_SetHateList	设置怪物的仇恨列表
Monster_SetRebornTime	设置怪物的重生时间
Monster_SpellGrid	怪物对目标逻辑格释放技能
Monster_SpellTarget	让怪物施放技能
Monster_SpellTargetEx	让怪物施放技能（扩展）
Monster_SubTargetHate	减少怪物的单个目标仇恨值
Monster_Type	获取怪物的类型
Monster_UseAstar	设置怪物使用智能寻路
MonstersByKey	获取BOSS类型怪物的GUID列表
SetUseMonsterSpellTrigger	设置是否开启怪物释放技能触发
地图	
CanPlayerMapMoveXY	判断玩家能否跳转到指定的坐标范围内
GetAllMapGuid	获取所有地图的GUID
GetDirByPoint	根据起点和终点获取两点所在线段的方向
GetNegDir	根据指定方向获取其相反方向
GetPointByDir	根据起点获取指定方向和距离的逻辑格点
GetRegionFreeEx	获取地图区域中的空坐标列表
GetRegionFreeRndEx	获取地图区域中的空坐标列表（扩展）
GetRoleBackPosition	获取角色背后指定距离的逻辑格点坐标
GridAttr	判断地图逻辑格的属性与指定属性是否相同
IsInRegion	判断坐标是否在指定区域中
IsRoleInSafeRegion	判断指定角色是否在安全区内
MapCanRide	判断地图是否可以骑乘坐骑
MapKey2ID	根据地图的索引名获取地图的ID
MapOwnerFamily	判断地图上所有玩家是否属于同一个行会
MapRndPos	获取地图随机点
Map_AddEffect	在地图指定位置播放特效
Map_AddJumpPoint	在地图上添加跳转点
Map_AddJumpPointEx	在地图上添加跳转点（扩展）
Map_BatchGenCampMonster	在地图中随机生成怪物并设置阵营
Map_BatchGenMonster	在地图中随机生成怪物
Map_ClearChannels	清理地图指定坐标范围中的通道技能
Map_ClearItem	清理地图指定范围中的物品
Map_ClearMonster	清理地图指定范围中的怪物
Map_ClearNpc	清理地图指定范围中的NPC
Map_CreateMagicEvent	在地图上创建特效
Map_DataRow	获取地图的配置表结构
Map_DelJumpPoint	删除地图上的跳转点
Map_FindShortestPath	获取地图上两点间的最短移动路径
Map_GenCampMonster	在地图指定范围生成怪物
Map_GenDropItems	在地图上生成掉落物品
Map_GenDropItemsEx	在地图上生成掉落物品（扩展）
Map_GenGold	在地图上指定位置生成金币
Map_GenItem	在地图上指定位置生成物品
Map_GenItemEx	在地图上指定位置生成物品（扩展）
Map_GenItemRnd	在地图上指定坐标范围内随机生成物品
Map_GenMonster	在地图指定范围生成怪物
Map_GenMonsterWithReborn	在地图指定范围生成怪物
Map_GenNpc	在地图指定范围生成一个NPC
Map_GenNpcRnd	在地图中随机位置生成一个NPC
Map_GenSingleCampMonster	在地图指定范围内生成一只怪物并设置阵营
Map_GenSingleMonster	在地图指定范围生成一只怪物
Map_GetAllJumpInfos	获取地图所有的跳转点信息
Map_GetAllMonsters	获取地图上所有怪物的GUID
Map_GetAllMoveableGrid	获取指定地图上所有的可移动点
Map_GetChannelItemsInRegion	获取地图上范围内通道道具列表
Map_GetGridObjList	获取地图区域内的对象列表
Map_GetHeight	获取地图的高度
Map_GetMapGuid	获取地图的GUID
Map_GetMapNpc	获取地图中NPC的GUID
Map_GetMapPlayers	获取地图内的玩家列表
Map_GetMonsterCount	获取地图上怪物的数量
Map_GetPlayerCount	获取地图上玩家的数量
Map_GetRegionDummys	获取地图区域内的英雄列表
Map_GetRegionItemsEx	获取地图区域内的物品列表
Map_GetRegionMonstersCount	获取地图区域内的怪物数量
Map_GetRegionMonstersEx	获取地图区域内的怪物列表
Map_GetRegionNpcsEx	获取地图区域内的NPC列表
Map_GetRegionPlayersEx	获取地图区域内的玩家列表
Map_GetRegionRoles	获取地图区域内的对象列表
Map_GetWidth	获取地图的宽度
Map_IsInGS	判断某地图是否在本GS上
Map_JumpRnd	玩家在指定地图上随机跳转
Map_JumpXY	让玩家跳转到指定地图的指定坐标范围
Map_RefreshMonster	根据怪物刷新表在地图上刷怪
Map_RelivePlayer	在指定地图与坐标范围内复活玩家
Map_RemoveMonster	清理地图中的怪物
Map_RemoveNpc	清理地图中的NPC
Player_MapMoveXYWithBuffs	让玩家跳转到地图指定坐标并设置对应的BUFF
副本地图	
Map_ClearDgnItem	清理副本地图中所有的物品
Map_ClearDgnMonster	清理副本地图中所有的普通怪
Map_ClearDgnNpc	清理副本地图中所有的NPC
Map_ClearDgnPlayer	清理副本地图中所有的玩家
Map_CreateDgn	创建副本地图
Map_DestroyDgn	销毁副本地图
Map_GetDgnLeftTime	获取副本的剩余时间
Map_IsDgn	判断某地图是否为副本地图
Map_IsDgnExist	判断某副本地图是否存在
Map_SetDgnLeftTime	设置副本的剩余存在时间
Player_EnterDgn	让玩家进入副本地图
Player_GetDgnByTicket	获取副本地图的GUID
Player_HasDgnTicket	判断玩家是否拥有副本地图的门票
Player_SetDgnTicket	给玩家设置指定副本地图的门票
行会	
AddFamilyMember	指定玩家加入行会
AddFamilyMsg	添加行会消息
ChangeFamilyNotice	修改行会公告内容
ChangeFamilyTitle	指定行会中玩家的封号
CreateFamily	创建行会
DelFamilyMember	删除行会中的指定玩家
DestroyFamily	解散行会
Family_ChangeName	行会改名
GetAllFamilys	获取服务器上所有行会的名称列表
GetFamilyByName	获取行会的GUID
GetFamilyCastles	获取行会占领的城堡名称
GetFamilyInfo	根据行会名称获取行会详细信息
GetFamilyJoinList	将行会列表发送到客户端
GetFamilyLeader	获取行会会长的GUID
GetFamilyMemberAttr	获取行会成员指定类型的信息
GetFamilyMembers	获取玩家所属行会的成员列表
GetFamilyMembersByTitleId	获取玩家所属行会中指定封号的成员列表
GetFamilyName	获取玩家所属行会的名字
GetFamilyTitle	获取玩家的行会封号
GetRunningFamilyWar	获取行会作战列表
GuildGuid	获取玩家所属行会的GUID
HasFamily	判断指定行会是否存在
HasFamilyWar	判断两个行会是否处于战争状态
IsFamilyAlly	判断玩家所属行会与指定行会是否为联盟行会
IsFamilyAllyByGuid	根据行会的GUID判断是否为联盟行会
IsFamilyAllyByName	根据行会名判断是否为联盟行会
IsFamilyEnemyByName	根据名字判断公会1与公会2是否为敌对
IsInFamily	判断玩家是否在指定的行会中
NotifyRunningFamilyWar	将作战行会列表通知给玩家
Player_GetGuildCtrb	获取玩家的行会贡献度
Player_IsGuildLeader	判断玩家是否会长
Player_IsViceGuildLeader	判断玩家是否为副会长
Player_JoinFamily	玩家发起加入行会请求
Player_LeaveFamily	玩家发起离开行会请求
Player_ReCalGuildCtrb	调整玩家的行会贡献度
SetFamilyDefalutTitleName	设置行会默认封号的名称
SetFamilyListRelation	批量设置行会列表中的各个行会的关系
SetFamilyMaxMember	设置行会最大成员数
SetFamilyRelation	设置行会关系
StartFamilyWar	让两个行会开始交战
StopFamilyWar	让两个行会停止交战
StopFamilyWarEx	停止两个行会交战，并解除敌对关系
活动	
CampCount	获取玩家当天参与活动次数
CampCounts	获取活动总计参与次数
CampInteg	获取活动当天积分
CampIntegs	获取活动总计积分
Campaign_DataRow	获取活动的配置表结构
GenEscorter	生成需要护送的镖车
GenTraveler	生成自动行走的镖车
GetCampaignTime	获取活动的开始时间和结束时间
GetEscorter	获取玩家镖车GUID
IsEscorterDied	判断玩家的镖车是否死亡
JoinCamp	加入活动
RemoveEscorter	清理玩家的镖车
VerifyCampCount	判断玩家是否受活动次数限制
VerifyCampLevel	判断玩家等级是否达到活动所需等级
任务	
AcceptQuest	玩家接受任务
AccomplishQuest	玩家提交任务
CanAcceptQuest	判断某任务是否可接
CanAccomplishQuest	判断某任务是否可提交
DropQuest	玩家放弃任务
ForceAcceptQuest	强制玩家接受任务
ForceQuestReady	强制玩家完成任务
GetQuestAccomplishing	获取任务完成时的追踪文本
GetQuestGroupHuntingsCount	获取玩家任务组杀怪次数
GetQuestProgressing	获取任务进行中的追踪文本
HasQuest	判断玩家是否拥有某个任务
QuestRemainCount	查询玩家任务剩余次数
Quest_GetQuestInfo	根据任务ID获取任务信息
SetQuestGroupHuntingsCount	设置玩家在指定任务中的杀怪数量
摆摊	
CancelStall	取消玩家摆摊
Dummy_StartNewStall	假人开始新摆摊
Dummy_StopNewStall	假人停止新摆摊
GetAllStallPlayerGuids	获取所有摆摊玩家的GUID
GetPlayerStallBuyList	获取玩家摆摊时的收购物品列表
GetPlayerStallSellList	获取玩家摆摊时的出售物品列表
NewStall_Close	关闭新摆摊
NewStall_GetAllStallOwners	获取所有摊主
NewStall_GetStallGuidByPlayer	通过玩家获取摊位GUID
NewStall_GetStallGuidsInRange	获取范围内摊位
on_pre_new_stall_buy	新摆摊系统购买前触发
on_pre_new_stall_close	新摆摊系统收摊前触发
on_pre_new_stall_start	新摆摊系统开摊前触发
on_pre_new_stall_takedown	新摆摊系统下架前触发
商店	
AddShop	关联NPC与指定商店
OpenShop	打开与NPC关联过的商店
OpenShopEx	打开随身商店
NPC	
NPCTalk	设置对话框的内容并打开对话框
NPCTalkDetail	打开物品的对话框
NPCTalkDetailEx	设置对话框的内容和尺寸并打开对话框（扩展）
NPCTalkDetailQuest	打开NPC的对话框或者任务框
NPCTalkEx	设置对话框的内容并打开对话框（扩展）
Npc_ChangeName	修改NPC的名字
Npc_DataRow	根据Npc的KeyName取得该Npc的配置表结构
Npc_GetBindQuests	获取NPC实体上绑定的任务信息
Npc_IsExist	判断NPC是否存在
Npc_Remove	清理NPC
邮件	
Mail	给玩家发送一封文本邮件
MailEx	给玩家发送一封文本邮件（扩展）
MailJsonItem	发送邮件并根据JSON信息生成附件物品
MailJsonItemEx	发送邮件并根据JSON信息生成附件物品（扩展）
MailJsonItems	给某个玩家发送一封文本邮件
MailToPlayer	给在线玩家发送一封文本邮件
MailToPlayerEx	给在线玩家发送一封文本邮件（扩展）
SendMail	给玩家发送文本邮件（不支持发送附件）
城堡战	
GetAllCastle	获取服务器中定义的所有城堡
GetCastleAttackFamily	获取参与某城堡战的所有行会的名字
GetCastleBasiGuid	获取某城堡皇宫地图的GUID
GetCastleCustomVarInt	获取某城堡的数值型自定义变量
GetCastleCustomVarStr	获取某城堡的字符型自定义变量
GetCastleMapGuid	获取某城堡攻城地图的GUID
GetCastleOwnFamily	获取某城堡所属行会的名字
GetCastleTempFamily	获取临时占有指定城堡的行会
HasCastle	判断某城堡是否存在
HasCastleWar	判断行会是否参与某城堡战
IsCastleWarNull	判断某城堡战是否未注册
IsCastleWarStart	判断某城堡战是否开启
ModifyCastleAttacks	强制修改城堡战参与行会列表
ModifyCastleStart	强制修改城堡战开启时间
Player_GetCastleList	获取玩家所属行会占领的城堡列表
QueryCastleStart	查询城堡战开始时间
SetCastleCustomVarInt	设置某城堡的数值型自定义变量
SetCastleCustomVarStr	设置某城堡的字符型自定义变量
SetCastleOwnFamily	设置某城堡所属行会的名字
SetCastleTempFamily	设置临时占有指定城堡的行会
StartCastleWar	开启城堡战
StartCastleWarEx	开启城堡战（扩展）
StopCastleWar	结束城堡战
跨服	
SendMigrateZoneMessage	发送消息到跨服服务器
StartMigrate	启动玩家角色数据跨服
StartMigrateEx	启动玩家角色数据跨服（扩展）
MOBA	
GetMobaRoomMembers	获取MOBA房间成员
Moba_CreateRoom	创建一个MOBA房间
Moba_EnterRoom	玩家进入一个MOBA房间
Moba_ExitRoom	使玩家离开MOBA房间
Moba_ForceStartGame	强制开启MOBA房间内的游戏
Moba_GetAllRoomList	获取所有的MOBA房间列表
Moba_GetCampStatus	获取MOBA房间内的阵营准备状态
Moba_GetPlayerStatus	获取MOBA房间内玩家准备状态
Moba_GetRoomStatus	获取MOBA房间状态
Moba_SetMemberReadyStatus	设置MOBA房间内玩家的准备状态
Moba_SetPlayerCamp	设置玩家阵营
Player_GetMobaRoomCamp	获取玩家MOBA房间阵营
Player_GetMobaRoomId	获取玩家所在MOBA房间的ID
SetMobaRoomHost	设置MOBA房间房主
挂机	
IsOffline	判断玩家是否离线挂机
SetAutoOpt	设置开启自动挂机后的具体功能
SetOffline	设置玩家离线挂机
StartAutoRun	让指定玩家开始挂机
StopAutoRun	让指定玩家停止挂机
防沉迷	
AntiIndulgeExpire	强制让玩家的沉迷状态过期
IsAccountVerified	获取玩家账号实名认证的状态
IsAntiIndulge	判断玩家账号是否为防沉迷账号
Player_GetAntiIndulge	获取玩家的防沉迷状态
Player_SetAntiIndulge	设置玩家的防沉迷状态
客户端	
GetClientCheckInfo	获取客户端的校验信息
GetClientType	获取客户端的类型
GetClientVer	获取客户端版本号
GetClientVerEx	获取客户端版本号（扩展）
GetGSClientVer	获取最新上线玩家所使用的客户端的版本号
GetMobileClientType	获取玩家移动客户端类型
NotifyVarList	向客户端批量发送变量通知
Player_GetDlqGroupID	获取玩家当前登录的登录器分组ID
Player_GetGameGroupID	获取玩家当前登录的游戏分组ID
Player_GetSubPackageID	获取玩家当前登录游戏的子包ID
RequestClientVer	请求获取客户端版本号
SetClientDelay	设置异常断线后客户端延迟退出游戏的时间
SetMD5CheckList	设置客户端的MD5码黑名单检测列表
SetNetCheck	设置是否开启严格检查模式
SetNetCheckEx	设置是否开启严格检查模式（扩展）
神兔宝库	
BaoKuIsInited	神兔宝库是否已完成初始化
合区	
CleanMergeZoneRenameData	清除合区的改名数据
GetMergeZoneRenameData	获取合区的改名数据
充值	
GetTotalBillInMoney	获取玩家在该代理商名下所有的区服的充值总金额
飞剑	
DisableFlyingSword	关闭飞剑功能
EnableFlyingSword	配置并开启飞剑功能
on_flying_sword_hit	飞剑命中时触发
寄售	
Market_SetCurrencyAlias	设置寄售行货币别名
回调函数	
on_account_verified	用户完成实名认证时的触发
on_add_buff	角色添加BUFF时回调
on_add_exp	角色杀怪得到经验时回调
on_add_skill	角色添加技能时回调
on_add_title	角色添加称号时回调
on_apply_buff	角色触发BUFF效果时回调
on_apply_on_item	特殊道具使用在目标道具上回调
on_attack	受攻击时回调
on_attack_ex	受攻击时回调（扩展）
on_auto_add_gold	玩家杀怪自动加金币时回调
on_bangcle_hack_rpt	梆梆收到外挂报告时回调
on_bangcle_timeout	梆梆心跳超时回调
on_billin	玩家在线充值时回调
on_billinex	玩家充值时回调（扩展）
on_buff_pre_harm	角色触发BUFF造成伤害前回调
on_calc_drop_pct	计算掉率触发
on_calc_hit	命中计算回调
on_captcha_result	验证码结果回调
on_castle_war_end	攻城战关闭时回调
on_castle_war_init	攻城战申请成功时回调
on_castle_war_start	攻城战开启时回调
on_catch	角色抓宠物时回调
on_change_servant_mode	玩家改变宠物行动状态时回调
on_check_ignore_def_and_imm	是否处理破防和破盾触发
on_client_version_old	客户端版本过低时回调
on_create	物品、NPC、怪物创建时回调
on_damage_process	角色走伤害流程时回调
on_dig_meat	角色挖肉时回调
on_dummy_client_lock_target	英雄从客户端锁定目标触发
on_dummy_custom_state_logic	英雄自定义状态逻辑触发
on_dungeon_end	副本地图销毁时回调
on_enter_map	玩家进入地图时回调
on_equip_distinguish_sites	玩家穿戴装备需要区别装备位时的触发
on_equip_suit	角色穿上套装时回调
on_escorter_fail	押送类怪物死亡时回调
on_escorter_far	押送类怪物离得过远时回调
on_family_member_ntf	行会事件触发回调
on_family_notice_changed	行会公告改变时回调
on_family_ntf	行会创建和销毁时回调
on_family_ntf_msg	行会事件给客户端发送消息时回调
on_family_relation_change	行会关系发生变化时回调
on_fang_chen_mi	通知防沉迷事件时回调
on_fetch_mail	玩家接收邮件回调
on_first_in_game	新玩家首次进入游戏时回调
on_game_guard_check	GameGuard外挂检测失败时回调
on_game_guard_hack_rpt	GameGuard收到外挂报告时回调
on_glory_award	获得成就奖励时触发
on_gp	玩家检测到外挂行为时回调
on_hack_check	客户端外挂检测时回调
on_hack_check2	客户端外挂检测时回调2
on_hero_load	英雄被召唤时回调
on_hero_ntf_msg	英雄事件给客户端发送消息时回调
on_item_amount_zero	角色物品堆叠数为0时回调
on_item_appear	物品出现在地图时回调
on_item_apply	角色使用道具时回调
on_item_attr_notify	物品属性变化并通知客户端时回调
on_item_attr_zero	角色物品属性为0时回调
on_item_attr_zero_ex	物品属性为0时回调（扩展）
on_item_disappear	物品消失在地图时回调
on_item_drop	角色扔道具时回调
on_item_dur_notify	角色装备耐久值变化并通知客户端时回调
on_item_dur_zero	角色装备耐久为0时回调
on_item_dur_zero_ex	角色装备耐久为0时回调（扩展）
on_item_pickup	角色拾取道具时回调
on_item_timeup	角色物品时效到期时回调
on_item_use_zero	角色物品使用次数为0时回调
on_join_team	玩家组队回调
on_kill	杀死角色时回调
on_leave_map	玩家离开地图时回调
on_leave_team	玩家离队回调
on_level_up	角色升级时回调
on_login	玩家进入游戏时回调
on_logout	玩家退出游戏时回调
on_mall	玩家在商城消费时回调
on_map_create	地图生成时回调
on_map_destroy	地图结束时回调
on_migrate_zone_message	跨服服务器消息回调
on_mining	角色挖矿时回调
on_moba_create_room	创建MOBA房间触发
on_moba_enter_room	进入MOBA房间触发
on_moba_exit_room	离开MOBA房间触发
on_moba_player_change_camp	玩家改变阵营触发
on_moba_player_change_ready	玩家改变准备状态触发
on_monster_appear	怪物出现在地图时回调
on_monster_born	怪物出生时回调
on_monster_destory	怪物被清理时回调
on_monster_disappear	怪物消失在地图时回调
on_monster_in_fight	怪物进入战斗状态时回调
on_monster_out_fight	怪物退出战斗状态时回调
on_monster_spell	怪物释放技能时回调
on_move	角色移动时回调
on_npc_appear	NPC出现在地图时回调
on_npc_buy	玩家在NPC购买之后回调
on_npc_disappear	NPC消失在地图时回调
on_player_change_name	玩家改名回调
on_player_chat	玩家聊天时触发
on_player_pk_change	玩家PK值改变后触发
on_player_use_speaker	玩家发小喇叭时触发
on_post_die	角色死亡时回调
on_post_drop	角色爆道具时回调
on_post_drop_one	角色爆某个具体的道具时回调
on_post_dummy_die	英雄死亡时回调
on_post_equip	角色穿戴装备回调
on_post_mining_drop	角色挖矿获得物品时回调
on_post_monster_die	怪物死亡时回调
on_post_player_die	玩家死亡时回调
on_post_process_pk	角色处理PK值时回调
on_post_ride	玩家上马后回调
on_post_un_equip	角色脱下装备时回调
on_post_unride	玩家下马后回调
on_pre_add_buff	角色添加BUFF前回调
on_pre_add_exp	角色杀怪得到经验前回调
on_pre_add_family	玩家加入行会前回调
on_pre_attacker_harm	攻击者受到伤害即将损血前回调
on_pre_catch	角色抓宠物之前回调
on_pre_curse	玩家的武器被诅咒前回调
on_pre_die	角色死亡之前回调
on_pre_dig_meat	角色挖肉之前回调
on_pre_drop	角色爆道具之前回调
on_pre_drop_one	角色爆某个具体的道具之前回调
on_pre_dummy_die	英雄死亡之前回调
on_pre_enter_jump	角色进入跳转点之前回调
on_pre_equip	角色穿戴装备之前回调
on_pre_family_destroy	行会解散前回调
on_pre_get_attachment_from_mail	玩家提取邮件附件前触发
on_pre_harm	被攻击者受到伤害即将损血前回调
on_pre_harm_ex	被攻击者受到伤害即将损血或损蓝前回调
on_pre_invite_family	邀请玩家加入行会前回调
on_pre_invite_team	玩家邀请组队前触发
on_pre_item_apply	角色使用道具前回调
on_pre_item_drop	角色丢弃道具前回调
on_pre_item_move	物品移动前回调
on_pre_item_pickup	角色拾取道具前回调
on_pre_join_family	玩家申请加入行会前触发
on_pre_jump_map	角色跳转地图前回调
on_pre_level_up	角色升级前回调
on_pre_logout	玩家退出游戏之前回调
on_pre_mall	玩家在商城消费之前回调
on_pre_map_refresh_monster	在地图执行刷怪操作前回调
on_pre_market_buy	玩家在寄售行购买之前回调
on_pre_market_delegate_buy	玩家在寄售行发布收购之前回调
on_pre_market_delegate_sell	玩家在寄售行寄售之前回调
on_pre_market_sell	玩家在寄售行出售之前回调
on_pre_mining	角色挖矿前回调
on_pre_mining_drop	角色挖矿获得物品前回调
on_pre_modify_item_dur	角色装备耐久值发生变化前回调
on_pre_monster_die	怪物死亡之前回调
on_pre_npc_buy	玩家从NPC处购买物品之前回调
on_pre_npc_taobao_buy	玩家在NPC二手商店购买之前回调
on_pre_p2p_trade	玩家进行P2P交易前回调
on_pre_player_die	玩家死亡之前回调
on_pre_player_drop_gold	玩家丢弃金币前回调
on_pre_player_relive	角色复活之前回调
on_pre_process_pk	角色处理PK值之前回调
on_pre_relate_family	行会建立联盟或者敌对关系前回调
on_pre_restore	目标回血前回调
on_pre_restore_mp	目标回蓝前回调
on_pre_shop_sell	出售物品给NPC商店前回调
on_pre_shop_sell_ex	出售物品给NPC商店前回调（扩展）
on_pre_spell	角色放技能前回调
on_pre_stall	在玩家摆摊前回调
on_pre_stall_buy	购买摆摊者物品前回调
on_pre_stall_sell	出售物品给摆摊者前回调
on_pre_switch_skill	角色开关技能前回调
on_pre_un_equip	角色脱下装备之前回调
on_prepare_joint_hit	英雄准备好合击时回调
on_quest_award	玩家获得任务奖励时回调
on_relogin_refresh_req	玩家重登录请求刷新时回调
on_remove_buff	角色删除BUFF时回调
on_remove_skill	角色删除技能时触发
on_remove_title	角色删除称号时回调
on_restore_process	角色走恢复流程时回调
on_ride_request	收到上马请求时回调
on_servant_betry	宠物叛变回调
on_servant_levelup	宠物升级时触发
on_servant_state_change	宠物状态改变时回调
on_shentubaoku_buy	玩家在神兔宝库购买物品时回调
on_shentubaoku_cancel_sell	神兔宝库下架装备时回调
on_shentubaoku_pre_sell_item	神兔宝库上架物品前回调
on_shentubaoku_pre_sell_role	神兔宝库上架角色前回调
on_shentubaoku_pre_sell_role_ex	神兔宝库上架角色前回调（扩展）
on_spell	角色放技能时回调
on_sub_ingot	扣元宝回调
on_submit_not_allowed_form	客户端提交未被允许的表单时回调
on_summon	角色召唤宠物时回调
on_switch_skill	角色开关技能时回调
on_system_start	系统启动回调
on_system_stop	系统关闭回调
on_target_data_migrate_success	目标区跨服数据迁移成功时回调
on_teleport	角色走瞬移流程时回调
on_timer_check	道具自检时回调
on_un_equip_suit	角色脱下套装时回调
on_unride_request	收到下马请求时回调
on_update_currency	通用货币增加/减少时回调
on_use_item_level_check	角色使用道具等级检查回调
on_yidun_hack_rpt	易盾手游反外挂检测出异常时回调
on_yidun_heartbeat_rpt	易盾手游反外挂心跳超时时回调
on_yidun_pc_hack_rpt	易盾端游反外挂检测出异常时回调
on_yidun_pc_heartbeat_rpt	易盾端游反外挂心跳超时时回调
post_process_pk	角色处理PK值时回调
pre_add_gray	玩家变灰名前回调
pre_cancel_processing	玩家被打断读条前触发
pre_leave_team	玩家离队前回调
pre_process_pk	角色处理PK值之前回调


本页标题
回调函数
接口函数
脚本引擎机制
脚本引擎分为二部分：

脚本回调代理层：回调可以说是游戏脚本开发的核心，因为所有对游戏逻辑的控制都是围绕着回调展开的。
脚本接口封装层：接口可以说是为游戏脚本开发而提供的工具，所有的游戏逻辑都要通过各种不同的工具组合使用来实现。
note_icon 备注
目前客户端引擎中使用的Lua版本为5.1，服务端引擎中使用的Lua版本为5.2。

回调函数
回调函数是指由脚本宿主（即指游戏服务器）在某个事件发生时自动执行的函数。针对不同的事件，回调函数的格式是不同的。

想开始编写游戏脚本，我们建议必须牢记各类事件对应的回调函数格式。

例如，用户使用道具天书时，服务器会回调该道具挂载的脚本天书.lua中的使用回调函数main，回调时会自动填充相应的参数。

天书.lua可在envir/script/item目录下找到：

Luacopy 复制
function main(player, item) --天书的使用回调，使用天书时会触发
    --player 使用天书的玩家（GUID）
    --item   天书 (GUID)
    return true  --返回true告诉逻辑层道具使用成功，false使用失败
end
仿照以上案例，就可以写出很多简单的道具脚本了。因为大部分情况下，脚本程序员只关心道具被使用时的事件触发。

事实上，游戏服务器脚本不仅仅只是道具相关的操作，也包括许多关于NPC，Monster或Map等的脚本。

所有的脚本回调机制万变不离其宗，只要了解回调的机制，就可能写好复杂的脚本。

在学习具体事件回调函数之前，先来了解一下其它理论知识。

接口函数
接口函数是指由脚本宿主（即指游戏服务器）针对某一特定的功能提供的实现方法。

这些方法都尽量保持单一功能性，通过这些接口的组合可以实现各种复杂的功能。

它隐藏了功能的实现细节，这样脚本程序员不用关心功能对应的服务器逻辑，只要调用接口就能完成想要的功能。

以下为一个常用的接口函数的C++原型，接口的功能是弹出NPC对话面板。

C++copy 复制
void NPCTalk(const std::string& player_guid, const std::string& strTalk);
脚本程序员无需关心NPC面板是如何弹出的，只需提供参数并调用该接口即可。

以上一节的例子来讲解一个详细用法。

Luacopy 复制
function main(player, item)  --天书的使用回调，使用天书时会触发
    --player 使用天书的玩家（GUID）
    --item   天书 (GUID)
    lualib:NPCTalk(player, "你使用天书！") --弹出NPC对话面板，显示“你使用天书!”
    return true  --返回true告诉逻辑层道具使用成功，false使用失败
end
调用接口函数时必须严格遵循lualib:FunctionName(param1, param2, …)这种格式，否则服务器会提示函数是nil值的错误日志。

因为脚本引擎所谓的注册，实际上就是让所有的接口函数成为某元表的元方法。这个元表被命名为lualib。所以lualib:FunctionName实际上就是在调用lualib这个元表的元方法FunctionName。

以下是一段用LUA实现的模拟代码，通过这段代码可以看出端倪。

Luacopy 复制
local mt = {}  --创建mt元表
function mt:NPCTalk(msg)     --mt元方法
    print(msg)
end

function mt:new(instance)    --继承元表
    instance = instance or {}
    setmetatable(instance, self)
    self.__index = self
    return instance
end

lualib = mt:new()  --lualib将mt做为自己的元表
lualib:NPCTalk("你点了NPC!")  --调用元方法
请继续阅读了解服务器脚本引擎的分层架构。

下一篇:脚本引擎的分层架构>
本页标题
脚本的执行效率
脚本引擎提供的安全性
脚本底层提供的扩展功能
脚本引擎的分层架构
以上一节的天书为例，我们可以分析出服务器脚本引擎的分层架构图。

图 1 分层架构
Layered

当玩家使用道具时，客户端通知服务器触发道具使用事件。
服务器逻辑层收到事件后，查找该道具挂载的lua脚本。如果道具没有挂载脚本，则逻辑层不走脚本流程。反之，通过脚本回调代理层找到函数main。如果main不存在，逻辑层会提出“抱怨”（出错日志）。
脚本回调代理层执行main函数（同时将玩家和道具做为参数传入），执行完成后返回到服务器逻辑层。如果执行出错，服务器会提示lua某一行出错了，并将错误原因通过日志打印。
服务器逻辑层将main函数的执行结果通知到客户端。
作为脚本开发人员，在实际写脚本之前请一定要熟悉脚本的执行流程。如此当调试脚本遇到错误时，也能更快的找到出错原因。

脚本的执行效率
从服务器脚本引擎分层架构图中可以看到脚本的执行要经过如下步骤：

触发回调事件→逻辑层接收事件→查找事件对象挂载的脚本→脚本回调代理层回调→执行脚本→调用脚本接口封装层完成功能→返回逻辑层→响应事件

首先LUA自身的执行效率是低效的（相对于服务器），这一点我们无法改变，暂时不去考虑。通过上面的流程我们可以了解到，任何一个事件的产生都需要回调脚本，事件的响应要经过好几步必要的步骤才能得到处理。所以我们有理由认为回调函数的处理相较于服务器本身逻辑来说，速度是非常缓慢的。

既然如此，我们为什么还是选择了这种运行机制呢？有如下几点理由：

使用脚本开发速度快，语法简单而且强大，可以用很少的语句实现你的想法。对开发人员的要求非常低。
调试方便，修改也非常方便，不需要通过漫长的编译测试流程。可以实现在服务器运行期间，动态加载或关闭某些功能，实现hotfix。具有强大的容错能力。
扩展灵活，任何功能的需求都可以通过添加接口封装来实现。并且这些对于脚本开发人员来说都是透明的，不会造成任何影响。
服务器逻辑与脚本逻辑分离，服务器使用通用的框架为细枝末节的功能提供支持。提高服务器的稳定性。并且脚本程序员可以专心自己的玩法逻辑，不用关心服务器的运作。
脚本在一个限定的框架中运行。绝大部分情况下，脚本错误不会对服务器的运行造成灾难性的后果。
但是凡事有利必有弊，要实现快速开发、降低开发成本、实现高灵活性、高安全性，必然要牺牲一部分运行效率作为代价。可喜的是，虽然相对于服务器逻辑来说脚本的执行效率很慢，但是仍然远远超过一款游戏正常运作所需求的效率。

作为脚本开发人员，在实现功能的前提下如何提高脚本的运行效率是永远都应该摆在第一位的命题。因为服务器的高效稳定运行与你写的每一行代码都习习相关，所以请务必认真对待每一个细节。

脚本引擎提供的安全性
前面已经介绍过，脚本具有强大灵活的特性，但是又在一个限定的框架中运行。

为了避免过于灵活的编码或接口使用不当给服务器带来灾难，脚本引擎做了以下的限定：

LUA脚本语言自身的安全性，此部分本文不做详细叙述，请自行参考相关资料进行了解。
出于服务器的安全性的考虑，我们禁用了LUA的OS库、I/O库。如果你在服务器脚本开发中用到上述二种库，脚本将不能执行。当然我们也提供了部分替代接口，来实现OS、I/O的常用功能。比如时间接口、文件操作接口（只能操作指定沙盒目录：data目录）。
出于服务器安全性的考虑，我们将LUA C Packages功能完全禁用，也没有提供替代方案。请不要尝试去加载lib、dll。
为了能尽早发现影响服务器执行性能的脚本代码，我们加入了脚本执行性能探测。所有执行时间超过16毫秒的函数，服务器都将提醒你该代码不够高效。当你看到这些提示时，建议重新检查代码，尝试优化。
为了避免不良编码造成循环链，脚本引擎加入了循环链探测功能。如果你不小心让代码进入了循环链，脚本引擎会强制结束脚本运行，并在错误日志中打印出可能是异常代码的位置。如果发现日志提示循环链，请仔细检查你的代码。这个问题虽然不会造成服务器宕机，但会对玩家的友好体验带来影响。（例如：在物品的创建回调中再创建该物品，就会造成循环链。）
脚本死循环探测。如果脚本执行了10W次并且超过1秒都没有返回逻辑层，我们有理由认为你的代码陷入了死循环，脚本引擎会探测到这种异常，并强制强结束脚本执行。不管引擎是否误判。这样的代码绝对不允许在服务器中执行（会迅速造成服务器卡死）。
如果你在脚本编写过程中发现其它异常，请尽快联系我们。

脚本底层提供的扩展功能
为了提供更多的灵活性，对脚本底层进行定制是不可避免的。为了方便脚本程序员，我们目前扩展了一种LUA底层库，新增了一种LUA底层库。

string库扩展

string.chr：ASCII转换为字符

string.indexOf：查找子字符串

string.left：从字符串左边截取字符串

string.mid：从字符串中截取字符串

string.ord：返回字符的ASCII码

string.replace：字符串替换

string.right：从字符串右边截取字符串

string.split：字符串分割

string.trim：移除字符串首尾空格

JSON库扩展

JSON是一种轻量级的数据交换格式，使用键值对来描述数据。JSON可以将任意数据转换成纯文本的JSON字符串，也可以将JSON字符串转换成之前对应的数据。更多详细可搜索互联网了解。

json.decode：json字符串转换成lua对象

json.encode：lua对象转换为json字符串

<上一篇:脚本引擎机制下一篇:核心回调函数>
本页标题
回调函数详解
回调自描述约定
脚本底层隐藏回调函数
核心回调函数
回调函数详解
通过前几节的介绍后，可以继续了解具体的事件回调函数了。

虽然服务器脚本接口封装层提供了大量的接口函数，但是脚本回调代理层提供的回调函数却非常少。

1).道具使用回调

C++copy 复制
bool main(const std::string& player, const std::string& item);
玩家使用道具后，该回调函数将会自动执行（道具挂载了脚本，并且有main函数）。同时，服务器会传递二个参数，即玩家GUID（ player ）和道具GUID（ item ）。

该回调函数的返回值非常重要——如果你想告诉服务器该道具使用成功，请让回调函数返回true。反之，返回false代表道具使用失败。

举例如下（item/祈福之书.lua）：

Luacopy 复制
function main(player, item)  --玩家使用祈福之书时自动执行
    local map = lualib:MapGuid(player)  --取得玩家当前地图的GUID
    if "祈福之地" == lualib:KeyName(map) then  --判断当前地图是不是祈福之地
        return true   --在祈福之地使用就成功
    end
    return false  --反之，祈福之书使用失败
end
2).道具创建回调（on_create）

C++copy 复制
void on_create(const std::string& item);
当道具创建后，该回调函数将会自动执行（道具挂载了脚本，并且有on_create函数）。同时，服务器会传递一个参数，创建道具的GUID（item）。该函数没有返回值。

举例如下（item/藏宝图.lua）：

Luacopy 复制
function on_create(item)  --藏宝图创建时自动执行
    if not treasure_map:set_dest_info(item) then  --生成藏宝图的挖宝地图坐标
        lualib:Error("藏宝图:on_create调用失败！")
    end
end
3).道具自检回调（on_timer_check）

C++copy 复制
void on_timer_check(const std::string& item);
服务器每运行一秒就会自动回调一次，以满足自检需求。

道具自检回调使用的情况非常特殊，要使用这个回调有一个前提：道具必须属于某一个玩家（道具挂载了脚本，并且有on_timer_check函数）。

如果道具掉落在地图上或在拍卖行中，自检回调不会被执行。回调时，服务器会传递一个参数，创建道具的GUID（item）。该函数没有返回值。

举例如下（item/神歌.lua）：

Luacopy 复制
local castle_weapon = "神歌"
function on_timer_check(item)
    local self = lualib:Item_GetRole(item)
    if self == "" then return end

    local count = lualib:ItemCountByKey(self, castle_weapon, true, true, true, 2)
    if count > 1 then
        lualib:DelItemEx(self, castle_weapon, count - 1, 2, true, true, true, true, "删物品：神歌自检", "神歌")
        lualib:SysMsg_SendWarnMsg(self, "这世间只存在一把神歌！")
    end

    local weapon_owner = lualib:IO_GetCustomVarStr("神歌城_leader_weapon")
    if weapon_owner ~= self then
        lualib:Item_Destroy(self, item, "删物品：神歌自检", "神歌")
        lualib:SysMsg_SendWarnMsg(self, "填城神器神歌已另择良主，望你好自为之！")
        lualib:SysMsg_SendCenterMsg(1, "填城神器神歌已另择良主，玩家"..lualib:Name(self).."失去了对它的拥有权！ ", "")
        return
    end
end
4).NPC对话回调

C++copy 复制
std::string main(const std::string& npc, const std::string& player);
玩家点击NPC后，该回调函数将会自动执行（NPC挂载了脚本，并且有main函数）。同时，服务器会传递二个参数，对话NPC的GUID（npc）和玩家的GUID（player）。

该回调函数的返回值非常重要： 返回NPC与玩家对话的内容。

举例如下（npc/士兵.lua）：

Luacopy 复制
function main(npc, player)
    msg = "我们不怕死，但是怕死得毫无价值！ \n \n"
    msg = msg.."<@likai#1 *01*离开> \n"
    return msg
end

function likai(npc, player, param)
    return param
end
当玩家跟NPC对话后，会弹出NPC对话面板。



让我们把视线放到高亮的那块代码：<@likai#1 *01*离开>，敏感的你可能已经嗅到了某种味道。没错，这是一种语法约定。

也许你已经无数次的见过这种写法，但从未了解过他们的具体含意。请让我暂且将这种约定命名为：回调自描述约定，关于这个约定的细节，我们在后面会详细讲解。

结合上图的例子，当玩家选择离开时，服务器会自动回调likai函数。

note_icon 备注
回调时的参数传递顺序，第一个参数npc=对话NPC的GUID，第二个参数player=玩家GUID，第三个参数param=1。

5).NPC创建回调（on_create）

当NPC被创建出来后，该回调函数将会自动执行（NPC挂载了脚本，并且有on_create函数）。同时：

C++copy 复制
void on_create(const std::string& npc);
服务器会传递一个参数，npc=创建NPC的GUID。该函数没有返回值。

先看一段使用中的例子吧（npc/天下第一.lua）：

Luacopy 复制
function on_create(npc) --天下第一NPC创建时自动执行
    npc_update(npc)  --给NPC自动改名
    lualib:AddTimer(npc, 1, 15000, -1, "on_timer_talk")
end
6).怪物对话回调

C++copy 复制
std::string main(const std::string& monster, const std::string& player);
怪物对话回调也是一种特殊回调。你必须将怪物配置成可对话类型（怪物挂载了脚本，并且有main函数），该回调才会生效。

回调时，服务器会传递二个参数，monster=对话怪物的GUID，player=玩家的GUID。

该回调函数的返回值非常重要：返回怪物与玩家对话的内容。

举例如下（monster/野马.lua）：

Luacopy 复制
function main(monster, player)
    --判断距离
    if lualib:Distance(monster, player) > catch_distance then
        lualib:SysWarnMsg(player, "离"..lualib:Name(monster).."太远无法抓捕！ ")
        return ""
    end
    --判断是否有绳索
    if lualib:ItemCountByKey(player, "套索", true, false, false, 2) <= 0 then
        lualib:SysWarnMsg(player, "没有套索，无法抓捕！")
        return ""
    end

    --开启抓捕进度条
    if lualib:ProgressBarStart(player, catch_wait_time, "抓捕", "catch_complete", "catch_abort", monster) == false then
        lualib:SysWarnMsg(player, "无法开记抓捕"..lualib:Name(monster).."进度条！ ")
        return ""
    end
    return ""
end
此例中，选择野马时开启对话，但是没有对话内容。同时开启抓捕进度条。具体的逻辑如果不明白没有关系，只要牢记怪物对话回调函数的用法就行了。

7).怪物创建回调（on_create）

C++copy 复制
void on_create(const std::string& monster);
当怪物被创建出来后，该回调函数将会自动执行（怪物挂载了脚本，并且有on_create函数）。同时，服务器会传递一个参数，monster=创建怪物的GUID。该函数没有返回值。

先看一段使用中的例子吧（monster/三重天妖盗.lua）

Luacopy 复制
function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack") --受攻击时触发on_attack
end
例子中用到了触发器，当怪物创建时给它添加“受攻击触发”的触发器。触发器的功能非常全面，当脚本程序员对系统有了全面的认识以后就会发现触发器也是开发一大利器。

但是在这一章它们不是重点，太过深入的细节只会让初学者望而脚步。

8).地图创建回调（on_map_create）

C++copy 复制
void on_map_create(const std::string& map);
当地图或副本被创建出来后，该回调函数将会自动执行（地图挂载了脚本，并且有on_map_create函数）。同时，服务器会传递一个参数，map=创建地图的GUID。该函数没有返回值。

先看一段使用中的例子吧（map/漂流岛.lua）

Luacopy 复制
function on_map_create(map)
    lualib:Print("漂流岛地图创建回调！")
    if not lualib:AddTimer(map, 1, 1740000, 1, "on_timer_close") then
        lualib:Error("漂流岛：添加关闭通知定时器失败！")
        return
    end
    lualib:Print("漂流岛：添加关闭通知定时器成功！")

    local monster_table = {{"恶魔守护者", 60}}
    for i = 1, table.getn(monster_table) do
        lualib:Map_BatchGenMonster(map, monster_table[i][1], monster_table[i][2], true)
    end
    lualib:Print("漂流岛：随机刷怪!")

    local npc_table = {{"恶魔之匣", 1}}
    for i = 1, table.getn(monster_table) do
        for j = 1, npc_table[i][2] do
            lualib:Map_GenNpcRnd(map, npc_table[i][1])
        end
    end
    lualib:Print("漂流岛：随机刷宝匣！")
end
这个例子实现的功能很简单，漂流岛创建之后刷一批怪再刷一批宝匣。

9).地图关闭回调（on_map_destroy）

C++copy 复制
void on_map_destroy(const std::string& map);
当地图或副本被销毁之前，该回调函数将会自动执行（地图挂载了脚本，并且有on_map_destroy函数）。同时，服务器会传递一个参数，map=销毁地图的GUID。该函数没有返回值。

关键点：回调时地图中的角色、NPC、怪物、道具都已经被销毁，但是地图资源还存在。正因为如此，在这个回调中不要尝试去操作地图中的角色、NPC、怪物、道具，因为它们已经都不存在了。

先看一段使用中的例子吧（map/漂流岛.lua）

Luacopy 复制
function on_map_destroy(map)
    lualib:Print("漂流岛：地图关闭！")
end
10).系统启动回调（on_system_start）

C++copy 复制
void on_system_start(void);
当游戏服务器开始启动，各个功能模块都初始化完成以后，系统会找到system/system.lua（如果存在），并且回调on_system_start函数用来通知脚本系统服务器已经启动完毕。该回调函数没有参数也没有返回值。

note_icon 备注
如果需要在系统启动完成后，处理一些额外任务。唯一做法就是关注该事件。

11).VIP物品使用回调

C++copy 复制
void main(const std::string& player, int vipid);
当玩家申请使用VIP物品功能时，系统会自动回调该函数(如果VIP物品有挂载脚本,并且函数存在)。通过该回调函数可以实现各种各样的VIP功能。player=使用VIP物品的玩家，vipid=VIP物品的ID。

关键点：要实现不同的VIP功能，唯一的做法就是关注该事件。

12).玩家接到任务时回调（on_accept）

C++copy 复制
void on_accept(const std::string& player, int quest_id);
当玩家接到某个任务时，系统会自动回调该函数（如果任务有挂载脚本，并且函数存在）。通过该回调函数可以实现某些任务配置完成不了的功能。player=接受任务的玩家，quest_id=任务ID。

关键点：如果某些需求用任务配置完成不了，可以回调脚本来实现需求。

13).玩家完成任务时回调（on_accomplish）

C++copy 复制
void on_accomplish (const std::string& player, int quest_id, int select);
当玩家完成某个任务时，系统会自动回调该函数（如果任务有挂载脚本，并且函数存在）。

通过该回调函数可以实现某些任务配置完成不了的功能。player=完成任务的玩家，quest_id=任务ID，select=可选奖励索引（0-3，共4个）。

关键点：如果某些需求用任务配置完成不了，可以回调脚本来实现需求。

14).玩家放弃任务时回调（on_drop）

C++copy 复制
void on_drop (const std::string& player, int quest_id);
当玩家放弃某个任务时，系统会自动回调该函数（如果任务有挂载脚本，并且函数存在）。通过该回调函数可以实现某些任务配置完成不了的功能。player=放弃任务的玩家，quest_id=任务ID。

关键点：如果某些需求用任务配置完成不了，可以回调脚本来实现需求。

15).任务是否可接判断回调（can_accept）

C++copy 复制
bool can_accept (const std::string& player, int quest_id);
当系统对某个玩家进行任务是否可接判断时，会自动回调该函数（如果任务有挂载脚本，并且函数存在）。

通过该回调函数可以实现某些任务配置完成不了的功能。player=判断任务的玩家，quest_id=任务ID。当返回值=true，表示任务可接。当返回值=false，强制任务不可接。

关键点：如果某些需求用任务配置完成不了，可以回调脚本来实现需求。该回调函数开销很大，请尽量少用。

16).任务是否可交判断回调（can_accomplish）

C++copy 复制
bool can_accomplish (const std::string& player, int quest_id);
当系统对某个玩家进行任务是否可交判断时，会自动回调该函数（如果任务有挂载脚本，并且函数存在）。

通过该回调函数可以实现某些任务配置完成不了的功能。player=判断任务的玩家，quest_id=任务ID。当返回值=true，表示任务可交。当返回值=false，强制任务不可交。

关键点：如果某些需求用任务配置完成不了，可以回调脚本来实现需求。该回调函数开销很大，请尽量少用。

17).技能使用前回调（pre_apply）

C++copy 复制
bool pre_apply (const std::string& player, int skill_id, x, y, target_list);
当玩家使用某个技能前，系统会自动回调该函数（如果技能有挂载脚本，并且函数存在）。

通过该回调函数可以实现某些技能配置完成不了的功能。player=使用技能的玩家，skill_id=技能ID。x,y是技能释放的目标的坐标target_list是技能锁定的目标列表。当返回值=true，可以使用该技能。当返回值=false，不可以使用该技能。

关键点：如果某些技能需求用配置完成不了，可以回调脚本来实现需求。

18).技能使用后回调（post_apply）

C++copy 复制
void post_apply (const std::string& player, int skill_id, x, y, target_list);
当玩家使用某个技能后，系统会自动回调该函数（如果技能有挂载脚本，并且函数存在）。

通过该回调函数可以实现某些技能配置完成不了的功能。player=使用技能的玩家，skill_id=技能ID。x,y是技能释放的目标的坐标 target_list是技能锁定的目标列表

关键点：如果某些技能需求用配置完成不了，可以回调脚本来实现需求。

19). 成就相关触发（OnTrigger）

C++copy 复制
void OnTrigger (glory_id, player, action, target, ref_value, target_name, map_name);
bool CheckComplete(glory_id, player);
当玩家做了某些操作：如升级、打怪时，如果在achievement.xml表中填写了脚本名称，便会触发相应脚本中的OnTrigger和CheckComplete函数。也可使用接口OnGloryTrigger来手动触发。

参数	参数描述
Glory_id	成就的ID
Player	玩家的GUID
Action	操作ID，详见logic_def.lua
Target	目标
Ref_value	参考值
Target_name	目标名称
Map_name	地图名称
关键点： OnTrigger一般用与计数，CheckComplete一般用于检测成就是否完成。

20).技能搜索目标回调（find_target）

C++copy 复制
std::string find_target (const std::string& player, const std::string& skill_name, uint16 target_x, uint16 target_y);
当玩家使用某个技能时，系统会自动回调该函数（如果技能有挂载脚本且函数存在，并且技能表配置中能力搜寻范围形状选择“脚本自定义”）。

通过该回调函数用户可以自定义技能的目标搜索形状，可以实现某些技能配置完成不了的功能。

player为使用技能的玩家，skill_name为要施放技能的名称，target_x为技能施放目标的横坐标，target_y为技能施放目标的纵坐标。返回值为需要搜索目标的横纵坐标组成的字符串。

关键点：返回的字符串必须为"1,2,3,4,5,6"的形式，程序会按","分割并且按每两个作为一对横纵坐标，来搜索这些坐标上是否有设定的技能施放目标的坐标。

21).冲撞和击退状态目标检查回调（check_repel_target）

C++copy 复制
bool check_repel_target (const std::string& actor, const std::string& skill_name, const std::string& target);
当玩家使用带击退和冲撞的技能时，系统会自动回调该函数（如果技能有挂载脚本，并且函数存在）。

通过该回调函数可以实现某些技能配置完成不了的功能。actor=使用技能的玩家，skill_name=技能名称，target=被选中的目标。返回值是true标示此目标被选中，false标示此目标忽略。

若要同时检查多个目标的冲撞和击退状态，则可使用回调函数check_repel_target_ex。

关键点：当冲撞或击退多个目标时，此函数会多次回调确定每个目标是否被选中。

22).活动开始回调（on_start）

当活动开始时，该回调函数将会自动执行（活动挂载了脚本，并且有on_start函数）。

同时，服务器会传递两个参数，创建活动的ID（id）和地图的GUID（map_guid）。该函数没有返回值。

23).活动开始宣告回调（on_start_decl）

当活动开始宣告时，该回调函数将会自动执行（活动挂载了脚本，并且有on_start_decl函数）。

同时，服务器会传递三个参数，创建活动的ID（id）、地图的GUID（map_guid）和剩余时间（times）。该函数没有返回值。

举例如下（campaign/精英竞技场组队赛玩法.lua）：

Luacopy 复制
------------------开始宣告--------------
function on_start_decl(id, map_guid, times)
    local times = tonumber(times)
    if times == 0 then
        ltszuduiqingli() --活动相关数据清理
        lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", "精英竞技场组队赛现已开始，想要参加的玩家请到龙城NPC竞技场报名官[226,219]处报名，参加比赛即有竞技场积分拿。", 15000)
    end
end
24).活动结束宣告回调（on_end_decl）

当活动结束宣告时，该回调函数将会自动执行（活动挂载了脚本，并且有on_end_decl函数）。

同时，服务器会传递三个参数，创建活动的ID（id）、地图的GUID（map_guid）和剩余时间（times）。该函数没有返回值。

举例如下（campaign/精英竞技场组队赛玩法.lua）：

Luacopy 复制
------------------结束宣告--------------
function on_end_decl(id, map_guid, times)
    local times = tonumber(times)
    if times == 0 then
        lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", "精英竞技组队赛现已结束，想要参加的玩家只能等待下次活动开启了。", 15000)
    end
end
25).点击“参与”传送回调（Goto）

当点击“传送”按钮进行传送时，该回调函数将会自动执行（活动挂载了脚本，并且有Goto函数）。

同时，服务器会传递三个参数，创建活动的ID（id）、玩家的GUID（player）和地图的GUID（map_guid）。该函数没有返回值。

举例如下（campaign/精英竞技场组队赛玩法.lua）：

Luacopy 复制
------------------活动面板传送------------------
function Goto(id,player,map_guid)
    local x = 240
    local y = 240
    local r = 3
    local map_key_name = "龙城"
    local gold = 1500
    local msg = ""
    
    if lualib:HasBuff(player,"摆摊") then
        lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
        return false
    end
    
    if not lualib:Player_IsGoldEnough(player, gold, false) then
        msg = msg.."当前传送需要1500金币"
        lualib:NPCTalk(player, msg)
        return true
    end

    if not lualib:Player_SubGold(player, gold, false, "扣金币", player) then
        msg = msg.."扣除金币失败"
        lualib:NPCTalk(player, msg)
        return true
    end
    
    if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
        lualib:SysMsg_SendWarnMsg(player, "")
    end
end
26).添加BUFF时回调（on_buff_add）

当全局表“是否开启BUFF添加删除的回调函数功能”选项设置为true且某角色添加了一个BUFF时，会调用BUFF模板表中配置的回调脚本中的on_buff_add函数。

同时，服务器会传递两个参数，角色的GUID（role_guid）和BUFF的模板ID（buff_id）。该函数没有返回值。

举例如下：

Luacopy 复制
function on_buff_add(role_guid, buff_id)
    lualib:Warn(lualib:Name(role_guid).." 添加buff "..buff_id)
end
27).删除BUFF时回调（on_buff_remove）

当全局表“是否开启BUFF添加删除的回调函数功能”选项设置为true且某角色删除了一个BUFF时，会调用BUFF模板表中配置的回调脚本中的on_buff_remove函数。

同时，服务器会传递两个参数，角色的GUID（role_guid）和BUFF的模板ID（buff_id）。该函数没有返回值。

举例如下：

Luacopy 复制
function on_buff_remove(role_guid, buff_id)
    lualib:Warn(lualib:Name(role_guid).." 删除buff "..buff_id)
end
28).冲撞和击退状态目标检查回调（扩展）（check_repel_target_ex）

C++copy 复制
lua_script::lua_table check_repel_target_ex (const std::string& actor, const std::string& skill_name, const lua_script::lua_table& targets);
当玩家使用带击退和冲撞的技能时，系统会自动回调该函数（如果技能有挂载脚本，并且函数存在）。

通过该回调函数可以实现某些技能配置完成不了的功能。

相关参数以及返回值说明如下：

actor：使用技能的玩家角色的GUID，数据类型为string；

skill_name：技能的名称，数据类型为string；

targets：被选中的目标的GUID数组，数据类型为table；

返回值：布尔值的数组（例如：{true, false, true}），与参数targets中的GUID一一对应（true代表此目标被选中，false代表此目标被忽略）。

备注：

1.相比于回调函数check_repel_target，此回调函数可同时检查多个目标的冲撞和击退状态。

2.若同时存在此回调函数和回调函数check_repel_target，则使用此回调函数的逻辑。

举例如下：

Luacopy 复制
function check_repel_target_ex(actor, skill_name, targets)
    local bool_t = {}
    for i = 1, #targets do
        bool_t[#bool_t + 1] = true
    end
    lualib:Warn(lualib:Name(actor).." 对【"..json.encode(targets).."】使用了技能 蛮力冲锋4级 方向"..lualib:Dir(actor))
    return bool_t
end

--此示例代码运行成功如下图所示。

--可同时检查2个目标的冲撞和击退状态。

check_repel_target_ex.png
29).镖车行走时回调（trigger_travel）

C++copy 复制
void trigger_travel(std::string guid, int step, int x, int y);
当镖车行走时，该回调函数将会自动执行（镖车挂载了脚本，并且有trigger_travel函数）。

同时，服务器会传递四个参数：镖车的GUID（guid）、镖车的行走步数（step）（从0开始）、镖车移动点的X坐标（x）和镖车移动点的Y坐标（y）。该函数没有返回值。

相关接口请参见：GenTraveler。

回调自描述约定
前面讲述NPC对话回调时，我们已经引入了“回调自描述约定”这个概念。

回调描述规则定义如下：

<@回调函数名#参数1#参数2...#参数n *01*函数描述符>

<@回调函数名 *01*函数描述符>

< > 代表中间的内容是语法约定。

@ 代表后面的是函数名。

# 代表后面的是参数值，参数值可以有多个用#号分隔开，注意所有的参数值都会转换成字符串值。

*01* 保留关键字，暂时按默认填写即可。紧跟后面的是函数描述文字。

当客户端收到对话内容后会解析其中的回调自描述约定，并且按照相应的格式显示出来：函数描术符会变成菜单项，点击该菜单项服务器就会执行对应的回调函数名，同时传递参数。

执行回调函数的规则,根据不同的使用场合有不同的定义：

1).NPC脚本中使用该约定

std::string 回调函数名(const std::string& npc，const std::string& player，const std::string&参数1...，const std::string& 参数n);
std::string 回调函数名(const std::string& npc，const std::string& player);
2).道具脚本中使用该约定

std::string 回调函数名(const std::string& player，const std::string& 参数1...，const std::string&参数n);
std::string 回调函数名(const std::string& player);
3).怪物脚本中使用该约定

std::string 回调函数名(const std::string& monster，const std::string& player，const std::string&参数1...，const std::string& 参数n);
std::string 回调函数名(const std::string& monster，const std::string& player);
下面再来看看为回调自描述约定而服务的扩展标记：

1).颜色扩展标记

#颜色描述符#内容#COLOREND#
颜色描述符	颜色	颜色对应的RGB值	颜色示例
COLORCOLOR_WHITE	白色	(255, 255, 255)	
COLORCOLOR_ORANGE	橙色	(246, 157, 61)	
COLORCOLOR_YELLOW	黄色	(252, 220, 4)	
COLORCOLOR_BLUE	蓝色	(22, 226, 171)	
COLORCOLOR_GREENG	青色	(121, 255, 53)	
COLORCOLOR_RED	桔红	(240, 65, 64)	
COLORCOLOR_MAGENTA	洋红	(252, 1, 166)	
COLORCOLOR_BROWN	棕色	(222, 199, 123)	
COLORCOLOR_GRAY	灰色	(98, 98, 98)	
COLORCOLOR_SKYBLUE	天蓝	(0, 255, 255)	
COLORCOLOR_GOLD	金色	(254, 226, 78)	
COLORCOLOR_PURPLE	紫色	(226, 65, 217)	
COLORCOLOR_PINK	粉色	(239, 112, 160)	
COLORCOLOR_BLACK	黑色	(0, 0, 0)	
COLORCOLOR_LIGHTBROWN	浅棕色	(93, 32, 4)	
COLORCOLOR_BROWN2	棕色2	(153, 107, 79)	
COLORCOLOR_GOLD2	金色2	(255, 199, 49)	
COLORCOLOR_DARKGREY	暗灰色	(67, 67, 67)	
COLORCOLOR_DARK	深色	(161, 149, 91)	
COLORCOLOR_BLUE2	蓝色2	(0, 30, 255)	
COLORCOLOR_PINK2	粉色2	(244, 137, 205)	
COLORCOLOR_PINK3	粉色3	(255, 0, 255)	
举例如下：

#COLORCOLOR_GOLD#离开#COLOREND#
客户端显示金色的“离开”菜单项

2).图标扩展标记

#IMAGE图标编号#
图标编号就是客户端图标资源的编号，具体设置请查看各自的客户端资源目录，或咨询策划。

举例如下：

#IMAGE1000##COLORCOLOR_GOLD#离开#COLOREND#
客户端显示资源编号为1000的图标和金色的“离开”菜单项

3).偏移扩展标记

#OFFSET<X:nx,Y:ny>#
nx：nx<0，标记之后的所有内容向左偏移nx的绝对值个像素；nx>0，标记之后的所有内容向右偏移nx个像素。

ny：ny<0，标记之后的所有内容向上偏移ny的绝对值个像素；ny>0，标记之后的所有内容向下偏移ny个像素。

举例如下：

#OFFSET##IMAGE1000##COLORCOLOR_GOLD#离开#COLOREND#
客户端向上偏移5个像素，显示资源编号为1000的图标和金色的“离开”菜单项。

脚本底层隐藏回调函数
1).脚本初始化完成回调

C++copy 复制
void OnStateInit(void);
当LUA脚本初始化完成以后,系统会自动回调OnStateInit函数(如果该函数存在).该回调可以让脚本作者有机会做一些初始化动作。

note_icon 备注
OnStateInit回调里只能调用日志、定时器、GS变量、DB变量、DB事件相关接口，否则会造成服务器启动时宕机。

2).脚本释放前回调

C++copy 复制
void OnStateUnInit(void);
当LUA脚本释放系统资源以前，系统会自动回调OnStateUnInit函数(如果该函数存在)。该回调可以让脚本作者有机会做一些资源清除动作。

<上一篇:脚本引擎的分层架构
GenRandom
生成随机数

更新时间：2021-09-07 00:00:00
此函数执行生成随机数的操作。

语法
Luacopy 复制
lualib:GenRandom(
    iMin,
    iMax
)

参数
iMin

int32

 
最小值

iMax

int32

 
最大值

返回值
int32

 返回随机数，其范围在设定的最大值（含）和最小值（含）之间。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GenRandom(1, 10)        --在1到10之间取随机值
下一篇:取模运算>
Mod
取模运算

更新时间：2021-09-07 00:00:00
此函数作用为取模运算。

语法
Luacopy 复制
lualib:Mod(
    iMaster,
    iSlave
)

参数
iMaster

int32

 
被除数

iSlave

int32

 
除数

返回值
int32

 求模值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:生成随机数下一篇:int64类型数据的四则运算>
number_arithmetic
int64类型数据的四则运算

更新时间：2021-09-07 00:00:00
此函数增加对int64类型数据的四则运算支持。

语法
Luacopy 复制
lualib:number_arithmetic(
    value1,
    value2,
    opreate
)

参数
value1

string

 
第一个int64类型数字的字符串格式

value2

string

 
第二个int64类型数字的字符串格式

opreate

string

 
运算符，支持的类型如下：

+，-，*，/

note_icon 备注
如果value1和value2都必须在int64类型数值的范围内，opreate 必须是 "+"，"-"，"*"，"/"，注意除法是按整数除法来运算。

返回值
string

 若执行成功，则返回计算结果数字的字符串格式；若执行失败，则返回""。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:取模运算下一篇:int64类型数据的逻辑运算>
number_logic
int64类型数据的逻辑运算

更新时间：2021-09-07 00:00:00
此函数增加对int64类型数据的逻辑运算支持。

语法
Luacopy 复制
lualib:number_logic(
    value1,
    value2,
    opreate
)

参数
value1

string

 
第一个int64类型数字的字符串格式

value2

string

 
第二个int64类型数字的字符串格式

opreate

string

 
运算符，支持的类型如下：

==，>=，<=，>，<，~=

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
<上一篇:int64类型数据的四则运算
Guid2Number
GUID字符串转为十进制字符串

更新时间：2021-09-07 00:00:00
此函数将引擎使用的GUID字符串转为十进制字符串。

语法
Luacopy 复制
lualib:Guid2Number(
    guid
)

参数
guid

string

 
引擎中使用的GUID(32进制表示)

返回值
string

 纯阿拉伯数字表示的GUID(10进制表示)
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:将数字表示的GUID转为引擎用GUID>
Number2Guid
将数字表示的GUID转为引擎用GUID

更新时间：2021-09-07 00:00:00
此函数将纯阿拉伯数字表示的字符串转化为引擎使用的GUID字符串。

语法
Luacopy 复制
lualib:Number2Guid(
    number
)

参数
number

string

 
纯阿拉伯数字表示的GUID(10进制表示)

返回值
string

 引擎中使用的GUID(32进制表示)
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:GUID字符串转为十进制字符串下一篇:获取玩家或英雄的GUID>
UUIDToGUID
获取玩家或英雄的GUID

更新时间：2021-09-07 00:00:00
此函数根据玩家或者英雄的UUID获得其GUID。

caution_icon 注意
此函数效率较低，请不要频繁使用。

语法
Luacopy 复制
lualib:UUIDToGUID(
    player_uuid
)

参数
player_uuid

string

 
玩家或者英雄的UUID

返回值
string

 玩家或者英雄的GUID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--首先获取玩家角色的UUID，再根据玩家角色的UUID获取玩家的GUID，最后根据玩家的GUID获取玩家的角色名。
lualib:Warn("角色名 : "..lualib:Name(lualib:UUIDToGUID(lualib:GetPlayerUUID(player))))

--此示例代码运行成功如下图所示。

UUIDToGUID.png
<上一篇:将数字表示的GUID转为引擎用GUID
json.decode
JSON字符串转换成lua对象

更新时间：2023-05-12 00:00:00
此函数将JSON格式的字符串转换成Lua对象，对象可以为数字、字符串或表。

语法
Luacopy 复制
json.decode(
    strJson
)

参数
strJson

string

 
JSON字符串

返回值
object

 Lua对象
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:lua对象转换为json字符串>
json.encode
lua对象转换为json字符串

更新时间：2023-05-12 00:00:00
此函数将Lua对象转换成JSON格式的字符串，对象可以是数值、字符串或表。

caution_icon 注意
若lua对象中有字符串，则必须为GBK编码格式。

语法
Luacopy 复制
json.encode(
    oObject
)

参数
oObject

object

 
任意Lua对象

返回值
string

 JSON字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local tb = {"哈哈", "啦啦", "嘿嘿"}  
local str = json.encode(tb)  
lualib:SetDBStr("test", str)
<上一篇:JSON字符串转换成lua对象
Base64Decode
将字符串进行BASE64解码

更新时间：2021-09-07 00:00:00
此函数将字符串进行BASE64解码。

语法
Luacopy 复制
lualib:Base64Decode(
    strString
)

参数
strString

string

 
字符串

返回值
string

 解编码后的字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:将字符串进行BASE64编码>
Base64Encode
将字符串进行BASE64编码

更新时间：2021-09-07 00:00:00
此函数将字符串进行BASE64编码。

语法
Luacopy 复制
lualib:Base64Encode(
    strString
)

参数
strString

string

 
字符串

返回值
string

 编码后的字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:将字符串进行BASE64解码下一篇:GBK转UTF8编码>
GBKToUTF8
GBK转UTF8编码

更新时间：2021-09-07 00:00:00
此函数将GBK编码的字符串转为UTF8编码。

语法
Luacopy 复制
lualib:GBKToUTF8(
    strGbk
)

参数
strGbk

string

 
GBK编码字符串

返回值
string

 UTF8编码字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:将字符串进行BASE64编码下一篇:UTF8编码转GBK编码>
UTF8ToGBK
UTF8编码转GBK编码

更新时间：2021-09-07 00:00:00
此函数将UTF8编码的字符串转为GBK编码。

语法
Luacopy 复制
lualib:UTF8ToGBK(
    strUtf8
)

参数
strUtf8

string

 
UTF8编码字符串

返回值
string

 GBK编码字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:GBK转UTF8编码
Debug
打印调试日志

更新时间：2021-09-07 00:00:00
此函数记录类型为DBG的日志。

参考 Print Warn Error

caution_icon警告
若无必要，无需打印日志。大量记录日志会对服务器性能带来一些影响。

语法
Luacopy 复制
lualib:Debug(
    strMsg
)

参数
strMsg

string

 
日志内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Debug("副本：镇魔殿创建成功！")
下一篇:打印错误日志>
Error
打印错误日志

更新时间：2021-09-07 00:00:00
此函数记录类型为CRI的日志。

参考 Print Debug Warn

caution_icon警告
若无必要，无需打印日志。大量记录日志会对服务器性能带来一些影响。

语法
Luacopy 复制
lualib:Error(
    strMsg
)

参数
strMsg

string

 
日志内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Error("副本：镇魔殿创建失败！")  
 
<上一篇:打印调试日志下一篇:上传角色的物品操作行程日志>
LogDetailWithId
上传角色的物品操作行程日志

更新时间：2022-05-05 00:00:00
此函数向日志服务器上传角色的物品操作行程日志。

所有的记录通过服务器后台都可以查询到,由脚本作者自己保证日志的正确性。

服务器代码中所有跟聊天、GM指令、元宝、金币、物品和角色属性等相关的操作都会记录在日志服务器里。

语法
Luacopy 复制
lualib:LogDetailWithId(
    strRoleName,
    iAction,
    strItemKey,
    strItem,
    iSrcValue,
    iRefValue,
    strDescript,
    strTarget,
    strDetail
)

参数
strRoleName

string

 
角色的名称

iAction

int

 
日志类型

具体请参见日志类型定义页面

strItemKey

string

 
物品的索引名（KeyName）

strItem

string

 
物品的GUID

iSrcValue

int32

 
物品原来的数量

iRefValue

int32

 
物品改变后的数量

strDescript

string

 
物品某数值作出改变的原因

strTarget

string

 
造成物品某数值作出改变的发起者

strDetail

string

 
具体细节

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint2(npc,player)
    local strTime = lualib:Now() --获取当前时间
    local svrid = lualib:GetZoneId() --获取区ID
    local accountName = lualib:AccountName(player) --获取玩家的账号名
    local name = lualib:Name(player) --获取玩家的名称
    local level = lualib:Level(player) --获取玩家的等级
    
    local msg = strTime.."  "..svrid.."  "
    msg = msg ..accountName.."  "..player.."  "
    msg = msg ..name.."  "..level.."  "  
    
    lualib:LogDetailWithId( name, 1010, "", "", 0, 0, "测试日志", "", msg ) --上传角色的物品操作行程日志
end
<上一篇:打印错误日志下一篇:上传角色的物品操作行程日志>
LogDetail
上传角色的物品操作行程日志

更新时间：2022-05-05 00:00:00
此函数向日志服务器上传角色的物品操作行程日志。

所有的记录通过服务器后台都可以查询到，由脚本作者自己保证日志的正确性。

服务器代码中所有跟聊天、GM指令、元宝、金币、物品、角色属性等相关的操作都会记录在日志服务器里。

语法
Luacopy 复制
lualib:LogDetail(
    strRoleName,
    strItemKey,
    strItem,
    iSrcValue,
    iRefValue,
    strDescript,
    strTarget,
    strDetail
)

参数
strRoleName

string

 
角色的名称

strItemKey

string

 
物品的索引名（KeyName）

strItem

string

 
物品的GUID

iSrcValue

int32

 
物品原来的数量

iRefValue

int32

 
物品改变后的数量

strDescript

string

 
物品某数值作出改变的原因

strTarget

string

 
造成物品某数值作出改变的发起者

strDetail

string

 
具体细节

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--担保交易.lua                
if not lualib:Mail("系统", playerName, "因为网络原因，您商品担保交易提交失败，返回你的物品，请稍后再试！", num, 0, {}) then                  
    lualib:LogDetail(playerName, "担保交易", "担保交易", 0, 0, param, "")              
end
<上一篇:上传角色的物品操作行程日志下一篇:上传角色的物品操作行程日志>
LogWithId
上传角色的物品操作行程日志

更新时间：2022-05-05 00:00:00
此函数向日志服务器上传角色的物品操作行程日志。

所有的记录通过服务器后台都可以查询到，由脚本作者自己保证日志的正确性。

服务器代码中所有跟聊天、GM指令、元宝、金币、物品、角色属性等相关的操作都会记录在日志服务器里。

语法
Luacopy 复制
lualib:LogWithId(
    strRoleName,
    iAction,
    strItemKey,
    strItem,
    iSrcValue,
    iRefValue,
    strDescript,
    strTarget
)

参数
strRoleName

string

 
角色的名称

iAction

int

 
日志类型

具体请参见日志类型定义页面

strItemKey

string

 
物品的索引名（KeyName）

strItem

string

 
物品的GUID

iSrcValue

int32

 
物品原来的数量

iRefValue

int32

 
物品改变后的数量

strDescript

string

 
物品某数值作出改变的原因

strTarget

string

 
造成物品某数值作出改变的发起者

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:上传角色的物品操作行程日志下一篇:上传角色的物品操作行程日志>
Log
上传角色的物品操作行程日志

更新时间：2022-05-05 00:00:00
此函数向日志服务器上传角色的物品操作行程日志。

所有的记录通过服务器后台都可以查询到，由脚本作者自己保证日志的正确性。

服务器代码中所有与聊天、GM指令、元宝、金币、物品和角色属性等相关的操作都会记录在日志服务器里。

语法
Luacopy 复制
lualib:Log(
    strRoleName,
    strItemKey,
    strItem,
    iSrcValue,
    iRefValue,
    strDescript,
    strTarget
)

参数
strRoleName

string

 
角色的名称

strItemKey

string

 
物品的索引名（KeyName）

strItem

string

 
物品的GUID

iSrcValue

int32

 
物品原来的数量

iRefValue

int32

 
物品改变后的数量

strDescript

string

 
物品某数值作出改变的原因

strTarget

string

 
造成物品某数值作出改变的发起者

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--中级物攻精炼符.lua     
lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, target_item), target_item, refine_level, new_refine_level, "精炼成功", item_key_name)
<上一篇:上传角色的物品操作行程日志下一篇:打印信息日志>
Print
打印信息日志

更新时间：2021-09-07 00:00:00
此函数记录类型为INF的日志。

参考 Debug Warn Error

caution_icon警告
若无必要，无需打印日志。大量记录日志会对服务器性能带来一些影响。

语法
Luacopy 复制
lualib:Print(
    strMsg
)

参数
strMsg

string

 
日志内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Print("骷髅王出现！")
<上一篇:上传角色的物品操作行程日志下一篇:设置日志开关>
SetLog
设置日志开关

更新时间：2021-09-07 00:00:00
此函数打开或关闭某一级别的日志。

语法
Luacopy 复制
lualib:SetLog(
    log_level,
    is_open
)

参数
log_level

int32

 
日志级别

1调试

2信息

4警告

8错误

is_open

bool

 
是否打开

true打开

false关闭

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetLog(1, true)
<上一篇:打印信息日志下一篇:打印警告日志>
Warn
打印警告日志

更新时间：2021-09-07 00:00:00
此函数记录类型为WRN的日志。

参考 Print Debug Error

caution_icon警告
若无必要，无需打印日志。大量记录日志会对服务器性能带来一些影响。

语法
Luacopy 复制
lualib:Warn(
    strMsg
)

参数
strMsg

string

 
日志内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置日志开关
GetAllDBVars
获取所有的数据库变量

更新时间：2021-09-07 00:00:00
此函数获取所有的数据库变量。

语法
Luacopy 复制
lualib:GetAllDBVars()

参数
无

返回值
table

 返回所有数据库变量，存储在lua表中。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test()
    local ret = lualib:GetAllDBVars()
    -- 打印所有DB变量
    for k,v in ipairs(ret) do
        local var_type = v[1]    --变量类型 0 num 1 str
        local var_key = v[2]     --变量key
        local var_value = v[3]   --变量的值
        local merge_type = v[4]  --变量合区类型, 参考接口SetDBNumEx和SetDBStrEx
    end
end
下一篇:获取数据库上设置的数值型天变量>
GetDBDayInt
获取数据库上设置的数值型天变量

更新时间：2021-09-07 00:00:00
此函数获取数据库上设置的数值型天变量。

语法
Luacopy 复制
lualib:GetDBDayInt(
    strKey
)
参数
strKey

string

 
变量名

返回值
int

 
若变量未跨天则返回对应的变量值

若变量已跨天则返回0

note_icon 备注
变量是否跨天根据接口lualib:SetDBDayInt中设置的变量失效的时间点来判断。

当前时间点在变量失效的时间点前，则代表变量未跨天；

当前时间点在变量失效的时间点及变量失效的时间点后，则代表变量已跨天。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在数据库上设置一个数值型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayInt("测试数值型天变量", 123123, 10, 50, 0, 0) then
    lualib:Warn("测试数值型天变量 : "..lualib:GetDBDayInt("测试数值型天变量")) --获取数据库上设置的数值型天变量
end
--在数据库上设置一个字符型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayStr("测试字符型天变量", "总冠军", 10, 50, 0, 0) then
    lualib:Warn("测试字符型天变量 : "..lualib:GetDBDayStr("测试字符型天变量")) --获取数据库上设置的字符型天变量
end

--此示例代码在10：50：00前运行效果如下图所示。

SetDBDayInt.png

--此示例代码在10：50：00前运行效果如下图所示。

GetDBDayInt.png
<上一篇:获取所有的数据库变量下一篇:获取数据库上设置的字符型天变量>
GetDBDayStr
获取数据库上设置的字符型天变量

更新时间：2021-09-07 00:00:00
此函数获取数据库上设置的字符型天变量。

语法
Luacopy 复制
lualib:GetDBDayStr(
    strKey
)
参数
strKey

string

 
变量名

返回值
string

 
若变量未跨天则返回对应的变量值

若变量已跨天则返回""

note_icon 备注
变量是否跨天根据接口lualib:SetDBDayStr中设置的变量失效的时间点来判断。

当前时间点在变量失效的时间点前，则代表变量未跨天；

当前时间点在变量失效的时间点及变量失效的时间点后，则代表变量已跨天。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在数据库上设置一个数值型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayInt("测试数值型天变量", 123123, 10, 50, 0, 0) then
    lualib:Warn("测试数值型天变量 : "..lualib:GetDBDayInt("测试数值型天变量")) --获取数据库上设置的数值型天变量
end
--在数据库上设置一个字符型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayStr("测试字符型天变量", "总冠军", 10, 50, 0, 0) then
    lualib:Warn("测试字符型天变量 : "..lualib:GetDBDayStr("测试字符型天变量")) --获取数据库上设置的字符型天变量
end

--此示例代码在10：50：00前运行效果如下图所示。

SetDBDayInt.png

--此示例代码在10：50：00前运行效果如下图所示。

GetDBDayInt.png
<上一篇:获取数据库上设置的数值型天变量下一篇:获取数据库变量合区类型>
GetDBNumMergeType
获取数据库变量合区类型

更新时间：2021-09-18 00:00:00
此函数获取数据库变量合区类型。

语法
Luacopy 复制
lualib:GetDBNumMergeType(
    strKey,
    value_type
)
参数
strKey

string

 
变量名

value_type

uint8

 
变量类型

0数值型变量

1字符型变量

返回值
int

 
变量合区类型：

-1此变量不存在

0忽略，合区时保留目标区数据库数据

1替换，合区时保留源区（即被合区）数据库数据

2取大，合区时取大的数据（只针对数值型变量）

3取小，合区时取小的数据（只针对数值型变量）

4相加，合区时结果相加（只针对数值型变量）

5相连，合区时结果相连（只针对字符型变量）

6删除，合区时清除

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(npc, player)
    lualib:SetDBNumEx("testBDNum0", "100", 0) --设置数据库中存储数值型变量testBDNum0的变量值为100，合区类型为0。
    lualib:SetDBNumEx("testBDNum1", "100", 1) --设置数据库中存储数值型变量testBDNum1的变量值为100，合区类型为1。
    lualib:SetDBNumEx("testBDNum2", "100", 2) --设置数据库中存储数值型变量testBDNum2的变量值为100，合区类型为2。
    lualib:SetDBNumEx("testBDNum3", "100", 3) --设置数据库中存储数值型变量testBDNum3的变量值为100，合区类型为3。
    lualib:SetDBNumEx("testBDNum4", "100", 4) --设置数据库中存储数值型变量testBDNum4的变量值为100，合区类型为4。
    lualib:SetDBNumEx("testBDNum6", "100", 6) --设置数据库中存储数值型变量testBDNum6的变量值为100，合区类型为6。

    lualib:SetDBStrEx("testBDStr0", "100", 0) --设置数据库中存储字符型变量testBDStr0的变量值为100，合区类型为0。
    lualib:SetDBStrEx("testBDStr1", "100", 1) --设置数据库中存储字符型变量testBDStr1的变量值为100，合区类型为1。
    lualib:SetDBStrEx("testBDStr5", "100", 5) --设置数据库中存储字符型变量testBDStr5的变量值为100，合区类型为5。
    lualib:SetDBStrEx("testBDStr6", "100", 6) --设置数据库中存储字符型变量testBDStr6的变量值为100，合区类型为6。
    
    --获取数据库中数值型变量的合区类型
    for i = 0 ,6 do
        local data = lualib:GetDBNumMergeType("testBDNum"..i,0)
        lualib:Warn("testBDNum"..i.."合区类型:"..data)
    end

    --获取数据库中字符型变量的合区类型
    for i = 0 ,6 do
        local data = lualib:GetDBNumMergeType("testBDStr"..i,1)
        lualib:Warn("testBDStr"..i.."合区类型:"..data)
    end
end

--此示例代码运行成功如下图所示。

GetDBNumMergeType.png
<上一篇:获取数据库上设置的字符型天变量下一篇:获取数据库中存储的数值型变量>
GetDBNum
获取数据库中存储的数值型变量

更新时间：2021-09-07 00:00:00
此函数获取数据库中存储的数值型变量。

语法
Luacopy 复制
lualib:GetDBNum(
    strKey
)

参数
strKey

string

 
变量名

返回值
double

 变量值
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:GetDBNum("PI")
<上一篇:获取数据库变量合区类型下一篇:获取数据库中存储的字符型变量>
GetDBStr
获取数据库中存储的字符型变量

更新时间：2021-09-07 00:00:00
此函数获取数据库中存储的字符型变量。

语法
Luacopy 复制
lualib:GetDBStr(
    strKey
)

参数
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
local PI = lualib:GetDBStr("PI")
<上一篇:获取数据库中存储的数值型变量下一篇:投递数据库事件>
PostDBEvt
投递数据库事件

更新时间：2021-09-07 00:00:00
此函数投递数据库事件让服务器执行，执行完成后回调到指定脚本的指定函数。

caution_icon警告
此接口对性能可能带来些许影响，请谨慎使用。

语法
Luacopy 复制
lualib:PostDBEvt(
    strSQL,
    strCallBack,
    strParam
)

参数
strSQL

string

 
要执行的SQL语句

note_icon 备注
为了数据库安全性，只支持CREAT、SELECT、INSERT、UPDATE、DROP、DELETE和REPLACE六种语法。

所有的表名和字段名都必须以DATA_***的形式定义。

strCallBack

string

 
回调函数名

格式：1 = 文件名:函数名 2 = 函数名

回调函数格式：OnDBEvtResult(bResult, dwError, strError, iResultNum, tRecordSets, strParam)

bResult(bool)：执行结果

dwError(int)：错误码

strError(string)：错误信息

iResultNum(int)：没有结果集的语句影响的结果数

tRecordSets(table)：有结果集的语句产生的结果集

strParam(string)：自定义参数

strParam

string

 
自定义参数

由脚本作者自行维护，方便上下文切换，回调时按原样传回。

返回值
bool

 
true投递成功

false投递失败

note_icon 备注
由于数据库事件是异步的，所以返回值只表示事件投递是否成功，而不是SQL执行是否成功。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:PostDBEvt("create table DATA_test(DATA_num1 int,DATA_num2 int)", "PostDBEvtCallBack", "") --建表
lualib:PostDBEvt("insert into DATA_test(DATA_num1,DATA_num2) values(1,2)", "PostDBEvtCallBack", "") --插入数据
lualib:PostDBEvt("insert into DATA_test(DATA_num1,DATA_num2) values(3,4)", "PostDBEvtCallBack", "") --插入数据
lualib:PostDBEvt("insert into DATA_test(DATA_num1,DATA_num2) values(1,2)", "PostDBEvtCallBack", "") --插入数据
lualib:PostDBEvt("insert into DATA_test(DATA_num1,DATA_num2) values(3,4)", "PostDBEvtCallBack", "") --插入数据
lualib:PostDBEvt("select * from DATA_test", "PostDBEvtCallBack", "") --查表
lualib:PostDBEvt("drop table DATA_test", "PostDBEvtCallBack", "") --删表

function PostDBEvtCallBack(bResult, dwError, strError, iResultNum, tRecordSets)
    --bResult:执行结果
    --dwError:错误码
    --strError:错误信息
    --iResultNum:没有结果集的语句影响的结果数
    --tRecordSets:有结果集的语句产生的结果集
	
    --获取tRecordSets的相关信息
    if bResult == true then
        lualib:Warn("tRecordSets_type = "..type(tRecordSets))
        lualib:Warn("tRecordSets_rowNum = "..#tRecordSets)
        for i = 1, #tRecordSets do
            for k,v in pairs(tRecordSets[i]) do
                lualib:Warn("tRecordSets["..i.."]["..k.."]".." = "..v)
            end
        end
    else
        lualib:Warn("错误码："..dwError.." "..strError)
    end
end

--此示例代码运行成功如下图所示。

PostDBEvt.png
<上一篇:获取数据库中存储的字符型变量下一篇:在数据库上设置数值型天变量>
SetDBDayInt
在数据库上设置数值型天变量

更新时间：2021-09-18 00:00:00
此函数在数据库上设置数值型天变量，跨天后变量会失效。

此函数可自定义变量初始化（即变量失效）的时间点。

语法
Luacopy 复制
lualib:SetDBDayInt(
    strKey,
    iValue,
    hour,
    minute,
    second,
    type
)
参数
strKey

string

 
变量名

iValue

int

 
变量值

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

type

uint8

 
变量合区类型

0忽略，合区时保留目标区数据库数据

1替换，合区时保留源区（即被合区）数据库数据

2取大，合区时取大的数据

3取小，合区时取小的数据

4相加，合区时结果相加

6删除，合区时清除

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在数据库上设置一个数值型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayInt("测试数值型天变量", 123123, 10, 50, 0, 0) then
    lualib:Warn("测试数值型天变量 : "..lualib:GetDBDayInt("测试数值型天变量")) --获取数据库上设置的数值型天变量
end
--在数据库上设置一个字符型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayStr("测试字符型天变量", "总冠军", 10, 50, 0, 0) then
    lualib:Warn("测试字符型天变量 : "..lualib:GetDBDayStr("测试字符型天变量")) --获取数据库上设置的字符型天变量
end

--此示例代码在10：50：00前运行效果如下图所示。

SetDBDayInt.png

--此示例代码在10：50：00前运行效果如下图所示。

GetDBDayInt.png
<上一篇:投递数据库事件下一篇:在数据库上设置字符型天变量>
SetDBDayStr
在数据库上设置字符型天变量

更新时间：2021-09-18 00:00:00
此函数在数据库上设置字符型天变量，跨天后变量会失效。

此函数可自定义变量初始化（即变量失效）的时间点。

语法
Luacopy 复制
lualib:SetDBDayStr(
    strKey,
    strValue,
    hour,
    minute,
    second,
    type
)
参数
strKey

string

 
变量名

strValue

string

 
变量值

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

type

uint8

 
变量合区类型

0忽略，合区时保留目标区数据库数据

1替换，合区时保留源区（即被合区）数据库数据

5相连，合区时结果相连

6删除，合区时清除

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--在数据库上设置一个数值型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayInt("测试数值型天变量", 123123, 10, 50, 0, 0) then
    lualib:Warn("测试数值型天变量 : "..lualib:GetDBDayInt("测试数值型天变量")) --获取数据库上设置的数值型天变量
end
--在数据库上设置一个字符型天变量，每天在10：50：00时刷新变量的值。
if lualib:SetDBDayStr("测试字符型天变量", "总冠军", 10, 50, 0, 0) then
    lualib:Warn("测试字符型天变量 : "..lualib:GetDBDayStr("测试字符型天变量")) --获取数据库上设置的字符型天变量
end

--此示例代码在10：50：00前运行效果如下图所示。

SetDBDayInt.png

--此示例代码在10：50：00前运行效果如下图所示。

GetDBDayInt.png
<上一篇:在数据库上设置数值型天变量下一篇:设置数据表合区类型>
SetDBMerge
设置数据表合区类型

更新时间：2021-09-18 00:00:00
此函数设置LUA数据表合区类型，执行完成以后回调到指定脚本的指定函数。

caution_icon警告
此接口对性能可能带来些许影响，请谨慎使用。

语法
Luacopy 复制
lualib:SetDBMerge(
    strDatabaseName,
    byType,
    strCallBack,
    strParam
)

参数
strDatabaseName

string

 
数据库表必须以DATA_***的形式定义

byType

uint8

 
变量合区类型

0忽略，合区时保留目标区数据库数据

1替换，合区时保留源区（即被合区）数据库数据

2取大，合区时取大的数据，只对整型生效

3取小，合区时取小的数据，只对整形生效

4相加，合区时结果相加，只对整形生效

5相连，合区时结果相连，只对字符串生效

6删除，合区时清除

strCallBack

string

 
回调函数名

格式：1 = 文件名:函数名 2 = 函数名

回调函数格式：OnDBEvtResult(bResult, dwError, strError, iResultNum, tRecordSets, strParam)

bResult(bool)：执行结果

dwError(int)：错误码

strError(string)：错误信息

iResultNum(int)：没有结果集的语句影响的结果数

tRecordSets(table)：有结果集的语句产生的结果集

strParam(string)：自定义参数

strParam

string

 
自定义参数。由脚本作者自行维护，方便上下文切换，回调时按原样传回。

返回值
bool

 返回投递是否成功。由于数据库事件是异步的，所以返回值只表示事件投递是否成功，而不是SQL执行是否成功。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetDBMerge("DATA_MERGE", 1, "SetDBMergeCallBack", "")	--设置数据表合区类型

function SetDBMergeCallBack(bResult, dwError, strError, iResultNum, tRecordSets)
    --bResult:执行结果
    --dwError:错误码
    --strError:错误信息
    --iResultNum:没有结果集的语句影响的结果数
    --tRecordSets:有结果集的语句产生的结果集
    if bResult == true then
        lualib:Print("设置数据表合区类型成功！\n"..iResultNum.."\n"..tRecordSets)
    else
        lualib:Print("错误码："..dwError.." "..strError)
    end
end
<上一篇:在数据库上设置字符型天变量下一篇:设置数据库中存储数值型变量（扩展）>
SetDBNumEx
设置数据库中存储数值型变量（扩展）

更新时间：2022-05-13 00:00:00
此函数设置数据库中存储数值型变量。

语法
Luacopy 复制
lualib:SetDBNumEx(
    strKey,
    dbValue,
    byType
)

参数
strKey

string

 
变量名

dbValue

double

 
变量值

byType

uint8

 
变量合区类型

0忽略，合区时保留目标区数据库数据。

1替换，合区时保留源区（即被合区）数据库数据。

2取大，合区时取大的数据，只对整型生效。

3取小，合区时取小的数据，只对整型生效。

4相加，合区时结果相加，只对整型生效。

5相连，合区时结果相连，只对字符串生效。

6删除，合区时清除。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetDBNumEx("PI", 3.14, 0)
<上一篇:设置数据表合区类型下一篇:设置数据库中存储数值型变量>
SetDBNum
设置数据库中存储数值型变量

更新时间：2021-09-07 00:00:00
此函数设置数据库中存储数值型变量。

语法
Luacopy 复制
lualib:SetDBNum(
    strKey,
    dbValue
)

参数
strKey

string

 
变量名

dbValue

double

 
变量值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetDBNum("PI", 3.14)  
<上一篇:设置数据库中存储数值型变量（扩展）下一篇:设置数据库中存储字符型变量（扩展）>
SetDBStrEx
设置数据库中存储字符型变量（扩展）

更新时间：2021-09-18 00:00:00
此函数设置数据库中存储字符型变量。

语法
Luacopy 复制
lualib:SetDBStrEx(
    strKey,
    dbValue,
    byType
)

参数
strKey

string

 
变量名

dbValue

string

 
变量值

byType

uint8

 
变量合区类型

0忽略，合区时保留目标区数据库数据。

1替换，合区时保留源区（即被合区）数据库数据。

2取大，合区时取大的数据，只对整型生效。

3取小，合区时取小的数据，只对整型生效。

4相加，合区时结果相加，只对整型生效。

5相连，合区时结果相连，只对字符串生效。

6删除，合区时清除。

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetDBStrEx("PI", "3.14", 0)
<上一篇:设置数据库中存储数值型变量下一篇:设置数据库中存储字符型变量>
SetDBStr
设置数据库中存储字符型变量

更新时间：2021-09-07 00:00:00
此函数设置数据库中存储字符型变量。

语法
Luacopy 复制
lualib:SetDBStr(
    strKey,
    strValue
)

参数
strKey

string

 
变量名

strValue

string

 
变量值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetDBStr("PI", "3.1415926")  
<上一篇:设置数据库中存储字符型变量（扩展）
GSRunScript
让GS里所有人执行一段脚本

更新时间：2021-09-07 00:00:00
此函数让GS里所有人执行一段脚本。

note_icon 备注
该接口是异步的，接口返回成功并不代表脚本执行成功。

语法
Luacopy 复制
lualib:GSRunScript(
    strCallBack,
    strParam
)

参数
strCallBack

string

 
执行的函数

格式：1 = 文件名:函数名 2 = 文件名

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：玩家的GUID

strParam(string)：自定义参数

strParam

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--user_cmd.lua  
       
function DisableEquipEx(player, param)  
    --省略部分代码  
    lualib:GSRunScript("DisableEquipImpl", param) --让本服务器内所有人执行脚本中的函数"DisableEquipImpl"  
    --省略部分代码  
end  

--脚本回调用，用户不能调  
function DisableEquipImpl(player, param)  
    --省略部分代码  
end
下一篇:让所有GS去执行一段脚本>
GSTriggerScript
让所有GS去执行一段脚本

更新时间：2021-09-07 00:00:00
此函数让所有GS去执行一段脚本。

note_icon 备注
该接口是异步的，接口返回成功并不代表脚本执行成功。

语法
Luacopy 复制
lualib:GSTriggerScript(
    strCallBack,
    strParam
)

参数
strCallBack

string

 
执行的函数

格式：1 = 文件名:函数名 2 = 文件名

回调函数格式：fnCallback(strParam)

strParam(string)：自定义参数

strParam

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--天下第一战场.lua  
       
lualib:GSTriggerScript("天下第一触发:GSTriggerScript", string.format("巫山城#%s#%d", npc_table[wday], wday))  

--string.format（类似C语言的sprintf函数）  

--天下第一触发.lua  
function GSTriggerScript(map_keyname, npc_keyname, type)  
    --省略部分代码  
end
<上一篇:让GS里所有人执行一段脚本下一篇:获取当前正在运行的脚本文件名>
GetCurScriptName
获取当前正在运行的脚本文件名

更新时间：2021-09-07 00:00:00
此函数取处当前正在运行的脚本文件名，文件名不包含目录名与扩展名。

caution_icon警告
该接口不能在类似LoadString执行方式中调用。

语法
Luacopy 复制
lualib:GetCurScriptName()

参数
无

返回值
string

 文件名，不带扩展名
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--魔气血石.lua    
function OnStateInit()      
    if lualib:GetCurScriptName() == script then          
        if not lualib:HasTrigger("0", lua_trigger_post_equip, "on_post_equip") then              
            lualib:AddTrigger("0", lua_trigger_post_equip, "on_post_equip")          
        end          
        if not lualib:HasTrigger("0", lua_trigger_post_un_equip, "on_post_un_equip") then              
            lualib:AddTrigger("0", lua_trigger_post_un_equip, "on_post_un_equip")          
        end      
    end  
end
<上一篇:让所有GS去执行一段脚本下一篇:查询所有脚本的性能参数>
GetLuaPerformance
查询所有脚本的性能参数

更新时间：2021-09-07 00:00:00
此函数查询所有脚本的性能参数。

语法
Luacopy 复制
lualib:GetLuaPerformance()

参数
无

返回值
table

 
返回所有的脚本性能参数，存储在lua表中。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local strFileName = "LuaPerformance_" .. lualib:Time2Str("%Y-%m-%s", lualib:GetAllTime()) .. ".txt";          
local tLuaPerformances = lualib:GetLuaPerformance();          
if not lualib:IO_CreateTextFile(strFileName, true) then              
    return false;          
end;                    
for i = 1, #tLuaPerformances do              
    if not lualib:IO_AppendFile(strFileName, "LuaFile:"..tLuaPerformances[i].File..", LuaFunction:"..tLuaPerformances[i].Function..", InvokeCount:"..tLuaPerformances[i].Count..", TotalTick:"..tLuaPerformances[i].Total.."\n") then 
        return false;             
    end;          
end
<上一篇:获取当前正在运行的脚本文件名下一篇:重载某类型脚本>
ReloadScript
重载某类型脚本

更新时间：2021-09-07 00:00:00
此函数重载某类型脚本。

语法
Luacopy 复制
lualib:ReloadScript(
    iScriptType
)

参数
iScriptType

int32

 
脚本类型

0玩家相关脚本

1英雄相关脚本

2怪物相关脚本

3NPC相关脚本

4物品相关脚本

5地图相关脚本

6组队相关脚本

7行会相关脚本

8事件相关脚本

9场景魔法相关脚本

10系统相关脚本

12邮件相关脚本

13寄售行相关脚本

14成就相关脚本

15表单相关脚本

16控制台相关脚本

17活动相关脚本

18任务相关脚本

19VIP相关脚本

20技能相关脚本

21BUFF相关脚本

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:ReloadScript(objType_table[objType]) == true then  
    return "已完成"..objType.."脚本的重载"
end  

return objType.."脚本重载失败"  
 
<上一篇:查询所有脚本的性能参数下一篇:运行指定客户端脚本>
RunClientScript
运行指定客户端脚本

更新时间：2021-09-07 00:00:00
此函数运行指定客户端脚本。

语法
Luacopy 复制
lualib:RunClientScript(
    strObject,
    strLuaFile,
    strLuaFunction,
    strParam
)

参数
strObject

string

 
对象的GUID

对象可以为系统、玩家、队伍、行会或地图

strLuaFile

string

 
客户端LUA文件名

note_icon 备注
只可运行GUIScript目录下的脚本文件。

strLuaFunction

string

 
客户端LUA函数名

strParam

string

 
自定义参数

返回值
bool

 
true运行成功

false运行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--服务端
if lualib:RunClientScript(player, "LogicFunction", "testRunClientScript", "测试参数1#测试参数2#测试参数3#测试参数4#测试参数5") then
    return "okkk"
else
    return "error"
end

--客户端
function testRunClientScript(param1, param2, param3, param4, param5)
    dbg("aaaaa")
    dbg("param1="..param1)
    dbg("param2="..param2)
    dbg("param3="..param3)
    dbg("param4="..param4)
    dbg("param5="..param5)
end

--此示例代码运行成功如下图所示，同时控制台会输出如下内容。

RunClientScript_2.png

RunClientScript.png
<上一篇:重载某类型脚本下一篇:给玩家执行一段脚本中的函数>
ScriptFuncToPlayer
给玩家执行一段脚本中的函数

更新时间：2021-09-07 00:00:00
此函数给玩家执行一段脚本中的函数，不保证执行的时间。

note_icon 备注
该调用为异步，只能保证玩家在线时或上线后会执行这段脚本，不保证时序。

语法
Luacopy 复制
lualib:ScriptFuncToPlayer(
    player_name,
    script,
    scriptFunc,
    params
)

参数
player_name

string

 
玩家姓名

script

string

 
脚本名称

scriptFunc

string

 
脚本函数

params

string

 
脚本参数，以#分隔，执行时会分开传入函数

返回值
bool

 
true投递请求成功

false投递请求失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--师徒.lua            
lualib:ScriptFuncToPlayer(master_name, "师徒", "on_apprentice_drop_master", apprentice.."#"..apprentice_name)      
function on_apprentice_drop_master(player, apprentice, apprentice_name)      
    remove_apprentice(player, apprentice)  
end
<上一篇:运行指定客户端脚本下一篇:给玩家执行一段脚本>
ScriptTextToPlayer
给玩家执行一段脚本

更新时间：2021-09-07 00:00:00
此函数给玩家执行一段脚本，不保证执行的时间。

note_icon 备注
该调用为异步，只能保证玩家在线时或上线后会执行这段脚本，不保证时序。

语法
Luacopy 复制
lualib:ScriptTextToPlayer(
    player_name,
    script,
    scriptText
)

参数
player_name

string

 
玩家姓名

script

string

 
脚本名称

scriptText

string

 
脚本内容

返回值
bool

 
true投递请求成功

false投递请求失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local script = "local s = \"接口测试打印\";lualib:SysWarnMsg(\""..player.."\", s)"  
lualib:ScriptTextToPlayer(lualib:Name(player), lualib:GetCurScriptName(), script)
<上一篇:给玩家执行一段脚本中的函数下一篇:设置当前正在运行的脚本死循环判断时间>
SetScriptTimeout
设置当前正在运行的脚本死循环判断时间

更新时间：2021-09-07 00:00:00
此函数设置当前正在运行的脚本死循环判断时间。

caution_icon警告
该接口不能在类似LoadString执行方式中调用。

语法
Luacopy 复制
lualib:SetScriptTimeout(
    dwTick
)

参数
dwTick

uint32

 
死循环判断时间，单位为毫秒。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:给玩家执行一段脚本
InputDlg
通知客户端显示输入框

更新时间：2021-09-07 00:00:00
此函数通知客户端显示输入框。

语法
Luacopy 复制
lualib:InputDlg(
    strPlayer,
    dwDlgID,
    strContent,
    dwTimeOut,
    byMaxLen,
    strCallBack,
    strParam
)

参数
strPlayer

string

 
玩家的GUID

dwDlgID

uint32

 
输入框ID，任填，同GUID下ID必须唯一。

strContent

string

 
输入框内容

dwTimeOut

uint32

 
输入框超时时间，单位为秒。

byMaxLen

uint8

 
输入框最大输入长度

strCallBack

string

 
输入框回调函数名字

回调函数格式，pfnCallBack(dwDlgID, strPlayer, strInput, strParam)

dwDlgID(int)：输入框ID

strPlayer(string)：玩家的GUID

strInput(string)：输入框的内容

strParam(string)：自定义参数

strParam

string

 
自定义参数

由脚本作者来维护，当回调时服务器自动将strParam作为参数传回。

返回值
bool

 
true通知成功。

false通知失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--烟花.lua   
       
function meiguihua(player, item, item_K, p_name, p_map)  
    lualib:SysMsg_SendInputDlg(player, 3, "请输入所要赠送的玩家昵称", 45, 14, "meiguihuazhixing", item.."#"..item_K)  
end
下一篇:通知客户端显示消息框>
MsgBox
通知客户端显示消息框

更新时间：2021-09-07 00:00:00
此函数通知客户端显示消息框。

语法
Luacopy 复制
lualib:MsgBox(
    strPlayer,
    strContent
)

参数
strPlayer

string

 
玩家的GUID

strContent

string

 
消息框内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:MsgBox(actor, "由于附近有大刀守卫，为了你的安全，不允许使用该技能，请远离大刀守卫后再使用！")  
 
<上一篇:通知客户端显示输入框下一篇:发送喇叭消息>
SendSpeakerMsg
发送喇叭消息

更新时间：2021-09-07 00:00:00
此函数发送喇叭消息。

note_icon 备注
该接口是异步的，发送结果未知。

语法
Luacopy 复制
lualib:SendSpeakerMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家GUID

strMsg

string

 
喇叭消息的内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SendSpeakerMsg(player, "XXXXXXXXXXXXXX")
<上一篇:通知客户端显示消息框下一篇:发送客户端中部消息（可跨GS调用）>
SysCenterMsg
发送客户端中部消息（可跨GS调用）

更新时间：2021-09-07 00:00:00
此函数发送客户端中部消息，可跨GS调用。

语法
Luacopy 复制
lualib:SysCenterMsg(
    byType,
    strMsg,
    strPlayer
)

参数
byType

uint8

 
消息类型

0自己

1所有人

2行会

3队伍

4当前

strMsg

string

 
消息内容

strPlayer

string

 
玩家角色的GUID

note_icon 备注
当消息类型为组队或行会时，此参数必须为队伍或行会中的成员的GUID，否则默认填""。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysCenterMsg(1, "玩家【"..lualib:Name(player).."】将法宝["..temp.."]融合成功，获得法宝{"..goal.."}", "")
<上一篇:发送喇叭消息下一篇:发送客户端底部行会消息>
SysGuildMsg
发送客户端底部行会消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部行会消息，可跨GS调用。

语法
Luacopy 复制
lualib:SysGuildMsg(
    strFamily,
    strMsg
)

参数
strFamily

string

 
行会的GUID

strMsg

string

 
消息内容

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local family = lualib:GuildGuid(player)  
if family ~= "" then      
    lualib:SysGuildMsg(family, "XXXXXXXXXXXXXX")  
end
<上一篇:发送客户端中部消息（可跨GS调用）下一篇:发送客户端底部地图消息>
SysMapMsg
发送客户端底部地图消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部地图消息，可跨GS调用。

语法
Luacopy 复制
lualib:SysMapMsg(
    strMap,
    strMsg
)

参数
strMap

string

 
地图的GUID

strMsg

string

 
消息内容

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMapMsg(map, "XXXXXXXXXXXXXXXXXXXXX")
<上一篇:发送客户端底部行会消息下一篇:根据客户端类型发送所有角色滚动通知>
SysMsg_SendAllPlayerScrollMsgByClientType
根据客户端类型发送所有角色滚动通知

更新时间：2024-09-06 00:00:00
此函数根据客户端类型发送所有角色滚动通知。

语法
Luacopy 复制
lualib:SysMsg_SendAllPlayerScrollMsgByClientType(
    strMsg,
    foreground,
    background,
    speed,
    count,
    client_type
)
参数
strMsg

string

 
消息内容

foreground

UINT8

 
前景颜色

background

UINT8

 
背景颜色

speed

UINT8

 
滚动速度

count

UINT32

 
滚动次数

client_type

UINT8

 
客户端类型组合

1端游

2页游

3端游+页游

4手游

5端游+手游

6页游+手游

7端游+页游+手游

返回值
bool

 
true发送成功

false发送失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local strMsg = "这是一条端游滚动消息，这是一条端游滚动消息"
local foreground = 1
local background = 2
local speed = 1
local count = 2
local client_type = 1
lualib:SysMsg_SendAllPlayerScrollMsgByClientType(strMsg, foreground, background, speed, count, client_type);

--客户端类型设置为端游时，只有端游显示，滚动通知客户端成功显示如下。

SysMsg_SendAllPlayerScrollMsgByClientType.png

--客户端类型设置为手游时，只有手游显示，滚动通知客户端成功显示如下。

SysMsg_SendAllPlayerScrollMsgByClientType_2.png

--客户端类型设置为端游手游时，端游手游都显示，滚动通知客户端成功显示如下。

SysMsg_SendAllPlayerScrollMsgByClientType_3.png

SysMsg_SendAllPlayerScrollMsgByClientType_4.png
<上一篇:发送客户端底部地图消息下一篇:对所有玩家发送滚动消息>
SysMsg_SendAllPlayerScrollMsg
对所有玩家发送滚动消息

更新时间：2022-06-09 00:00:00
此函数作用为对所有玩家发送滚动消息（弹幕）。

可使用接口lualib:SysMsg_SendScrollMsg对指定角色发送滚动消息（弹幕）。

此接口配置的弹幕前景颜色和背景颜色仅在全局变量UseSettingColor配置为true时生效。

语法
Luacopy 复制
lualib:SysMsg_SendAllPlayerScrollMsg(
    strMsg,
    foreground,
    background,
    speed,
    count
)
参数
strMsg

string

 
消息的内容

foreground

uint8

 
前景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

background

uint8

 
背景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

speed

uint8

 
滚动速度

数值越大，滚动速度越快。

count

uint32

 
循环滚动的次数

返回值
bool

 
true发送成功

false发送失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:SysMsg_SendAllPlayerScrollMsg("测试滚动消息", 1, 12, 10, 3) then
    lualib:SysWarnMsg(player, "SysMsg_SendAllPlayerScrollMsg返回值为true")
end

--此示例代码运行成功后，所有玩家都能收到滚动消息，如下图所示。

SysMsg_SendAllPlayerScrollMsg.png
<上一篇:根据客户端类型发送所有角色滚动通知下一篇:发送客户端面板消息>
SysMsg_SendBoardMsg
发送客户端面板消息

更新时间：2021-09-07 00:00:00
此函数发送客户端面板消息。

语法
Luacopy 复制
lualib:SysMsg_SendBoardMsg(
    strObject,
    strTitle,
    strMsg,
    dwTimeOut
)

参数
strObject

string

 
对象的GUID，对象可以为系统、队伍、行会、地图或玩家。

strTitle

string

 
面板标题

strMsg

string

 
消息内容

dwTimeOut

uint32

 
持续时间，单位为毫秒。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendBoardMsg("0", "[中秋、国庆节快乐]", "[中秋、国庆节活动]还有"..math.floor(times / 60000).."分钟开始。", 15000)
<上一篇:对所有玩家发送滚动消息下一篇:发送客户端底部消息>
SysMsg_SendBottomColor
发送客户端底部消息

更新时间：2022-03-18 00:00:00
此函数发送客户端底部消息。

语法
Luacopy 复制
lualib:SysMsg_SendBottomColor(
    strPlayer,
    strMsg,
    iForeground,
    iBackground
)

参数
strPlayer

string

 
玩家的GUID

strMsg

string

 
消息内容

iForeground

int32

 
前景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

iBackground

int32

 
背景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendBottomColor(player, "测试消息", 4, 2)
<上一篇:发送客户端面板消息下一篇:发送客户端底部广播消息>
SysMsg_SendBroadcastColorByClientType
发送客户端底部广播消息

更新时间：2022-03-18 00:00:00
此函数发送客户端底部广播消息。

语法
Luacopy 复制
lualib:SysMsg_SendBroadcastColorByClientType(
    strMsg,
    strName,
    iForeground,
    iBackground,
    byClientType
)

参数
strMsg

string

 
消息内容

strName

string

 
广播标题

iForeground

int32

 
前景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

iBackground

int32

 
背景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

byClientType

uint8

 
客户端类型组合

12D端游

2页游

32D端游+页游

42D手游

52D端游+2D手游

6页游+2D手游

72D端游+页游+2D手游

163D端游

323D手游

483D端游+3D手游

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

 
v1.1

 
参数byClientType新增多个类型

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:发送客户端底部消息下一篇:发送客户端底部广播消息>
SysMsg_SendBroadcastColor
发送客户端底部广播消息

更新时间：2022-03-18 00:00:00
此函数发送客户端底部广播消息。

语法
Luacopy 复制
lualib:SysMsg_SendBroadcastColor(
    strMsg,
    strName,
    iForeground,
    iBackground
)

参数
strMsg

string

 
消息内容

strName

string

 
广播标题

iForeground

int32

 
前景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

iBackground

int32

 
背景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"  
lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
<上一篇:发送客户端底部广播消息下一篇:发送客户端底部广播消息>
SysMsg_SendBroadcastMsg
发送客户端底部广播消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部广播消息。

语法
Luacopy 复制
lualib:SysMsg_SendBroadcastMsg(
    strMsg,
    strName
)

参数
strMsg

string

 
消息内容

strName

string

 
广播标题

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--血禅师.lua   
lualib:SysMsg_SendBroadcastMsg("仆从们，快治疗我！", "血禅师")
<上一篇:发送客户端底部广播消息下一篇:在指定客户端类型中发送客户端中部消息>
SysMsg_SendCenterMsgByClientType
在指定客户端类型中发送客户端中部消息

更新时间：2021-09-07 00:00:00
此函数在指定客户端类型中发送客户端中部消息。

语法
Luacopy 复制
lualib:SysMsg_SendCenterMsgByClientType(
    byType,
    strMsg,
    strPlayer,
    byClientType
)

参数
byType

uint8

 
消息类型

0自己

1所有人

2行会

3队伍

4当前

strMsg

string

 
消息内容

strPlayer

string

 
玩家角色的GUID

note_icon 备注
当消息类型为组队或行会时，此参数必须为队伍或行会中的成员的GUID，否则默认填""。

byClientType

uint8

 
客户端类型组合

1端游

2页游

3端游+页游

4手游

5端游+手游

6页游+手游

7端游+页游+手游

note_icon 备注
此参数仅在参数byType（消息类型）的值为1或4时生效。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:发送客户端底部广播消息下一篇:发送客户端中部消息>
SysMsg_SendCenterMsg
发送客户端中部消息

更新时间：2021-09-07 00:00:00
此函数发送客户端中部消息。

语法
Luacopy 复制
lualib:SysMsg_SendCenterMsg(
    byType,
    strMsg,
    strPlayer
)

参数
byType

uint8

 
消息类型

0自己

1所有人

2行会

3队伍

4当前

strMsg

string

 
消息内容

strPlayer

string

 
玩家角色的GUID

note_icon 备注
当消息类型为组队或行会时，此参数必须为队伍或行会中的成员的GUID，否则默认填""。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local user_name = lualib:KeyName(player)  
local gb = "恭喜 ["..user_name.."] 在装备打造大师出成功合成十杀!"  
lualib:SysMsg_SendCenterMsg(1, gb,"")
<上一篇:在指定客户端类型中发送客户端中部消息下一篇:发送客户端底部行会消息>
SysMsg_SendGuildMsg
发送客户端底部行会消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部行会消息。

语法
Luacopy 复制
lualib:SysMsg_SendGuildMsg(
    strFamily,
    strMsg
)

参数
strFamily

string

 
行会的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--family.lua  
       
function family_on_login(player)  
    --省略部分代码  
    if lualib:Player_IsGuildLeader(player) then  
        local castles = lualib:GetFamilyCastles(family_guid)  
        if castles ~= "" then  
            msg = castles.."城主【"..lualib:Player_GetStrProp(player,  lua_role_user_name).."】上线了。"  
            lualib:SysMsg_SendBroadcastMsg(msg, "")  
        else  
            msg = title.."【"..lualib:Player_GetStrProp(player,  lua_role_user_name).."】上线了。"  
            lualib:SysMsg_SendGuildMsg(family_guid, msg)  
        end  
    else  
        msg = title.."【"..lualib:Player_GetStrProp(player,  lua_role_user_name).."】上线了。"  
        lualib:SysMsg_SendGuildMsg(family_guid, msg)  
    end  
    --省略部分代码  
end
<上一篇:发送客户端中部消息下一篇:通知客户端显示输入框>
SysMsg_SendInputDlg
通知客户端显示输入框

更新时间：2021-09-07 00:00:00
此函数通知客户端显示输入框。

语法
Luacopy 复制
lualib:SysMsg_SendInputDlg(
    strPlayer,
    dwDlgID,
    strContent,
    dwTimeOut,
    dwMaxLen,
    strCallBack,
    strParam
)

参数
strPlayer

string

 
玩家的GUID

dwDlgID

uint32

 
输入框ID，任填，同GUID下ID必须唯一。

strContent

string

 
输入框内容

dwTimeOut

uint32

 
输入框超时时间，单位为秒。

dwMaxLen

uint32

 
输入框最大输入长度

strCallBack

string

 
输入框回调函数名字

回调函数格式，pfnCallBack(dwDlgID, strPlayer, strInput, strParam)

dwDlgID(int)：输入框ID

strPlayer(string)：玩家的GUID

strInput(string)：输入框的内容

strParam(string)：自定义参数

strParam

string

 
自定义参数

由脚本作者来维护，当回调时服务器自动将strParam作为参数传回。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--烟花.lua                  
lualib:SysMsg_SendInputDlg(player, 3, "请输入所要赠送的玩家昵称(对方不在线或不存在则送给自己)", 45, 14, "meiguihuazhixing", item.."#"..item_K)
<上一篇:发送客户端底部行会消息下一篇:发送客户端底部地图消息>
SysMsg_SendMapMsg
发送客户端底部地图消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部地图消息。

语法
Luacopy 复制
lualib:SysMsg_SendMapMsg(
    strMap,
    strMsg
)

参数
strMap

string

 
地图的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendMapMsg(map, "剩余怪物数量"..monster_count.."个，镇魔殿关闭剩余时间"..minute.."分"..second.."秒！")  
 
<上一篇:通知客户端显示输入框下一篇:通知客户端显示消息框>
SysMsg_SendMsgDlg
通知客户端显示消息框

更新时间：2021-09-07 00:00:00
此函数通知客户端显示消息框。

语法
Luacopy 复制
lualib:SysMsg_SendMsgDlg(
    strPlayer,
    dwDlgID,
    strContent,
    dwTimeOut,
    strCallBack,
    strParam
)

参数
strPlayer

string

 
玩家的GUID

dwDlgID

uint32

 
消息框ID，任填，同GUID下ID必须唯一

strContent

string

 
消息框内容

dwTimeOut

uint32

 
消息框超时时间，单位为秒

strCallBack

string

 
消息框回调函数名字

回调函数格式：Callback(dwDlgID, strPlayer, buttonID, strParam)

dwDlgID(uint32)：消息框ID

strPlayer(string)：玩家的GUID

buttonID(int)：按钮ID（从0开始）

strParam(string)：预设的回调函数参数

strParam

string

 
由脚本作者来维护，当回调时服务器自动将strParam作为参数传回。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--烟花.lua        
lualib:SysMsg_SendMsgDlg(player, 6, "目标不存在或不在线，你继续赠送将送给自己\n \n#BUTTON0#继续赠送#BUTTONEND#", 10, "meigui9zhixingEx", item_K)
<上一篇:发送客户端底部地图消息下一篇:发送客户端底部提示消息>
SysMsg_SendPromptMsg
发送客户端底部提示消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部提示消息。

语法
Luacopy 复制
lualib:SysMsg_SendPromptMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendPromptMsg(player, "测试消息")
<上一篇:通知客户端显示消息框下一篇:发送角色当前说话通知>
SysMsg_SendRoleTalk
发送角色当前说话通知

更新时间：2021-09-07 00:00:00
此函数发送角色当前说话通知。

语法
Luacopy 复制
lualib:SysMsg_SendRoleTalk(
    strRole,
    strMsg
)

参数
strRole

string

 
角色的GUID，角色可以为玩家、怪物或NPC。

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--梵天僧.lua   

lualib:SysMsg_SendRoleTalk(monster, "梵天僧：魔之天道，听我梵歌&hellip;&hellip;")  
 
<上一篇:发送客户端底部提示消息下一篇:对指定角色发送滚动消息>
SysMsg_SendScrollMsg
对指定角色发送滚动消息

更新时间：2022-06-09 00:00:00
此函数作用为对指定角色发送滚动消息（弹幕）。

可使用接口lualib:SysMsg_SendAllPlayerScrollMsg对所有玩家发送滚动消息（弹幕）。

此接口配置的弹幕前景颜色和背景颜色仅在全局变量UseSettingColor配置为true时生效。

语法
Luacopy 复制
lualib:SysMsg_SendScrollMsg(
    strRole,
    strMsg,
    foreground,
    background,
    speed,
    count
)
参数
strRole

string

 
角色的GUID

角色可以为玩家、怪物或者NPC

strMsg

string

 
消息的内容

foreground

uint8

 
前景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

background

uint8

 
背景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

speed

uint8

 
滚动速度

数值越大，滚动速度越快。

count

uint32

 
循环滚动的次数

返回值
bool

 
true发送成功

false发送失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendScrollMsg(player, "测试弹幕", 2, 11, 10, 1)

--此示例代码运行成功如下图所示。

SysMsg_SendScrollMsg.gif
<上一篇:发送角色当前说话通知下一篇:发送客户端左上角消息>
SysMsg_SendTipsMsg
发送客户端左上角消息

更新时间：2021-09-07 00:00:00
此函数发送客户端左上角消息。

语法
Luacopy 复制
lualib:SysMsg_SendTipsMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家GUID

strMsg

string

 
消息内容

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if rennum > 1 then          
    lualib:SysMsg_SendTipsMsg(player, "组队获得额外经验:")          
    lualib:Player_AddExp(player, teamexp, "额外经验", player)      
end
<上一篇:对指定角色发送滚动消息下一篇:发送客户端顶部广播消息>
SysMsg_SendTopColorByClientType
发送客户端顶部广播消息

更新时间：2022-03-18 00:00:00
此函数发送客户端顶部广播消息。

此接口配置的消息前景颜色和背景颜色仅在全局变量UseSettingColor配置为true时生效。

语法
Luacopy 复制
lualib:SysMsg_SendTopColorByClientType(
    byCount,
    strMsg,
    iForeground,
    iBackground,
    byClientType
)

参数
byCount

uint8

 
消息滚动次数

strMsg

string

 
消息内容

iForeground

int32

 
前景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

iBackground

int32

 
背景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

byClientType

uint8

 
客户端类型组合

1端游

2页游

3端游+页游

4手游

5端游+手游

6页游+手游

7端游+页游+手游

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:发送客户端左上角消息下一篇:发送客户端顶部广播消息>
SysMsg_SendTopColor
发送客户端顶部广播消息

更新时间：2022-03-18 00:00:00
此函数发送客户端顶部广播消息。

此接口配置的消息前景颜色和背景颜色仅在全局变量UseSettingColor配置为true时生效。

语法
Luacopy 复制
lualib:SysMsg_SendTopColor(
    byCount,
    strMsg,
    iForeground,
    iBackground
)

参数
byCount

uint8

 
消息滚动次数

strMsg

string

 
消息内容

iForeground

int32

 
前景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

iBackground

int32

 
背景颜色的索引值

范围1~13，具体请参见消息颜色定义页面。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendTopColor(3, "测试消息", 5, 11)

--此示例代码运行成功如下图所示。

SysMsg_SendTopColor.gif
<上一篇:发送客户端顶部广播消息下一篇:发送客户端顶部消息>
SysMsg_SendTopMsg
发送客户端顶部消息

更新时间：2021-09-07 00:00:00
此函数发送客户端顶部消息。

语法
Luacopy 复制
lualib:SysMsg_SendTopMsg(
    byCount,
    strMsg
)

参数
byCount

uint8

 
消息滚动次数

strMsg

string

 
消息内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendTopMsg(1, "[引灵寺]已开放！")
<上一篇:发送客户端顶部广播消息下一篇:发送客户端底部触发消息>
SysMsg_SendTriggerMsg
发送客户端底部触发消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部触发消息。

语法
Luacopy 复制
lualib:SysMsg_SendTriggerMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendTriggerMsg(player, "测试消息")
<上一篇:发送客户端顶部消息下一篇:发送客户端底部警告消息>
SysMsg_SendWarnMsg
发送客户端底部警告消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部警告消息。

语法
Luacopy 复制
lualib:SysMsg_SendWarnMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysMsg_SendWarnMsg(player,  "等级不足")  
<上一篇:发送客户端底部触发消息下一篇:通知客户端显示Web页面框>
SysMsg_SendWebMsg
通知客户端显示Web页面框

更新时间：2021-09-07 00:00:00
此函数通知客户端显示Web页面框。

语法
Luacopy 复制
lualib:SysMsg_SendWebMsg(
    strPlayer,
    strTitle,
    strURL,
    strParam
)

参数
strPlayer

string

 
玩家的GUID

strTitle

string

 
页面框标题

strURL

string

 
网页URL路径

strParam

string

 
由脚本作者来维护，当回调时服务器自动将strParam作为参数传回。

返回值
bool

 
true通知成功。

false通知失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--防沉迷.lua                           
lualib:SysMsg_SendWebMsg(player, "防沉迷验证", "http://passport.173uu.com/verifygame/index.html?uid="..userid, "")     
<上一篇:发送客户端底部警告消息下一篇:通知客户端打开网页>
SysMsg_SendWebPage
通知客户端打开网页

更新时间：2021-09-07 00:00:00
此函数通知客户端打开网页。

语法
Luacopy 复制
lualib:SysMsg_SendWebPage(
    strPlayer,
    strURL
)

参数
strPlayer

string

 
玩家的GUID

strURL

string

 
网页URL路径

返回值
bool

 
true通知成功。

false通知失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:通知客户端显示Web页面框下一篇:发送客户端底部提示消息>
SysPromptMsg
发送客户端底部提示消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部提示消息。

note_icon 备注
可跨GS调用。

语法
Luacopy 复制
lualib:SysPromptMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysPromptMsg(player, "测试消息")
<上一篇:通知客户端打开网页下一篇:发送客户端喇叭消息>
SysSpeakMsg
发送客户端喇叭消息

更新时间：2021-09-07 00:00:00
此函数发送客户端喇叭消息。

语法
Luacopy 复制
lualib:SysSpeakMsg(
    strMsg,
    strPlayer
)

参数
strMsg

string

 
消息内容

strPlayer

string

 
玩家GUID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:发送客户端底部提示消息下一篇:发送客户端左上角消息>
SysTipsMsg
发送客户端左上角消息

更新时间：2021-09-07 00:00:00
此函数发送客户端左上角消息。

note_icon 备注
可跨GS调用。

语法
Luacopy 复制
lualib:SysTipsMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家GUID

strMsg

string

 
消息内容

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysTipsMsg(player, "XXXXXXXXXXXXXXXX")
<上一篇:发送客户端喇叭消息下一篇:发送客户端顶部消息>
SysTopMsg
发送客户端顶部消息

更新时间：2021-09-07 00:00:00
此函数发送客户端顶部消息。

note_icon 备注
可跨GS调用。

语法
Luacopy 复制
lualib:SysTopMsg(
    byCount,
    strMsg
)

参数
byCount

uint8

 
消息滚动次数

strMsg

string

 
消息内容

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysTopMsg(3, "XXXXXXXXXXXXXXXXXXX")
<上一篇:发送客户端左上角消息下一篇:发送客户端底部触发消息>
SysTriggerMsg
发送客户端底部触发消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部触发消息。

note_icon 备注
可跨GS调用。

语法
Luacopy 复制
lualib:SysTriggerMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--队友传送令.lua           
lualib:SysTriggerMsg(player, duiyou_name.."所在["..map_name.."]地图被禁止传送！")
<上一篇:发送客户端顶部消息下一篇:发送客户端底部警告消息>
SysWarnMsg
发送客户端底部警告消息

更新时间：2021-09-07 00:00:00
此函数发送客户端底部警告消息。

note_icon 备注
可跨GS调用。

语法
Luacopy 复制
lualib:SysWarnMsg(
    strPlayer,
    strMsg
)

参数
strPlayer

string

 
玩家的GUID

strMsg

string

 
消息内容

返回值
bool

 
true发送成功。

false发送失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SysWarnMsg(player, "等级不足")  
<上一篇:发送客户端底部触发消息
SetFormAllowFunc
设置表单的允许回调函数列表

更新时间：2023-06-25 00:00:00
此函数设置表单的允许回调函数列表。

未被设置允许调用的函数在被客户端调用时，会提示该函数未被允许调用，回调函数on_submit_not_allowed_form会每分钟统计此类函数非法提交的次数。

表单函数是否允许被客户端调用与全局模板表中的“是否默认表单都不允许使用回调函数”选项和接口SetFormAllowFunc有关，可根据实际需求参照下表进行操作：

想要达到的目的	是否需要在全局模板表中设置	是否需要使用接口SetFormAllowFunc
所有表单函数均不可被调用	需要
请将该选项设置为“是”	不需要
所有表单函数均可被调用	需要
请将该选项设置为“否”	不需要
指定部分表单函数可被调用	不需要
无需关注该选项的配置值	需要
此接口设置的函数列表即为允许客户端调用的列表
上述选项访问路径为：游戏工具平台→游戏配置→全局表→全局模板表→其他设置→游戏限制区域。

on_submit_not_allowed_form_3.png
语法
Luacopy 复制
lualib:SetFormAllowFunc(
    tFuncList
)

参数
tFuncList

table

 
函数名列表的Lua表

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--以手游45度测试区（区号：151750）中的累计充值.lua为例

--……省略部分代码

function AcculateBill_click(player)
    local data = {}
    data[1] = AcculateBill_prompt(player)
    data[2] = DailyBill_prompt(player)
    data[3] = Foundation_prompt(player)
    lualib:ShowFormWithContent(player, "form文件表单", "AcculateBill#"..serialize(data))
    return ""
end

function AcculateBill_GetData(player, param)
    param = tonumber(param)
    if param == 1 then
        AcculateBill(player)
    elseif param == 2 then
        DailyBill(player)
    elseif param == 3 then
        Foundation(player)
    end
    return ""
end

--……省略部分代码

function AcculateBill_on_billin(player, yb)
    yb = tonumber(yb)
    local totalBill = lualib:GetInt(player, "acculateBill") + yb
    lualib:SetInt(player, "acculateBill", totalBill)
    lualib:SetDayInt(player, "DailyBill", lualib:GetDayInt(player, "DailyBill") + yb)
    lualib:DelayCall(player, 1, "ifAddMagic", "") --红点
end

--……省略部分代码

--AcculateBill_click函数和AcculateBill_GetData函数允许被客户端调用，而AcculateBill_on_billin函数不允许被客户端调用
lualib:SetFormAllowFunc({"AcculateBill_click","AcculateBill_GetData",}); 
下一篇:通知客户端显示表单>
ShowFormWithContent
通知客户端显示表单

更新时间：2023-06-25 00:00:00
此函数通知客户端显示表单。

参考 ShowForm

语法
Luacopy 复制
lualib:ShowFormWithContent(
    strPlayer,
    strFormName,
    strContent
)

参数
strPlayer

string

 
玩家角色的GUID

strFormName

string

 
客户端中要被调用的表单名

strContent

string

 
服务端提交的参数

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--……省略部分代码

-------------------图标被点击-----------------------
function firstConsume_click(player)

--……省略部分代码

    local str = "这些是数据"
    local number = 1
    lualib:ShowFormWithContent(player, "form文件表单", "首充大礼_c#"..number.."#"..str)

--……省略部分代码

end

--……省略部分代码
<上一篇:设置表单的允许回调函数列表下一篇:通知客户端显示表单>
ShowForm
通知客户端显示表单

更新时间：2023-06-25 00:00:00
此函数通知客户端显示表单。

参考 ShowFormWithContent

语法
Luacopy 复制
lualib:ShowForm(
    strPlayer,
    strFormName
)

参数
strPlayer

string

 
玩家角色的GUID

strFormName

string

 
客户端中要被调用的表单名

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ShowForm(player, "装备附魔表单")
<上一篇:通知客户端显示表单
IO_AppendFile
追加文本到文本文件

更新时间：2021-09-07 00:00:00
此函数功能为追加文本内容到文本文件中。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_AppendFile(
    strFileName,
    strContent
)

参数
strFileName

string

 
文件名

strContent

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
--行会管理员.lua  
       
--在reg_guild.txt中追加内容  
function VerifyReg(id, player, reg, npc)  
    --省略部分代码  
    local record = "reg_guild.txt"  
    if not lualib:IO_AppendFile(record, "#"..reg) then  
        lualib:NPCTalkEx(npc, player, "校验激活码失败！\n \n \n \n \n \n \n \n \n                                                #OFFSET<x:0,y:1>##IMAGE<id:1902700019>##OFFSET<x:0,y:-2>#<@main *01*「返回」>")  
    return  
    end
    </x:0,y:-2></id:1902700019></x:0,y:1>  
    <x:0,y:1><id:1902700019><x:0,y:-2> </x:0,y:-2></id:1902700019></x:0,y:1>  
    --省略部分代码  
end
下一篇:判断文本是否为文本文件中的某行>
IO_CheckTextInFile
判断文本是否为文本文件中的某行

更新时间：2021-09-07 00:00:00
此函数判断文本内容是否为文本文件中的某行。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_CheckTextInFile(
    strFileName,
    strContent
)

参数
strFileName

string

 
文件名

strContent

string

 
文本内容

返回值
bool

 
true是

false否

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--行会管理员.lua  

--判断输入的激活码reg是否在reg_guild.txt中  
function VerifyReg(id, player, reg, npc)  
    --省略部分代码  
    local record = "reg_guild.txt"  
    if not lualib:IO_CheckTextInFile(record, reg) then  
        lualib:NPCTalkEx(npc, player, "输入的激活码不存在！\n \n \n \n \n \n \n \n \n                                                #OFFSET<x:0,y:1>##IMAGE<id:1902700019>##OFFSET<x:0,y:-2>#<@main *01*「返回」>")  
        return  
    end</x:0,y:-2></id:1902700019></x:0,y:1>  
    --省略部分代码  
end  
 
<上一篇:追加文本到文本文件下一篇:创建文本文件>
IO_CreateTextFile
创建文本文件

更新时间：2022-04-22 00:00:00
此函数创建文本文件。

创建完成后，需要执行重载操作（在脚本管理中点击“重载数据”按钮进行重载）后才能显示该文件。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_CreateTextFile(
    strFileName,
    bOverlap
)

参数
strFileName

string

 
文件名

bOverlap

bool

 
true覆盖原始文本文件。

false不覆盖原始文本文件，当文件已存在时，则创建失败。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--富商.lua  
       
--先判断文件touzi.txt是否存在，不存在在创建文本文件touzi.txt，在TextFileInsertLine中一行一行地插入内容  
if lualib:IO_FileExists("touzi.txt") == false then  
    lualib:IO_CreateTextFile("touzi.txt", false)  
    for i = 1, 10 do  
        lualib:IO_TextFileInsertLine("touzi.txt", i, "填充")  
    end  
end
<上一篇:判断文本是否为文本文件中的某行下一篇:递归删除目录及其子目录与文件>
IO_DeleteDirEx
递归删除目录及其子目录与文件

更新时间：2021-09-07 00:00:00
此函数功能是删除目录，包括目录中的所有子目录与文件

note_icon 备注
如果需要持久化存储数据，可以用数据库变量SetDBNum、SetDBStr等。

如要需要临时存储数据，可以用GS变量GetInt(用系统GUID)、SetStr(用系统GUID)等。

caution_icon注意
该接口在沙盒中运行，只能操作Data目录。

文件接口是执行IO操作，效率低下，若非必要的原因，不要使用文件接口。

大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_DeleteDirEx(
    dirname
)
参数
dirname

string

 
文件目录名

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local index = "Test\\aaa"
if not lualib:IO_DirExists(index) then
    if not lualib:IO_ForceDir(index) then
        lualib:SysWarnMsg(player, "创建目录[" .. index .. "]失败")
        return ""
    end
end
lualib:SysWarnMsg(player, "创建目录[" .. index .. "]成功")

local file = index .. "\\测试.txt"
if not lualib:IO_FileExists(file) then
    if not lualib:IO_CreateTextFile(file, true) then
        lualib:SysWarnMsg(player, "创建文件[" .. file .. "]失败")
        return ""
    end
end
lualib:SysWarnMsg(player, "创建文件[" .. file .. "]成功")
if not lualib:IO_DeleteDirEx("Test") then
    return ""
end
lualib:SysWarnMsg(player, "删除目录[Test]成功")
if not lualib:IO_DirExists(index) then
    lualib:SysWarnMsg(player, "目录[" .. index .. "]不存在")
end
if not lualib:IO_FileExists(file) then
    lualib:SysWarnMsg(player, "文件[" .. file .. "]不存在")
end

--此示例代码运行成功如下图所示。

IO_DeleteDirEx
<上一篇:创建文本文件下一篇:删除目录>
IO_DeleteDir
删除目录

更新时间：2021-09-07 00:00:00
此函数删除目录。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_DeleteDir(
    strDirName
)

参数
strDirName

string

 
文件目录名

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:递归删除目录及其子目录与文件下一篇:删除文件>
IO_DeleteFile
删除文件

更新时间：2021-09-07 00:00:00
此函数删除文件。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_DeleteFile(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
bool

 
true删除成功

false删除失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:IO_DeleteFile("测试文档.txt")
<上一篇:删除目录下一篇:判断文件目录是否存在>
IO_DirExists
判断文件目录是否存在

更新时间：2021-09-07 00:00:00
此函数判断文件目录是否存在。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_DirExists(
    strDirName
)

参数
strDirName

string

 
文件目录名

返回值
bool

 
true目录存在。

false目录不存在。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--判断目录dir_name是否存在，不存在则创建目录dir_name  
 if not lualib:IO_DirExists(dir_name) then  
     lualib:IO_ForceDir(dir_name)  
 end
<上一篇:删除文件下一篇:清空文本文件内容>
IO_EmptyTextFile
清空文本文件内容

更新时间：2021-09-07 00:00:00
此函数清空文本文件内容。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_EmptyTextFile(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--先判断文件test.txt是否存在，存在则清空该文本里面的内容  
if lualib:IO_FileExists("test.txt") == true then  
    lualib:IO_EmptyTextFile("test.txt")  
end
<上一篇:判断文件目录是否存在下一篇:获取文件创建时间>
IO_FileCTime
获取文件创建时间

更新时间：2021-09-07 00:00:00
此函数获取文件创建时间。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_FileCTime(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
string

 时间格式串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str_time = lualib:IO_FileCTime(file)
<上一篇:清空文本文件内容下一篇:判断文件是否存在>
IO_FileExists
判断文件是否存在

更新时间：2021-09-07 00:00:00
此函数判断文件是否存在。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_FileExists(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
bool

 
true存在。

false不存在。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
forbid_role.lua  

--判断文件forbid_login.txt是否存在，不存在则返回  
local envir_path = "forbid_login.txt"  
if not lualib:IO_FileExists(envir_path) then return end
<上一篇:获取文件创建时间下一篇:获得指定目录中所有txt文件名>
IO_FileList
获得指定目录中所有txt文件名

更新时间：2021-09-07 00:00:00
此函数获得指定目录中所有txt文件名。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_FileList(
    strDirName
)

参数
strDirName

string

 
文件目录名，若文件目录名为""，则获取整个data目录下的txt文件名。

返回值
table

 txt文件名组成的table
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:判断文件是否存在下一篇:获取文件修改时间>
IO_FileMTime
获取文件修改时间

更新时间：2021-09-07 00:00:00
此函数获取文件修改时间。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_FileMTime(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
string

 时间格式串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str_time = lualib:IO_FileMTime(file)
<上一篇:获得指定目录中所有txt文件名下一篇:返回文件大小>
IO_FileSize
返回文件大小

更新时间：2021-09-07 00:00:00
此函数返回文件大小。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_FileSize(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
uint32

 文件大小
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取文件修改时间下一篇:创建文件目录>
IO_ForceDir
创建文件目录

更新时间：2021-09-07 00:00:00
此函数创建文件目录。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_ForceDir(
    strDirName
)

参数
strDirName

string

 
文件目录名。

支持多级，如：aa/bb/cc，会依次创建三个目录。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--判断目录dir_name是否存在，不存在则创建目录dir_name  
if not lualib:IO_DirExists(dir_name) then  
    lualib:IO_ForceDir(dir_name)  
end
<上一篇:返回文件大小下一篇:读取文本文件所有内容>
IO_GetFileString
读取文本文件所有内容

更新时间：2021-09-07 00:00:00
此函数读取文本文件所有内容。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_GetFileString(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
string

 文件内容
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local text = lualib:IO_GetFileString("测试文档.txt")
<上一篇:创建文件目录下一篇:读取文本文件内容>
IO_GetFileText
读取文本文件内容

更新时间：2021-09-07 00:00:00
此函数读取文本文件内容。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_GetFileText(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
table

 返回文件内容列表，存储在lua表中。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--forbid_role.lua  
--先判断文件forbid_login.txt是否存在，若存在则读取该文本的内容  
local envir_path = "forbid_login.txt"  

if not lualib:IO_FileExists(envir_path) then return end  

local text_content = lualib:IO_GetFileText(envir_path)  
if text_content == nil then return end
<上一篇:读取文本文件所有内容下一篇:获取服务器LUA文件夹的绝对路径>
IO_GetLuaPath
获取服务器LUA文件夹的绝对路径

更新时间：2021-09-07 00:00:00
此函数获取服务器LUA文件夹的绝对路径。

语法
Luacopy 复制
lualib:IO_GetLuaPath()

参数
无

返回值
string

 LUA文件夹路径
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local lua_path = lualib:IO_GetLuaPath()  
local package_path = package.path  
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
<上一篇:读取文本文件内容下一篇:设置文本文件内容>
IO_SetFileText
设置文本文件内容

更新时间：2021-09-07 00:00:00
此函数设置文本文件内容。

如果文件已存在，文件的内容会被清空后再写入。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_SetFileText(
    strFileName,
    strContent
)

参数
strFileName

string

 
文件名

strContent

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
--天下第一战场.lua  
       
result = lualib:IO_SetFileText(record_file[type], content)  
if result == false then 
    lualib:Print("写文件"..record_file[type].."失败！") 
end
<上一篇:获取服务器LUA文件夹的绝对路径下一篇:在文本中检查内容是否存在>
IO_TextFileCheckLine
在文本中检查内容是否存在

更新时间：2021-09-07 00:00:00
此函数在文本中检查内容是否存存在。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileCheckLine(
    strFileName,
    strContent
)

参数
strFileName

string

 
文件名

strContent

string

 
文本内容，不能包含回车换行符。

返回值
int32

 若执行成功，则返回行号，若执行失败，则返回-1。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local line = lualib:IO_TextFileCheckLine(file, str)
if line ~= -1 then  
    --  
end
<上一篇:设置文本文件内容下一篇:从文本文件中删除指定内容的行>
IO_TextFileDeleteLineStr
从文本文件中删除指定内容的行

更新时间：2021-09-07 00:00:00
此函数从文本文件中删除行内容为指定字符串的行。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileDeleteLineStr(
    strFileName,
    strContent
)

参数
strFileName

string

 
文件名

strContent

string

 
文本内容，不能包含回车换行符。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--行会管理员.lua  
       
--在reg_guild.txt中删除输入的激活码reg  
function VerifyReg(id, player, reg, npc)  
    --省略部分代码  
    local record = "reg_guild.txt"  
    if not lualib:IO_TextFileDeleteLineStr(record, reg) then  
        lualib:NPCTalkEx(npc, player, "校验激活码失败！\n \n \n \n \n \n \n \n \n                                                #OFFSET<x:0,y:1>##IMAGE<id:1902700019>##OFFSET<x:0,y:-2>#<@main *01*「返回」>")  
        return  
    end</x:0,y:-2></id:1902700019></x:0,y:1>  
    <x:0,y:1><id:1902700019><x:0,y:-2> </x:0,y:-2></id:1902700019></x:0,y:1>  
    --省略部分代码  
end
<上一篇:在文本中检查内容是否存在下一篇:从文本文件中删除指定行>
IO_TextFileDeleteLine
从文本文件中删除指定行

更新时间：2021-09-07 00:00:00
此函数从文本文件中删除指定行。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileDeleteLine(
    strFileName,
    dwLine
)

参数
strFileName

string

 
文件名

dwLine

uint32

 
行号，最小为1，最大为实际行数。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:IO_TextFileDeleteLine(file, 1)
<上一篇:从文本文件中删除指定内容的行下一篇:检查文本文件是否包含指定文本内容>
IO_TextFileFuzzyCheckLine
检查文本文件是否包含指定文本内容

更新时间：2023-08-11 00:00:00
此函数检查指定文本文件中是否包含指定的文本内容，并返回指定文本内容所在行号。

要检查的文本文件需存储在服务端data目录下。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量SetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon注意
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileFuzzyCheckLine(
    strFileName,
    strContent
)
参数
strFileName

string

 
文件名

strContent

string

 
要检查的文本内容（不能包含换行符“\n”）

返回值
int32

 
若找到指定文本内容，在返回指定文本内容首次出现时的行号；

若未找到指定文本内容，则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local line_num = lualib:IO_TextFileFuzzyCheckLine("信息表.txt","测试文本")
lualib:Warn("行数为"..line_num)

--此示例代码运行成功后，会打印指定文本内容在指定文本文件中首次出现时的行号。

<上一篇:从文本文件中删除指定行下一篇:从文本文件中取出指定行>
IO_TextFileGetLine
从文本文件中取出指定行

更新时间：2021-09-07 00:00:00
此函数从文本文件中取出指定行。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileGetLine(
    strFileName,
    dwLine
)

参数
strFileName

string

 
文件名

dwLine

uint32

 
行号，最小为1，最大为实际行数。

返回值
string

 行内容
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:检查文本文件是否包含指定文本内容下一篇:在文本文件中插入内容>
IO_TextFileInsertLine
在文本文件中插入内容

更新时间：2021-09-07 00:00:00
此函数在文本文件中插入内容。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileInsertLine(
    strFileName,
    dwLine,
    strContent
)

参数
strFileName

string

 
文件名

dwLine

uint32

 
前插行号，最小为1，最大为实际行数。

strContent

string

 
文本内容，不能包含回车换行符。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:IO_TextFileInsertLine(file, 1, str)
<上一篇:从文本文件中取出指定行下一篇:从文本文件中取出随机行>
IO_TextFileRndGetLine
从文本文件中取出随机行

更新时间：2021-09-07 00:00:00
此函数从文本文件中取出随机行。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileRndGetLine(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
string

 行内容
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local str = lualib:IO_TextFileRndGetLine(file)
<上一篇:在文本文件中插入内容下一篇:获得文本内容的总行数>
IO_TextFileTotalLine
获得文本内容的总行数

更新时间：2021-09-07 00:00:00
此函数获得文本内容的总行数，需要加载整个文件。

note_icon 备注
文件相关的接口是执行IO操作，效率较低，若无必要，请不要使用。

如果要持久化存储数据，请用数据库变量SetDBNum、SetDBStr等接口。

如要临时存储数据，请使用Game Server变量GetInt、SetStr等接口，并使用系统GUID作为对象。

caution_icon警告
该接口在沙盒中运行，只能操作Data目录，大量使用文件接口会造成服务器卡机，请谨慎使用。

语法
Luacopy 复制
lualib:IO_TextFileTotalLine(
    strFileName
)

参数
strFileName

string

 
文件名

返回值
int32

 若执行成功，则返回行数；若执行失败，则返回-1。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:从文本文件中取出随机行
AddScheduled
给服务器添加计划任务

更新时间：2021-09-07 00:00:00
此函数给服务器添加计划任务。

语法
Luacopy 复制
lualib:AddScheduled(
    dwScheduleID,
    strScheduleName,
    iType,
    tTime,
    strCallBack,
    strParam
)

参数
dwScheduleID

uint32

 
计划任务ID

通过脚本添加的计划任务ID必须大于100000

strScheduleName

string

 
计划任务名字

iType

int16

 
计划任务类型

1Y-m-d h:m:s 特定时间

2m-d h:m:s 每年执行

3d h:m:s 每月执行

4w h:m:s 每周执行

5h:m:s 每天执行

tTime

table

 
计划任务时间表

如：计划任务类型为4

则：{"0 19:30:00", "3 19:30:00"}，代表每周日19:30:00、周三19:30:00触发计划任务，每周的第一天从周日开始。

strCallBack

string

 
计划任务回调函数

回调函数格式：callback( dwScheduleID, strParam)

dwScheduleID(int)：计划任务ID

strParam(string)：自定义参数

strParam

string

 
自定义参数

脚本使用者自由设置，方便上下文切换，回调时由服务器做为参数自动传回。

返回值
bool

 
true添加成功

false添加失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:AddScheduled(100001, "测试玩法", 5, {"10:44:00", "18:55:00", "20:55:00"}, "testScheduled", "") then --给服务器添加计划任务100001
    --判断服务器是否有计划任务100001
	if lualib:HasScheduled(100001) then
        lualib:Warn("计划任务 100001 存在")
        lualib:DisableScheduled(100001) --清除服务器计划任务100001
        if not lualib:HasScheduled(100001) then
            lualib:Warn("计划任务 100001 不存在")
        end
    else
        lualib:Warn("......")
    end
end

--此示例代码运行成功如下图所示（给服务器添加计划任务100001后判断计划任务100001存在打印第一行内容，清除服务器计划任务100001后判断计划任务100001不存在打印第二行内容）。

HasScheduled.png
下一篇:清除服务器计划任务>
DisableScheduled
清除服务器计划任务

更新时间：2021-09-07 00:00:00
此函数清除服务器计划任务。

语法
Luacopy 复制
lualib:DisableScheduled(
    dwScheduleID
)

参数
dwScheduleID

uint32

 
计划任务ID

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:AddScheduled(100001, "测试玩法", 5, {"10:44:00", "18:55:00", "20:55:00"}, "testScheduled", "") then --给服务器添加计划任务100001
    --判断服务器是否有计划任务100001
	if lualib:HasScheduled(100001) then
        lualib:Warn("计划任务 100001 存在")
        lualib:DisableScheduled(100001) --清除服务器计划任务100001
        if not lualib:HasScheduled(100001) then
            lualib:Warn("计划任务 100001 不存在")
        end
    else
        lualib:Warn("......")
    end
end

--此示例代码运行成功如下图所示（给服务器添加计划任务100001后判断计划任务100001存在打印第一行内容，清除服务器计划任务100001后判断计划任务100001不存在打印第二行内容）。

HasScheduled.png
<上一篇:给服务器添加计划任务下一篇:判断服务器是否有计划任务>
HasScheduled
判断服务器是否有计划任务

更新时间：2021-09-07 00:00:00
此函数判断服务器是否有计划任务。

语法
Luacopy 复制
lualib:HasScheduled(
    dwScheduleID
)
参数
dwScheduleID

uint32

 
计划任务ID

返回值
bool

 
true服务器是否有对应ID的计划任务

false服务器没有对应ID的计划任务

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:AddScheduled(100001, "测试玩法", 5, {"10:44:00", "18:55:00", "20:55:00"}, "testScheduled", "") then --给服务器添加计划任务100001
    --判断服务器是否有计划任务100001
	if lualib:HasScheduled(100001) then
        lualib:Warn("计划任务 100001 存在")
        lualib:DisableScheduled(100001) --清除服务器计划任务100001
        if not lualib:HasScheduled(100001) then
            lualib:Warn("计划任务 100001 不存在")
        end
    else
        lualib:Warn("......")
    end
end

--此示例代码运行成功如下图所示（给服务器添加计划任务100001后判断计划任务100001存在打印第一行内容，清除服务器计划任务100001后判断计划任务100001不存在打印第二行内容）。

HasScheduled.png
<上一篇:清除服务器计划任务
GetURL
获取一个URL的内容

更新时间：2022-07-08 00:00:00
此函数获取一个URL的内容。

语法
Luacopy 复制
lualib:GetURL(
    Url,
    callback,
    param_list,
    timeout
)

参数
Url

string

 
http链接地址

note_icon 备注
此参数不能为空。

callback

string

 
获取内容后的回调函数

回调函数格式：SendLog_Callback(urlParam, errMsg, info)

urlParam(string)：链接中的参数

errMsg(int)：错误信息

info(string)：获取的内容（最大支持长度为100万个字节）

param_list

string

 
预设的回调参数

timeout

uint32

 
超时时间

单位为秒

返回值
bool

 
true投递请求成功

false投递请求失败

note_icon 备注
投递请求成功只代表执行成功，具体是否获取成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
下一篇:获取一个URL以post方式投递的数据>
PostURLEx
获取一个URL以post方式投递的数据

更新时间：2022-07-08 00:00:00
此函数获取一个URL以post方式投递的数据，并且可以在网址以post方式请求时设置网址消息头内容。

语法
Luacopy 复制
lualib:PostURLEx(
    Url,
    post_data,
    callback,
    param_list,
    timeout,
    headers
)
参数
Url

string

 
http链接地址

note_icon 备注
此参数不能为空。

post_data

string

 
以post方式投递的数据

callback

string

 
获取内容后的回调函数

回调函数格式：SendLog_Callback(urlParam, errMsg, info)

urlParam(string)：链接中的参数

errMsg(int)：错误信息

info(string)：获取的内容（最大支持长度为100万个字节）

param_list

string

 
预设的回调参数

timeout

uint32

 
超时时间

单位为秒

headers

table

 
http请求头内容

为table格式，格式为：{["Content-Type"]:"application/json"}

返回值
bool

 
true投递请求成功

false投递请求失败

note_icon 备注
投递请求成功只代表执行成功，具体是否获取成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:PostURLEx("http://114.55.106.156:9090/smallTarget/login", '{"appType": 0, "chanel": "string", "deviceId": "string", "gId": 0, "mainAgentId": 0, "mainAgentName": "string", "passWord": "string", "tId": 0, "traceId": "string", "userName": "string"}', "SendLog_Callback",  "", 30, {["Content-Type"] = "application/json"}) then
    lualib:SysWarnMsg(player, "投递请求成功！")
end

function SendLog_Callback(urlParam, errMsg, info)
    lualib:Warn("info="..info)
end

--此示例代码运行成功如下图所示。

PostUrlEx_2.png

PostUrlEx.png
<上一篇:获取一个URL的内容下一篇:获取一个URL以post方式投递的数据>
PostURL
获取一个URL以post方式投递的数据

更新时间：2022-07-08 00:00:00
此函数获取一个URL以post方式投递的数据。

语法
Luacopy 复制
lualib:PostURL(
    Url,
    post_data,
    callback,
    param_list,
    timeout
)

参数
Url

string

 
http链接地址

note_icon 备注
此参数不能为空。

post_data

string

 
以post方式投递的数据

callback

string

 
获取内容后的回调函数

回调函数格式：SendLog_Callback(urlParam, errMsg, info)

urlParam(string)：链接中的参数

errMsg(int)：错误信息

info(string)：获取的内容（最大支持长度为100万个字节）

param_list

string

 
预设的回调参数

timeout

uint32

 
超时时间

单位为秒

返回值
bool

 
true投递请求成功

false投递请求失败

note_icon 备注
投递请求成功只代表执行成功，具体是否获取成功以实际操作为准。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取一个URL以post方式投递的数据下一篇:将字符串进行URL解码>
UrlDecode
将字符串进行URL解码

更新时间：2021-09-07 00:00:00
此函数将字符串进行URL解码。

语法
Luacopy 复制
lualib:UrlDecode(
    strString
)

参数
strString

string

 
字符串

返回值
string

 解编码后的字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取一个URL以post方式投递的数据下一篇:将字符串进行URL编码>
UrlEncode
将字符串进行URL编码

更新时间：2021-09-07 00:00:00
此函数将字符串进行URL编码。

语法
Luacopy 复制
lualib:UrlEncode(
    strString
)

参数
strString

string

 
字符串

返回值
string

 编码后的字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:将字符串进行URL解码
GetAllDays
获取所有的天数

更新时间：2021-09-07 00:00:00
此函数获取1970年1月1日0时0分0到现在经过的天数(UTC)。

语法
Luacopy 复制
lualib:GetAllDays(
    dwTimes
)

参数
dwTimes

uint32

 
时间戳，单位为秒。

0现在时间

返回值
uint32

 天数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local a = lualib:GetAllDays(0)  
local b = lualib:GetInt(player, "vip_xiaoyao")  
local msg = ""  
if b ~= a then  
    msg = msg.."您今天还可以领取一次逍遥法外状态，该状态下PK不增加PK值！\n\n"  
    msg = msg.."<@lingqu *01*领取>\n"  
    msg = msg.."<@leave *01*离开>\n"  
else  
    msg = msg.."您今天已经领取过逍遥法外状态，不可领取！"  
end
下一篇:获取所有的月数>
GetAllMonths
获取所有的月数

更新时间：2021-09-07 00:00:00
此函数获取1970年1月1日0时0分0到现在经过的月数(UTC)。

语法
Luacopy 复制
lualib:GetAllMonths(
    dwTimes
)

参数
dwTimes

uint32

 
时间戳，单位为秒。

0现在时间

返回值
uint32

 月数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取所有的天数下一篇:获取所有毫秒数>
GetAllTimeMs
获取所有毫秒数

更新时间：2021-09-07 00:00:00
此函数获取1970年1月1日0时0分0到现在经过的毫秒数(UTC)。

语法
Luacopy 复制
lualib:GetAllTimeMs()

参数
无

返回值
double

 毫秒数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取所有的月数下一篇:获取所有的秒数>
GetAllTime
获取所有的秒数

更新时间：2021-09-07 00:00:00
此函数获取1970年1月1日0时0分0到现在经过的秒数(UTC)。

语法
Luacopy 复制
lualib:GetAllTime()

参数
无

返回值
uint32

 秒数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local curTime = lualib:GetAllTime()
<上一篇:获取所有毫秒数下一篇:获取所有的周数>
GetAllWeeks
获取所有的周数

更新时间：2021-09-07 00:00:00
此函数获取1970年1月1日0时0分0到现在经过的周数(UTC)。

语法
Luacopy 复制
lualib:GetAllWeeks(
    dwTimes
)

参数
dwTimes

uint32

 
时间戳，单位为秒。

0现在时间

返回值
uint32

 周数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetCastleCustomVarInt(castle_name, "award_leader_week_count", lualib:GetAllWeeks(0))
<上一篇:获取所有的秒数下一篇:获取所有的年数>
GetAllYears
获取所有的年数

更新时间：2021-09-07 00:00:00
此函数获取1970年1月1日0时0分0到现在经过的年数(UTC)。

语法
Luacopy 复制
lualib:GetAllYears(
    dwTimes
)

参数
dwTimes

uint32

 
时间戳，单位为秒。

0现在时间

返回值
uint32

 年数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取所有的周数下一篇:获取指定时间值的天>
GetDay
获取指定时间值的天

更新时间：2021-09-07 00:00:00
此函数获取指定时间值的天。

语法
Luacopy 复制
lualib:GetDay(
    dwTimes
)

参数
dwTimes

uint32

 
时间戳，单位为秒。

0现在时间

返回值
uint32

 天，范围：[1 - 31]
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取所有的年数下一篇:获取指定时间值的月>
GetMonth
获取指定时间值的月

更新时间：2021-09-07 00:00:00
此函数获取指定时间值的月。

语法
Luacopy 复制
lualib:GetMonth(
    dwTimes
)

参数
dwTimes

uint32

 
时间戳，单位为秒。

0现在时间

返回值
uint32

 月，范围：[1 - 12]
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取指定时间值的天下一篇:获取系统的时钟嘀答数>
GetTickCount
获取系统的时钟嘀答数

更新时间：2021-09-07 00:00:00
此函数获取系统的时钟嘀答数。

系统从开机到当前时间所经过的时钟嘀答数。

语法
Luacopy 复制
lualib:GetTickCount()

参数
无

返回值
uint32

 嘀答数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取指定时间值的月下一篇:获取指定时间值的周>
GetWeek
获取指定时间值的周

更新时间：2022-02-21 00:00:00
此函数获取指定时间值对应的周（即每周的第几天）。

语法
Luacopy 复制
lualib:GetWeek(
    dwTimes
)

参数
dwTimes

uint32

 
指定时间对应的时间戳

单位为秒（s）

0当前时间

返回值
uint32

 
天（每周的第几天）

0周日

1周一

2周二

3周三

4周四

5周五

6周六

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取系统的时钟嘀答数下一篇:获取指定时间值的年>
GetYear
获取指定时间值的年

更新时间：2021-09-07 00:00:00
此函数获取指定时间值的年。

语法
Luacopy 复制
lualib:GetYear(
    dwTimes
)

参数
dwTimes

uint32

 
时间戳，单位为秒。

0现在时间

返回值
uint32

 年，范围：[1900 - ~]
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取指定时间值的周下一篇:获取当前时间>
Now
获取当前时间

更新时间：2021-09-07 00:00:00
此函数获取当前时间。

语法
Luacopy 复制
lualib:Now()

参数
无

返回值
string

 当前时间，格式：年-月-日 时:分:秒。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local strTime = lualib:Now()  
print("当前时间为:"..strTime)
<上一篇:获取指定时间值的年下一篇:字符串时间转换数值型时间>
Str2Time
字符串时间转换数值型时间

更新时间：2023-07-14 00:00:00
此函数将字符串时间转换成数值型时间(UTC)。

语法
Luacopy 复制
lualib:Str2Time(
    strDateTime
)

参数
strDateTime

string

 
字符串时间，时间格式：Y-m-d H:M:S或Y-m-d

返回值
uint32

 数值时间
note_icon 备注
若参数格式错误，则会返回0。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Str2Time("2012-11-11 11:11:11")        
lualib:Str2Time("2012-11-11")
<上一篇:获取当前时间下一篇:数值型时间转换字符串时间>
Time2Str
数值型时间转换字符串时间

更新时间：2021-11-30 00:00:00
此函数将数值型时间转换成字符串时间（本地时间）。

语法
Luacopy 复制
lualib:Time2Str(
    strFmt,
    dwTimes
)

参数
strFmt

string

 
字符串时间

时间格式：%Y-%m-%d %H:%M

dwTimes

uint32

 
时间戳

单位为秒（s）

返回值
string

 字符串时间
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local time = lualib:GetAllTime() --获取所有的秒数
lualib:SysMsg_SendWarnMsg(player, "示例二："..lualib:Time2Str("%Y-%m-%d %H:%M:%S", time)) --将数值型时间转换为字符串时间

--此示例代码运行成功如下图所示。

Time2Str.png
<上一篇:字符串时间转换数值型时间下一篇:获取字符串时间的差值的绝对值>
TimeDiffEx
获取字符串时间的差值的绝对值

更新时间：2021-09-07 00:00:00
此函数获取字符串时间的差值的绝对值。

语法
Luacopy 复制
lualib:TimeDiffEx(
    strDateTime1,
    strDateTime2
)
参数
strDateTime1

string

 
字符串时间，时间格式：Y-m-d H:M:S或Y-m-d

strDateTime2

string

 
字符串时间，时间格式：Y-m-d H:M:S或Y-m-d

返回值
int32

 
时间差值，单位为秒

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dif1 = lualib:TimeDiffEx("2020-09-01", "2020-09-02")
local dif2 = lualib:TimeDiffEx("2020-09-02", "2020-09-01")
lualib:SysWarnMsg(player, "时间差值1为："..dif1.."秒")
lualib:SysWarnMsg(player, "时间差值2为："..dif2.."秒")

--此示例代码运行成功如下图所示。

TimeDiffEx.png
<上一篇:数值型时间转换字符串时间下一篇:获取字符串时间的差值>
TimeDiff
获取字符串时间的差值

更新时间：2021-09-07 00:00:00
此函数获取字符串时间的差值(UTC)。

语法
Luacopy 复制
lualib:TimeDiff(
    strDateTime1,
    strDateTime2
)

参数
strDateTime1

string

 
字符串时间，时间格式：Y-m-d H:M:S或Y-m-d

strDateTime2

string

 
字符串时间，时间格式：Y-m-d H:M:S或Y-m-d

caution_icon 注意
strDateTime1必须大于等于strDateTime2。

返回值
int32

 时间差值，单位为秒。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local dif = lualib:TimeDiff("2013-08-08", "2013-08-07")
<上一篇:获取字符串时间的差值的绝对值
string.chr
ASCII转换为字符

更新时间：2021-09-07 00:00:00
此函数将ASCII转成字符。

语法
Luacopy 复制
string.chr(
    iAscii
)

参数
iAscii

int

 
字符的ASCII码

返回值
string

 ASCII码对应的字符，长度为1。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
string.chr(65)
--执行的结果显示为”A”。
下一篇:查找子字符串>
string.indexOf
查找子字符串

更新时间：2021-09-07 00:00:00
此函数在主字符串中从指定位置开始查找子字符串。

语法
Luacopy 复制
string.indexOf(
    strMaster,
    strSub,
    iOffset
)

参数
strMaster

string

 
主字符串

strSub

string

 
子字符串

iOffset

int

 
相对字符串开头的偏移位

note_icon 备注
此参数可选择不传，若不传，则默认为0，即从主字符串最左端开始查找。

返回值
int

 
查找成功则返回查找到的位置(数组下标，从0开始)

查找失败则返回-1

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
string.indexOf("abcdef", "b", 3)
--从第四个字符开始查找字符串“b”，查找失败，执行的结果显示为“-1”。
string.indexOf("abcdef", "b")
--从主字符串最左端开始查找字符串“b”，查找成功返回查找到的位置，执行的结果显示为“1”。
<上一篇:ASCII转换为字符下一篇:从字符串左边截取字符串>
string.left
从字符串左边截取字符串

更新时间：2021-09-07 00:00:00
此函数从字符串的左边开始指定的位置截取特定长度的字符，并返回该新字符串。

note_icon 备注
截取的字符长度不能超出字符串的末尾。

语法
Luacopy 复制
string.left(
    strString,
    iLen,
    iOffset
)

参数
strString

string

 
字符串

iLen

int

 
截取的字符长度

iOffset

int

 
左边的起始位置

此参数可选择不传，若不传，则默认为0，即字符串最左边的位置作为起始位置开始截取。

返回值
string

 新字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
string.left("abcdef", 2, 1)
--执行的结果显示为”bc”。
string.left("abcdef", 2)
--执行的结果显示为”ab”。
<上一篇:查找子字符串下一篇:从字符串中截取字符串>
string.mid
从字符串中截取字符串

更新时间：2021-09-07 00:00:00
此函数从字符串的指定的位置截取特定长度的字符，并返回该新字符串。

此函数功能同string.left。

note_icon 备注
截取的字符长度不能超出字符串的末尾。

语法
Luacopy 复制
string.mid(
    strString,
    iOffset,
    iLen
)

参数
strString

string

 
字符串

iOffset

int

 
起始位置

iLen

int

 
截取的字符长度

返回值
string

 新字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
string.mid("abcdef", 1, 2)
--执行的结果显示为”bc”。
<上一篇:从字符串左边截取字符串下一篇:返回字符的ASCII码>
string.ord
返回字符的ASCII码

更新时间：2021-09-07 00:00:00
此函数返回字符的ASCII码。

语法
Luacopy 复制
string.ord(
    strChar
)

参数
strChar

string

 
字符串，长度必须为1。

返回值
int

 字符的ascii码
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
string.ord("A")
--执行的结果显示为“65”。
<上一篇:从字符串中截取字符串下一篇:字符串替换>
string.replace
字符串替换

更新时间：2021-09-07 00:00:00
此函数在主字符串中查找子字符串，查找到后将找到的子字符串进行替换操作。

语法
Luacopy 复制
string.replace(
    strMaster,
    strFinder,
    strReplace
)

参数
strMaster

string

 
主字符串

strFinder

string

 
查找的字符串

strReplace

string

 
替换的字符串

返回值
string

 新字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:返回字符的ASCII码下一篇:从字符串右边截取字符串>
string.right
从字符串右边截取字符串

更新时间：2021-09-07 00:00:00
此函数从字符串的右边开始指定的位置截取特定长度的字符，并返回该新字符串。

note_icon 备注
截取的字符长度不能超出字符串长度。

语法
Luacopy 复制
string.right(
    strString,
    iLen,
    iOffset
)

参数
strString

string

 
字符串

iLen

int

 
截取的字符长度

iOffset

int

 
右边的起始位置

此参数可选择不传，若不传，则默认为0，即字符串最右边的位置作为起始位置开始截取。

返回值
string

 新字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
string.right("abcdef", 2, 1)
--执行的结果显示为”de”。
string.right("abcdef", 2)
--执行的结果显示为”ef”。
<上一篇:字符串替换下一篇:字符串分割>
string.split
字符串分割

更新时间：2021-09-07 00:00:00
此函数以子串为分隔符，对主串进行分隔。

note_icon 备注
等同于StrSplit。

语法
Luacopy 复制
string.split(
    strMaster,
    strSub
)

参数
strMaster

string

 
主字符串

strSub

string

 
分隔字符串

返回值
table

 分隔后的字符串放入表中，并返回这个表。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
string.split("ABC#DE","#")
--执行的结果显示为“{"ABC", "DE"}”。
<上一篇:从字符串右边截取字符串下一篇:移除字符串首尾空格>
string.trim
移除字符串首尾空格

更新时间：2021-09-07 00:00:00
此函数去掉字符串首尾多余的空白字符。

note_icon 备注
空白字符包括：换行符(\n)、制表符(\t)、回车符(\r)、回退符(\b)、换页符 (\f)和空格符(\32)。

语法
Luacopy 复制
string.trim(
    strString
)

参数
strString

string

 
字符串

返回值
string

 移除首尾空格后的字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:字符串分割
IsBanString
判断字符串是不是敏感词

更新时间：2021-09-07 00:00:00
此函数判断字符串是不是敏感词。

语法
Luacopy 复制
lualib:IsBanString(
    strString
)

参数
strString

string

 
字符串

返回值
bool

 
true是敏感词。

false不是敏感词。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:IsBanString(str) then      
    return "请不要输入敏感词"  
end
下一篇:查找是否存在指定字符串>
IsInCollection
查找是否存在指定字符串

更新时间：2025-05-06 00:00:00
此函数作用为查找是否存在指定字符串，即在主字符串被分割后的列表中查找是否存在指定的子字符串。

语法
Luacopy 复制
lualib:IsInCollection(
    strMaster,
    strSubStr,
    strSplit  
)

参数
strMaster

string

 
被分割字符串

strSubStr

string

 
子字符串

strSplit

string

 
分割符

返回值
bool

 
主字符串被分割后的列表中是否存在指定的子字符串

true存在

false不存在

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local my_family_name = lualib:Name(lualib:GuildGuid(player)) --获取玩家所在行会名  
local atk_familys = lualib:GetCastleAttackFamily(castle_table[tonumber(index)]) --获取所有该城堡有攻打权的行会名的集合，用&amp;分隔  

if not lualib:IsCastleWarNull(castle_table[tonumber(index)]) then  
    if lualib:IsInCollection(atk_familys, my_family_name,"&amp;") then --判断玩家所在行会是否在有攻打权的行会名单中  
        return "你已经申请过攻城了，请不要重复提交！\n \n \n \n \n \n \n \n \n"                                                       
    end  
end
<上一篇:判断字符串是不是敏感词下一篇:字符串MD5加密>
MD5
字符串MD5加密

更新时间：2021-09-07 00:00:00
此函数将字符串进行MD5加密。

语法
Luacopy 复制
lualib:MD5(
    strCode
)

参数
strCode

string

 
源字符串

返回值
string

 32字节MD码
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:查找是否存在指定字符串下一篇:ZIP压缩>
Str2Zip
ZIP压缩

更新时间：2021-09-07 00:00:00
此函数将指定文本进行ZIP压缩，然后再进行BASE64编码。

语法
Luacopy 复制
lualib:Str2Zip(
    strText
)

参数
strText

string

 
文本串

返回值
string

 ZIP压缩后的BASE64编码串
note_icon 备注
此返回值支持的最大长度为256KB。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:字符串MD5加密下一篇:字符串分割函数>
StrSplit
字符串分割函数

更新时间：2021-09-07 00:00:00
此函数将字符串分割。

语法
Luacopy 复制
lualib:StrSplit(
    strMaster,
    strSplit
)

参数
strMaster

string

 
被分割串

strSplit

string

 
分割符

返回值
table

 
分割后的子串列表，存储在lua表中。

如：tSubStr = lualib:StrSplit("aa\#\#bb\#\#cc\#d", "\#\#")

tSubStr = {"aa", "bb", "cc\#d"}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--假阵眼.lua  

--开启进度条，滚动条完成回调函数"kaiqi"，传入参数用#隔开  
lualib:ProgressBarStart(player, jdt_time, "开启阵眼", "kaiqi", "shibai", map.."#"..x.."#"..y.."#"..monster.."#"..keyname)  

function kaiqi(player, params) --传入参数保存在params中  
    params = lualib:StrSplit(params, "#")  
    map = params[1]  
    x = params[2]  
    y = params[3]  
    monster = params[4]  
    keyname = params[5]  
    --省略部分代码  
end
<上一篇:ZIP压缩下一篇:ZIP解压>
Zip2Str
ZIP解压

更新时间：2021-09-07 00:00:00
此函数将指定文本进行BASE64解码，然后再进行ZIP解压。

语法
Luacopy 复制
lualib:Zip2Str(
    strZip
)

参数
strZip

string

 
编码串

note_icon 备注
此参数支持的最大输入长度为256KB。

返回值
string

 文本串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:字符串分割函数
GetAllNotInGamePlayerName
获取服务器上所有不在线玩家的名字

更新时间：2022-10-21 00:00:00
此函数获取服务器上所有不在线玩家的名字。

语法
Luacopy 复制
lualib:GetAllNotInGamePlayerName()
参数
无

返回值
table

 
不在线玩家的名字列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local t_nop =  lualib:GetAllNotInGamePlayerName()
for i=1,#t_nop do
    lualib:Warn("第"..i.."个不在线玩家名字："..t_nop[i])
end

--此示例代码运行成功如下图所示（截取部分）。

GetAllNotInGamePlayerName.png
下一篇:获取当前服务器所有在线玩家列表>
GetAllOnlinePlayerNames
获取当前服务器所有在线玩家列表

更新时间：2021-09-07 00:00:00
此函数获取服务器上所有在线玩家角色的名字列表，但不包括离线挂机的玩家在内。

语法
Luacopy 复制
lualib:GetAllOnlinePlayerNames()
参数
无

返回值
table

 
玩家角色名列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local tName = lualib:GetAllOnlinePlayerNames()
lualib:SysWarnMsg(player, "在线玩家数：" .. #tName)
for i = 1, #tName do
    lualib:SysWarnMsg(player, tName[i])
end

--此示例代码输出如下。

GetAllOnlinePlayerNames
<上一篇:获取服务器上所有不在线玩家的名字下一篇:获取服务器所有人数>
GetAllPlayerCount
获取服务器所有人数

更新时间：2021-09-07 00:00:00
此函数获取服务器所有人数。

语法
Luacopy 复制
lualib:GetAllPlayerCount()

参数
无

返回值
int

 服务器人数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前服务器所有在线玩家列表下一篇:获取当前服务器所有在线玩家列表（包括离线挂机的玩家）>
GetAllPlayerNames
获取当前服务器所有在线玩家列表（包括离线挂机的玩家）

更新时间：2021-09-07 00:00:00
此函数获取服务器上所有在线玩家角色的名字列表（包括离线挂机的玩家）。

语法
Luacopy 复制
lualib:GetAllPlayerNames()

参数
无

返回值
table

 
玩家角色名列表

存储在lua表中

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function WarnPrint(npc,player)
    local tableplayer = {}
    tableplayer = lualib:GetAllPlayerNames() --获取服务器上所有玩家的名字列表
    for i = 1 ,#tableplayer do 
        lualib:Warn(""..tableplayer[i])  
    end
end

--此示例代码运行成功如下图所示。

GetAllPlayerNames.png
<上一篇:获取服务器所有人数下一篇:获得游戏服务器版本号>
GetGSVer
获得游戏服务器版本号

更新时间：2021-09-07 00:00:00
此函数获得游戏服务器版本号。

语法
Luacopy 复制
lualib:GetGSVer()

参数
无

返回值
string

 获得游戏服务器版本号，格式：年-月-日 时:分:秒。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取当前服务器所有在线玩家列表（包括离线挂机的玩家）下一篇:获取组ID>
GetGroupId
获取组ID

更新时间：2021-09-07 00:00:00
此函数获取组ID。

语法
Luacopy 复制
lualib:GetGroupId()

参数
无

返回值
uint32

 组ID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
   
local grpid = lualib:GetGroupId()  
local msg = "<a href="http://pay.hzyotoy.com/index.do?mod=pay&amp;groupid">http://pay.hzyotoy.com/index.do?mod=pay&amp;groupid</a>=" .. grpid  
lualib:SysMsg_SendWebPage(player, msg)
<上一篇:获得游戏服务器版本号下一篇:获取组Name>
GetGroupName
获取组Name

更新时间：2021-09-07 00:00:00
此函数获取组Name。

语法
Luacopy 复制
lualib:GetGroupName()

参数
无

返回值
string

 组Name
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取组ID下一篇:获取服务器上所有玩家数量>
GetPlayerCount
获取服务器上所有玩家数量

更新时间：2021-09-07 00:00:00
此函数获取服务器上所有玩家数量。

语法
Luacopy 复制
lualib:GetPlayerCount(
    bOffline
)

参数
bOffline

bool

 
是否只取离线玩家数量

返回值
uint32

 服务器上玩家数量
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local people = lualib:GetPlayerCount(true)
<上一篇:获取组Name下一篇:获取服务器ID>
GetSvrId
获取服务器ID

更新时间：2021-09-07 00:00:00
此函数获取服务器ID。

语法
Luacopy 复制
lualib:GetSvrId()

参数
无

返回值
uint32

 服务器ID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取服务器上所有玩家数量下一篇:获取服务器运行总时间>
GetSvrRunTime
获取服务器运行总时间

更新时间：2021-09-07 00:00:00
此函数获取服务器从启动到现在开始总的运行时间。

语法
Luacopy 复制
lualib:GetSvrRunTime()

参数
无

返回值
uint32

 运行的秒数
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取服务器ID下一篇:获取区ID>
GetZoneId
获取区ID

更新时间：2021-09-07 00:00:00
此函数获取区ID。

语法
Luacopy 复制
lualib:GetZoneId()

参数
无

返回值
uint32

 区ID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
   
local svrid = lualib:GetZoneId()  
local msg = "<a href="http://www.hzyotoy.com/index.do?mod=playersuggest&amp;act=add&amp;uid="..userid.."&amp;uname="..name.."&amp;sid="..svrid">http://www.hzyotoy.com/index.do?mod=playersuggest&amp;act=add&amp;uid="..userid.."&amp;uname="..name.."&amp;sid="..svrid</a>  
lualib:SysMsg_SendWebMsg(player, "神途意见箱", msg, "")
<上一篇:获取服务器运行总时间下一篇:获取区密钥>
GetZoneKey
获取区密钥

更新时间：2021-09-07 00:00:00
此函数获取区密钥。

语法
Luacopy 复制
lualib:GetZoneKey()

参数
无

返回值
string

 区密钥
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取区ID下一篇:获取区服名称>
GetZoneName
获取区服名称

更新时间：2022-04-24 00:00:00
此函数获取区服名称。

语法
Luacopy 复制
lualib:GetZoneName()

参数
无

返回值
string

 区服名称
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
"尊敬的玩家您好！《".. lualib:GetZoneName() .."》服务器正在筹备阶段，无法登录，游戏将于"..StartServerTime.."正式开启，敬请期待！"
<上一篇:获取区密钥下一篇:获取区服类型>
GetZoneType
获取区服类型

更新时间：2021-09-07 00:00:00
此函数获取区服类型。

语法
Luacopy 复制
lualib:GetZoneType()
参数
无

返回值
int

 
区服类型

0普通区服。

1对战区服(跨服主区)。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local type = lualib:GetZoneType()
lualib:Warn("区服类型是:"..type)
<上一篇:获取区服名称下一篇:获取全服是否可以创建角色>
IsServerCanCreateRole
获取全服是否可以创建角色

更新时间：2021-09-07 00:00:00
此函数用于获取全服是否可以创建角色。

caution_icon注意
请勿在调用ServerCreateRoleSwitch后立即调用此接口。

是否能创建角色由dbserver控制，调用ServerCreateRoleSwitch后需等待dbserver的返回。

语法
Luacopy 复制
lualib:IsServerCanCreateRole()
参数
无

返回值
bool

 
是否可以创建角色。

true允许创建

false不允许创建

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-=========关闭创角
function TestNPC_test(npc, player)
    lualib:SysWarnMsg(player, "1 可否创建角:" .. tostring(lualib:IsServerCanCreateRole())) --获取当前创建角色的状态
    lualib:ServerCreateRoleSwitch(0)
    lualib:DelayCall(player, 1000, "TestNPC_test_delay", "") --添加延时1s回调
    return main(npc, player)
end
function TestNPC_test_delay(player)
    lualib:SysWarnMsg(player, "2 可否创建角:" .. tostring(lualib:IsServerCanCreateRole()))
end

--示例代码运行结果如下。

ServerCreateRoleSwitch

--关闭创建角色后，系统会提示如下。

ServerCreateRoleSwitch_2
<上一篇:获取区服类型下一篇:是否是测试区>
IsTestServer
是否是测试区

更新时间：2024-07-26 00:00:00
此函数检测是否是测试区。

语法
Luacopy 复制
lualib:IsTestServer()
参数
无

返回值
bool

 
true测试区

false正式区

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取全服是否可以创建角色下一篇:控制全服是否可以创建角色>
ServerCreateRoleSwitch
控制全服是否可以创建角色

更新时间：2021-09-07 00:00:00
此函数用于控制全服是否可以创建角色。

语法
Luacopy 复制
lualib:ServerCreateRoleSwitch(
    enable
)
参数
enable

uint8

 
是否可以创建角色。

0不允许创建

1允许创建

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
-=========关闭创角
function TestNPC_test(npc, player)
    lualib:SysWarnMsg(player, "1 可否创建角:" .. tostring(lualib:IsServerCanCreateRole())) --获取当前创建角色的状态
    lualib:ServerCreateRoleSwitch(0)
    lualib:DelayCall(player, 1000, "TestNPC_test_delay", "") --添加延时1s回调
    return main(npc, player)
end
function TestNPC_test_delay(player)
    lualib:SysWarnMsg(player, "2 可否创建角:" .. tostring(lualib:IsServerCanCreateRole()))
end

--示例代码运行结果如下。

ServerCreateRoleSwitch

--关闭创建角色后，系统会提示如下。

ServerCreateRoleSwitch_2
<上一篇:是否是测试区下一篇:设置服务器开放等级上限>
SetPlayerTopLevel
设置服务器开放等级上限

更新时间：2022-07-18 00:00:00
此函数设置服务器开放等级上限。

caution_icon注意
重新加载全局表或者重启服务器后，此接口设置的等级失效。

语法
Luacopy 复制
lualib:SetPlayerTopLevel(
    level
)
参数
level

uint32

 
上限等级

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--此示例代码运行前提为游戏工具平台→游戏配置→全局表→全局模板表→其他设置→游戏配置中的服务器开放等级字段配置为100。
SetPlayerTopLevel_2.png
lualib:SetPlayerTopLevel(102)
lualib:SysWarnMsg(player, "等级上限设置成功")

--此示例代码运行成功如下图所示。

SetPlayerTopLevel.png
<上一篇:控制全服是否可以创建角色
GMLevel
获取玩家的GM等级

更新时间：2021-09-07 00:00:00
此函数获取玩家的GM等级。

语法
Luacopy 复制
lualib:GMLevel(
    strPlayer
)

参数
strPlayer

string

 
玩家GUID

返回值
int32

 玩家的GM等级
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:GMLevel(player) < 5 then    
    return "GM权限不足"  
end
下一篇:判断玩家是否是GM>
Player_IsGM
判断玩家是否是GM

更新时间：2022-04-24 00:00:00
此函数判断玩家是否是GM。

语法
Luacopy 复制
lualib:Player_IsGM(
    strPlayer
)

参数
strPlayer

string

 
玩家的GUID

返回值
bool

 
true是GM。

false不是GM。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--system.lua  
       
function on_login_delay_timer(player, timer_id)  
    --省略部分代码  
    if lualib:Player_IsGM(player) then  --判断玩家是否是GM，GM登录进入隐形无敌状态  
        lualib:Player_SetGhost(player, true)  
        lualib:SysMsg_SendWarnMsg(player, "你已进入隐形状态！")  
        lualib:Player_SetInvincible(player, true)  
        lualib:SysMsg_SendWarnMsg(player, "你已进入无敌状态！")  
    end  
    --省略部分代码  
end  
 
<上一篇:获取玩家的GM等级下一篇:让玩家执行GM指令>
Player_RunGMCmd
让玩家执行GM指令

更新时间：2021-09-07 00:00:00
此函数让玩家执行GM指令。

语法
Luacopy 复制
lualib:Player_RunGMCmd(
    strPlayer,
    strAlias,
    strParam
)

参数
strPlayer

string

 
玩家的GUID

strAlias

string

 
GM指令的名字

strParam

string

 
GM指令的参数

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Player_RunGMCmd(player, "sa", "0 60")          
lualib:Player_RunGMCmd(player, "s", "0")          
lualib:Player_RunGMCmd(player, "i", "灵元珠 100")          
lualib:Player_RunGMCmd(player, "i", "封印鉴定符 30")          
lualib:Player_RunGMCmd(player, "i", "逍遥游(7天) 1")          
lualib:Player_RunGMCmd(player, "i", "开光印 10")
<上一篇:判断玩家是否是GM下一篇:重载GM表>
ReloadGMList
重载GM表

更新时间：2021-09-07 00:00:00
此函数重载GM表。

语法
Luacopy 复制
lualib:ReloadGMList()

参数
无

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:ReloadGMList()  
return "刷新GM列表成功"  
 
<上一篇:让玩家执行GM指令
AccountNameEx
获取玩家的账号名（扩展）

更新时间：2021-09-07 00:00:00
此函数获取玩家的账号名。

语法
Luacopy 复制
lualib:AccountNameEx(
    strPlayer
)
参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
玩家存在则返回玩家的账号名

玩家不存在则返回""

note_icon 备注
使用账号密码登录的账号中的字母全部返回小写状态，使用第三方登录的账号保持不变。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:Warn("玩家的账号名: "..lualib:AccountNameEx("aaaaaaaaa")) --GUID为“aaaaaaaaa”的玩家角色不存在
lualib:Warn("玩家的账号名: "..lualib:AccountNameEx(player))

--此示例代码运行成功如下图所

AccountNameEx.png
下一篇:获取玩家的账号名>
AccountName
获取玩家的账号名

更新时间：2021-09-07 00:00:00
此函数获取玩家的账号名。

语法
Luacopy 复制
lualib:AccountName(
    strPlayer
)

参数
strPlayer

string

 
玩家角色的GUID

返回值
string

 
玩家存在则返回玩家的账号名

玩家不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local AccountName = lualib:AccountName(player) --获取玩家账号名
lualib:Warn("当前玩家账号名为："..AccountName)

--此示例代码运行成功如下图所示。

AccountName.png
<上一篇:获取玩家的账号名（扩展）下一篇:解除禁止登录>
DisaFbdLogin
解除禁止登录

更新时间：2022-04-24 00:00:00
此函数解除禁止登录。

语法
Luacopy 复制
lualib:DisaFbdLogin(
    strKeyword,
    byType
)

参数
strKeyword

string

 
禁止登录关键字

byType

uint8

 
登录类型，决定登录关键字的含义。

1IP

2角色

3账号

4硬件码

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:DisaFbdLogin("过客", 2)
<上一篇:获取玩家的账号名下一篇:发送验证码请求>
SendCaptchaReq
发送验证码请求

更新时间：2021-09-07 00:00:00
此函数发送验证码请求。

caution_icon警告
返回成功只代表验证码请求发送成功，具体结果请监听相应的触发。

语法
Luacopy 复制
lualib:SendCaptchaReq(
    player_guid,
    type
)

参数
player_guid

string

 
角色GUID

type

uint32

 
验证码类型

0找出两个相同的字

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
<上一篇:解除禁止登录下一篇:禁止登录>
SetFbdLogin
禁止登录

更新时间：2022-04-24 00:00:00
此函数作用为禁止登录。

语法
Luacopy 复制
lualib:SetFbdLogin(
    strKeyword,
    byType,
    dwTimes,
    strDesc
)

参数
strKeyword

string

 
禁止登录关键字

byType

uint8

 
登录类型，决定登录关键字的含义。

1IP

2角色

3账号

4硬件码

dwTimes

uint32

 
禁止持续时间，单位为秒。

strDesc

string

 
禁止原因

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetFbdLogin("过客", 2, 600, "测试封号")
<上一篇:发送验证码请求下一篇:获取玩家的账号ID>
UserID
获取玩家的账号ID

更新时间：2021-09-07 00:00:00
此函数获取玩家的账号ID。

语法
Luacopy 复制
lualib:UserID(
    strPlayer
)

参数
strPlayer

string

 
玩家GUID

返回值
uint32

 若执行成功，则返回账号ID；若执行错误，则返回0。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local user_id = lualib:UserID(player)  
<上一篇:禁止登录
AddTimerEx
给对象添加定时器（扩展）

更新时间：2023-03-07 00:00:00
此函数给对象添加定时器。

语法
Luacopy 复制
lualib:AddTimerEx(
    strObject,
    dwTimerID,
    iElapse,
    iCount,
    strCallBack,
    strParam
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、地图、物品、系统。

dwTimerID

uint32

 
定时器的ID，同一对象下ID必须唯一。

iElapse

int32

 
定时器的触发间隔，单位为毫秒。

iCount

int32

 
定时器的触发次数。

设为-1时，无限触发。

strCallBack

string

 
定时器触发时，回调该函数。

函数格式: 1 = 函数名 2 = 文件名:函数名

回调函数格式：callback(strObject, dwTimerID, strParam1,...,strParamn)

strObject(string)：对象的GUID，对象可以为玩家、怪物、NPC、地图、物品、系统

dwTimerID(int)：定时器的ID

strParam1,...,strParamn(string)：自定义参数1到自定义参数n，传入多个自定义参数

strParam

string

 
自定义参数

函数回调时自动传回，方便脚本作者上下文切换。

返回值
bool

 
true添加成功。

false添加失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_trigger_enter_map(player)  --进入地图时，添加定时器  
    --省略部分代码   
	local param1,param2 = 1,2
    lualib:AddTimerEx(player,5466,1000,-1,"on_time", param1.."#"..param2)  --定时调用on_time函数  
    --省略部分代码  
end  

function on_time(player, timer_id, param1, param2)  
    if lualib:Level(player) >= 40 then  
        lualib:Player_MapMoveXY(player,"龙城", 230, 240, 5)  
        lualib:SysMsg_SendBottomColor(player,"你已经足够强大了。",8, 6)  
    elseif not lualib:Player_SubIngot(player,5, false,"泡点", player) then  
        lualib:Player_MapMoveXY(player,"龙城", 230, 240, 5)  
        lualib:SysMsg_SendBottomColor(player,"您的余额不足！",8, 6)  
    else  
        lualib:AddBuff(player,"神圣之光",2)  
        lualib:Player_AddExp(player,10000,"泡点", player)  
        lualib:SetInt(player,"神圣之光",lualib:GetInt(player,"神圣之光")+1)  
    end  
end  

function on_trigger_leave_map(player)  --离开地图的删除定时器  
    lualib:SysMsg_SendCenterMsg(0, "享受上帝的洗礼效果犹在，向世人展现你的光辉吧！",player)  
    lualib:DisableTimer(player,5466)  --删除定时器，ID为5466  
end
下一篇:给对象添加定时器>
AddTimer
给对象添加定时器

更新时间：2021-09-07 00:00:00
此函数给对象添加定时器。

语法
Luacopy 复制
lualib:AddTimer(
    strObject,
    dwTimerID,
    iElapse,
    iCount,
    strCallBack
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、地图、物品或者系统

dwTimerID

uint32

 
定时器的ID

同一对象下ID必须唯一

iElapse

int32

 
定时器的触发间隔

单位为毫秒

iCount

int32

 
定时器的触发次数

-1无限触发

strCallBack

string

 
定时器触发时，回调该函数。

函数格式：1 = 函数名 2 = 文件名:函数名。

回调函数格式：callback(strObject, dwTimerID)

strObject(string)：对象的GUID

dwTimerID(int)：定时器的ID

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTimer(npc, 8888, 10000, 5, "Printing") --给NPC添加定时器，每隔10秒触发1次，共触发5次

function Printing(npc, timer_id)
    lualib:Warn("执行了一次打印")
end

--此示例代码运行成功如下图所示。

AddTimer.png
<上一篇:给对象添加定时器（扩展）下一篇:返回对象所有定时器>
AllTimers
返回对象所有定时器

更新时间：2025-10-31 18:38:00
此函数返回对象所有定时器。

语法
Luacopy 复制
lualib:AllTimers(
    strObject
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、地图、物品、系统。

返回值
table

 
对象所有定时器id

存储在lua表中

具体格式如下所示：

{
[1]=定时器1的id,
[2]=定时器2的id,
[3]=定时器3的id,
}

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--脚本给系统定添加1000，10001，10002定时器
function AllTimers(npc,player)
    local List = lualib:AllTimers("0")
    lualib:Warn("List:"..serialize(List))
end


----此示例代码运行成功如下图所示。

AllTimers.png
<上一篇:给对象添加定时器下一篇:清除对象的所有定时器>
ClearTimer
清除对象的所有定时器

更新时间：2021-09-07 00:00:00
此函数清除对象的所有定时器。

语法
Luacopy 复制
lualib:ClearTimer(
    strObject
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、地图、物品或系统。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--深渊魔王.lua    
function CMonster:ClearTimer(monster)      
    lualib:ClearTimer(monster)  
end
<上一篇:返回对象所有定时器下一篇:取消对象的定时器>
DisableTimer
取消对象的定时器

更新时间：2023-03-07 00:00:00
此函数取消对象的定时器。

语法
Luacopy 复制
lualib:DisableTimer(
    strObject,
    dwTimerID
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、地图、物品、系统。

dwTimerID

uint32

 
定时器的ID，同一对象下ID必须唯一。

返回值
bool

 
true取消成功。

false取消失败。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制

function on_trigger_enter_map(player)  --进入地图时，添加定时器  
    --省略部分代码   
    lualib:AddTimerEx(player,5466,1000,-1,"on_time","") --定时调用on_time函数  
    --省略部分代码  
end  

function on_time(player)  
    if lualib:Level(player) >= 40 then  
        lualib:Player_MapMoveXY(player,"龙城", 230, 240, 5)  
        lualib:SysMsg_SendBottomColor(player,"你已经足够强大了。",8, 6)  
    elseif not lualib:Player_SubIngot(player,5, false,"泡点", player)then  
        lualib:Player_MapMoveXY(player,"龙城", 230, 240, 5)  
        lualib:SysMsg_SendBottomColor(player,"您的余额不足！",8, 6)  
    else  
        lualib:AddBuff(player,"神圣之光",2)  
        lualib:Player_AddExp(player,10000,"泡点", player)  
        lualib:SetInt(player,"神圣之光",lualib:GetInt(player,"神圣之光")+1)  
    end  
end  

function on_trigger_leave_map(player)   --离开地图的删除定时器  
    lualib:SysMsg_SendCenterMsg(0, "享受上帝的洗礼效果犹在，向世人展现你的光辉吧！",player)  
    lualib:DisableTimer(player,5466)   --删除定时器，ID为5466  
end
<上一篇:清除对象的所有定时器下一篇:自动生成对象的定时器ID>
GenTimerId
自动生成对象的定时器ID

更新时间：2021-09-07 00:00:00
此函数自动生成对象的定时器ID。

语法
Luacopy 复制
lualib:GenTimerId(
    strObject
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、地图、物品、系统。

返回值
uint32

 若对象存在，则返回定时器ID；若对象不存在，则返回0。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local timer_id = lualib:GenTimerId(player)  
if timer_id == 0 then  
--生成定时器id失败  
else  
    lualib:AddTimer(player, timer_id, 1000, 100, "on_timer")  
end
<上一篇:取消对象的定时器下一篇:判断对象是否有定时器>
HasTimer
判断对象是否有定时器

更新时间：2021-09-07 00:00:00
此函数判断对象是否有定时器。

语法
Luacopy 复制
lualib:HasTimer(
    strObject,
    dwTimerID
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、地图、物品或系统。

dwTimerID

uint32

 
定时器的ID，同一对象对下ID必须唯一。

返回值
bool

 
true对象有定时器。

false对象没有定时器。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:自动生成对象的定时器ID
AddTrigger
给对象添加触发器

更新时间：2021-09-07 00:00:00
此函数给对象添加触发器。

语法
Luacopy 复制
lualib:AddTrigger(
    strObject,
    iType,
    strCallBack
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、地图或者系统。

当对象的GUID为0时，代表系统全局层面适用的对象。

iType

int

 
触发器的类型

具体请参见eTriggerType

strCallBack

string

 
回调函数的名字

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:AddTrigger(player, lua_trigger_leave_map, "on_trigger_leave_map")
下一篇:移除所有触发器>
ClearTrigger
移除所有触发器

更新时间：2021-09-07 00:00:00
此函数移除对象拥有的所有触发器，执行范围内为接口所在的.lua文件。

参考 eTriggerType

语法
Luacopy 复制
lualib:ClearTrigger(
    strObject
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、地图或者系统。

当对象的GUID为0时，代表系统全局层面适用的对象。

返回值
此函数无返回值。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_create(monster)  
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die") --怪物死亡时触发  
end  
function on_trigger_post_die(actor, killer)  
    lualib:ClearTrigger(actor)  --清除该怪物身上的所有触发  
end
<上一篇:给对象添加触发器下一篇:判断对象是否拥有某触发器>
HasTrigger
判断对象是否拥有某触发器

更新时间：2021-09-07 00:00:00
此函数判断对象是否拥有某触发器，执行范围内为接口所在的.lua文件。

语法
Luacopy 复制
lualib:HasTrigger(
    strObject,
    iType,
    strCallBack
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、地图或者系统。

当对象的GUID为0时，代表系统全局层面适用的对象。

iType

int

 
触发器的类型

具体请参见 eTriggerType

strCallBack

string

 
回调函数的名字

回调函数名必须和创建触发器时填写的名称一致。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_map_create(map)                  
    lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") --添加复活触发                   
    local timer_dis_reli_t = {1750000, 51}          
    AddTimer(map, timer_dis_reli_t[2], timer_dis_reli_t[1], 1, "on_timer_disa_reli") --定时取消复活                   
    lualib:RemoveTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")                 
    function on_trigger_player_relive(player)           
    lualib:ProgressBarStart(player, 10000, "复活中...", "on_relive_complete", "on_relive_abort", "") --进度条          
    return false        
end                 
function on_timer_disa_reli(map, timer_id)           
    if  true == lualib:HasTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") 
    --判断是否有复活这个触发               
    lualib:RemoveTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")  --删除该触发        
end
<上一篇:移除所有触发器下一篇:移除指定的触发器>
RemoveTrigger
移除指定的触发器

更新时间：2021-09-07 00:00:00
此函数移除对象上指定的触发器，执行只在接口所在的.lua文件范围内。

语法
Luacopy 复制
lualib:RemoveTrigger(
    strObject,
    iType,
    strCallBack
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、地图或者系统。

当对象的GUID为0时，代表系统全局层面适用的对象。

iType

int

 
触发器的类型

具体请参见 eTriggerType

strCallBack

string

 
回调函数的名字

回调函数名必须和创建触发器时填写的名称一致。

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_map_create(map)                  
    lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") --添加复活触发                   
    local timer_dis_reli_t = {1750000, 51}          
    AddTimer(map, timer_dis_reli_t[2], timer_dis_reli_t[1], 1, "on_timer_disa_reli") --定时取消复活                   
    lualib:RemoveTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")                 
    function on_trigger_player_relive(player)           
        lualib:ProgressBarStart(player, 10000, "复活中...", "on_relive_complete", "on_relive_abort", "") --进度条           
        return false        
    end                 
    function on_timer_disa_reli(map, timer_id)           
        if  true == lualib:HasTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") --判断是否有复活这个触发               
        lualib:RemoveTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")  --删除该触发        
end
<上一篇:判断对象是否拥有某触发器
SetTriggerFilters
设置触发器类型中判断对象的过滤器

更新时间：2021-09-07 00:00:00
此函数设置触发器类型中判断对象的过滤器。

语法
Luacopy 复制
lualib:SetTriggerFilters(
    guid,
    type,
    filter
)

参数
guid

string

 
对象的GUID

对象可以为角色、物品、地图或者系统。

当对象的GUID为0时，代表系统全局层面适用的对象。

type

int

 
触发器类型

具体请参见 eTriggerType

filter

string

 
触发器类型中判断对象的过滤器

仅根据指定的对象判断是否执行对应的触发器。

判断对象可以为角色、怪物、NPC、技能、BUFF、物品和地图等。

过滤器格式为字符串，填写触发判断对象的模板ID，多个模板ID以英文逗号“,”进行分割，例如："1,2,3,5"。

返回值
此函数无返回值。

 
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetTriggerFilters("0", lua_trigger_remove_buff, "1,2,3")
GenUniqueID
生成系统唯一标识符

更新时间：2021-09-07 00:00:00
此函数生成系统唯一标识符。

语法
Luacopy 复制
lualib:GenUniqueID()

参数
无

返回值
string

 标识符字符串
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local id = lualib:GenUniqueID()
下一篇:获取代理ID>
GetAgentId
获取代理ID

更新时间：2021-09-07 00:00:00
此函数获取代理ID。

语法
Luacopy 复制
lualib:GetAgentId()

参数
无

返回值
uint32

 代理ID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local bid = lualib:GetAgentId()
<上一篇:生成系统唯一标识符下一篇:读取系统常量表>
GetConstVar
读取系统常量表

更新时间：2021-09-07 00:00:00
此函数作用为读取系统常量表。

语法
Luacopy 复制
lualib:GetConstVar(
    strKey
)

参数
strKey

string

 
常量名

返回值
string

 若执行成功，则返回常量值；若执行失败，则返回""。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--攻城战.lua  
       
function AttackCastle(npc, player, index)  
    local CastleWar = lualib:GetConstVar("CastleWar") --获取系统级常量CastleWar，记录着攻城时间  
    local CastleWarTime = lualib:Str2Time(CastleWar)  
    local times = lualib:GetAllTime()  --获取当前时间  

    if CastleWarTime > times then  --攻城时间大于当前时间，既攻城时间还没到  
        return "系统设定全服攻城战时间为："..CastleWar.."，请过后再来申请攻城战！\n \n \n \n \n \n \n \n \n "                                                 
    end  
    --省略部分代码  
end
<上一篇:获取代理ID下一篇:获取引擎类型>
GetEngineType
获取引擎类型

更新时间：2021-09-07 00:00:00
此函数获取当前客户端对应的引擎类型。

语法
Luacopy 复制
lualib:GetEngineType()
参数
无

返回值
int32

 
当前客户端对应的引擎类型

02D版本

13D版本

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local engine = {[0] = "2D版本", "3D版本"}
lualib:SysMsg_SendWarnMsg(player, "引擎类型："..engine[lualib:GetEngineType()])

--此示例代码运行成功如下图所示。

GetEngineType.png
<上一篇:读取系统常量表下一篇:获取玩家第三方登录平台信息>
GetPlatformInfo
获取玩家第三方登录平台信息

更新时间：2022-04-24 00:00:00
此函数获取玩家第三方登录平台信息。

语法
Luacopy 复制
lualib:GetPlatformInfo(
    strPlayer
)

参数
strPlayer

string

 
玩家GUID

返回值
table

 返回平台名称和平台用户具体信息，存储在lua中。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function test(strPlayer) 
    local ret = lualib:GetPlatformInfo(strPlayer) 
    local platform_name = ret[1] * local platform_info_json = ret[2] 
    if platform_info_json ~= "" then 
        local platform_info_table = json.decode(platform_info_json)
    end 
end
<上一篇:获取引擎类型下一篇:重载系统表>
ReloadConfig
重载系统表

更新时间：2021-09-07 00:00:00
此函数重载系统表。

语法
Luacopy 复制
lualib:ReloadConfig(
    strTableKey
)

参数
strTableKey

string

 
配置表名

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:ReloadConfig(table) == true then  
    return "重载"..table.."成功"  
end  

    return "重载"..table.."失败"  
 
<上一篇:获取玩家第三方登录平台信息

AddAgentInt
增加代理级游戏整型变量值

更新时间：2024-01-03 00:00:00
此函数作用为增加代理级游戏整型变量值。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:AddAgentInt(
    user_id,
    key,
    add_value,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

caution_icon注意
变量名如果为非英文字符，则需要使用UTF-8编码格式。

add_value

int32

 
变量要增加的数值

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, new_value, old_value, param)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。）

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	签名不正确
4	未找到对应的变量
5	类型错误，仅可操作int类型变量
user_id(uint32)： 玩家的账号ID

new_value(int32)：修改后的变量值

old_value(int32)：修改前的变量值

param(string)：预设的回调函数参数

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:AddAgentInt(user_id,"test",9,"callBack","6") --增加代理级游戏整型变量“test”的值
end

function callBack(errocode,user_id,new_value,old_value,param)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("新值为"..new_value)
    lualib:Warn("老值为"..old_value)
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--此示例代码运行成功如下图所示。

AddAgentInt.png
下一篇:删除代理级游戏整型变量>
DelAgentInt
删除代理级游戏整型变量

更新时间：2024-01-03 00:00:00
此函数作用为删除代理级游戏整型变量。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:DelAgentInt(
    user_id,
    key,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

caution_icon注意
变量名如果为非英文字符，则需要使用UTF-8编码格式。

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, param)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。）

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	签名不正确
user_id(uint32)： 玩家的账号ID

param(string)：预设的回调函数参数

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:DelAgentInt(user_id,"test","callBack","11") --删除代理级游戏整型变量“test”
end

function callBack(errocode,user_id,param)
    lualib:Warn("账号id为"..user_id) 
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--此示例代码运行成功如下图所示。

DelAgentInt.png
<上一篇:增加代理级游戏整型变量值下一篇:删除代理级游戏字符串变量>
DelAgentStr
删除代理级游戏字符串变量

更新时间：2024-01-03 00:00:00
此函数作用为删除代理级游戏字符串变量。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:DelAgentStr(
    user_id,
    key,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

caution_icon注意
变量名如果为非英文字符，则需要使用UTF-8编码格式。

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, param)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。）

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	签名不正确
user_id(uint32)： 玩家的账号ID

param(string)：预设的回调函数参数

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:DelAgentStr(user_id,"teststr","callBack","12") --删除代理级游戏字符串变量“teststr”
end

function callBack(errocode,user_id,param)
    lualib:Warn("账号id为"..user_id) 
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--此示例代码运行成功如下图所示。

DelAgentStr.png
<上一篇:删除代理级游戏整型变量下一篇:给指定对象添加延时回调>
DelayCall
给指定对象添加延时回调

更新时间：2023-08-11 00:00:00
此函数作用为给指定对象添加延时回调。

语法
Luacopy 复制
lualib:DelayCall(
    strObject,
    iElapse,
    strCallBack,
    strParams
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、地图、物品或者系统。

iElapse

uint32

 
延时时间

单位为毫秒（ms）

strCallBack

string

 
触发延时回调时执行的函数

此参数的填写格式有两种：

1.文件名:函数名，代表运行指定文件中的指定函数；

2.函数名，代表运行当前文件中的指定函数。

回调函数格式：fnCallback(strPlayer, strParam)

strPlayer(string)：对象的GUID，对象可以为玩家、怪物、NPC、地图、物品或者系统。

strParam(string)：自定义参数1到自定义参数n，可传入多个自定义参数。

strParams

string

 
自定义参数

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--行会召唤令.lua    
function go_to(player, name, map_key, x, y)      
    local guid = lualib:Name2Guid(name)      
    if guid ~= "" then          
        lualib:RunClientScript(lualib:MapGuid(player), "mapeffect", "texiao", "100001670#"..lualib:X(player).."#"..lualib:Y(player).."#0#0")          
        lualib:Player_MapMoveXY(player, map_key, tonumber(x), tonumber(y), 10)          
        lualib:DelayCall(player, 300, "mvtx", guid)      
    else          
        lualib:SysTriggerMsg(guid, "行会兄弟【"..name.."】下线了，你被无情地忽悠了！")      
    end      
    return ""  
end    
function mvtx(player, guid)      
    lualib:SysTriggerMsg(guid, "行会兄弟【"..lualib:Name(player).."】前来集合！")      
    lualib:RunClientScript(lualib:MapGuid(player), "mapeffect", "texiao", "100001671#"..lualib:X(player).."#"..lualib:Y(player).."#0#0")  
end
<上一篇:删除代理级游戏字符串变量下一篇:获取对象间的距离>
Distance
获取对象间的距离

更新时间：2021-12-10 00:00:00
此函数获取指定对象之间的距离。

语法
Luacopy 复制
lualib:Distance(
    strObject1,
    strObject2
)

参数
strObject1

string

 
对象1的GUID

对象可以为玩家、怪物、NPC或物品

strObject2

string

 
对象2的GUID

对象可以为玩家、怪物、NPC或物品

返回值
uint16

 
若指定对象均在同一地图上，则返回对象之间的距离。

若指定对象不存在或不在同一张地图上，则返回65535。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
if lualib:Distance(player, role) > 5 then
    return "您队伍中的【"..role.."】不在附近"
end

--此示例代码运行成功如下图所示。

Distance.png
<上一篇:给指定对象添加延时回调下一篇:根据GUID获取对象的类型>

GUIDType
根据GUID获取对象的类型

更新时间：2023-08-11 00:00:00
此函数作用为根据GUID获取对象的类型。

语法
Luacopy 复制
lualib:GUIDType(
    strObject
)

参数
strObject

string

 
对象的GUID

返回值
int32

 
若执行成功，则返回对象的类型（具体如下所示）。

0玩家

1假人

2怪物

3NPC

4物品

5地图

6队伍

7行会

10系统

若执行失败，则返回-1。

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取对象间的距离下一篇:获取代理级游戏整型变量>
GetAgentInt
获取代理级游戏整型变量

更新时间：2024-01-03 00:00:00
此函数作用为获取代理级游戏整型变量。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:GetAgentInt(
    user_id,
    key,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

caution_icon注意
变量名如果为非英文字符，则需要使用UTF-8编码格式。

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, param, value)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。）

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	未找到对应变量
user_id(uint32)： 玩家的账号ID

param(string)：预设的回调函数参数

value(int32)：变量值

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:SetAgentInt(user_id,"test",1,0,"callBack1","2") --设置代理级游戏整型变量“test”
    lualib:GetAgentInt(user_id,"test","callBack2","3") --获取代理级游戏整型变量“test”的变量值
end

--设置代理级游戏整型变量的回调函数
function callBack1(errocode,user_id,param)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--获取代理级游戏整型变量的回调函数
function callBack2(errocode,user_id,param,value)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
    lualib:Warn("值为"..value)
end

--此示例代码运行成功如下图所示。

SetAgentInt.png

GetAgentInt.png
<上一篇:根据GUID获取对象的类型下一篇:获取代理级游戏字符串变量>
GetAgentStr
获取代理级游戏字符串变量

更新时间：2024-01-03 00:00:00
此函数作用为设置代理级游戏字符串变量。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:GetAgentStr(
    user_id,
    key,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

caution_icon注意
变量名如果为非英文字符，则需要使用UTF-8编码格式，获取的变量值也使用UTF-8编码格式。

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, param, data)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。）

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	签名不正确
user_id(uint32)： 玩家的账号ID

param(string)：预设的回调函数参数

data(string)：变量值

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:SetAgentStr(user_id,"teststr","freedom",0,"callBack1","4") --设置代理级游戏字符串变量“teststr”
    lualib:GetAgentStr(user_id,"teststr","callBack2","5") --获取代理级游戏字符串变量“teststr”的变量值
end

--设置代理级游戏字符串变量的回调函数
function callBack1(errocode,user_id,param)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--获取代理级游戏字符串变量的回调函数
function callBack2(errocode,user_id,param,data)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
    lualib:Warn("值为"..data)
end

--此示例代码运行成功如下图所示。

SetAgentStr.png

GetAgentStr.png
<上一篇:获取代理级游戏整型变量下一篇:取得对象实体上设置的数值型天变量的过期剩余时间>
GetDayIntExpireTime
取得对象实体上设置的数值型天变量的过期剩余时间

更新时间：2026-02-13 19:29:00
此函数取得对象实体上设置的数值型天变量的过期剩余时间。

语法
Luacopy 复制
lualib:GetDayIntExpireTime(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、物品、地图

strKey

string

 
变量名

返回值
INT32

 
变量的过期剩余时间，单位秒

获取失败返回 -1（比如变量不存在）

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function get1(npc, player)
    local time = lualib:GetDayIntExpireTime(player, "int23点到期")

    lualib:SysMsg_SendBroadcastMsg("time:" .. time, "int到期时间")
end

--执行示例代码，结果如图所示。
GetDayIntExpireTime.png
<上一篇:获取代理级游戏字符串变量下一篇:获取对象实体上设置的数值型天变量>
GetDayInt
获取对象实体上设置的数值型天变量

更新时间：2022-06-16 00:00:00
此函数获取对象实体上设置的数值型天变量。

语法
Luacopy 复制
lualib:GetDayInt(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

返回值
uint32

 
若变量当天存在，则返回对应的变量值；

若变量已跨天（即变量已失效），则返回0。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_dayint = "..lualib:GetDayInt(guild, "test_dayint")) --获取行会实体上天变量“test_dayint”的值
--设置行会实体上天变量“test_dayint”的值为100，设置完成后获取该变量的值。
if lualib:SetDayInt(guild, "test_dayint", 100) then
    lualib:Warn("test_dayint = "..lualib:GetDayInt(guild, "test_dayint"))
end

--此示例代码运行成功如下图所示。

SetDayInt.png
<上一篇:取得对象实体上设置的数值型天变量的过期剩余时间下一篇:取得对象实体上设置的字符串型天变量的过期剩余时间>
GetDayStrExpireTime
取得对象实体上设置的字符串型天变量的过期剩余时间

更新时间：2026-02-13 19:29:00
此函数取得对象实体上设置的字符串型天变量的过期剩余时间。

语法
Luacopy 复制
lualib:GetDayStrExpireTime(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC、物品、地图

strKey

string

 
变量名

返回值
INT32

 
变量的过期剩余时间，单位秒

获取失败返回 -1（比如变量不存在）

版本历史
v1.0

 
首次发布（0.926及以上版本）

示例代码
Luacopy 复制
function get2(npc, player)
    local time = lualib:GetDayStrExpireTime(player, "str20点到期")
    lualib:SysMsg_SendBroadcastMsg("time:" .. time, "str到期时间")
end

--执行示例代码，结果如图所示。
GetDayStrExpireTime.png
<上一篇:获取对象实体上设置的数值型天变量下一篇:获取对象实体上设置的字符型天变量>
GetDayStr
获取对象实体上设置的字符型天变量

更新时间：2022-06-16 00:00:00
此函数获取对象实体上设置的字符型天变量。

语法
Luacopy 复制
lualib:GetDayStr(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

返回值
string

 
若变量当天存在，则返回对应的变量值；

若变量已跨天（即变量已失效），则返回""。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_daystr = "..lualib:GetDayStr(guild, "test_daystr")) --获取行会实体上天变量“test_daystr”的值
--设置行会实体上天变量“test_daystr”的值为asd，设置完成后获取该变量的值。
if lualib:SetDayStr(guild, "test_daystr", "asd") then
    lualib:Warn("test_daystr = "..lualib:GetDayStr(guild, "test_daystr"))
end

--此示例代码运行成功如下图所示。

SetDayStr.png
<上一篇:取得对象实体上设置的字符串型天变量的过期剩余时间下一篇:获取对象实体上存储的整型数值变量>
GetInt
获取对象实体上存储的整型数值变量

更新时间：2021-09-07 00:00:00
此函数获取对象实体上存储的整型数值变量。

语法
Luacopy 复制
lualib:GetInt(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

strKey

string

 
变量名

返回值
int32

 
变量存在则返回对应变量的值

变量不存在则返回0

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--作用：常和SetInt一起使用。通过给对象设置变量和获取变量，便于判断控制。
--精炼表单.lua

function mubiao_jinglianpanduan(player,new_refine_level)
    --省略部分代码
    --目标系统：将任意装备精练到12。mubiao_zhuangbei_3这个变量为0时，表示该目标未完成，1表完成
    if new_refine_level >= 12 and lualib:GetInt(player,"mubiao_zhuangbei_3") == 0 then    --获取玩家变量mubiao_zhuangbei_3的值
        lualib:SetInt(player,"mubiao_zhuangbei_3",1)
        lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
        lualib:SysMsg_SendBoardMsg(player, "目标追求", "”将任意装备精练到12“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
        lualib:SysMsg_SendWarnMsg(player,"“将任意装备精练到12“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
    end
    --省略部分代码
end 
<上一篇:获取对象实体上设置的字符型天变量下一篇:获取对象实体上存储的字符型变量>
GetStr
获取对象实体上存储的字符型变量

更新时间：2021-09-07 00:00:00
此函数获取对象实体上存储的字符型变量。

语法
Luacopy 复制
lualib:GetStr(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

strKey

string

 
变量名

返回值
string

 
变量存在则返回对应变量的值

变量不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--修改密码.lua  
function main(player, code, newcode)  
     local player_code = lualib:GetStr(player, "_lock_pwd")  --获取玩家字符型变量_lock_pwd的值  

     if player_code ~= code then  
          return "你输入的原始密码不正确！"  
     end  

     if not lualib:SetStr(player, "_lock_pwd", newcode) then  --给玩家设置字符型变量，值为newcode  
          return "设置二级密码失败！"  
     end  
     lualib:SetInt(player, "set_lock_pwd", 1)  
     lualib:NotifyVar(player, "set_lock_pwd")  
     return ""  
end  
 
<上一篇:获取对象实体上存储的整型数值变量下一篇:获取对象实体上存储的整型数值变量>
GetTempInt
获取对象实体上存储的整型数值变量

更新时间：2023-08-11 00:00:00
此函数获取对象实体上存储的整型数值变量。

变量只存在于内存中，不会写入数据库。

语法
Luacopy 复制
lualib:GetTempInt(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以是玩家或者物品。

strKey

string

 
变量名

返回值
int32

 
变量存在则返回变量的值

变量不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local value = lualib:GetTempInt(player, "test")
<上一篇:获取对象实体上存储的字符型变量下一篇:获取对象实体上存储的字符型变量>
GetTempStr
获取对象实体上存储的字符型变量

更新时间：2023-08-11 00:00:00
此函数获取对象实体上存储的字符型变量。

变量只存在于内存中，不会写入数据库。

语法
Luacopy 复制
lualib:GetTempStr(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以是玩家或者物品。

strKey

string

 
变量名

返回值
string

 若变量存在，则返回变量的值；若变量不存在，则返回""。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local value = lualib:GetTempStr(player, "test")
<上一篇:获取对象实体上存储的整型数值变量下一篇:获取对象实体上设置的数值型周变量>
GetWeekInt
获取对象实体上设置的数值型周变量

更新时间：2022-06-16 00:00:00
此函数获取对象实体上设置的数值型周变量。

语法
Luacopy 复制
lualib:GetWeekInt(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

返回值
uint32

 
变量值

若变量已跨周（即变量已失效），则返回0。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
--以下示例代码在周三16:33:10之前执行。
--在对象实体上设置数值型周变量并获取
if lualib:SetWeekIntEx2(player, "测试周变量", 500, 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
end
--在对象实体上设置字符型周变量并获取
if lualib:SetWeekStrEx2(player, "测试周变量", "500", 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))
end

--以下示例代码在周三16:33:10之后执行。
--获取对象实体上设置的数值型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
--获取对象实体上设置的字符型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))

--此示例代码运行成功如下图所示（周三16:33:10之后周变量失效）。

SetWeekStrEx2.png
<上一篇:获取对象实体上存储的字符型变量下一篇:获取对象实体上设置的字符型周变量>
GetWeekStr
获取对象实体上设置的字符型周变量

更新时间：2022-06-16 00:00:00
此函数获取对象实体上设置的字符型周变量。

语法
Luacopy 复制
lualib:GetWeekStr(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

返回值
string

 
变量值

若变量已跨周（即变量已失效），则返回""。

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
--以下示例代码在周三16:33:10之前执行。
--在对象实体上设置数值型周变量并获取
if lualib:SetWeekIntEx2(player, "测试周变量", 500, 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
end
--在对象实体上设置字符型周变量并获取
if lualib:SetWeekStrEx2(player, "测试周变量", "500", 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))
end

--以下示例代码在周三16:33:10之后执行。
--获取对象实体上设置的数值型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
--获取对象实体上设置的字符型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))

--此示例代码运行成功如下图所示（周三16:33:10之后周变量失效）。

SetWeekStrEx2.png
<上一篇:获取对象实体上设置的数值型周变量下一篇:获取对象在配置表中的ID>
Guid2Id
获取对象在配置表中的ID

更新时间：2023-08-11 00:00:00
此函数作用为根据GUID获取对象在配置表中的ID。

语法
Luacopy 复制
lualib:Guid2Id(
    guid
)

参数
guid

string

 
对象的GUID

对象可以为怪物、物品或者地图。

返回值
uint16

 对象的ID
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取对象实体上设置的字符型周变量下一篇:根据GUID获取对象的名称>
Guid2Name
根据GUID获取对象的名称

更新时间：2023-08-11 00:00:00
此函数作用为根据GUID获取对象的名称。

语法
Luacopy 复制
lualib:Guid2Name(
    guid
)

参数
guid

string

 
对象的GUID

对象可以为玩家、英雄、怪物、NPC、物品、地图或者行会。

返回值
string

 对象的名称
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:获取对象在配置表中的ID下一篇:获取对象的索引名>
Id2KeyName
获取对象的索引名

更新时间：2022-05-05 00:00:00
此函数根据对象的ID获取对象的索引名（KeyName）。

语法
Luacopy 复制
lualib:Id2KeyName(
    id,
    type
)

参数
id

uint16

 
对象的ID

type

uint8

 
对象类型

2怪物

3NPC

4道具

5地图

17技能

18BUFF

19称号

其他数值无效

返回值
string

 对象配置表中的索引名（KeyName）
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数type的类型：19称号

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

KeyName2Id_2.png
lualib:Warn("称号索引名为 "..lualib:Id2KeyName(1, 19)) --根据ID获取称号的索引名

--此示例代码运行成功如下图所示。

Id2KeyName.png
<上一篇:根据GUID获取对象的名称下一篇:获取对象的ID>
KeyName2Id
获取对象的ID

更新时间：2022-05-05 00:00:00
此函数根据对象的索引名（KeyName）获取对象的ID。

语法
Luacopy 复制
lualib:KeyName2Id(
    KeyName,
    type
)

参数
KeyName

string

 
对象的索引名（KeyName）

type

uint8

 
对象类型

2怪物

3NPC

4道具

5地图

17技能

18BUFF

19称号

其他数值无效

返回值
uint16

 对象配置表中的ID
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数type的类型：19称号

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

KeyName2Id_2.png
lualib:Warn("称号id为 "..lualib:KeyName2Id("测试称号索引", 19)) --根据索引名获取称号的ID

--此示例代码运行成功如下图所示。

KeyName2Id.png
<上一篇:获取对象的索引名下一篇:获取对象的名称>
KeyName2Name
获取对象的名称

更新时间：2022-05-05 00:00:00
此函数根据对象的索引名（KeyName）获取对象的名称（Name）。

语法
Luacopy 复制
lualib:KeyName2Name(
    KeyName,
    type
)

参数
KeyName

string

 
对象的索引名（KeyName）

type

uint8

 
对象类型

2怪物

3NPC

4道具

5地图

17技能

18BUFF

19称号

其他数值无效

返回值
string

 对象配置表中的名称（Name）
版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数type的类型：19称号

示例代码
Luacopy 复制
--以下示例代码执行前提如下图所示。

KeyName2Id_2.png
lualib:Warn("称号名称为 "..lualib:KeyName2Name("测试称号索引", 19)) --根据索引名获取称号的名称

--此示例代码运行成功如下图所示。

KeyName2Name.png
<上一篇:获取对象的ID下一篇:获取对象的索引名>
KeyName
获取对象的索引名

更新时间：2022-05-05 00:00:00
此函数根据对象GUID获取对象的索引名（KeyName）。

参考 Name

note_icon 备注
如果对象是玩家则返回玩家的名字。

语法
Luacopy 复制
lualib:KeyName(
    strObject
)

参数
strObject

string

 
对象的GUID

对象可以是玩家、怪物、NPC、地图、行会或物品。

返回值
string

 
对象存在则返回对象的索引名（KeyName）

对象不存在则返回""

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--装备合成.lua  
       
function queding(npc,player,itemKey)  
    --省略部分代码  
    local z_name = lualib:KeyName(itemKey)     --获取道具的keyname  
    for i = 1, table.getn(table_zb) do  
        for z = 1, table.getn(table_zb[i]) do  
            if z_name == table_zb[i][z][1] then  
                return "租赁装备不能进行改名！\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"  
            end  
        end  
    end  
    --省略部分代码  
end
<上一篇:获取对象的名称下一篇:获取对象当前地图的GUID>
MapGuid
获取对象当前地图的GUID

更新时间：2021-09-07 00:00:00
此函数获取对象当前地图的GUID。

语法
Luacopy 复制
lualib:MapGuid(
    strObject
)

参数
strObject

string

 
对象的GUID，对象可以为玩家、怪物、NPC或物品。

返回值
string

 若执行成功，则返回对象当前地图的GUID，若执行失败，则返回""。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_create(item)  
    lualib:AddTimerEx(item, 1, 500, 1, "tip", "")  
end  

function tip(item)  
    local item_name = lualib:Name(item)  --获取道具item所处地图的Guid  
    local item_map_guid = lualib:MapGuid(item)  
    local item_map_name = lualib:Name(item_map_guid)  
    local item_map_x = lualib:X(item)  
    local item_map_y = lualib:Y(item)  
    if item_map_x < 20000 then  
        local s = "道具【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"  
        lualib:SysMsg_SendCenterMsg(1, s, "")  
    else 
        return  
    end  
end
<上一篇:获取对象的索引名下一篇:获取对象的Name>
Name
获取对象的Name

更新时间：2021-09-07 00:00:00
此函数根据对象GUID获取对应的Name。

参考 KeyName

语法
Luacopy 复制
lualib:Name(
    strObject
)

参数
strObject

string

 
对象的GUID，对象可以是玩家、怪物、NPC、地图、行会或物品。

返回值
string

 若对象存在，则返回对象的Name，若对象不存在，则返回""。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function on_create(item)  
    lualib:AddTimerEx(item, 1, 500, 1, "tip", "")  
end  

function tip(item)  
    local item_name = lualib:Name(item)  --获取道具名字  
    local item_map_guid = lualib:MapGuid(item)  
    local item_map_name = lualib:Name(item_map_guid)  
    local item_map_x = lualib:X(item)  
    local item_map_y = lualib:Y(item)  
    if item_map_x < 20000 then  
        local s = "道具【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"  
        lualib:SysMsg_SendCenterMsg(1, s, "")  
    else 
        return  
    end  
end
<上一篇:获取对象当前地图的GUID下一篇:向客户端发送变量通知>
NotifyVar
向客户端发送变量通知

更新时间：2021-09-07 00:00:00
此函数向游戏客户端发送变量通知。

语法
Luacopy 复制
lualib:NotifyVar(
    strObject,
    strKey
)

参数
strObject

string

 
对象的GUID，可以是玩家、怪物、NPC或物品。

strKey

string

 
变量名

返回值
此函数无返回值。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--设置密码.lua

function main(player, code)
     local player_code = lualib:GetStr(player, "_lock_pwd")
     if player_code ~= "" then
          return "你已设置过仓库密码！"
     end
     if not lualib:SetStr(player, "_lock_pwd", code) then
          return "设置二级密码失败！"
     end
     lualib:SetInt(player, "set_lock_pwd", 1)  --设置密码成功后，给玩家设置变量
     lualib:NotifyVar(player, "set_lock_pwd")  --奖玩家变量set_lock_pwd的值通知客户端
     return ""
end
<上一篇:获取对象的Name下一篇:设置代理级游戏整型变量>
SetAgentInt
设置代理级游戏整型变量

更新时间：2024-01-03 00:00:00
此函数作用为设置代理级游戏整型变量。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:SetAgentInt(
    user_id,
    key,
    value,
    period,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

caution_icon注意
变量名如果为非英文字符，则需要使用UTF-8编码格式。

value

int32

 
变量值

period

uint8

 
变量存活周期

0代表永久

1代表1天（在每天23点59分59秒清空）

2代表1周（在每周日23点59分59秒清空）

3代表1个月（在每月最后一天的23点59分59秒清空）

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, param)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。）

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	签名不正确
4	该变量名已存在其他变量类型
user_id(uint32)： 玩家的账号ID

param(string)：预设的回调函数参数

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:SetAgentInt(user_id,"test",1,0,"callBack1","2") --设置代理级游戏整型变量“test”
    lualib:GetAgentInt(user_id,"test","callBack2","3") --获取代理级游戏整型变量“test”的变量值
end

--设置代理级游戏整型变量的回调函数
function callBack1(errocode,user_id,param)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--获取代理级游戏整型变量的回调函数
function callBack2(errocode,user_id,param,value)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
    lualib:Warn("值为"..value)
end

--此示例代码运行成功如下图所示。

SetAgentInt.png

GetAgentInt.png
<上一篇:向客户端发送变量通知下一篇:设置代理级游戏字符串变量>
SetAgentStr
设置代理级游戏字符串变量

更新时间：2024-01-03 00:00:00
此函数作用为设置代理级游戏字符串变量。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:SetAgentStr(
    user_id,
    key,
    value,
    period,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

value

string

 
变量值

caution_icon注意
变量名和变量值如果为非英文字符，则需要使用UTF-8编码格式。

period

uint8

 
变量存活周期

0代表永久

1代表1天（在每天23点59分59秒清空）

2代表1周（在每周日23点59分59秒清空）

3代表1个月（在每月最后一天的23点59分59秒清空）

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, param)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。）

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	签名不正确
4	该变量名已存在其他变量类型
user_id(uint32)： 玩家的账号ID

param(string)：预设的回调函数参数

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:SetAgentStr(user_id,"teststr","freedom",0,"callBack1","4") --设置代理级游戏字符串变量“teststr”
    lualib:GetAgentStr(user_id,"teststr","callBack2","5") --获取代理级游戏字符串变量“teststr”的变量值
end

--设置代理级游戏字符串变量的回调函数
function callBack1(errocode,user_id,param)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--获取代理级游戏字符串变量的回调函数
function callBack2(errocode,user_id,param,data)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("回调函数调用成功，参数为"..param)
    lualib:Warn("值为"..data)
end

--此示例代码运行成功如下图所示。

SetAgentStr.png

GetAgentStr.png
<上一篇:设置代理级游戏整型变量下一篇:设置天变量和周变量的每天开始时间>
SetBeginTimeEveryday
设置天变量和周变量的每天开始时间

更新时间：2021-09-07 00:00:00
此函数设置天变量和周变量的每天开始时间。

影响天变量和周变量的开始计算时间。

语法
Luacopy 复制
lualib:SetBeginTimeEveryday(
    hour,
    minute,
    second
)

参数
hour

uint8

 
小时

minute

uint8

 
分钟

second

uint8

 
秒

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
此函数无示例代码。
<上一篇:设置代理级游戏字符串变量下一篇:在对象实体上设置数值型天变量（扩展）>
SetDayIntEx
在对象实体上设置数值型天变量（扩展）

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置数值型天变量，跨天后变量会失效。

此函数可自定义变量初始化（即变量失效）的时间点。

语法
Luacopy 复制
lualib:SetDayIntEx(
    strObject,
    strKey,
    iValue,
    hour,
    minute,
    second
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

iValue

int

 
变量值

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_dayintex = "..lualib:GetDayInt(guild, "test_dayintex")) --获取行会实体上天变量“test_dayintex”的值
--设置行会实体上天变量“test_dayintex”的值为10000，设置完成后获取该变量的值。
--若在17:35:00之前设置“test_dayintex”的值，则该变量会在17:35:00初始化，否则该变量会在第二天的17:35:00初始化。
if lualib:SetDayIntEx(guild, "test_dayintex", 10000, 17, 35, 0) then
    lualib:Warn("test_dayintex = "..lualib:GetDayInt(guild, "test_dayintex"))
end

--此示例代码运行成功如下图所示。

SetDayIntEx.png
<上一篇:设置天变量和周变量的每天开始时间下一篇:在对象实体上设置数值型天变量>
SetDayInt
在对象实体上设置数值型天变量

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置数值型天变量，跨天后变量会失效。

语法
Luacopy 复制
lualib:SetDayInt(
    strObject,
    strKey,
    iValue
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

iValue

int

 
变量值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_dayint = "..lualib:GetDayInt(guild, "test_dayint")) --获取行会实体上天变量“test_dayint”的值
--设置行会实体上天变量“test_dayint”的值为100，设置完成后获取该变量的值。
if lualib:SetDayInt(guild, "test_dayint", 100) then
    lualib:Warn("test_dayint = "..lualib:GetDayInt(guild, "test_dayint"))
end

--此示例代码运行成功如下图所示。

SetDayInt.png
<上一篇:在对象实体上设置数值型天变量（扩展）下一篇:在对象实体上设置字符型天变量（扩展）>
SetDayStrEx
在对象实体上设置字符型天变量（扩展）

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置字符型天变量，跨天后变量会失效。

此函数可自定义变量初始化（即变量失效）的时间点。

语法
Luacopy 复制
lualib:SetDayStrEx(
    strObject,
    strKey,
    strValue,
    hour,
    minute,
    second
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

strValue

string

 
变量值

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_daystrex = "..lualib:GetDayStr(guild, "test_daystrex")) --获取行会实体上天变量“test_daystrex”的值
--设置行会实体上天变量“test_daystrex”的值为zxczxc，设置完成后获取该变量的值。
--若在17:35:00之前设置“test_daystrex”的值，则该变量会在17:35:00初始化，否则该变量会在第二天的17:35:00初始化。
if lualib:SetDayStrEx(guild, "test_daystrex", "zxczxc", 17, 35, 0) then
    lualib:Warn("test_daystrex = "..lualib:GetDayStr(guild, "test_daystrex"))
end

--此示例代码运行成功如下图所示。

SetDayStrEx.png
<上一篇:在对象实体上设置数值型天变量下一篇:在对象实体上设置字符型天变量>
SetDayStr
在对象实体上设置字符型天变量

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置字符型天变量，跨天后变量会失效。

语法
Luacopy 复制
lualib:SetDayStr(
    strObject,
    strKey,
    strValue
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

strValue

string

 
变量值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_daystr = "..lualib:GetDayStr(guild, "test_daystr")) --获取行会实体上天变量“test_daystr”的值
--设置行会实体上天变量“test_daystr”的值为asd，设置完成后获取该变量的值。
if lualib:SetDayStr(guild, "test_daystr", "asd") then
    lualib:Warn("test_daystr = "..lualib:GetDayStr(guild, "test_daystr"))
end

--此示例代码运行成功如下图所示。

SetDayStr.png
<上一篇:在对象实体上设置字符型天变量（扩展）下一篇:在对象实体上存储整型数值变量>
SetInt
在对象实体上存储整型数值变量

更新时间：2021-09-07 00:00:00
此函数在对象实体上存储整型数值变量。

当对象是玩家、英雄、物品、行会时，变量会自动保存到数据库中；其余对象上的变量重启服务器后会被销毁。

语法
Luacopy 复制
lualib:SetInt(
    strObject,
    strKey,
    iValue
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、英雄、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

strKey

string

 
变量名

caution_icon 注意
变量名不能以"__"开头("__"为系统专用变量)。

iValue

int32

 
变量值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--作用：常和GetInt一起使用。通过给对象设置变量和获取变量，便于判断控制。	
--精炼表单.lua 

function mubiao_jinglianpanduan(player,new_refine_level)
    --省略部分代码 
    --目标系统：将任意装备精练到12。mubiao_zhuangbei_3这个变量为0时，表示该目标未完成，1表完成 
    if new_refine_level >= 12 and lualib:GetInt(player,"mubiao_zhuangbei_3") == 0 then
        lualib:SetInt(player,"mubiao_zhuangbei_3",1) --给玩家设置一个变量，变量名为mubiao_zhuangbei_3，变量值为1 
        lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
        lualib:SysMsg_SendBoardMsg(player, "目标追求", "“将任意装备精练到12”已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
        lualib:SysMsg_SendWarnMsg(player,"“将任意装备精练到12“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！") 
    end
    --省略部分代码 
end
<上一篇:在对象实体上设置字符型天变量下一篇:在对象实体上存储字符型变量>
SetStr
在对象实体上存储字符型变量

更新时间：2021-09-07 00:00:00
此函数在对象实体上存储字符型变量，

当对象是玩家、英雄、物品、行会时，变量会自动保存到数据库中；其余对象上的变量重启服务器后会被销毁。

语法
Luacopy 复制
lualib:SetStr(
    strObject,
    strKey,
    strValue
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、英雄、NPC、物品、地图、系统或行会。

当对象的GUID为""或"0"时，代表系统全局层面适用的对象。

strKey

string

 
变量名

caution_icon 注意
变量名不能以"__"开头("__"为系统专用变量)。

strValue

string

 
变量值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
--修改密码.lua      
function main(player, code, newcode)      
    local player_code = lualib:GetStr(player, "_lock_pwd") --获取玩家字符型变量_lock_pwd的值           
    if player_code ~= code then      
        return "你输入的原始密码不正确！"      
    end           
    if not lualib:SetStr(player, "_lock_pwd", newcode) then --给玩家设置字符型变量，值为newcode      
        return "设置二级密码失败！"      
    end     
    lualib:SetInt(player, "set_lock_pwd", 1)     
    lualib:NotifyVar(player, "set_lock_pwd")      
    return ""      
end
<上一篇:在对象实体上存储整型数值变量下一篇:在对象实体上存储整型数值变量>
SetTempInt
在对象实体上存储整型数值变量

更新时间：2021-09-07 00:00:00
此函数在对象实体上存储整型数值变量。

变量只存在于内存中，不写数据库。

语法
Luacopy 复制
lualib:SetTempInt(
    strObject,
    strKey,
    iValue
)

参数
strObject

string

 
对象的GUID，可以是玩家、物品。

strKey

string

 
变量名

iValue

int32

 
变量值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetTempInt(player, "test", 1)
<上一篇:在对象实体上存储字符型变量下一篇:在对象实体上存储字符型变量>
SetTempStr
在对象实体上存储字符型变量

更新时间：2021-09-07 00:00:00
此函数在对象实体上存储字符型变量。

变量只存在于内存中，不写数据库。

语法
Luacopy 复制
lualib:SetTempStr(
    strObject,
    strKey,
    strValue
)

参数
strObject

string

 
对象的GUID，可以是玩家、物品。

strKey

string

 
变量名

strValue

string

 
变量值

返回值
bool

 
true执行成功

false执行失败

版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
lualib:SetTempStr(player, "test", "1")
<上一篇:在对象实体上存储整型数值变量下一篇:在对象实体上设置数值型周变量（扩展2）>
SetWeekIntEx2
在对象实体上设置数值型周变量（扩展2）

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置数值型周变量，跨周后变量会失效。

此函数可自定义变量初始化（即变量失效）的时间点（某天的某时某分某秒）。

语法
Luacopy 复制
lualib:SetWeekIntEx2(
    strObject,
    strKey,
    iValue,
    day,
    hour,
    minute,
    second
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

iValue

int

 
变量值

day

uint8

 
天（每周的第几天）

0周一

1周二

2周三

3周四

4周五

5周六

6周日

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
--以下示例代码在周三16:33:10之前执行。
--在对象实体上设置数值型周变量并获取
if lualib:SetWeekIntEx2(player, "测试周变量", 500, 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
end
--在对象实体上设置字符型周变量并获取
if lualib:SetWeekStrEx2(player, "测试周变量", "500", 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))
end

--以下示例代码在周三16:33:10之后执行。
--获取对象实体上设置的数值型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
--获取对象实体上设置的字符型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))

--此示例代码运行成功如下图所示（周三16:33:10之后周变量失效）。

SetWeekStrEx2.png
<上一篇:在对象实体上存储字符型变量下一篇:在对象实体上设置数值型周变量（扩展）>
SetWeekIntEx
在对象实体上设置数值型周变量（扩展）

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置数值型周变量，跨周后变量会失效。

此函数可自定义变量初始化（即变量失效）的时间点（下个周一的某时某分某秒）。

语法
Luacopy 复制
lualib:SetWeekIntEx(
    strObject,
    strKey,
    iValue,
    hour,
    minute,
    second
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

iValue

int

 
变量值

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_weekex = "..lualib:GetWeekInt(guild, "test_weekex")) --获取行会实体上天变量“test_weekex”的值
--设置行会实体上天变量“test_weekex”的值为20000，设置完成后获取该变量的值。
--该变量会在下个周一的17:42:30初始化。
if lualib:SetWeekIntEx(guild, "test_weekex", 20000, 17, 42, 30) then
    lualib:Warn("test_weekex = "..lualib:GetWeekInt(guild, "test_weekex"))
end

--此示例代码运行成功如下图所示。

SetWeekIntEx.png
<上一篇:在对象实体上设置数值型周变量（扩展2）下一篇:在对象实体上设置数值型周变量>
SetWeekInt
在对象实体上设置数值型周变量

更新时间：2023-11-06 00:00:00
此函数在对象实体上设置数值型周变量，跨周后变量会失效。

变量的失效时间点为周日至周一的0点。

语法
Luacopy 复制
lualib:SetWeekInt(
    strObject,
    strKey,
    iValue
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

iValue

int

 
变量值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_weekint = "..lualib:GetWeekInt(guild, "test_weekint")) --获取行会实体上周变量“test_weekint”的值
--设置行会实体上天变量“test_weekint”的值为200，设置完成后获取该变量的值。
if lualib:SetWeekInt(guild, "test_weekint", 200) then
    lualib:Warn("test_weekint = "..lualib:GetWeekInt(guild, "test_weekint"))
end

--此示例代码运行成功如下图所示。

SetWeekInt.png
<上一篇:在对象实体上设置数值型周变量（扩展）下一篇:在对象实体上设置字符型周变量（扩展2）>
SetWeekStrEx2
在对象实体上设置字符型周变量（扩展2）

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置字符型周变量，跨周后变量会失效。

此函数可指定变量初始化（即变量失效）的时间点（某天的某时某分某秒）。

语法
Luacopy 复制
lualib:SetWeekStrEx2(
    strObject,
    strKey,
    strValue,
    day,
    hour,
    minute,
    second
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

strValue

string

 
变量值

day

uint8

 
天（每周的第几天）

0周一

1周二

2周三

3周四

4周五

5周六

6周日

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
--以下示例代码在周三16:33:10之前执行。
--在对象实体上设置数值型周变量并获取
if lualib:SetWeekIntEx2(player, "测试周变量", 500, 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
end
--在对象实体上设置字符型周变量并获取
if lualib:SetWeekStrEx2(player, "测试周变量", "500", 2, 16, 33, 10) then
    lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))
end

--以下示例代码在周三16:33:10之后执行。
--获取对象实体上设置的数值型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekInt(player, "测试周变量"))
--获取对象实体上设置的字符型周变量
lualib:Warn("测试周变量 = "..lualib:GetWeekStr(player, "测试周变量"))

--此示例代码运行成功如下图所示（周三16:33:10之后周变量失效）。

SetWeekStrEx2.png
<上一篇:在对象实体上设置数值型周变量下一篇:在对象实体上设置字符型周变量（扩展）>
SetWeekStrEx
在对象实体上设置字符型周变量（扩展）

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置字符型周变量，跨周后变量会失效。

此函数可指定变量初始化（即变量失效）的时间点（下个周一的某时某分某秒）。

语法
Luacopy 复制
lualib:SetWeekStrEx(
    strObject,
    strKey,
    strValue,
    hour,
    minute,
    second
)
参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

strValue

string

 
变量值

hour

uint8

 
小时（24小时制）

minute

uint8

 
分钟

second

uint8

 
秒

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_weekstrex = "..lualib:GetWeekStr(guild, "test_weekstrex")) --获取行会实体上天变量“test_weekstrex”的值
--设置行会实体上天变量“test_weekstrex”的值为fghfgh，设置完成后获取该变量的值。
--该变量会在下个周一的17:42:30初始化。
if lualib:SetWeekStrEx(guild, "test_weekstrex", "fghfgh", 17, 42, 30) then
    lualib:Warn("test_weekstrex = "..lualib:GetWeekStr(guild, "test_weekstrex"))
end

--此示例代码运行成功如下图所示。

SetWeekStrEx.png
<上一篇:在对象实体上设置字符型周变量（扩展2）下一篇:在对象实体上设置字符型周变量>
SetWeekStr
在对象实体上设置字符型周变量

更新时间：2022-06-16 00:00:00
此函数在对象实体上设置字符型周变量，跨周后变量会失效。

语法
Luacopy 复制
lualib:SetWeekStr(
    strObject,
    strKey,
    strValue
)

参数
strObject

string

 
对象的GUID

对象可以为玩家、怪物、NPC、物品、地图或者行会。

strKey

string

 
变量名

strValue

string

 
变量值

返回值
bool

 
true设置成功

false设置失败

版本历史
v1.0

 
首次发布

 
v1.1

 
新增参数strObject对行会的支持

示例代码
Luacopy 复制
local guild = lualib:GuildGuid(player) --获取玩家所属行会的GUID

lualib:Warn("test_weekstr = "..lualib:GetWeekStr(guild, "test_weekstr")) --获取行会实体上天变量“test_weekstr”的值
--设置行会实体上天变量“test_weekstr”的值为qwe，设置完成后获取该变量的值。
if lualib:SetWeekStr(guild, "test_weekstr", "qwe") then
    lualib:Warn("test_weekstr = "..lualib:GetWeekStr(guild, "test_weekstr"))
end

--此示例代码运行成功如下图所示。

SetWeekStr.png
<上一篇:在对象实体上设置字符型周变量（扩展）下一篇:减少代理级游戏整型变量值>
SubAgentInt
减少代理级游戏整型变量值

更新时间：2024-01-03 00:00:00
此函数作用为减少代理级游戏整型的变量值。

代理级游戏变量在同一个代理下的区服可以共享，可以进行读取、修改、删除等操作。

语法
Luacopy 复制
lualib:SubAgentInt(
    user_id,
    key,
    sub_value,
    callback,
    param
)
参数
user_id

uint32

 
玩家的账号ID

key

string

 
变量名

caution_icon注意
变量名如果为非英文字符，则需要使用UTF-8编码格式。

sub_value

int32

 
变量要减少的数值

callback

string

 
回调函数名

回调函数格式：void Callback(errcode, user_id, new_value, old_value, param)

errcode(uint32)：错误码（0代表成功；非0代表不成功，具体定义如下表所示。

错误码	错误描述
1	请求的部分参数为空
2	请求已失效或请求为空
3	签名不正确
4	未找到对应变量
5	类型错误，仅可操作int类型变量
6	减少的数值不能小于0
user_id(uint32)： 玩家的账号ID

new_value(int32)：修改后的变量值

old_value(int32)：修改前的变量值

param(string)：预设的回调函数参数

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
    local user_id = lualib:UserID(player) --获取玩家的账号ID
    lualib:SubAgentInt(user_id,"test",10,"callBack","6") --减少代理级游戏整型变量“test”的值
end

function callBack(errocode,user_id,new_value,old_value,param)
    lualib:Warn("账号id为"..user_id)
    lualib:Warn("新值为"..new_value)
    lualib:Warn("老值为"..old_value)
    lualib:Warn("回调函数调用成功，参数为"..param)
end

--此示例代码运行成功如下图所示。

SubAgentInt.png
<上一篇:在对象实体上设置字符型周变量下一篇:获取对象的所有自定义变量列表>
VarList
获取对象的所有自定义变量列表

更新时间：2021-09-07 00:00:00
此函数获取对象的所有自定义变量列表。

语法
Luacopy 复制
lualib:VarList(
    strObject
)

参数
strObject

string

 
对象的GUID，可以是玩家、怪物、NPC、物品

返回值
table

 返回对象的自定义变量列表，存储在lua表中。
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
local types = {[0] = "数值型", "字符型"}  
local vars = lualib:VarList(role)  
for _, v in ipairs(vars) do      
    local type = v["Type"]      
    local key = v["Key"]      
    local value = v["Value"]      
    print("变量名:"..key..", 变量值:"..value..", 类型:"..types[type])  
end
<上一篇:减少代理级游戏整型变量值下一篇:获取对象的X坐标>
X
获取对象的X坐标

更新时间：2021-09-07 00:00:00
此函数获取对象的X坐标。

参考 Y

语法
Luacopy 复制
lualib:X(
    strObject
)

参数
strObject

string

 
对象的GUID，可以是玩家、怪物、NPC或物品。

返回值
uint16

 X坐标
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(player, item)  
    local mapguid = lualib:MapGuid(player)  
    local x = lualib:X(player)  
    local y = lualib:Y(player)  
    local shaizi_keyname = {"一", "二", "三", "四", "五", "六"}  
    if lualib:Item_Destroy(player, item, "丢骰子", player) == true then  
        lualib:Map_GenItemRnd(mapguid, x, y, 2, shaizi_keyname[lualib:GenRandom(1, 6)], 1, false, 3)  
    else  
        lualib:SysPromptMsg(player, "物品删除失败,导致骰子无法丢出来!")  
    end  
    return true  
end
<上一篇:获取对象的所有自定义变量列表下一篇:获取对象的Y坐标>
Y
获取对象的Y坐标

更新时间：2021-09-07 00:00:00
此函数获取对象的Y坐标。

参考 X

语法
Luacopy 复制
lualib:Y(
    strObject
)

参数
strObject

string

 
对象的GUID，可以是玩家、怪物、NPC或物品。

返回值
uint16

 Y坐标
版本历史
v1.0

 
首次发布

示例代码
Luacopy 复制
function main(player, item)  
    local mapguid = lualib:MapGuid(player)  
    local x = lualib:X(player)  
    local y = lualib:Y(player)  
    local shaizi_keyname = {"一", "二", "三", "四", "五", "六"}  
    if lualib:Item_Destroy(player, item, "丢骰子", player) == true then  
        lualib:Map_GenItemRnd(mapguid, x, y, 2, shaizi_keyname[lualib:GenRandom(1, 6)], 1, false, 3)  
    else  
        lualib:SysPromptMsg(player, "物品删除失败,导致骰子无法丢出来!")  
    end
end
<上一篇:获取对象的X坐标













