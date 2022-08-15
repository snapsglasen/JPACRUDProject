package com.skilldistillery.prefectures.data;

import java.util.List;

import com.skilldistillery.prefectures.entities.Prefecture.Prefecture;

public interface PrefectureDAO {
Prefecture findById(int prefId);
List<Prefecture> findAll();
Prefecture create(Prefecture pref);

public Prefecture update(int id, Prefecture pref);
public boolean delete(Prefecture pref);
}
