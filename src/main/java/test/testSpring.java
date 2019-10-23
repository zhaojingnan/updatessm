package test;

import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zhao.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class testSpring {
    @Test
    public void test() throws JsonProcessingException {
        String fileJson = "{'fileName':'百度','fileUrl':'www.baidu.com'}";
        JSONObject jsonObject = JSONObject.parseObject(fileJson);
        Object fileName = jsonObject.get("fileName");
        System.out.println(fileName);

    }
}
