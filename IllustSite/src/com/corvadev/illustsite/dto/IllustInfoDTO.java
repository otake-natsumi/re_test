package com.corvadev.illustsite.dto;

public class IllustInfoDTO{
		private int id;
		private int illustId;
		private String illustName;
		private String illustDescribe;
		private String imageFilePath;
		private String imageFileName;
		private String releaseCompany;

		public int getId(){
			return id;
		}
		public void setId(int id){
			this.id =  id;
		}

		public int getIllustId(){
			return illustId;
		}
		public void setIllustId(int illustId){
			this.illustId =  illustId;
		}

		public String getIllustName(){
			return illustName;
		}
		public void setIllustName(String illustName){
			this.illustName =  illustName;
		}

		public String getIllustDescribe(){
			return illustDescribe;
		}
		public void setIllustDescribe(String illustDescribe){
			this.illustDescribe = illustDescribe;
		}

		public String getImageFilePath() {
			return imageFilePath;
		}
		public void setImageFilePath(String imageFilePath) {
			this.imageFilePath = imageFilePath;
		}

		public String getImageFileName() {
			return imageFileName;
		}
		public void setImageFileName(String imageFileName) {
			this.imageFileName = imageFileName;
		}

		public String getReleaseCompany() {
			return releaseCompany;
		}
		public void setReleaseCompany(String releaseCompany) {
			this.releaseCompany = releaseCompany;
		}
	}
