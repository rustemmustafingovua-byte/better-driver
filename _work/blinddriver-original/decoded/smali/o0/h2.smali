.class public final Lo0/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Lu2/d0;

.field public final synthetic p:Ls/i;

.field public final synthetic q:Z

.field public final synthetic r:Li9/e;

.field public final synthetic s:Li9/e;

.field public final synthetic t:Li9/e;

.field public final synthetic u:Li9/e;

.field public final synthetic v:Lo0/x4;

.field public final synthetic w:Lm1/h0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLu2/d0;Ls/i;ZLi9/e;Li9/e;Li9/e;Li9/e;Lo0/x4;Lm1/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/h2;->l:Ljava/lang/String;

    iput-boolean p2, p0, Lo0/h2;->m:Z

    iput-boolean p3, p0, Lo0/h2;->n:Z

    iput-object p4, p0, Lo0/h2;->o:Lu2/d0;

    iput-object p5, p0, Lo0/h2;->p:Ls/i;

    iput-boolean p6, p0, Lo0/h2;->q:Z

    iput-object p7, p0, Lo0/h2;->r:Li9/e;

    iput-object p8, p0, Lo0/h2;->s:Li9/e;

    iput-object p9, p0, Lo0/h2;->t:Li9/e;

    iput-object p10, p0, Lo0/h2;->u:Li9/e;

    iput-object p11, p0, Lo0/h2;->v:Lo0/x4;

    iput-object p12, p0, Lo0/h2;->w:Lm1/h0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    check-cast v2, Li9/e;

    move-object/from16 v15, p2

    check-cast v15, Lr0/q;

    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v15, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_1
    and-int/lit8 v3, v1, 0x13

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {v15, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lo0/d2;->a:Lo0/d2;

    new-instance v4, Lo0/g2;

    iget-object v9, v0, Lo0/h2;->w:Lm1/h0;

    iget-boolean v5, v0, Lo0/h2;->m:Z

    iget-boolean v6, v0, Lo0/h2;->q:Z

    iget-object v7, v0, Lo0/h2;->p:Ls/i;

    iget-object v12, v0, Lo0/h2;->v:Lo0/x4;

    move-object v8, v12

    invoke-direct/range {v4 .. v9}, Lo0/g2;-><init>(ZZLs/i;Lo0/x4;Lm1/h0;)V

    move-object v12, v7

    move v7, v6

    move-object v6, v12

    move-object v12, v8

    const v8, -0x27281f48

    invoke-static {v8, v4, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v16, v1, 0x70

    iget-object v1, v0, Lo0/h2;->l:Ljava/lang/String;

    iget-boolean v4, v0, Lo0/h2;->n:Z

    move-object v8, v3

    move v3, v5

    iget-object v5, v0, Lo0/h2;->o:Lu2/d0;

    move-object v9, v8

    iget-object v8, v0, Lo0/h2;->r:Li9/e;

    move-object v10, v9

    iget-object v9, v0, Lo0/h2;->s:Li9/e;

    move-object v11, v10

    iget-object v10, v0, Lo0/h2;->t:Li9/e;

    iget-object v0, v0, Lo0/h2;->u:Li9/e;

    const/4 v13, 0x0

    move-object/from16 v17, v11

    move-object v11, v0

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v16}, Lo0/d2;->b(Ljava/lang/String;Li9/e;ZZLu2/d0;Ls/i;ZLi9/e;Li9/e;Li9/e;Li9/e;Lo0/x4;Lu/s0;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
