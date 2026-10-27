.class public final synthetic Lcom/graphhopper/routing/ch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;
.implements Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/a;->l:I

    iput-object p2, p0, Lcom/graphhopper/routing/ch/a;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/a;->m:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public visit(Lcom/graphhopper/util/EdgeIteratorState;ZI)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ch/a;->l:I

    iget-object p0, p0, Lcom/graphhopper/routing/ch/a;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->a(Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;Lcom/graphhopper/util/EdgeIteratorState;ZI)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->a(Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;Lcom/graphhopper/util/EdgeIteratorState;ZI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
