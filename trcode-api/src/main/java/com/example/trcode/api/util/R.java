package com.example.trcode.api.util;

import java.util.HashMap;

public class R extends HashMap<String, Object> {
    public R() {
        put("code", 200);
        put("msg", "success");
    }

    public static R ok() {
        return new R();
    }

    public static R ok(String msg) {
        R r = new R();
        r.put("msg", msg);
        return r;
    }

    public static R error(String msg) {
        R r = new R();
        r.put("code", 500);
        r.put("msg", msg);
        return r;
    }

    public static R error(int code, String msg) {
        R r = new R();
        r.put("code", code);
        r.put("msg", msg);
        return r;
    }

    public R put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
