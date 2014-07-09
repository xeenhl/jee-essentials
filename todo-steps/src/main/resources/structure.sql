CREATE TABLE `users`
  (
    login VARCHAR (255) NOT NULL PRIMARY KEY,
    password VARCHAR (255) NOT NULL
  )
  DEFAULT CHARACTER SET `utf8`;

CREATE TABLE `tasks`
  (
    id BIGINT(11)  UNSIGNED  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (255) NOT NULL,
    due_datetime DATETIME NOT NULL
  )
  DEFAULT CHARACTER SET `utf8`;

CREATE TABLE `tags`
  (
    id BIGINT(11)  UNSIGNED  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (255) NOT NULL
  )
  DEFAULT CHARACTER SET `utf8`;

CREATE TABLE `tasks_tags`
(
  tasks_id BIGINT(11)  UNSIGNED  NOT NULL ,
  tag_id BIGINT(11)  UNSIGNED  NOT NULL ,
  PRIMARY KEY (`task_id`, `tag_id`)
)
  DEFAULT CHARACTER SET `utf8`;