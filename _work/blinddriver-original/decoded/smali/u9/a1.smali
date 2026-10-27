.class public final Lu9/a1;
.super Lu9/y0;
.source "SourceFile"


# instance fields
.field public final p:Lu9/c1;

.field public final q:Lu9/b1;

.field public final r:Lu9/k;

.field public final s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lu9/c1;Lu9/b1;Lu9/k;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lz9/j;-><init>()V

    iput-object p1, p0, Lu9/a1;->p:Lu9/c1;

    iput-object p2, p0, Lu9/a1;->q:Lu9/b1;

    iput-object p3, p0, Lu9/a1;->r:Lu9/k;

    iput-object p4, p0, Lu9/a1;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 5

    iget-object p1, p0, Lu9/a1;->r:Lu9/k;

    invoke-static {p1}, Lu9/c1;->S(Lz9/j;)Lu9/k;

    move-result-object v0

    iget-object v1, p0, Lu9/a1;->p:Lu9/c1;

    iget-object v2, p0, Lu9/a1;->q:Lu9/b1;

    iget-object p0, p0, Lu9/a1;->s:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2, v0, p0}, Lu9/c1;->b0(Lu9/b1;Lu9/k;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lu9/b1;->l:Lu9/e1;

    new-instance v3, Lz9/i;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lz9/i;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Lz9/j;->e(Lz9/j;I)Z

    invoke-static {p1}, Lu9/c1;->S(Lz9/j;)Lu9/k;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v2, p1, p0}, Lu9/c1;->b0(Lu9/b1;Lu9/k;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, v2, p0}, Lu9/c1;->D(Lu9/b1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lu9/c1;->p(Ljava/lang/Object;)V

    return-void
.end method
