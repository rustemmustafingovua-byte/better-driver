.class public final synthetic Lo0/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lc2/f1;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Lc2/f1;

.field public final synthetic p:I

.field public final synthetic q:Lc2/f1;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lc2/f1;IILc2/f1;ILc2/f1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/s0;->l:Lc2/f1;

    iput p2, p0, Lo0/s0;->m:I

    iput p3, p0, Lo0/s0;->n:I

    iput-object p4, p0, Lo0/s0;->o:Lc2/f1;

    iput p5, p0, Lo0/s0;->p:I

    iput-object p6, p0, Lo0/s0;->q:Lc2/f1;

    iput p7, p0, Lo0/s0;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lc2/e1;

    const/4 v0, 0x0

    iget-object v1, p0, Lo0/s0;->l:Lc2/f1;

    iget v2, p0, Lo0/s0;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget v6, p0, Lo0/s0;->m:I

    sub-int v6, v2, v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v7, v4

    add-float/2addr v7, v3

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {p1, v1, v0, v6}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    :cond_0
    iget-object v1, p0, Lo0/s0;->o:Lc2/f1;

    iget v6, p0, Lo0/s0;->p:I

    invoke-static {p1, v1, v6, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    iget-object v0, p0, Lo0/s0;->q:Lc2/f1;

    if-eqz v0, :cond_1

    iget v1, v1, Lc2/f1;->l:I

    add-int/2addr v6, v1

    iget p0, p0, Lo0/s0;->r:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr p0, v5

    int-to-float v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, v0, v6, p0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
