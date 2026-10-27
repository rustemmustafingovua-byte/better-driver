.class public final synthetic Lcom/graphhopper/routing/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

.field public final synthetic b:D

.field public final synthetic c:Lcom/graphhopper/routing/util/i;

.field public final synthetic d:D

.field public final synthetic e:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;DLcom/graphhopper/routing/util/i;D[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/j;->a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-wide p2, p0, Lcom/graphhopper/routing/util/j;->b:D

    iput-object p4, p0, Lcom/graphhopper/routing/util/j;->c:Lcom/graphhopper/routing/util/i;

    iput-wide p5, p0, Lcom/graphhopper/routing/util/j;->d:D

    iput-object p7, p0, Lcom/graphhopper/routing/util/j;->e:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    move-object v7, p1

    check-cast v7, Lcom/graphhopper/routing/util/RoadDensityCalculator;

    move-object v8, p2

    check-cast v8, Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v0, p0, Lcom/graphhopper/routing/util/j;->a:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iget-wide v1, p0, Lcom/graphhopper/routing/util/j;->b:D

    iget-object v3, p0, Lcom/graphhopper/routing/util/j;->c:Lcom/graphhopper/routing/util/i;

    iget-wide v4, p0, Lcom/graphhopper/routing/util/j;->d:D

    iget-object v6, p0, Lcom/graphhopper/routing/util/j;->e:[Z

    invoke-static/range {v0 .. v8}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->a(Lcom/graphhopper/routing/ev/EnumEncodedValue;DLcom/graphhopper/routing/util/i;D[ZLcom/graphhopper/routing/util/RoadDensityCalculator;Lcom/graphhopper/util/EdgeIteratorState;)V

    return-void
.end method
