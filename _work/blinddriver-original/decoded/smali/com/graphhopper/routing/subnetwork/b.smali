.class public final synthetic Lcom/graphhopper/routing/subnetwork/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/subnetwork/b;->l:I

    iput-object p3, p0, Lcom/graphhopper/routing/subnetwork/b;->n:Ljava/lang/Object;

    iput p1, p0, Lcom/graphhopper/routing/subnetwork/b;->m:I

    iput-object p4, p0, Lcom/graphhopper/routing/subnetwork/b;->o:Ljava/lang/Object;

    iput-object p5, p0, Lcom/graphhopper/routing/subnetwork/b;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/b;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/b;->n:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/storage/Graph;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/b;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/b;->p:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ThreadLocal;

    iget p0, p0, Lcom/graphhopper/routing/subnetwork/b;->m:I

    invoke-static {v0, p0, v1, v2}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->b(Lcom/graphhopper/storage/Graph;ILjava/util/function/BiConsumer;Ljava/lang/ThreadLocal;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/b;->n:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/b;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/b;->p:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget p0, p0, Lcom/graphhopper/routing/subnetwork/b;->m:I

    invoke-static {p0, v0, v2, v1}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->c(ILcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
