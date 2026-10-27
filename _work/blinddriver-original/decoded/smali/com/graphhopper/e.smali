.class public final synthetic Lcom/graphhopper/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/e;->a:I

    iput-object p2, p0, Lcom/graphhopper/e;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/graphhopper/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/graphhopper/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/GraphHopper;

    iget-object p0, p0, Lcom/graphhopper/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/config/LMProfile;

    check-cast p1, Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/GraphHopper;->m(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/config/LMProfile;Lcom/graphhopper/routing/lm/LandmarkStorage;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/graphhopper/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/graphhopper/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/GraphHopper;->x(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/graphhopper/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/graphhopper/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/GraphHopper;->r(Ljava/util/Map;Ljava/util/Set;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/graphhopper/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/util/JsonFeatureCollection;

    iget-object p0, p0, Lcom/graphhopper/e;->c:Ljava/lang/Object;

    check-cast p0, Lb6/c0;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p0, p1}, Lcom/graphhopper/GraphHopper;->q(Lcom/graphhopper/util/JsonFeatureCollection;Lb6/c0;Ljava/nio/file/Path;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
