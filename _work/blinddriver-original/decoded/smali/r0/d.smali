.class public final Lr0/d;
.super Lz0/b;
.source "SourceFile"


# instance fields
.field public a:Lu9/g;

.field public b:Li9/c;


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/d;->b:Li9/c;

    iput-object v0, p0, Lr0/d;->a:Lu9/g;

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lr0/d;->a:Lu9/g;

    if-eqz p0, :cond_0

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
