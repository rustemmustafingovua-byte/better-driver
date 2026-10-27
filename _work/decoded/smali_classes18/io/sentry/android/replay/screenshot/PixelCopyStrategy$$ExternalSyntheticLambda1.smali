.class public final synthetic Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

.field public final synthetic f$1:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$1:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    iput p3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    iput-object p6, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$5:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iput-boolean p7, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$1:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    iget v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    iget-object v5, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$5:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget-boolean v6, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda1;->f$6:Z

    invoke-static/range {v0 .. v6}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->$r8$lambda$ZoKkpjJH0B8rdutZStRIL1j-qpI(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Z)V

    return-void
.end method
