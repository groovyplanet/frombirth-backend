package com.choongang.frombirth_backend.service;

import com.choongang.frombirth_backend.model.dto.ChildrenDTO;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ChildrenService {
    List<ChildrenDTO> getAllChildren(Integer userId);
    ChildrenDTO getChildById(Integer childId);
    ChildrenDTO addChild(ChildrenDTO childrenDTO, MultipartFile profile) throws IOException;
    void updateChild(ChildrenDTO childrenDTO);
    void deleteChild(Integer childId);
}
