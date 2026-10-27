.class Lorg/maplibre/android/maps/InfoWindowManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private allowConcurrentMultipleInfoWindows:Z

.field private infoWindowAdapter:Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;

.field private final infoWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/InfoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private onInfoWindowClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;

.field private onInfoWindowCloseListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;

.field private onInfoWindowLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->infoWindows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lorg/maplibre/android/annotations/InfoWindow;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->infoWindows:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInfoWindowAdapter()Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->infoWindowAdapter:Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;

    return-object p0
.end method

.method public getOnInfoWindowClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->onInfoWindowClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;

    return-object p0
.end method

.method public getOnInfoWindowCloseListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->onInfoWindowCloseListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;

    return-object p0
.end method

.method public getOnInfoWindowLongClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->onInfoWindowLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;

    return-object p0
.end method

.method public isAllowConcurrentMultipleOpenInfoWindows()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->allowConcurrentMultipleInfoWindows:Z

    return p0
.end method

.method public isInfoWindowValidForMarker(Lorg/maplibre/android/annotations/Marker;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Marker;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Marker;->getSnippet()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setAllowConcurrentMultipleOpenInfoWindows(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/InfoWindowManager;->allowConcurrentMultipleInfoWindows:Z

    return-void
.end method

.method public setInfoWindowAdapter(Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/InfoWindowManager;->infoWindowAdapter:Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;

    return-void
.end method

.method public setOnInfoWindowClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/InfoWindowManager;->onInfoWindowClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;

    return-void
.end method

.method public setOnInfoWindowCloseListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/InfoWindowManager;->onInfoWindowCloseListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;

    return-void
.end method

.method public setOnInfoWindowLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/InfoWindowManager;->onInfoWindowLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->infoWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/InfoWindowManager;->infoWindows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/annotations/InfoWindow;

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/InfoWindow;->update()V

    goto :goto_0

    :cond_0
    return-void
.end method
