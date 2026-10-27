.class public abstract Ls6/b;
.super Lq6/h;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final n:Lb6/l;

.field public final o:Lb6/f;

.field public final p:Z

.field public final q:Ljava/lang/Boolean;

.field public final r:Ln6/e;

.field public final s:Lb6/u;

.field public t:Lpc/h;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lb6/l;ZLn6/e;Lb6/u;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    .line 2
    iput-object p2, p0, Ls6/b;->n:Lb6/l;

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4
    :cond_1
    iput-boolean v0, p0, Ls6/b;->p:Z

    .line 5
    iput-object p4, p0, Ls6/b;->r:Ln6/e;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ls6/b;->o:Lb6/f;

    .line 7
    iput-object p5, p0, Ls6/b;->s:Lb6/u;

    .line 8
    sget-object p2, Lr6/j;->n:Lr6/j;

    iput-object p2, p0, Ls6/b;->t:Lpc/h;

    .line 9
    iput-object p1, p0, Ls6/b;->q:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ls6/b;Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)V
    .locals 2

    .line 10
    iget-object v0, p1, Ls6/n0;->l:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    .line 11
    iget-object v0, p1, Ls6/b;->n:Lb6/l;

    iput-object v0, p0, Ls6/b;->n:Lb6/l;

    .line 12
    iget-boolean p1, p1, Ls6/b;->p:Z

    iput-boolean p1, p0, Ls6/b;->p:Z

    .line 13
    iput-object p3, p0, Ls6/b;->r:Ln6/e;

    .line 14
    iput-object p2, p0, Ls6/b;->o:Lb6/f;

    .line 15
    iput-object p4, p0, Ls6/b;->s:Lb6/u;

    .line 16
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Ls6/b;->t:Lpc/h;

    .line 17
    iput-object p5, p0, Ls6/b;->q:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    iget-object p2, p0, Ls6/b;->s:Lb6/u;

    if-nez p2, :cond_1

    iget-object p0, p0, Ls6/b;->n:Lb6/l;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 7

    iget-object v0, p0, Ls6/b;->r:Ln6/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ln6/e;->a(Lb6/f;)Ln6/e;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v3, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v3}, Ld6/m;->d()Lb6/d;

    move-result-object v3

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lb6/d;->e(Lj6/a;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v4, v3}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v4}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v2, Lr5/n;->p:Lr5/n;

    invoke-virtual {v4, v2}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    iget-object v4, p0, Ls6/b;->s:Lb6/u;

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    invoke-static {p1, p2, v3}, Ls6/n0;->c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v5, p0, Ls6/b;->n:Lb6/l;

    if-eqz v5, :cond_4

    iget-boolean v6, p0, Ls6/b;->p:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lb6/l;->e0()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1, v5, p2}, Lb6/r0;->V(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v3

    :cond_4
    if-ne v3, v4, :cond_6

    iget-object p1, p0, Ls6/b;->o:Lb6/f;

    if-ne p2, p1, :cond_6

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Ls6/b;->q:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    return-object p0

    :cond_6
    :goto_2
    invoke-virtual {p0, p2, v1, v3, v2}, Ls6/b;->l(Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)Ls6/b;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lpc/h;Lb6/l;Lb6/r0;)Lb6/u;
    .locals 1

    iget-object v0, p0, Ls6/b;->o:Lb6/f;

    invoke-virtual {p1, p2, p3, v0}, Lpc/h;->j(Lb6/l;Lb6/r0;Lb6/f;)Lk0/l;

    move-result-object p2

    iget-object p3, p2, Lk0/l;->n:Ljava/lang/Object;

    check-cast p3, Lpc/h;

    if-eq p1, p3, :cond_0

    iput-object p3, p0, Ls6/b;->t:Lpc/h;

    :cond_0
    iget-object p0, p2, Lk0/l;->m:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    return-object p0
.end method

.method public abstract k(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
.end method

.method public abstract l(Lb6/f;Ln6/e;Lb6/u;Ljava/lang/Boolean;)Ls6/b;
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p4, p1, v0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Ls6/b;->k(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method
