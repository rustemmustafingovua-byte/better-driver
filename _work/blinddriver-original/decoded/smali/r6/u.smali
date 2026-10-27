.class public final Lr6/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr5/d1;

.field public b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(Lr5/d1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr6/u;->c:Z

    iput-object p1, p0, Lr6/u;->a:Lr5/d1;

    return-void
.end method


# virtual methods
.method public final a(Ls5/g;Lb6/r0;Lf8/p2;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr6/u;->c:Z

    invoke-virtual {p1}, Ls5/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lr6/u;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ls5/g;->d0(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p3, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Ls5/q;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ls5/g;->T(Ls5/q;)V

    iget-object p3, p3, Lf8/p2;->e:Ljava/lang/Object;

    check-cast p3, Lb6/u;

    iget-object p0, p0, Lr6/u;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p1, p2}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :cond_2
    return-void
.end method

.method public final b(Ls5/g;Lb6/r0;Lf8/p2;)Z
    .locals 1

    iget-object v0, p0, Lr6/u;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lr6/u;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lf8/p2;->a:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ls5/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p3, p3, Lf8/p2;->e:Ljava/lang/Object;

    check-cast p3, Lb6/u;

    iget-object p0, p0, Lr6/u;->b:Ljava/lang/Object;

    invoke-virtual {p3, p0, p1, p2}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lr6/u;->b:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    new-instance p0, Ls5/e;

    const-string p2, "No native support for writing Object Ids"

    invoke-direct {p0, p2, p1}, Ls5/e;-><init>(Ljava/lang/String;Ls5/g;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
