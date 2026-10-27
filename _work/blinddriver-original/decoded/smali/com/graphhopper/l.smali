.class public final synthetic Lcom/graphhopper/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/l;->a:I

    iput-object p1, p0, Lcom/graphhopper/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/l;->a:I

    iget-object p0, p0, Lcom/graphhopper/l;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/routing/lm/PrepareLandmarks;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->n(Ljava/lang/String;Lcom/graphhopper/routing/lm/PrepareLandmarks;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->A(Ljava/lang/String;Lcom/graphhopper/routing/lm/LandmarkStorage;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
