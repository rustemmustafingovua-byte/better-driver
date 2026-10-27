.class Lorg/maplibre/android/annotations/InfoWindow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/annotations/InfoWindow;
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

    iput-object p1, p0, Lorg/maplibre/android/annotations/InfoWindow$3;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/annotations/InfoWindow$3;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    iget-object v0, v0, Lorg/maplibre/android/annotations/InfoWindow;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lorg/maplibre/android/annotations/InfoWindow$3;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/maplibre/android/annotations/InfoWindow$3;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-static {v2}, Lorg/maplibre/android/annotations/InfoWindow;->b(Lorg/maplibre/android/annotations/InfoWindow;)F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lorg/maplibre/android/annotations/InfoWindow;->c(Lorg/maplibre/android/annotations/InfoWindow;F)V

    iget-object p0, p0, Lorg/maplibre/android/annotations/InfoWindow$3;->this$0:Lorg/maplibre/android/annotations/InfoWindow;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/InfoWindow;->update()V

    :cond_0
    return-void
.end method
