package com.xtwy.base.exception;

/**
 * 类的描述：异常配置类
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月12日  19:20
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
public class ConfigException extends RuntimeException {

    private static final long serialVersionUID = 6480772904575978373L;

    /**
     * 异常配置有参构造器
     *
     * @param message
     */
    public ConfigException(String message) {
        super(message);
    }

    /**
     * 异常配置无参构造器
     */
    public ConfigException() {

    }
}