.class public final synthetic Lcom/graphhopper/routing/ch/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/graphhopper/storage/BaseGraph;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/c;->a:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/ch/c;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/c;->b:Ljava/util/Map;

    check-cast p1, Lcom/graphhopper/storage/CHConfig;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/c;->a:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {p0, p1, v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->c(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
