package com.yjc.work3.tool;

public class SqlTool {

    //查询
    public static final String QUERY_SQL = "select count(1) from student where name = ? ";
    //插入
    public static final String INSERT_SQL1 = "insert student into (id,name) value (123,'yjc1')";
    public static final String INSERT_SQL2 = "insert student into (id,name) value (321,'yjc2')";
    //删除
    public static final String DELTE_SQL = "delete from student where id='123' ";
    //更新
    public static final String UPDATE_SQL = "update student set name = 'zzx' WHERE name = 'yjc1'  ";

}
