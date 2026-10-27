.class public Lorg/maplibre/android/http/HttpLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-HttpRequest"

.field public static logEnabled:Z = true

.field public static logRequestUrl:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(ILjava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/maplibre/android/http/HttpLogger;->logEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Mbgl-HttpRequest"

    invoke-static {p0, v0, p1}, Lorg/maplibre/android/log/Logger;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logFailure(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    if-ne p0, v0, :cond_2

    const-string p0, "temporary"

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    const-string p0, "connection"

    goto :goto_1

    :cond_3
    const-string p0, "permanent"

    :goto_1
    sget-boolean v0, Lorg/maplibre/android/http/HttpLogger;->logRequestUrl:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, ""

    :goto_2
    const-string v0, " error: "

    const-string v2, " "

    const-string v3, "Request failed due to a "

    invoke-static {v3, p0, v0, p1, v2}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/maplibre/android/http/HttpLogger;->log(ILjava/lang/String;)V

    return-void
.end method
