.class public Lorg/maplibre/android/maps/SupportMapFragment;
.super Landroidx/fragment/app/l0;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/OnMapReadyCallback;


# instance fields
.field private map:Lorg/maplibre/android/maps/MapView;

.field private final mapReadyCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mapViewReadyCallback:Lorg/maplibre/android/maps/MapFragment$OnMapViewReadyCallback;

.field private maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/l0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    return-void
.end method

.method public static newInstance()Lorg/maplibre/android/maps/SupportMapFragment;
    .locals 1

    .line 1
    new-instance v0, Lorg/maplibre/android/maps/SupportMapFragment;

    invoke-direct {v0}, Lorg/maplibre/android/maps/SupportMapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lorg/maplibre/android/maps/MapLibreMapOptions;)Lorg/maplibre/android/maps/SupportMapFragment;
    .locals 1

    .line 2
    new-instance v0, Lorg/maplibre/android/maps/SupportMapFragment;

    invoke-direct {v0}, Lorg/maplibre/android/maps/SupportMapFragment;-><init>()V

    .line 3
    invoke-static {p0}, Lorg/maplibre/android/utils/MapFragmentUtils;->createFragmentArgs(Lorg/maplibre/android/maps/MapLibreMapOptions;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/l0;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMapAsync(Lorg/maplibre/android/maps/OnMapReadyCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lorg/maplibre/android/maps/OnMapReadyCallback;->onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/l0;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lorg/maplibre/android/maps/MapFragment$OnMapViewReadyCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/maplibre/android/maps/MapFragment$OnMapViewReadyCallback;

    iput-object p1, p0, Lorg/maplibre/android/maps/SupportMapFragment;->mapViewReadyCallback:Lorg/maplibre/android/maps/MapFragment$OnMapViewReadyCallback;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/l0;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/maplibre/android/utils/MapFragmentUtils;->resolveArgs(Landroid/content/Context;Landroid/os/Bundle;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/maplibre/android/maps/MapView;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    iput-object p2, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/l0;->onDestroy()V

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/l0;->onDestroyView()V

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onDestroy()V

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/l0;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static {p1, p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p1

    invoke-static {p1}, Lorg/maplibre/android/utils/MapFragmentUtils;->createFragmentArgs(Lorg/maplibre/android/maps/MapLibreMapOptions;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l0;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/l0;->onLowMemory()V

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 1

    iput-object p1, p0, Lorg/maplibre/android/maps/SupportMapFragment;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->mapReadyCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/OnMapReadyCallback;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/OnMapReadyCallback;->onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/l0;->onPause()V

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/l0;->onResume()V

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/l0;->onStart()V

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/l0;->onStop()V

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p1, p2}, Lorg/maplibre/android/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->getMapAsync(Lorg/maplibre/android/maps/OnMapReadyCallback;)V

    iget-object p1, p0, Lorg/maplibre/android/maps/SupportMapFragment;->mapViewReadyCallback:Lorg/maplibre/android/maps/MapFragment$OnMapViewReadyCallback;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/SupportMapFragment;->map:Lorg/maplibre/android/maps/MapView;

    invoke-interface {p1, p0}, Lorg/maplibre/android/maps/MapFragment$OnMapViewReadyCallback;->onMapViewReady(Lorg/maplibre/android/maps/MapView;)V

    :cond_0
    return-void
.end method
