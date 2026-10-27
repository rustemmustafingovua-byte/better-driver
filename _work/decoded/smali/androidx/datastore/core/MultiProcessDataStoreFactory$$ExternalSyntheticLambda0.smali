.class public final synthetic Landroidx/datastore/core/MultiProcessDataStoreFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessDataStoreFactory$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/datastore/core/MultiProcessDataStoreFactory$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Landroidx/datastore/core/MultiProcessDataStoreFactory;->$r8$lambda$kfuh0IboXUKZPktC4xIXMLSY2xU(Lkotlinx/coroutines/CoroutineScope;Ljava/io/File;)Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object p1

    return-object p1
.end method
