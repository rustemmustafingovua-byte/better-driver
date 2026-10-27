.class public final Lo0/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# static fields
.field public static final m:Lo0/z3;


# instance fields
.field public final synthetic l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo0/z3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo0/z3;-><init>(I)V

    sput-object v0, Lo0/z3;->m:Lo0/z3;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo0/z3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 2
    iput p1, p0, Lo0/z3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget p0, p0, Lo0/z3;->l:I

    sget-object v0, Lf1/o;->a:Lf1/o;

    sget-object v1, Lr0/m;->a:Lr0/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lt8/z;->a:Lt8/z;

    packed-switch p0, :pswitch_data_0

    move-object p0, p1

    check-cast p0, Lm/m;

    move-object/from16 p0, p2

    check-cast p0, Lr0/q;

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    sget-object v0, Lo0/x0;->a:Lz0/d;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :pswitch_0
    move-object p0, p1

    check-cast p0, Lm/m;

    move-object/from16 p0, p2

    check-cast p0, Lr0/q;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    sget v6, Lo0/r0;->a:F

    const v6, -0x48a661ab

    invoke-virtual {p0, v6}, Lr0/q;->b0(I)V

    invoke-virtual {p0, v4}, Lr0/q;->q(Z)V

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_0

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v6

    invoke-virtual {p0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    check-cast v6, Lr0/u0;

    sget-object v1, Lf1/c;->p:Lf1/j;

    invoke-static {v1, v4}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    invoke-static {p0}, Lr0/r;->t(Lr0/q;)I

    move-result v3

    invoke-virtual {p0}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v0, p0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {p0}, Lr0/q;->e0()V

    iget-boolean v9, p0, Lr0/q;->S:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lr0/q;->o0()V

    :goto_0
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v1, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v7, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->g:Le2/e;

    iget-boolean v7, p0, Lr0/q;->S:Z

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-static {v3, p0, v3, v1}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_3
    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v0, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li9/e;

    if-nez v0, :cond_4

    const v0, -0x7d46ab11

    invoke-virtual {p0, v0}, Lr0/q;->b0(I)V

    :goto_1
    invoke-virtual {p0, v4}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_4
    const v1, -0x148eaaae

    invoke-virtual {p0, v1}, Lr0/q;->b0(I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v2}, Lr0/q;->q(Z)V

    return-object v5

    :pswitch_1
    move-object p0, p1

    check-cast p0, Lm/m;

    move-object/from16 p0, p2

    check-cast p0, Lr0/q;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    sget v6, Lo0/r0;->a:F

    const v6, 0x5dea06d3

    invoke-virtual {p0, v6}, Lr0/q;->b0(I)V

    invoke-virtual {p0, v4}, Lr0/q;->q(Z)V

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v6

    invoke-virtual {p0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v6, Lr0/u0;

    sget-object v1, Lf1/c;->p:Lf1/j;

    invoke-static {v1, v4}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    invoke-static {p0}, Lr0/r;->t(Lr0/q;)I

    move-result v3

    invoke-virtual {p0}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    invoke-static {v0, p0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {p0}, Lr0/q;->e0()V

    iget-boolean v9, p0, Lr0/q;->S:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lr0/q;->o0()V

    :goto_3
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v1, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v7, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->g:Le2/e;

    iget-boolean v7, p0, Lr0/q;->S:Z

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    invoke-static {v3, p0, v3, v1}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_8
    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v0, p0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li9/e;

    if-nez v0, :cond_9

    const v0, -0x5bad9868

    invoke-virtual {p0, v0}, Lr0/q;->b0(I)V

    :goto_4
    invoke-virtual {p0, v4}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_9
    const v1, -0x13793677

    invoke-virtual {p0, v1}, Lr0/q;->b0(I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :goto_5
    invoke-virtual {p0, v2}, Lr0/q;->q(Z)V

    return-object v5

    :pswitch_2
    move-object v6, p1

    check-cast v6, Lo1/d;

    move-object/from16 p0, p2

    check-cast p0, Ll1/b;

    iget-wide v10, p0, Ll1/b;->a:J

    move-object/from16 p0, p3

    check-cast p0, Lm1/p;

    iget-wide v7, p0, Lm1/p;->a:J

    sget-object p0, Lo0/a4;->a:Lo0/a4;

    sget p0, Lo0/a4;->c:F

    invoke-interface {v6, p0}, Lb3/c;->V(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v9, p0, v0

    const/4 v12, 0x0

    const/16 v13, 0x78

    invoke-static/range {v6 .. v13}, Lo1/d;->X(Lo1/d;JFJLo1/e;I)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
