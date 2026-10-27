.class public final synthetic Lm0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:J

.field public final synthetic m:Li9/a;

.field public final synthetic n:Z


# direct methods
.method public synthetic constructor <init>(JLi9/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm0/i;->l:J

    iput-object p3, p0, Lm0/i;->m:Li9/a;

    iput-boolean p4, p0, Lm0/i;->n:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lj1/c;

    iget-object v0, p1, Lj1/c;->l:Lj1/a;

    invoke-interface {v0}, Lj1/a;->d()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lm0/d1;->q(Lj1/c;F)Lm1/e;

    move-result-object v0

    new-instance v1, Lm1/j;

    const/4 v2, 0x5

    iget-wide v3, p0, Lm0/i;->l:J

    invoke-direct {v1, v2, v3, v4}, Lm1/j;-><init>(IJ)V

    new-instance v2, Lm0/b;

    iget-object v3, p0, Lm0/i;->m:Li9/a;

    iget-boolean p0, p0, Lm0/i;->n:Z

    invoke-direct {v2, v3, p0, v0, v1}, Lm0/b;-><init>(Li9/a;ZLm1/e;Lm1/j;)V

    invoke-virtual {p1, v2}, Lj1/c;->b(Li9/c;)Lb0/l1;

    move-result-object p0

    return-object p0
.end method
