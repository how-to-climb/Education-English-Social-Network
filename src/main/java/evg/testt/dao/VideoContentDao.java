package evg.testt.dao;

import evg.testt.model.Contact;
import evg.testt.model.VideoContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * Created by alex on 31.01.16.
 */
public class VideoContentDao{

    @Autowired
    private MongoOperations mongoOperations;

    public void save(Contact contact) {
        mongoOperations.save(contact);
    }

    public VideoContent get(Long id) {
        return mongoOperations.findOne(Query.query(Criteria.where("id").is(id)), VideoContent.class);
    }

    public List<VideoContent> getAll() {
        return mongoOperations.findAll(VideoContent.class);
    }

    public void remove(Long id) {
        mongoOperations.remove(Query.query(Criteria.where("id").is(id)), VideoContent.class);
    }

}


