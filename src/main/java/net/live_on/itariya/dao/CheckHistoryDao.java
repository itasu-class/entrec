package net.live_on.itariya.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import net.live_on.itariya.entity.CheckHistory;

@RequestScoped
public class CheckHistoryDao extends AbstractFacade<CheckHistory> {

	/** エンティティマネージャ */
    @PersistenceContext(unitName = "entrecUnit")
	protected EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CheckHistoryDao() {
        super(CheckHistory.class);
    }

    /**
     * ユーザ情報を取得する
     * @param mail メールアドレス
     * @param password 暗号化済パスワード
     * @return ユーザ情報
     */
    public List<CheckHistory> searchCheckHistory(int year, int month) {
    	List<CheckHistory> ret = null;
    	TypedQuery<CheckHistory> query = em.createQuery(
    			"select c from CheckHistory c where c.checkHistoryPK.checkYear = :checkYear and c.checkHistoryPK.checkMonth = :checkMonth", CheckHistory.class);
    	query.setParameter("checkYear", year);
    	query.setParameter("checkMonth", month);

    	try {
    		ret = query.getResultList();
    	} catch (NoResultException e) {
    		return null;
    	}

//    	for (CheckHistory history : ret) {
//    		em.detach(history);
//    	}

        return ret;
    }
}
