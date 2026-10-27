.class public final synthetic Lu/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lu/n1;

.field public final synthetic m:I

.field public final synthetic n:Lc2/f1;

.field public final synthetic o:I

.field public final synthetic p:Lc2/t0;


# direct methods
.method public synthetic constructor <init>(Lu/n1;ILc2/f1;ILc2/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/m1;->l:Lu/n1;

    iput p2, p0, Lu/m1;->m:I

    iput-object p3, p0, Lu/m1;->n:Lc2/f1;

    iput p4, p0, Lu/m1;->o:I

    iput-object p5, p0, Lu/m1;->p:Lc2/t0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lc2/e1;

    iget-object v0, p0, Lu/m1;->l:Lu/n1;

    iget-object v0, v0, Lu/n1;->A:Li9/e;

    iget-object v1, p0, Lu/m1;->n:Lc2/f1;

    iget v2, v1, Lc2/f1;->l:I

    iget v3, p0, Lu/m1;->m:I

    sub-int/2addr v3, v2

    iget v2, v1, Lc2/f1;->m:I

    iget v4, p0, Lu/m1;->o:I

    sub-int/2addr v4, v2

    int-to-long v2, v3

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    new-instance v4, Lb3/l;

    invoke-direct {v4, v2, v3}, Lb3/l;-><init>(J)V

    iget-object p0, p0, Lu/m1;->p:Lc2/t0;

    invoke-interface {p0}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p0

    invoke-interface {v0, v4, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/j;

    iget-wide v2, p0, Lb3/j;->a:J

    invoke-static {p1, v1, v2, v3}, Lc2/e1;->k(Lc2/e1;Lc2/f1;J)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
