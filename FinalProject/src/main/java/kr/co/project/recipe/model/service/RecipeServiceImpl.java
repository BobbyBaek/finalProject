package kr.co.project.recipe.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.project.common.pageing.PageInfo;
import kr.co.project.recipe.model.dao.RecipeDAO;
import kr.co.project.recipe.model.dto.RecipeDTO;

@Service
public class RecipeServiceImpl implements RecipeService{

	// DB 연결에 관련된 템플릿
		@Autowired
		private SqlSessionTemplate sqlSession;
		
		@Autowired 
		private RecipeDAO recipeDao;
	
	
	@Override
	public int selectListCount(RecipeDTO recipe) {
		
		return recipeDao.selectListCount(sqlSession,recipe);
	}

	@Override
	public List<RecipeDTO> selectListAll(PageInfo pi, RecipeDTO recipe) {
		
		return recipeDao.selectListAll(sqlSession,pi,recipe);
	}

	@Override
	public int addRecipe(RecipeDTO recipe) {
		
		int addResult1 = recipeDao.addRecipe(sqlSession,recipe);
		int addResult2 = recipeDao.addRecipe(sqlSession, recipe);
		int addResult3 = recipeDao.addRecipe(sqlSession, recipe);
		if(addResult1 == 1 && addResult2 == 1 && addResult3 ==1) {
			return 1;
		} else {
			return 0;
		}
	}

}
