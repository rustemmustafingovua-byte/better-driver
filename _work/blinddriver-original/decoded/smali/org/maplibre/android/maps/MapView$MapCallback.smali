.class Lorg/maplibre/android/maps/MapView$MapCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;
.implements Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;
.implements Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;
.implements Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;
.implements Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;
.implements Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapCallback"
.end annotation


# instance fields
.field private final onMapReadyCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/OnMapReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 1

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->addOnDidFinishLoadingStyleListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;)V

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->addOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->addOnDidFinishLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;)V

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->addOnCameraIsChangingListener(Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;)V

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->addOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->addOnDidFailLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method private onMapReady()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/OnMapReadyCallback;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v2}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/maplibre/android/maps/OnMapReadyCallback;->onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addOnMapReadyCallback(Lorg/maplibre/android/maps/OnMapReadyCallback;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initialised()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->onPreMapReady()V

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReady()V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onPostMapReady()V

    return-void
.end method

.method public onCameraDidChange(Z)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onUpdateRegionChange()V

    :cond_0
    return-void
.end method

.method public onCameraIsChanging()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onUpdateRegionChange()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->onMapReadyCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapView;->removeOnDidFinishLoadingStyleListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapView;->removeOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapView;->removeOnDidFinishLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapView;->removeOnCameraIsChangingListener(Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapView;->removeOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapView;->removeOnDidFailLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method public onDidFailLoadingMap(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onFailLoadingStyle()V

    :cond_0
    return-void
.end method

.method public onDidFinishLoadingMap()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onUpdateRegionChange()V

    :cond_0
    return-void
.end method

.method public onDidFinishLoadingStyle()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onFinishLoadingStyle()V

    :cond_0
    return-void
.end method

.method public onDidFinishRenderingFrame(ZLorg/maplibre/android/maps/RenderingStats;)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$MapCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->onUpdateFullyRendered()V

    :cond_0
    return-void
.end method
