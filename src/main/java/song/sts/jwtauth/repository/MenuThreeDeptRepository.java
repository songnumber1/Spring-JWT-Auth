package song.sts.jwtauth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import song.sts.jwtauth.entity.MenuThreeDept;

@Repository
public interface MenuThreeDeptRepository extends JpaRepository<MenuThreeDept, Long> {

}
