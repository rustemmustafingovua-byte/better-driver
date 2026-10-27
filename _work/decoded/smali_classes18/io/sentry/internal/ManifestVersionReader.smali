.class public final Lio/sentry/internal/ManifestVersionReader;
.super Ljava/lang/Object;
.source "ManifestVersionReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;
    }
.end annotation


# static fields
.field private static volatile INSTANCE:Lio/sentry/internal/ManifestVersionReader;

.field private static final staticLock:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field private volatile hasManifestBeenRead:Z

.field private lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    sput-object v0, Lio/sentry/internal/ManifestVersionReader;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    .line 23
    new-instance v0, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-direct {v0}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;-><init>()V

    iput-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    .line 24
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 38
    return-void
.end method

.method public static getInstance()Lio/sentry/internal/ManifestVersionReader;
    .locals 3

    .line 27
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;

    if-nez v0, :cond_2

    .line 28
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 29
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lio/sentry/internal/ManifestVersionReader;

    invoke-direct {v1}, Lio/sentry/internal/ManifestVersionReader;-><init>()V

    sput-object v1, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 28
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 35
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    sget-object v0, Lio/sentry/internal/ManifestVersionReader;->INSTANCE:Lio/sentry/internal/ManifestVersionReader;

    return-object v0
.end method


# virtual methods
.method public readManifestFiles()V
    .locals 15

    .line 49
    iget-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/ManifestVersionReader;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 54
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    iget-boolean v2, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_2

    .line 118
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 121
    :cond_1
    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    .line 55
    return-void

    .line 58
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 59
    .local v2, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_a

    .line 61
    :try_start_4
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 63
    .local v3, "connection":Ljava/net/URLConnection;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 65
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 66
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_5
    new-instance v5, Ljava/util/jar/Manifest;

    invoke-direct {v5, v4}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v5, "manifest":Ljava/util/jar/Manifest;
    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    .line 68
    .local v6, "mainAttributes":Ljava/util/jar/Attributes;
    if-eqz v6, :cond_7

    .line 69
    const-string v7, "Sentry-Opentelemetry-SDK-Name"

    .line 70
    invoke-virtual {v6, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "name":Ljava/lang/String;
    const-string v8, "Implementation-Version"

    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "version":Ljava/lang/String;
    const-string v9, "Sentry-SDK-Name"

    invoke-virtual {v6, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, "sdkName":Ljava/lang/String;
    const-string v10, "Sentry-SDK-Package-Name"

    .line 74
    invoke-virtual {v6, v10}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 77
    iget-object v11, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-static {v11, v7}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->access$102(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v11, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-static {v11, v8}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->access$002(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    const-string v11, "Sentry-Opentelemetry-Version-Name"

    .line 80
    invoke-virtual {v6, v11}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "otelVersion":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 82
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v12

    const-string v13, "maven:io.opentelemetry:opentelemetry-sdk"

    .line 83
    invoke-virtual {v12, v13, v11}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v12

    const-string v13, "OpenTelemetry"

    invoke-virtual {v12, v13}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 86
    :cond_3
    const-string v12, "Sentry-Opentelemetry-Javaagent-Version-Name"

    .line 87
    invoke-virtual {v6, v12}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "otelJavaagentVersion":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 89
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v13

    const-string v14, "maven:io.opentelemetry.javaagent:opentelemetry-javaagent"

    .line 90
    invoke-virtual {v13, v14, v12}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v13

    const-string v14, "OpenTelemetry-Agent"

    .line 94
    invoke-virtual {v13, v14}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 96
    :cond_4
    const-string v13, "sentry.java.opentelemetry.agentless"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 97
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v13

    const-string v14, "OpenTelemetry-Agentless"

    .line 98
    invoke-virtual {v13, v14}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 100
    :cond_5
    const-string v13, "sentry.java.opentelemetry.agentless-spring"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 101
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v13

    const-string v14, "OpenTelemetry-Agentless-Spring"

    .line 102
    invoke-virtual {v13, v14}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 106
    .end local v11    # "otelVersion":Ljava/lang/String;
    .end local v12    # "otelJavaagentVersion":Ljava/lang/String;
    :cond_6
    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    if-eqz v10, :cond_7

    const-string v11, "sentry.java"

    .line 109
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 110
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v11

    invoke-virtual {v11, v10, v8}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    .end local v5    # "manifest":Ljava/util/jar/Manifest;
    .end local v6    # "mainAttributes":Ljava/util/jar/Attributes;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "sdkName":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_9

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 65
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_8
    :goto_1
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 114
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_0
    move-exception v3

    .line 116
    :cond_9
    :goto_2
    goto/16 :goto_0

    .line 118
    .end local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_a
    if-eqz v1, :cond_c

    :try_start_9
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    .line 53
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_b

    :try_start_a
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    :try_start_b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 121
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_4
    move-exception v1

    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    .line 122
    throw v1

    .line 118
    :catch_1
    move-exception v1

    .line 121
    :cond_c
    :goto_4
    iput-boolean v0, p0, Lio/sentry/internal/ManifestVersionReader;->hasManifestBeenRead:Z

    .line 122
    nop

    .line 123
    return-void
.end method

.method public readOpenTelemetryVersion()Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lio/sentry/internal/ManifestVersionReader;->readManifestFiles()V

    .line 42
    iget-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    invoke-static {v0}, Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;->access$000(Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lio/sentry/internal/ManifestVersionReader;->versionInfo:Lio/sentry/internal/ManifestVersionReader$VersionInfoHolder;

    return-object v0
.end method
