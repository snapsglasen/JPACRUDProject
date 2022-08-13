package com.skilldistillery.prefectures.data;

import java.util.List;

import com.skilldistillery.prefectures.entities.Prefecture.Prefecture;

public interface PrefectureDAO {
Prefecture findById(int prefId);
List<Prefecture> findAll();
}
