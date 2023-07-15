package com.brainop.form.model;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "mcq_question")
@Data
@NoArgsConstructor @AllArgsConstructor
public class McqQuestion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Column(nullable = false)
    private String question;

    @NotNull
    @Column(nullable = false)
    private String option1;

    @NotNull
    @Column(nullable = false)
    private String option2;

    @NotNull
    @Column(nullable = false)
    private String option3;

    @NotNull
    @Column(nullable = false)
    private String option4;

    @NotNull
    @Column(nullable = false)
    private String option5;

}

