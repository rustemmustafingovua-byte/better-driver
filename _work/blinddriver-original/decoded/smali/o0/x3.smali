.class public final synthetic Lo0/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lo0/a4;

.field public final synthetic m:Lo0/o4;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Z

.field public final synthetic p:Lo0/t3;

.field public final synthetic q:Li9/e;

.field public final synthetic r:Li9/f;

.field public final synthetic s:F

.field public final synthetic t:F

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Lo0/a4;Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/x3;->l:Lo0/a4;

    iput-object p2, p0, Lo0/x3;->m:Lo0/o4;

    iput-object p3, p0, Lo0/x3;->n:Lf1/r;

    iput-boolean p4, p0, Lo0/x3;->o:Z

    iput-object p5, p0, Lo0/x3;->p:Lo0/t3;

    iput-object p6, p0, Lo0/x3;->q:Li9/e;

    iput-object p7, p0, Lo0/x3;->r:Li9/f;

    iput p8, p0, Lo0/x3;->s:F

    iput p9, p0, Lo0/x3;->t:F

    iput p10, p0, Lo0/x3;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/x3;->u:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v10

    iget-object v0, p0, Lo0/x3;->l:Lo0/a4;

    iget-object v1, p0, Lo0/x3;->m:Lo0/o4;

    iget-object v2, p0, Lo0/x3;->n:Lf1/r;

    iget-boolean v3, p0, Lo0/x3;->o:Z

    iget-object v4, p0, Lo0/x3;->p:Lo0/t3;

    iget-object v5, p0, Lo0/x3;->q:Li9/e;

    iget-object v6, p0, Lo0/x3;->r:Li9/f;

    iget v7, p0, Lo0/x3;->s:F

    iget v8, p0, Lo0/x3;->t:F

    invoke-virtual/range {v0 .. v10}, Lo0/a4;->b(Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
