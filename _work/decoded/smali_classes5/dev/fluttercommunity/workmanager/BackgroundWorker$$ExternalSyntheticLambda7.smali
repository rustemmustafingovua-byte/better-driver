.class public final synthetic Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

.field public final synthetic f$1:Lio/flutter/embedding/engine/loader/FlutterLoader;


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lio/flutter/embedding/engine/loader/FlutterLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda7;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iput-object p2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda7;->f$1:Lio/flutter/embedding/engine/loader/FlutterLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda7;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda7;->f$1:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0, v1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->$r8$lambda$DtFAWSvur9dLU6wqkI6ABQw42xo(Ldev/fluttercommunity/workmanager/BackgroundWorker;Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    return-void
.end method
