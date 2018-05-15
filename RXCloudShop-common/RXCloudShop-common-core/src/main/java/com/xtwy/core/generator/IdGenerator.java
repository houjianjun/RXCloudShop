package com.xtwy.core.generator;

/**
 * 类的描述：ID生成接口
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月13日  20:18
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
public interface IdGenerator {

    /**
     * 生成下一个ID
     *
     * @return the string
     */
    Long nextId();
}

