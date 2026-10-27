.class public final synthetic Lo0/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lo0/d2;

.field public final synthetic m:Z

.field public final synthetic n:Z

.field public final synthetic o:Ls/i;

.field public final synthetic p:Lf1/r;

.field public final synthetic q:Lo0/x4;

.field public final synthetic r:Lm1/h0;

.field public final synthetic s:F

.field public final synthetic t:F

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Lo0/d2;ZZLs/i;Lf1/r;Lo0/x4;Lm1/h0;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/a2;->l:Lo0/d2;

    iput-boolean p2, p0, Lo0/a2;->m:Z

    iput-boolean p3, p0, Lo0/a2;->n:Z

    iput-object p4, p0, Lo0/a2;->o:Ls/i;

    iput-object p5, p0, Lo0/a2;->p:Lf1/r;

    iput-object p6, p0, Lo0/a2;->q:Lo0/x4;

    iput-object p7, p0, Lo0/a2;->r:Lm1/h0;

    iput p8, p0, Lo0/a2;->s:F

    iput p9, p0, Lo0/a2;->t:F

    iput p10, p0, Lo0/a2;->u:I

    iput p11, p0, Lo0/a2;->v:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/a2;->u:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v10

    iget-object v0, p0, Lo0/a2;->l:Lo0/d2;

    iget-boolean v1, p0, Lo0/a2;->m:Z

    iget-boolean v2, p0, Lo0/a2;->n:Z

    iget-object v3, p0, Lo0/a2;->o:Ls/i;

    iget-object v4, p0, Lo0/a2;->p:Lf1/r;

    iget-object v5, p0, Lo0/a2;->q:Lo0/x4;

    iget-object v6, p0, Lo0/a2;->r:Lm1/h0;

    iget v7, p0, Lo0/a2;->s:F

    iget v8, p0, Lo0/a2;->t:F

    iget v11, p0, Lo0/a2;->v:I

    invoke-virtual/range {v0 .. v11}, Lo0/d2;->a(ZZLs/i;Lf1/r;Lo0/x4;Lm1/h0;FFLr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
