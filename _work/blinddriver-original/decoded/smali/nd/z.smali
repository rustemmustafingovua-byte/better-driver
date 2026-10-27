.class public final synthetic Lnd/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:Lt2/k;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JJLt2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/z;->l:Ljava/lang/String;

    iput-wide p2, p0, Lnd/z;->m:J

    iput-wide p4, p0, Lnd/z;->n:J

    iput-object p6, p0, Lnd/z;->o:Lt2/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    and-int/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lf1/c;->p:Lf1/j;

    invoke-static {v2, v5}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v3, v1, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v1}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v1}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v7, Le2/h;->b:Le2/g;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Le2/g;->b:Le2/f;

    invoke-virtual {v1}, Lr0/q;->e0()V

    iget-boolean v8, v1, Lr0/q;->S:Z

    if-eqz v8, :cond_1

    invoke-virtual {v1, v7}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lr0/q;->o0()V

    :goto_1
    sget-object v7, Le2/g;->f:Le2/e;

    invoke-static {v7, v2, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v4, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v1, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v1, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v5, v1}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v21, 0x6c00

    const v22, 0x39faa

    iget-object v2, v0, Lnd/z;->l:Ljava/lang/String;

    move-object/from16 v19, v1

    const/4 v1, 0x0

    move-object v4, v2

    iget-wide v2, v0, Lnd/z;->m:J

    move-object v7, v4

    iget-wide v4, v0, Lnd/z;->n:J

    iget-object v0, v0, Lnd/z;->o:Lt2/k;

    move v8, v6

    move-object v6, v0

    move-object v0, v7

    const/4 v7, 0x0

    move v10, v8

    const-wide/16 v8, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    move v14, v13

    const/4 v13, 0x0

    move v15, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x1

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v23, v20

    const/16 v20, 0x0

    invoke-static/range {v0 .. v22}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v0, v19

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    invoke-virtual {v0}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
