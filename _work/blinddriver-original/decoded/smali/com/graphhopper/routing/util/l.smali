.class public final synthetic Lcom/graphhopper/routing/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:D

.field public final synthetic b:Lcom/graphhopper/routing/util/k;

.field public final synthetic c:[Z

.field public final synthetic d:D


# direct methods
.method public synthetic constructor <init>(DLcom/graphhopper/routing/util/k;[ZD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/graphhopper/routing/util/l;->a:D

    iput-object p3, p0, Lcom/graphhopper/routing/util/l;->b:Lcom/graphhopper/routing/util/k;

    iput-object p4, p0, Lcom/graphhopper/routing/util/l;->c:[Z

    iput-wide p5, p0, Lcom/graphhopper/routing/util/l;->d:D

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v6, p1

    check-cast v6, Lcom/graphhopper/routing/util/RoadDensityCalculator;

    move-object v7, p2

    check-cast v7, Lcom/graphhopper/util/EdgeIteratorState;

    iget-wide v0, p0, Lcom/graphhopper/routing/util/l;->a:D

    iget-object v2, p0, Lcom/graphhopper/routing/util/l;->b:Lcom/graphhopper/routing/util/k;

    iget-object v3, p0, Lcom/graphhopper/routing/util/l;->c:[Z

    iget-wide v4, p0, Lcom/graphhopper/routing/util/l;->d:D

    invoke-static/range {v0 .. v7}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->c(DLcom/graphhopper/routing/util/k;[ZDLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V

    return-void
.end method
