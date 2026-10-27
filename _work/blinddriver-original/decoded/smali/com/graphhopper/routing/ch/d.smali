.class public final synthetic Lcom/graphhopper/routing/ch/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$PrepareShortcutHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/routing/ch/d;->a:I

    iput-object p1, p0, Lcom/graphhopper/routing/ch/d;->b:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleShortcut(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ch/d;->a:I

    iget-object p0, p0, Lcom/graphhopper/routing/ch/d;->b:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->a(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->b(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
