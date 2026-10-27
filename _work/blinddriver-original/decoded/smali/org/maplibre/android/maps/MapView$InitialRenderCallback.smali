.class Lorg/maplibre/android/maps/MapView$InitialRenderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitialRenderCallback"
.end annotation


# instance fields
.field private renderCount:I

.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->addOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/maps/MapView$InitialRenderCallback;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->onDestroy()V

    return-void
.end method

.method private onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapView;->removeOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V

    return-void
.end method


# virtual methods
.method public onDidFinishRenderingFrame(ZLorg/maplibre/android/maps/RenderingStats;)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {p1}, Lorg/maplibre/android/maps/MapView;->f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->renderCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->renderCount:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->removeOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V

    :cond_0
    return-void
.end method
