.class public final synthetic Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;->$r8$lambda$Q_T5yA-yfgW6AtuoDKei3PJ9xmk(Ljava/io/File;Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
