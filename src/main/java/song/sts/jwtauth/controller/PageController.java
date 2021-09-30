package song.sts.jwtauth.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import song.sts.jwtauth.model.testModel;
import song.sts.jwtauth.model.response.StorageDriveModel;
import song.sts.jwtauth.model.response.StorageItemModel;
import song.sts.jwtauth.model.response.StorageModel;

@Controller
public class PageController {
	@Autowired
	private ObjectMapper mapper;

	@GetMapping({ "", "/", "home", "index", "main" })
	public String home(Model model) {

		String drive, id;

		double totalSize, freeSize, useSize;

		File[] roots = File.listRoots();

		List<StorageDriveModel> storageDriveModels = new ArrayList<StorageDriveModel>();

		StorageModel storageModel = StorageModel.builder().dirves(storageDriveModels).build();

		for (File root : roots) {
			id = UUID.randomUUID().toString();
			drive = root.getAbsolutePath();
			totalSize = root.getTotalSpace() / Math.pow(1024, 3);
			useSize = root.getUsableSpace() / Math.pow(1024, 3);
			freeSize = totalSize - useSize;

			StorageDriveModel storageDriveModel = StorageDriveModel.builder().id(id).drive(drive)
					.totalSize(String.valueOf(totalSize)).useSize(String.valueOf(totalSize))
					.freeSize(String.valueOf(freeSize)).build();

			System.out.println("\n하드 디스크 이름 : " + drive + "\n");
			System.out.println("전체 디스크 용량 : " + totalSize + " GB \n");
			System.out.println("디스크 사용 용량 : " + freeSize + " GB \n");
			System.out.println("디스크 남은 용량 : " + useSize + " GB \n");

			List<StorageItemModel> storageItemModels = getDirInfo(id, drive);

			if (storageItemModels != null) {
				storageDriveModel.setChildItems(storageItemModels);
			}

			storageDriveModels.add(storageDriveModel);
		}

		storageModel.setDirves(storageDriveModels);

		try {
			model.addAttribute("reponseData", mapper.writeValueAsString(storageModel));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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

					// 파일의 정보 가져오기
					System.out.println("file.getName() : " + file.getName()); // 폴더명
					System.out.println("file.isFile() : " + file.isFile()); // 파일인지?
					System.out.println("file.isDirectory() : " + file.isDirectory()); // 폴더인지??
					System.out.println("file.lastModified() : " + file.lastModified()); // 수정된 날짜(틱값)
					System.out.println("file.canRead() : " + file.canRead()); // 읽기 가능??
					System.out.println("file.canWrite() : " + file.canWrite()); // 수정 가능??
					System.out.println("file.isHidden() : " + file.isHidden()); // 숨김파일인지??
					System.out.println("file.length() : " + file.length()); // 파일의 크기 -> Byte 단위.
					System.out.println("file.getPath() : " + file.getPath()); // 파일의 상대경로 ***
					System.out.println("file.getAbsolutePath() : " + file.getAbsolutePath()); // 파일의 절대경로 ***
					System.out.println("file.canExecute() : " + file.canExecute()); // 접근가능?
					System.out.println("file.getParent() : " + file.getParent()); // 부모 폴더 경로

					storageItemModels.add(storageItemModel);
				} else {
					System.out.println("존재하지 않는 폴더입니다.");
				}
			} else {
				System.out.println("폴더가 없습니다.");
			}
		}
		
		return storageItemModels;
	}

	@GetMapping("profile")
	public String profile() {
		return "profile/profile";
	}

	@GetMapping("storage")
	public String storage() {
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
