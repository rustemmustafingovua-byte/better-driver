.class public final synthetic Lo0/j3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lo0/s3;

.field public final synthetic m:Z

.field public final synthetic n:Li9/a;

.field public final synthetic o:Lm1/h0;

.field public final synthetic p:Lf1/r;

.field public final synthetic q:Z

.field public final synthetic r:Lo0/c3;

.field public final synthetic s:Lp/x;

.field public final synthetic t:Lu/s0;

.field public final synthetic u:Li9/e;

.field public final synthetic v:Lz0/d;

.field public final synthetic w:I


# direct methods
.method public synthetic constructor <init>(Lo0/s3;ZLi9/a;Lm1/h0;Lf1/r;ZLo0/c3;Lp/x;Lu/s0;Li9/e;Lz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/j3;->l:Lo0/s3;

    iput-boolean p2, p0, Lo0/j3;->m:Z

    iput-object p3, p0, Lo0/j3;->n:Li9/a;

    iput-object p4, p0, Lo0/j3;->o:Lm1/h0;

    iput-object p5, p0, Lo0/j3;->p:Lf1/r;

    iput-boolean p6, p0, Lo0/j3;->q:Z

    iput-object p7, p0, Lo0/j3;->r:Lo0/c3;

    iput-object p8, p0, Lo0/j3;->s:Lp/x;

    iput-object p9, p0, Lo0/j3;->t:Lu/s0;

    iput-object p10, p0, Lo0/j3;->u:Li9/e;

    iput-object p11, p0, Lo0/j3;->v:Lz0/d;

    iput p12, p0, Lo0/j3;->w:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/j3;->w:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v12

    iget-object v0, p0, Lo0/j3;->l:Lo0/s3;

    iget-boolean v1, p0, Lo0/j3;->m:Z

    iget-object v2, p0, Lo0/j3;->n:Li9/a;

    iget-object v3, p0, Lo0/j3;->o:Lm1/h0;

    iget-object v4, p0, Lo0/j3;->p:Lf1/r;

    iget-boolean v5, p0, Lo0/j3;->q:Z

    iget-object v6, p0, Lo0/j3;->r:Lo0/c3;

    iget-object v7, p0, Lo0/j3;->s:Lp/x;

    iget-object v8, p0, Lo0/j3;->t:Lu/s0;

    iget-object v9, p0, Lo0/j3;->u:Li9/e;

    iget-object v10, p0, Lo0/j3;->v:Lz0/d;

    invoke-static/range {v0 .. v12}, Lo0/m3;->a(Lo0/s3;ZLi9/a;Lm1/h0;Lf1/r;ZLo0/c3;Lp/x;Lu/s0;Li9/e;Lz0/d;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
