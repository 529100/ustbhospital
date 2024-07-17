package com.ustb.hospital.test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.*;

public class JsonTest {
    public static void main(String[] args) throws JsonProcessingException {
        Goods goods = new Goods();
        goods.setGoodsName("贾智博");
        goods.setGoodsId(1);
        goods.setGoodsTime(new Date());

        List<Goods> goodsList = new ArrayList<>();
        goodsList.add(goods);
        goodsList.add(goods);
        goodsList.add(goods);

        Map<String,String > map = new HashMap<>();
        map.put("班长","贾智博");
        map.put("学委","郭恩典");

        ObjectMapper mapper = new ObjectMapper();
        String goodsJson = mapper.writeValueAsString(goods);
        System.out.println(goodsJson);

        String goodsListJson = mapper.writeValueAsString(goodsList);
        System.out.println(goodsListJson);

        String mapJson = mapper.writeValueAsString(map);
        System.out.println(mapJson);

    }


}
