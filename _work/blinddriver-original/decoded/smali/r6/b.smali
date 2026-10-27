.class public final Lr6/b;
.super Ls6/d;
.source "SourceFile"


# instance fields
.field public final v:Ls6/d;


# direct methods
.method public constructor <init>(Lr6/b;Lf8/p2;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lr6/b;->v:Ls6/d;

    return-void
.end method

.method public constructor <init>(Lr6/b;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;Ljava/util/Set;Ljava/util/Set;)V

    .line 2
    iput-object p1, p0, Lr6/b;->v:Ls6/d;

    return-void
.end method

.method public constructor <init>(Ls6/d;)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    iget-object v1, p1, Ls6/d;->q:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lr6/b;->v:Ls6/d;

    return-void
.end method


# virtual methods
.method public final isUnwrappingSerializer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m()Ls6/d;
    .locals 0

    return-object p0
.end method

.method public final q(Ljava/util/Set;Ljava/util/Set;)Ls6/d;
    .locals 1

    new-instance v0, Lr6/b;

    invoke-direct {v0, p0, p1, p2}, Lr6/b;-><init>(Lr6/b;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)Ls6/d;
    .locals 2

    new-instance v0, Lr6/b;

    iget-object v1, p0, Ls6/d;->s:Lf8/p2;

    invoke-direct {v0, p0, v1, p1}, Lr6/b;-><init>(Lr6/b;Lf8/p2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final s(Lf8/p2;)Ls6/d;
    .locals 0

    iget-object p0, p0, Lr6/b;->v:Ls6/d;

    invoke-virtual {p0, p1}, Ls6/d;->s(Lf8/p2;)Ls6/d;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 2

    sget-object v0, Lb6/q0;->E:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls6/d;->o:[Lq6/c;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lr6/b;->u(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Ls5/g;->l0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/b;->u(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Ls6/d;->j(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :cond_0
    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p0, p4, p1, v0}, Ls6/d;->l(Ln6/e;Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lr6/b;->u(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public final t([Lq6/c;[Lq6/c;)Ls6/d;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BeanAsArraySerializer for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 3

    iget-object v0, p0, Ls6/d;->p:[Lq6/c;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Ls6/d;->o:[Lq6/c;

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ls5/g;->U()V

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_1
    invoke-virtual {v2, p1, p2, p3}, Lq6/c;->n(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :goto_2
    new-instance v1, Lb6/p;

    const-string v2, "Infinite recursion (StackOverflowError)"

    invoke-direct {v1, p2, v2, p3}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    aget-object p0, p0, v0

    iget-object p0, p0, Lq6/c;->n:Lw5/k;

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    :goto_3
    aget-object p0, p0, v0

    iget-object p0, p0, Lq6/c;->n:Lw5/k;

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-static {p3, p2, p1, p0}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final unwrappingSerializer(Lu6/r;)Lb6/u;
    .locals 0

    iget-object p0, p0, Lr6/b;->v:Ls6/d;

    invoke-virtual {p0, p1}, Lb6/u;->unwrappingSerializer(Lu6/r;)Lb6/u;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic withFilterId(Ljava/lang/Object;)Lb6/u;
    .locals 0

    invoke-virtual {p0, p1}, Lr6/b;->r(Ljava/lang/Object;)Ls6/d;

    move-result-object p0

    return-object p0
.end method
