package com.xtwy.base.dto;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 类的描述：MQ消息VO
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月13日  22:34
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class MqMessageVo extends BaseVo {

    private static final long serialVersionUID = 5440371083922622116L;
    /**
     * 消息key
     */
    private String messageKey;

    /**
     * topic
     */
    private String messageTopic;

    /**
     * tag
     */
    private String messageTag;

    /**
     * 消息内容
     */
    private String messageBody;

    /**
     * 消息类型: 10 - 生产者 ; 20 - 消费者
     */
    private Integer messageType;

    /**
     * 顺序类型, 0有序 1无序
     */
    private int orderType;

    /**
     * 消息状态
     */
    private Integer status;

    /**
     * 延时级别
     */
    private int delayLevel;
}