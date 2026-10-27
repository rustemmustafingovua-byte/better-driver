.class public interface abstract Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowFrameMetricsManager"
.end annotation


# virtual methods
.method public addOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "frameMetricsAvailableListener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 520
    if-nez p2, :cond_0

    .line 521
    return-void

    .line 523
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 524
    return-void
.end method

.method public removeOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "frameMetricsAvailableListener"    # Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 530
    if-nez p2, :cond_0

    .line 531
    return-void

    .line 533
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 534
    return-void
.end method
