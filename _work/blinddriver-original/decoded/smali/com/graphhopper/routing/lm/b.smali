.class public final synthetic Lcom/graphhopper/routing/lm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Lcom/graphhopper/routing/lm/PrepareLandmarks;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Z

.field public final synthetic q:Lcom/graphhopper/storage/StorableProperties;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;Lcom/graphhopper/routing/lm/PrepareLandmarks;Ljava/lang/String;ZLcom/graphhopper/storage/StorableProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/lm/b;->l:I

    iput-object p2, p0, Lcom/graphhopper/routing/lm/b;->m:Ljava/util/List;

    iput-object p3, p0, Lcom/graphhopper/routing/lm/b;->n:Lcom/graphhopper/routing/lm/PrepareLandmarks;

    iput-object p4, p0, Lcom/graphhopper/routing/lm/b;->o:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/graphhopper/routing/lm/b;->p:Z

    iput-object p6, p0, Lcom/graphhopper/routing/lm/b;->q:Lcom/graphhopper/storage/StorableProperties;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v4, p0, Lcom/graphhopper/routing/lm/b;->p:Z

    iget-object v5, p0, Lcom/graphhopper/routing/lm/b;->q:Lcom/graphhopper/storage/StorableProperties;

    iget v0, p0, Lcom/graphhopper/routing/lm/b;->l:I

    iget-object v1, p0, Lcom/graphhopper/routing/lm/b;->m:Ljava/util/List;

    iget-object v2, p0, Lcom/graphhopper/routing/lm/b;->n:Lcom/graphhopper/routing/lm/PrepareLandmarks;

    iget-object v3, p0, Lcom/graphhopper/routing/lm/b;->o:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->b(ILjava/util/List;Lcom/graphhopper/routing/lm/PrepareLandmarks;Ljava/lang/String;ZLcom/graphhopper/storage/StorableProperties;)V

    return-void
.end method
