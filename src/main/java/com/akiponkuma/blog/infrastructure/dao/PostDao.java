package com.akiponkuma.blog.infrastructure.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.akiponkuma.blog.domain.model.entity.Post;

public interface PostDao extends JpaRepository<Post, Integer> {

}
