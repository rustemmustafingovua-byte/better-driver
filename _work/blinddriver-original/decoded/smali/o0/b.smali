.class public final synthetic Lo0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:I

.field public final synthetic l:I

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lz0/d;

.field public final synthetic o:Lf1/r;

.field public final synthetic p:Li9/e;

.field public final synthetic q:Li9/e;

.field public final synthetic r:Li9/e;

.field public final synthetic s:Lm1/h0;

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:J

.field public final synthetic w:J

.field public final synthetic x:F

.field public final synthetic y:Lf3/u;

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;III)V
    .locals 1

    move/from16 v0, p20

    iput v0, p0, Lo0/b;->l:I

    iput-object p1, p0, Lo0/b;->m:Li9/a;

    iput-object p2, p0, Lo0/b;->n:Lz0/d;

    iput-object p3, p0, Lo0/b;->o:Lf1/r;

    iput-object p4, p0, Lo0/b;->p:Li9/e;

    iput-object p5, p0, Lo0/b;->q:Li9/e;

    iput-object p6, p0, Lo0/b;->r:Li9/e;

    iput-object p7, p0, Lo0/b;->s:Lm1/h0;

    iput-wide p8, p0, Lo0/b;->t:J

    iput-wide p10, p0, Lo0/b;->u:J

    iput-wide p12, p0, Lo0/b;->v:J

    move-wide p1, p14

    iput-wide p1, p0, Lo0/b;->w:J

    move/from16 p1, p16

    iput p1, p0, Lo0/b;->x:F

    move-object/from16 p1, p17

    iput-object p1, p0, Lo0/b;->y:Lf3/u;

    move/from16 p1, p18

    iput p1, p0, Lo0/b;->z:I

    move/from16 p1, p19

    iput p1, p0, Lo0/b;->A:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lo0/b;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v19, p1

    check-cast v19, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/b;->z:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v20

    iget-object v2, v0, Lo0/b;->m:Li9/a;

    iget-object v3, v0, Lo0/b;->n:Lz0/d;

    iget-object v4, v0, Lo0/b;->o:Lf1/r;

    iget-object v5, v0, Lo0/b;->p:Li9/e;

    iget-object v6, v0, Lo0/b;->q:Li9/e;

    iget-object v7, v0, Lo0/b;->r:Li9/e;

    iget-object v8, v0, Lo0/b;->s:Lm1/h0;

    iget-wide v9, v0, Lo0/b;->t:J

    iget-wide v11, v0, Lo0/b;->u:J

    iget-wide v13, v0, Lo0/b;->v:J

    move-object v15, v2

    iget-wide v1, v0, Lo0/b;->w:J

    move-wide/from16 v16, v1

    iget v1, v0, Lo0/b;->x:F

    iget-object v2, v0, Lo0/b;->y:Lf3/u;

    iget v0, v0, Lo0/b;->A:I

    move/from16 v21, v0

    move-object/from16 v18, v2

    move-object v2, v15

    move-wide/from16 v15, v16

    move/from16 v17, v1

    invoke-static/range {v2 .. v21}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v18, p1

    check-cast v18, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/b;->z:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v19

    iget v1, v0, Lo0/b;->A:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v20

    iget-object v1, v0, Lo0/b;->m:Li9/a;

    iget-object v2, v0, Lo0/b;->n:Lz0/d;

    iget-object v3, v0, Lo0/b;->o:Lf1/r;

    iget-object v4, v0, Lo0/b;->p:Li9/e;

    iget-object v5, v0, Lo0/b;->q:Li9/e;

    iget-object v6, v0, Lo0/b;->r:Li9/e;

    iget-object v7, v0, Lo0/b;->s:Lm1/h0;

    iget-wide v8, v0, Lo0/b;->t:J

    iget-wide v10, v0, Lo0/b;->u:J

    iget-wide v12, v0, Lo0/b;->v:J

    iget-wide v14, v0, Lo0/b;->w:J

    move-object/from16 v16, v1

    iget v1, v0, Lo0/b;->x:F

    iget-object v0, v0, Lo0/b;->y:Lf3/u;

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v0

    invoke-static/range {v1 .. v20}, Lo0/j;->c(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
