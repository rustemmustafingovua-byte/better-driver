.class public final synthetic Lcom/graphhopper/routing/ch/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Lcom/graphhopper/routing/ch/CHPreparationHandler;

.field public final synthetic m:Lcom/graphhopper/storage/CHConfig;

.field public final synthetic n:Lcom/graphhopper/storage/BaseGraph;

.field public final synthetic o:Ljava/util/Map;

.field public final synthetic p:Z

.field public final synthetic q:Lcom/graphhopper/storage/StorableProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationHandler;Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;ZLcom/graphhopper/storage/StorableProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/b;->l:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    iput-object p2, p0, Lcom/graphhopper/routing/ch/b;->m:Lcom/graphhopper/storage/CHConfig;

    iput-object p3, p0, Lcom/graphhopper/routing/ch/b;->n:Lcom/graphhopper/storage/BaseGraph;

    iput-object p4, p0, Lcom/graphhopper/routing/ch/b;->o:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/graphhopper/routing/ch/b;->p:Z

    iput-object p6, p0, Lcom/graphhopper/routing/ch/b;->q:Lcom/graphhopper/storage/StorableProperties;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v4, p0, Lcom/graphhopper/routing/ch/b;->p:Z

    iget-object v5, p0, Lcom/graphhopper/routing/ch/b;->q:Lcom/graphhopper/storage/StorableProperties;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/b;->l:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/b;->m:Lcom/graphhopper/storage/CHConfig;

    iget-object v2, p0, Lcom/graphhopper/routing/ch/b;->n:Lcom/graphhopper/storage/BaseGraph;

    iget-object v3, p0, Lcom/graphhopper/routing/ch/b;->o:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->a(Lcom/graphhopper/routing/ch/CHPreparationHandler;Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;ZLcom/graphhopper/storage/StorableProperties;)V

    return-void
.end method
