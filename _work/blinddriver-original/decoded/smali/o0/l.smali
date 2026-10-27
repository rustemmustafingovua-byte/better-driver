.class public final synthetic Lo0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:J

.field public final synthetic p:Lp/a2;

.field public final synthetic q:Lf3/a0;

.field public final synthetic r:Lm1/h0;

.field public final synthetic s:J

.field public final synthetic t:F

.field public final synthetic u:F

.field public final synthetic v:Lz0/d;


# direct methods
.method public synthetic constructor <init>(ZLi9/a;Lf1/r;JLp/a2;Lf3/a0;Lm1/h0;JFFLz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/l;->l:Z

    iput-object p2, p0, Lo0/l;->m:Li9/a;

    iput-object p3, p0, Lo0/l;->n:Lf1/r;

    iput-wide p4, p0, Lo0/l;->o:J

    iput-object p6, p0, Lo0/l;->p:Lp/a2;

    iput-object p7, p0, Lo0/l;->q:Lf3/a0;

    iput-object p8, p0, Lo0/l;->r:Lm1/h0;

    iput-wide p9, p0, Lo0/l;->s:J

    iput p11, p0, Lo0/l;->t:F

    iput p12, p0, Lo0/l;->u:F

    iput-object p13, p0, Lo0/l;->v:Lz0/d;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x31

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v14

    iget-boolean v1, v0, Lo0/l;->l:Z

    move v2, v1

    iget-object v1, v0, Lo0/l;->m:Li9/a;

    move v3, v2

    iget-object v2, v0, Lo0/l;->n:Lf1/r;

    move v5, v3

    iget-wide v3, v0, Lo0/l;->o:J

    move v6, v5

    iget-object v5, v0, Lo0/l;->p:Lp/a2;

    move v7, v6

    iget-object v6, v0, Lo0/l;->q:Lf3/a0;

    move v8, v7

    iget-object v7, v0, Lo0/l;->r:Lm1/h0;

    move v10, v8

    iget-wide v8, v0, Lo0/l;->s:J

    move v11, v10

    iget v10, v0, Lo0/l;->t:F

    move v12, v11

    iget v11, v0, Lo0/l;->u:F

    iget-object v0, v0, Lo0/l;->v:Lz0/d;

    move v15, v12

    move-object v12, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Lo0/o;->a(ZLi9/a;Lf1/r;JLp/a2;Lf3/a0;Lm1/h0;JFFLz0/d;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
