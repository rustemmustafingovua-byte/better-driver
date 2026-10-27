.class public final synthetic Lcom/graphhopper/routing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/d;->l:I

    iput-object p1, p0, Lcom/graphhopper/routing/d;->m:Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/d;->l:I

    iget-object p0, p0, Lcom/graphhopper/routing/d;->m:Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->b(Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->a(Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
