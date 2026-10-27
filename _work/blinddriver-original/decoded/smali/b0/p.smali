.class public final synthetic Lb0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Z

.field public final synthetic p:Lp2/m0;

.field public final synthetic q:Lb0/q1;

.field public final synthetic r:Lb0/p1;

.field public final synthetic s:Z

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:Lu2/d0;

.field public final synthetic w:Li9/c;

.field public final synthetic x:Ls/i;

.field public final synthetic y:Lm1/j0;

.field public final synthetic z:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Lb0/q1;Lb0/p1;ZIILu2/d0;Li9/c;Ls/i;Lm1/j0;Lz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/p;->l:Ljava/lang/String;

    iput-object p2, p0, Lb0/p;->m:Li9/c;

    iput-object p3, p0, Lb0/p;->n:Lf1/r;

    iput-boolean p4, p0, Lb0/p;->o:Z

    iput-object p5, p0, Lb0/p;->p:Lp2/m0;

    iput-object p6, p0, Lb0/p;->q:Lb0/q1;

    iput-object p7, p0, Lb0/p;->r:Lb0/p1;

    iput-boolean p8, p0, Lb0/p;->s:Z

    iput p9, p0, Lb0/p;->t:I

    iput p10, p0, Lb0/p;->u:I

    iput-object p11, p0, Lb0/p;->v:Lu2/d0;

    iput-object p12, p0, Lb0/p;->w:Li9/c;

    iput-object p13, p0, Lb0/p;->x:Ls/i;

    iput-object p14, p0, Lb0/p;->y:Lm1/j0;

    iput-object p15, p0, Lb0/p;->z:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v16

    iget-object v1, v0, Lb0/p;->l:Ljava/lang/String;

    move-object v2, v1

    iget-object v1, v0, Lb0/p;->m:Li9/c;

    move-object v3, v2

    iget-object v2, v0, Lb0/p;->n:Lf1/r;

    move-object v4, v3

    iget-boolean v3, v0, Lb0/p;->o:Z

    move-object v5, v4

    iget-object v4, v0, Lb0/p;->p:Lp2/m0;

    move-object v6, v5

    iget-object v5, v0, Lb0/p;->q:Lb0/q1;

    move-object v7, v6

    iget-object v6, v0, Lb0/p;->r:Lb0/p1;

    move-object v8, v7

    iget-boolean v7, v0, Lb0/p;->s:Z

    move-object v9, v8

    iget v8, v0, Lb0/p;->t:I

    move-object v10, v9

    iget v9, v0, Lb0/p;->u:I

    move-object v11, v10

    iget-object v10, v0, Lb0/p;->v:Lu2/d0;

    move-object v12, v11

    iget-object v11, v0, Lb0/p;->w:Li9/c;

    move-object v13, v12

    iget-object v12, v0, Lb0/p;->x:Ls/i;

    move-object v14, v13

    iget-object v13, v0, Lb0/p;->y:Lm1/j0;

    iget-object v0, v0, Lb0/p;->z:Lz0/d;

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v16}, Lb0/q;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Lb0/q1;Lb0/p1;ZIILu2/d0;Li9/c;Ls/i;Lm1/j0;Lz0/d;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
