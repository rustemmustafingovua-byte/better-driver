.class public final Lio/sentry/spotlight/SpotlightIntegration;
.super Ljava/lang/Object;
.source "SpotlightIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
.implements Ljava/io/Closeable;


# instance fields
.field private executorService:Lio/sentry/ISentryExecutorService;

.field private logger:Lio/sentry/ILogger;

.field private options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v0

    .line 37
    const-string v1, "maven:io.sentry:sentry-spotlight"

    const-string v2, "8.61.1"

    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 42
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    return-void
.end method

.method private closeAndDisconnect(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 137
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    throw v0

    .line 138
    :catch_0
    move-exception v0

    .line 141
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    nop

    .line 143
    return-void
.end method

.method private createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    nop

    .line 112
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 114
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 115
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 116
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 119
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "Content-Type"

    const-string v2, "application/x-sentry-envelope"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 127
    return-object v0
.end method

.method private sendEnvelope(Lio/sentry/SentryEnvelope;)V
    .locals 8
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 74
    const-string v0, "Envelope sent to spotlight: %d"

    :try_start_0
    iget-object v1, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lio/sentry/spotlight/SpotlightIntegration;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "spotlightConnectionUrl":Ljava/lang/String;
    invoke-direct {p0, v1}, Lio/sentry/spotlight/SpotlightIntegration;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 81
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 82
    .local v4, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    iget-object v5, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v5

    invoke-interface {v5, p1, v4}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 87
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 88
    .local v3, "responseCode":I
    iget-object v4, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v0, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 80
    .local v3, "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v5

    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "spotlightConnectionUrl":Ljava/lang/String;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :goto_0
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "spotlightConnectionUrl":Ljava/lang/String;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "spotlightConnectionUrl":Ljava/lang/String;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :cond_1
    :goto_1
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 83
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "spotlightConnectionUrl":Ljava/lang/String;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :catchall_4
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_b
    iget-object v4, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "An exception occurred while submitting the envelope to the Sentry server."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 87
    .end local v3    # "e":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 88
    .local v3, "responseCode":I
    iget-object v4, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v0, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_2
    invoke-direct {p0, v2}, Lio/sentry/spotlight/SpotlightIntegration;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V

    .line 90
    .end local v3    # "responseCode":I
    nop

    .line 93
    .end local v1    # "spotlightConnectionUrl":Ljava/lang/String;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_3

    .line 87
    .restart local v1    # "spotlightConnectionUrl":Ljava/lang/String;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    :catchall_5
    move-exception v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 88
    .local v4, "responseCode":I
    iget-object v5, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v0, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0, v2}, Lio/sentry/spotlight/SpotlightIntegration;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V

    .line 90
    .end local v4    # "responseCode":I
    nop

    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    throw v3

    .line 75
    .end local v1    # "spotlightConnectionUrl":Ljava/lang/String;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SentryOptions are required to send envelopes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 91
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "An exception occurred while creating the connection to spotlight."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 148
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 149
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions;->setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V

    .line 151
    :cond_0
    return-void
.end method

.method public execute(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 4
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 66
    :try_start_0
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    new-instance v1, Lio/sentry/spotlight/SpotlightIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/spotlight/SpotlightIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/spotlight/SpotlightIntegration;Lio/sentry/SentryEnvelope;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v1, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Spotlight envelope submission rejected."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const-string v0, "http://10.0.2.2:8969/stream"

    return-object v0

    .line 105
    :cond_1
    const-string v0, "http://localhost:8969/stream"

    return-object v0
.end method

.method synthetic lambda$execute$0$io-sentry-spotlight-SpotlightIntegration(Lio/sentry/SentryEnvelope;)V
    .locals 0
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 66
    invoke-direct {p0, p1}, Lio/sentry/spotlight/SpotlightIntegration;->sendEnvelope(Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method public register(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 46
    iput-object p2, p0, Lio/sentry/spotlight/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    .line 47
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 49
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableSpotlight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lio/sentry/SentryExecutorService;

    invoke-direct {v0, p2}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    .line 51
    invoke-virtual {p2, p0}, Lio/sentry/SentryOptions;->setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V

    .line 52
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "SpotlightIntegration enabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const-string v0, "Spotlight"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lio/sentry/spotlight/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "SpotlightIntegration is not enabled. BeforeEnvelopeCallback is already set or spotlight is not enabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return-void
.end method
