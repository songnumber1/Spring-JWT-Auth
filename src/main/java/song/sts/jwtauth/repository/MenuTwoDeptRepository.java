package song.sts.jwtauth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import song.sts.jwtauth.entity.MenuTwoDept;

@Repository
public interface MenuTwoDeptRepository extends JpaRepository<MenuTwoDept, Long> {

}
