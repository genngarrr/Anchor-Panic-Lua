module("supercial.SupercialVo", Class.impl())

function parseData(self,id,data)
    self.id = id
    self.prevId = data.prev_id
    self.type = data.type
    self.rewardDropid = data.reward_dropid
    self.showDropid = data.show_dropid
    self.price = data.price
    self.detailId = data.detailId
end


return _M