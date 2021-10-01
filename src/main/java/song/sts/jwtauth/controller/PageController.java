package song.sts.jwtauth.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import song.sts.jwtauth.model.testModel;
import song.sts.jwtauth.model.response.StorageItemModel;

@Controller
public class PageController {

	@GetMapping({ "", "/", "home", "index", "main" })
	public String home() {
		return "index";
	}

	private List<StorageItemModel> getDirInfo(String parentId, String path) {
		List<StorageItemModel> storageItemModels = new ArrayList<StorageItemModel>();
		
		File[] files = new File(path).listFiles();

		for (File file : files) {
			if (file.isDirectory()) {
				if (file.exists()) {
					StorageItemModel storageItemModel = StorageItemModel.builder().id(UUID.randomUUID().toString())
							.parendId(parentId).name(file.getName()).isDiretory(file.isDirectory())
							.lastModified(file.lastModified()).iscanRead(file.canRead()).iscanWrite(file.canWrite())
							.isHidden(file.isHidden()).length(file.length()).path(file.getPath())
							.absolutePath(file.getAbsolutePath()).parent(file.getParent()).build();

					storageItemModels.add(storageItemModel);
				} else {
					System.out.println("존재하지 않는 폴더입니다.");
				}
			}
		}
		
		return storageItemModels;
	}

	@GetMapping("profile")
	public String profile() {
		return "profile/profile";
	}

	@GetMapping("storage")
	public String storage(Model model) {
		String drive, id;

		double totalSize, freeSize, useSize;

		File[] roots = File.listRoots();

		JSONArray jsonArr1 = new JSONArray();
		
		for (File root : roots) {
			id = UUID.randomUUID().toString();
			drive = root.getAbsolutePath();
			totalSize = root.getTotalSpace() / Math.pow(1024, 3);
			useSize = root.getUsableSpace() / Math.pow(1024, 3);
			freeSize = totalSize - useSize;
			
			JSONObject jsonObj1 = new JSONObject();
			
	        jsonObj1.put("id", id);
	        jsonObj1.put("drive", drive);
	        jsonObj1.put("totalSize", totalSize);
	        jsonObj1.put("useSize", useSize);
	        jsonObj1.put("freeSize", freeSize);
	        List<StorageItemModel> storageItemModels = getDirInfo(id, drive);
	        jsonObj1.put("node", storageItemModels);
	        jsonArr1.put(jsonObj1);
		}
		
		ArrayList<JSONObject> arrayJson = new ArrayList<JSONObject>();
	    
	    for (int k = 0; k < jsonArr1.length(); k++) {
	        JSONObject tempJson = jsonArr1.getJSONObject(k);
	        arrayJson.add(tempJson);
	    }
	    
	    model.addAttribute("reponseData", arrayJson);
		
		return "storage/storage";
	}

	@GetMapping("csharp")
	public String csharp(Model model) {
		testModel testModel1 = testModel.builder().title("Title1").content("Content1").writeDate("WriteData1").build();
		testModel testModel2 = testModel.builder().title("Title2").content("Content2").writeDate("WriteData2").build();
		testModel testModel3 = testModel.builder().title("Title3").content("Content3").writeDate("WriteData3").build();
		testModel testModel4 = testModel.builder().title("Title4").content("Content4").writeDate("WriteData4").build();

		List<testModel> list = new ArrayList<testModel>();
		list.add(testModel1);
		list.add(testModel2);
		list.add(testModel3);
		list.add(testModel4);

		model.addAttribute("items", list);
		return "skill/csharp";
	}

	@GetMapping("skill/add")
	public String skillAdd() {
		return "skill/dataAddTemplate";
	}
}
