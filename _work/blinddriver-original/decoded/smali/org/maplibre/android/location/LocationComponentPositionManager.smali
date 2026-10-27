.class Lorg/maplibre/android/location/LocationComponentPositionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bearingOnTop:Z

.field private layerAbove:Ljava/lang/String;

.field private layerBelow:Ljava/lang/String;

.field private final style:Lorg/maplibre/android/maps/Style;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Style;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->style:Lorg/maplibre/android/maps/Style;

    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerAbove:Ljava/lang/String;

    iput-object p3, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerBelow:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->bearingOnTop:Z

    return-void
.end method


# virtual methods
.method public addLayerToMap(Lorg/maplibre/android/style/layers/Layer;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerAbove:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/Style;->addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerBelow:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerAbove:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerBelow:Ljava/lang/String;

    if-eq v0, p2, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->bearingOnTop:Z

    if-eq v0, p3, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerAbove:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->layerBelow:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/maplibre/android/location/LocationComponentPositionManager;->bearingOnTop:Z

    return v0
.end method
