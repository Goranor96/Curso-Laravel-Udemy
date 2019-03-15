CREATE TABLE users(
    id              int(100) auto_increment NOT NULL,
    role            varchar(150) NOT NULL,
    name            varchar(200) NOT NULL,
    surname         vachar(200) NOT NULL,
    nick            varchar(200) NOT NULL,
    email           varchar(200) NOT NULL,
    password        varchar(150) NOT NULL,
    image           varchar(255) NOT NULL,
    created_at      date NOT NULL,
    updated_at      date NOT NULL,
    remember_token  varchar(200) NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE images(
    id              int(100) auto_increment NOT NULL,
    user_id         int(100) NOT NULL,
    image_path      varchar(255) NOT NULL,
    description     varchar(255) NOT NULL,
    created_at      date NOT NULL,
    updated_at      date NOT NULL,
    CONSTRAINT images_pk PRIMARY KEY(id),
    CONSTRAINT images_fk FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDB;

CREATE TABLE comments(
    id              int(100) auto_increment NOT NULL,
    user_id         int(100) NOT NULL,
    image_id        int(100) NOT NULL,
    content         varchar(255) NOT NULL,
    created_at      date NOT NULL,
    updated_at      date NOT NULL,
    CONSTRAINT comments_pk PRIMARY KEY(id),
    CONSTRAINT comments_fk1 FOREIGN KEY(user_id) REFERENCES users(id),
    CONSTRAINT comments_fk2 FOREIGN KEY(image_id) REFERENCES images(id)
)ENGINE=InnoDB;

CREATE TABLE likes(
    id              int(100) auto_increment NOT NULL,
    user_id         int(100) NOT NULL,
    image_id        int(100) NOT NULL,
    created_at      date NOT NULL,
    updated_at      date NOT NULL,
    CONSTRAINT likes_pk PRIMARY KEY(id),
    CONSTRAINT likes_fk1 FOREIGN KEY(user_id) REFERENCES users(id),
    CONSTRAINT likes_fk2 FOREIGN KEY(image_id) REFERENCES images(id)
)ENGINE=InnoDB;


INSERT INTO users VALUES(null, 'user', 'Nelson', 'Lizama', 'Goranor', 'nelson@nelson.com','1234', null, null, CURTIME(), CURTIME() );
INSERT INTO users VALUES(null, 'user', 'Juan', 'Lopez', 'JuanLopez', 'juan@nelson.com','1234', null, null, CURTIME(), CURTIME() );
INSERT INTO users VALUES(null, 'user', 'Manolo', 'García', 'ManoloGarcia', 'manolo@nelson.com','1234', null, null, CURTIME(), CURTIME() );


INSERT INTO images VALUES(null, 1, 'asdasd', 'Descripcion imagen 1', CURTIME(), CURTIME() );
INSERT INTO images VALUES(null, 2, 'asdasd2', 'Descripcion imagen 2', CURTIME(), CURTIME() );
INSERT INTO images VALUES(null, 3, 'asdasd3', 'Descripcion imagen 3', CURTIME(), CURTIME() );

INSERT INTO comments VALUES(null, 1, 1, 'Buena foto imagen 1', CURTIME(), CURTIME() );
INSERT INTO comments VALUES(null, 2, 2, 'Buena foto imagen 2', CURTIME(), CURTIME() );
INSERT INTO comments VALUES(null, 3, 3, 'Buena foto imagen 3', CURTIME(), CURTIME() );

INSERT INTO likes VALUES(null, 1, 2, CURTIME(), CURTIME() );
INSERT INTO likes VALUES(null, 2, 2, CURTIME(), CURTIME() );
INSERT INTO likes VALUES(null, 3, 1, CURTIME(), CURTIME() );
INSERT INTO likes VALUES(null, 3, 2, CURTIME(), CURTIME() );
INSERT INTO likes VALUES(null, 2, 2, CURTIME(), CURTIME() );
INSERT INTO likes VALUES(null, 2, 3, CURTIME(), CURTIME() );




