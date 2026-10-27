.class public final synthetic Lo0/b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Lp2/m0;

.field public final synthetic B:I

.field public final synthetic C:I

.field public final synthetic D:I

.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:Lt2/k;

.field public final synthetic r:Lt2/p;

.field public final synthetic s:J

.field public final synthetic t:La3/k;

.field public final synthetic u:J

.field public final synthetic v:I

.field public final synthetic w:Z

.field public final synthetic x:I

.field public final synthetic y:I

.field public final synthetic z:Li9/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;IIII)V
    .locals 1

    move/from16 v0, p23

    iput v0, p0, Lo0/b5;->l:I

    iput-object p1, p0, Lo0/b5;->m:Ljava/lang/String;

    iput-object p2, p0, Lo0/b5;->n:Lf1/r;

    iput-wide p3, p0, Lo0/b5;->o:J

    iput-wide p5, p0, Lo0/b5;->p:J

    iput-object p7, p0, Lo0/b5;->q:Lt2/k;

    iput-object p8, p0, Lo0/b5;->r:Lt2/p;

    iput-wide p9, p0, Lo0/b5;->s:J

    iput-object p11, p0, Lo0/b5;->t:La3/k;

    iput-wide p12, p0, Lo0/b5;->u:J

    iput p14, p0, Lo0/b5;->v:I

    move/from16 p1, p15

    iput-boolean p1, p0, Lo0/b5;->w:Z

    move/from16 p1, p16

    iput p1, p0, Lo0/b5;->x:I

    move/from16 p1, p17

    iput p1, p0, Lo0/b5;->y:I

    move-object/from16 p1, p18

    iput-object p1, p0, Lo0/b5;->z:Li9/c;

    move-object/from16 p1, p19

    iput-object p1, p0, Lo0/b5;->A:Lp2/m0;

    move/from16 p1, p20

    iput p1, p0, Lo0/b5;->B:I

    move/from16 p1, p21

    iput p1, p0, Lo0/b5;->C:I

    move/from16 p1, p22

    iput p1, p0, Lo0/b5;->D:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lo0/b5;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v21, p1

    check-cast v21, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/b5;->B:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v22

    iget v1, v0, Lo0/b5;->C:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v23

    iget-object v2, v0, Lo0/b5;->m:Ljava/lang/String;

    iget-object v3, v0, Lo0/b5;->n:Lf1/r;

    iget-wide v4, v0, Lo0/b5;->o:J

    iget-wide v6, v0, Lo0/b5;->p:J

    iget-object v8, v0, Lo0/b5;->q:Lt2/k;

    iget-object v9, v0, Lo0/b5;->r:Lt2/p;

    iget-wide v10, v0, Lo0/b5;->s:J

    iget-object v12, v0, Lo0/b5;->t:La3/k;

    iget-wide v13, v0, Lo0/b5;->u:J

    iget v15, v0, Lo0/b5;->v:I

    iget-boolean v1, v0, Lo0/b5;->w:Z

    move/from16 v16, v1

    iget v1, v0, Lo0/b5;->x:I

    move/from16 v17, v1

    iget v1, v0, Lo0/b5;->y:I

    move/from16 v18, v1

    iget-object v1, v0, Lo0/b5;->z:Li9/c;

    move-object/from16 v19, v1

    iget-object v1, v0, Lo0/b5;->A:Lp2/m0;

    iget v0, v0, Lo0/b5;->D:I

    move/from16 v24, v0

    move-object/from16 v20, v1

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    move-object/from16 v20, p1

    check-cast v20, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/b5;->B:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v21

    iget v1, v0, Lo0/b5;->C:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v22

    iget-object v1, v0, Lo0/b5;->m:Ljava/lang/String;

    iget-object v2, v0, Lo0/b5;->n:Lf1/r;

    iget-wide v3, v0, Lo0/b5;->o:J

    iget-wide v5, v0, Lo0/b5;->p:J

    iget-object v7, v0, Lo0/b5;->q:Lt2/k;

    iget-object v8, v0, Lo0/b5;->r:Lt2/p;

    iget-wide v9, v0, Lo0/b5;->s:J

    iget-object v11, v0, Lo0/b5;->t:La3/k;

    iget-wide v12, v0, Lo0/b5;->u:J

    iget v14, v0, Lo0/b5;->v:I

    iget-boolean v15, v0, Lo0/b5;->w:Z

    move-object/from16 v16, v1

    iget v1, v0, Lo0/b5;->x:I

    move/from16 v17, v1

    iget v1, v0, Lo0/b5;->y:I

    move/from16 v18, v1

    iget-object v1, v0, Lo0/b5;->z:Li9/c;

    move-object/from16 v19, v1

    iget-object v1, v0, Lo0/b5;->A:Lp2/m0;

    iget v0, v0, Lo0/b5;->D:I

    move-object/from16 v23, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v23

    move/from16 v23, v0

    invoke-static/range {v1 .. v23}, Lo0/d5;->b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
