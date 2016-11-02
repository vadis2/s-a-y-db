# specification from telegram
Exam:
id
created_date
created_user_id
description (varchar)
pass_mark (decimal 10,2)
deleted_date
deleted_user_id
duration (int) - exam duration in seconds
attempt (int) - number of attempts
interval (int) - number of seconds for attempt restriction, default 86400 (24 hours)
commence_date
title -> translation.id

ExamSet
id
exam_id
set_id

Set
id
sort (int)

QuestionSet
id
question_id
set_id

Question
id
type (varchar “one_of”, “multiple”, “all”)
sort (int)
score (decimal 10,2)
deleted_date
deleted_user_id
title -> translation.id

Answer
id
question_id
correct (tinting)
deleted_date
deleted_user_id
score (decimal 10,2)

ExamAttempt
id
exam_id
user_id
start_date
end_date
result (decimal 10,2) - sum of correct/incorrect scores
pass (tinyint) - whether result >= exam.pass_mark
deleted_date
deleted_user_id

ExamAttemptQuestion
id
exam_attempt_id
question_id
number (int) - порядковый номер вопроса в экзамене

ExamAttemptAnswer
id
exam_attempt_question_id
answer_id


Translation
id
language_id
string (varchar)

Language
id
acronym (char(2))
title (varchar)