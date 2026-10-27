.class public final Lp8/c;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lp8/d;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/util/Map;

.field public final synthetic o:Z

.field public final synthetic p:Li9/e;


# direct methods
.method public constructor <init>(Lp8/d;Ljava/lang/String;Ljava/util/Map;ZLi9/e;)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lp8/c;->l:Lp8/d;

    iput-object p2, p0, Lp8/c;->m:Ljava/lang/String;

    iput-object p3, p0, Lp8/c;->n:Ljava/util/Map;

    iput-boolean p4, p0, Lp8/c;->o:Z

    iput-object p5, p0, Lp8/c;->p:Li9/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v1, p0, Lp8/c;->l:Lp8/d;

    iget-object v2, v1, Lp8/d;->b:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lp8/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp8/g;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lp8/b;

    iget-object v4, p0, Lp8/c;->n:Ljava/util/Map;

    iget-boolean v5, p0, Lp8/c;->o:Z

    iget-object p0, p0, Lp8/c;->p:Li9/e;

    invoke-direct {v3, v1, v4, v5, p0}, Lp8/b;-><init>(Lp8/d;Ljava/util/Map;ZLi9/e;)V

    const-string p0, "tags"

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v7, v2, Lp8/g;->c:Lq3/k;

    if-eqz v7, :cond_2

    invoke-static {v6, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v7, Lq3/k;->m:Ljava/lang/Object;

    check-cast v7, Lq8/d;

    invoke-virtual {v7, v6, v3}, Lq8/d;->a(Ljava/lang/Object;Lp8/b;)Z

    move-result v6

    if-ne v6, v1, :cond_2

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v0, v2, Lp8/g;->a:Lq3/k;

    if-eqz v0, :cond_4

    invoke-static {v4, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v0, Lq8/d;

    invoke-virtual {v0, v4, v3}, Lq8/d;->a(Ljava/lang/Object;Lp8/b;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    iget-object v0, v2, Lp8/g;->b:Lq3/k;

    if-eqz v0, :cond_5

    invoke-static {v4, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Lq8/d;

    invoke-virtual {p0, v4, v3}, Lq8/d;->a(Ljava/lang/Object;Lp8/b;)Z

    move-result p0

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
