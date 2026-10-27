.class final Lio/sentry/config/CompositePropertiesProvider;
.super Ljava/lang/Object;
.source "CompositePropertiesProvider.java"

# interfaces
.implements Lio/sentry/config/PropertiesProvider;


# instance fields
.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/config/PropertiesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/config/PropertiesProvider;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Lio/sentry/config/PropertiesProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/sentry/config/CompositePropertiesProvider;->providers:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lio/sentry/config/CompositePropertiesProvider;->providers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/config/PropertiesProvider;

    .line 36
    .local v2, "provider":Lio/sentry/config/PropertiesProvider;
    invoke-interface {v2, p1}, Lio/sentry/config/PropertiesProvider;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    .end local v2    # "provider":Lio/sentry/config/PropertiesProvider;
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lio/sentry/config/CompositePropertiesProvider;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/config/PropertiesProvider;

    .line 24
    .local v1, "provider":Lio/sentry/config/PropertiesProvider;
    invoke-interface {v1, p1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 26
    return-object v2

    .line 28
    .end local v1    # "provider":Lio/sentry/config/PropertiesProvider;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
