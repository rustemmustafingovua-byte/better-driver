.class public final synthetic Lw/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:Lw/p;

.field public final synthetic n:Lu/s0;

.field public final synthetic o:Z

.field public final synthetic p:Lr/k;

.field public final synthetic q:Z

.field public final synthetic r:Lp/j;

.field public final synthetic s:Lf1/d;

.field public final synthetic t:Lu/g;

.field public final synthetic u:Lf1/i;

.field public final synthetic v:Lu/e;

.field public final synthetic w:Li9/c;

.field public final synthetic x:I

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;Lw/p;Lu/s0;ZLr/k;ZLp/j;Lf1/d;Lu/g;Lf1/i;Lu/e;Li9/c;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/h;->l:Lf1/r;

    iput-object p2, p0, Lw/h;->m:Lw/p;

    iput-object p3, p0, Lw/h;->n:Lu/s0;

    iput-boolean p4, p0, Lw/h;->o:Z

    iput-object p5, p0, Lw/h;->p:Lr/k;

    iput-boolean p6, p0, Lw/h;->q:Z

    iput-object p7, p0, Lw/h;->r:Lp/j;

    iput-object p8, p0, Lw/h;->s:Lf1/d;

    iput-object p9, p0, Lw/h;->t:Lu/g;

    iput-object p10, p0, Lw/h;->u:Lf1/i;

    iput-object p11, p0, Lw/h;->v:Lu/e;

    iput-object p12, p0, Lw/h;->w:Li9/c;

    iput p13, p0, Lw/h;->x:I

    iput p14, p0, Lw/h;->y:I

    iput p15, p0, Lw/h;->z:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lw/h;->x:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v13

    iget v1, v0, Lw/h;->y:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v14

    iget-object v1, v0, Lw/h;->l:Lf1/r;

    move-object v2, v1

    iget-object v1, v0, Lw/h;->m:Lw/p;

    move-object v3, v2

    iget-object v2, v0, Lw/h;->n:Lu/s0;

    move-object v4, v3

    iget-boolean v3, v0, Lw/h;->o:Z

    move-object v5, v4

    iget-object v4, v0, Lw/h;->p:Lr/k;

    move-object v6, v5

    iget-boolean v5, v0, Lw/h;->q:Z

    move-object v7, v6

    iget-object v6, v0, Lw/h;->r:Lp/j;

    move-object v8, v7

    iget-object v7, v0, Lw/h;->s:Lf1/d;

    move-object v9, v8

    iget-object v8, v0, Lw/h;->t:Lu/g;

    move-object v10, v9

    iget-object v9, v0, Lw/h;->u:Lf1/i;

    move-object v11, v10

    iget-object v10, v0, Lw/h;->v:Lu/e;

    move-object v15, v11

    iget-object v11, v0, Lw/h;->w:Li9/c;

    iget v0, v0, Lw/h;->z:I

    move-object/from16 v16, v15

    move v15, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Lc6/o;->C(Lf1/r;Lw/p;Lu/s0;ZLr/k;ZLp/j;Lf1/d;Lu/g;Lf1/i;Lu/e;Li9/c;Lr0/q;III)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
