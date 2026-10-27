.class public final Lc2/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/s0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Li9/c;

.field public final synthetic e:Lc2/g0;

.field public final synthetic f:Lc2/n0;

.field public final synthetic g:Li9/c;


# direct methods
.method public constructor <init>(IILjava/util/Map;Li9/c;Lc2/g0;Lc2/n0;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc2/f0;->a:I

    iput p2, p0, Lc2/f0;->b:I

    iput-object p3, p0, Lc2/f0;->c:Ljava/util/Map;

    iput-object p4, p0, Lc2/f0;->d:Li9/c;

    iput-object p5, p0, Lc2/f0;->e:Lc2/g0;

    iput-object p6, p0, Lc2/f0;->f:Lc2/n0;

    iput-object p7, p0, Lc2/f0;->g:Li9/c;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lc2/f0;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lc2/f0;->f:Lc2/n0;

    iget-object v0, v0, Lc2/n0;->l:Le2/g0;

    iget-object v1, p0, Lc2/f0;->e:Lc2/g0;

    invoke-virtual {v1}, Lc2/g0;->T()Z

    move-result v1

    iget-object p0, p0, Lc2/f0;->g:Li9/c;

    if-eqz v1, :cond_0

    iget-object v1, v0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->c:Le2/s;

    iget-object v1, v1, Le2/s;->d0:Le2/r;

    if-eqz v1, :cond_0

    iget-object v0, v1, Le2/p0;->w:Lc2/o0;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, v0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->c:Le2/s;

    iget-object v0, v0, Le2/p0;->w:Lc2/o0;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lc2/f0;->b:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lc2/f0;->a:I

    return p0
.end method

.method public final f()Li9/c;
    .locals 0

    iget-object p0, p0, Lc2/f0;->d:Li9/c;

    return-object p0
.end method
