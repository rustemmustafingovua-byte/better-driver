.class public final Lm/i;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Li9/c;

.field public final synthetic m:Ln/h1;


# direct methods
.method public constructor <init>(Li9/c;Ln/h1;)V
    .locals 0

    iput-object p1, p0, Lm/i;->l:Li9/c;

    iput-object p2, p0, Lm/i;->m:Ln/h1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lc2/t0;

    check-cast p2, Lc2/q0;

    check-cast p3, Lb3/a;

    iget-wide v0, p3, Lb3/a;->a:J

    invoke-interface {p2, v0, v1}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    invoke-interface {p1}, Lc2/p;->T()Z

    move-result p3

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-eqz p3, :cond_0

    iget-object p3, p0, Lm/i;->m:Ln/h1;

    iget-object p3, p3, Ln/h1;->d:Lr0/e1;

    invoke-virtual {p3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lm/i;->l:Li9/c;

    invoke-interface {p0, p3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget p0, p2, Lc2/f1;->l:I

    iget p3, p2, Lc2/f1;->m:I

    int-to-long v3, p0

    shl-long/2addr v3, v2

    int-to-long v5, p3

    and-long/2addr v5, v0

    or-long/2addr v3, v5

    :goto_0
    shr-long v5, v3, v2

    long-to-int p0, v5

    and-long/2addr v0, v3

    long-to-int p3, v0

    new-instance v0, Lc2/i1;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, Lc2/i1;-><init>(Lc2/f1;I)V

    sget-object p2, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p0, p3, p2, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
