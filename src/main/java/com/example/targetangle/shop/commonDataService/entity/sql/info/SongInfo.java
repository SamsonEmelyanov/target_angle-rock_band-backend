package com.example.targetangle.shop.commonDataService.entity.sql.info;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.Id;

@Getter
@Setter
@NoArgsConstructor
@ToString
@Entity(name = "songs")
public class SongInfo {

    @Id
    private int id;
    private String name;
    private String artist;
    private String audio;
    private String duration;
}
