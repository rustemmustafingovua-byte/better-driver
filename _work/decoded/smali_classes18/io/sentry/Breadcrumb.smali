.class public final Lio/sentry/Breadcrumb;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Breadcrumb$JsonKeys;,
        Lio/sentry/Breadcrumb$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonUnknown;",
        "Lio/sentry/JsonSerializable;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/Breadcrumb;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_DATA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:Ljava/lang/String;

.field private volatile data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private level:Lio/sentry/SentryLevel;

.field private message:Ljava/lang/String;

.field private final nanos:Ljava/lang/Long;

.field private origin:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private final timestampMs:Ljava/lang/Long;

.field private type:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/sentry/Breadcrumb;->EMPTY_DATA:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/sentry/Breadcrumb;-><init>(J)V

    .line 568
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lio/sentry/Breadcrumb;->EMPTY_DATA:Ljava/util/Map;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->nanos:Ljava/lang/Long;

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 73
    return-void
.end method

.method constructor <init>(Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lio/sentry/Breadcrumb;->EMPTY_DATA:Ljava/util/Map;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 78
    iget-object v0, p1, Lio/sentry/Breadcrumb;->nanos:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->nanos:Ljava/lang/Long;

    .line 79
    iget-object v0, p1, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 80
    iget-object v0, p1, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    .line 81
    iget-object v0, p1, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p1, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 87
    .local v0, "dataClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 88
    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 91
    .end local v0    # "dataClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p1, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    .line 92
    iget-object v0, p1, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 576
    invoke-direct {p0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 577
    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lio/sentry/Breadcrumb;->EMPTY_DATA:Ljava/util/Map;

    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->nanos:Ljava/lang/Long;

    .line 65
    iput-object p1, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    .line 67
    return-void
.end method

.method static synthetic access$002(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/Breadcrumb;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/Breadcrumb;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/Breadcrumb;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lio/sentry/Breadcrumb;
    .param p1, "x1"    # Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/Breadcrumb;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/Breadcrumb;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/Breadcrumb;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    .locals 0
    .param p0, "x0"    # Lio/sentry/Breadcrumb;
    .param p1, "x1"    # Lio/sentry/SentryLevel;

    .line 21
    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-object p1
.end method

.method private static breadcrumbEquals(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z
    .locals 4
    .param p0, "a"    # Lio/sentry/Breadcrumb;
    .param p1, "b"    # Lio/sentry/Breadcrumb;

    .line 791
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iget-object v1, p1, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 792
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iget-object v1, p1, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 793
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iget-object v1, p1, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 794
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    iget-object v1, p1, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    .line 795
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    iget-object v1, p1, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 791
    :goto_0
    return v0
.end method

.method private static breadcrumbHashCode(Lio/sentry/Breadcrumb;)I
    .locals 8
    .param p0, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 817
    nop

    .line 818
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iget-object v5, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 817
    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static createHttpBreadcrumb(Ljava/lang/String;Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Lio/sentry/Breadcrumb;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "resolver"    # Lio/sentry/DataCollectionResolver;

    .line 204
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 205
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    invoke-static {p0, p2}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object v1

    .line 206
    .local v1, "urlDetails":Lio/sentry/util/UrlUtils$UrlDetails;
    const-string v2, "http"

    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    const-string v2, "url"

    invoke-virtual {v1}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "method"

    invoke-virtual {v0, v3, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v1}, Lio/sentry/util/UrlUtils$UrlDetails;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    const-string v2, "http.query"

    invoke-virtual {v1}, Lio/sentry/util/UrlUtils$UrlDetails;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    :cond_1
    invoke-virtual {v1}, Lio/sentry/util/UrlUtils$UrlDetails;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    const-string v2, "http.fragment"

    invoke-virtual {v1}, Lio/sentry/util/UrlUtils$UrlDetails;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    :cond_2
    return-object v0
.end method

.method public static debug(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 401
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 402
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 404
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 405
    return-object v0
.end method

.method public static error(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 415
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 416
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 418
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 419
    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;Lio/sentry/SentryOptions;)Lio/sentry/Breadcrumb;
    .locals 18
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 106
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    .line 107
    .local v0, "timestamp":Ljava/util/Date;
    const/4 v1, 0x0

    .line 108
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .line 109
    .local v2, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 110
    .local v3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 111
    .local v4, "category":Ljava/lang/String;
    const/4 v5, 0x0

    .line 112
    .local v5, "origin":Ljava/lang/String;
    const/4 v6, 0x0

    .line 113
    .local v6, "level":Lio/sentry/SentryLevel;
    const/4 v7, 0x0

    .line 115
    .local v7, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .end local v0    # "timestamp":Ljava/util/Date;
    .local v1, "timestamp":Ljava/util/Date;
    .local v2, "message":Ljava/lang/String;
    .local v3, "type":Ljava/lang/String;
    .local v4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v5, "category":Ljava/lang/String;
    .local v6, "origin":Ljava/lang/String;
    .local v7, "level":Lio/sentry/SentryLevel;
    .local v9, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Map$Entry;

    .line 116
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 117
    .local v11, "value":Ljava/lang/Object;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v12, "message"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_1
    const-string v12, "level"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_2
    const-string v12, "timestamp"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_3
    const-string v12, "category"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_4
    const-string v12, "type"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_5
    const-string v12, "data"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_6
    const-string v12, "origin"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    .line 167
    if-nez v9, :cond_b

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v9, v0

    goto/16 :goto_5

    .line 157
    :pswitch_0
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 158
    .local v12, "levelString":Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_c

    .line 160
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v7    # "level":Lio/sentry/SentryLevel;
    .local v0, "level":Lio/sentry/SentryLevel;
    move-object v7, v0

    goto/16 :goto_6

    .line 161
    .end local v0    # "level":Lio/sentry/SentryLevel;
    .restart local v7    # "level":Lio/sentry/SentryLevel;
    :catch_0
    move-exception v0

    .line 163
    goto/16 :goto_6

    .line 154
    .end local v12    # "levelString":Ljava/lang/String;
    :pswitch_1
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 155
    .end local v6    # "origin":Ljava/lang/String;
    .local v12, "origin":Ljava/lang/String;
    :cond_2
    move-object v6, v12

    goto/16 :goto_6

    .line 151
    .end local v12    # "origin":Ljava/lang/String;
    .restart local v6    # "origin":Ljava/lang/String;
    :pswitch_2
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 152
    .end local v5    # "category":Ljava/lang/String;
    .local v12, "category":Ljava/lang/String;
    :cond_3
    move-object v5, v12

    goto/16 :goto_6

    .line 134
    .end local v12    # "category":Ljava/lang/String;
    .restart local v5    # "category":Ljava/lang/String;
    :pswitch_3
    instance-of v0, v11, Ljava/util/Map;

    if-eqz v0, :cond_4

    move-object v12, v11

    check-cast v12, Ljava/util/Map;

    .line 135
    .local v12, "untypedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    if-eqz v12, :cond_c

    .line 136
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 137
    .local v14, "dataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 138
    if-nez v4, :cond_5

    .line 139
    new-instance v15, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v4, v15

    .line 141
    :cond_5
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v0

    goto :goto_4

    .line 143
    :cond_6
    nop

    .line 144
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v13

    sget-object v15, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    move-object/from16 v17, v0

    move-object/from16 v16, v4

    const/4 v0, 0x0

    .end local v4    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v16, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-array v4, v0, [Ljava/lang/Object;

    .line 145
    const-string v0, "Invalid key or null value in data map."

    invoke-interface {v13, v15, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, v16

    .line 147
    .end local v14    # "dataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v16    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_4
    move-object/from16 v0, v17

    goto :goto_3

    :cond_7
    move-object/from16 v16, v4

    .end local v4    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v16    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 130
    .end local v12    # "untypedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v16    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_4
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_8

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 131
    .end local v3    # "type":Ljava/lang/String;
    .local v12, "type":Ljava/lang/String;
    :cond_8
    move-object v3, v12

    goto :goto_6

    .line 127
    .end local v12    # "type":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :pswitch_5
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 128
    .end local v2    # "message":Ljava/lang/String;
    .local v12, "message":Ljava/lang/String;
    :cond_9
    move-object v2, v12

    goto :goto_6

    .line 119
    .end local v12    # "message":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    :pswitch_6
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 120
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v12

    invoke-static {v0, v12}, Lio/sentry/ObjectReader;->dateOrNull(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v0

    .line 121
    .local v0, "deserializedDate":Ljava/util/Date;
    if-eqz v0, :cond_a

    .line 122
    move-object v1, v0

    .line 124
    .end local v0    # "deserializedDate":Ljava/util/Date;
    :cond_a
    goto :goto_6

    .line 170
    :cond_b
    :goto_5
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "value":Ljava/lang/Object;
    :cond_c
    :goto_6
    goto/16 :goto_0

    .line 175
    :cond_d
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0, v1}, Lio/sentry/Breadcrumb;-><init>(Ljava/util/Date;)V

    .line 176
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    iput-object v2, v0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 177
    iput-object v3, v0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 178
    if-eqz v4, :cond_e

    .line 179
    iput-object v4, v0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 181
    :cond_e
    iput-object v5, v0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 182
    iput-object v6, v0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    .line 183
    iput-object v7, v0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    .line 185
    invoke-virtual {v0, v9}, Lio/sentry/Breadcrumb;->setUnknown(Ljava/util/Map;)V

    .line 186
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3c1e50da -> :sswitch_6
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOrCreateData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 637
    .local v0, "currentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lio/sentry/Breadcrumb;->EMPTY_DATA:Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 638
    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    move-object v0, v1

    .line 640
    sget-object v1, Lio/sentry/Breadcrumb;->EMPTY_DATA:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 641
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 642
    iput-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 644
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 646
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static graphqlDataFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "objectType"    # Ljava/lang/String;

    .line 300
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 302
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "graphql"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 303
    const-string v1, "graphql.fetcher"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 305
    if-eqz p0, :cond_0

    .line 306
    const-string v1, "path"

    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    :cond_0
    if-eqz p1, :cond_1

    .line 309
    const-string v1, "field"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    :cond_1
    if-eqz p2, :cond_2

    .line 312
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :cond_2
    if-eqz p3, :cond_3

    .line 315
    const-string v1, "object_type"

    invoke-virtual {v0, v1, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    :cond_3
    return-object v0
.end method

.method public static graphqlDataLoader(Ljava/lang/Iterable;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 5
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 335
    .local p0, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 337
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "graphql"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 338
    const-string v1, "graphql.data_loader"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "serializedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 342
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v3    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 344
    :cond_0
    const-string v2, "keys"

    invoke-virtual {v0, v2, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    if-eqz p1, :cond_1

    .line 347
    const-string v2, "key_type"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    :cond_1
    if-eqz p2, :cond_2

    .line 351
    const-string v2, "value_type"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    :cond_2
    if-eqz p3, :cond_3

    .line 355
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    :cond_3
    return-object v0
.end method

.method public static graphqlOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "operationName"    # Ljava/lang/String;
    .param p1, "operationType"    # Ljava/lang/String;
    .param p2, "operationId"    # Ljava/lang/String;

    .line 266
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 268
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "graphql"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 270
    if-eqz p0, :cond_0

    .line 271
    const-string v1, "operation_name"

    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    :cond_0
    if-eqz p1, :cond_1

    .line 274
    const-string v1, "operation_type"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    const-string v1, "graphql.operation"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 279
    :goto_0
    if-eqz p2, :cond_2

    .line 280
    const-string v1, "operation_id"

    invoke-virtual {v0, v1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    :cond_2
    return-object v0
.end method

.method public static http(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/sentry/Breadcrumb;->createHttpBreadcrumb(Ljava/lang/String;Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Lio/sentry/Breadcrumb;

    move-result-object v0

    return-object v0
.end method

.method public static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;

    .line 232
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/sentry/Breadcrumb;->createHttpBreadcrumb(Ljava/lang/String;Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Lio/sentry/Breadcrumb;

    move-result-object v0

    .line 233
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    if-eqz p2, :cond_0

    .line 234
    const-string v1, "status_code"

    invoke-virtual {v0, v1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    invoke-static {p2}, Lio/sentry/Breadcrumb;->levelFromHttpStatusCode(Ljava/lang/Integer;)Lio/sentry/SentryLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 237
    :cond_0
    return-object v0
.end method

.method public static http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lio/sentry/DataCollectionResolver;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/Integer;
    .param p3, "resolver"    # Lio/sentry/DataCollectionResolver;

    .line 246
    invoke-static {p0, p1, p3}, Lio/sentry/Breadcrumb;->createHttpBreadcrumb(Ljava/lang/String;Ljava/lang/String;Lio/sentry/DataCollectionResolver;)Lio/sentry/Breadcrumb;

    move-result-object v0

    .line 247
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    if-eqz p2, :cond_0

    .line 248
    const-string v1, "status_code"

    invoke-virtual {v0, v1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    invoke-static {p2}, Lio/sentry/Breadcrumb;->levelFromHttpStatusCode(Ljava/lang/Integer;)Lio/sentry/SentryLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 251
    :cond_0
    return-object v0
.end method

.method private static httpBreadcrumbEquals(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z
    .locals 2
    .param p0, "a"    # Lio/sentry/Breadcrumb;
    .param p1, "b"    # Lio/sentry/Breadcrumb;

    .line 806
    invoke-static {p0, p1}, Lio/sentry/Breadcrumb;->breadcrumbEquals(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "status_code"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    const-string v0, "http.fragment"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    const-string v0, "http.query"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 806
    :goto_0
    return v0
.end method

.method private static httpBreadcrumbHashCode(Lio/sentry/Breadcrumb;)I
    .locals 13
    .param p0, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 832
    nop

    .line 833
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    iget-object v5, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    .line 839
    const-string v0, "status_code"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 840
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 841
    const-string v0, "method"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 842
    const-string v0, "http.fragment"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 843
    const-string v0, "http.query"

    invoke-virtual {p0, v0}, Lio/sentry/Breadcrumb;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 832
    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static info(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 430
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 431
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "info"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 433
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 434
    return-object v0
.end method

.method private static levelFromHttpStatusCode(Ljava/lang/Integer;)Lio/sentry/SentryLevel;
    .locals 1
    .param p0, "code"    # Ljava/lang/Integer;

    .line 556
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/sentry/util/HttpUtils;->isHttpClientError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    return-object v0

    .line 558
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/sentry/util/HttpUtils;->isHttpServerError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    return-object v0

    .line 561
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static navigation(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .line 371
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 372
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 374
    const-string v1, "from"

    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    return-object v0
.end method

.method public static query(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 444
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 445
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "query"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 447
    return-object v0
.end method

.method public static transaction(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 386
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 387
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 388
    const-string v1, "sentry.transaction"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 390
    return-object v0
.end method

.method public static ui(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 3
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 459
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 460
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 463
    return-object v0
.end method

.method public static user(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 474
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 475
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 1
    .param p0, "subCategory"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "viewClass"    # Ljava/lang/String;

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object v0

    return-object v0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;
    .locals 5
    .param p0, "subCategory"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "viewClass"    # Ljava/lang/String;
    .param p3, "viewTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 516
    .local p4, "additionalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    .line 517
    .local v0, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 519
    if-eqz p1, :cond_0

    .line 520
    const-string v1, "view.id"

    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    :cond_0
    if-eqz p2, :cond_1

    .line 523
    const-string v1, "view.class"

    invoke-virtual {v0, v1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    :cond_1
    if-eqz p3, :cond_2

    .line 526
    const-string v1, "view.tag"

    invoke-virtual {v0, v1, p3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 529
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 531
    :cond_3
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 532
    return-object v0
.end method

.method public static userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;
    .locals 1
    .param p0, "subCategory"    # Ljava/lang/String;
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "viewClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/sentry/Breadcrumb;"
        }
    .end annotation

    .line 552
    .local p3, "additionalData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/sentry/Breadcrumb;)I
    .locals 3
    .param p1, "o"    # Lio/sentry/Breadcrumb;

    .line 862
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 863
    .local v0, "byTimestamp":I
    if-eqz v0, :cond_0

    .line 864
    return v0

    .line 868
    :cond_0
    iget-object v1, p0, Lio/sentry/Breadcrumb;->nanos:Ljava/lang/Long;

    iget-object v2, p1, Lio/sentry/Breadcrumb;->nanos:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    check-cast p1, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, p1}, Lio/sentry/Breadcrumb;->compareTo(Lio/sentry/Breadcrumb;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 764
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 765
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 766
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/Breadcrumb;

    .line 768
    .local v0, "that":Lio/sentry/Breadcrumb;
    const-string v1, "http"

    iget-object v2, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    invoke-static {p0, v0}, Lio/sentry/Breadcrumb;->httpBreadcrumbEquals(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z

    move-result v1

    return v1

    .line 771
    :cond_2
    invoke-static {p0, v0}, Lio/sentry/Breadcrumb;->breadcrumbEquals(Lio/sentry/Breadcrumb;Lio/sentry/Breadcrumb;)Z

    move-result v1

    return v1

    .line 765
    .end local v0    # "that":Lio/sentry/Breadcrumb;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 668
    if-nez p1, :cond_0

    .line 669
    const/4 v0, 0x0

    return-object v0

    .line 671
    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 657
    invoke-direct {p0}, Lio/sentry/Breadcrumb;->getOrCreateData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 750
    iget-object v0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 732
    iget-object v0, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 2

    .line 587
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    return-object v0

    .line 589
    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    .line 592
    iget-object v0, p0, Lio/sentry/Breadcrumb;->timestamp:Ljava/util/Date;

    return-object v0

    .line 594
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No timestamp set for breadcrumb"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 777
    const-string v0, "http"

    iget-object v1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-static {p0}, Lio/sentry/Breadcrumb;->httpBreadcrumbHashCode(Lio/sentry/Breadcrumb;)I

    move-result v0

    return v0

    .line 780
    :cond_0
    invoke-static {p0}, Lio/sentry/Breadcrumb;->breadcrumbHashCode(Lio/sentry/Breadcrumb;)I

    move-result v0

    return v0
.end method

.method public removeData(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 699
    if-nez p1, :cond_0

    .line 700
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    .line 703
    .local v0, "currentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lio/sentry/Breadcrumb;->EMPTY_DATA:Ljava/util/Map;

    if-eq v0, v1, :cond_1

    .line 704
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_1
    return-void
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 884
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 885
    nop

    .line 886
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lio/sentry/Breadcrumb;->timestampMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->getTimestampFromMillis(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 890
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 887
    :goto_0
    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 891
    iget-object v0, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 892
    const-string v0, "message"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 894
    :cond_1
    iget-object v0, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 895
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 897
    :cond_2
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 898
    iget-object v0, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 899
    const-string v0, "category"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 901
    :cond_3
    iget-object v0, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 902
    const-string v0, "origin"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 904
    :cond_4
    iget-object v0, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    if-eqz v0, :cond_5

    .line 905
    const-string v0, "level"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 907
    :cond_5
    iget-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 908
    iget-object v0, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 909
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 910
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 911
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 912
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 914
    :cond_6
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 915
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .line 723
    iput-object p1, p0, Lio/sentry/Breadcrumb;->category:Ljava/lang/String;

    .line 724
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 681
    if-nez p1, :cond_0

    .line 682
    return-void

    .line 684
    :cond_0
    if-nez p2, :cond_1

    .line 685
    invoke-virtual {p0, p1}, Lio/sentry/Breadcrumb;->removeData(Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_1
    invoke-direct {p0}, Lio/sentry/Breadcrumb;->getOrCreateData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :goto_0
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 759
    iput-object p1, p0, Lio/sentry/Breadcrumb;->level:Lio/sentry/SentryLevel;

    .line 760
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 612
    iput-object p1, p0, Lio/sentry/Breadcrumb;->message:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .line 741
    iput-object p1, p0, Lio/sentry/Breadcrumb;->origin:Ljava/lang/String;

    .line 742
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 630
    iput-object p1, p0, Lio/sentry/Breadcrumb;->type:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 856
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/Breadcrumb;->unknown:Ljava/util/Map;

    .line 857
    return-void
.end method
