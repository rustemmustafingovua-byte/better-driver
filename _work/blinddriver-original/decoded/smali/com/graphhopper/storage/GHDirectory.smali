.class public Lcom/graphhopper/storage/GHDirectory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/Directory;


# instance fields
.field private final defaultTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/DAType;",
            ">;"
        }
    .end annotation
.end field

.field protected final location:Ljava/lang/String;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/DataAccess;",
            ">;"
        }
    .end annotation
.end field

.field private final mmapPreloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final typeFallback:Lcom/graphhopper/storage/DAType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->defaultTypes:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->mmapPreloads:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    iput-object p2, p0, Lcom/graphhopper/storage/GHDirectory;->typeFallback:Lcom/graphhopper/storage/DAType;

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Ljava/io/File;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "file \'"

    const-string v0, "\' exists but is not a directory"

    invoke-static {p2, p0, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private getDefault(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DAType;
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->defaultTypes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_1
    return-object p2
.end method

.method private removeBackingFile(Lcom/graphhopper/storage/DataAccess;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/storage/DataAccess;->getType()Lcom/graphhopper/storage/DAType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    invoke-static {p0, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->removeDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->close()V

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/graphhopper/storage/GHDirectory;->removeBackingFile(Lcom/graphhopper/storage/DataAccess;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->close()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public configure(Ljava/util/LinkedHashMap;)Lcom/graphhopper/storage/Directory;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/storage/Directory;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "preload."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/storage/GHDirectory;->mmapPreloads:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "DataAccess "

    const-string v2, " has an incorrect preload value: "

    invoke-static {v0, p1, v2, v1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/graphhopper/storage/GHDirectory;->defaultTypes:Ljava/util/Map;

    invoke-static {v1}, Lcom/graphhopper/storage/DAType;->fromString(Ljava/lang/String;)Lcom/graphhopper/storage/DAType;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->typeFallback:Lcom/graphhopper/storage/DAType;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/storage/GHDirectory;->getDefault(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DAType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/storage/GHDirectory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/lang/String;I)Lcom/graphhopper/storage/DataAccess;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->typeFallback:Lcom/graphhopper/storage/DAType;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/storage/GHDirectory;->getDefault(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DAType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/graphhopper/storage/GHDirectory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DataAccess;
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphhopper/storage/GHDirectory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;
    .locals 3

    .line 4
    invoke-static {p1}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5
    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    invoke-virtual {p2}, Lcom/graphhopper/storage/DAType;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p2}, Lcom/graphhopper/storage/DAType;->isInteg()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    new-instance p2, Lcom/graphhopper/storage/RAMIntDataAccess;

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    invoke-direct {p2, p1, v0, v2, p3}, Lcom/graphhopper/storage/RAMIntDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/graphhopper/storage/RAMIntDataAccess;

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/graphhopper/storage/RAMIntDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    new-instance p2, Lcom/graphhopper/storage/RAMDataAccess;

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    invoke-direct {p2, p1, v0, v2, p3}, Lcom/graphhopper/storage/RAMDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p2, Lcom/graphhopper/storage/RAMDataAccess;

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/graphhopper/storage/RAMDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/graphhopper/storage/DAType;->isMMap()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    new-instance v0, Lcom/graphhopper/storage/MMapDataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/graphhopper/storage/DAType;->isAllowWrites()Z

    move-result p2

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/graphhopper/storage/MMapDataAccess;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object p2, v0

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 17
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DAType not supported "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "DataAccess "

    const-string p3, " has already been created"

    .line 19
    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Since 0.7 DataAccess objects does no longer accept upper case names"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public create()Lcom/graphhopper/storage/Directory;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/graphhopper/storage/GHDirectory;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p0
.end method

.method public getDAs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/DataAccess;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    return-object p0
.end method

.method public getDefaultType()Lcom/graphhopper/storage/DAType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->typeFallback:Lcom/graphhopper/storage/DAType;

    return-object p0
.end method

.method public getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->typeFallback:Lcom/graphhopper/storage/DAType;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/storage/GHDirectory;->getDefault(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DAType;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/graphhopper/storage/DAType;->isInMemory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM_INT_STORE:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/graphhopper/storage/DAType;->RAM_INT:Lcom/graphhopper/storage/DAType;

    :cond_1
    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getPreload(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->mmapPreloads:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isStoring()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/GHDirectory;->typeFallback:Lcom/graphhopper/storage/DAType;

    invoke-virtual {p0}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result p0

    return p0
.end method

.method public loadMMap()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/storage/DataAccess;

    instance-of v2, v1, Lcom/graphhopper/storage/MMapDataAccess;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/graphhopper/storage/GHDirectory;->getPreload(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    check-cast v1, Lcom/graphhopper/storage/MMapDataAccess;

    invoke-virtual {v1, v2}, Lcom/graphhopper/storage/MMapDataAccess;->load(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/GHDirectory;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/storage/DataAccess;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->close()V

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/storage/GHDirectory;->removeBackingFile(Lcom/graphhopper/storage/DataAccess;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t remove DataAccess: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/storage/GHDirectory;->getLocation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
