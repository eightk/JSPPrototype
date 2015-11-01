/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.dao;

import java.util.List;
import javabean.dao.demo.vo.Emp;

/**
 *
 * @author hp
 */
public interface IEmpDAO {
    public boolean doCreate(Emp emp) throws Exception;
    
    public List<Emp> loadAll() throws Exception;
    
    public Emp loadByKey(Integer empno) throws Exception;
}
