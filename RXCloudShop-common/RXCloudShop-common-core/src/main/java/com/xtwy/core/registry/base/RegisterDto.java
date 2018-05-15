package com.xtwy.core.registry.base;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * 类的描述：注册DTO
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月13日  20:20
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Data
@AllArgsConstructor
public class RegisterDto {

    private String app;

    private String host;

    private CoordinatorRegistryCenter coordinatorRegistryCenter;

}