.class public final synthetic Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda0;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda0;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    invoke-static {v0, p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->$r8$lambda$D62eDO2HRL3cet3wD1-B0plHmL8(Ldev/fluttercommunity/workmanager/BackgroundWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
