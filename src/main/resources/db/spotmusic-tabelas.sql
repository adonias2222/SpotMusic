-- Script opcional: o Hibernate já cria/atualiza as tabelas automaticamente.
-- Use este arquivo apenas se quiser criar as tabelas manualmente no banco reserva_facil.

CREATE TABLE IF NOT EXISTS spotmusic_playlists (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  descricao TEXT NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS spotmusic_musicas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(50) NOT NULL,
  banda VARCHAR(50) NOT NULL,
  nota INT NOT NULL,
  id_spotmusic_playlist_fk BIGINT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_spotmusic_musicas_playlists
    FOREIGN KEY (id_spotmusic_playlist_fk)
    REFERENCES spotmusic_playlists(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
