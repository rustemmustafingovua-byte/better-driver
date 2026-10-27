.class public final synthetic Lcom/graphhopper/reader/osm/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/carrotsearch/hppc/x;


# direct methods
.method public synthetic constructor <init>(Lcom/carrotsearch/hppc/x;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/reader/osm/t;->a:I

    iput-object p1, p0, Lcom/graphhopper/reader/osm/t;->b:Lcom/carrotsearch/hppc/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/reader/osm/t;->a:I

    iget-object p0, p0, Lcom/graphhopper/reader/osm/t;->b:Lcom/carrotsearch/hppc/x;

    check-cast p1, Ln5/a;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->i(Lcom/carrotsearch/hppc/x;Ln5/a;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->e(Lcom/carrotsearch/hppc/x;Ln5/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
