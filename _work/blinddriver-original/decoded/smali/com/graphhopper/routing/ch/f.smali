.class public final synthetic Lcom/graphhopper/routing/ch/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$PrepareShortcutHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/ch/f;->a:I

    iput-object p1, p0, Lcom/graphhopper/routing/ch/f;->b:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleShortcut(IIDIIII)V
    .locals 11

    iget v0, p0, Lcom/graphhopper/routing/ch/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/f;->b:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->b(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;IIDIIII)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/graphhopper/routing/ch/f;->b:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->a(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;IIDIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
