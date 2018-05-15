package com.xtwy.base.dto;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 类的描述：共享上下文Dto
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月13日  23:23
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Data
@NoArgsConstructor
public class ShardingContextDto {
    /**
     * The Sharding total count.
     */
    int shardingTotalCount;
    /**
     * The Sharding item.
     */
    int shardingItem;

    public ShardingContextDto(final int shardingTotalCount, final int shardingItem) {
        this.shardingTotalCount = shardingTotalCount;
        this.shardingItem = shardingItem;
    }
}
