
BuildEnv(...)

local CreatePanel = RaidBuilder:NewModule(CreateFrame('Frame'), 'CreatePanel', 'AceEvent-3.0', 'AceTimer-3.0', 'NetEaseTextFilter-1.0')

function CreatePanel:OnInitialize()
    GUI:Embed(self, 'Owner', 'Tab', 'Refresh')

    MainPanel:RegisterPanel(L['创建活动'], self, 8)

    local FilterLabel = self:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')
    FilterLabel:SetPoint('TOPLEFT', self:GetOwner(), 'TOPLEFT', 80, -40)
    FilterLabel:SetText(L['活动类型'])

    local Filter = GUI:GetClass('Dropdown'):New(self)
    Filter:SetPoint('LEFT', FilterLabel, 'RIGHT', 10, 0)
    Filter:SetSize(170, 26)
    Filter:SetMenuTable(EVENT_CREATE_MENUTABLE)
    Filter:SetDefaultText(L['请选择活动类型'])

    local ModeLabel = self:CreateFontString(nil, 'OVERLAY', 'GameFontHighlightSmall')
    ModeLabel:SetPoint('LEFT', Filter, 'RIGHT', 10, 0)
    ModeLabel:SetText(L['活动形式'])

    local Mode = GUI:GetClass('Dropdown'):New(self)
    Mode:SetPoint('LEFT', ModeLabel, 'RIGHT', 10, 0)
    Mode:SetSize(150, 26)
    Mode:SetMenuTable(EVENT_MODE_MENUTABLE)
    Mode:SetDefaultText(L['请选择活动形式'])

    local YiXinButton = Button:New(self)
    YiXinButton:SetPoint('TOPRIGHT', self:GetOwner(), 'TOPRIGHT', -94, -30)
    YiXinButton:SetText(L['易信推送'])
    YiXinButton:SetIcon([[Interface\AddOns\RaidBuilder\Media\YiXin]])
    YiXinButton:SetTooltip(
        L['易信推送'],
        L['你每天有3次机会向关注你的玩家发送活动通知。']
    )
    YiXinButton:SetScript('OnClick', function()
        RaidBuilder:ShowModule('YixinConfirm', Profile:IsYiXinValid(), L['今日已达发送上限'])
    end)

    local ShareButton = Button:New(self)
    ShareButton:SetPoint('RIGHT', YiXinButton, 'LEFT', -80, 0)
    ShareButton:SetText(L['活动通告'])
    ShareButton:SetIcon([[Interface\AddOns\RaidBuilder\Media\RaidbuilderIcons]])
    ShareButton:SetIconTexCoord(64/256, 96/256, 0, 0.5)
    ShareButton:SetTooltip(L['活动通告'])
    ShareButton:SetScript('OnClick', function()
        local content = GroupCache:GetAnnouncementContent()
        if not content then
            return
        end
        RaidBuilder:ShowModule('SharePanel', L['活动通告'], content)
    end)

    local RoleWidget = GUI:GetClass('TitleWidget'):New(self)
    RoleWidget:SetPoint('TOPLEFT')
    RoleWidget:SetPoint('TOPRIGHT')
    RoleWidget:SetHeight(135)
    RoleWidget:SetText(L['请确定每个职责的人数：'])

    local LevelWidget = GUI:GetClass('TitleWidget'):New(self)
    LevelWidget:SetPoint('TOPLEFT', RoleWidget, 'BOTTOMLEFT', 0, -5)
    LevelWidget:SetSize(200, 80)
    LevelWidget:SetText(L['等级范围'])

    local label = LevelWidget:CreateFontString(nil, 'OVERLAY', 'GameFontHighlight')
    label:SetPoint('CENTER', 0, -10)
    label:SetText('-')

    local ItemWidget = GUI:GetClass('TitleWidget'):New(self)
    ItemWidget:SetPoint('BOTTOMLEFT', LevelWidget, 'BOTTOMRIGHT', 5, 0)
    ItemWidget:SetPoint('TOPRIGHT', RoleWidget, 'BOTTOM', -2, -5)
    ItemWidget:SetText(L['装备等级'])

    local MiscWidget = GUI:GetClass('TitleWidget'):New(self)
    MiscWidget:SetPoint('TOPLEFT', LevelWidget, 'BOTTOMLEFT', 0, -5)
    MiscWidget:SetPoint('BOTTOMLEFT')
    MiscWidget:SetPoint('TOPRIGHT', LevelWidget, 'BOTTOMRIGHT', 0, -5)

    local SummaryWidget = GUI:GetClass('TitleWidget'):New(self)
    SummaryWidget:SetPoint('BOTTOMLEFT', MiscWidget, 'BOTTOMRIGHT', 5, 0)
    SummaryWidget:SetPoint('TOPRIGHT', ItemWidget, 'BOTTOMRIGHT', 0, -5)
    SummaryWidget:SetText(L['活动说明'])

    local PVPWidget = GUI:GetClass('TitleWidget'):New(self)
    PVPWidget:SetPoint('TOPLEFT', ItemWidget, 'TOPRIGHT', 5, 0)
    PVPWidget:SetPoint('BOTTOMLEFT', ItemWidget, 'BOTTOMRIGHT', 5, 0)
    PVPWidget:SetWidth(200)
    PVPWidget:SetText(L['PVP 等级'])

    local PwdWidget = GUI:GetClass('TitleWidget'):New(self)
    PwdWidget:SetPoint('BOTTOMLEFT', PVPWidget, 'BOTTOMRIGHT', 5, 0)
    PwdWidget:SetPoint('TOPRIGHT', RoleWidget, 'BOTTOMRIGHT', 0, -5)
    PwdWidget:SetText(L['申请密码'])

    local RulesWidget = GUI:GetClass('TitleWidget'):New(self)
    RulesWidget:SetPoint('BOTTOMLEFT', SummaryWidget, 'BOTTOMRIGHT', 5, 0)
    RulesWidget:SetPoint('TOPRIGHT', PwdWidget, 'BOTTOMRIGHT', 0, -5)
    RulesWidget:SetText(L['详细介绍（加入活动后才能查看）'])
    local RulesBox = GUI:GetClass('EditBox'):New(RulesWidget)
    RulesBox:SetPrompt(L['请在这里输入详细介绍，团员加入活动后可在我的队伍面板查看'])
    RulesWidget:SetObject(RulesBox)
    RulesBox:GetEditBox():SetMaxBytes(150)

    local SummaryBox = GUI:GetClass('EditBox'):New(SummaryWidget)
    SummaryBox:SetPrompt(L['请在这里输入活动说明'])
    SummaryWidget:SetObject(SummaryBox)
    SummaryBox:GetEditBox():SetMaxBytes(46)

    local function CheckError()
        self:UpdateControl()
    end

    local TankBox = RaidBuilder:GetClass('RoleInputBox'):New(RoleWidget)
    TankBox:SetPoint('BOTTOMLEFT', 40, 0)
    TankBox:SetStyle('TANK')
    TankBox:SetCallback('OnValueChanged', CheckError)

    local HealerBox = RaidBuilder:GetClass('RoleInputBox'):New(RoleWidget)
    HealerBox:SetPoint('LEFT', TankBox, 'RIGHT', 40, 0)
    HealerBox:SetStyle('HEALER')
    HealerBox:SetCallback('OnValueChanged', CheckError)

    local DamagerBox = RaidBuilder:GetClass('RoleInputBox'):New(RoleWidget)
    DamagerBox:SetPoint('LEFT', HealerBox, 'RIGHT', 40, 0)
    DamagerBox:SetStyle('DAMAGER')
    DamagerBox:SetCallback('OnValueChanged', CheckError)

    local NoneBox = RaidBuilder:GetClass('RoleInputBox'):New(RoleWidget)
    NoneBox:SetPoint('LEFT', DamagerBox, 'RIGHT', 40, 0)
    NoneBox:SetStyle('NONE')
    NoneBox:SetCallback('OnValueChanged', CheckError)

    local MinLevel = GUI:GetClass('NumericBox'):New(LevelWidget)
    MinLevel:SetPoint('BOTTOMLEFT', 10, 10)
    MinLevel:SetSize(64, 40)
    MinLevel:SetMinMaxValues(1, MAX_PLAYER_LEVEL)
    MinLevel:SetCallback('OnValueChanged', CheckError)

    local MaxLevel = GUI:GetClass('NumericBox'):New(LevelWidget)
    MaxLevel:SetPoint('BOTTOMRIGHT', -26, 10)
    MaxLevel:SetSize(64, 40)
    MaxLevel:SetMinMaxValues(1, MAX_PLAYER_LEVEL)
    MaxLevel:SetCallback('OnValueChanged', CheckError)

    local ItemLevel = GUI:GetClass('NumericBox'):New(ItemWidget)
    ItemLevel:SetPoint('BOTTOMLEFT', 20, 10)
    ItemLevel:SetPoint('BOTTOMRIGHT', -36, 10)
    ItemLevel:SetHeight(40)
    ItemLevel:SetMinMaxValues(0, 700)
    ItemLevel:SetValueStep(10)

    local PVPRating = GUI:GetClass('NumericBox'):New(PVPWidget)
    PVPRating:SetPoint('BOTTOMLEFT', 20, 10)
    PVPRating:SetPoint('BOTTOMRIGHT', -36, 10)
    PVPRating:SetHeight(40)
    PVPRating:SetMinMaxValues(0, 4000)
    PVPRating:SetValueStep(100)

    local Password = GUI:GetClass('InputBox2'):New(PwdWidget)
    Password:SetPoint('BOTTOMLEFT', 20, 10)
    Password:SetPoint('BOTTOMRIGHT', -20, 10)
    Password:SetHeight(40)
    Password:SetNumeric(true)
    Password:SetMaxLetters(6)

    local ForceVerify = GUI:GetClass('CheckBox'):New(MiscWidget)
    ForceVerify:SetPoint('TOPLEFT', 2, -50)
    ForceVerify:SetSize(26, 26)
    ForceVerify:SetText(L['装备和PVP等级必须符合'])

    local CrossRealm = GUI:GetClass('CheckBox'):New(MiscWidget)
    CrossRealm:SetPoint('BOTTOMLEFT', ForceVerify, 'TOPLEFT', 0, 5)
    CrossRealm:SetSize(26, 26)
    CrossRealm:SetText(L['创建跨服活动'])

    self:RegisterInputBox(TankBox:GetInputBox())
    self:RegisterInputBox(HealerBox:GetInputBox())
    self:RegisterInputBox(DamagerBox:GetInputBox())
    self:RegisterInputBox(NoneBox:GetInputBox())
    self:RegisterInputBox(MinLevel)
    self:RegisterInputBox(MaxLevel)
    self:RegisterInputBox(ItemLevel)
    self:RegisterInputBox(PVPRating)
    self:RegisterInputBox(Password)
    self:RegisterInputBox(SummaryBox:GetEditBox())

    local CreateButton = CreateFrame('Button', nil, self, 'UIPanelButtonTemplate')
    CreateButton:SetPoint('BOTTOM', self:GetOwner(), 'BOTTOM', -60, 4)
    CreateButton:SetSize(120, 22)
    CreateButton:SetText(L['创建活动'])
    CreateButton:Disable()

    local RestoreButton = CreateFrame('Button', nil, self, 'UIPanelButtonTemplate')
    RestoreButton:SetPoint('BOTTOM', self:GetOwner(), 'BOTTOM', 60, 4)
    RestoreButton:SetSize(120, 22)
    RestoreButton:SetText(L['暂停招募'])
    RestoreButton:SetScript('OnClick', function()
        Logic:ToggleEventStatus()
    end)

    local ErrorText = RoleWidget:CreateFontString(nil, 'OVERLAY', 'GameFontRed')
    ErrorText:SetPoint('TOP', 0, -5)

    local Blocker = CreateFrame('Frame', nil, self)
    Blocker:SetPoint('TOPLEFT', -3, 3)
    Blocker:SetPoint('BOTTOMRIGHT', 3, -3)
    Blocker:SetFrameLevel(50)
    Blocker:EnableMouse(true)
    Blocker:EnableMouseWheel(true)
    Blocker:SetScript('OnMouseWheel', nop)

    local bg = Blocker:CreateTexture(nil, 'OVERLAY')
    bg:SetTexture([[Interface\DialogFrame\UI-DialogBox-Background-Dark]])
    bg:SetAllPoints(Blocker)

    local BlockerText = Blocker:CreateFontString(nil, 'OVERLAY', 'QuestFont_Super_Huge')
    BlockerText:SetPoint('CENTER')

    self.TankBox = TankBox
    self.HealerBox = HealerBox
    self.DamagerBox = DamagerBox
    self.NoneBox = NoneBox

    self.TankNumber = TankBox:GetInputBox()
    self.HealerNumber = HealerBox:GetInputBox()
    self.DamagerNumber = DamagerBox:GetInputBox()
    self.NoneNumber = NoneBox:GetInputBox()

    self.MinLevel = MinLevel
    self.MaxLevel = MaxLevel
    self.ItemLevel = ItemLevel
    self.PVPRating = PVPRating

    self.Filter = Filter
    self.Mode = Mode
    self.CrossRealm = CrossRealm
    self.ForceVerify = ForceVerify
    self.SummaryBox = SummaryBox
    self.Password = Password
    self.RulesBox = RulesBox

    self.ShareButton = ShareButton
    self.YiXinButton = YiXinButton
    self.Blocker = Blocker
    self.BlockerText = BlockerText
    self.CreateButton = CreateButton
    self.ErrorText = ErrorText
    self.RestoreButton = RestoreButton

    Filter:SetCallback('OnSelectChanged', function()
        self.Mode:SetValue(nil)
        self:UpdateInputControl()
        self:UpdateInput()
        self:Refresh()
    end)
    Mode:SetCallback('OnSelectChanged', function()
        self:Refresh()
    end)

    CreateButton:SetScript('OnClick', function()
        self:CreateEvent()
    end)

    self:SetScript('OnShow', self.OnShow)
    self:RegisterMessage('RAIDBUILDER_CURRENT_EVENT_UPDATE', 'Refresh')
    self:RegisterMessage('RAIDBUILDER_EVENT_LOCK_UPDATE', 'Refresh')
    self:RegisterMessage('RAIDBUILDER_EVENT_LOCK_STATUS_UPDATE', 'Refresh')
    self:RegisterEvent('GROUP_ROSTER_UPDATE', 'Refresh')
end

function CreatePanel:OnShow()
    local event = EventCache:GetCurrentEvent()
    if event then
        self.Filter:SetValue(event:GetEventCode())
        self.Mode:SetValue(event:GetEventMode())
    else
        self.Filter:SetValue(nil)
        self.Mode:SetValue(nil)
    end
    self:Refresh()
end

function CreatePanel:Update()
    self:UpdateBlocker()
    self:UpdateControl()
end

function CreatePanel:UpdateBlocker()
    if EventCache:GetCurrentEvent() then
        self:SetBlocker(false)
    elseif IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
        self:SetBlocker(L['你正在随机副本里，不能创建活动'])
    elseif BatchApply:IsWorking() then
        self:SetBlocker(L['你正在使用快速申请，不能创建活动'])
    elseif not PlayerIsGroupLeader() then
        self:SetBlocker(L['你不是队长，不能创建活动'])
    elseif not self.Filter:GetValue() or not self.Mode:GetValue() then
        self:SetBlocker(L['请选择活动类型及活动形式'])
    else
        self:SetBlocker(false)
    end
end

function CreatePanel:UpdateControl()
    local event = EventCache:GetCurrentEvent()
    local statusLockdown = Logic:IsEventStatusLockdown()
    local isLeader = PlayerIsGroupLeader()
    local inputError = self:CheckError()

    self.ShareButton:SetEnabled(event)
    self.YiXinButton:SetEnabled(event)
    self.RestoreButton:SetEnabled(isLeader and event and not event:IsMemberFull() and not Logic:IsEventStatusLockdown())
    self.CreateButton:SetEnabled(isLeader and not inputError and not self.Blocker:IsShown())

    self.Filter:SetEnabled(not event)
    self.CrossRealm:SetEnabled(not event and GetEventAllowCrossRealm(eventCode))

    self.ErrorText:SetText(inputError)
    self.CreateButton:SetText(event and L['更新活动'] or L['创建活动'])
    self.RestoreButton:SetText(not event and L['暂无活动'] or EventCache:IsCurrentEventPaused() and L['恢复招募'] or L['暂停招募'])
end

function CreatePanel:UpdateInputControl()
    local eventCode = self.Filter:GetValue()
    if not eventCode then
        return
    end
    self.Mode:SetMenuTable(GetEventModeMenuTable(eventCode))

    self.MinLevel:SetMinMaxValues(GetEventMinLevel(eventCode), MAX_PLAYER_LEVEL)
    self.MaxLevel:SetMinMaxValues(GetEventMinLevel(eventCode), MAX_PLAYER_LEVEL)
    self.ItemLevel:SetMinMaxValues(0, GetPlayerItemLevel() + 10)

    self.PVPRating:SetEnabled(IsHasPVPRating(eventCode))
    self.PVPRating:SetMinMaxValues(0, GetPlayerPVPRating(eventCode))
end

function CreatePanel:UpdateInput()
    local eventCode = self.Filter:GetValue()
    if not eventCode then
        return
    end
    local event = Profile:GetEventProfile(self.Filter:GetValue())
    local tank, healer, damager, none = GetEventDefaultMemberRole(eventCode)
    if event then
        self.Mode:SetValue(event:GetEventMode())

        self.MinLevel:SetNumber(event:GetMinLevel() or GetEventMinLevel(eventCode))
        self.MaxLevel:SetNumber(event:GetMaxLevel() or MAX_PLAYER_LEVEL)
        self.ItemLevel:SetNumber(event:GetItemLevel() or 0)
        self.PVPRating:SetNumber(event:GetPVPRating() or 0)
        self.Password:SetText(event:GetPassword() or '')
        self.SummaryBox:SetText(event:GetSummary() or '')
        self.RulesBox:SetText(event:GetRules() or '')
        self.CrossRealm:SetChecked(event:GetCrossRealm())
        self.ForceVerify:SetChecked(event:GetForceVerify())

        self.TankNumber:SetNumber(event:GetRoleTotal('TANK') or tank)
        self.HealerNumber:SetNumber(event:GetRoleTotal('HEALER') or healer)
        self.DamagerNumber:SetNumber(event:GetRoleTotal('DAMAGER') or damager)
        self.NoneNumber:SetNumber(event:GetRoleTotal('NONE') or none)
    else
        self.MinLevel:SetNumber(GetEventMinLevel(eventCode))
        self.MaxLevel:SetNumber(MAX_PLAYER_LEVEL)
        self.ItemLevel:SetNumber(0)
        self.PVPRating:SetNumber(0)
        self.Password:SetText('')
        self.SummaryBox:SetText('')
        self.RulesBox:SetText('')
        self.CrossRealm:SetChecked(GetEventAllowCrossRealm(eventCode))
        self.ForceVerify:SetChecked(false)

        self.TankNumber:SetNumber(tank)
        self.HealerNumber:SetNumber(healer)
        self.DamagerNumber:SetNumber(damager)
        self.NoneNumber:SetNumber(none)
    end
end

function CreatePanel:SetBlocker(text)
    if not text then
        self.Blocker:Hide()
    else
        self.BlockerText:SetText(text)
        self.Blocker:Show()
    end
end

function CreatePanel:SetEvent(event)
    self.event = event
end

function CreatePanel:CheckMemberRole(maxMember)
    local tank   = self.TankNumber:GetNumber()
    local healer = self.HealerNumber:GetNumber()
    local damager= self.DamagerNumber:GetNumber()
    local none   = self.NoneNumber:GetNumber()

    local all = tank + healer + damager + none
    if all < 2 or all > maxMember then
        return
    end
    return true
end

function CreatePanel:CreateEvent()
    if AppliedCache:IsAnyApplied() then
        GUI:CallMessageDialog(L['你正在申请加入一些活动，是否取消申请以创建自己的活动？'],
            function(result)
                if result then
                    Logic:LeaveAllEvents()
                    self:ScheduleTimer('CreateEvent', 0.2)
                end
            end)
        return
    end

    local eventCode = self.Filter:GetValue()
    local _maxMember = GetEventMaxMember(eventCode)

    if not self:CheckMemberRole(_maxMember) then
        return System:Errorf(L['职责总人数不能小于2或大于%d'], _maxMember)
    end

    local minLevel = self.MinLevel:GetNumber()
    local maxLevel = self.MaxLevel:GetNumber()
    local _minLevel = GetEventMinLevel(eventCode)

    if maxLevel > MAX_PLAYER_LEVEL then
        return System:Errorf(L['等级最高不能超过%d'], MAX_PLAYER_LEVEL)
    end
    if minLevel < _minLevel then
        return System:Errorf(L['这个活动等级最低不能低于%d'], _minLevel)
    end
    if minLevel > maxLevel then
        return System:Error(L['最低等级不能超过最高等级'])
    end

    local eventMode = self.Mode:GetValue()
    local itemLevel = self.ItemLevel:GetNumber()
    local pvpRating = self.PVPRating:GetNumber()
    local summary = self:TextFilter(self.SummaryBox:GetText():gsub('\n', ''))
    local crossRealm = not not self.CrossRealm:GetChecked()
    local forceVerify = not not self.ForceVerify:GetChecked()
    local password = tonumber(self.Password:GetText())
    local rules = self.RulesBox:GetText()

    local event = Event:New()
    event:SetRoleTotal('TANK', self.TankNumber:GetNumber())
    event:SetRoleTotal('HEALER', self.HealerNumber:GetNumber())
    event:SetRoleTotal('DAMAGER', self.DamagerNumber:GetNumber())
    event:SetRoleTotal('NONE', self.NoneNumber:GetNumber())
    event:SetMinLevel(minLevel)
    event:SetMaxLevel(maxLevel)

    if event:GetRoleTotalAll() > 5 and minLevel < 10 then
        return System:Error(L['大于5人的活动，最低等级不能低于10级'])
    end

    RaidBuilder:ShowModule('RolePanel', function(role)
        event:SetRoleCurrent(role, 1)
        GroupCache:SetCurrentRole(role)
        Logic:CreateEvent(
            eventCode,
            eventMode,
            minLevel,
            maxLevel,
            itemLevel,
            pvpRating,
            summary,
            crossRealm,
            forceVerify,
            password,
            event:GetMemberRole(),
            rules)

        -- self:OnShow()
    end, event)
end

function CreatePanel:QuickToggle(eventCode, eventMode)
    self.Filter:SetValue(eventCode)
    self.Mode:SetValue(eventMode)
end

function CreatePanel:CheckError()
    local eventCode = self.Filter:GetValue()
    if not eventCode then
        return ''
    end
    local _maxMember = GetEventMaxMember(eventCode)

    if not self:CheckMemberRole(_maxMember) then
        return format(L['职责总人数不能小于2或大于%d'], _maxMember)
    end

    local minLevel = self.MinLevel:GetNumber()
    local maxLevel = self.MaxLevel:GetNumber()
    local _minLevel = GetEventMinLevel(eventCode)

    if maxLevel > MAX_PLAYER_LEVEL then
        return format(L['等级最高不能超过%d'], MAX_PLAYER_LEVEL)
    end
    if minLevel < _minLevel then
        return format(L['这个活动等级最低不能低于%d'], _minLevel)
    end
    if minLevel > maxLevel then
        return L['最低等级不能超过最高等级']
    end

    local event = Event:New()
    event:SetRoleTotal('TANK', self.TankNumber:GetNumber())
    event:SetRoleTotal('HEALER', self.HealerNumber:GetNumber())
    event:SetRoleTotal('DAMAGER', self.DamagerNumber:GetNumber())
    event:SetRoleTotal('NONE', self.NoneNumber:GetNumber())
    event:SetMinLevel(minLevel)
    event:SetMaxLevel(maxLevel)

    if event:GetRoleTotalAll() > 5 and minLevel < 10 then
        return L['大于5人的活动，最低等级不能低于10级']
    end
end
