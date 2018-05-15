package com.xtwy.core.registry.base;

import com.google.common.base.Preconditions;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;

/**
 * 类的描述：
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月13日  20:23
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Data
public class ReliableMessageRegisterDto {
    private String consumerGroup;
    private String producerGroup;
    private String namesrvAddr;

    /**
     * Sets consumer group.
     *
     * @param consumerGroup the consumer group
     *
     * @return the consumer group
     */
    public ReliableMessageRegisterDto setConsumerGroup(final String consumerGroup) {
        Preconditions.checkArgument(StringUtils.isNotEmpty(consumerGroup), "init zk cid is null");
        this.consumerGroup = consumerGroup;
        return this;
    }

    /**
     * Sets producer group.
     *
     * @param producerGroup the producer group
     *
     * @return the producer group
     */
    public ReliableMessageRegisterDto setProducerGroup(final String producerGroup) {
        Preconditions.checkArgument(StringUtils.isNotEmpty(producerGroup), "init zk pid is null");
        this.producerGroup = producerGroup;
        return this;
    }

    /**
     * Sets namesrv addr.
     *
     * @param namesrvAddr the namesrv addr
     *
     * @return the namesrv addr
     */
    public ReliableMessageRegisterDto setNamesrvAddr(final String namesrvAddr) {
        Preconditions.checkArgument(StringUtils.isNotEmpty(namesrvAddr), "init ZK namesrvAddr is null");
        this.namesrvAddr = namesrvAddr;
        return this;
    }
}
