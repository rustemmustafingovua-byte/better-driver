.class Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GesturesManagerInteractionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method private constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;-><init>(Lorg/maplibre/android/maps/MapView;)V

    return-void
.end method


# virtual methods
.method public cancelAllVelocityAnimations()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimators()V

    return-void
.end method

.method public getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object p0

    return-object p0
.end method

.method public onAddFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->addOnFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V

    return-void
.end method

.method public onAddMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->addOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V

    return-void
.end method

.method public onAddMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->addOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V

    return-void
.end method

.method public onAddMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->addOnMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V

    return-void
.end method

.method public onAddRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->addOnRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V

    return-void
.end method

.method public onAddScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->addOnScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V

    return-void
.end method

.method public onAddShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->addShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V

    return-void
.end method

.method public onRemoveFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->removeOnFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V

    return-void
.end method

.method public onRemoveMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->removeOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V

    return-void
.end method

.method public onRemoveMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->removeOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V

    return-void
.end method

.method public onRemoveMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->removeOnMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V

    return-void
.end method

.method public onRemoveRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->removeOnRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V

    return-void
.end method

.method public onRemoveScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->removeOnScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V

    return-void
.end method

.method public onRemoveShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->removeShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V

    return-void
.end method

.method public setGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/maplibre/android/maps/MapGestureDetector;->setGesturesManager(Landroid/content/Context;Lorg/maplibre/android/gestures/AndroidGesturesManager;ZZ)V

    return-void
.end method
