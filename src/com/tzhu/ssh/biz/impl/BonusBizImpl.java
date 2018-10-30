package com.tzhu.ssh.biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tzhu.ssh.appcomm.base.BaseBizImpl;
import com.tzhu.ssh.biz.BonusBizI;
import com.tzhu.ssh.dao.BonusDaoI;
import com.tzhu.ssh.entity.Bonus;
@Service(value="bonusBizI")
public class BonusBizImpl extends BaseBizImpl<Bonus> implements BonusBizI{

	private BonusDaoI bonusDaoI;
	@Resource(name="bonusDaoI")
	public void setBonusDaoI(BonusDaoI bonusDaoI) {
		this.bonusDaoI = bonusDaoI;
	}
	
}
