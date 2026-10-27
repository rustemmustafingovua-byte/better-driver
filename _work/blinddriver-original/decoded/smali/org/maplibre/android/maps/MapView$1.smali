.class Lorg/maplibre/android/maps/MapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/FocalPointChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/MapView;->createFocalPointChangeListener()Lorg/maplibre/android/maps/FocalPointChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$1;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocalPointChanged(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$1;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p0, p1}, Lorg/maplibre/android/maps/MapView;->g(Lorg/maplibre/android/maps/MapView;Landroid/graphics/PointF;)V

    return-void
.end method
