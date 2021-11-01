package song.sts.jwtauth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import song.sts.jwtauth.entity.MenuCategory;
import song.sts.jwtauth.entity.MenuOneDept;

public interface MenuOneDeptRepository extends JpaRepository<MenuOneDept, Long> {

}
