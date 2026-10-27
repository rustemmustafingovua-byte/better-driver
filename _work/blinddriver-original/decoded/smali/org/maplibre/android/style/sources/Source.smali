.class public abstract Lorg/maplibre/android/style/sources/Source;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-Source"


# instance fields
.field protected detached:Z

.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/maplibre/android/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 3
    iput-wide p1, p0, Lorg/maplibre/android/style/sources/Source;->nativePtr:J

    return-void
.end method


# virtual methods
.method public checkThread()V
    .locals 0

    const-string p0, "Mbgl-Source"

    invoke-static {p0}, Lorg/maplibre/android/utils/ThreadUtils;->checkThread(Ljava/lang/String;)V

    return-void
.end method

.method public getAttribution()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetAttribution()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxOverscaleFactorForParentTiles()Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetMaxOverscaleFactorForParentTiles()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getMinimumTileUpdateInterval()Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetMinimumTileUpdateInterval()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/style/sources/Source;->nativePtr:J

    return-wide v0
.end method

.method public getPrefetchZoomDelta()Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeGetPrefetchZoomDelta()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isVolatile()Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->nativeIsVolatile()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public native nativeGetAttribution()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetFeatureState(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetMaxOverscaleFactorForParentTiles()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetMinimumTileUpdateInterval()Ljava/lang/Long;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetPrefetchZoomDelta()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeIsVolatile()Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeRemoveFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetFeatureState(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetMaxOverscaleFactorForParentTiles(Ljava/lang/Integer;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetMinimumTileUpdateInterval(Ljava/lang/Long;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetPrefetchZoomDelta(Ljava/lang/Integer;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetVolatile(Ljava/lang/Boolean;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public setDetached()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/style/sources/Source;->detached:Z

    return-void
.end method

.method public setMaxOverscaleFactorForParentTiles(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetMaxOverscaleFactorForParentTiles(Ljava/lang/Integer;)V

    return-void
.end method

.method public setMinimumTileUpdateInterval(Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetMinimumTileUpdateInterval(Ljava/lang/Long;)V

    return-void
.end method

.method public setPrefetchZoomDelta(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetPrefetchZoomDelta(Ljava/lang/Integer;)V

    return-void
.end method

.method public setVolatile(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeSetVolatile(Ljava/lang/Boolean;)V

    return-void
.end method
