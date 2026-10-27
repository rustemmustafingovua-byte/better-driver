.class public Lq6/c;
.super Lj6/y;
.source "SourceFile"


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:[Ljava/lang/Class;

.field public transient C:Ljava/util/HashMap;

.field public final n:Lw5/k;

.field public final o:Lb6/i0;

.field public final p:Lb6/l;

.field public final q:Lb6/l;

.field public r:Lb6/l;

.field public final s:Lj6/h;

.field public final transient t:Ljava/lang/reflect/Method;

.field public final transient u:Ljava/lang/reflect/Field;

.field public v:Lb6/u;

.field public w:Lb6/u;

.field public x:Ln6/e;

.field public transient y:Lpc/h;

.field public final z:Z


# direct methods
.method public constructor <init>(Lj6/v;Lj6/h;Lu6/b;Lb6/l;Lb6/u;Lo6/r;Lb6/l;ZLjava/lang/Object;[Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lj6/v;->c()Lb6/h0;

    move-result-object p3

    invoke-direct {p0, p3}, Lj6/y;-><init>(Lb6/h0;)V

    .line 2
    iput-object p2, p0, Lq6/c;->s:Lj6/h;

    .line 3
    new-instance p3, Lw5/k;

    invoke-interface {p1}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lw5/k;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lq6/c;->n:Lw5/k;

    .line 4
    invoke-virtual {p1}, Lj6/v;->t()Lb6/i0;

    move-result-object p1

    iput-object p1, p0, Lq6/c;->o:Lb6/i0;

    .line 5
    iput-object p4, p0, Lq6/c;->p:Lb6/l;

    .line 6
    iput-object p5, p0, Lq6/c;->v:Lb6/u;

    const/4 p1, 0x0

    if-nez p5, :cond_0

    .line 7
    sget-object p3, Lr6/j;->n:Lr6/j;

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Lq6/c;->y:Lpc/h;

    .line 8
    iput-object p6, p0, Lq6/c;->x:Ln6/e;

    .line 9
    iput-object p7, p0, Lq6/c;->q:Lb6/l;

    .line 10
    instance-of p3, p2, Lj6/f;

    if-eqz p3, :cond_1

    .line 11
    iput-object p1, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    .line 12
    check-cast p2, Lj6/f;

    .line 13
    iget-object p2, p2, Lj6/f;->n:Ljava/lang/reflect/Field;

    .line 14
    iput-object p2, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 15
    :cond_1
    instance-of p3, p2, Lj6/i;

    if-eqz p3, :cond_2

    .line 16
    check-cast p2, Lj6/i;

    .line 17
    iget-object p2, p2, Lj6/i;->o:Ljava/lang/reflect/Method;

    .line 18
    iput-object p2, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    .line 19
    iput-object p1, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 20
    :cond_2
    iput-object p1, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    .line 21
    iput-object p1, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    .line 22
    :goto_1
    iput-boolean p8, p0, Lq6/c;->z:Z

    .line 23
    iput-object p9, p0, Lq6/c;->A:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lq6/c;->w:Lb6/u;

    .line 25
    iput-object p10, p0, Lq6/c;->B:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lq6/c;)V
    .locals 1

    .line 64
    iget-object v0, p1, Lq6/c;->n:Lw5/k;

    invoke-direct {p0, p1, v0}, Lq6/c;-><init>(Lq6/c;Lw5/k;)V

    return-void
.end method

.method public constructor <init>(Lq6/c;Lb6/i0;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lj6/y;-><init>(Lj6/y;)V

    .line 27
    new-instance v0, Lw5/k;

    .line 28
    iget-object p2, p2, Lb6/i0;->l:Ljava/lang/String;

    .line 29
    invoke-direct {v0, p2}, Lw5/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lq6/c;->n:Lw5/k;

    .line 30
    iget-object p2, p1, Lq6/c;->o:Lb6/i0;

    iput-object p2, p0, Lq6/c;->o:Lb6/i0;

    .line 31
    iget-object p2, p1, Lq6/c;->p:Lb6/l;

    iput-object p2, p0, Lq6/c;->p:Lb6/l;

    .line 32
    iget-object p2, p1, Lq6/c;->s:Lj6/h;

    iput-object p2, p0, Lq6/c;->s:Lj6/h;

    .line 33
    iget-object p2, p1, Lq6/c;->t:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    .line 34
    iget-object p2, p1, Lq6/c;->u:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    .line 35
    iget-object p2, p1, Lq6/c;->v:Lb6/u;

    iput-object p2, p0, Lq6/c;->v:Lb6/u;

    .line 36
    iget-object p2, p1, Lq6/c;->w:Lb6/u;

    iput-object p2, p0, Lq6/c;->w:Lb6/u;

    .line 37
    iget-object p2, p1, Lq6/c;->C:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 38
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lq6/c;->C:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lq6/c;->C:Ljava/util/HashMap;

    .line 39
    :cond_0
    iget-object p2, p1, Lq6/c;->q:Lb6/l;

    iput-object p2, p0, Lq6/c;->q:Lb6/l;

    .line 40
    sget-object p2, Lr6/j;->n:Lr6/j;

    iput-object p2, p0, Lq6/c;->y:Lpc/h;

    .line 41
    iget-boolean p2, p1, Lq6/c;->z:Z

    iput-boolean p2, p0, Lq6/c;->z:Z

    .line 42
    iget-object p2, p1, Lq6/c;->A:Ljava/lang/Object;

    iput-object p2, p0, Lq6/c;->A:Ljava/lang/Object;

    .line 43
    iget-object p2, p1, Lq6/c;->B:[Ljava/lang/Class;

    iput-object p2, p0, Lq6/c;->B:[Ljava/lang/Class;

    .line 44
    iget-object p2, p1, Lq6/c;->x:Ln6/e;

    iput-object p2, p0, Lq6/c;->x:Ln6/e;

    .line 45
    iget-object p1, p1, Lq6/c;->r:Lb6/l;

    iput-object p1, p0, Lq6/c;->r:Lb6/l;

    return-void
.end method

.method public constructor <init>(Lq6/c;Lw5/k;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lj6/y;-><init>(Lj6/y;)V

    .line 47
    iput-object p2, p0, Lq6/c;->n:Lw5/k;

    .line 48
    iget-object p2, p1, Lq6/c;->o:Lb6/i0;

    iput-object p2, p0, Lq6/c;->o:Lb6/i0;

    .line 49
    iget-object p2, p1, Lq6/c;->s:Lj6/h;

    iput-object p2, p0, Lq6/c;->s:Lj6/h;

    .line 50
    iget-object p2, p1, Lq6/c;->p:Lb6/l;

    iput-object p2, p0, Lq6/c;->p:Lb6/l;

    .line 51
    iget-object p2, p1, Lq6/c;->t:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    .line 52
    iget-object p2, p1, Lq6/c;->u:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    .line 53
    iget-object p2, p1, Lq6/c;->v:Lb6/u;

    iput-object p2, p0, Lq6/c;->v:Lb6/u;

    .line 54
    iget-object p2, p1, Lq6/c;->w:Lb6/u;

    iput-object p2, p0, Lq6/c;->w:Lb6/u;

    .line 55
    iget-object p2, p1, Lq6/c;->C:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 56
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lq6/c;->C:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lq6/c;->C:Ljava/util/HashMap;

    .line 57
    :cond_0
    iget-object p2, p1, Lq6/c;->q:Lb6/l;

    iput-object p2, p0, Lq6/c;->q:Lb6/l;

    .line 58
    sget-object p2, Lr6/j;->n:Lr6/j;

    iput-object p2, p0, Lq6/c;->y:Lpc/h;

    .line 59
    iget-boolean p2, p1, Lq6/c;->z:Z

    iput-boolean p2, p0, Lq6/c;->z:Z

    .line 60
    iget-object p2, p1, Lq6/c;->A:Ljava/lang/Object;

    iput-object p2, p0, Lq6/c;->A:Ljava/lang/Object;

    .line 61
    iget-object p2, p1, Lq6/c;->B:[Ljava/lang/Class;

    iput-object p2, p0, Lq6/c;->B:[Ljava/lang/Class;

    .line 62
    iget-object p2, p1, Lq6/c;->x:Ln6/e;

    iput-object p2, p0, Lq6/c;->x:Ln6/e;

    .line 63
    iget-object p1, p1, Lq6/c;->r:Lb6/l;

    iput-object p1, p0, Lq6/c;->r:Lb6/l;

    return-void
.end method


# virtual methods
.method public final b()Lb6/i0;
    .locals 2

    new-instance v0, Lb6/i0;

    iget-object p0, p0, Lq6/c;->n:Lw5/k;

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb6/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lj6/h;
    .locals 0

    iget-object p0, p0, Lq6/c;->s:Lj6/h;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lq6/c;->n:Lw5/k;

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Lb6/l;
    .locals 0

    iget-object p0, p0, Lq6/c;->p:Lb6/l;

    return-object p0
.end method

.method public h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;
    .locals 2

    iget-object v0, p0, Lq6/c;->r:Lb6/l;

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0, p2}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2, p0}, Lb6/r0;->Z(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object p3

    new-instance v0, Lk0/l;

    iget-object p2, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, p2, p3}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object p2

    const/16 v1, 0xb

    invoke-direct {v0, v1, p3, p2}, Lk0/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p2, p0}, Lb6/r0;->a0(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object p3

    new-instance v0, Lk0/l;

    invoke-virtual {p1, p2, p3}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object p2

    const/16 v1, 0xb

    invoke-direct {v0, v1, p3, p2}, Lk0/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object p2, v0, Lk0/l;->n:Ljava/lang/Object;

    check-cast p2, Lpc/h;

    if-eq p1, p2, :cond_1

    iput-object p2, p0, Lq6/c;->y:Lpc/h;

    :cond_1
    iget-object p0, v0, Lk0/l;->m:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    return-object p0
.end method

.method public final i(Ls5/g;Lb6/r0;Lb6/u;)Z
    .locals 2

    invoke-virtual {p3}, Lb6/u;->usesObjectId()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lb6/q0;->q:Lb6/q0;

    iget-object v1, p2, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of p0, p3, Ls6/d;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Direct self-reference leading to cycle"

    invoke-virtual {p2, p0}, Lb6/r0;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_1
    sget-object p3, Lb6/q0;->t:Lb6/q0;

    iget-object v0, p2, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0, p3}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lq6/c;->w:Lb6/u;

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Ls5/g;->n()Ly5/f;

    move-result-object p3

    invoke-virtual {p3}, Ls5/m;->d()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lq6/c;->n:Lw5/k;

    invoke-virtual {p1, p3}, Ls5/g;->T(Ls5/q;)V

    :cond_2
    iget-object p0, p0, Lq6/c;->w:Lb6/u;

    invoke-virtual {p0, v1, p1, p2}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public j(Lb6/u;)V
    .locals 3

    iget-object v0, p0, Lq6/c;->w:Lb6/u;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lq6/c;->w:Lb6/u;

    invoke-static {p0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cannot override _nullSerializer: had a "

    const-string v2, ", trying to set to "

    invoke-static {v1, p0, v2, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lq6/c;->w:Lb6/u;

    return-void
.end method

.method public k(Lb6/u;)V
    .locals 3

    iget-object v0, p0, Lq6/c;->v:Lb6/u;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lq6/c;->v:Lb6/u;

    invoke-static {p0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cannot override _serializer: had a "

    const-string v2, ", trying to set to "

    invoke-static {v1, p0, v2, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Lq6/c;->v:Lb6/u;

    return-void
.end method

.method public l(Lb6/p0;)V
    .locals 1

    sget-object v0, Lb6/x;->B:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    iget-object p0, p0, Lq6/c;->s:Lj6/h;

    invoke-virtual {p0, p1}, Lj6/h;->j(Z)V

    return-void
.end method

.method public m(Lu6/r;)Lq6/c;
    .locals 2

    iget-object v0, p0, Lq6/c;->n:Lw5/k;

    iget-object v1, v0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu6/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lb6/i0;->a(Ljava/lang/String;)Lb6/i0;

    move-result-object p1

    new-instance v0, Lq6/c;

    invoke-direct {v0, p0, p1}, Lq6/c;-><init>(Lq6/c;Lb6/i0;)V

    return-object v0
.end method

.method public n(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    iget-object v1, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    iget-object p0, p0, Lq6/c;->w:Lb6/u;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ls5/g;->U()V

    return-void

    :cond_2
    iget-object v0, p0, Lq6/c;->v:Lb6/u;

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lq6/c;->y:Lpc/h;

    invoke-virtual {v2, v0}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2, v0, p3}, Lq6/c;->h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :cond_4
    :goto_1
    iget-object v2, p0, Lq6/c;->A:Ljava/lang/Object;

    if-eqz v2, :cond_6

    sget-object v3, Lr5/z;->n:Lr5/z;

    if-ne v3, v2, :cond_5

    invoke-virtual {v0, p3, v1}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p2, p3}, Lq6/c;->p(Ls5/g;Lb6/r0;)V

    return-void

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, p2, p3}, Lq6/c;->p(Ls5/g;Lb6/r0;)V

    return-void

    :cond_6
    if-ne v1, p1, :cond_7

    invoke-virtual {p0, p2, p3, v0}, Lq6/c;->i(Ls5/g;Lb6/r0;Lb6/u;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lq6/c;->x:Ln6/e;

    if-nez p0, :cond_8

    invoke-virtual {v0, v1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_8
    invoke-virtual {v0, v1, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method

.method public o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    iget-object v1, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lq6/c;->n:Lw5/k;

    iget-object v3, p0, Lq6/c;->A:Ljava/lang/Object;

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p3, v3}, Lb6/r0;->j0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lq6/c;->w:Lb6/u;

    if-eqz p1, :cond_7

    invoke-virtual {p2, v2}, Ls5/g;->T(Ls5/q;)V

    iget-object p0, p0, Lq6/c;->w:Lb6/u;

    invoke-virtual {p0, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_2
    iget-object v0, p0, Lq6/c;->v:Lb6/u;

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lq6/c;->y:Lpc/h;

    invoke-virtual {v4, v0}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v4, v0, p3}, Lq6/c;->h(Lpc/h;Ljava/lang/Class;Lb6/r0;)Lb6/u;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v5

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    sget-object v4, Lr5/z;->n:Lr5/z;

    if-ne v4, v3, :cond_5

    invoke-virtual {v0, p3, v1}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    if-ne v1, p1, :cond_8

    invoke-virtual {p0, p2, p3, v0}, Lq6/c;->i(Ls5/g;Lb6/r0;Lb6/u;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {p2, v2}, Ls5/g;->T(Ls5/q;)V

    iget-object p0, p0, Lq6/c;->x:Ln6/e;

    if-nez p0, :cond_9

    invoke-virtual {v0, v1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_9
    invoke-virtual {v0, v1, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method

.method public final p(Ls5/g;Lb6/r0;)V
    .locals 1

    iget-object p0, p0, Lq6/c;->w:Lb6/u;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ls5/g;->U()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq6/c;->n:Lw5/k;

    iget-object v1, v1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    iget-object v2, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    const-string v3, "via method "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    const-string v3, "field \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "virtual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object p0, p0, Lq6/c;->v:Lb6/u;

    if-nez p0, :cond_2

    const-string p0, ", no static serializer"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ", static serializer of type "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
