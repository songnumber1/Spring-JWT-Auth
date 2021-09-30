package song.sts.jwtauth.model.response;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class StorageDriveModel {
	// 아이디
	private String id;
	
	// 이름
	private String drive;
	
	// 전체 용량
	private String totalSize;
	
	// 남은 용량	
	private String freeSize;
	
	// 사용 용량
	private String useSize;

	// 폴더 또는 파일 
	private List<StorageItemModel> childItems;
}
