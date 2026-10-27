.class public final synthetic Lo0/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:Lm1/h0;

.field public final synthetic C:Lo0/x4;

.field public final synthetic D:I

.field public final synthetic E:I

.field public final synthetic F:I

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Z

.field public final synthetic p:Lp2/m0;

.field public final synthetic q:Li9/e;

.field public final synthetic r:Li9/e;

.field public final synthetic s:Li9/e;

.field public final synthetic t:Li9/e;

.field public final synthetic u:Z

.field public final synthetic v:Lu2/d0;

.field public final synthetic w:Lb0/q1;

.field public final synthetic x:Lb0/p1;

.field public final synthetic y:Z

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/e2;->l:Ljava/lang/String;

    iput-object p2, p0, Lo0/e2;->m:Li9/c;

    iput-object p3, p0, Lo0/e2;->n:Lf1/r;

    iput-boolean p4, p0, Lo0/e2;->o:Z

    iput-object p5, p0, Lo0/e2;->p:Lp2/m0;

    iput-object p6, p0, Lo0/e2;->q:Li9/e;

    iput-object p7, p0, Lo0/e2;->r:Li9/e;

    iput-object p8, p0, Lo0/e2;->s:Li9/e;

    iput-object p9, p0, Lo0/e2;->t:Li9/e;

    iput-boolean p10, p0, Lo0/e2;->u:Z

    iput-object p11, p0, Lo0/e2;->v:Lu2/d0;

    iput-object p12, p0, Lo0/e2;->w:Lb0/q1;

    iput-object p13, p0, Lo0/e2;->x:Lb0/p1;

    iput-boolean p14, p0, Lo0/e2;->y:Z

    iput p15, p0, Lo0/e2;->z:I

    move/from16 p1, p16

    iput p1, p0, Lo0/e2;->A:I

    move-object/from16 p1, p17

    iput-object p1, p0, Lo0/e2;->B:Lm1/h0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lo0/e2;->C:Lo0/x4;

    move/from16 p1, p19

    iput p1, p0, Lo0/e2;->D:I

    move/from16 p1, p20

    iput p1, p0, Lo0/e2;->E:I

    move/from16 p1, p21

    iput p1, p0, Lo0/e2;->F:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/e2;->D:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v19

    iget v1, v0, Lo0/e2;->E:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v20

    iget-object v1, v0, Lo0/e2;->l:Ljava/lang/String;

    move-object v2, v1

    iget-object v1, v0, Lo0/e2;->m:Li9/c;

    move-object v3, v2

    iget-object v2, v0, Lo0/e2;->n:Lf1/r;

    move-object v4, v3

    iget-boolean v3, v0, Lo0/e2;->o:Z

    move-object v5, v4

    iget-object v4, v0, Lo0/e2;->p:Lp2/m0;

    move-object v6, v5

    iget-object v5, v0, Lo0/e2;->q:Li9/e;

    move-object v7, v6

    iget-object v6, v0, Lo0/e2;->r:Li9/e;

    move-object v8, v7

    iget-object v7, v0, Lo0/e2;->s:Li9/e;

    move-object v9, v8

    iget-object v8, v0, Lo0/e2;->t:Li9/e;

    move-object v10, v9

    iget-boolean v9, v0, Lo0/e2;->u:Z

    move-object v11, v10

    iget-object v10, v0, Lo0/e2;->v:Lu2/d0;

    move-object v12, v11

    iget-object v11, v0, Lo0/e2;->w:Lb0/q1;

    move-object v13, v12

    iget-object v12, v0, Lo0/e2;->x:Lb0/p1;

    move-object v14, v13

    iget-boolean v13, v0, Lo0/e2;->y:Z

    move-object v15, v14

    iget v14, v0, Lo0/e2;->z:I

    move-object/from16 v16, v15

    iget v15, v0, Lo0/e2;->A:I

    move-object/from16 v17, v1

    iget-object v1, v0, Lo0/e2;->B:Lm1/h0;

    move-object/from16 v21, v1

    iget-object v1, v0, Lo0/e2;->C:Lo0/x4;

    iget v0, v0, Lo0/e2;->F:I

    move-object/from16 v22, v21

    move/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v22

    move-object/from16 v22, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v22

    invoke-static/range {v0 .. v21}, Lo0/j2;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;Lr0/q;III)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
