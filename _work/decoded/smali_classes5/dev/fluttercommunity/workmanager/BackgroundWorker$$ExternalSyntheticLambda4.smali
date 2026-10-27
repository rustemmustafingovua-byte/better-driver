.class public final synthetic Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$1:Ldev/fluttercommunity/workmanager/BackgroundWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda4;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda4;->f$1:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda4;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda4;->f$1:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    invoke-static {v0, v1, p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->$r8$lambda$Zlg9N8NfMcT44KGxE_mOzY9p6XQ(Lcom/google/common/util/concurrent/ListenableFuture;Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
