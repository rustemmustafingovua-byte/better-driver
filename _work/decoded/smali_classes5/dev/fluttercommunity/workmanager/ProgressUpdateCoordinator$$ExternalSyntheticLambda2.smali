.class public final synthetic Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/WorkManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/WorkManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda2;->f$0:Landroidx/work/WorkManager;

    iput-object p2, p0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda2;->f$0:Landroidx/work/WorkManager;

    iget-object v1, p0, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Ldev/fluttercommunity/workmanager/ProgressUpdateCoordinator;->$r8$lambda$c2kT5syq1E7C3K8nPT-B6vNgqgc(Landroidx/work/WorkManager;Ljava/lang/String;)V

    return-void
.end method
