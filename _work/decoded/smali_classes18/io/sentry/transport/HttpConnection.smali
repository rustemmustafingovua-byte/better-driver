.class final Lio/sentry/transport/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final proxy:Ljava/net/Proxy;

.field private final rateLimiter:Lio/sentry/transport/RateLimiter;

.field private final requestDetails:Lio/sentry/RequestDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/transport/HttpConnection;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/AuthenticatorWrapper;Lio/sentry/transport/RateLimiter;)V
    .locals 4
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "requestDetails"    # Lio/sentry/RequestDetails;
    .param p3, "authenticatorWrapper"    # Lio/sentry/transport/AuthenticatorWrapper;
    .param p4, "rateLimiter"    # Lio/sentry/transport/RateLimiter;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lio/sentry/transport/HttpConnection;->requestDetails:Lio/sentry/RequestDetails;

    .line 59
    iput-object p1, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    .line 60
    iput-object p4, p0, Lio/sentry/transport/HttpConnection;->rateLimiter:Lio/sentry/transport/RateLimiter;

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/transport/HttpConnection;->resolveProxy(Lio/sentry/SentryOptions$Proxy;)Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/transport/HttpConnection;->proxy:Ljava/net/Proxy;

    .line 64
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Proxy;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "proxyUser":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Proxy;->getPass()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "proxyPassword":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions$Proxy;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "proxyHost":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 69
    new-instance v3, Lio/sentry/transport/ProxyAuthenticator;

    invoke-direct {v3, v0, v1, v2}, Lio/sentry/transport/ProxyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Lio/sentry/transport/AuthenticatorWrapper;->setDefault(Ljava/net/Authenticator;)V

    .line 73
    .end local v0    # "proxyUser":Ljava/lang/String;
    .end local v1    # "proxyPassword":Ljava/lang/String;
    .end local v2    # "proxyHost":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/RateLimiter;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "requestDetails"    # Lio/sentry/RequestDetails;
    .param p3, "rateLimiter"    # Lio/sentry/transport/RateLimiter;

    .line 50
    invoke-static {}, Lio/sentry/transport/AuthenticatorWrapper;->getInstance()Lio/sentry/transport/AuthenticatorWrapper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/sentry/transport/HttpConnection;-><init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/AuthenticatorWrapper;Lio/sentry/transport/RateLimiter;)V

    .line 51
    return-void
.end method

.method private closeAndDisconnect(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 246
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    throw v0

    .line 247
    :catch_0
    move-exception v0

    .line 250
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    nop

    .line 252
    return-void
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lio/sentry/transport/HttpConnection;->open()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 122
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v1, p0, Lio/sentry/transport/HttpConnection;->requestDetails:Lio/sentry/RequestDetails;

    invoke-virtual {v1}, Lio/sentry/RequestDetails;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 123
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 126
    :cond_0
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 129
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "Content-Type"

    const-string v2, "application/x-sentry-envelope"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getConnectionTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 137
    iget-object v1, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getReadTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 139
    iget-object v1, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 141
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 142
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 146
    return-object v0
.end method

.method private getErrorMessageFromStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 261
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v0, "errorStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lio/sentry/transport/HttpConnection;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 264
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 268
    .local v3, "first":Z
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 269
    if-nez v3, :cond_0

    .line 270
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const/4 v3, 0x0

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 275
    :cond_2
    return-object v4

    .line 261
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "first":Z
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "errorStream":Ljava/io/InputStream;
    .end local p1    # "connection":Ljava/net/HttpURLConnection;
    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "errorStream":Ljava/io/InputStream;
    .restart local p1    # "connection":Ljava/net/HttpURLConnection;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "connection":Ljava/net/HttpURLConnection;
    :cond_3
    :goto_2
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 276
    .end local v0    # "errorStream":Ljava/io/InputStream;
    .restart local p1    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to obtain error message while analyzing send failure."

    return-object v1
.end method

.method private isSuccessfulResponseCode(I)Z
    .locals 1
    .param p1, "responseCode"    # I

    .line 288
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readAndLog(Ljava/net/HttpURLConnection;)Lio/sentry/transport/TransportResult;
    .locals 7
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 179
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 181
    .local v1, "responseCode":I
    invoke-virtual {p0, p1, v1}, Lio/sentry/transport/HttpConnection;->updateRetryAfterLimits(Ljava/net/HttpURLConnection;I)V

    .line 183
    invoke-direct {p0, v1}, Lio/sentry/transport/HttpConnection;->isSuccessfulResponseCode(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    const/16 v2, 0x19d

    if-ne v1, v2, :cond_0

    .line 185
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    .line 186
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Envelope was discarded by the server because it was too large. Consider reducing the size of events, breadcrumbs, or attachments. You can use the `SentryOptions.onOversizedEvent` callback to customize how oversized events are handled."

    new-array v5, v0, [Ljava/lang/Object;

    .line 187
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Request failed, API returned %s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :goto_0
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-direct {p0, p1}, Lio/sentry/transport/HttpConnection;->getErrorMessageFromStream(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "%s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lio/sentry/transport/TransportResult;->error(I)Lio/sentry/transport/TransportResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-direct {p0, p1}, Lio/sentry/transport/HttpConnection;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V

    .line 204
    return-object v0

    .line 207
    :cond_2
    :try_start_1
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Envelope sent successfully."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lio/sentry/transport/TransportResult;->success()Lio/sentry/transport/TransportResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    invoke-direct {p0, p1}, Lio/sentry/transport/HttpConnection;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V

    .line 209
    return-object v0

    .line 213
    .end local v1    # "responseCode":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error reading and logging the response stream"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v1    # "e":Ljava/io/IOException;
    invoke-direct {p0, p1}, Lio/sentry/transport/HttpConnection;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V

    .line 214
    nop

    .line 215
    invoke-static {}, Lio/sentry/transport/TransportResult;->error()Lio/sentry/transport/TransportResult;

    move-result-object v0

    return-object v0

    .line 213
    :goto_1
    invoke-direct {p0, p1}, Lio/sentry/transport/HttpConnection;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V

    .line 214
    throw v0
.end method

.method private resolveProxy(Lio/sentry/SentryOptions$Proxy;)Ljava/net/Proxy;
    .locals 8
    .param p1, "optionsProxy"    # Lio/sentry/SentryOptions$Proxy;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Proxy;->getPort()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "port":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Proxy;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "host":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Proxy;->getType()Ljava/net/Proxy$Type;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Proxy;->getType()Ljava/net/Proxy$Type;

    move-result-object v3

    .local v3, "type":Ljava/net/Proxy$Type;
    goto :goto_0

    .line 86
    .end local v3    # "type":Ljava/net/Proxy$Type;
    :cond_0
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 88
    .restart local v3    # "type":Ljava/net/Proxy$Type;
    :goto_0
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v4, "proxyAddr":Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    invoke-direct {v5, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 99
    .end local v3    # "type":Ljava/net/Proxy$Type;
    .end local v4    # "proxyAddr":Ljava/net/InetSocketAddress;
    goto :goto_1

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    .line 92
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse Sentry Proxy port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 97
    invoke-virtual {p1}, Lio/sentry/SentryOptions$Proxy;->getPort()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Proxy is ignored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 93
    invoke-interface {v4, v5, v3, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .end local v1    # "port":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method getProxy()Ljava/net/Proxy;
    .locals 1

    .line 294
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method open()Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->proxy:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->requestDetails:Lio/sentry/RequestDetails;

    invoke-virtual {v0}, Lio/sentry/RequestDetails;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->requestDetails:Lio/sentry/RequestDetails;

    invoke-virtual {v0}, Lio/sentry/RequestDetails;->getUrl()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/transport/HttpConnection;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 107
    return-object v0
.end method

.method public send(Lio/sentry/SentryEnvelope;)Lio/sentry/transport/TransportResult;
    .locals 6
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISocketTagger;->tagSockets()V

    .line 151
    invoke-direct {p0}, Lio/sentry/transport/HttpConnection;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 154
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 155
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 156
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    iget-object v3, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    .line 154
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :cond_0
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 157
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local p1    # "envelope":Lio/sentry/SentryEnvelope;
    :catchall_4
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_9
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    .line 159
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "An exception occurred while submitting the envelope to the Sentry server."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 160
    invoke-interface {v2, v3, v1, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 165
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    invoke-direct {p0, v0}, Lio/sentry/transport/HttpConnection;->readAndLog(Ljava/net/HttpURLConnection;)Lio/sentry/transport/TransportResult;

    move-result-object v1

    .line 166
    .local v1, "result":Lio/sentry/transport/TransportResult;
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/ISocketTagger;->untagSockets()V

    .line 167
    nop

    .line 168
    return-object v1

    .line 165
    .end local v1    # "result":Lio/sentry/transport/TransportResult;
    :catchall_5
    move-exception v1

    invoke-direct {p0, v0}, Lio/sentry/transport/HttpConnection;->readAndLog(Ljava/net/HttpURLConnection;)Lio/sentry/transport/TransportResult;

    move-result-object v2

    .line 166
    .local v2, "result":Lio/sentry/transport/TransportResult;
    iget-object v3, p0, Lio/sentry/transport/HttpConnection;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    move-result-object v3

    invoke-interface {v3}, Lio/sentry/ISocketTagger;->untagSockets()V

    .line 167
    throw v1
.end method

.method public updateRetryAfterLimits(Ljava/net/HttpURLConnection;I)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "responseCode"    # I

    .line 227
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "retryAfterHeader":Ljava/lang/String;
    const-string v1, "X-Sentry-Rate-Limits"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "sentryRateLimitHeader":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/transport/HttpConnection;->rateLimiter:Lio/sentry/transport/RateLimiter;

    invoke-virtual {v2, v1, v0, p2}, Lio/sentry/transport/RateLimiter;->updateRetryAfterLimits(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    return-void
.end method
