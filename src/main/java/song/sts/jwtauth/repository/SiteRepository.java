package song.sts.jwtauth.repository;

import java.util.List;

//import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
// import org.springframework.data.jpa.repository.Query;
// import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import song.sts.jwtauth.entity.data.SiteItem;


@Repository
public interface SiteRepository extends JpaRepository<SiteItem, Long> {
    @Query("SELECT u FROM SiteItem u WHERE u.siteName Like %:siteName%")
    public List<SiteItem> findSiteNameSearch(@Param(value = "siteName") String siteName);
}
