.class public final synthetic Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$1:Ldev/fluttercommunity/workmanager/BackgroundWorker;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$1:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iput-object p3, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$1:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda5;->f$3:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0, v1, v2, v3}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->$r8$lambda$grnK6ySq3i0vOK0VbNDpwiIgeHk(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
