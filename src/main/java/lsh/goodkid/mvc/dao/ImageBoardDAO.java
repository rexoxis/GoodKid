package lsh.goodkid.mvc.dao;


import java.util.List;
import java.util.Map;

public interface ImageBoardDAO {

    public List<Object> selectBoard(Map<String, String> search);
    public Object selectOneBoard(int boardNum);
    public int countBoard(int boardNum);
    public int insertBoard(Object object);
    public int modifyBoard(Object object);
    public int deleteBoard(int boardNum);
    public void viewsUp(int boardNum);
    public void likesUp(int boardNum);

}
