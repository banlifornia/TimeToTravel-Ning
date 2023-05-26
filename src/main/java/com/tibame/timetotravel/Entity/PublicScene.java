package com.tibame.timetotravel.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Blob;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "PUBLIC_SCENE")
public class PublicScene {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "SCENE_ID")
    private Integer sceneId;

    @Column(name = "ADMIN_ID")
    private Integer adminId;

    @Column(name = "SCENE_NAME")
    private String sceneName;
    @Lob
    @Column(name = "SCENE_PHTOT")
    private Blob scenePhtot;

    @Column(name = "SCENE_DESC")
    private String sceneDesc;

    @Column(name = "SCENE_ADDR")
    private String sceneAddr;

    @Column(name = "SCENE_LAT")
    private String sceneLat;

    @Column(name = "SCENE_LNG")
    private String sceneLng;
}