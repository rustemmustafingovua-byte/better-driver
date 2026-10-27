.class public final synthetic Lod/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lp2/g;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:I

.field public final synthetic s:Z

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:Lp2/m0;


# direct methods
.method public synthetic constructor <init>(Lp2/g;Lf1/r;JJJJIZIILp2/m0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/l0;->l:Lp2/g;

    iput-object p2, p0, Lod/l0;->m:Lf1/r;

    iput-wide p3, p0, Lod/l0;->n:J

    iput-wide p5, p0, Lod/l0;->o:J

    iput-wide p7, p0, Lod/l0;->p:J

    iput-wide p9, p0, Lod/l0;->q:J

    iput p11, p0, Lod/l0;->r:I

    iput-boolean p12, p0, Lod/l0;->s:Z

    iput p13, p0, Lod/l0;->t:I

    iput p14, p0, Lod/l0;->u:I

    iput-object p15, p0, Lod/l0;->v:Lp2/m0;

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

    iget-object v1, v0, Lod/l0;->l:Lp2/g;

    move-object v2, v1

    iget-object v1, v0, Lod/l0;->m:Lf1/r;

    move-object v4, v2

    iget-wide v2, v0, Lod/l0;->n:J

    move-object v6, v4

    iget-wide v4, v0, Lod/l0;->o:J

    move-object v8, v6

    iget-wide v6, v0, Lod/l0;->p:J

    move-object v10, v8

    iget-wide v8, v0, Lod/l0;->q:J

    move-object v11, v10

    iget v10, v0, Lod/l0;->r:I

    move-object v12, v11

    iget-boolean v11, v0, Lod/l0;->s:Z

    move-object v13, v12

    iget v12, v0, Lod/l0;->t:I

    move-object v14, v13

    iget v13, v0, Lod/l0;->u:I

    iget-object v0, v0, Lod/l0;->v:Lp2/m0;

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v16}, Lod/m;->t(Lp2/g;Lf1/r;JJJJIZIILp2/m0;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
