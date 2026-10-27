.class public final Lio/sentry/util/GraphqlUtils;
.super Ljava/lang/Object;
.source "GraphqlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filterRequest(Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 2
    .param p1, "includeDocument"    # Z
    .param p2, "includeVariables"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    .local p0, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 71
    .local v0, "filtered":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 72
    const-string v1, "query"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    if-nez p2, :cond_1

    .line 75
    const-string v1, "variables"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1
    return-object v0
.end method

.method public static filterRequestBody(Ljava/lang/String;Lio/sentry/SentryOptions;)Ljava/lang/String;
    .locals 11
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 25
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDataCollectionResolver()Lio/sentry/DataCollectionResolver;

    move-result-object v0

    .line 26
    .local v0, "resolver":Lio/sentry/DataCollectionResolver;
    invoke-virtual {v0}, Lio/sentry/DataCollectionResolver;->isGraphqlDocumentWithLegacyAlways()Z

    move-result v1

    .line 27
    .local v1, "includeDocument":Z
    invoke-virtual {v0}, Lio/sentry/DataCollectionResolver;->isGraphqlVariablesWithLegacyAlways()Z

    move-result v2

    .line 29
    .local v2, "includeVariables":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 30
    return-object p0

    .line 32
    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 33
    return-object v3

    .line 36
    :cond_1
    :try_start_0
    new-instance v4, Lio/sentry/JsonObjectReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v4, "reader":Lio/sentry/JsonObjectReader;
    :try_start_1
    invoke-virtual {v4}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v5

    .line 39
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 41
    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    .line 42
    .local v6, "requestBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v6, v1, v2}, Lio/sentry/util/GraphqlUtils;->filterRequest(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v7

    .line 43
    .end local v6    # "requestBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v7, "filtered":Ljava/lang/Object;
    goto :goto_1

    .end local v7    # "filtered":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_5

    .line 44
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v6, "filteredBatch":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object v7, v5

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 46
    .local v8, "item":Ljava/lang/Object;
    instance-of v9, v8, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_3

    .line 47
    nop

    .line 60
    :try_start_2
    invoke-virtual {v4}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    return-object v3

    .line 50
    :cond_3
    :try_start_3
    move-object v9, v8

    check-cast v9, Ljava/util/Map;

    .line 51
    .local v9, "requestBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v9, v1, v2}, Lio/sentry/util/GraphqlUtils;->filterRequest(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    nop

    .end local v8    # "item":Ljava/lang/Object;
    .end local v9    # "requestBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 53
    :cond_4
    move-object v7, v6

    .line 54
    .end local v6    # "filteredBatch":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v7    # "filtered":Ljava/lang/Object;
    nop

    .line 57
    :goto_1
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 58
    .local v6, "writer":Ljava/io/StringWriter;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 59
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    invoke-virtual {v4}, Lio/sentry/JsonObjectReader;->close()V

    .line 59
    return-object v8

    .line 55
    .end local v6    # "writer":Ljava/io/StringWriter;
    .end local v7    # "filtered":Ljava/lang/Object;
    :cond_5
    nop

    .line 60
    invoke-virtual {v4}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    return-object v3

    .line 36
    .end local v5    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Lio/sentry/DataCollectionResolver;
    .end local v1    # "includeDocument":Z
    .end local v2    # "includeVariables":Z
    .end local p0    # "body":Ljava/lang/String;
    .end local p1    # "options":Lio/sentry/SentryOptions;
    :goto_2
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    .line 60
    .end local v4    # "reader":Lio/sentry/JsonObjectReader;
    .restart local v0    # "resolver":Lio/sentry/DataCollectionResolver;
    .restart local v1    # "includeDocument":Z
    .restart local v2    # "includeVariables":Z
    .restart local p0    # "body":Ljava/lang/String;
    .restart local p1    # "options":Lio/sentry/SentryOptions;
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Failed to filter GraphQL request body."

    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-object v3
.end method
