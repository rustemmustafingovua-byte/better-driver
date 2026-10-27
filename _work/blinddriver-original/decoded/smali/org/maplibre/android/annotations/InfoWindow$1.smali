.class Lorg/maplibre/android/annotations/InfoWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lorg/maplibre/android/annotations/InfoWindow$1;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/maplibre/android/annotations/InfoWindow$1;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-static {p1}, Lorg/maplibre/android/annotations/InfoWindow;->a(Lorg/maplibre/android/annotations/InfoWindow;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getOnInfoWindowClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/annotations/InfoWindow$1;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/InfoWindow;->getBoundMarker()Lorg/maplibre/android/annotations/Marker;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;->onInfoWindowClick(Lorg/maplibre/android/annotations/Marker;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/annotations/InfoWindow$1;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-static {p0}, Lorg/maplibre/android/annotations/InfoWindow;->d(Lorg/maplibre/android/annotations/InfoWindow;)V

    :cond_1
    return-void
.end method
