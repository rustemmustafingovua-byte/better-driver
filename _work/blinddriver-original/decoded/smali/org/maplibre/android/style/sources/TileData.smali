.class public abstract Lorg/maplibre/android/style/sources/TileData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/style/sources/TileData$Companion;,
        Lorg/maplibre/android/style/sources/TileData$Mvt;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/maplibre/android/style/sources/TileData$Companion;

.field public static final FORMAT_MVT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/sources/TileData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/style/sources/TileData$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/style/sources/TileData;->Companion:Lorg/maplibre/android/style/sources/TileData$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/TileData;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBytes$MapLibreAndroid()[B
    .locals 1

    instance-of v0, p0, Lorg/maplibre/android/style/sources/TileData$Mvt;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/maplibre/android/style/sources/TileData$Mvt;

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/TileData$Mvt;->getData()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final getFormatId$MapLibreAndroid()I
    .locals 0

    instance-of p0, p0, Lorg/maplibre/android/style/sources/TileData$Mvt;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
