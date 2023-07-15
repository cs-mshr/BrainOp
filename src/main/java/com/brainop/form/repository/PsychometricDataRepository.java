package com.brainop.form.repository;
import com.brainop.form.model.PsychometricData;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface PsychometricDataRepository extends JpaRepository<PsychometricData, Long> {

    Optional<PsychometricData> findByEmail(String email);
}
