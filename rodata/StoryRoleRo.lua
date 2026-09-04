-- 使用BaseRo类创建StoryTalkDataRo类
module("StoryRoleRo", Class.impl("rodata/BaseRo"))


function ctor(self)
    super.ctor(self)
end

function parseData(self, refName, refData)
    self.m_refName = refName -- 策划自定义在表格中的名字

    self.m_alpha = refData.alpha
    self.m_scale = refData.scale
    self.m_offset = refData.offset
end

return _M
