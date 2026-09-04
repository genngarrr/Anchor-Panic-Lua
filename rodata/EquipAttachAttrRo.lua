

module("EquipAttachAttrRo", Class.impl())

function parseData(self, refData)
	self.color = refData.color
	self.curIndex = refData.attr_index
	self.needLevel = refData.need_level
end

function getColor(self)
	return self.color
end

function getCurIndex(self)
	return self.curIndex
end

function getNeedLevel(self)
	return self.needLevel
end

return _M
