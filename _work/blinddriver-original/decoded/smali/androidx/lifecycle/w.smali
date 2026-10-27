.class public final Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/p;

.field public b:Landroidx/lifecycle/t;


# virtual methods
.method public final a(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 3

    invoke-virtual {p2}, Landroidx/lifecycle/o;->a()Landroidx/lifecycle/p;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    const-string v2, "state1"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    iget-object v1, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/t;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/t;->c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V

    iput-object v0, p0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    return-void
.end method
