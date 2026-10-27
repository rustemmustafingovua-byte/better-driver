.class public final synthetic Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    iput-object p3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$2:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iput-boolean p4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$2:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget-boolean v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda4;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->$r8$lambda$c1D2-5IQ5HjjX9G-NL_yKXV8Vxw(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V

    return-void
.end method
