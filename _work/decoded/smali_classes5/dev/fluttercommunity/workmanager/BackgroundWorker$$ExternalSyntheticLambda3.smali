.class public final synthetic Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/workmanager/BackgroundWorker;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda3;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iput p2, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda3;->f$0:Ldev/fluttercommunity/workmanager/BackgroundWorker;

    iget v1, p0, Ldev/fluttercommunity/workmanager/BackgroundWorker$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Lkotlin/Result;

    invoke-static {v0, v1, p1}, Ldev/fluttercommunity/workmanager/BackgroundWorker;->$r8$lambda$Zn0JWykyWPIkkUwcQ9mc89Us5Yw(Ldev/fluttercommunity/workmanager/BackgroundWorker;ILkotlin/Result;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
