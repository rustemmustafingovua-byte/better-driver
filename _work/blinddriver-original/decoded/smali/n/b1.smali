.class public final Ln/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln/o1;

.field public final b:Lr0/e1;

.field public final synthetic c:Ln/h1;


# direct methods
.method public constructor <init>(Ln/h1;Ln/o1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/b1;->c:Ln/h1;

    iput-object p2, p0, Ln/b1;->a:Ln/o1;

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Ln/b1;->b:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Li9/c;Li9/c;)Ln/a1;
    .locals 8

    iget-object v0, p0, Ln/b1;->b:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/a1;

    iget-object v2, p0, Ln/b1;->c:Ln/h1;

    if-nez v1, :cond_0

    new-instance v1, Ln/a1;

    new-instance v3, Ln/d1;

    invoke-virtual {v2}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ln/b1;->a:Ln/o1;

    iget-object v7, v6, Ln/o1;->a:Li9/c;

    invoke-interface {v7, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln/p;

    invoke-virtual {v5}, Ln/p;->d()V

    invoke-direct {v3, v2, v4, v5, v6}, Ln/d1;-><init>(Ln/h1;Ljava/lang/Object;Ln/p;Ln/o1;)V

    invoke-direct {v1, p0, v3, p1, p2}, Ln/a1;-><init>(Ln/b1;Ln/d1;Li9/c;Li9/c;)V

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p0, v2, Ln/h1;->i:Ld1/v;

    invoke-virtual {p0, v3}, Ld1/v;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast p2, Lj9/o;

    iput-object p2, v1, Ln/a1;->n:Lj9/o;

    iput-object p1, v1, Ln/a1;->m:Li9/c;

    invoke-virtual {v2}, Ln/h1;->f()Ln/c1;

    move-result-object p0

    invoke-virtual {v1, p0}, Ln/a1;->a(Ln/c1;)V

    return-object v1
.end method
