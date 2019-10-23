package com.zhao.checkimage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.Color;
import java.io.IOException;
import java.util.Random;
import javax.imageio.ImageIO;
@Controller
@RequestMapping("/iuser")
public class CheckCode {
    @RequestMapping("/checkCode")
    public void getCheckCode(HttpServletRequest request,HttpServletResponse response) throws IOException {
        int width = 120;
        int height = 40;
        BufferedImage bufi=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

        // 获得画笔
        Graphics g = bufi.getGraphics();

        // 设置背景颜色
        g.setColor(Color.white);
        g.fillRect(0, 0, width, height); // 填充矩形

        g.setColor(Color.red);
        g.drawRect(0, 0, width-1, height-1);


        // 给图片上写字
        String data = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz"; // 准备一些字

        Random r = new Random();
        String code="";
        for (int i = 0; i < 4; i++) {
            // 生成随机颜色
            g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));
            // 修改字体
            g.setFont(new Font("宋体", Font.ITALIC, 25));
            // 生成随机字符
            String charstr=data.charAt(r.nextInt(data.length())) + "";
            g.drawString(charstr, 10 + (20 * i), 30);
            code+=charstr;
        }
        System.out.println(code);
        request.getSession().setAttribute("code", code);
        // 设置干扰线
        for (int i = 0; i <3; i++) {
            // 生成随机颜色
            g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));
            // 画线
            g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width), r.nextInt(height));
        }

        ImageIO.write(bufi, "jpg", response.getOutputStream());
    }

}
