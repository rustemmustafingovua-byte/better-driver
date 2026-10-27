.class public final Lp6/k;
.super Lb6/r;
.source "SourceFile"


# instance fields
.field public final l:Lp6/b;

.field public m:Lb6/r0;


# direct methods
.method public constructor <init>(Lp6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/k;->l:Lp6/b;

    return-void
.end method


# virtual methods
.method public final d(Ls5/g;Lb6/r0;)V
    .locals 3

    iput-object p2, p0, Lp6/k;->m:Lb6/r0;

    iget-object v0, p0, Lp6/k;->l:Lp6/b;

    instance-of v1, v0, Lp6/v;

    if-eqz v1, :cond_0

    check-cast v0, Lp6/v;

    iget-object p2, v0, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    invoke-virtual {p1, p0}, Ls5/g;->p0(Ljava/lang/Object;)V

    new-instance v0, Lad/s2;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lad/s2;-><init>(IB)V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lp6/k;->e(Ls5/g;Lad/s2;Ljava/util/Iterator;)V

    return-void

    :cond_0
    instance-of v1, v0, Lp6/a;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lb6/q;->size()I

    invoke-virtual {p1, p0}, Ls5/g;->m0(Ljava/lang/Object;)V

    new-instance p2, Lad/s2;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Lad/s2;-><init>(IB)V

    check-cast v0, Lp6/a;

    iget-object v0, v0, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lp6/k;->e(Ls5/g;Lad/s2;Ljava/util/Iterator;)V

    return-void

    :cond_1
    invoke-interface {v0, p1, p2}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public final e(Ls5/g;Lad/s2;Ljava/util/Iterator;)V
    .locals 5

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/q;

    goto :goto_1

    :cond_1
    check-cast v0, Lb6/q;

    :goto_1
    instance-of v1, v0, Lp6/v;

    if-eqz v1, :cond_2

    invoke-virtual {p2, p3}, Lad/s2;->G(Ljava/util/Iterator;)V

    move-object p3, v0

    check-cast p3, Lp6/v;

    iget-object p3, p3, Lp6/v;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    invoke-virtual {p1, v0}, Ls5/g;->p0(Ljava/lang/Object;)V

    move-object p3, v1

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lp6/a;

    if-eqz v1, :cond_3

    invoke-virtual {p2, p3}, Lad/s2;->G(Ljava/util/Iterator;)V

    move-object p3, v0

    check-cast p3, Lp6/a;

    iget-object p3, p3, Lp6/a;->m:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p3

    invoke-virtual {v0}, Lb6/q;->size()I

    invoke-virtual {p1, v0}, Ls5/g;->m0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lp6/w;

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lp6/k;->m:Lb6/r0;

    check-cast v0, Lp6/w;

    invoke-virtual {v0, p1, v1}, Lp6/w;->d(Ls5/g;Lb6/r0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ") "

    const-string v3, "]"

    const-string v4, "[ERROR: ("

    invoke-static {v4, v1, v2, v0, v3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls5/g;->q0(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lp6/k;->m:Lb6/r0;

    invoke-interface {v0, p1, v1}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Ls5/g;->n()Ly5/f;

    move-result-object p3

    invoke-virtual {p3}, Ls5/m;->d()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Ls5/g;->P()V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ls5/g;->R()V

    :goto_2
    iget p3, p2, Lad/s2;->m:I

    if-nez p3, :cond_7

    const/4 p3, 0x0

    goto :goto_3

    :cond_7
    iget-object v0, p2, Lad/s2;->o:Ljava/lang/Object;

    check-cast v0, [Ljava/util/Iterator;

    add-int/lit8 p3, p3, -0x1

    iput p3, p2, Lad/s2;->m:I

    aget-object p3, v0, p3

    :goto_3
    if-nez p3, :cond_0

    return-void
.end method
