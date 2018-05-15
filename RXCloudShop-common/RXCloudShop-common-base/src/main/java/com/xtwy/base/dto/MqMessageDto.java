package com.xtwy.base.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

/**
 * 类的描述：MQ消息DTO
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月13日  22:32
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Data
@AllArgsConstructor
public class MqMessageDto implements Serializable {

    private static final long serialVersionUID = -995670498005087805L;
    /**
     * 消息key
     */
    private String messageKey;

    /**
     * topic
     */
    private String messageTopic;
}