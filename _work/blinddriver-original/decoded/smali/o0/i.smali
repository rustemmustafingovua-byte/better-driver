.class public final Lo0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Li9/e;

.field public final synthetic m:Li9/e;

.field public final synthetic n:Lm1/h0;

.field public final synthetic o:J

.field public final synthetic p:F

.field public final synthetic q:J

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:Li9/e;

.field public final synthetic u:Lz0/d;


# direct methods
.method public constructor <init>(Li9/e;Li9/e;Lm1/h0;JFJJJLi9/e;Lz0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i;->l:Li9/e;

    iput-object p2, p0, Lo0/i;->m:Li9/e;

    iput-object p3, p0, Lo0/i;->n:Lm1/h0;

    iput-wide p4, p0, Lo0/i;->o:J

    iput p6, p0, Lo0/i;->p:F

    iput-wide p7, p0, Lo0/i;->q:J

    iput-wide p9, p0, Lo0/i;->r:J

    iput-wide p11, p0, Lo0/i;->s:J

    iput-object p13, p0, Lo0/i;->t:Li9/e;

    iput-object p14, p0, Lo0/i;->u:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lo0/h;

    iget-object v3, v0, Lo0/i;->u:Lz0/d;

    const/4 v4, 0x1

    iget-object v5, v0, Lo0/i;->t:Li9/e;

    invoke-direct {v2, v5, v3, v4}, Lo0/h;-><init>(Li9/e;Lz0/d;I)V

    const v3, 0x51830875

    invoke-static {v3, v2, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    sget-object v3, Lq0/h;->a:Lq0/g;

    invoke-static {v3, v1}, Lo0/v0;->d(Lq0/g;Lr0/q;)J

    move-result-wide v8

    iget-wide v14, v0, Lo0/i;->s:J

    const/16 v17, 0x6

    move-object/from16 v16, v1

    move-object v3, v2

    iget-object v2, v0, Lo0/i;->l:Li9/e;

    move-object v4, v3

    iget-object v3, v0, Lo0/i;->m:Li9/e;

    move-object v5, v4

    iget-object v4, v0, Lo0/i;->n:Lm1/h0;

    move-object v7, v5

    iget-wide v5, v0, Lo0/i;->o:J

    move-object v10, v7

    iget v7, v0, Lo0/i;->p:F

    move-object v12, v10

    iget-wide v10, v0, Lo0/i;->q:J

    move-object v13, v2

    iget-wide v1, v0, Lo0/i;->r:J

    move-object v0, v12

    move-wide/from16 v18, v1

    move-object v2, v13

    move-wide/from16 v12, v18

    const/4 v1, 0x0

    invoke-static/range {v0 .. v17}, Lo0/j;->a(Lz0/d;Lf1/r;Li9/e;Li9/e;Lm1/h0;JFJJJJLr0/q;I)V

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lr0/q;->W()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
