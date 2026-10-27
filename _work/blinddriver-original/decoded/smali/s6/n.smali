.class public final Ls6/n;
.super Lq6/h;
.source "SourceFile"

# interfaces
.implements Lq6/i;


# static fields
.field public static final C:Lt6/k;

.field public static final D:Lr5/z;


# instance fields
.field public final A:La6/n;

.field public final B:Z

.field public final n:Lb6/f;

.field public final o:Z

.field public final p:Lb6/l;

.field public final q:Lb6/l;

.field public final r:Lb6/u;

.field public final s:Lb6/u;

.field public final t:Ln6/e;

.field public u:Lpc/h;

.field public final v:Ljava/util/Set;

.field public final w:Ljava/util/Set;

.field public final x:Ljava/lang/Object;

.field public final y:Ljava/lang/Object;

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt6/p;->E:Lt6/k;

    sput-object v0, Ls6/n;->C:Lt6/k;

    sget-object v0, Lr5/z;->n:Lr5/z;

    sput-object v0, Ls6/n;->D:Lr5/z;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Lb6/l;Lb6/l;ZLn6/e;Lb6/u;Lb6/u;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    const-class v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p1, v1

    :cond_1
    iput-object p1, p0, Ls6/n;->v:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Ls6/n;->w:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Ls6/n;->p:Lb6/l;

    .line 5
    iput-object p4, p0, Ls6/n;->q:Lb6/l;

    .line 6
    iput-boolean p5, p0, Ls6/n;->o:Z

    .line 7
    iput-object p6, p0, Ls6/n;->t:Ln6/e;

    .line 8
    iput-object p7, p0, Ls6/n;->r:Lb6/u;

    .line 9
    iput-object p8, p0, Ls6/n;->s:Lb6/u;

    .line 10
    sget-object p3, Lr6/j;->n:Lr6/j;

    iput-object p3, p0, Ls6/n;->u:Lpc/h;

    .line 11
    iput-object v1, p0, Ls6/n;->n:Lb6/f;

    .line 12
    iput-object v1, p0, Ls6/n;->x:Ljava/lang/Object;

    .line 13
    iput-boolean v0, p0, Ls6/n;->B:Z

    .line 14
    iput-object v1, p0, Ls6/n;->y:Ljava/lang/Object;

    .line 15
    iput-boolean v0, p0, Ls6/n;->z:Z

    .line 16
    invoke-static {p1, p2}, La/a;->f(Ljava/util/Set;Ljava/util/Set;)La6/n;

    move-result-object p1

    iput-object p1, p0, Ls6/n;->A:La6/n;

    return-void
.end method

.method public constructor <init>(Ls6/n;Lb6/f;Lb6/u;Lb6/u;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    .line 17
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v1, v0}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    if-eqz p5, :cond_0

    .line 19
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p5, 0x0

    :cond_1
    iput-object p5, p0, Ls6/n;->v:Ljava/util/Set;

    .line 20
    iput-object p6, p0, Ls6/n;->w:Ljava/util/Set;

    .line 21
    iget-object v0, p1, Ls6/n;->p:Lb6/l;

    iput-object v0, p0, Ls6/n;->p:Lb6/l;

    .line 22
    iget-object v0, p1, Ls6/n;->q:Lb6/l;

    iput-object v0, p0, Ls6/n;->q:Lb6/l;

    .line 23
    iget-boolean v0, p1, Ls6/n;->o:Z

    iput-boolean v0, p0, Ls6/n;->o:Z

    .line 24
    iget-object v0, p1, Ls6/n;->t:Ln6/e;

    iput-object v0, p0, Ls6/n;->t:Ln6/e;

    .line 25
    iput-object p3, p0, Ls6/n;->r:Lb6/u;

    .line 26
    iput-object p4, p0, Ls6/n;->s:Lb6/u;

    .line 27
    sget-object p3, Lr6/j;->n:Lr6/j;

    iput-object p3, p0, Ls6/n;->u:Lpc/h;

    .line 28
    iput-object p2, p0, Ls6/n;->n:Lb6/f;

    .line 29
    iget-object p2, p1, Ls6/n;->x:Ljava/lang/Object;

    iput-object p2, p0, Ls6/n;->x:Ljava/lang/Object;

    .line 30
    iget-boolean p2, p1, Ls6/n;->B:Z

    iput-boolean p2, p0, Ls6/n;->B:Z

    .line 31
    iget-object p2, p1, Ls6/n;->y:Ljava/lang/Object;

    iput-object p2, p0, Ls6/n;->y:Ljava/lang/Object;

    .line 32
    iget-boolean p1, p1, Ls6/n;->z:Z

    iput-boolean p1, p0, Ls6/n;->z:Z

    .line 33
    invoke-static {p5, p6}, La/a;->f(Ljava/util/Set;Ljava/util/Set;)La6/n;

    move-result-object p1

    iput-object p1, p0, Ls6/n;->A:La6/n;

    return-void
.end method

.method public constructor <init>(Ls6/n;Ljava/lang/Object;Z)V
    .locals 2

    .line 51
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v1, v0}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    .line 53
    iget-object v0, p1, Ls6/n;->v:Ljava/util/Set;

    iput-object v0, p0, Ls6/n;->v:Ljava/util/Set;

    .line 54
    iget-object v0, p1, Ls6/n;->w:Ljava/util/Set;

    iput-object v0, p0, Ls6/n;->w:Ljava/util/Set;

    .line 55
    iget-object v0, p1, Ls6/n;->p:Lb6/l;

    iput-object v0, p0, Ls6/n;->p:Lb6/l;

    .line 56
    iget-object v0, p1, Ls6/n;->q:Lb6/l;

    iput-object v0, p0, Ls6/n;->q:Lb6/l;

    .line 57
    iget-boolean v0, p1, Ls6/n;->o:Z

    iput-boolean v0, p0, Ls6/n;->o:Z

    .line 58
    iget-object v0, p1, Ls6/n;->t:Ln6/e;

    iput-object v0, p0, Ls6/n;->t:Ln6/e;

    .line 59
    iget-object v0, p1, Ls6/n;->r:Lb6/u;

    iput-object v0, p0, Ls6/n;->r:Lb6/u;

    .line 60
    iget-object v0, p1, Ls6/n;->s:Lb6/u;

    iput-object v0, p0, Ls6/n;->s:Lb6/u;

    .line 61
    sget-object v0, Lr6/j;->n:Lr6/j;

    iput-object v0, p0, Ls6/n;->u:Lpc/h;

    .line 62
    iget-object v0, p1, Ls6/n;->n:Lb6/f;

    iput-object v0, p0, Ls6/n;->n:Lb6/f;

    .line 63
    iput-object p2, p0, Ls6/n;->x:Ljava/lang/Object;

    .line 64
    iput-boolean p3, p0, Ls6/n;->B:Z

    .line 65
    iget-object p2, p1, Ls6/n;->y:Ljava/lang/Object;

    iput-object p2, p0, Ls6/n;->y:Ljava/lang/Object;

    .line 66
    iget-boolean p2, p1, Ls6/n;->z:Z

    iput-boolean p2, p0, Ls6/n;->z:Z

    .line 67
    iget-object p1, p1, Ls6/n;->A:La6/n;

    iput-object p1, p0, Ls6/n;->A:La6/n;

    return-void
.end method

.method public constructor <init>(Ls6/n;Ln6/e;Ljava/lang/Object;Z)V
    .locals 2

    .line 34
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, v1, v0}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    .line 36
    iget-object v0, p1, Ls6/n;->v:Ljava/util/Set;

    iput-object v0, p0, Ls6/n;->v:Ljava/util/Set;

    .line 37
    iget-object v0, p1, Ls6/n;->w:Ljava/util/Set;

    iput-object v0, p0, Ls6/n;->w:Ljava/util/Set;

    .line 38
    iget-object v0, p1, Ls6/n;->p:Lb6/l;

    iput-object v0, p0, Ls6/n;->p:Lb6/l;

    .line 39
    iget-object v0, p1, Ls6/n;->q:Lb6/l;

    iput-object v0, p0, Ls6/n;->q:Lb6/l;

    .line 40
    iget-boolean v0, p1, Ls6/n;->o:Z

    iput-boolean v0, p0, Ls6/n;->o:Z

    .line 41
    iput-object p2, p0, Ls6/n;->t:Ln6/e;

    .line 42
    iget-object p2, p1, Ls6/n;->r:Lb6/u;

    iput-object p2, p0, Ls6/n;->r:Lb6/u;

    .line 43
    iget-object p2, p1, Ls6/n;->s:Lb6/u;

    iput-object p2, p0, Ls6/n;->s:Lb6/u;

    .line 44
    iget-object p2, p1, Ls6/n;->u:Lpc/h;

    iput-object p2, p0, Ls6/n;->u:Lpc/h;

    .line 45
    iget-object p2, p1, Ls6/n;->n:Lb6/f;

    iput-object p2, p0, Ls6/n;->n:Lb6/f;

    .line 46
    iget-object p2, p1, Ls6/n;->x:Ljava/lang/Object;

    iput-object p2, p0, Ls6/n;->x:Ljava/lang/Object;

    .line 47
    iget-boolean p2, p1, Ls6/n;->B:Z

    iput-boolean p2, p0, Ls6/n;->B:Z

    .line 48
    iput-object p3, p0, Ls6/n;->y:Ljava/lang/Object;

    .line 49
    iput-boolean p4, p0, Ls6/n;->z:Z

    .line 50
    iget-object p1, p1, Ls6/n;->A:La6/n;

    iput-object p1, p0, Ls6/n;->A:La6/n;

    return-void
.end method

.method public static k(Ljava/util/Set;Ljava/util/Set;Lb6/l;ZLo6/r;Lb6/u;Lb6/u;Ljava/lang/Object;)Ls6/n;
    .locals 11

    move-object/from16 v0, p7

    if-nez p2, :cond_0

    sget-object p2, Ls6/n;->C:Lt6/k;

    move-object v5, p2

    move-object v6, v5

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lb6/l;->T()Lb6/l;

    move-result-object v1

    const-class v2, Ljava/util/Properties;

    invoke-virtual {p2, v2}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p2, Lt6/p;->E:Lt6/k;

    :goto_0
    move-object v6, p2

    move-object v5, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lb6/l;->Q()Lb6/l;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 p2, 0x0

    if-nez p3, :cond_4

    if-eqz v6, :cond_2

    iget-object p3, v6, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Class;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    :cond_2
    move p3, p2

    :cond_3
    move v7, p3

    goto :goto_2

    :cond_4
    iget-object v1, v6, Lb6/l;->o:Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    move v7, p2

    :goto_2
    new-instance v2, Ls6/n;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Ls6/n;-><init>(Ljava/util/Set;Ljava/util/Set;Lb6/l;Lb6/l;ZLn6/e;Lb6/u;Lb6/u;)V

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Ls6/n;->o(Ljava/lang/Object;)Ls6/n;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method


# virtual methods
.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    iget-object v8, v7, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v8}, Ld6/m;->d()Lb6/d;

    move-result-object v9

    if-nez v2, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lb6/f;->d()Lj6/h;

    move-result-object v0

    move-object v11, v0

    :goto_0
    if-eqz v11, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9, v11}, Lb6/d;->x(Lj6/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v11, v0}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v9, v11}, Lb6/d;->e(Lj6/a;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v7, v11, v3}, Lb6/r0;->m0(Lj6/a;Ljava/lang/Object;)Lb6/u;

    move-result-object v3

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    if-nez v3, :cond_4

    iget-object v3, v1, Ls6/n;->s:Lb6/u;

    :cond_4
    invoke-static {v7, v2, v3}, Ls6/n0;->c(Lb6/r0;Lb6/f;Lb6/u;)Lb6/u;

    move-result-object v3

    iget-object v12, v1, Ls6/n;->q:Lb6/l;

    if-nez v3, :cond_5

    iget-boolean v4, v1, Ls6/n;->o:Z

    if-eqz v4, :cond_5

    invoke-virtual {v12}, Lb6/l;->e0()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v7, v12, v2}, Lb6/r0;->V(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v3

    :cond_5
    move-object v4, v3

    if-nez v0, :cond_6

    iget-object v0, v1, Ls6/n;->r:Lb6/u;

    :cond_6
    if-nez v0, :cond_7

    iget-object v0, v1, Ls6/n;->p:Lb6/l;

    invoke-virtual {v7, v0, v2}, Lb6/r0;->X(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v0

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_7
    invoke-virtual {v7, v0, v2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v0

    goto :goto_4

    :goto_5
    const/4 v13, 0x0

    iget-object v0, v1, Ls6/n;->v:Ljava/util/Set;

    iget-object v5, v1, Ls6/n;->w:Ljava/util/Set;

    if-eqz v11, :cond_d

    if-eqz v9, :cond_d

    invoke-virtual {v9, v8, v11}, Lb6/d;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object v6

    iget-boolean v14, v6, Lr5/w;->n:Z

    if-eqz v14, :cond_8

    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_6

    :cond_8
    iget-object v6, v6, Lr5/w;->l:Ljava/util/Set;

    :goto_6
    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_7

    :cond_9
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v14

    :goto_7
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    invoke-virtual {v9, v8, v11}, Lb6/d;->Q(Ld6/m;Lj6/a;)Lr5/c0;

    move-result-object v6

    iget-object v6, v6, Lr5/c0;->l:Ljava/util/Set;

    if-eqz v6, :cond_c

    if-nez v5, :cond_b

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    goto :goto_9

    :cond_b
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v14

    :goto_9
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    invoke-virtual {v9, v11}, Lb6/d;->Z(Lj6/a;)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v16, v5

    move-object v5, v0

    move v0, v6

    move-object/from16 v6, v16

    goto :goto_b

    :cond_d
    move-object v6, v5

    move-object v5, v0

    move v0, v13

    :goto_b
    const-class v14, Ljava/util/Map;

    invoke-static {v7, v2, v14}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v15

    if-eqz v15, :cond_e

    sget-object v10, Lr5/n;->q:Lr5/n;

    invoke-virtual {v15, v10}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_e
    move v10, v0

    const-string v0, "withResolved"

    const-class v15, Ls6/n;

    invoke-static {v15, v1, v0}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls6/n;

    invoke-direct/range {v0 .. v6}, Ls6/n;-><init>(Ls6/n;Lb6/f;Lb6/u;Lb6/u;Ljava/util/Set;Ljava/util/Set;)V

    iget-boolean v3, v0, Ls6/n;->B:Z

    if-eq v10, v3, :cond_f

    new-instance v3, Ls6/n;

    iget-object v1, v1, Ls6/n;->x:Ljava/lang/Object;

    invoke-direct {v3, v0, v1, v10}, Ls6/n;-><init>(Ls6/n;Ljava/lang/Object;Z)V

    move-object v0, v3

    :cond_f
    if-eqz v11, :cond_10

    invoke-virtual {v9, v11}, Lb6/d;->r(Lj6/a;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Ls6/n;->o(Ljava/lang/Object;)Ls6/n;

    move-result-object v0

    :cond_10
    if-eqz v2, :cond_11

    invoke-interface {v2, v8, v14}, Lb6/f;->e(Ld6/m;Ljava/lang/Class;)Lr5/a0;

    move-result-object v1

    goto :goto_c

    :cond_11
    invoke-virtual {v8, v14}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    iget-object v1, v8, Ld6/n;->r:La6/n;

    iget-object v1, v1, La6/n;->m:Ljava/lang/Object;

    check-cast v1, Lr5/a0;

    :goto_c
    if-eqz v1, :cond_1a

    iget-object v2, v1, Lr5/a0;->m:Lr5/z;

    sget-object v3, Lr5/z;->p:Lr5/z;

    if-eq v2, v3, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    const/4 v4, 0x2

    sget-object v5, Ls6/n;->D:Lr5/z;

    if-eq v2, v4, :cond_17

    const/4 v4, 0x3

    if-eq v2, v4, :cond_16

    const/4 v4, 0x4

    if-eq v2, v4, :cond_15

    const/4 v4, 0x5

    if-eq v2, v4, :cond_12

    :goto_d
    const/4 v10, 0x0

    goto :goto_f

    :cond_12
    iget-object v1, v1, Lr5/a0;->o:Ljava/lang/Class;

    invoke-virtual {v7, v1}, Lb6/r0;->i0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_14

    :cond_13
    :goto_e
    move v13, v3

    goto :goto_f

    :cond_14
    invoke-virtual {v7, v10}, Lb6/r0;->j0(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_f

    :cond_15
    invoke-static {v12}, Lwa/h;->p(Lb6/l;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v10}, Lf8/u3;->a(Ljava/lang/Object;)Ld1/c0;

    move-result-object v10

    goto :goto_e

    :cond_16
    move v13, v3

    move-object v10, v5

    goto :goto_f

    :cond_17
    invoke-virtual {v12}, Lb6/g;->y()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v10, v5

    goto :goto_e

    :cond_18
    const/4 v10, 0x0

    goto :goto_e

    :cond_19
    move v13, v3

    goto :goto_d

    :goto_f
    invoke-virtual {v0, v10, v13}, Ls6/n;->n(Ljava/lang/Object;Z)Ls6/n;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method public final i(Ln6/e;)Lq6/h;
    .locals 3

    iget-object v0, p0, Ls6/n;->t:Ln6/e;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "_withValueTypeSerializer"

    const-class v1, Ls6/n;

    invoke-static {v1, p0, v0}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls6/n;

    iget-object v1, p0, Ls6/n;->y:Ljava/lang/Object;

    iget-boolean v2, p0, Ls6/n;->z:Z

    invoke-direct {v0, p0, p1, v1, v2}, Ls6/n;-><init>(Ls6/n;Ln6/e;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 8

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Ls6/n;->z:Z

    const/4 v2, 0x0

    iget-object v3, p0, Ls6/n;->y:Ljava/lang/Object;

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v4, Ls6/n;->D:Lr5/z;

    if-ne v4, v3, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iget-object v5, p0, Ls6/n;->s:Lb6/u;

    if-eqz v5, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, p1, v6}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_a

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_6
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_8
    :try_start_0
    invoke-virtual {p0, p1, v6}, Ls6/n;->j(Lb6/r0;Ljava/lang/Object;)Lb6/u;

    move-result-object v7
    :try_end_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_9

    invoke-virtual {v7, p1, v6}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :catch_0
    :cond_a
    :goto_3
    return v2

    :cond_b
    :goto_4
    return v1
.end method

.method public final j(Lb6/r0;Ljava/lang/Object;)Lb6/u;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Ls6/n;->u:Lpc/h;

    invoke-virtual {v0, p2}, Lpc/h;->s(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ls6/n;->q:Lb6/l;

    invoke-virtual {v0}, Lb6/l;->X()Z

    move-result v1

    iget-object v2, p0, Ls6/n;->n:Lb6/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ls6/n;->u:Lpc/h;

    invoke-virtual {p1, v0, p2}, Lb6/r0;->S(Lb6/l;Ljava/lang/Class;)Lb6/l;

    move-result-object p2

    invoke-virtual {v1, p2, p1, v2}, Lpc/h;->j(Lb6/l;Lb6/r0;Lb6/f;)Lk0/l;

    move-result-object p1

    iget-object p2, p1, Lk0/l;->n:Ljava/lang/Object;

    check-cast p2, Lpc/h;

    if-eq v1, p2, :cond_1

    iput-object p2, p0, Ls6/n;->u:Lpc/h;

    :cond_1
    iget-object p0, p1, Lk0/l;->m:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    return-object p0

    :cond_2
    iget-object v0, p0, Ls6/n;->u:Lpc/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, v2}, Lb6/r0;->W(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lpc/h;->q(Ljava/lang/Class;Lb6/u;)Lpc/h;

    move-result-object p2

    if-eq v0, p2, :cond_3

    iput-object p2, p0, Ls6/n;->u:Lpc/h;

    :cond_3
    return-object p1
.end method

.method public final l(Ljava/util/Map;Ls5/g;Lb6/r0;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Ls6/n;->D:Lr5/z;

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p3, Lb6/r0;->u:Lr6/c;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Ls6/n;->A:La6/n;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ls6/n;->r:Lb6/u;

    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    iget-boolean v5, p0, Ls6/n;->z:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p3, Lb6/r0;->t:Ls6/o;

    goto :goto_3

    :cond_4
    iget-object v5, p0, Ls6/n;->s:Lb6/u;

    if-nez v5, :cond_5

    invoke-virtual {p0, p3, v2}, Ls6/n;->j(Lb6/r0;Ljava/lang/Object;)Lb6/u;

    move-result-object v5

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v5, p3, v2}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    invoke-virtual {v4, v3, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :try_start_0
    iget-object v4, p0, Ls6/n;->t:Ln6/e;

    invoke-virtual {v5, v2, p2, p3, v4}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    return-void
.end method

.method public final m(Ljava/util/Map;Ls5/g;Lb6/r0;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    iget-boolean v4, v0, Ls6/n;->B:Z

    sget-object v5, Ls6/n;->D:Lr5/z;

    iget-object v6, v0, Ls6/n;->y:Ljava/lang/Object;

    iget-boolean v7, v0, Ls6/n;->z:Z

    iget-object v8, v0, Ls6/n;->s:Lb6/u;

    const/4 v9, 0x0

    if-nez v4, :cond_0

    sget-object v4, Lb6/q0;->G:Lb6/q0;

    iget-object v10, v3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v10, v4}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_0
    instance-of v4, v1, Ljava/util/SortedMap;

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-class v10, Ljava/lang/Comparable;

    invoke-virtual {v10, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lb6/q0;->H:Lb6/q0;

    iget-object v11, v3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v11, v10}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_4

    :cond_3
    if-nez v4, :cond_4

    const-class v0, Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v4}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot order Map entries by key of incomparable type "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", consider disabling `SerializationFeature.FAIL_ON_ORDER_MAP_BY_INCOMPARABLE_KEY` to simply skip sorting"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw v9

    :cond_5
    instance-of v4, v1, Ljava/util/HashMap;

    if-eqz v4, :cond_c

    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_a

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v3, Lb6/r0;->u:Lr6/c;

    if-nez v10, :cond_6

    if-eqz v7, :cond_9

    goto :goto_1

    :cond_6
    if-nez v8, :cond_7

    invoke-virtual {v0, v3, v10}, Ls6/n;->j(Lb6/r0;Ljava/lang/Object;)Lb6/u;

    move-result-object v12

    goto :goto_2

    :cond_7
    move-object v12, v8

    :goto_2
    if-ne v6, v5, :cond_8

    invoke-virtual {v12, v3, v10}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_1

    :cond_9
    :try_start_0
    invoke-virtual {v11, v9, v2, v3}, Lr6/c;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v3, v0, v10, v1}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    :cond_a
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    :goto_3
    move-object v1, v4

    goto :goto_4

    :cond_c
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_3

    :cond_d
    :goto_4
    iget-object v4, v0, Ls6/n;->x:Ljava/lang/Object;

    if-nez v4, :cond_23

    iget-object v4, v0, Ls6/n;->A:La6/n;

    iget-object v10, v0, Ls6/n;->t:Ln6/e;

    iget-object v11, v0, Ls6/n;->r:Lb6/u;

    if-nez v6, :cond_19

    if-eqz v7, :cond_e

    goto/16 :goto_a

    :cond_e
    if-eqz v8, :cond_13

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v4, :cond_f

    invoke-virtual {v4, v6}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_5

    :cond_f
    if-eqz v6, :cond_12

    invoke-virtual {v11, v6, v2, v3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    invoke-virtual {v3, v2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_5

    :cond_10
    if-nez v10, :cond_11

    :try_start_1
    invoke-virtual {v8, v5, v2, v3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_11
    invoke-virtual {v8, v5, v2, v3, v10}, Lb6/u;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    :cond_12
    iget-object v0, v3, Lb6/r0;->u:Lr6/c;

    invoke-virtual {v0, v9, v2, v3}, Lr6/c;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    throw v9

    :cond_13
    if-eqz v10, :cond_14

    invoke-virtual {v0, v1, v2, v3, v9}, Ls6/n;->l(Ljava/util/Map;Ls5/g;Lb6/r0;Ljava/lang/Object;)V

    return-void

    :cond_14
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v6, v9

    :goto_7
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_18

    if-eqz v4, :cond_15

    invoke-virtual {v4, v6}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_15
    invoke-virtual {v11, v6, v2, v3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    if-nez v10, :cond_16

    invoke-virtual {v3, v2}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_7

    :cond_16
    if-nez v8, :cond_17

    invoke-virtual {v0, v3, v10}, Ls6/n;->j(Lb6/r0;Ljava/lang/Object;)Lb6/u;

    move-result-object v7

    goto :goto_8

    :cond_17
    move-object v7, v8

    :goto_8
    invoke-virtual {v7, v10, v2, v3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_7

    :cond_18
    iget-object v0, v3, Lb6/r0;->u:Lr6/c;

    invoke-virtual {v0, v9, v2, v3}, Lr6/c;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_3
    move-exception v0

    move-object v6, v9

    :goto_9
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    :cond_19
    :goto_a
    if-eqz v10, :cond_1a

    invoke-virtual {v0, v1, v2, v3, v6}, Ls6/n;->l(Ljava/util/Map;Ls5/g;Lb6/r0;Ljava/lang/Object;)V

    return-void

    :cond_1a
    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    goto :goto_b

    :cond_1b
    const/4 v5, 0x0

    :goto_b
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1c

    iget-object v14, v3, Lb6/r0;->u:Lr6/c;

    goto :goto_d

    :cond_1c
    if-eqz v4, :cond_1d

    invoke-virtual {v4, v13}, La6/n;->o(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    goto :goto_c

    :cond_1d
    move-object v14, v11

    :goto_d
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1f

    if-eqz v7, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v15, v3, Lb6/r0;->t:Ls6/o;

    goto :goto_f

    :cond_1f
    if-nez v8, :cond_20

    invoke-virtual {v0, v3, v12}, Ls6/n;->j(Lb6/r0;Ljava/lang/Object;)Lb6/u;

    move-result-object v15

    goto :goto_e

    :cond_20
    move-object v15, v8

    :goto_e
    if-eqz v5, :cond_21

    invoke-virtual {v15, v3, v12}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    goto :goto_c

    :cond_21
    if-eqz v6, :cond_22

    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    goto :goto_c

    :cond_22
    :goto_f
    :try_start_4
    invoke-virtual {v14, v13, v2, v3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {v15, v12, v2, v3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v9

    :cond_23
    invoke-virtual {v0, v3, v4}, Ls6/n0;->e(Lb6/r0;Ljava/lang/Object;)V

    throw v9

    :cond_24
    return-void
.end method

.method public final n(Ljava/lang/Object;Z)Ls6/n;
    .locals 2

    iget-object v0, p0, Ls6/n;->y:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Ls6/n;->z:Z

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "withContentInclusion"

    const-class v1, Ls6/n;

    invoke-static {v1, p0, v0}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls6/n;

    iget-object v1, p0, Ls6/n;->t:Ln6/e;

    invoke-direct {v0, p0, v1, p1, p2}, Ls6/n;-><init>(Ls6/n;Ln6/e;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ls6/n;
    .locals 2

    iget-object v0, p0, Ls6/n;->x:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "withFilterId"

    const-class v1, Ls6/n;

    invoke-static {v1, p0, v0}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls6/n;

    iget-boolean v1, p0, Ls6/n;->B:Z

    invoke-direct {v0, p0, p1, v1}, Ls6/n;-><init>(Ls6/n;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Ls5/g;->o0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Ls6/n;->m(Ljava/util/Map;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->R()V

    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p4, p1, v0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Ls6/n;->m(Ljava/util/Map;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public final bridge synthetic withFilterId(Ljava/lang/Object;)Lb6/u;
    .locals 0

    invoke-virtual {p0, p1}, Ls6/n;->o(Ljava/lang/Object;)Ls6/n;

    move-result-object p0

    return-object p0
.end method
