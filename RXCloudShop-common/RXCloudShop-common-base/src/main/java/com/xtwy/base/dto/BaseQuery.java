package com.xtwy.base.dto;

import lombok.Data;

import java.io.Serializable;

/**
 * 类的描述：基础查询
 * 使用lombok工具类
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月12日  19:28
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Data
public class BaseQuery implements Serializable {

    private static final long serialVersionUID = 3319698607712846427L;

    /**
     * 当前页
     */
    private Integer pageNum = 1;

    /**
     * 每页条数
     */
    private Integer pageSize = 10;

    /**
     * 排序
     */
    private String orderBy;
}