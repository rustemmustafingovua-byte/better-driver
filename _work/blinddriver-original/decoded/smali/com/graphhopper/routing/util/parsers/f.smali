.class public final synthetic Lcom/graphhopper/routing/util/parsers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/graphhopper/storage/BaseGraph;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/storage/BaseGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/f;->a:Lcom/graphhopper/storage/BaseGraph;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/f;->a:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->e(Lcom/graphhopper/storage/BaseGraph;I)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0
.end method
