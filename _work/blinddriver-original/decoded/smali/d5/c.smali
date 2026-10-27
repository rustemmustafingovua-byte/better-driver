.class public abstract Ld5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/e;


# instance fields
.field public final a:Le5/f;


# direct methods
.method public constructor <init>(Le5/f;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/c;->a:Le5/f;

    return-void
.end method


# virtual methods
.method public final a(Lx4/d;)Lx9/c;
    .locals 3

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/lifecycle/i0;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    new-instance p0, Lx9/c;

    const/4 v0, -0x2

    sget-object v1, Lw9/a;->l:Lw9/a;

    sget-object v2, Ly8/i;->l:Ly8/i;

    invoke-direct {p0, p1, v2, v0, v1}, Lx9/c;-><init>(Li9/e;Ly8/h;ILw9/a;)V

    return-object p0
.end method

.method public final c(Lg5/o;)Z
    .locals 0

    invoke-interface {p0, p1}, Ld5/e;->b(Lg5/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld5/c;->a:Le5/f;

    invoke-virtual {p1}, Le5/f;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld5/c;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract d()I
.end method

.method public abstract e(Ljava/lang/Object;)Z
.end method
