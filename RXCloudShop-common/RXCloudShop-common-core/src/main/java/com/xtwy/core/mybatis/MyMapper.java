package com.xtwy.core.mybatis;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;
/**
 * 类的描述：
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月13日  18:49
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
public interface MyMapper<T> extends Mapper<T>, MySqlMapper<T> {
}

