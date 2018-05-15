package com.xtwy.config;

import com.xtwy.config.properties.RXCloudShopProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * 类的描述：核心配置类
 *  通过使用spring-boot-configuration-processor jar， 你可以从被@ConfigurationProperties注解的
 *  节点轻松的产生自己的配置元数据文件。该jar包含一个在你的项目编译时会被调用的Java注解处理器。
 *  想要使用该处理器，你只需简单添加spring-boot-configuration-processor依赖。
 *
 *  使用@ConfigurationProperties注解注入属性文件配置的属性值。
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月12日  19:48
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
@Configuration
@EnableConfigurationProperties(RXCloudShopProperties.class)
public class RXCloudShopCoreConfig {

}
