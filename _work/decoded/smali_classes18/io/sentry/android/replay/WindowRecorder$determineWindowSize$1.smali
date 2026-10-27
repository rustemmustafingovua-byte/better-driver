.class public final Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;
.super Ljava/lang/Object;
.source "WindowRecorder.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/WindowRecorder;->determineWindowSize(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "io/sentry/android/replay/WindowRecorder$determineWindowSize$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "onPreDraw",
        "",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $root:Landroid/view/View;

.field final synthetic this$0:Lio/sentry/android/replay/WindowRecorder;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/WindowRecorder;Landroid/view/View;)V
    .locals 0
    .param p1, "$receiver"    # Lio/sentry/android/replay/WindowRecorder;
    .param p2, "$root"    # Landroid/view/View;

    iput-object p1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->this$0:Lio/sentry/android/replay/WindowRecorder;

    iput-object p2, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 193
    iget-object v0, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->this$0:Lio/sentry/android/replay/WindowRecorder;

    invoke-static {v0}, Lio/sentry/android/replay/WindowRecorder;->access$getRootViews$p(Lio/sentry/android/replay/WindowRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 195
    .local v0, "currentRoot":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    move-object v3, p0

    check-cast v3, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {v1, v3}, Lio/sentry/android/replay/util/ViewsKt;->removeOnPreDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 197
    return v2

    .line 199
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-static {v1}, Lio/sentry/android/replay/util/ViewsKt;->hasSize(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    move-object v3, p0

    check-cast v3, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {v1, v3}, Lio/sentry/android/replay/util/ViewsKt;->removeOnPreDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 201
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->this$0:Lio/sentry/android/replay/WindowRecorder;

    invoke-static {v3}, Lio/sentry/android/replay/WindowRecorder;->access$getLastKnownWindowSize$p(Lio/sentry/android/replay/WindowRecorder;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->this$0:Lio/sentry/android/replay/WindowRecorder;

    invoke-static {v3}, Lio/sentry/android/replay/WindowRecorder;->access$getLastKnownWindowSize$p(Lio/sentry/android/replay/WindowRecorder;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v1, v3, :cond_3

    .line 202
    :cond_2
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->this$0:Lio/sentry/android/replay/WindowRecorder;

    invoke-static {v1}, Lio/sentry/android/replay/WindowRecorder;->access$getLastKnownWindowSize$p(Lio/sentry/android/replay/WindowRecorder;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 203
    iget-object v1, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->this$0:Lio/sentry/android/replay/WindowRecorder;

    invoke-static {v1}, Lio/sentry/android/replay/WindowRecorder;->access$getWindowCallback$p(Lio/sentry/android/replay/WindowRecorder;)Lio/sentry/android/replay/WindowCallback;

    move-result-object v1

    iget-object v3, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lio/sentry/android/replay/WindowRecorder$determineWindowSize$1;->$root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lio/sentry/android/replay/WindowCallback;->onWindowSizeChanged(II)V

    .line 206
    :cond_3
    return v2
.end method
