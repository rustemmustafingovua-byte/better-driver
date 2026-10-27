.class final Lorg/maplibre/android/location/engine/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCURACY_THRESHOLD_METERS:I = 0xc8

.field private static final TWO_MINUTES:I = 0x1d4c0


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const-wide/32 v5, -0x1d4c0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz v5, :cond_5

    return v4

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    if-gez v2, :cond_7

    move v5, v0

    goto :goto_4

    :cond_7
    move v5, v4

    :goto_4
    const/16 v6, 0xc8

    if-le v2, v6, :cond_8

    move v2, v0

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/location/engine/Utils;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz v5, :cond_9

    return v0

    :cond_9
    if-eqz v1, :cond_a

    if-nez v3, :cond_a

    return v0

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    if-eqz p0, :cond_b

    return v0

    :cond_b
    return v4
.end method

.method public static isOnClasspath(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
