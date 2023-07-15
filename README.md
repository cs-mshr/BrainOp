This repository contains the code for a RESTful API that handles psychometric form submissions. The API is implemented using Spring Boot and provides endpoints to submit and retrieve psychometric form data.

## Technologies Used

The following technologies and frameworks are used in this project:

- Spring Boot
- Spring Web
- Spring Data JPA
- Swagger UI
- Java
- JSON
- Jackson Library

## API Endpoints


The API provides the following endpoints:
![Swagger-UI](https://github.com/cs-mshr/BrainOp/assets/95642555/b0ac862f-c9b5-4e78-b029-e2479bca1103)


### Get All Psychometric Forms

- **Endpoint:** GET `http://localhost:8080/api/psychometric`
- **Description:** Retrieves all psychometric forms submitted to the system.
- **Response:** Returns a JSON array containing all psychometric form data.

  ![All Form Data Endpoint Test](https://github.com/cs-mshr/BrainOp/assets/95642555/ec624141-1731-49c6-b05b-9f07925fba66)


### Submit Psychometric Form

- **Endpoint:** POST `http://localhost:8080/api/psychometric/submit`
- **Description:** Submits a psychometric form with the provided data.
- **Request Parameters:**
  - `name` (String): The name of the candidate.
  - `email` (String): The email address of the candidate.
  - `file` (MultipartFile): The file attachment from the form.
  - `textField` (String): A text field value from the form.
  - `mcqQuestions` (String): A JSON array representing multiple-choice questions and answers.
- **Response:** Returns the submitted psychometric form data in JSON format if successful.
- **Error Handling:** Returns appropriate error messages and status codes if any error occurs during form submission.


  ![Submission of Form-Data](https://github.com/cs-mshr/BrainOp/assets/95642555/bf04321d-2845-476b-a4c8-f3b293899503)



## Error Handling

The API handles various error scenarios and returns appropriate error messages and status codes. Here are some of the error scenarios:

- Duplicate Submission: If a candidate has already submitted data with the same email address, a duplicate submission error is returned.
- Invalid mcqQuestions Format: If the provided `mcqQuestions` parameter is not a valid JSON array, an error is returned.

  ![Dublicate Submission Error](https://github.com/cs-mshr/BrainOp/assets/95642555/0df89862-aa0d-47fe-a358-83473f0c7b37)

## Database Schema-
Table: PsychometricData

| Column Name    | Data Type | Description                           |
| -------------- | --------- | ------------------------------------- |
| id             | Integer   | Primary key of the form submission    |
| name           | String    | Name of the candidate                  |
| email          | String    | Email address of the candidate         |
| fileBase64     | Text      | Base64 representation of the file      |
| textField      | String    | Text field value from the form         |
| mcqQuestions   | Text      | JSON representation of MCQ questions   |


In this schema, the `PsychometricData` table represents the form submissions. Each row in the table corresponds to a single submission and contains the following information:

- `id`: Unique identifier for each form submission (primary key).
- `name`: Name of the candidate who filled out the form.
- `email`: Email address of the candidate.
- `fileBase64`: The file attachment from the form, stored as a base64-encoded string.
- `textField`: The value of a text field from the form.
- `mcqQuestions`: JSON representation of multiple-choice questions and answers.
- 
![sql1](https://github.com/cs-mshr/BrainOp/assets/95642555/2e4a7b08-1298-422c-94f9-7573237de1c0)

Table: mcq_question

| Column Name | Data Type | Description                         |
| ----------- | --------- | ----------------------------------- |
| id          | Integer   | Primary key of the MCQ question     |
| question    | String    | The question text                   |
| option1     | String    | Option 1 for the multiple-choice question |
| option2     | String    | Option 2 for the multiple-choice question |
| option3     | String    | Option 3 for the multiple-choice question |
| option4     | String    | Option 4 for the multiple-choice question |
| option5     | String    | Option 5 for the multiple-choice question |

In this schema, the `mcq_question` table represents the multiple-choice questions. Each row in the table corresponds to a single question and contains the following information:

- `id`: Unique identifier for each question (primary key).
- `question`: The text of the multiple-choice question.
- `option1`: Option 1 for the multiple-choice question.
- `option2`: Option 2 for the multiple-choice question.
- `option3`: Option 3 for the multiple-choice question.
- `option4`: Option 4 for the multiple-choice question.
- `option5`: Option 5 for the multiple-choice question.

![sql2](https://github.com/cs-mshr/BrainOp/assets/95642555/38a3d6c2-216d-4e16-af3b-b35fee6eac62)

## Setup and Execution

To run this API on your local machine, follow these steps:

1. Clone the repository to your local machine.
2. Open the project in your preferred Java IDE.
3. Configure the database connection settings in the `application.properties` file.
4. Build the project using Maven.
5. Run the application.
6. Access the Swagger UI documentation at `http://localhost:8080/swagger-ui.html` in your browser.

## Conclusion

This API provides endpoints to submit and retrieve psychometric form data. It is implemented using Spring Boot and integrates Swagger UI for interactive documentation. By following the provided setup instructions, you can easily run the API on your local machine.

For any further assistance or inquiries, please feel free to reach out.
