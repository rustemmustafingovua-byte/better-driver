.class public final synthetic Lb/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/b;
.implements Lq5/b;
.implements Lcom/graphhopper/routing/weighting/custom/NameValidator;
.implements Lo5/b;
.implements Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;
.implements Lcom/graphhopper/routing/weighting/custom/ClassHelper;
.implements Lcom/graphhopper/routing/WeightingFactory;
.implements Lq4/a;


# instance fields
.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/e0;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 0

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Lcom/carrotsearch/hppc/t0;

    invoke-static {p0, p1, p2}, Lcom/graphhopper/GraphHopper;->z(Lcom/carrotsearch/hppc/t0;II)I

    move-result p0

    return p0
.end method

.method public accept(ILcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->b(Lcom/graphhopper/routing/weighting/Weighting;ILcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public apply(ILjava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    check-cast p2, Lcom/graphhopper/routing/SPTEntry;

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRouteEdgeCH;->j(Ljava/util/HashMap;ILcom/graphhopper/routing/SPTEntry;)Z

    move-result p0

    return p0
.end method

.method public b(Lf8/v3;)Lq4/b;
    .locals 6

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    iget-object p0, p1, Lf8/v3;->o:Ljava/lang/Comparable;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    iget-object p0, p1, Lf8/v3;->p:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Ld1/c0;

    const-string p0, "callback"

    invoke-static {v3, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    new-instance v0, Lr4/g;

    const/4 v4, 0x1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lr4/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ld1/c0;ZZ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 2

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Li9/e;

    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld1/p;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p0}, Lu8/m;->o0(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Ld1/p;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/PhoneGraphHopper;

    invoke-static {p0, p1, p2, p3}, Lua/nav/routing/PhoneGraphHopper;->J(Lua/nav/routing/PhoneGraphHopper;Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Function;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->a(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lb/e0;->l:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/GraphHopper;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->i(Lcom/graphhopper/GraphHopper;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
