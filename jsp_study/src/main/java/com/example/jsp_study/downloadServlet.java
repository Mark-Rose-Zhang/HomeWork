package com.example.jsp_study;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * 学习如何接受客户端发送的数据
 */
@WebServlet(name = "downloadServlet", value = "/downloadServlet")
public class downloadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("接收到数据");
//        //加载类
//        ServletInputStream is = request.getInputStream();
//        int len = 0 ;
//        byte [] buffer = new byte[1024];
//        while((len = is.read(buffer))!=-1){
//            System.out.print(new String(buffer , 0 , len));
//        }

        //判断是否为流数据
        if(ServletFileUpload.isMultipartContent(request)){

            //创建工厂
            FileItemFactory factory = new DiskFileItemFactory();
            //创建用于解析的工具类
            ServletFileUpload sfu = new ServletFileUpload(factory);

            try {
                //解析请求体,得到表单项
                List<FileItem> list = sfu.parseRequest(request);

                for (FileItem item : list) {
                    //如果是普通表单项
                    if(item.isFormField()){
                        System.out.println("name:"+item.getFieldName());
                        System.out.println("value:"+item.getString("UTF-8"));
                    }else{//如果是文件类型,则进行输出
                        System.out.println("name:"+item.getFieldName());

                        //自己电脑默认是GBK
                        String name = new String(item.getName().getBytes("GBK"),"UTF-8");
                        System.out.println("文件名:"+name);
                        //流数据进行数据写入
                        item.write(new File("D:\\"+name));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
