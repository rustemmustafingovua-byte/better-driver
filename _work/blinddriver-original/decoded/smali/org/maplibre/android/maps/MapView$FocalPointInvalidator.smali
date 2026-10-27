.class Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/FocalPointChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FocalPointInvalidator"
.end annotation


# instance fields
.field private final focalPointChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/FocalPointChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method private constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->focalPointChangeListeners:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;-><init>(Lorg/maplibre/android/maps/MapView;)V

    return-void
.end method


# virtual methods
.method public addListener(Lorg/maplibre/android/maps/FocalPointChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->focalPointChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFocalPointChanged(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->setFocalPoint(Landroid/graphics/PointF;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->focalPointChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/FocalPointChangeListener;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/FocalPointChangeListener;->onFocalPointChanged(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    return-void
.end method
