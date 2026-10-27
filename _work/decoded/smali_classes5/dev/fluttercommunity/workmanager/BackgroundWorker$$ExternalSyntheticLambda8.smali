.class public final synthetic Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iput-object p2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput p3, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda8;->f$2:I

    invoke-static {v0, v1, v2}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->$r8$lambda$wPkHRyRO7IeIaBbUQxHyqA4u51Y(Ldev/fluttercommunity/workmanager/BackgroundWorker;Ljava/lang/String;I)V

    return-void
.end method
