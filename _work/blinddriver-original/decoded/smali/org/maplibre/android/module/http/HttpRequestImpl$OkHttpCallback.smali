.class Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/module/http/HttpRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkHttpCallback"
.end annotation


# instance fields
.field private httpRequest:Lorg/maplibre/android/http/HttpResponder;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/http/HttpResponder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->httpRequest:Lorg/maplibre/android/http/HttpResponder;

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;Lla/e;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->handleFailure(Lla/e;Ljava/lang/Exception;)V

    return-void
.end method

.method private getFailureType(Ljava/lang/Exception;)I
    .locals 0

    instance-of p0, p1, Ljava/net/NoRouteToHostException;

    if-nez p0, :cond_2

    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-nez p0, :cond_2

    instance-of p0, p1, Ljava/net/SocketException;

    if-nez p0, :cond_2

    instance-of p0, p1, Ljava/net/ProtocolException;

    if-nez p0, :cond_2

    instance-of p0, p1, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleFailure(Lla/e;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Error processing the request"

    :goto_0
    invoke-direct {p0, p2}, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->getFailureType(Ljava/lang/Exception;)I

    move-result p2

    sget-boolean v1, Lorg/maplibre/android/http/HttpLogger;->logEnabled:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    check-cast p1, Lpa/p;

    iget-object p1, p1, Lpa/p;->m:Lg7/c;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lg7/c;->c:Ljava/lang/Object;

    check-cast p1, Lla/r;

    iget-object p1, p1, Lla/r;->h:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lorg/maplibre/android/http/HttpLogger;->logFailure(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->httpRequest:Lorg/maplibre/android/http/HttpResponder;

    invoke-interface {p0, p2, v0}, Lorg/maplibre/android/http/HttpResponder;->handleFailure(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lla/e;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->handleFailure(Lla/e;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lla/e;Lla/c0;)V
    .locals 9

    iget-boolean v0, p2, Lla/c0;->z:Z

    iget-object v1, p2, Lla/c0;->q:Lla/p;

    iget-object v2, p2, Lla/c0;->n:Ljava/lang/String;

    iget v3, p2, Lla/c0;->o:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[HTTP] Request was successful (code = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lorg/maplibre/android/http/HttpLogger;->log(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "No additional information"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "[HTTP] Request with response = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lorg/maplibre/android/http/HttpLogger;->log(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p2, Lla/c0;->r:Lla/e0;

    if-nez v0, :cond_2

    const/4 p0, 0x6

    const-string p1, "[HTTP] Received empty response body"

    invoke-static {p0, p1}, Lorg/maplibre/android/http/HttpLogger;->log(ILjava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lla/e0;->b()[B

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lla/c0;->close()V

    iget-object v0, p0, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->httpRequest:Lorg/maplibre/android/http/HttpResponder;

    move-object p0, v1

    iget v1, p2, Lla/c0;->o:I

    const-string p1, "ETag"

    invoke-virtual {p0, p1}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    move-object v2, p2

    goto :goto_2

    :cond_3
    move-object v2, p1

    :goto_2
    const-string p1, "Last-Modified"

    invoke-virtual {p0, p1}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    move-object v3, p2

    goto :goto_3

    :cond_4
    move-object v3, p1

    :goto_3
    const-string p1, "Cache-Control"

    invoke-virtual {p0, p1}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    move-object v4, p2

    goto :goto_4

    :cond_5
    move-object v4, p1

    :goto_4
    const-string p1, "Expires"

    invoke-virtual {p0, p1}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    move-object v5, p2

    goto :goto_5

    :cond_6
    move-object v5, p1

    :goto_5
    const-string p1, "Retry-After"

    invoke-virtual {p0, p1}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    move-object v6, p2

    goto :goto_6

    :cond_7
    move-object v6, p1

    :goto_6
    const-string p1, "x-rate-limit-reset"

    invoke-virtual {p0, p1}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    move-object v7, p2

    goto :goto_7

    :cond_8
    move-object v7, p0

    :goto_7
    invoke-interface/range {v0 .. v8}, Lorg/maplibre/android/http/HttpResponder;->onResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->onFailure(Lla/e;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lla/c0;->close()V

    return-void

    :goto_8
    invoke-virtual {p2}, Lla/c0;->close()V

    throw p0
.end method
