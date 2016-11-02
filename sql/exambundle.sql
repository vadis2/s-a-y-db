--
-- Database: `exambundle`
--

# ExamAttemptAnswer
# id
# exam_attempt_question_id
# answer_id
#
# -- --------------------------------------------------------
#
# DROP TABLE IF EXISTS `attemptanswers`;
# CREATE TABLE `attemptanswers` (
#   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
#   `question_id` int(10) unsigned NOT NULL,
#   `answer` VARCHAR(255) NOT NULL,
#   `correct` TINYINT(1) UNSIGNED NOT NULL, # 0 - incorrect or 1 - correct
#   `deleted_date` DATETIME NULL,
#   `deleted_user_id` int(10) unsigned NULL,
#   `score` DECIMAL(10, 2) NOT NULL,
#   PRIMARY KEY (`id`),
#   KEY `examattempts_questions_id_foreign` (`question_id`),
#   KEY `examattempts_users_id_foreign` (`deleted_user_id`)
# )ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------
# id
# exam_id
# user_id
# start_date
# end_date
# result (decimal 10,2) - sum of correct/incorrect scores
# pass (tinyint) - whether result >= exam.pass_mark
# deleted_date
# deleted_user_id
#
# DROP TABLE IF EXISTS `examattempts`;
# CREATE TABLE `examattempts` (
#   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
#   `exam_id` int(10) unsigned NOT NULL,
#   `user_id` VARCHAR(255) NOT NULL,
#   `start_date` DATETIME NULL,
#
#   `correct` TINYINT(1) UNSIGNED NOT NULL, # 0 - incorrect or 1 - correct
#   `deleted_date` DATETIME NULL,
#   `deleted_user_id` int(10) unsigned NULL,
#   `score` DECIMAL(10, 2) NOT NULL,
#   PRIMARY KEY (`id`),
#   KEY `examattempts_questions_id_foreign` (`question_id`),
#   KEY `examattempts_users_id_foreign` (`deleted_user_id`)
# )ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `answer` VARCHAR(255) NOT NULL,
  `correct` TINYINT(1) UNSIGNED NOT NULL, # 0 - incorrect or 1 - correct
  `deleted_date` DATETIME NULL,
  `deleted_user_id` int(10) unsigned NULL,
  `score` DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `examsets_exams_id_foreign` (`exam_id`),
  KEY `examsets_sets_id_foreign` (`set_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

DROP TABLE IF EXISTS `examsets`;
CREATE TABLE `examsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` int(10) unsigned NOT NULL,
  `set_id` INT(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `examsets_exams_id_foreign` (`exam_id`),
  KEY `examsets_sets_id_foreign` (`set_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

DROP TABLE IF EXISTS `sets`;
CREATE TABLE `sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NOT NULL,
  `order` TINYINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

DROP TABLE IF EXISTS `questionsets`;
CREATE TABLE `questionsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` INT(10) UNSIGNED NOT NULL,
  `set_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questionsets_questions_id_foreign` (`question_id`),
  KEY `questionsets_sets_id_foreign` (`set_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(8) NOT NULL,  #“one_of”, “multiple”, “ ALL ”
  `order` TINYINT NOT NULL,
  `score` DECIMAL(10, 2),
  `deleted_date` DATETIME NULL,
  `deleted_user_id` int(10) unsigned NULL,
  `title_id` INT(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_users_id_foreign` (`deleted_user_id`),
  KEY `questions_translations_id_foreign` (`title_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` INT(10) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL,
  `description` VARCHAR(255) COLLATE utf8_unicode_ci NULL,
  `pass_mark` DECIMAL(10,2) NULL,
  `deleted_date` DATETIME NULL,
  `deleted_user_id` int(10) unsigned NULL,
  `duration` int(5) unsigned NULL,
  `attempt` TINYINT(2) unsigned NULL,
  `interval` INT(8) unsigned NOT NULL,
  `comment_date` DATETIME NULL,
  PRIMARY KEY (`id`),
  KEY `exams_translations_id_foreign` (`title_id`),
  KEY `exams_users_id_foreign` (`created_user_id`),
  KEY `exams_users_id_foreign` (`deleted_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` INT(10) UNSIGNED NOT NULL,
  `string` VARCHAR(255) COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`),
  KEY `translations_languages_id_foreign` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acronym` CHAR(2) COLLATE utf8_unicode_ci NOT NULL,
  `title` VARCHAR(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

# --
# -- Constraints for table `cancellations`
# --
# ALTER TABLE `cancellations`
#   ADD CONSTRAINT `cancellations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
#
# ALTER TABLE `cancellations`
#   ADD CONSTRAINT `cancellations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;