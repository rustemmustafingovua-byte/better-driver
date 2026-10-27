.class public final synthetic Lo0/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:F

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Z

.field public final synthetic p:Lo9/a;

.field public final synthetic q:I

.field public final synthetic r:Li9/a;

.field public final synthetic s:Lo0/t3;

.field public final synthetic t:Ls/i;

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/d4;->l:F

    iput-object p2, p0, Lo0/d4;->m:Li9/c;

    iput-object p3, p0, Lo0/d4;->n:Lf1/r;

    iput-boolean p4, p0, Lo0/d4;->o:Z

    iput-object p5, p0, Lo0/d4;->p:Lo9/a;

    iput p6, p0, Lo0/d4;->q:I

    iput-object p7, p0, Lo0/d4;->r:Li9/a;

    iput-object p8, p0, Lo0/d4;->s:Lo0/t3;

    iput-object p9, p0, Lo0/d4;->t:Ls/i;

    iput p10, p0, Lo0/d4;->u:I

    iput p11, p0, Lo0/d4;->v:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/d4;->u:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v10

    iget v0, p0, Lo0/d4;->l:F

    iget-object v1, p0, Lo0/d4;->m:Li9/c;

    iget-object v2, p0, Lo0/d4;->n:Lf1/r;

    iget-boolean v3, p0, Lo0/d4;->o:Z

    iget-object v4, p0, Lo0/d4;->p:Lo9/a;

    iget v5, p0, Lo0/d4;->q:I

    iget-object v6, p0, Lo0/d4;->r:Li9/a;

    iget-object v7, p0, Lo0/d4;->s:Lo0/t3;

    iget-object v8, p0, Lo0/d4;->t:Ls/i;

    iget v11, p0, Lo0/d4;->v:I

    invoke-static/range {v0 .. v11}, Lo0/m4;->b(FLi9/c;Lf1/r;ZLo9/a;ILi9/a;Lo0/t3;Ls/i;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
