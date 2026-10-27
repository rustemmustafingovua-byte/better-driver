.class public final Lh0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/e;


# instance fields
.field public final l:J

.field public final synthetic m:Lh0/g;


# direct methods
.method public constructor <init>(Lh0/g;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/f;->m:Lh0/g;

    iput-wide p2, p0, Lh0/f;->l:J

    return-void
.end method


# virtual methods
.method public final N()Le0/c;
    .locals 0

    iget-object p0, p0, Lh0/f;->m:Lh0/g;

    invoke-static {p0}, Lh0/h;->b(Le2/j;)Le0/c;

    move-result-object p0

    return-object p0
.end method

.method public final n0(Lc2/u;)J
    .locals 3

    iget-object v0, p0, Lh0/f;->m:Lh0/g;

    iget-object v0, v0, Lh0/g;->C:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/u;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lh0/f;->l:J

    invoke-interface {p1, v0, v1, v2}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Tried to open context menu before the anchor was placed."

    invoke-static {p0}, Lt/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final r0(Lc2/u;)Ll1/c;
    .locals 2

    invoke-virtual {p0, p1}, Lh0/f;->n0(Lc2/u;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object p0

    return-object p0
.end method
