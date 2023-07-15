package com.brainop.form.model;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Builder
@NoArgsConstructor  @AllArgsConstructor
public class PsychometricData {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, unique = true)
    private String email;

    @Lob
    @Column(nullable = false)
    private String fileBase64;

    @Column(nullable = false)
    private String textField;

//    @ElementCollection
//    @Column(nullable = false)
//    private List<String> mcqQuestions;


    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "psychometric_data_id")
    private List<McqQuestion> mcqQuestions;

}
