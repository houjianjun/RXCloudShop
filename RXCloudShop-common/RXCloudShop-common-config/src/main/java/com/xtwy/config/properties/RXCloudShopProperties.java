package com.xtwy.config.properties;

import com.xtwy.base.constant.GlobalConstant;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * 类的描述：全局属性配置类
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月12日  19:50
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Data
@ConfigurationProperties(prefix = GlobalConstant.ROOT_PREFIX)
public class RXCloudShopProperties {

}
