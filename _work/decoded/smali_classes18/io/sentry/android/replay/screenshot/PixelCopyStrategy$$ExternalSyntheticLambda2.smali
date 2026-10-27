.class public final synthetic Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$2:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$7:Landroid/view/View;

.field public final synthetic f$8:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$2:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    iput p4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$5:I

    iput-object p7, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$6:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p8, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$7:Landroid/view/View;

    iput-object p9, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$8:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iput p10, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$9:I

    iput p11, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$10:I

    iput-boolean p12, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$11:Z

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 13

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$2:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    iget v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$5:I

    iget-object v6, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$6:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v7, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$7:Landroid/view/View;

    iget-object v8, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$8:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget v9, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$9:I

    iget v10, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$10:I

    iget-boolean v11, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$$ExternalSyntheticLambda2;->f$11:Z

    move v12, p1

    invoke-static/range {v0 .. v12}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->$r8$lambda$BXZ8lYuGk-6VivjdpAXe_-mPLGs(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;IIZI)V

    return-void
.end method
