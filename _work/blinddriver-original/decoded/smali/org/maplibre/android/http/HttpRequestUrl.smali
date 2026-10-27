.class public Lorg/maplibre/android/http/HttpRequestUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResourceUrl(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/http/HttpRequestUrl;->isValidMapboxEndpoint(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    const-string p0, "?"

    invoke-static {p1, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "&"

    invoke-static {p1, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p3, :cond_1

    const-string p1, "offline=true"

    invoke-static {p0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    return-object p1
.end method

.method private static isValidMapboxEndpoint(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mapbox.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mapbox.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mapbox.cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mapbox.cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
