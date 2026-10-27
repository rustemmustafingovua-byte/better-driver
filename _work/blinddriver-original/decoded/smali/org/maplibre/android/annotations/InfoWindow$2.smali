.class Lorg/maplibre/android/annotations/InfoWindow$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/annotations/InfoWindow;->initialize(Landroid/view/View;Lorg/maplibre/android/maps/MapLibreMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/annotations/InfoWindow;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/annotations/InfoWindow;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/annotations/InfoWindow$2;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/annotations/InfoWindow$2;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-static {p1}, Lorg/maplibre/android/annotations/InfoWindow;->a(Lorg/maplibre/android/annotations/InfoWindow;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getOnInfoWindowLongClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/annotations/InfoWindow$2;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/InfoWindow;->getBoundMarker()Lorg/maplibre/android/annotations/Marker;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;->onInfoWindowLongClick(Lorg/maplibre/android/annotations/Marker;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
