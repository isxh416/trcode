package com.example.trcode.api.dao;

import cn.hutool.core.date.DateUtil;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@Repository
public class TravelRecordDao {
    private Connection getConnection() throws Exception {
        Class.forName("org.apache.hive.jdbc.HiveDriver");
        String url = "jdbc:hive2://XXX.XXX.XXX:10000/test";
        String username = "root";
        String password = "123!@#qweQWE";
        Connection con = DriverManager.getConnection(url, username, password);
        return con;
    }

    public int searchUserLevel(String tel) throws Exception {
        Connection con = getConnection();
        String date_1 = DateUtil.today();
        String date_2 = DateUtil.offsetDay(DateUtil.date(), -14).toDateStr();
        String sql = "SELECT MAX(level) AS level FROM travel_record WHERE tel='" + tel + "' AND create_time BETWEEN '" + date_2 + "'AND'" + date_1 + "'";
        Statement st = con.createStatement();
        ResultSet set = st.executeQuery(sql);
        if (set != null) {
            set.next();
            int level = set.getInt("level");
            con.close();
            return level;
        }
        return 1;
    }
}
