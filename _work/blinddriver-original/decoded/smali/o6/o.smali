.class public final Lo6/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lo6/o;


# instance fields
.field public a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "org.apache.commons.collections.functors.InvokerTransformer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.apache.commons.collections.functors.InstantiateTransformer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.apache.commons.collections4.functors.InvokerTransformer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.apache.commons.collections4.functors.InstantiateTransformer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.codehaus.groovy.runtime.ConvertedClosure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.trax.TemplatesImpl"

    const-string v2, "org.apache.xalan.xsltc.trax.TemplatesImpl"

    const-string v3, "org.codehaus.groovy.runtime.MethodClosure"

    const-string v4, "org.springframework.beans.factory.ObjectFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "java.rmi.server.UnicastRemoteObject"

    const-string v2, "org.springframework.beans.factory.config.PropertyPathFactoryBean"

    const-string v3, "com.sun.rowset.JdbcRowSetImpl"

    const-string v4, "java.util.logging.FileHandler"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.tomcat.dbcp.dbcp2.BasicDataSource"

    const-string v2, "com.sun.org.apache.bcel.internal.util.ClassLoader"

    const-string v3, "org.springframework.aop.config.MethodLocatingFactoryBean"

    const-string v4, "org.springframework.beans.factory.config.BeanReferenceFactoryBean"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.ibatis.parsing.XPathParser"

    const-string v2, "jodd.db.connection.DataSourceConnectionProvider"

    const-string v3, "org.hibernate.jmx.StatisticsService"

    const-string v4, "org.apache.ibatis.datasource.jndi.JndiDataSourceFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.slf4j.ext.EventData"

    const-string v2, "flex.messaging.util.concurrent.AsynchBeansWorkManagerExecutor"

    const-string v3, "oracle.jdbc.connector.OracleManagedConnectionFactory"

    const-string v4, "oracle.jdbc.rowset.OracleJDBCRowSet"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.jboss.util.propertyeditor.DocumentEditor"

    const-string v2, "org.apache.openjpa.ee.RegistryManagedRuntime"

    const-string v3, "com.sun.deploy.security.ruleset.DRSHelper"

    const-string v4, "org.apache.axis2.jaxws.spi.handler.HandlerResolverImpl"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.axis2.transport.jms.JMSOutTransportInfo"

    const-string v2, "com.mysql.cj.jdbc.admin.MiniAdmin"

    const-string v3, "org.apache.openjpa.ee.JNDIManagedRuntime"

    const-string v4, "org.apache.openjpa.ee.WASRegistryManagedRuntime"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.jdom2.transform.XSLTransformer"

    const-string v2, "net.sf.ehcache.transaction.manager.DefaultTransactionManagerLookup"

    const-string v3, "ch.qos.logback.core.db.DriverManagerConnectionSource"

    const-string v4, "org.jdom.transform.XSLTransformer"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.zaxxer.hikari.HikariConfig"

    const-string v2, "com.zaxxer.hikari.HikariDataSource"

    const-string v3, "net.sf.ehcache.hibernate.EhcacheJtaTransactionManagerLookup"

    const-string v4, "ch.qos.logback.core.db.JNDIConnectionSource"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.commons.configuration2.JNDIConfiguration"

    const-string v2, "org.apache.xalan.lib.sql.JNDIConnectionPool"

    const-string v3, "org.apache.cxf.jaxrs.provider.XSLTJaxbProvider"

    const-string v4, "org.apache.commons.configuration.JNDIConfiguration"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.commons.dbcp.datasources.PerUserPoolDataSource"

    const-string v2, "org.apache.commons.dbcp.datasources.SharedPoolDataSource"

    const-string v3, "com.sun.org.apache.xalan.internal.lib.sql.JNDIConnectionPool"

    const-string v4, "org.apache.commons.dbcp.cpdsadapter.DriverAdapterCPDS"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.log4j.receivers.db.JNDIConnectionSource"

    const-string v2, "net.sf.ehcache.transaction.manager.selector.GenericJndiSelector"

    const-string v3, "com.p6spy.engine.spy.P6DataSource"

    const-string v4, "org.apache.log4j.receivers.db.DriverManagerConnectionSource"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.hadoop.shaded.com.zaxxer.hikari.HikariConfig"

    const-string v2, "com.ibatis.sqlmap.engine.transaction.jta.JtaTransactionConfig"

    const-string v3, "net.sf.ehcache.transaction.manager.selector.GlassfishSelector"

    const-string v4, "org.apache.xbean.propertyeditor.JndiConverter"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "javax.swing.JEditorPane"

    const-string v2, "javax.swing.JTextPane"

    const-string v3, "br.com.anteros.dbcp.AnterosDBCPConfig"

    const-string v4, "br.com.anteros.dbcp.AnterosDBCPDataSource"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.ignite.cache.jta.jndi.CacheJndiTmLookup"

    const-string v2, "org.apache.ignite.cache.jta.jndi.CacheJndiTmFactory"

    const-string v3, "org.apache.shiro.realm.jndi.JndiRealmFactory"

    const-string v4, "org.apache.shiro.jndi.JndiObjectFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.aries.transaction.jms.RecoverablePooledConnectionFactory"

    const-string v2, "com.caucho.config.types.ResourceRef"

    const-string v3, "org.quartz.utils.JNDIConnectionProvider"

    const-string v4, "org.apache.aries.transaction.jms.internal.XaPooledConnectionFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.activemq.ActiveMQConnectionFactory"

    const-string v2, "org.apache.activemq.ActiveMQXAConnectionFactory"

    const-string v3, "org.aoju.bus.proxy.provider.RmiProvider"

    const-string v4, "org.aoju.bus.proxy.provider.remoting.RmiProvider"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.activemq.pool.JcaPooledConnectionFactory"

    const-string v2, "org.apache.activemq.pool.PooledConnectionFactory"

    const-string v3, "org.apache.activemq.spring.ActiveMQConnectionFactory"

    const-string v4, "org.apache.activemq.spring.ActiveMQXAConnectionFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.activemq.jms.pool.JcaPooledConnectionFactory"

    const-string v2, "org.apache.commons.proxy.provider.remoting.RmiProvider"

    const-string v3, "org.apache.activemq.pool.XaPooledConnectionFactory"

    const-string v4, "org.apache.activemq.jms.pool.XaPooledConnectionFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oadd.org.apache.commons.dbcp.cpdsadapter.DriverAdapterCPDS"

    const-string v2, "oadd.org.apache.commons.dbcp.datasources.PerUserPoolDataSource"

    const-string v3, "org.apache.commons.jelly.impl.Embedded"

    const-string v4, "oadd.org.apache.xalan.lib.sql.JNDIConnectionPool"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oracle.jms.AQjmsXATopicConnectionFactory"

    const-string v2, "oracle.jms.AQjmsTopicConnectionFactory"

    const-string v3, "oadd.org.apache.commons.dbcp.datasources.SharedPoolDataSource"

    const-string v4, "oracle.jms.AQjmsQueueConnectionFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.jsecurity.realm.jndi.JndiRealmFactory"

    const-string v2, "com.pastdev.httpcomponents.configuration.JndiConfiguration"

    const-string v3, "oracle.jms.AQjmsXAQueueConnectionFactory"

    const-string v4, "oracle.jms.AQjmsXAConnectionFactory"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.commons.dbcp2.datasources.PerUserPoolDataSource"

    const-string v2, "org.apache.commons.dbcp2.datasources.SharedPoolDataSource"

    const-string v3, "com.nqadmin.rowset.JdbcRowSetImpl"

    const-string v4, "org.arrah.framework.rdbms.UpdatableJdbcRowsetImpl"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.newrelic.agent.deps.ch.qos.logback.core.db.DriverManagerConnectionSource"

    const-string v2, "org.apache.tomcat.dbcp.dbcp.cpdsadapter.DriverAdapterCPDS"

    const-string v3, "org.apache.commons.dbcp2.cpdsadapter.DriverAdapterCPDS"

    const-string v4, "com.newrelic.agent.deps.ch.qos.logback.core.db.JNDIConnectionSource"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.tomcat.dbcp.dbcp2.cpdsadapter.DriverAdapterCPDS"

    const-string v2, "org.apache.tomcat.dbcp.dbcp2.datasources.PerUserPoolDataSource"

    const-string v3, "org.apache.tomcat.dbcp.dbcp.datasources.PerUserPoolDataSource"

    const-string v4, "org.apache.tomcat.dbcp.dbcp.datasources.SharedPoolDataSource"

    invoke-static {v0, v3, v4, v1, v2}, Lm/a;->w(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.apache.tomcat.dbcp.dbcp2.datasources.SharedPoolDataSource"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oracle.wls.shaded.org.apache.xalan.lib.sql.JNDIConnectionPool"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.docx4j.org.apache.xalan.lib.sql.JNDIConnectionPool"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lo6/o;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lo6/o;->a:Ljava/util/Set;

    sput-object v1, Lo6/o;->b:Lo6/o;

    return-void
.end method
