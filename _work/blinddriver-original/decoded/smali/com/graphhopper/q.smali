.class public final synthetic Lcom/graphhopper/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/GraphHopperConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/GraphHopperConfig;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/q;->a:I

    iput-object p1, p0, Lcom/graphhopper/q;->b:Lcom/graphhopper/GraphHopperConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/q;->a:I

    iget-object p0, p0, Lcom/graphhopper/q;->b:Lcom/graphhopper/GraphHopperConfig;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/config/LMProfile;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopperConfig;->a(Lcom/graphhopper/GraphHopperConfig;Lcom/graphhopper/config/LMProfile;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/graphhopper/config/CHProfile;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopperConfig;->b(Lcom/graphhopper/GraphHopperConfig;Lcom/graphhopper/config/CHProfile;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/graphhopper/config/Profile;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopperConfig;->c(Lcom/graphhopper/GraphHopperConfig;Lcom/graphhopper/config/Profile;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
