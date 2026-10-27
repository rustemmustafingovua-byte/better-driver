.class public final Lio/sentry/DataCollection;
.super Ljava/lang/Object;
.source "DataCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/DataCollection$HttpHeaders;,
        Lio/sentry/DataCollection$Graphql;
    }
.end annotation


# instance fields
.field private cookies:Lio/sentry/KeyValueCollectionBehavior;

.field private databaseQueryData:Ljava/lang/Boolean;

.field private filePaths:Ljava/lang/Boolean;

.field private forceDataCollection:Z

.field private final graphql:Lio/sentry/DataCollection$Graphql;

.field private httpBodies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/sentry/HttpBodyType;",
            ">;"
        }
    .end annotation
.end field

.field private final httpHeaders:Lio/sentry/DataCollection$HttpHeaders;

.field private urlQueryParams:Lio/sentry/KeyValueCollectionBehavior;

.field private userInfo:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lio/sentry/DataCollection$HttpHeaders;

    invoke-direct {v0}, Lio/sentry/DataCollection$HttpHeaders;-><init>()V

    iput-object v0, p0, Lio/sentry/DataCollection;->httpHeaders:Lio/sentry/DataCollection$HttpHeaders;

    .line 22
    new-instance v0, Lio/sentry/DataCollection$Graphql;

    invoke-direct {v0}, Lio/sentry/DataCollection$Graphql;-><init>()V

    iput-object v0, p0, Lio/sentry/DataCollection;->graphql:Lio/sentry/DataCollection$Graphql;

    .line 24
    return-void
.end method


# virtual methods
.method public forceDataCollection()V
    .locals 1

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/DataCollection;->forceDataCollection:Z

    .line 29
    return-void
.end method

.method public getCookies()Lio/sentry/KeyValueCollectionBehavior;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/DataCollection;->cookies:Lio/sentry/KeyValueCollectionBehavior;

    return-object v0
.end method

.method public getDatabaseQueryData()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/sentry/DataCollection;->databaseQueryData:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFilePaths()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/sentry/DataCollection;->filePaths:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGraphql()Lio/sentry/DataCollection$Graphql;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/sentry/DataCollection;->graphql:Lio/sentry/DataCollection$Graphql;

    return-object v0
.end method

.method public getHttpBodies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/HttpBodyType;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/sentry/DataCollection;->httpBodies:Ljava/util/Set;

    return-object v0
.end method

.method public getHttpHeaders()Lio/sentry/DataCollection$HttpHeaders;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/sentry/DataCollection;->httpHeaders:Lio/sentry/DataCollection$HttpHeaders;

    return-object v0
.end method

.method public getUrlQueryParams()Lio/sentry/KeyValueCollectionBehavior;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/sentry/DataCollection;->urlQueryParams:Lio/sentry/KeyValueCollectionBehavior;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/Boolean;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/sentry/DataCollection;->userInfo:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isExplicitlyConfigured()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lio/sentry/DataCollection;->forceDataCollection:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->userInfo:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->cookies:Lio/sentry/KeyValueCollectionBehavior;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->urlQueryParams:Lio/sentry/KeyValueCollectionBehavior;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->httpBodies:Ljava/util/Set;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->databaseQueryData:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->filePaths:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->httpHeaders:Lio/sentry/DataCollection$HttpHeaders;

    .line 101
    invoke-static {v0}, Lio/sentry/DataCollection$HttpHeaders;->access$000(Lio/sentry/DataCollection$HttpHeaders;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DataCollection;->graphql:Lio/sentry/DataCollection$Graphql;

    .line 102
    invoke-static {v0}, Lio/sentry/DataCollection$Graphql;->access$100(Lio/sentry/DataCollection$Graphql;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 94
    :goto_1
    return v0
.end method

.method public setCookies(Lio/sentry/KeyValueCollectionBehavior;)V
    .locals 0
    .param p1, "cookies"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 44
    iput-object p1, p0, Lio/sentry/DataCollection;->cookies:Lio/sentry/KeyValueCollectionBehavior;

    .line 45
    return-void
.end method

.method public setDatabaseQueryData(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "databaseQueryData"    # Ljava/lang/Boolean;

    .line 73
    iput-object p1, p0, Lio/sentry/DataCollection;->databaseQueryData:Ljava/lang/Boolean;

    .line 74
    return-void
.end method

.method public setFilePaths(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "filePaths"    # Ljava/lang/Boolean;

    .line 81
    iput-object p1, p0, Lio/sentry/DataCollection;->filePaths:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public setHttpBodies(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/sentry/HttpBodyType;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "httpBodies":Ljava/util/Set;, "Ljava/util/Set<Lio/sentry/HttpBodyType;>;"
    nop

    .line 61
    if-nez p1, :cond_0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/sentry/DataCollection;->httpBodies:Ljava/util/Set;

    .line 66
    return-void
.end method

.method public setUrlQueryParams(Lio/sentry/KeyValueCollectionBehavior;)V
    .locals 0
    .param p1, "urlQueryParams"    # Lio/sentry/KeyValueCollectionBehavior;

    .line 52
    iput-object p1, p0, Lio/sentry/DataCollection;->urlQueryParams:Lio/sentry/KeyValueCollectionBehavior;

    .line 53
    return-void
.end method

.method public setUserInfo(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "userInfo"    # Ljava/lang/Boolean;

    .line 36
    iput-object p1, p0, Lio/sentry/DataCollection;->userInfo:Ljava/lang/Boolean;

    .line 37
    return-void
.end method
