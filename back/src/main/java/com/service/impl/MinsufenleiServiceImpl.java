package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.MinsufenleiDao;
import com.entity.MinsufenleiEntity;
import com.service.MinsufenleiService;
import com.entity.vo.MinsufenleiVO;
import com.entity.view.MinsufenleiView;

@Service("minsufenleiService")
public class MinsufenleiServiceImpl extends ServiceImpl<MinsufenleiDao, MinsufenleiEntity> implements MinsufenleiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MinsufenleiEntity> page = this.selectPage(
                new Query<MinsufenleiEntity>(params).getPage(),
                new EntityWrapper<MinsufenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MinsufenleiEntity> wrapper) {
		  Page<MinsufenleiView> page =new Query<MinsufenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<MinsufenleiVO> selectListVO(Wrapper<MinsufenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public MinsufenleiVO selectVO(Wrapper<MinsufenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<MinsufenleiView> selectListView(Wrapper<MinsufenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MinsufenleiView selectView(Wrapper<MinsufenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
