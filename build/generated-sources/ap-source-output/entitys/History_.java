package entitys;

import entitys.Account;
import entitys.Company;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-03-30T09:56:24")
@StaticMetamodel(History.class)
public class History_ { 

    public static volatile SingularAttribute<History, Company> company;
    public static volatile SingularAttribute<History, Long> id;
    public static volatile SingularAttribute<History, Date> paymentDate;
    public static volatile SingularAttribute<History, Date> takeOn;
    public static volatile SingularAttribute<History, Account> account;

}