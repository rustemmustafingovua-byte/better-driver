.class public final Lf2/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/t;


# instance fields
.field public final l:Lr0/a1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/a1;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lr0/a1;-><init>(F)V

    iput-object v0, p0, Lf2/b2;->l:Lr0/a1;

    return-void
.end method


# virtual methods
.method public final d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ly8/g;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ly8/g;)Ly8/f;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->O(Ly8/f;Ly8/g;)Ly8/f;

    move-result-object p0

    return-object p0
.end method

.method public final q()F
    .locals 0

    iget-object p0, p0, Lf2/b2;->l:Lr0/a1;

    invoke-virtual {p0}, Lr0/a1;->g()F

    move-result p0

    return p0
.end method

.method public final y(Ly8/h;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0
.end method
