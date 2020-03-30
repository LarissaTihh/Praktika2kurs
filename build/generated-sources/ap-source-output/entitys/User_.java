package entitys;

import entitys.Company;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-03-30T09:56:24")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Company> company;
    public static volatile SingularAttribute<User, Long> id;
    public static volatile SingularAttribute<User, String> login;
    public static volatile SingularAttribute<User, String> salts;

}