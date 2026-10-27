.class public final Lg5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/o1;
.implements Lid/d1;
.implements Lmb/y6;
.implements Lr2/b;
.implements Ls9/g;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lg5/l;->l:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_0
    sget-object p1, Lsc/i0;->A:Lp/a1;

    .line 8
    new-instance v0, Lid/u;

    invoke-direct {v0}, Lid/u;-><init>()V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/l;->m:Ljava/lang/Object;

    iput-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lg5/l;->l:I

    iput-object p2, p0, Lg5/l;->m:Ljava/lang/Object;

    iput-object p3, p0, Lg5/l;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, Lg5/l;->l:I

    iput-object p2, p0, Lg5/l;->n:Ljava/lang/Object;

    iput-object p3, p0, Lg5/l;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg5/l;->l:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lg5/l;->m:Ljava/lang/Object;

    .line 15
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lg5/l;->l:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lc5/j;->h(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ll3/b;->c(Landroid/graphics/Insets;)Ll3/b;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lg5/l;->m:Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Lq3/a0;->d(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Ll3/b;->c(Landroid/graphics/Insets;)Ll3/b;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lg5/l;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg5/l;->l:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lg5/l;->m:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lg5/l;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lg5/l;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lg5/l;->m:Ljava/lang/Object;

    .line 5
    new-instance v0, Lg5/b;

    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, p1, v1}, Lg5/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    .line 7
    iput-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lg5/l;->l:I

    const-string v0, "error"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/l;->m:Ljava/lang/Object;

    iput-object p2, p0, Lg5/l;->n:Ljava/lang/Object;

    return-void
.end method

.method public static l(ILjava/util/ArrayList;)I
    .locals 0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Lb0/b3;)Z
    .locals 6

    invoke-virtual {p0}, Lg5/l;->k()Lc2/e0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lc2/e0;->f:Lr0/g1;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lr0/g1;->c()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast p0, Lc2/n0;

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ld1/g;->e()Li9/c;

    move-result-object v1

    :cond_1
    invoke-static {v4}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v5

    :try_start_0
    iget-object p0, p0, Lc2/n0;->l:Le2/g0;

    iput-boolean v3, p0, Le2/g0;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p1}, Lr0/g1;->e(Lr0/c2;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Le2/g0;->C:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5, v1}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {v4, v5, v1}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0

    :cond_2
    return v3
.end method

.method public apply()Lc2/p1;
    .locals 3

    iget-object v0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v0, Lc2/n0;

    invoke-virtual {p0}, Lg5/l;->k()Lc2/e0;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc2/n0;->d(Lc2/e0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lc2/n0;->f(Ljava/lang/Object;)Lc2/p1;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast p0, Lmb/r5;

    iget-object p0, p0, Lmb/r5;->f:Lmb/f1;

    invoke-virtual {v0, p0}, Lmb/a7;->E(Lmb/f1;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Lid/d1;

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast p0, Lp/a1;

    invoke-virtual {p0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lid/d1;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lg5/m;

    new-instance v2, Lid/p;

    invoke-direct {v2, p0}, Lid/p;-><init>(Lp/a1;)V

    invoke-direct {v1, v2, v0}, Lg5/m;-><init>(Lid/p;Lid/d1;)V

    invoke-virtual {v1, p1, p2, p3}, Lg5/m;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lg5/l;->k()Lc2/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc2/e0;->f:Lr0/g1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v0, Lc2/n0;

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    invoke-static {v0, p0}, Lc2/n0;->c(Lc2/n0;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lg5/l;->c(Ljava/util/List;Ljava/lang/Double;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    invoke-virtual {p0}, Lg5/l;->k()Lc2/e0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lc2/e0;->f:Lr0/g1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr0/g1;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public f(I)I
    .locals 9

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/text/TextPaint;

    iget-object v0, p0, Lg5/l;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result v7

    const/4 p1, -0x1

    if-ne v7, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Landroid/text/TextPaint;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p0

    if-ne p0, p1, :cond_1

    :goto_0
    return p1

    :cond_1
    return v7
.end method

.method public g(ZLpb/a;IZ)Lgc/d;
    .locals 9

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Lpb/a;

    invoke-virtual {v1, p2}, Lpb/a;->i(Lpb/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v2, v3, :cond_14

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgc/d;

    iget-object v7, v3, Lgc/d;->a:Lg5/l;

    iget-object v7, v7, Lg5/l;->m:Ljava/lang/Object;

    check-cast v7, Lpb/a;

    iget-object v8, v3, Lgc/d;->b:Lpb/a;

    invoke-static {v7, v8, p2}, Lg5/f;->p(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v7

    if-nez v7, :cond_12

    if-ne p3, v4, :cond_4

    if-eqz p4, :cond_2

    move p0, v4

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    move p2, v1

    move v1, v6

    goto :goto_4

    :cond_4
    move p0, v4

    move p2, p0

    :goto_4
    if-eqz p1, :cond_5

    iget p4, v3, Lgc/d;->c:I

    if-eq p4, v5, :cond_d

    goto :goto_5

    :cond_5
    iget p4, v3, Lgc/d;->g:I

    if-eq p4, v5, :cond_d

    :goto_5
    if-ne v1, v6, :cond_6

    move p3, v4

    goto :goto_6

    :cond_6
    move p3, v6

    :goto_6
    if-ne p3, v4, :cond_a

    if-eqz p1, :cond_7

    iget p4, v3, Lgc/d;->c:I

    goto :goto_7

    :cond_7
    iget p4, v3, Lgc/d;->g:I

    :goto_7
    if-ne p4, v6, :cond_a

    if-eqz p1, :cond_8

    iput p3, v3, Lgc/d;->c:I

    goto :goto_8

    :cond_8
    iput p3, v3, Lgc/d;->g:I

    :goto_8
    if-eqz p1, :cond_9

    iput v6, v3, Lgc/d;->f:I

    goto :goto_9

    :cond_9
    iput v6, v3, Lgc/d;->j:I

    :cond_a
    :goto_9
    invoke-virtual {v3, v6, p1}, Lgc/d;->a(IZ)I

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {v3, v6, p0, p1}, Lgc/d;->d(IIZ)V

    :cond_b
    invoke-virtual {v3, v4, p1}, Lgc/d;->a(IZ)I

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {v3, v4, p2, p1}, Lgc/d;->d(IIZ)V

    :cond_c
    return-object v3

    :cond_d
    if-eqz p1, :cond_e

    iput p3, v3, Lgc/d;->c:I

    goto :goto_a

    :cond_e
    iput p3, v3, Lgc/d;->g:I

    :goto_a
    if-eqz p1, :cond_f

    iput v1, v3, Lgc/d;->f:I

    goto :goto_b

    :cond_f
    iput v1, v3, Lgc/d;->j:I

    :goto_b
    if-eqz p1, :cond_10

    iput p0, v3, Lgc/d;->d:I

    goto :goto_c

    :cond_10
    iput p0, v3, Lgc/d;->h:I

    :goto_c
    if-eqz p1, :cond_11

    iput p2, v3, Lgc/d;->e:I

    return-object v3

    :cond_11
    iput p2, v3, Lgc/d;->i:I

    return-object v3

    :cond_12
    if-ne v7, v6, :cond_13

    goto :goto_d

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_14
    move v2, v5

    :goto_d
    if-ne p3, v4, :cond_18

    new-instance p3, Lgc/d;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput v5, p3, Lgc/d;->c:I

    iput v5, p3, Lgc/d;->d:I

    iput v5, p3, Lgc/d;->e:I

    iput v5, p3, Lgc/d;->f:I

    iput v5, p3, Lgc/d;->g:I

    iput v5, p3, Lgc/d;->h:I

    iput v5, p3, Lgc/d;->i:I

    iput v5, p3, Lgc/d;->j:I

    iput-object p0, p3, Lgc/d;->a:Lg5/l;

    iput-object p2, p3, Lgc/d;->b:Lpb/a;

    if-eqz p4, :cond_15

    move p0, v4

    goto :goto_e

    :cond_15
    move p0, v1

    :goto_e
    if-eqz p4, :cond_16

    goto :goto_f

    :cond_16
    move v1, v4

    :goto_f
    if-eqz p1, :cond_17

    iput v4, p3, Lgc/d;->c:I

    iput p0, p3, Lgc/d;->d:I

    iput v1, p3, Lgc/d;->e:I

    iput v6, p3, Lgc/d;->f:I

    goto :goto_10

    :cond_17
    iput v4, p3, Lgc/d;->g:I

    iput p0, p3, Lgc/d;->h:I

    iput v1, p3, Lgc/d;->i:I

    iput v6, p3, Lgc/d;->j:I

    goto :goto_10

    :cond_18
    new-instance p3, Lgc/d;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput v5, p3, Lgc/d;->c:I

    iput v5, p3, Lgc/d;->d:I

    iput v5, p3, Lgc/d;->e:I

    iput v5, p3, Lgc/d;->f:I

    iput v5, p3, Lgc/d;->g:I

    iput v5, p3, Lgc/d;->h:I

    iput v5, p3, Lgc/d;->i:I

    iput v5, p3, Lgc/d;->j:I

    iput-object p0, p3, Lgc/d;->a:Lg5/l;

    iput-object p2, p3, Lgc/d;->b:Lpb/a;

    if-eqz p1, :cond_19

    iput v6, p3, Lgc/d;->c:I

    iput v4, p3, Lgc/d;->d:I

    iput v4, p3, Lgc/d;->e:I

    iput v1, p3, Lgc/d;->f:I

    goto :goto_10

    :cond_19
    iput v6, p3, Lgc/d;->g:I

    iput v4, p3, Lgc/d;->h:I

    iput v4, p3, Lgc/d;->i:I

    iput v1, p3, Lgc/d;->j:I

    :goto_10
    if-gez v2, :cond_1a

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3

    :cond_1a
    invoke-virtual {v0, v2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Lid/d1;

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast p0, Lp/a1;

    invoke-virtual {p0}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lid/d1;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lid/d1;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mapbox\u2192"

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h(Lgc/b;)V
    .locals 6

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p1, Lgc/b;->m:I

    iget-boolean v2, p1, Lgc/b;->l:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Lgc/b;->b(I)Lpb/a;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v5, v3}, Lg5/l;->g(ZLpb/a;IZ)Lgc/d;

    move-result-object v1

    invoke-virtual {p1, v4}, Lgc/b;->b(I)Lpb/a;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v5, v4}, Lg5/l;->g(ZLpb/a;IZ)Lgc/d;

    move-result-object p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, v0}, Lg5/l;->l(ILjava/util/ArrayList;)I

    move-result v1

    :goto_0
    if-eq v1, p0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgc/d;

    invoke-virtual {v3, v2}, Lgc/d;->c(Z)V

    invoke-static {v1, v0}, Lg5/l;->l(ILjava/util/ArrayList;)I

    move-result v1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    add-int/lit8 v1, p1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgc/d;

    invoke-virtual {v1, v4, v2}, Lgc/d;->a(IZ)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgc/d;

    invoke-virtual {p1, v2}, Lgc/d;->c(Z)V

    :cond_3
    invoke-static {p0, v0}, Lg5/l;->l(ILjava/util/ArrayList;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgc/d;

    invoke-virtual {p1, v5, v2}, Lgc/d;->a(IZ)I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgc/d;

    invoke-virtual {p0, v2}, Lgc/d;->c(Z)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1, v3}, Lgc/b;->b(I)Lpb/a;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v4, v3}, Lg5/l;->g(ZLpb/a;IZ)Lgc/d;

    invoke-virtual {p1, v4}, Lgc/b;->b(I)Lpb/a;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v4, v3}, Lg5/l;->g(ZLpb/a;IZ)Lgc/d;

    return-void
.end method

.method public i(ZZ)V
    .locals 8

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_7

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lgc/d;

    invoke-virtual {v1, p1}, Lgc/d;->c(Z)V

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgc/d;

    if-eqz p1, :cond_1

    iget v1, v1, Lgc/d;->c:I

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_1
    iget v1, v1, Lgc/d;->g:I

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_2
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgc/d;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Lgc/d;->a(IZ)I

    move-result v1

    invoke-static {p2, p0}, Lg5/l;->l(ILjava/util/ArrayList;)I

    move-result v4

    :goto_3
    if-eq v4, p2, :cond_7

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgc/d;

    invoke-virtual {v5, v3, p1}, Lgc/d;->a(IZ)I

    move-result v6

    if-eq v6, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5, v3, v1, p1}, Lgc/d;->d(IIZ)V

    :goto_4
    const/4 v6, 0x2

    invoke-virtual {v5, v6, p1}, Lgc/d;->a(IZ)I

    move-result v7

    if-eq v7, v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v5, v6, v1, p1}, Lgc/d;->d(IIZ)V

    :goto_5
    invoke-virtual {v5, v0, p1}, Lgc/d;->a(IZ)I

    move-result v6

    if-eq v6, v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v5, v0, v1, p1}, Lgc/d;->d(IIZ)V

    :goto_6
    invoke-virtual {v5, v3, p1}, Lgc/d;->a(IZ)I

    move-result v1

    invoke-static {v4, p0}, Lg5/l;->l(ILjava/util/ArrayList;)I

    move-result v4

    goto :goto_3

    :cond_7
    return-void
.end method

.method public j(I)I
    .locals 9

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/text/TextPaint;

    iget-object v0, p0, Lg5/l;->m:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result v7

    const/4 p1, -0x1

    if-ne v7, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Landroid/text/TextPaint;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x0

    move-object v3, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p0

    if-ne p0, p1, :cond_1

    :goto_0
    return p1

    :cond_1
    return v7
.end method

.method public k()Lc2/e0;
    .locals 2

    iget-object v0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v0, Lc2/n0;

    iget-object v1, v0, Lc2/n0;->u:Lk/m0;

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2/g0;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v0, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/e0;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public m(I)I
    .locals 8

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/text/TextPaint;

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p0

    return p0
.end method

.method public n(I)I
    .locals 8

    iget-object v0, p0, Lg5/l;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/text/TextPaint;

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result p0

    return p0
.end method

.method public toInstant()Ls9/d;
    .locals 3

    new-instance v0, Lda/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " when parsing an Instant from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v2, 0x40

    invoke-static {v2, p0}, Ls9/e;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lda/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lg5/l;->l:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bounds{lower="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Ll3/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Ll3/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Node["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v2, Lpb/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "POINT ( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lpb/a;->l:D

    iget-wide v6, v2, Lpb/a;->m:D

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lac/b;->b:Lac/b;

    invoke-virtual {v8, v4, v5}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lgc/d;

    invoke-virtual {v4}, Lgc/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method
