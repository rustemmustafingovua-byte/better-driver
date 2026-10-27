.class public Lorg/maplibre/android/annotations/Marker;
.super Lorg/maplibre/android/annotations/Annotation;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private icon:Lorg/maplibre/android/annotations/Icon;

.field private iconId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

.field private infoWindowShown:Z

.field private position:Lorg/maplibre/android/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private rightOffsetPixels:I

.field private snippet:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private topOffsetPixels:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/annotations/Annotation;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/annotations/BaseMarkerOptions;)V
    .locals 3

    .line 2
    iget-object v0, p1, Lorg/maplibre/android/annotations/BaseMarkerOptions;->position:Lorg/maplibre/android/geometry/LatLng;

    iget-object v1, p1, Lorg/maplibre/android/annotations/BaseMarkerOptions;->icon:Lorg/maplibre/android/annotations/Icon;

    iget-object v2, p1, Lorg/maplibre/android/annotations/BaseMarkerOptions;->title:Ljava/lang/String;

    iget-object p1, p1, Lorg/maplibre/android/annotations/BaseMarkerOptions;->snippet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/maplibre/android/annotations/Marker;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/annotations/Icon;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/annotations/Icon;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/maplibre/android/annotations/Annotation;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/maplibre/android/annotations/Marker;->position:Lorg/maplibre/android/geometry/LatLng;

    .line 5
    iput-object p3, p0, Lorg/maplibre/android/annotations/Marker;->title:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/maplibre/android/annotations/Marker;->snippet:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p2}, Lorg/maplibre/android/annotations/Marker;->setIcon(Lorg/maplibre/android/annotations/Icon;)V

    return-void
.end method

.method private getInfoWindow(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/maplibre/android/annotations/InfoWindow;

    sget v1, Lorg/maplibre/android/R$layout;->maplibre_infowindow_content:I

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/maplibre/android/annotations/InfoWindow;-><init>(Lorg/maplibre/android/maps/MapView;ILorg/maplibre/android/maps/MapLibreMap;)V

    iput-object v0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

    return-object p0
.end method

.method private refreshInfoWindowContent()V
    .locals 3

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/annotations/Annotation;->mapView:Lorg/maplibre/android/maps/MapView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/annotations/Annotation;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getInfoWindowAdapter()Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/annotations/Annotation;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-direct {p0, v0}, Lorg/maplibre/android/annotations/Marker;->getInfoWindow(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/annotations/Annotation;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/annotations/Annotation;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v2, p0, Lorg/maplibre/android/annotations/Annotation;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0, v1, v2}, Lorg/maplibre/android/annotations/InfoWindow;->adaptDefaultMarker(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/MapView;)V

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lorg/maplibre/android/maps/MapLibreMap;->updateMarker(Lorg/maplibre/android/annotations/Marker;)V

    :cond_1
    invoke-virtual {v0}, Lorg/maplibre/android/annotations/InfoWindow;->onContentUpdate()V

    :cond_2
    return-void
.end method

.method private showInfoWindow(Lorg/maplibre/android/annotations/InfoWindow;Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;
    .locals 6

    .line 12
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Marker;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v3

    iget v4, p0, Lorg/maplibre/android/annotations/Marker;->rightOffsetPixels:I

    iget v5, p0, Lorg/maplibre/android/annotations/Marker;->topOffsetPixels:I

    move-object v2, p0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/annotations/InfoWindow;->open(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/geometry/LatLng;II)Lorg/maplibre/android/annotations/InfoWindow;

    const/4 p0, 0x1

    .line 13
    iput-boolean p0, v2, Lorg/maplibre/android/annotations/Marker;->infoWindowShown:Z

    return-object v0
.end method


# virtual methods
.method public getIcon()Lorg/maplibre/android/annotations/Icon;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Marker;->icon:Lorg/maplibre/android/annotations/Icon;

    return-object p0
.end method

.method public getInfoWindow()Lorg/maplibre/android/annotations/InfoWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

    return-object p0
.end method

.method public getPosition()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Marker;->position:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Marker;->snippet:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Marker;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hideInfoWindow()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/InfoWindow;->close()Lorg/maplibre/android/annotations/InfoWindow;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindowShown:Z

    return-void
.end method

.method public isInfoWindowShown()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindowShown:Z

    return p0
.end method

.method public setIcon(Lorg/maplibre/android/annotations/Icon;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/annotations/Marker;->icon:Lorg/maplibre/android/annotations/Icon;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Icon;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/maplibre/android/annotations/Marker;->iconId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapLibreMap;->updateMarker(Lorg/maplibre/android/annotations/Marker;)V

    :cond_1
    return-void
.end method

.method public setPosition(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/annotations/Marker;->position:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapLibreMap;->updateMarker(Lorg/maplibre/android/annotations/Marker;)V

    :cond_0
    return-void
.end method

.method public setRightOffsetPixels(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/Marker;->rightOffsetPixels:I

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/annotations/Marker;->snippet:Ljava/lang/String;

    invoke-direct {p0}, Lorg/maplibre/android/annotations/Marker;->refreshInfoWindowContent()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/annotations/Marker;->title:Ljava/lang/String;

    invoke-direct {p0}, Lorg/maplibre/android/annotations/Marker;->refreshInfoWindowContent()V

    return-void
.end method

.method public setTopOffsetPixels(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/Marker;->topOffsetPixels:I

    return-void
.end method

.method public showInfoWindow(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/Annotation;->setMapLibreMap(Lorg/maplibre/android/maps/MapLibreMap;)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/maplibre/android/annotations/Annotation;->setMapView(Lorg/maplibre/android/maps/MapView;)V

    .line 3
    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getInfoWindowAdapter()Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;->getInfoWindow(Lorg/maplibre/android/annotations/Marker;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lorg/maplibre/android/annotations/InfoWindow;

    invoke-direct {v1, v0, p1}, Lorg/maplibre/android/annotations/InfoWindow;-><init>(Landroid/view/View;Lorg/maplibre/android/maps/MapLibreMap;)V

    iput-object v1, p0, Lorg/maplibre/android/annotations/Marker;->infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

    .line 6
    invoke-direct {p0, v1, p2}, Lorg/maplibre/android/annotations/Marker;->showInfoWindow(Lorg/maplibre/android/annotations/InfoWindow;Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;

    .line 7
    iget-object p0, p0, Lorg/maplibre/android/annotations/Marker;->infoWindow:Lorg/maplibre/android/annotations/InfoWindow;

    return-object p0

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lorg/maplibre/android/annotations/Marker;->getInfoWindow(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0, p0, p1, p2}, Lorg/maplibre/android/annotations/InfoWindow;->adaptDefaultMarker(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/MapView;)V

    .line 11
    :cond_1
    invoke-direct {p0, v0, p2}, Lorg/maplibre/android/annotations/Marker;->showInfoWindow(Lorg/maplibre/android/annotations/InfoWindow;Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Marker [position["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Marker;->getPosition()Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
