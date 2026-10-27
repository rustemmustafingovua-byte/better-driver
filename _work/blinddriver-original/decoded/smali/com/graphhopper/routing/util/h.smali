.class public final synthetic Lcom/graphhopper/routing/util/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/graphhopper/storage/Graph;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/storage/Graph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/h;->a:Lcom/graphhopper/storage/Graph;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/h;->a:Lcom/graphhopper/storage/Graph;

    invoke-static {p0}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->c(Lcom/graphhopper/storage/Graph;)Lcom/graphhopper/routing/util/RoadDensityCalculator;

    move-result-object p0

    return-object p0
.end method
