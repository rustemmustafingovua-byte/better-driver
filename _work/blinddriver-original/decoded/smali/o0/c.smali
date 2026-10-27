.class public final synthetic Lo0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lz0/d;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Li9/e;

.field public final synthetic o:Li9/e;

.field public final synthetic p:Lm1/h0;

.field public final synthetic q:J

.field public final synthetic r:F

.field public final synthetic s:J

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:J


# direct methods
.method public synthetic constructor <init>(Lz0/d;Lf1/r;Li9/e;Li9/e;Lm1/h0;JFJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/c;->l:Lz0/d;

    iput-object p2, p0, Lo0/c;->m:Lf1/r;

    iput-object p3, p0, Lo0/c;->n:Li9/e;

    iput-object p4, p0, Lo0/c;->o:Li9/e;

    iput-object p5, p0, Lo0/c;->p:Lm1/h0;

    iput-wide p6, p0, Lo0/c;->q:J

    iput p8, p0, Lo0/c;->r:F

    iput-wide p9, p0, Lo0/c;->s:J

    iput-wide p11, p0, Lo0/c;->t:J

    iput-wide p13, p0, Lo0/c;->u:J

    move-wide p1, p15

    iput-wide p1, p0, Lo0/c;->v:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v17

    iget-object v1, v0, Lo0/c;->l:Lz0/d;

    move-object v2, v1

    iget-object v1, v0, Lo0/c;->m:Lf1/r;

    move-object v3, v2

    iget-object v2, v0, Lo0/c;->n:Li9/e;

    move-object v4, v3

    iget-object v3, v0, Lo0/c;->o:Li9/e;

    move-object v5, v4

    iget-object v4, v0, Lo0/c;->p:Lm1/h0;

    move-object v7, v5

    iget-wide v5, v0, Lo0/c;->q:J

    move-object v8, v7

    iget v7, v0, Lo0/c;->r:F

    move-object v10, v8

    iget-wide v8, v0, Lo0/c;->s:J

    move-object v12, v10

    iget-wide v10, v0, Lo0/c;->t:J

    move-object v14, v12

    iget-wide v12, v0, Lo0/c;->u:J

    move-object v15, v1

    iget-wide v0, v0, Lo0/c;->v:J

    move-wide/from16 v18, v0

    move-object v0, v14

    move-object v1, v15

    move-wide/from16 v14, v18

    invoke-static/range {v0 .. v17}, Lo0/j;->a(Lz0/d;Lf1/r;Li9/e;Li9/e;Lm1/h0;JFJJJJLr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
