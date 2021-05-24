package com.example.jsp_study;

import java.util.List;
import java.util.Map;

public class Generic {
    private int size;
    private Map<String,Object> map;
    private List<String> list;

    public Generic() {
    }

    public Generic(int size, Map<String, Object> map, List<String> list) {
        this.size = size;
        this.map = map;
        this.list = list;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Generic{" +
                "size=" + size +
                ", map=" + map +
                ", list=" + list +
                '}';
    }
}
