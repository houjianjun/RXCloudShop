package com.xtwy.base.constant;

/**
 * 类的描述：全局常量类
 *
 * @作者: 侯建军
 * @邮箱: 474177818@qq.com
 * @博客: https://blog.csdn.net/marquis888
 * @创建日期: 2018年05月12日  18:53
 * @版本: v1.0
 * @jdk版本使用: JDK1.8
 */
public class GlobalConstant {
    /**
     * 上传文件大小
     */
    public static final long FILE_MAX_SIZE = 5 * 1024 * 1024;
    public static final String UNKNOWN = "unknown";
    /**
     * IP类型
     */
    public static final String X_FORWARDED_FOR = "X-Forwarded-For";
    public static final String X_REAL_IP = "X-Real-IP";
    public static final String PROXY_CLIENT_IP = "Proxy-Client-IP";
    public static final String WL_PROXY_CLIENT_IP = "WL-Proxy-Client-IP";
    public static final String HTTP_CLIENT_IP = "HTTP_CLIENT_IP";
    public static final String HTTP_X_FORWARDED_FOR = "HTTP_X_FORWARDED_FOR";

    /**
     * 本机地址
     */
    public static final String LOCALHOST_IP = "127.0.0.1";
    public static final String LOCALHOST_IP_16 = "0:0:0:0:0:0:0:1";
    public static final int MAX_IP_LENGTH = 15;
    /**
     *
     */
    public static final String DEV_PROFILE = "dev";
    public static final String TEST_PROFILE = "test";
    public static final String PRO_PROFILE = "pro";
    public static final int TWO_INT = 2;
    public static final int M_SIZE = 1024;
    public static final String ROOT_PREFIX = "rxcloudshop";
    /**
     * 异常消息
     */
    public static final int EXCEPTION_CAUSE_MAX_LENGTH = 2048;
    public static final int EXCEPTION_MESSAGE_MAX_LENGTH = 2048;
    /**
     * 注册中心路径
     */
    public static final String ZK_REGISTRY_SERVICE_ROOT_PATH = "/rxcloudshop/registry/service";
    public static final String ZK_REGISTRY_ID_ROOT_PATH = "/rxcloudshop/registry/id";
    public static final String ZK_REGISTRY_PRODUCER_ROOT_PATH = "/rxcloudshop/registry/producer";
    public static final String ZK_REGISTRY_CONSUMER_ROOT_PATH = "/rxcloudshop/registry/consumer";
    public static final String ZK_REGISTRY_SEQ = "/rxcloudshop/seq";

    /**
     * 数字常量
     */
    public interface Number {
        int THOUSAND_INT = 1000;
        int HUNDRED_INT = 100;
        int ONE_INT = 1;
        int TWO_INT = 2;
        int THREE_INT = 3;
        int FOUR_INT = 4;
        int FIVE_INT = 5;
        int SIX_INT = 6;
        int SEVEN_INT = 7;
        int EIGHT_INT = 8;
        int NINE_INT = 9;
        int TEN_INT = 10;
        int EIGHTEEN_INT = 18;
    }

    /**
     * 系统常量
     */
    public static final class Sys {

        private Sys() {
        }

        /**
         * 全局用户名
         */
        public static final String TOKEN_AUTH_DTO = "CURRENT_USER_DTO";

        /**
         * 超级管理员的用户ID
         */
        public static final Long SUPER_MANAGER_USER_ID = 1L;
        /**
         * 超级管理员的用户编号
         */
        public static final String SUPER_MANAGER_LOGIN_NAME = "admin";
        /**
         * 超级管理员角色ID
         */
        public static final Long SUPER_MANAGER_ROLE_ID = 1L;
        /**
         * 超级管理员组织ID
         */
        public static final Long SUPER_MANAGER_GROUP_ID = 1L;
        /**
         * 运营工作台ID
         */
        public static final Long OPER_APPLICATION_ID = 1L;

        /**
         * 菜单根MENU_ROOT.
         */
        public static final String MENU_ROOT = "root";

        /**
         * 默认路径 DEFAULT_FILE_PATH.
         */
        public static final String DEFAULT_FILE_PATH = "rxcloudshop/file/";

        /**
         * redis 键的有效默认期 = 1MINUTES
         */
        public static final long REDIS_DEFAULT_EXPIRE = 1L;
    }

    /**
     * 系统符号常量
     */
    public static final class Symbol {
        private Symbol() {
        }

        /**
         * 逗号与点.
         */
        public static final String COMMA = ",";
        public static final String SPOT = ".";
        /**
         * 下划线 UNDER_LINE.
         */
        public final static String UNDER_LINE = "_";
        /**
         * 百分号常量.
         */
        public final static String PER_CENT = "%";
        /**
         * AT符号.
         */
        public final static String AT = "@";
        /**
         * PIPE符号.
         */
        public final static String PIPE = "||";
        public final static String SHORT_LINE = "-";
        public final static String SPACE = " ";
        public static final String SLASH = "/";
        public static final String MH = ":";
    }

    /**
     * 对象存储常量
     */
    public static final class Oss {
        private Oss() {
        }

        /**
         * 对象存储默认路径 DEFAULT_FILE_PATH.
         */
        public static final String DEFAULT_FILE_PATH = "/default/";
    }


    /**
     * 图片压缩高度宽度
     */
    public static final int IMAGE_WIDTH = 1920;
    /**
     * T图片压缩高度
     */
    public static final int IMAGE_HEIGHT = 1280;

    /**
     * 是常量
     */
    public static final Integer Y = 1;
    /**
     * 否常量
     */
    public static final Integer N = 0;

    /**
     * 支付枚举类型
     */
    public enum PaymentTypeEnum {
        /**
         * 在线支付枚举
         */
        ONLINE_PAY(1, "在线支付");

        PaymentTypeEnum(int code, String value) {
            this.code = code;
            this.value = value;
        }

        private String value;
        private int code;

        /**
         * 获取枚举值
         *
         * @return the value
         */
        public String getValue() {
            return value;
        }

        /**
         * 获取枚举代码
         *
         * @return the code
         */
        public int getCode() {
            return code;
        }

        /**
         * 根据代码返回枚举
         *
         * @param code the code
         * @return 支付类型枚举
         */
        public static PaymentTypeEnum codeOf(int code) {
            for (PaymentTypeEnum paymentTypeEnum : values()) {
                if (paymentTypeEnum.getCode() == code) {
                    return paymentTypeEnum;
                }
            }
            return null;
        }
    }
}
