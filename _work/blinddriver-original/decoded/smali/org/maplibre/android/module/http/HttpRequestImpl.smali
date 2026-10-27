.class public Lorg/maplibre/android/module/http/HttpRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/http/HttpRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;
    }
.end annotation


# static fields
.field static volatile client:Lla/d;

.field static volatile defaultClient:Lla/v;

.field private static final userAgentString:Ljava/lang/String;


# instance fields
.field private call:Lla/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/maplibre/android/http/HttpIdentifier;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MapLibre Android/13.6.1 (c7506d6) Android/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/module/http/HttpRequestUtil;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->userAgentString:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->defaultClient:Lla/v;

    sput-object v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lla/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    sput-boolean p0, Lorg/maplibre/android/http/HttpLogger;->logEnabled:Z

    return-void
.end method

.method public static enablePrintRequestUrlOnFailure(Z)V
    .locals 0

    sput-boolean p0, Lorg/maplibre/android/http/HttpLogger;->logRequestUrl:Z

    return-void
.end method

.method private static getDispatcher()Lla/n;
    .locals 2

    new-instance v0, Lla/n;

    invoke-direct {v0}, Lla/n;-><init>()V

    monitor-enter v0

    const/16 v1, 0x14

    :try_start_0
    iput v1, v0, Lla/n;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v0}, Lla/n;->e()V

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getHttpClient()Lla/d;
    .locals 2

    sget-object v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lla/d;

    if-nez v0, :cond_1

    const-class v0, Lorg/maplibre/android/module/http/HttpRequestImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lla/d;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/maplibre/android/module/http/HttpRequestImpl;->getOrCreateDefaultClient()Lla/v;

    move-result-object v1

    sput-object v1, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lla/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lla/d;

    return-object v0
.end method

.method private static declared-synchronized getOrCreateDefaultClient()Lla/v;
    .locals 4

    const-class v0, Lorg/maplibre/android/module/http/HttpRequestImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/maplibre/android/module/http/HttpRequestImpl;->defaultClient:Lla/v;

    if-nez v1, :cond_0

    new-instance v1, Lla/u;

    invoke-direct {v1}, Lla/u;-><init>()V

    invoke-static {}, Lorg/maplibre/android/module/http/HttpRequestImpl;->getDispatcher()Lla/n;

    move-result-object v2

    const-string v3, "dispatcher"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lla/u;->a:Lla/n;

    new-instance v2, Lla/v;

    invoke-direct {v2, v1}, Lla/v;-><init>(Lla/u;)V

    sput-object v2, Lorg/maplibre/android/module/http/HttpRequestImpl;->defaultClient:Lla/v;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/maplibre/android/module/http/HttpRequestImpl;->defaultClient:Lla/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setOkHttpClient(Lla/d;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/maplibre/android/module/http/HttpRequestImpl;->getOrCreateDefaultClient()Lla/v;

    move-result-object p0

    :goto_0
    sput-object p0, Lorg/maplibre/android/module/http/HttpRequestImpl;->client:Lla/d;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lla/e;

    if-eqz v0, :cond_0

    check-cast v0, Lpa/p;

    iget-object v0, v0, Lpa/p;->m:Lg7/c;

    iget-object v0, v0, Lg7/c;->c:Ljava/lang/Object;

    check-cast v0, Lla/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[HTTP] This request was cancelled ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "). This is expected for tiles that were being prefetched but are no longer needed for the map to render."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/maplibre/android/http/HttpLogger;->log(ILjava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lla/e;

    check-cast p0, Lpa/p;

    invoke-virtual {p0}, Lpa/p;->g()V

    :cond_0
    return-void
.end method

.method public executeRequest(Lorg/maplibre/android/http/HttpResponder;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string p2, "<this>"

    const-string p3, "[HTTP] Unable to parse resourceUrl "

    new-instance v0, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;

    invoke-direct {v0, p1}, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;-><init>(Lorg/maplibre/android/http/HttpResponder;)V

    :try_start_0
    invoke-static {p4, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    :try_start_1
    new-instance p2, Lla/q;

    invoke-direct {p2}, Lla/q;-><init>()V

    invoke-virtual {p2, p1, p4}, Lla/q;->c(Lla/r;Ljava/lang/String;)V

    invoke-virtual {p2}, Lla/q;->a()Lla/r;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    if-nez p1, :cond_0

    :try_start_2
    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p1}, Lorg/maplibre/android/http/HttpLogger;->log(ILjava/lang/String;)V

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p2, p1, Lla/r;->d:Ljava/lang/String;

    sget-object p3, Lorg/maplibre/android/constants/MapLibreConstants;->MAPLIBRE_LOCALE:Ljava/util/Locale;

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lla/r;->f:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p4, p1, p8}, Lorg/maplibre/android/http/HttpRequestUrl;->buildResourceUrl(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroidx/lifecycle/a1;

    const/4 p4, 0x5

    invoke-direct {p2, p4}, Landroidx/lifecycle/a1;-><init>(I)V

    invoke-virtual {p2, p1}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/a1;->F(Ljava/lang/String;)V

    const-string p1, "User-Agent"

    sget-object p3, Lorg/maplibre/android/module/http/HttpRequestImpl;->userAgentString:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/a1;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "Range"

    invoke-virtual {p2, p1, p5}, Landroidx/lifecycle/a1;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "If-None-Match"

    invoke-virtual {p2, p1, p6}, Landroidx/lifecycle/a1;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "If-Modified-Since"

    invoke-virtual {p2, p1, p7}, Landroidx/lifecycle/a1;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    new-instance p1, Lg7/c;

    invoke-direct {p1, p2}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    invoke-static {}, Lorg/maplibre/android/module/http/HttpRequestImpl;->getHttpClient()Lla/d;

    move-result-object p2

    check-cast p2, Lla/v;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lpa/p;

    invoke-direct {p3, p2, p1}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    iput-object p3, p0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lla/e;

    invoke-virtual {p3, v0}, Lpa/p;->h(Lla/f;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lorg/maplibre/android/module/http/HttpRequestImpl;->call:Lla/e;

    invoke-static {v0, p0, p1}, Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;->a(Lorg/maplibre/android/module/http/HttpRequestImpl$OkHttpCallback;Lla/e;Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
