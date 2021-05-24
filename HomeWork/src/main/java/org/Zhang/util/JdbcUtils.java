package org.Zhang.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class JdbcUtils {
    private static DataSource dataSource = null;
    static {
        Properties props = null;
        try {
            props = new Properties();
            //读取jdbc.properties配置文件
            InputStream stream = JdbcUtils.class.getClassLoader().getResourceAsStream("Druid.properties");
            props.load(stream);
            //创建数据库连接池
            dataSource = DruidDataSourceFactory.createDataSource(props);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 创建数据库连接
     * @return 返回一个对应的连接，如果为null则表示连接失败
     */
    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }

    /**
     * 关闭数据库连接，将其放回数据库连接池
     * @param conn
     */
    public static void close(Connection conn){
        if(conn != null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

