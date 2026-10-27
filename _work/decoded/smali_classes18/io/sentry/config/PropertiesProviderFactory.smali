.class public final Lio/sentry/config/PropertiesProviderFactory;
.super Ljava/lang/Object;
.source "PropertiesProviderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lio/sentry/config/PropertiesProvider;
    .locals 8

    .line 32
    new-instance v0, Lio/sentry/SystemOutLogger;

    invoke-direct {v0}, Lio/sentry/SystemOutLogger;-><init>()V

    .line 33
    .local v0, "logger":Lio/sentry/ILogger;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Lio/sentry/config/PropertiesProvider;>;"
    new-instance v2, Lio/sentry/config/SystemPropertyPropertiesProvider;

    invoke-direct {v2}, Lio/sentry/config/SystemPropertyPropertiesProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lio/sentry/config/EnvironmentVariablePropertiesProvider;

    invoke-direct {v2}, Lio/sentry/config/EnvironmentVariablePropertiesProvider;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v2, "sentry.properties.file"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "systemPropertyLocation":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 39
    new-instance v3, Lio/sentry/config/FilesystemPropertiesLoader;

    invoke-direct {v3, v2, v0}, Lio/sentry/config/FilesystemPropertiesLoader;-><init>(Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 40
    invoke-virtual {v3}, Lio/sentry/config/FilesystemPropertiesLoader;->load()Ljava/util/Properties;

    move-result-object v3

    .line 41
    .local v3, "properties":Ljava/util/Properties;
    if-eqz v3, :cond_0

    .line 42
    new-instance v4, Lio/sentry/config/SimplePropertiesProvider;

    invoke-direct {v4, v3}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_0
    const-string v3, "SENTRY_PROPERTIES_FILE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "environmentVariablesLocation":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 48
    new-instance v4, Lio/sentry/config/FilesystemPropertiesLoader;

    invoke-direct {v4, v3, v0}, Lio/sentry/config/FilesystemPropertiesLoader;-><init>(Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 49
    invoke-virtual {v4}, Lio/sentry/config/FilesystemPropertiesLoader;->load()Ljava/util/Properties;

    move-result-object v4

    .line 50
    .local v4, "properties":Ljava/util/Properties;
    if-eqz v4, :cond_1

    .line 51
    new-instance v5, Lio/sentry/config/SimplePropertiesProvider;

    invoke-direct {v5, v4}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v4    # "properties":Ljava/util/Properties;
    :cond_1
    new-instance v4, Lio/sentry/config/ClasspathPropertiesLoader;

    invoke-direct {v4, v0}, Lio/sentry/config/ClasspathPropertiesLoader;-><init>(Lio/sentry/ILogger;)V

    invoke-virtual {v4}, Lio/sentry/config/ClasspathPropertiesLoader;->load()Ljava/util/Properties;

    move-result-object v4

    .line 56
    .restart local v4    # "properties":Ljava/util/Properties;
    if-eqz v4, :cond_2

    .line 57
    new-instance v5, Lio/sentry/config/SimplePropertiesProvider;

    invoke-direct {v5, v4}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    new-instance v5, Lio/sentry/config/FilesystemPropertiesLoader;

    const-string v6, "sentry.properties"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v7}, Lio/sentry/config/FilesystemPropertiesLoader;-><init>(Ljava/lang/String;Lio/sentry/ILogger;Z)V

    .line 61
    invoke-virtual {v5}, Lio/sentry/config/FilesystemPropertiesLoader;->load()Ljava/util/Properties;

    move-result-object v5

    .line 62
    .local v5, "runDirectoryProperties":Ljava/util/Properties;
    if-eqz v5, :cond_3

    .line 63
    new-instance v6, Lio/sentry/config/SimplePropertiesProvider;

    invoke-direct {v6, v5}, Lio/sentry/config/SimplePropertiesProvider;-><init>(Ljava/util/Properties;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    new-instance v6, Lio/sentry/config/CompositePropertiesProvider;

    invoke-direct {v6, v1}, Lio/sentry/config/CompositePropertiesProvider;-><init>(Ljava/util/List;)V

    return-object v6
.end method
