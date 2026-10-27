.class public final synthetic Lcom/graphhopper/routing/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/b;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/AlternativeRouteEdgeCH;

.field public final synthetic m:Ljava/util/HashMap;

.field public final synthetic n:Lcom/graphhopper/routing/Path;

.field public final synthetic o:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/AlternativeRouteEdgeCH;Ljava/util/HashMap;Lcom/graphhopper/routing/Path;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/g;->l:Lcom/graphhopper/routing/AlternativeRouteEdgeCH;

    iput-object p2, p0, Lcom/graphhopper/routing/g;->m:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/graphhopper/routing/g;->n:Lcom/graphhopper/routing/Path;

    iput-object p4, p0, Lcom/graphhopper/routing/g;->o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final apply(ILjava/lang/Object;)Z
    .locals 6

    iget-object v3, p0, Lcom/graphhopper/routing/g;->o:Ljava/util/ArrayList;

    move-object v5, p2

    check-cast v5, Lcom/graphhopper/routing/SPTEntry;

    iget-object v0, p0, Lcom/graphhopper/routing/g;->l:Lcom/graphhopper/routing/AlternativeRouteEdgeCH;

    iget-object v1, p0, Lcom/graphhopper/routing/g;->m:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/graphhopper/routing/g;->n:Lcom/graphhopper/routing/Path;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/graphhopper/routing/AlternativeRouteEdgeCH;->g(Lcom/graphhopper/routing/AlternativeRouteEdgeCH;Ljava/util/HashMap;Lcom/graphhopper/routing/Path;Ljava/util/ArrayList;ILcom/graphhopper/routing/SPTEntry;)Z

    move-result p0

    return p0
.end method
