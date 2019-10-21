package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101200667197";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCRKIrbX5tUM8ipXhwRGu4e8v96aq3rPnQrJtB6ON/sFYgH2T/DT0t3D7Sw1Pjzu3Zphg1mz140FV1RS1jfxky9ZolQXmWpWgHFWwNcu1iv4v//C/iVppuIfgxtXy56ZZxiGP69Vav56C0A4w2zwGU+L3/2SJWVd+X2RGuVsq/6TxTDqeT7pwm7/i/9r50KXq+HYBOxpYWfiSIWonPYh0u3D6+NC0hUiifbwX2OAAql7vhgorJ/bdDHY3ElTqj8mAjzhp5Z5GidBXTRxjDAsTVIClUuMZgsK+wtTpt9T788z8KTDOZzU6+MMGoO2LVnmjoyfgi2O8l/IVAl6HKn9xvRAgMBAAECggEAWxetJAO4bzvb9eVYCafzvLpTdtgRcmoL7rR56eldJENSzVIZQJC3U+0oQDw2SoXexlPYfycs/9RUblqxWCSSLd112FiUxZT1PYti7cOn4SC786rogck/G4W2eMBdY3P2kl0LJ3fm53o7G65g/+eB4Wdfjwd3z4ehaU0Akr3Cz3nrZ0XTBVyhCoJGMiLSFv8jdnUTaJdD1kWzLPqDdQkNQWbFu9GfoWB+JMEftDY1+wT89Zef/N3zAQpEhTt7Yr4lRYXy7KHljeM6TgEns1T66sroVnQEBw0LKj4LxkDchxZiCxzwvKXtVlhBBvtAMAcXsom1nnbBFIKBNrHME7Z9wQKBgQD/x0xElo+lfQU0qiIiAcrGQYMtv3YntUH80DnQxADH/ohi7dG2zm8VHk/jlrMRo8lzMI0QRGn7qzUrtfsMZCjNqhn27kVhuQ2hLCG/Gyf1TF3/6JP1/fSP3Avn0T0ez5GZfjzBBRQ6tybYDyncXdlFQamYHed/hvFzWVsOUzRpyQKBgQCRSLjD/6HZfGH7AaFcUoZdFAmkQnp7oM4sbEM5breQD7kLrtvg/lvDMBS4k50oNVAqT5vLq8Y9mlVdVZThFWP1bhFBTUb8Ff2QjOchUJpo38HATutbfLIiOjv/cU7x0fhehD8QTPXv/afUOJY1rwJsQBd1l6LQvLNqVU6i/1YlyQKBgAbQdnW1VSphhEv85F/nkFFr2WTUnv870wA7Q+8N6b9qRpPsJhQqt8bmQdacYzTrGijZeEigqfose4QomwGfgX7JM1viyTJrTbOni1aeEJh2amKw/ZAmLefPQvnwFyLFAOoH9PJngjx2OLC05raaQXmY4D3PPiWloLUkAksFaHYRAoGAFSqPIJ8BqXnhnHwkUhsD0FO3A+NbjN9kqjwrnxZuT+K6huU2y5TDMbCzlCCNaOo7f66ReB7Shu8ROMPbKN/A7GTYxrbHfLqHcqPUmJnxpQ3UYHwe9fk4ypvJWfHcGocItFx4A5vyyMAfz19fIvsYU0UTJeKtqdOUIA3FoyGoH2ECgYEAkHR6FI9xu29Cap6DbIFOQbYfR0sRkkiAEMq6gRauH/QplVdZ+E1OvGK+3C/rr5WH7cGlYczSyHkirWnY57VeYE10PkUI0jEuAlXi/aO27xowiDKD5KhGm/PGUqDRrnoFr7GHWIhQ1BqMWzCsrNTYRbM2sY/UxPpyslc66eY2HZU=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAklUzQCdG4l/wFaeO6u/jKPa9mqcQyfo13xw+bqRI62imo7i5xkjU4TX+fXzpYRCGu5HC8b4SFFtbs7Z/iOifkVe8T7S+q2wVNjmjjrcMCYkC/s0+frkFCsSce/rm5OhyOvc+rrprDFXlcsNpiJNHCM29l+QzmSuzOMeUNPgZC18ETgvFXaX61FWZROhHOQerauspdzhYWc6ElyGBbiD32XmRn6snHJB3LopFqUNCK3W35D/+S/xS5E/YNX6IBE4q44BZW87vOIS0Hnfgr5ivtzfQP1GMhcD5coRUuuRXcq9CWOkyg9OXtpW1wP4Lj9DNCONtCyTgkMOfOmDNS3A5BwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8088/updatezhuangtai";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8088/updatezhuangtai";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

