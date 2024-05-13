package com.lxqnsys.doc.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lxqnsys.doc.dao.entity.DocFileContent;
import com.lxqnsys.doc.dao.mapper.DocFileContentMapper;
import com.lxqnsys.doc.service.IDocFileContentService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 文档-文件内容 服务实现类
 * </p>
 *
 * @author author
 * @since 2024-05-13
 */
@Service
public class DocFileContentServiceImpl extends ServiceImpl<DocFileContentMapper, DocFileContent> implements
    IDocFileContentService {

}
