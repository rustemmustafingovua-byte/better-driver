.class Lorg/maplibre/android/maps/widgets/CompassView$1;
.super Lq3/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/widgets/CompassView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/widgets/CompassView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/widgets/CompassView;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/widgets/CompassView$1;->this$0:Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/maplibre/android/maps/widgets/CompassView$1;->this$0:Lorg/maplibre/android/maps/widgets/CompassView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p0, Lorg/maplibre/android/maps/widgets/CompassView$1;->this$0:Lorg/maplibre/android/maps/widgets/CompassView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lorg/maplibre/android/maps/widgets/CompassView$1;->this$0:Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->resetAnimation()V

    return-void
.end method
