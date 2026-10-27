.class public abstract Lr0/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr0/r0;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr0/r0;

    invoke-direct {v0, p1}, Lr0/r0;-><init>(Li9/a;)V

    iput-object v0, p0, Lr0/m1;->a:Lr0/r0;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lj6/g0;
.end method

.method public b()Lr0/u2;
    .locals 0

    iget-object p0, p0, Lr0/m1;->a:Lr0/r0;

    return-object p0
.end method

.method public final c(Lj6/g0;Lr0/u2;)Lr0/u2;
    .locals 2

    instance-of p0, p2, Lr0/h0;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lj6/g0;->c:Z

    if-eqz p0, :cond_3

    move-object v0, p2

    check-cast v0, Lr0/h0;

    iget-object p0, v0, Lr0/h0;->a:Lr0/e1;

    invoke-virtual {p1}, Lj6/g0;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lr0/t2;

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Lj6/g0;->b:Z

    if-nez p0, :cond_1

    iget-object p0, p1, Lj6/g0;->d:Ljava/lang/Object;

    if-eqz p0, :cond_3

    :cond_1
    iget-boolean p0, p1, Lj6/g0;->c:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lj6/g0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p2, Lr0/t2;

    iget-object v1, p2, Lr0/t2;->a:Ljava/lang/Object;

    invoke-static {p0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, p2

    goto :goto_0

    :cond_2
    instance-of p0, p2, Lr0/b0;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_0
    if-nez v0, :cond_6

    iget-boolean p0, p1, Lj6/g0;->c:Z

    if-eqz p0, :cond_5

    new-instance p0, Lr0/h0;

    iget-object p2, p1, Lj6/g0;->d:Ljava/lang/Object;

    iget-object p1, p1, Lj6/g0;->g:Ljava/lang/Object;

    check-cast p1, Lr0/m2;

    if-nez p1, :cond_4

    sget-object p1, Lr0/e;->r:Lr0/e;

    :cond_4
    new-instance v0, Lr0/e1;

    invoke-direct {v0, p2, p1}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    invoke-direct {p0, v0}, Lr0/h0;-><init>(Lr0/e1;)V

    return-object p0

    :cond_5
    new-instance p0, Lr0/t2;

    invoke-virtual {p1}, Lj6/g0;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lr0/t2;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_6
    return-object v0
.end method
