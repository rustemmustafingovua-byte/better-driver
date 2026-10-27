.class public Lorg/maplibre/android/module/http/HttpRequestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/module/http/HttpRequestImpl;->enableLog(Z)V

    return-void
.end method

.method public static setOkHttpClient(Lla/d;)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/module/http/HttpRequestImpl;->setOkHttpClient(Lla/d;)V

    return-void
.end method

.method public static setPrintRequestUrlOnFailure(Z)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/module/http/HttpRequestImpl;->enablePrintRequestUrlOnFailure(Z)V

    return-void
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    const/16 v5, 0x1f

    if-le v3, v5, :cond_0

    if-ge v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance v3, Lbb/g;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v1, v2, p0}, Lbb/g;->c0(IILjava/lang/String;)V

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-le v1, v5, :cond_1

    if-ge v1, v4, :cond_1

    move v6, v1

    goto :goto_2

    :cond_1
    const/16 v6, 0x3f

    :goto_2
    invoke-virtual {v3, v6}, Lbb/g;->e0(I)V

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lbb/g;->T()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method
