package song.sts.jwtauth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import song.sts.jwtauth.entity.setting.UserRole;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, Long> {
    @Query(value = "select userrole from UserRole userrole where userrole.role = upper('ADMIN')")
    UserRole findAdmin();
}
