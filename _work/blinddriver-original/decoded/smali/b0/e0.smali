.class public final synthetic Lb0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Li9/c;

.field public final synthetic B:Lu2/q;

.field public final synthetic C:Lb3/c;

.field public final synthetic l:Lz0/d;

.field public final synthetic m:Lb0/r1;

.field public final synthetic n:Lp2/m0;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Lb0/v2;

.field public final synthetic r:Lu2/x;

.field public final synthetic s:Lu2/d0;

.field public final synthetic t:Lf1/r;

.field public final synthetic u:Lf1/r;

.field public final synthetic v:Lf1/r;

.field public final synthetic w:Lf1/r;

.field public final synthetic x:Ly/c;

.field public final synthetic y:Lm0/v1;

.field public final synthetic z:Z


# direct methods
.method public synthetic constructor <init>(Lz0/d;Lb0/r1;Lp2/m0;IILb0/v2;Lu2/x;Lu2/d0;Lf1/r;Lf1/r;Lf1/r;Lf1/r;Ly/c;Lm0/v1;ZLi9/c;Lu2/q;Lb3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/e0;->l:Lz0/d;

    iput-object p2, p0, Lb0/e0;->m:Lb0/r1;

    iput-object p3, p0, Lb0/e0;->n:Lp2/m0;

    iput p4, p0, Lb0/e0;->o:I

    iput p5, p0, Lb0/e0;->p:I

    iput-object p6, p0, Lb0/e0;->q:Lb0/v2;

    iput-object p7, p0, Lb0/e0;->r:Lu2/x;

    iput-object p8, p0, Lb0/e0;->s:Lu2/d0;

    iput-object p9, p0, Lb0/e0;->t:Lf1/r;

    iput-object p10, p0, Lb0/e0;->u:Lf1/r;

    iput-object p11, p0, Lb0/e0;->v:Lf1/r;

    iput-object p12, p0, Lb0/e0;->w:Lf1/r;

    iput-object p13, p0, Lb0/e0;->x:Ly/c;

    iput-object p14, p0, Lb0/e0;->y:Lm0/v1;

    iput-boolean p15, p0, Lb0/e0;->z:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lb0/e0;->A:Li9/c;

    move-object/from16 p1, p17

    iput-object p1, p0, Lb0/e0;->B:Lu2/q;

    move-object/from16 p1, p18

    iput-object p1, p0, Lb0/e0;->C:Lb3/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr0/q;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

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

    new-instance v3, Lb0/l0;

    iget-object v4, v0, Lb0/e0;->m:Lb0/r1;

    iget-object v5, v0, Lb0/e0;->n:Lp2/m0;

    iget v6, v0, Lb0/e0;->o:I

    iget v7, v0, Lb0/e0;->p:I

    iget-object v8, v0, Lb0/e0;->q:Lb0/v2;

    iget-object v9, v0, Lb0/e0;->r:Lu2/x;

    iget-object v10, v0, Lb0/e0;->s:Lu2/d0;

    iget-object v11, v0, Lb0/e0;->t:Lf1/r;

    iget-object v12, v0, Lb0/e0;->u:Lf1/r;

    iget-object v13, v0, Lb0/e0;->v:Lf1/r;

    iget-object v14, v0, Lb0/e0;->w:Lf1/r;

    iget-object v15, v0, Lb0/e0;->x:Ly/c;

    iget-object v2, v0, Lb0/e0;->y:Lm0/v1;

    move-object/from16 v16, v2

    iget-boolean v2, v0, Lb0/e0;->z:Z

    move/from16 v17, v2

    iget-object v2, v0, Lb0/e0;->A:Li9/c;

    move-object/from16 v18, v2

    iget-object v2, v0, Lb0/e0;->B:Lu2/q;

    move-object/from16 v19, v2

    iget-object v2, v0, Lb0/e0;->C:Lb3/c;

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v20}, Lb0/l0;-><init>(Lb0/r1;Lp2/m0;IILb0/v2;Lu2/x;Lu2/d0;Lf1/r;Lf1/r;Lf1/r;Lf1/r;Ly/c;Lm0/v1;ZLi9/c;Lu2/q;Lb3/c;)V

    const v2, -0x2a4ac0e

    invoke-static {v2, v3, v1}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, Lb0/e0;->l:Lz0/d;

    invoke-virtual {v0, v2, v1, v3}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
