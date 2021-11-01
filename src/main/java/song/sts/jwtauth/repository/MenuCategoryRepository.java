package song.sts.jwtauth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import song.sts.jwtauth.entity.MenuCategory;

public interface MenuCategoryRepository extends JpaRepository<MenuCategory, Long> {

}
