package song.sts.jwtauth.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import song.sts.jwtauth.entity.profile.Profile;


@Repository
public interface ProfileRepository extends JpaRepository<Profile, Long> {
}
