package song.sts.jwtauth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import song.sts.jwtauth.entity.menu.MenuOneDept;

@Repository
public interface MenuOneDeptRepository extends JpaRepository<MenuOneDept, Long> {

}
