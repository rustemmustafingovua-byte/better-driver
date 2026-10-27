.class public final synthetic Lb0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:I

.field public final synthetic l:Lu2/x;

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Lp2/m0;

.field public final synthetic p:Lu2/d0;

.field public final synthetic q:Li9/c;

.field public final synthetic r:Ls/i;

.field public final synthetic s:Lm1/j0;

.field public final synthetic t:Z

.field public final synthetic u:I

.field public final synthetic v:I

.field public final synthetic w:Lu2/k;

.field public final synthetic x:Lb0/p1;

.field public final synthetic y:Z

.field public final synthetic z:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lu2/x;Li9/c;Lf1/r;Lp2/m0;Lu2/d0;Li9/c;Ls/i;Lm1/j0;ZIILu2/k;Lb0/p1;ZLz0/d;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/f0;->l:Lu2/x;

    iput-object p2, p0, Lb0/f0;->m:Li9/c;

    iput-object p3, p0, Lb0/f0;->n:Lf1/r;

    iput-object p4, p0, Lb0/f0;->o:Lp2/m0;

    iput-object p5, p0, Lb0/f0;->p:Lu2/d0;

    iput-object p6, p0, Lb0/f0;->q:Li9/c;

    iput-object p7, p0, Lb0/f0;->r:Ls/i;

    iput-object p8, p0, Lb0/f0;->s:Lm1/j0;

    iput-boolean p9, p0, Lb0/f0;->t:Z

    iput p10, p0, Lb0/f0;->u:I

    iput p11, p0, Lb0/f0;->v:I

    iput-object p12, p0, Lb0/f0;->w:Lu2/k;

    iput-object p13, p0, Lb0/f0;->x:Lb0/p1;

    iput-boolean p14, p0, Lb0/f0;->y:Z

    iput-object p15, p0, Lb0/f0;->z:Lz0/d;

    move/from16 p1, p16

    iput p1, p0, Lb0/f0;->A:I

    move/from16 p1, p17

    iput p1, p0, Lb0/f0;->B:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lb0/f0;->A:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v16

    iget v1, v0, Lb0/f0;->B:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v17

    iget-object v1, v0, Lb0/f0;->l:Lu2/x;

    move-object v2, v1

    iget-object v1, v0, Lb0/f0;->m:Li9/c;

    move-object v3, v2

    iget-object v2, v0, Lb0/f0;->n:Lf1/r;

    move-object v4, v3

    iget-object v3, v0, Lb0/f0;->o:Lp2/m0;

    move-object v5, v4

    iget-object v4, v0, Lb0/f0;->p:Lu2/d0;

    move-object v6, v5

    iget-object v5, v0, Lb0/f0;->q:Li9/c;

    move-object v7, v6

    iget-object v6, v0, Lb0/f0;->r:Ls/i;

    move-object v8, v7

    iget-object v7, v0, Lb0/f0;->s:Lm1/j0;

    move-object v9, v8

    iget-boolean v8, v0, Lb0/f0;->t:Z

    move-object v10, v9

    iget v9, v0, Lb0/f0;->u:I

    move-object v11, v10

    iget v10, v0, Lb0/f0;->v:I

    move-object v12, v11

    iget-object v11, v0, Lb0/f0;->w:Lu2/k;

    move-object v13, v12

    iget-object v12, v0, Lb0/f0;->x:Lb0/p1;

    move-object v14, v13

    iget-boolean v13, v0, Lb0/f0;->y:Z

    iget-object v0, v0, Lb0/f0;->z:Lz0/d;

    move-object/from16 v18, v14

    move-object v14, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v17}, Lb0/n1;->g(Lu2/x;Li9/c;Lf1/r;Lp2/m0;Lu2/d0;Li9/c;Ls/i;Lm1/j0;ZIILu2/k;Lb0/p1;ZLz0/d;Lr0/q;II)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
