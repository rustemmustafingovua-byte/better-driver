.class public abstract Lorg/maplibre/android/style/layers/Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-Layer"


# instance fields
.field private detached:Z

.field private invalidated:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

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
    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    .line 3
    iput-wide p1, p0, Lorg/maplibre/android/style/layers/Layer;->nativePtr:J

    return-void
.end method

.method private convertValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lorg/maplibre/android/style/expressions/Expression;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/maplibre/android/style/expressions/Expression;

    invoke-virtual {p1}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lorg/maplibre/android/style/types/Formatted;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/maplibre/android/style/types/Formatted;

    invoke-virtual {p1}, Lorg/maplibre/android/style/types/Formatted;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public checkThread()V
    .locals 0

    const-string p0, "Mbgl-Layer"

    invoke-static {p0}, Lorg/maplibre/android/utils/ThreadUtils;->checkThread(Ljava/lang/String;)V

    return-void
.end method

.method public native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxZoom()F
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetMaxZoom()F

    move-result p0

    return p0
.end method

.method public getMinZoom()F
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetMinZoom()F

    move-result p0

    return p0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/style/layers/Layer;->nativePtr:J

    return-wide v0
.end method

.method public getVisibility()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetVisibility()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "visibility"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public isDetached()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/style/layers/Layer;->detached:Z

    return p0
.end method

.method public native nativeGetFilter()Lcom/google/gson/JsonElement;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetMaxZoom()F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetMinZoom()F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetSourceId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetSourceLayer()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeGetVisibility()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetFilter([Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetMaxZoom(F)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetMinZoom(F)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public native nativeSetSourceLayer(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public setDetached()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/style/layers/Layer;->detached:Z

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->nativeSetMaxZoom(F)V

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->nativeSetMinZoom(F)V

    return-void
.end method

.method public varargs setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "*>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/maplibre/android/style/layers/Layer;->detached:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    iget-object v3, v2, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lorg/maplibre/android/style/layers/Layer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v2, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    if-eqz v4, :cond_2

    iget-object v2, v2, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/style/layers/Layer;->nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/style/layers/Layer;->nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
