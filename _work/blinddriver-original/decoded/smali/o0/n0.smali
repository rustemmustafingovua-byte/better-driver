.class public final synthetic Lo0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Li9/a;

.field public final synthetic o:Z

.field public final synthetic p:Lz0/d;

.field public final synthetic q:Lp2/m0;

.field public final synthetic r:Lm1/h0;

.field public final synthetic s:Lo0/n3;

.field public final synthetic t:Lo0/o3;

.field public final synthetic u:Lp/x;

.field public final synthetic v:F

.field public final synthetic w:Lu/s0;

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(ZLf1/r;Li9/a;ZLz0/d;Lp2/m0;Lm1/h0;Lo0/n3;Lo0/o3;Lp/x;FLu/s0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/n0;->l:Z

    iput-object p2, p0, Lo0/n0;->m:Lf1/r;

    iput-object p3, p0, Lo0/n0;->n:Li9/a;

    iput-boolean p4, p0, Lo0/n0;->o:Z

    iput-object p5, p0, Lo0/n0;->p:Lz0/d;

    iput-object p6, p0, Lo0/n0;->q:Lp2/m0;

    iput-object p7, p0, Lo0/n0;->r:Lm1/h0;

    iput-object p8, p0, Lo0/n0;->s:Lo0/n3;

    iput-object p9, p0, Lo0/n0;->t:Lo0/o3;

    iput-object p10, p0, Lo0/n0;->u:Lp/x;

    iput p11, p0, Lo0/n0;->v:F

    iput-object p12, p0, Lo0/n0;->w:Lu/s0;

    iput p13, p0, Lo0/n0;->x:I

    iput p14, p0, Lo0/n0;->y:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/n0;->x:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v13

    iget v1, v0, Lo0/n0;->y:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v14

    iget-boolean v1, v0, Lo0/n0;->l:Z

    move v2, v1

    iget-object v1, v0, Lo0/n0;->m:Lf1/r;

    move v3, v2

    iget-object v2, v0, Lo0/n0;->n:Li9/a;

    move v4, v3

    iget-boolean v3, v0, Lo0/n0;->o:Z

    move v5, v4

    iget-object v4, v0, Lo0/n0;->p:Lz0/d;

    move v6, v5

    iget-object v5, v0, Lo0/n0;->q:Lp2/m0;

    move v7, v6

    iget-object v6, v0, Lo0/n0;->r:Lm1/h0;

    move v8, v7

    iget-object v7, v0, Lo0/n0;->s:Lo0/n3;

    move v9, v8

    iget-object v8, v0, Lo0/n0;->t:Lo0/o3;

    move v10, v9

    iget-object v9, v0, Lo0/n0;->u:Lp/x;

    move v11, v10

    iget v10, v0, Lo0/n0;->v:F

    iget-object v0, v0, Lo0/n0;->w:Lu/s0;

    move v15, v11

    move-object v11, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Lo0/r0;->c(ZLf1/r;Li9/a;ZLz0/d;Lp2/m0;Lm1/h0;Lo0/n3;Lo0/o3;Lp/x;FLu/s0;Lr0/q;II)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
