.class public final Ls6/c;
.super Ls6/n0;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# instance fields
.field public final synthetic n:I

.field public final o:Ln6/e;

.field public final p:Lb6/u;

.field public final q:Lb6/f;

.field public final r:Lb6/l;

.field public final s:Z

.field public transient t:Lpc/h;

.field public final u:Ljava/lang/Object;

.field public final v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj6/h;Ln6/e;Lb6/u;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls6/c;->n:I

    .line 22
    invoke-virtual {p1}, Lj6/a;->h()Lb6/l;

    move-result-object v0

    invoke-direct {p0, v0}, Ls6/n0;-><init>(Lb6/l;)V

    .line 23
    iput-object p1, p0, Ls6/c;->u:Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Lj6/a;->h()Lb6/l;

    move-result-object p1

    iput-object p1, p0, Ls6/c;->r:Lb6/l;

    .line 25
    iput-object p2, p0, Ls6/c;->o:Ln6/e;

    .line 26
    iput-object p3, p0, Ls6/c;->p:Lb6/u;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Ls6/c;->q:Lb6/f;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Ls6/c;->s:Z

    .line 29
    iput-object p4, p0, Ls6/c;->v:Ljava/lang/Object;

    .line 30
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Ls6/c;->t:Lpc/h;

    return-void
.end method

.method public constructor <init>(Ls6/c;Lb6/f;Ln6/e;Lb6/u;Lu6/r;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls6/c;->n:I

    .line 31
    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ls6/n0;)V

    .line 32
    iget-object p1, p1, Ls6/c;->r:Lb6/l;

    iput-object p1, p0, Ls6/c;->r:Lb6/l;

    .line 33
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Ls6/c;->t:Lpc/h;

    .line 34
    iput-object p2, p0, Ls6/c;->q:Lb6/f;

    .line 35
    iput-object p3, p0, Ls6/c;->o:Ln6/e;

    .line 36
    iput-object p4, p0, Ls6/c;->p:Lb6/u;

    .line 37
    iput-object p5, p0, Ls6/c;->u:Ljava/lang/Object;

    .line 38
    iput-object p6, p0, Ls6/c;->v:Ljava/lang/Object;

    .line 39
    iput-boolean p7, p0, Ls6/c;->s:Z

    return-void
.end method

.method public constructor <init>(Ls6/c;Lb6/f;Ln6/e;Lb6/u;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls6/c;->n:I

    .line 1
    iget-object v0, p1, Ls6/n0;->l:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    .line 4
    iget-object v0, p1, Ls6/c;->u:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    iput-object v0, p0, Ls6/c;->u:Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Ls6/c;->r:Lb6/l;

    iput-object v0, p0, Ls6/c;->r:Lb6/l;

    .line 6
    iput-object p3, p0, Ls6/c;->o:Ln6/e;

    .line 7
    iput-object p4, p0, Ls6/c;->p:Lb6/u;

    .line 8
    iput-object p2, p0, Ls6/c;->q:Lb6/f;

    .line 9
    iput-boolean p5, p0, Ls6/c;->s:Z

    .line 10
    iget-object p1, p1, Ls6/c;->v:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Ls6/c;->v:Ljava/lang/Object;

    .line 11
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Ls6/c;->t:Lpc/h;

    return-void
.end method

.method public constructor <init>(Lt6/i;Ln6/e;Lb6/u;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls6/c;->n:I

    .line 12
    invoke-direct {p0, p1}, Ls6/n0;-><init>(Lb6/l;)V

    .line 13
    iget-object p1, p1, Lt6/i;->x:Lb6/l;

    .line 14
    iput-object p1, p0, Ls6/c;->r:Lb6/l;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Ls6/c;->q:Lb6/f;

    .line 16
    iput-object p2, p0, Ls6/c;->o:Ln6/e;

    .line 17
    iput-object p3, p0, Ls6/c;->p:Lb6/u;

    .line 18
    iput-object p1, p0, Ls6/c;->u:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Ls6/c;->v:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Ls6/c;->s:Z

    .line 21
    sget-object p1, Lr6/j;->n:Lr6/j;

    iput-object p1, p0, Ls6/c;->t:Lpc/h;

    return-void
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 2

    iget p2, p0, Ls6/c;->n:I

    iget-object v0, p0, Ls6/c;->p:Lb6/u;

    iget-object v1, p0, Ls6/c;->r:Lb6/l;

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast p0, Lj6/h;

    invoke-virtual {p0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p2, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lb6/u;->acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lb6/u;->acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 13

    iget v0, p0, Ls6/c;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls6/c;->o:Ln6/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ln6/e;->a(Lb6/f;)Ln6/e;

    move-result-object v0

    :cond_0
    iget-boolean v3, p0, Ls6/c;->s:Z

    iget-object v4, p0, Ls6/c;->p:Lb6/u;

    if-nez v4, :cond_7

    sget-object v5, Lb6/x;->D:Lb6/x;

    iget-object v6, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v6, v5}, Ld6/m;->m(Lb6/x;)Z

    move-result v5

    iget-object v6, p0, Ls6/c;->r:Lb6/l;

    if-nez v5, :cond_3

    iget-object v5, v6, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Ls6/c;->q:Lb6/f;

    if-eq p2, v5, :cond_2

    invoke-virtual {p0, p2, v0, v4, v3}, Ls6/c;->k(Lb6/f;Ln6/e;Lb6/u;Z)Ls6/c;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p1, v6, p2}, Lb6/r0;->Z(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v3

    iget-object v4, p0, Ls6/c;->v:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v4}, Lb6/u;->withIgnoredProperties(Ljava/util/Set;)Lb6/u;

    move-result-object v3

    :cond_4
    iget-object v4, v6, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_6

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_5
    const-class v5, Ljava/lang/String;

    if-eq v4, v5, :cond_6

    const-class v5, Ljava/lang/Integer;

    if-eq v4, v5, :cond_6

    const-class v5, Ljava/lang/Boolean;

    if-eq v4, v5, :cond_6

    const-class v5, Ljava/lang/Double;

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result v6

    :goto_1
    invoke-virtual {p0, p2, v0, v3, v6}, Ls6/c;->k(Lb6/f;Ln6/e;Lb6/u;Z)Ls6/c;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v4, p2}, Lb6/r0;->g0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v4

    invoke-virtual {p0, p2, v0, v4, v3}, Ls6/c;->k(Lb6/f;Ln6/e;Lb6/u;Z)Ls6/c;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_0
    iget-object v0, p0, Ls6/c;->o:Ln6/e;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Ln6/e;->a(Lb6/f;)Ln6/e;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v0

    :goto_3
    const/4 v9, 0x0

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v4

    iget-object v5, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v5}, Ld6/m;->d()Lb6/d;

    move-result-object v5

    if-eqz v4, :cond_9

    invoke-virtual {v5, v4}, Lb6/d;->e(Lj6/a;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p1, v4, v5}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v9

    :goto_4
    const/4 v10, 0x0

    iget-object v5, p0, Ls6/c;->p:Lb6/u;

    iget-object v11, p0, Ls6/c;->r:Lb6/l;

    const/4 v12, 0x1

    if-nez v4, :cond_11

    if-nez v5, :cond_10

    invoke-virtual {v11}, Lb6/l;->e0()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_5
    move v4, v10

    goto :goto_7

    :cond_a
    iget-object v4, v11, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    move v4, v12

    goto :goto_7

    :cond_b
    iget-boolean v4, v11, Lb6/l;->s:Z

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    iget-object v4, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v4}, Ld6/m;->d()Lb6/d;

    move-result-object v4

    if-eqz v4, :cond_e

    if-eqz p2, :cond_e

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object v6

    invoke-virtual {v4, v6}, Lb6/d;->a0(Lj6/a;)Lc6/j;

    move-result-object v4

    sget-object v6, Lc6/j;->m:Lc6/j;

    if-ne v4, v6, :cond_d

    goto :goto_6

    :cond_d
    sget-object v6, Lc6/j;->l:Lc6/j;

    if-ne v4, v6, :cond_e

    goto :goto_5

    :cond_e
    sget-object v4, Lb6/x;->D:Lb6/x;

    iget-object v6, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v6, v4}, Ld6/m;->m(Lb6/x;)Z

    move-result v4

    :goto_7
    if-eqz v4, :cond_f

    invoke-virtual {p1, v11, p2}, Lb6/r0;->Z(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v4

    goto :goto_8

    :cond_f
    move-object v4, v5

    goto :goto_8

    :cond_10
    invoke-virtual {p1, v5, p2}, Lb6/r0;->g0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v4

    :cond_11
    :goto_8
    invoke-static {p1, p2, v4}, Ls6/n0;->c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;

    move-result-object v4

    iget-object v6, p0, Ls6/c;->q:Lb6/f;

    if-ne v6, p2, :cond_12

    if-ne v0, v3, :cond_12

    if-ne v5, v4, :cond_12

    move-object v0, p0

    goto :goto_9

    :cond_12
    iget-object v0, p0, Ls6/c;->u:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lu6/r;

    new-instance v0, Ls6/c;

    iget-object v6, p0, Ls6/c;->v:Ljava/lang/Object;

    iget-boolean v7, p0, Ls6/c;->s:Z

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Ls6/c;-><init>(Ls6/c;Lb6/f;Ln6/e;Lb6/u;Lu6/r;Ljava/lang/Object;Z)V

    :goto_9
    if-eqz p2, :cond_19

    iget-object v3, p1, Lb6/r0;->o:Lb6/p0;

    iget-object v4, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-interface {p2, v3, v4}, Lb6/f;->e(Ld6/m;Ljava/lang/Class;)Lr5/a0;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v3, v2, Lr5/a0;->m:Lr5/z;

    sget-object v4, Lr5/z;->p:Lr5/z;

    if-eq v3, v4, :cond_19

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v12, :cond_14

    const/4 v4, 0x2

    sget-object v5, Lr5/z;->n:Lr5/z;

    if-eq v3, v4, :cond_18

    const/4 v4, 0x3

    if-eq v3, v4, :cond_17

    const/4 v4, 0x4

    if-eq v3, v4, :cond_16

    const/4 v4, 0x5

    if-eq v3, v4, :cond_13

    :goto_a
    move-object v7, v9

    move v8, v10

    goto :goto_d

    :cond_13
    iget-object v2, v2, Lr5/a0;->o:Ljava/lang/Class;

    invoke-virtual {p1, v2}, Lb6/r0;->i0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_15

    :cond_14
    :goto_b
    move-object v7, v9

    :goto_c
    move v8, v12

    goto :goto_d

    :cond_15
    invoke-virtual {p1, v9}, Lb6/r0;->j0(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_a

    :cond_16
    invoke-static {v11}, Lwa/h;->p(Lb6/l;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v9}, Lf8/u3;->a(Ljava/lang/Object;)Ld1/c0;

    move-result-object v9

    goto :goto_b

    :cond_17
    move-object v7, v5

    goto :goto_c

    :cond_18
    invoke-virtual {v11}, Lb6/g;->y()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v9, v5

    goto :goto_b

    :goto_d
    iget-object v2, p0, Ls6/c;->v:Ljava/lang/Object;

    if-ne v2, v7, :cond_1a

    iget-boolean v1, p0, Ls6/c;->s:Z

    if-eq v1, v8, :cond_19

    goto :goto_e

    :cond_19
    move-object v2, v0

    goto :goto_f

    :cond_1a
    :goto_e
    new-instance v1, Ls6/c;

    iget-object v2, v0, Ls6/c;->u:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lu6/r;

    iget-object v3, v0, Ls6/c;->q:Lb6/f;

    iget-object v4, v0, Ls6/c;->o:Ln6/e;

    iget-object v5, v0, Ls6/c;->p:Lb6/u;

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Ls6/c;-><init>(Ls6/c;Lb6/f;Ln6/e;Lb6/u;Lu6/r;Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_10

    :goto_f
    move-object v0, v2

    :goto_10
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lb6/r0;Ljava/lang/Class;)Lb6/u;
    .locals 3

    iget-object v0, p0, Ls6/c;->t:Lpc/h;

    invoke-virtual {v0, p2}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ls6/c;->r:Lb6/l;

    invoke-virtual {v0}, Lb6/l;->X()Z

    move-result v1

    iget-object v2, p0, Ls6/c;->q:Lb6/f;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, p2}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lb6/r0;->Z(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v2}, Lb6/r0;->a0(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast v0, Lu6/r;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lb6/u;->unwrappingSerializer(Lu6/r;)Lb6/u;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Ls6/c;->t:Lpc/h;

    invoke-virtual {v0, p2, p1}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object p2

    iput-object p2, p0, Ls6/c;->t:Lpc/h;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Ls6/c;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    invoke-virtual {v0, p2}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ls6/c;->p:Lb6/u;

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ls6/c;->j(Lb6/r0;Ljava/lang/Class;)Lb6/u;

    move-result-object v0
    :try_end_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/fragment/app/i0;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    :pswitch_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    iget-boolean p0, p0, Ls6/c;->s:Z

    goto :goto_3

    :cond_2
    iget-object v0, p0, Ls6/c;->v:Ljava/lang/Object;

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Ls6/c;->p:Lb6/u;

    if-nez v1, :cond_4

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ls6/c;->i(Lb6/r0;Ljava/lang/Class;)Lb6/u;

    move-result-object v1
    :try_end_1
    .catch Lb6/p; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Landroidx/fragment/app/i0;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_2
    sget-object p0, Lr5/z;->n:Lr5/z;

    if-ne v0, p0, :cond_5

    invoke-virtual {v1, p1, p2}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3

    :cond_6
    const/4 p0, 0x1

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isUnwrappingSerializer()Z
    .locals 1

    iget v0, p0, Ls6/c;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lb6/u;->isUnwrappingSerializer()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast p0, Lu6/r;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lb6/r0;Ljava/lang/Class;)Lb6/u;
    .locals 4

    iget-object v0, p0, Ls6/c;->v:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Ls6/c;->t:Lpc/h;

    invoke-virtual {v1, p2}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ls6/c;->r:Lb6/l;

    invoke-virtual {v1}, Lb6/l;->X()Z

    move-result v2

    iget-object v3, p0, Ls6/c;->q:Lb6/f;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, p2}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lb6/r0;->Z(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lb6/u;->withIgnoredProperties(Ljava/util/Set;)Lb6/u;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Ls6/c;->t:Lpc/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v0, p2, p1}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object p2

    iput-object p2, p0, Ls6/c;->t:Lpc/h;

    return-object p1

    :cond_1
    invoke-virtual {p1, p2, v3}, Lb6/r0;->a0(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lb6/u;->withIgnoredProperties(Ljava/util/Set;)Lb6/u;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Ls6/c;->t:Lpc/h;

    invoke-virtual {v0, p2, p1}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object p2

    iput-object p2, p0, Ls6/c;->t:Lpc/h;

    return-object p1

    :cond_3
    return-object v1
.end method

.method public k(Lb6/f;Ln6/e;Lb6/u;Z)Ls6/c;
    .locals 7

    iget-object v0, p0, Ls6/c;->q:Lb6/f;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ls6/c;->o:Ln6/e;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Ls6/c;->p:Lb6/u;

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Ls6/c;->s:Z

    if-ne p4, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ls6/c;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ls6/c;-><init>(Ls6/c;Lb6/f;Ln6/e;Lb6/u;Z)V

    return-object v1
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget v0, p0, Ls6/c;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    :try_start_0
    invoke-virtual {v0, p1}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls6/c;->p:Lb6/u;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Ls6/c;->j(Lb6/r0;Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Ls6/c;->o:Ln6/e;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lj6/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast p0, Lu6/r;

    if-nez p0, :cond_6

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ls6/c;->p:Lb6/u;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Ls6/c;->i(Lb6/r0;Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    :cond_4
    iget-object p0, p0, Ls6/c;->o:Ln6/e;

    if-eqz p0, :cond_5

    invoke-virtual {v0, p1, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    iget v0, p0, Ls6/c;->n:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast v0, Lj6/h;

    :try_start_0
    invoke-virtual {v0, p1}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ls6/c;->p:Lb6/u;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Ls6/c;->j(Lb6/r0;Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Ls6/c;->s:Z

    if-eqz p0, :cond_2

    sget-object p0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {v1, v0, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Ls6/m;

    invoke-direct {p0, p4, p1}, Ls6/m;-><init>(Ln6/e;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, p2, p3, p0}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "()"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast p0, Lu6/r;

    if-nez p0, :cond_5

    invoke-virtual {p3, p2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ls6/c;->p:Lb6/u;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Ls6/c;->i(Lb6/r0;Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    :cond_4
    invoke-virtual {v0, p1, p2, p3, p4}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Ls6/c;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(@JsonValue serializer for method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast p0, Lj6/h;

    invoke-virtual {p0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unwrappingSerializer(Lu6/r;)Lb6/u;
    .locals 10

    iget v0, p0, Ls6/c;->n:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lb6/u;->unwrappingSerializer(Lu6/r;)Lb6/u;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ls6/c;->p:Lb6/u;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lb6/u;->unwrappingSerializer(Lu6/r;)Lb6/u;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_2

    :cond_0
    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    iget-object v1, p0, Ls6/c;->u:Ljava/lang/Object;

    check-cast v1, Lu6/r;

    if-nez v1, :cond_2

    move-object v7, p1

    goto :goto_1

    :cond_2
    new-instance v2, Lu6/p;

    invoke-direct {v2, p1, v1}, Lu6/p;-><init>(Lu6/r;Lu6/r;)V

    move-object v7, v2

    :goto_1
    if-ne v0, v6, :cond_3

    if-ne v1, v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Ls6/c;

    iget-object v8, p0, Ls6/c;->v:Ljava/lang/Object;

    iget-boolean v9, p0, Ls6/c;->s:Z

    iget-object v4, p0, Ls6/c;->q:Lb6/f;

    iget-object v5, p0, Ls6/c;->o:Ln6/e;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Ls6/c;-><init>(Ls6/c;Lb6/f;Ln6/e;Lb6/u;Lu6/r;Ljava/lang/Object;Z)V

    move-object p0, v2

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
