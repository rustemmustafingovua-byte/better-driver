.class public final synthetic Lcom/graphhopper/routing/subnetwork/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/graphhopper/routing/subnetwork/a;->a:I

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/graphhopper/routing/subnetwork/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/storage/Graph;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ThreadLocal;

    invoke-static {v0, p1, v1, p0}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->a(Lcom/graphhopper/storage/Graph;ILjava/util/function/BiConsumer;Ljava/lang/ThreadLocal;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p1, v0, p0, v1}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->a(ILcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
