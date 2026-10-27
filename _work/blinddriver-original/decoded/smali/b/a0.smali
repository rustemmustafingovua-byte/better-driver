.class public final Lb/a0;
.super Lh4/d;
.source "SourceFile"


# instance fields
.field public final d:Lb/b0;

.field public e:Z


# direct methods
.method public constructor <init>(Lb/b0;Lb/c0;)V
    .locals 1

    iget-boolean v0, p1, Lb/b0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh4/d;->a:Lg5/f;

    iput-boolean v0, p0, Lh4/d;->b:Z

    iput-object p1, p0, Lb/a0;->d:Lb/b0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/a0;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lb/a0;->d:Lb/b0;

    invoke-virtual {p0}, Lb/b0;->a()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lb/a0;->d:Lb/b0;

    invoke-virtual {p0}, Lb/b0;->b()V

    return-void
.end method

.method public final c(Lh4/b;)V
    .locals 1

    new-instance v0, Lb/a;

    invoke-direct {v0, p1}, Lb/a;-><init>(Lh4/b;)V

    iget-object p0, p0, Lb/a0;->d:Lb/b0;

    invoke-virtual {p0, v0}, Lb/b0;->c(Lb/a;)V

    return-void
.end method

.method public final d(Lh4/b;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb/a;

    invoke-direct {v0, p1}, Lb/a;-><init>(Lh4/b;)V

    iget-object p0, p0, Lb/a0;->d:Lb/b0;

    invoke-virtual {p0, v0}, Lb/b0;->d(Lb/a;)V

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/a0;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/a0;->d:Lb/b0;

    iget-boolean p1, p1, Lb/b0;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lh4/d;->f(Z)V

    return-void
.end method
