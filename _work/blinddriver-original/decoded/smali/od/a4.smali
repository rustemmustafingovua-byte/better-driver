.class public final Lod/a4;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public l:Lu9/j1;

.field public m:I

.field public synthetic n:Lr/p1;

.field public final synthetic o:Lu9/t;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:I

.field public final synthetic s:Lr0/u0;


# direct methods
.method public constructor <init>(Lu9/t;Lr0/u0;Lr0/u0;ILr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/a4;->o:Lu9/t;

    iput-object p2, p0, Lod/a4;->p:Lr0/u0;

    iput-object p3, p0, Lod/a4;->q:Lr0/u0;

    iput p4, p0, Lod/a4;->r:I

    iput-object p5, p0, Lod/a4;->s:Lr0/u0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lr/p1;

    check-cast p2, Ll1/b;

    iget-wide v0, p2, Ll1/b;->a:J

    move-object v8, p3

    check-cast v8, Ly8/c;

    new-instance v2, Lod/a4;

    iget v6, p0, Lod/a4;->r:I

    iget-object v7, p0, Lod/a4;->s:Lr0/u0;

    iget-object v3, p0, Lod/a4;->o:Lu9/t;

    iget-object v4, p0, Lod/a4;->p:Lr0/u0;

    iget-object v5, p0, Lod/a4;->q:Lr0/u0;

    invoke-direct/range {v2 .. v8}, Lod/a4;-><init>(Lu9/t;Lr0/u0;Lr0/u0;ILr0/u0;Ly8/c;)V

    iput-object p1, v2, Lod/a4;->n:Lr/p1;

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {v2, p0}, Lod/a4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lod/a4;->n:Lr/p1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lod/a4;->m:I

    iget-object v3, p0, Lod/a4;->p:Lr0/u0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget-object p0, p0, Lod/a4;->l:Lu9/j1;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget p1, Lod/e4;->c:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object v2, p0, Lod/a4;->q:Lr0/u0;

    invoke-interface {v2, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lod/z3;

    iget v6, p0, Lod/a4;->r:I

    iget-object v7, p0, Lod/a4;->s:Lr0/u0;

    invoke-direct {p1, v6, v7, v2, v4}, Lod/z3;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    const/4 v2, 0x3

    iget-object v6, p0, Lod/a4;->o:Lu9/t;

    invoke-static {v6, v4, v4, p1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p1

    iput-object v4, p0, Lod/a4;->n:Lr/p1;

    iput-object p1, p0, Lod/a4;->l:Lu9/j1;

    iput v5, p0, Lod/a4;->m:I

    invoke-virtual {v0, p0}, Lr/p1;->f(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    move-object p0, p1

    :goto_0
    invoke-interface {p0, v4}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    sget p0, Lod/e4;->c:I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
