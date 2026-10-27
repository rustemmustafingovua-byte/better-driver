.class public final synthetic Lcom/graphhopper/routing/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/b;
.implements Lg3/j;


# instance fields
.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/graphhopper/routing/f;->l:Ljava/lang/Object;

    iput-object p2, p0, Lcom/graphhopper/routing/f;->m:Ljava/lang/Object;

    iput-object p3, p0, Lcom/graphhopper/routing/f;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ly8/h;Lu9/u;Li9/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/f;->l:Ljava/lang/Object;

    iput-object p2, p0, Lcom/graphhopper/routing/f;->m:Ljava/lang/Object;

    check-cast p3, La9/i;

    iput-object p3, p0, Lcom/graphhopper/routing/f;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(ILjava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/f;->l:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/AlternativeRouteCH;

    iget-object v1, p0, Lcom/graphhopper/routing/f;->m:Ljava/lang/Object;

    check-cast v1, Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/f;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p2, Lcom/graphhopper/routing/SPTEntry;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRouteCH;->e(Lcom/graphhopper/routing/AlternativeRouteCH;Lcom/graphhopper/routing/Path;Ljava/util/ArrayList;ILcom/graphhopper/routing/SPTEntry;)Z

    move-result p0

    return p0
.end method

.method public c(Lg3/i;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/f;->l:Ljava/lang/Object;

    check-cast v0, Ly8/h;

    iget-object v1, p0, Lcom/graphhopper/routing/f;->m:Ljava/lang/Object;

    check-cast v1, Lu9/u;

    iget-object p0, p0, Lcom/graphhopper/routing/f;->n:Ljava/lang/Object;

    check-cast p0, La9/i;

    sget-object v2, Lu9/q;->m:Lu9/q;

    invoke-interface {v0, v2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v2

    check-cast v2, Lu9/v0;

    new-instance v3, Landroidx/lifecycle/f0;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v2}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    iget-object v2, p1, Lg3/i;->c:Lg3/n;

    if-eqz v2, :cond_0

    sget-object v4, Lx4/k;->l:Lx4/k;

    invoke-virtual {v2, v3, v4}, Lg3/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    invoke-static {v0}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v0

    new-instance v2, Landroidx/lifecycle/m0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Landroidx/lifecycle/m0;-><init>(Li9/e;Lg3/i;Ly8/c;)V

    const/4 p0, 0x1

    invoke-static {v0, v3, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    return-object p0
.end method
