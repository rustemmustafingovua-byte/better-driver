.class public final synthetic Lcom/graphhopper/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/routing/util/EncodingManager$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/util/EncodingManager$Builder;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/k;->a:I

    iput-object p1, p0, Lcom/graphhopper/k;->b:Lcom/graphhopper/routing/util/EncodingManager$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/k;->a:I

    iget-object p0, p0, Lcom/graphhopper/k;->b:Lcom/graphhopper/routing/util/EncodingManager$Builder;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->v(Lcom/graphhopper/routing/util/EncodingManager$Builder;Ljava/util/Map$Entry;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/EncodingManager$Builder;->add(Lcom/graphhopper/routing/ev/EncodedValue;)Lcom/graphhopper/routing/util/EncodingManager$Builder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
