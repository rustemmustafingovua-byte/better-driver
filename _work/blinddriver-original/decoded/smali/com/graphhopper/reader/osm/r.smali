.class public final synthetic Lcom/graphhopper/reader/osm/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/carrotsearch/hppc/x;


# direct methods
.method public synthetic constructor <init>(Lcom/carrotsearch/hppc/x;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/reader/osm/r;->a:I

    iput-object p1, p0, Lcom/graphhopper/reader/osm/r;->b:Lcom/carrotsearch/hppc/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/reader/osm/r;->a:I

    iget-object p0, p0, Lcom/graphhopper/reader/osm/r;->b:Lcom/carrotsearch/hppc/x;

    check-cast p1, Lcom/carrotsearch/hppc/x;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->b(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->a(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
