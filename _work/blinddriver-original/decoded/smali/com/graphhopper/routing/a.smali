.class public final synthetic Lcom/graphhopper/routing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/CHEdgeFilter;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lcom/graphhopper/routing/AbstractBidirCHAlgo;

.field public final synthetic n:Lcom/graphhopper/storage/CHEdgeFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/AbstractBidirCHAlgo;Lcom/graphhopper/storage/CHEdgeFilter;I)V
    .locals 0

    iput p3, p0, Lcom/graphhopper/routing/a;->l:I

    iput-object p1, p0, Lcom/graphhopper/routing/a;->m:Lcom/graphhopper/routing/AbstractBidirCHAlgo;

    iput-object p2, p0, Lcom/graphhopper/routing/a;->n:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/a;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/graphhopper/routing/a;->m:Lcom/graphhopper/routing/AbstractBidirCHAlgo;

    iget-object p0, p0, Lcom/graphhopper/routing/a;->n:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->a(Lcom/graphhopper/routing/AbstractBidirCHAlgo;Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/graphhopper/routing/a;->m:Lcom/graphhopper/routing/AbstractBidirCHAlgo;

    iget-object p0, p0, Lcom/graphhopper/routing/a;->n:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->c(Lcom/graphhopper/routing/AbstractBidirCHAlgo;Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
