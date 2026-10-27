.class public final synthetic Lcom/graphhopper/routing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/CHEdgeFilter;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/c;->l:I

    iput-object p1, p0, Lcom/graphhopper/routing/c;->m:Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/c;->l:I

    iget-object p0, p0, Lcom/graphhopper/routing/c;->m:Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;->e(Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;->f(Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
