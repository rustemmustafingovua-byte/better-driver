.class public final synthetic Lb0/k2;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    iput p8, p0, Lb0/k2;->s:I

    invoke-direct/range {p0 .. p7}, Lj9/l;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lb0/k2;->s:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lu9/y0;

    invoke-virtual {v0, v1}, Lu9/y0;->l(Ljava/lang/Throwable;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lua/nav/routing/GeoPoint;

    const-string v2, "p0"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v0, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v2, v3, v0, v1}, Ldd/w0;->a(DD)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lua/nav/routing/GeoPoint;

    const-string v2, "p0"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v0, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v2, v3, v0, v1}, Ldd/w0;->a(DD)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Lua/nav/routing/GeoPoint;

    const-string v2, "p0"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v0, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v2, v3, v0, v1}, Ldd/w0;->a(DD)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Lua/nav/routing/GeoPoint;

    const-string v2, "p0"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v0, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v2, v3, v0, v1}, Ldd/w0;->a(DD)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Lua/nav/routing/GeoPoint;

    const-string v2, "p0"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v0, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v2, v3, v0, v1}, Ldd/w0;->a(DD)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lp/g;

    iget-object v2, v0, Lp/g;->O:Lk/b0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lp/g;->W0()V

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lp/g;->B:Ls/i;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v2, Lk/b0;->c:[Ljava/lang/Object;

    iget-object v4, v2, Lk/b0;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x3

    if-ltz v5, :cond_4

    const/4 v8, 0x0

    :goto_0
    aget-wide v9, v4, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    sub-int v11, v8, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_2

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v1, v14

    check-cast v14, Ls/k;

    invoke-virtual {v0}, Lf1/q;->A0()Lu9/t;

    move-result-object v15

    new-instance v7, Lp/e;

    move/from16 p1, v12

    const/4 v12, 0x0

    invoke-direct {v7, v0, v14, v3, v12}, Lp/e;-><init>(Lp/g;Ls/k;Ly8/c;I)V

    invoke-static {v15, v3, v3, v7, v6}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_2

    :cond_1
    move/from16 p1, v12

    :goto_2
    shr-long v9, v9, p1

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, p1

    goto :goto_1

    :cond_2
    move v7, v12

    if-ne v11, v7, :cond_4

    :cond_3
    if-eq v8, v5, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lp/g;->Q:Ls/k;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lf1/q;->A0()Lu9/t;

    move-result-object v4

    new-instance v5, Lp/e;

    const/4 v7, 0x1

    invoke-direct {v5, v0, v1, v3, v7}, Lp/e;-><init>(Lp/g;Ls/k;Ly8/c;I)V

    invoke-static {v4, v3, v3, v5, v6}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_5
    invoke-virtual {v2}, Lk/b0;->a()V

    iput-object v3, v0, Lp/g;->Q:Ls/k;

    invoke-virtual {v0}, Lp/g;->X0()V

    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Li9/c;

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Ld0/a;

    iget-object v0, v0, Ld0/a;->b:Lk/h0;

    invoke-virtual {v0, v1}, Lk/h0;->a(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Ll1/b;

    iget-wide v4, v1, Ll1/b;->a:J

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lh0/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Li0/g;->a:Lr0/a0;

    invoke-static {v3, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Li0/f;

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance v7, Lh0/f;

    invoke-direct {v7, v3, v4, v5}, Lh0/f;-><init>(Lh0/g;J)V

    invoke-virtual {v3}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v2, Lb0/m2;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lb0/m2;-><init>(Lh0/g;JLi0/f;Lh0/f;Ly8/c;)V

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v2, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Lw1/b;

    iget-object v1, v1, Lw1/b;->a:Landroid/view/KeyEvent;

    iget-object v0, v0, Lj9/d;->m:Ljava/lang/Object;

    check-cast v0, Lb0/i2;

    iget-object v2, v0, Lb0/i2;->f:Lm0/z1;

    iget-boolean v3, v0, Lb0/i2;->d:Z

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_b

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Lb0/i2;->i:Lb0/c1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    const/high16 v8, -0x80000000

    and-int/2addr v8, v7

    if-eqz v8, :cond_7

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lb0/c1;->a:Ljava/lang/Integer;

    move-object v4, v6

    goto :goto_5

    :cond_7
    iget-object v8, v4, Lb0/c1;->a:Ljava/lang/Integer;

    if-eqz v8, :cond_a

    iput-object v6, v4, Lb0/c1;->a:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v4, :cond_8

    move-object v8, v6

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5

    :cond_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lu2/a;

    invoke-direct {v7, v4, v5}, Lu2/a;-><init>(Ljava/lang/String;I)V

    goto :goto_6

    :cond_b
    move-object v7, v6

    :goto_6
    const/4 v4, 0x0

    if-eqz v7, :cond_d

    if-eqz v3, :cond_c

    invoke-static {v7}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb0/i2;->a(Ljava/util/List;)V

    iput-object v6, v2, Lm0/z1;->a:Ljava/lang/Float;

    goto :goto_8

    :cond_c
    :goto_7
    move v5, v4

    goto :goto_8

    :cond_d
    invoke-static {v1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    iget-object v6, v0, Lb0/i2;->j:Lb0/j1;

    invoke-virtual {v6, v1}, Lb0/j1;->a(Landroid/view/KeyEvent;)Lb0/i1;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-boolean v6, v1, Lb0/i1;->l:Z

    if-eqz v6, :cond_e

    if-nez v3, :cond_e

    goto :goto_7

    :cond_e
    new-instance v3, Lj9/u;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, v3, Lj9/u;->l:Z

    new-instance v4, Lb0/o;

    const/4 v6, 0x4

    invoke-direct {v4, v1, v0, v3, v6}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Lm0/n1;

    iget-object v6, v0, Lb0/i2;->c:Lu2/x;

    iget-object v7, v0, Lb0/i2;->g:Lu2/q;

    iget-object v8, v0, Lb0/i2;->a:Lb0/r1;

    invoke-virtual {v8}, Lb0/r1;->d()Lb0/z2;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8, v2}, Lm0/n1;-><init>(Lu2/x;Lu2/q;Lb0/z2;Lm0/z1;)V

    invoke-virtual {v4, v1}, Lb0/o;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v1, Lm0/n1;->f:J

    iget-wide v9, v6, Lu2/x;->b:J

    invoke-static {v7, v8, v9, v10}, Lp2/l0;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lm0/n1;->g:Lp2/g;

    iget-object v4, v6, Lu2/x;->a:Lp2/g;

    invoke-static {v2, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    iget-object v2, v0, Lb0/i2;->k:Li9/c;

    iget-wide v7, v1, Lm0/n1;->f:J

    const/4 v4, 0x4

    iget-object v1, v1, Lm0/n1;->g:Lp2/g;

    invoke-static {v6, v1, v7, v8, v4}, Lu2/x;->a(Lu2/x;Lp2/g;JI)Lu2/x;

    move-result-object v1

    invoke-interface {v2, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v0, v0, Lb0/i2;->h:Lb0/h3;

    if-eqz v0, :cond_11

    iput-boolean v5, v0, Lb0/h3;->e:Z

    :cond_11
    iget-boolean v5, v3, Lj9/u;->l:Z

    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
