package com.corvadev.illustsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.corvadev.illustsite.dto.IllustInfoDTO;
import com.corvadev.illustsite.util.DBConnector;

public class IllustInfoDAO {

	public List<IllustInfoDTO> getIllustInfoList() {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<IllustInfoDTO> illustInfoDTOList = new ArrayList<IllustInfoDTO>();
		String sql = "select * from illust_info";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()){
				IllustInfoDTO illustInfoDTO = new IllustInfoDTO();
				illustInfoDTO.setId(resultSet.getInt("id"));
				illustInfoDTO.setIllustId(resultSet.getInt("illust_id"));
				illustInfoDTO.setIllustName(resultSet.getString("illust_name"));
				illustInfoDTO.setIllustDescribe(resultSet.getString("illust_describe"));
				illustInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				illustInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				illustInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				illustInfoDTOList.add(illustInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return illustInfoDTOList;
	}

	public IllustInfoDTO getProductInfo(int productId) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		IllustInfoDTO illustInfoDTO = new IllustInfoDTO();
		String sql = "select * from illust_info where illust_id=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, productId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				illustInfoDTO.setId(resultSet.getInt("id"));
				illustInfoDTO.setIllustId(resultSet.getInt("illust_id"));
				illustInfoDTO.setIllustName(resultSet.getString("illust_name"));
				illustInfoDTO.setIllustDescribe(resultSet.getString("illust_describe"));
				illustInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				illustInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				illustInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return illustInfoDTO;
	}

	public List<IllustInfoDTO> getIllustInfoListByCategoryId(int categoryId, int illustId, int limitOffset,
			int limitRowCount) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<IllustInfoDTO> illustInfoDTOList = new ArrayList<IllustInfoDTO>();
		String sql = "select * from illust_info where category_id=? and product_id not in(?) order by rand() limit ?,?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, categoryId);
			preparedStatement.setInt(2, illustId);
			preparedStatement.setInt(3, limitOffset);
			preparedStatement.setInt(4, limitRowCount);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				IllustInfoDTO illustInfoDTO = new IllustInfoDTO();
				illustInfoDTO.setId(resultSet.getInt("id"));
				illustInfoDTO.setIllustId(resultSet.getInt("illust_id"));
				illustInfoDTO.setIllustName(resultSet.getString("illust_name"));
				illustInfoDTO.setIllustDescribe(resultSet.getString("illust_describe"));
				illustInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				illustInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				illustInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				illustInfoDTOList.add(illustInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return illustInfoDTOList;
	}

	public List<IllustInfoDTO> getIllustInfoListAll(String[] keywordsList) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<IllustInfoDTO> illustInfoDTOList = new ArrayList<IllustInfoDTO>();
		String sql = "select * from product_info where";
		boolean initializeFlag = true;
		for (String keyword : keywordsList) {
			if (initializeFlag) {
				sql += " (illust_name like '%" + keyword + "%' or illust_name_kana like '%" + keyword + "%')";
				initializeFlag = false;
			} else {
				sql += " or (illust_name like '%" + keyword + "%' or illust_name_kana like '%" + keyword + "%')";
			}
		}

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				IllustInfoDTO illustInfoDTO = new IllustInfoDTO();
				illustInfoDTO.setId(resultSet.getInt("id"));
				illustInfoDTO.setIllustId(resultSet.getInt("illust_id"));
				illustInfoDTO.setIllustName(resultSet.getString("illust_name"));
				illustInfoDTO.setIllustDescribe(resultSet.getString("illust_describe"));
				illustInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				illustInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				illustInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				illustInfoDTOList.add(illustInfoDTO);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return illustInfoDTOList;
	}

	public List<IllustInfoDTO> getIllustInfoListByKeywords(String[] keywordsList, String categoryId) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<IllustInfoDTO> illustInfoDTOList = new ArrayList<IllustInfoDTO>();
		String sql = "select * from illust_info where";
		boolean initializeFlag = true;
		for (String keyword : keywordsList) {
			if (initializeFlag) {
				sql += " category_id=" + categoryId + " and ((illust_name like '%" + keyword + "%' or illust_name_kana like '%" + keyword + "%')";
				initializeFlag = false;
			} else {
				sql += " or (illust_name like '%" + keyword + "%' orillust_name_kana like '%" + keyword + "%')";
			}
		}
		sql += ")";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				IllustInfoDTO illustInfoDTO = new IllustInfoDTO();
				illustInfoDTO.setId(resultSet.getInt("id"));
				illustInfoDTO.setIllustId(resultSet.getInt("illust_id"));
				illustInfoDTO.setIllustName(resultSet.getString("illust_name"));
				illustInfoDTO.setIllustDescribe(resultSet.getString("product_describe"));
				illustInfoDTO.setImageFilePath(resultSet.getString("image_file_path"));
				illustInfoDTO.setImageFileName(resultSet.getString("image_file_name"));
				illustInfoDTO.setReleaseCompany(resultSet.getString("release_company"));
				illustInfoDTOList.add(illustInfoDTO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return illustInfoDTOList;
	}
}