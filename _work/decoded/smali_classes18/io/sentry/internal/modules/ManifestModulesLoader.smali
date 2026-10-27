.class public final Lio/sentry/internal/modules/ManifestModulesLoader;
.super Lio/sentry/internal/modules/ModulesLoader;
.source "ManifestModulesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    }
.end annotation


# instance fields
.field private final NAME_AND_VERSION:Ljava/util/regex/Pattern;

.field private final URL_LIB_PATTERN:Ljava/util/regex/Pattern;

.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 27
    const-class v0, Lio/sentry/internal/modules/ManifestModulesLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/internal/modules/ManifestModulesLoader;-><init>(Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 31
    invoke-direct {p0, p2}, Lio/sentry/internal/modules/ModulesLoader;-><init>(Lio/sentry/ILogger;)V

    .line 22
    const-string v0, ".*/(.+)!/META-INF/MANIFEST.MF"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->URL_LIB_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "(.*?)-(\\d+\\.\\d+.*).jar"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->NAME_AND_VERSION:Ljava/util/regex/Pattern;

    .line 32
    invoke-static {p1}, Lio/sentry/util/ClassLoaderUtils;->classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 33
    return-void
.end method

.method private convertOriginalNameToModule(Ljava/lang/String;)Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    .locals 4
    .param p1, "originalName"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 69
    return-object v0

    .line 72
    :cond_0
    iget-object v1, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->NAME_AND_VERSION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 73
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "moduleName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "moduleVersion":Ljava/lang/String;
    new-instance v3, Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    invoke-direct {v3, v0, v2}, Lio/sentry/internal/modules/ManifestModulesLoader$Module;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 79
    .end local v0    # "moduleName":Ljava/lang/String;
    .end local v2    # "moduleVersion":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private detectModulesViaManifestFiles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/modules/ManifestModulesLoader$Module;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "modules":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/modules/ManifestModulesLoader$Module;>;"
    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "META-INF/MANIFEST.MF"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    .local v1, "manifestUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 54
    .local v2, "manifestUrl":Ljava/net/URL;
    invoke-direct {p0, v2}, Lio/sentry/internal/modules/ManifestModulesLoader;->extractDependencyNameFromUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "originalName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lio/sentry/internal/modules/ManifestModulesLoader;->convertOriginalNameToModule(Ljava/lang/String;)Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    move-result-object v4

    .line 56
    .local v4, "module":Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    if-eqz v4, :cond_0

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v2    # "manifestUrl":Ljava/net/URL;
    .end local v3    # "originalName":Ljava/lang/String;
    .end local v4    # "module":Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    :cond_0
    goto :goto_0

    .line 62
    .end local v1    # "manifestUrls":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_1
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Unable to detect modules via manifest files."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private extractDependencyNameFromUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;

    .line 83
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "urlString":Ljava/lang/String;
    iget-object v1, p0, Lio/sentry/internal/modules/ManifestModulesLoader;->URL_LIB_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 85
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 86
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 89
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method protected loadModules()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v0, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lio/sentry/internal/modules/ManifestModulesLoader;->detectModulesViaManifestFiles()Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, "detectedModules":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/modules/ManifestModulesLoader$Module;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/internal/modules/ManifestModulesLoader$Module;

    .line 41
    .local v3, "module":Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    invoke-static {v3}, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->access$000(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lio/sentry/internal/modules/ManifestModulesLoader$Module;->access$100(Lio/sentry/internal/modules/ManifestModulesLoader$Module;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .end local v3    # "module":Lio/sentry/internal/modules/ManifestModulesLoader$Module;
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method
