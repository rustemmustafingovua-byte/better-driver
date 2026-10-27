.class public final synthetic Ln/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Ln/h1;

.field public final synthetic m:F


# direct methods
.method public synthetic constructor <init>(Ln/h1;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/e1;->l:Ln/h1;

    iput p2, p0, Ln/e1;->m:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Ln/e1;->l:Ln/h1;

    invoke-virtual {p1}, Ln/h1;->g()Z

    move-result v2

    iget-object v3, p1, Ln/h1;->g:Lr0/c1;

    if-nez v2, :cond_4

    iget-object v2, v3, Lr0/c1;->m:Lr0/k2;

    invoke-static {v2, v3}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Lr0/k2;

    iget-wide v4, v2, Lr0/k2;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    invoke-virtual {v3, v0, v1}, Lr0/c1;->g(J)V

    iget-object v2, p1, Ln/h1;->a:Ln/i0;

    iget-object v2, v2, Ln/i0;->a:Lr0/e1;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v3, Lr0/c1;->m:Lr0/k2;

    invoke-static {v2, v3}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Lr0/k2;

    iget-wide v2, v2, Lr0/k2;->c:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    iget p0, p0, Ln/e1;->m:F

    cmpg-float v2, p0, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    long-to-double v0, v0

    float-to-double v3, p0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ll9/a;->A(D)J

    move-result-wide v0

    :goto_0
    iget-object p0, p1, Ln/h1;->b:Ln/h1;

    if-nez p0, :cond_2

    iget-object p0, p1, Ln/h1;->f:Lr0/c1;

    invoke-virtual {p0, v0, v1}, Lr0/c1;->g(J)V

    :cond_2
    if-nez v2, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0, v0, v1}, Ln/h1;->h(ZJ)V

    :cond_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
