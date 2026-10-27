.class public final synthetic Lcom/graphhopper/reader/osm/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/reader/osm/WayToEdgeConverter;

.field public final synthetic c:I

.field public final synthetic d:Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/WayToEdgeConverter;ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;I)V
    .locals 0

    iput p4, p0, Lcom/graphhopper/reader/osm/u;->a:I

    iput-object p1, p0, Lcom/graphhopper/reader/osm/u;->b:Lcom/graphhopper/reader/osm/WayToEdgeConverter;

    iput p2, p0, Lcom/graphhopper/reader/osm/u;->c:I

    iput-object p3, p0, Lcom/graphhopper/reader/osm/u;->d:Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/graphhopper/reader/osm/u;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/u;->d:Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;

    check-cast p1, Ln5/a;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/u;->b:Lcom/graphhopper/reader/osm/WayToEdgeConverter;

    iget p0, p0, Lcom/graphhopper/reader/osm/u;->c:I

    invoke-static {v1, p0, v0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->d(Lcom/graphhopper/reader/osm/WayToEdgeConverter;ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/u;->d:Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;

    check-cast p1, Ln5/a;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/u;->b:Lcom/graphhopper/reader/osm/WayToEdgeConverter;

    iget p0, p0, Lcom/graphhopper/reader/osm/u;->c:I

    invoke-static {v1, p0, v0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->h(Lcom/graphhopper/reader/osm/WayToEdgeConverter;ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
