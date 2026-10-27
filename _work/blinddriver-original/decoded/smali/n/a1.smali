.class public final Ln/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/r2;


# instance fields
.field public final l:Ln/d1;

.field public m:Li9/c;

.field public n:Lj9/o;

.field public final synthetic o:Ln/b1;


# direct methods
.method public constructor <init>(Ln/b1;Ln/d1;Li9/c;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/a1;->o:Ln/b1;

    iput-object p2, p0, Ln/a1;->l:Ln/d1;

    iput-object p3, p0, Ln/a1;->m:Li9/c;

    check-cast p4, Lj9/o;

    iput-object p4, p0, Ln/a1;->n:Lj9/o;

    return-void
.end method


# virtual methods
.method public final a(Ln/c1;)V
    .locals 4

    iget-object v0, p0, Ln/a1;->n:Lj9/o;

    iget-object v1, p1, Ln/c1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ln/a1;->o:Ln/b1;

    iget-object v1, v1, Ln/b1;->c:Ln/h1;

    invoke-virtual {v1}, Ln/h1;->g()Z

    move-result v1

    iget-object v2, p0, Ln/a1;->l:Ln/d1;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln/a1;->n:Lj9/o;

    iget-object v3, p1, Ln/c1;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Ln/a1;->m:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/x;

    invoke-virtual {v2, v1, v0, p0}, Ln/d1;->f(Ljava/lang/Object;Ljava/lang/Object;Ln/x;)V

    return-void

    :cond_0
    iget-object p0, p0, Ln/a1;->m:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/x;

    invoke-virtual {v2, v0, p0}, Ln/d1;->g(Ljava/lang/Object;Ln/x;)V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln/a1;->o:Ln/b1;

    iget-object v0, v0, Ln/b1;->c:Ln/h1;

    invoke-virtual {v0}, Ln/h1;->f()Ln/c1;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln/a1;->a(Ln/c1;)V

    iget-object p0, p0, Ln/a1;->l:Ln/d1;

    iget-object p0, p0, Ln/d1;->s:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
