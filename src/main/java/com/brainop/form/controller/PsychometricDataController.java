package com.brainop.form.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.brainop.form.model.McqQuestion;
import com.brainop.form.model.PsychometricData;
import com.brainop.form.repository.PsychometricDataRepository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/psychometric")
@RequiredArgsConstructor
@Api(tags = "Psychometric Form API")
public class PsychometricDataController {

    private final PsychometricDataRepository repository;
    private final ObjectMapper objectMapper;

    @GetMapping
    @ApiOperation("Get All Psychometric Forms")
    public ResponseEntity<?> getAllForms() {
        List<PsychometricData> forms = repository.findAll();
        return ResponseEntity.ok(forms);
    }

    @PostMapping("/submit")
    @ApiOperation("Submit Psychometric Form")
    public ResponseEntity<?> submitPsychometricData(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("file") MultipartFile file,
            @RequestParam("textField") String textField,
            @RequestParam("mcqQuestions") String mcqQuestions
    ) {
        try {

            //To throw Duplicacy error
            Optional<PsychometricData> existingData = repository.findByEmail(email);
            if (existingData.isPresent()) {
                return ResponseEntity.
                        status(HttpStatus.BAD_REQUEST)
                        .body("Duplicate submission: Candidate has already submitted data.");
            }
            String fileBase64 = Base64.getEncoder().encodeToString(file.getBytes());

            //Converting String data into List<McqQuestions>
            // for better storage into database
            List<McqQuestion> mcqQuestionList;
            try {
                mcqQuestionList = objectMapper.readValue(
                        mcqQuestions,
                        new TypeReference<List<McqQuestion>>() {}
                );
            } catch (JsonProcessingException e) {
                return ResponseEntity
                        .status(HttpStatus.BAD_REQUEST)
                        .body("Invalid mcqQuestions format. Please provide a valid JSON array for McqQuestions.");
            }

            PsychometricData psychometricData = PsychometricData.builder()
                    .name(name)
                    .email(email)
                    .fileBase64(fileBase64)
                    .textField(textField)
                    .mcqQuestions(mcqQuestionList)
                    .build();

            PsychometricData savedData = repository.save(psychometricData);

            return ResponseEntity.ok(savedData);

        } catch (IOException e) {
            return ResponseEntity
                    .status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error writing file to the database.");
        }
    }

}
