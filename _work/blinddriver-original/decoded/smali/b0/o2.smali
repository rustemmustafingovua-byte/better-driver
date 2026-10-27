.class public final Lb0/o2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public l:I

.field public synthetic m:Lr/p1;

.field public synthetic n:J

.field public final synthetic o:Lu9/t;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Ls/i;


# direct methods
.method public constructor <init>(Lu9/t;Lr0/u0;Ls/i;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lb0/o2;->o:Lu9/t;

    iput-object p2, p0, Lb0/o2;->p:Lr0/u0;

    iput-object p3, p0, Lb0/o2;->q:Ls/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lr/p1;

    check-cast p2, Ll1/b;

    iget-wide v0, p2, Ll1/b;->a:J

    check-cast p3, Ly8/c;

    new-instance p2, Lb0/o2;

    iget-object v2, p0, Lb0/o2;->p:Lr0/u0;

    iget-object v3, p0, Lb0/o2;->q:Ls/i;

    iget-object p0, p0, Lb0/o2;->o:Lu9/t;

    invoke-direct {p2, p0, v2, v3, p3}, Lb0/o2;-><init>(Lu9/t;Lr0/u0;Ls/i;Ly8/c;)V

    iput-object p1, p2, Lb0/o2;->m:Lr/p1;

    iput-wide v0, p2, Lb0/o2;->n:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p2, p0}, Lb0/o2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lb0/o2;->l:I

    const/4 v2, 0x3

    iget-object v3, p0, Lb0/o2;->o:Lu9/t;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lb0/o2;->m:Lr/p1;

    iget-wide v8, p0, Lb0/o2;->n:J

    new-instance v6, Lb0/m2;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v7, p0, Lb0/o2;->p:Lr0/u0;

    iget-object v10, p0, Lb0/o2;->q:Ls/i;

    invoke-direct/range {v6 .. v12}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    invoke-static {v3, v4, v4, v6, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    iput v5, p0, Lb0/o2;->l:I

    invoke-virtual {p1, p0}, Lr/p1;->f(La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Lb0/n2;

    iget-object v1, p0, Lb0/o2;->p:Lr0/u0;

    iget-object p0, p0, Lb0/o2;->q:Ls/i;

    invoke-direct {v0, v1, p1, p0, v4}, Lb0/n2;-><init>(Lr0/u0;ZLs/i;Ly8/c;)V

    invoke-static {v3, v4, v4, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
