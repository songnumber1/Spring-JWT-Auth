package song.sts.jwtauth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import song.sts.jwtauth.entity.MenuCategory;

@Repository
public interface MenuCategoryRepository extends JpaRepository<MenuCategory, Long> {
    @Query(value = "select menucategory from MenuCategory menucategory where menucategory.active = 1")
    List<MenuCategory> findActiveAll();
}
