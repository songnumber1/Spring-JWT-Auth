package song.sts.jwtauth.restcontroller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import song.sts.jwtauth.model.response.StorageItemModel;
import song.sts.jwtauth.util.ResponseData;

@RestController
public class StorageRestController {
	@PostMapping("/storage/getdirinfo")
	public ResponseEntity<?> getDirInfo(String parentId, String path) {
		List<StorageItemModel> storageItemModels = new ArrayList<StorageItemModel>();
		
		File[] files = new File(path).listFiles();

		for (File file : files) {
			if (file.isDirectory()) {
				if (file.exists()) {
					StorageItemModel storageItemModel = StorageItemModel.builder().id(UUID.randomUUID().toString())
							.parendId(parentId).text(file.getName()).isDiretory(file.isDirectory())
							.lastModified(file.lastModified()).iscanRead(file.canRead()).iscanWrite(file.canWrite())
							.isHidden(file.isHidden()).length(file.length()).path(file.getPath())
							.absolutePath(file.getAbsolutePath()).parent(file.getParent()).build();

					storageItemModels.add(storageItemModel);
				} else {
					System.out.println("존재하지 않는 폴더입니다.");
				}
			}
		}
		
		JSONObject jsonObjDrive = new JSONObject();
		
        jsonObjDrive.put("nodes", storageItemModels);
        
        return ResponseData.CreateReponse(HttpStatus.OK.value(), "OK", jsonObjDrive.toString(), null);
	}
}
