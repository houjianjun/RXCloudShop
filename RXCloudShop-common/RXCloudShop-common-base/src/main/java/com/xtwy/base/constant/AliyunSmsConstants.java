package com.xtwy.base.constant;

import com.google.common.collect.Lists;
import com.xtwy.base.enums.ErrorCodeEnum;
import com.xtwy.base.exception.BusinessException;
import org.springframework.util.StringUtils;

import java.util.Arrays;
import java.util.List;

/**
 * 类的描述：阿里云短消息常量
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月12日  19:08
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
public class AliyunSmsConstants {
    /**
     * 短信模板枚举
     */
    public enum SmsTempletEnum {

        /**
         * 通用模板(短信内容:验证码${code}, 您正在注册成为RXCloudShop用户, 感谢您的支持！)
         */
        UAC_PC_GLOBAL_TEMPLATE("UAC_PC_GLOBAL_TEMPLATE", "SMS_105115057", "code"),;
        /**
         * 短信上下行类型
         */
        private String busType;
        /**
         * 模板代码
         */
        private String templetCode;
        /**
         * 短信参数名
         */
        private String smsParamName;

        /**
         * 获取短信模板枚举
         */
        public static SmsTempletEnum getEnum(String templateCode) {
            SmsTempletEnum smsTempletEnum = null;
            for (SmsTempletEnum ele : SmsTempletEnum.values()) {
                if (templateCode.equals(ele.getTempletCode())) {
                    smsTempletEnum = ele;
                    break;
                }
            }
            return smsTempletEnum;
        }

        /**
         * 短信模板验证
         *
         * @param smsTemplateCode
         * @return
         */
        public static boolean isSmsTemplate(String smsTemplateCode) {

            if (StringUtils.isEmpty(smsTemplateCode)) {
                throw new BusinessException(ErrorCodeEnum.UAC10011020);
            }
            List<String> templetCodeList = getTemplateCodeList();

            return templetCodeList.contains(smsTemplateCode);
        }

        /**
         * 获取短信模板列表
         */
        public static List<SmsTempletEnum> getList() {
            return Arrays.asList(SmsTempletEnum.values());
        }

        /**
         * 获取短信模板代码列表
         */
        public static List<String> getTemplateCodeList() {
            List<String> templetCodeList = Lists.newArrayList();
            List<SmsTempletEnum> list = getList();
            for (SmsTempletEnum templetEnum : list) {
                if (StringUtils.isEmpty(templetEnum.getTempletCode())) {
                    continue;
                }
                templetCodeList.add(templetEnum.getTempletCode());
            }
            return templetCodeList;
        }

        /**
         * 短信模板枚举
         */
        SmsTempletEnum(String busType, String templetCode, String smsParamName) {
            this.busType = busType;
            this.templetCode = templetCode;
            this.smsParamName = smsParamName;
        }

        /**
         * 获取短信上下行类型
         *
         * @return 短信上下行类型
         */
        public String getBusType() {
            return busType;
        }

        /**
         * 获取模板代码.
         *
         * @return 模板代码
         */
        public String getTempletCode() {
            return templetCode;
        }

        /**
         * 获取短消息参数名.
         *
         * @return 短消息参数名
         */
        public String getSmsParamName() {
            return smsParamName;
        }
    }
}
