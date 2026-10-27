.class Lio/sentry/android/core/internal/util/FirstDrawDoneListener$2;
.super Ljava/lang/Object;
.source "FirstDrawDoneListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/sentry/android/core/internal/util/FirstDrawDoneListener;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/android/core/internal/util/FirstDrawDoneListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$2;->this$0:Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 119
    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 120
    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$2;->this$0:Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 121
    return-void
.end method
