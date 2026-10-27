.class public abstract Lmb/e0;
.super Lmb/m0;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;[Lmb/w5;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmb/m0;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmb/e0;->i:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmb/e0;->j:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lmb/e0;->k:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final A()[Lmb/s1;
    .locals 9

    iget-object v0, p0, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lmb/s1;

    const-string v0, "public"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmb/m0;->a:Lhb/c;

    invoke-static {v3, v0}, La/a;->d(Lhb/c;[Ljava/lang/String;)[Lmb/n0;

    move-result-object v4

    new-instance v5, Lmb/q2;

    iget-object v0, p0, Lmb/m0;->a:Lhb/c;

    invoke-direct {v5, v0}, Lmb/q2;-><init>(Lhb/c;)V

    const/4 v0, 0x0

    new-array v6, v0, [Lmb/s5;

    const/4 v7, 0x0

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct/range {v2 .. v8}, Lmb/s1;-><init>(Lhb/c;[Lmb/x3;Lmb/q2;[Lmb/s5;Lmb/t1;Ljava/util/List;)V

    invoke-virtual {v2, p0}, Lmb/r2;->c(Lmb/v5;)V

    filled-new-array {v2}, [Lmb/s1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/s1;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/s1;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lmb/e0;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/s1;)V
    .locals 1

    iget-object v0, p0, Lmb/e0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lmb/r2;->c(Lmb/v5;)V

    return-void
.end method

.method public final y(Lmb/l2;)V
    .locals 1

    iget-object v0, p0, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lmb/u5;->c(Lmb/v5;)V

    iget-object p0, p0, Lmb/m0;->g:Lmb/x6;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmb/x;->e:Ljava/util/LinkedHashMap;

    :cond_0
    return-void
.end method

.method public final z(Lmb/g6;)V
    .locals 2

    iget-object v0, p1, Lmb/g6;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    instance-of v1, p0, Lmb/v2;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lmb/e0;->k:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/s;

    if-eqz v1, :cond_1

    iget-object p0, p1, Lmb/g6;->d:Lmb/x;

    invoke-virtual {v1}, Lmb/s;->e()Lmb/x;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lhb/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Lhb/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
