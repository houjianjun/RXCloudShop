package com.xtwy.base.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 类的描述：树形目录基类
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月12日  19:29
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Data
public class BaseTree<E, ID> implements Serializable {
    private static final long serialVersionUID = -5703964834600572016L;

    /**
     * ID
     */
    private ID id;

    /**
     * 父ID
     */
    private ID pid;

    /**
     * 是否含有子节点
     */
    private boolean hasChild = false;

    /**
     * 子节点集合
     */
    private List<E> children;
}