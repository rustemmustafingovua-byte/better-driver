.class public final synthetic Lcom/graphhopper/routing/lm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/graphhopper/routing/lm/LMPreparationHandler;

.field public final synthetic b:Lcom/graphhopper/storage/BaseGraph;

.field public final synthetic c:Lcom/graphhopper/routing/ev/EncodedValueLookup;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/lm/LMPreparationHandler;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/a;->a:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/a;->b:Lcom/graphhopper/storage/BaseGraph;

    iput-object p3, p0, Lcom/graphhopper/routing/lm/a;->c:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    iput-object p4, p0, Lcom/graphhopper/routing/lm/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/lm/a;->d:Ljava/util/List;

    check-cast p1, Lcom/graphhopper/routing/lm/LMConfig;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/a;->c:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    iget-object v2, p0, Lcom/graphhopper/routing/lm/a;->a:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    iget-object p0, p0, Lcom/graphhopper/routing/lm/a;->b:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {v1, p1, v2, p0, v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->c(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;Lcom/graphhopper/routing/lm/LMPreparationHandler;Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method
