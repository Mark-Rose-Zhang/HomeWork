package org.Zhang.dao;

import org.Zhang.util.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * 该类实现基本的数据库到实体类的转换功能
 * 设置为抽象类，不允许被实例化
 */
public abstract class BaseDao {
    private QueryRunner queryRunner = new QueryRunner();

    /**
     * 对数据库中的数据进行更新
     * @param sql 执行的sql语句
     * @param args 占位符
     * @return 若未查询到数据则返回-1 否则返回更新条数
     */
    public int update(String sql, Object ... args) {
        Connection conn = JdbcUtils.getConnection();
        try {
            int i = queryRunner.update(conn, sql, args);
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JdbcUtils.close(conn);
        }
        return -1;
    }

    /**
     * 查询数据库中的一条数据
     * @param type 类的类型
     * @param sql  执行的sql语句
     * @param args 占位符
     * @param <T>  泛型参数
     * @return 若未查询到数据则返回空 否则返回对应类的对象
     */
    public <T> T queryForOne(Class<T> type,String sql , Object ... args){
        Connection conn = JdbcUtils.getConnection();
        try {
            T t = queryRunner.query(conn, sql, new BeanHandler<T>(type), args);
            return t;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 查询数据库中的多条记录
     * @param type 返回对象实体类
     * @param sql  执行的sql语句
     * @param args 占位符
     * @param <T>  泛型参数
     * @return
     */
    public <T>List<T> queryForList(Class<T> type,String sql , Object ... args){
        Connection conn = JdbcUtils.getConnection();
        try {
            List<T> list = queryRunner.query(conn, sql, new BeanListHandler<T>(type), args);
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 标量查询
     * @param sql  执行费sql语句
     * @param args 占位符
     * @return 一个查询对象实体
     */
    public Object queryForSingleValue(String sql,Object... args){
        Connection conn = JdbcUtils.getConnection();
        try {
            Object query = queryRunner.query(conn, sql, new ScalarHandler(), args);
            return query;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }





}
