.class public final synthetic Lp/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Lm1/m;

.field public final synthetic n:J

.field public final synthetic o:F

.field public final synthetic p:F

.field public final synthetic q:J

.field public final synthetic r:J

.field public final synthetic s:Lo1/h;


# direct methods
.method public synthetic constructor <init>(ZLm1/j0;JFFJJLo1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lp/t;->l:Z

    iput-object p2, p0, Lp/t;->m:Lm1/m;

    iput-wide p3, p0, Lp/t;->n:J

    iput p5, p0, Lp/t;->o:F

    iput p6, p0, Lp/t;->p:F

    iput-wide p7, p0, Lp/t;->q:J

    iput-wide p9, p0, Lp/t;->r:J

    iput-object p11, p0, Lp/t;->s:Lo1/h;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Le2/j0;

    invoke-virtual {v1}, Le2/j0;->b()V

    iget-object v2, v1, Le2/j0;->l:Lo1/b;

    iget-boolean v3, v0, Lp/t;->l:Z

    move-object v4, v1

    iget-object v1, v0, Lp/t;->m:Lm1/m;

    iget-wide v6, v0, Lp/t;->n:J

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    const/16 v9, 0xf6

    const-wide/16 v2, 0x0

    move-object v0, v4

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v9}, Lo1/d;->w(Le2/j0;Lm1/m;JJJLo1/e;I)V

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x20

    shr-long v8, v6, v3

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    iget v8, v0, Lp/t;->o:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v8

    shr-long/2addr v8, v3

    long-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget v9, v0, Lp/t;->p:F

    sub-float v11, v3, v9

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    long-to-int v0, v12

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v12, v0, v9

    iget-object v14, v2, Lo1/b;->m:Lg5/m;

    invoke-virtual {v14}, Lg5/m;->m()J

    move-result-wide v2

    invoke-virtual {v14}, Lg5/m;->h()Lm1/o;

    move-result-object v0

    invoke-interface {v0}, Lm1/o;->h()V

    :try_start_0
    iget-object v0, v14, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    iget-object v0, v0, Lm2/j;->m:Ljava/lang/Object;

    check-cast v0, Lg5/m;

    invoke-virtual {v0}, Lg5/m;->h()Lm1/o;

    move-result-object v8

    const/4 v13, 0x0

    move v10, v9

    invoke-interface/range {v8 .. v13}, Lm1/o;->o(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    const/16 v9, 0xf6

    move-wide v10, v2

    const-wide/16 v2, 0x0

    move-object v0, v4

    const-wide/16 v4, 0x0

    :try_start_1
    invoke-static/range {v0 .. v9}, Lo1/d;->w(Le2/j0;Lm1/m;JJJLo1/e;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14, v10, v11}, Lm/a;->t(Lg5/m;J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide v10, v2

    :goto_0
    invoke-static {v14, v10, v11}, Lm/a;->t(Lg5/m;J)V

    throw v0

    :cond_1
    invoke-static {v8, v6, v7}, Lp/o;->s(FJ)J

    move-result-wide v6

    const/16 v9, 0xd0

    iget-wide v2, v0, Lp/t;->q:J

    move-object v8, v4

    iget-wide v4, v0, Lp/t;->r:J

    iget-object v0, v0, Lp/t;->s:Lo1/h;

    move-object/from16 v16, v8

    move-object v8, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v9}, Lo1/d;->w(Le2/j0;Lm1/m;JJJLo1/e;I)V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
