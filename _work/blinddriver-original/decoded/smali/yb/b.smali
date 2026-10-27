.class public final Lyb/b;
.super Lyb/c;
.source "SourceFile"


# instance fields
.field public c:Lpb/p;


# virtual methods
.method public final a(DDLm2/j;)V
    .locals 2

    iget-wide v0, p0, Lyb/c;->a:D

    cmpl-double p3, v0, p3

    if-gtz p3, :cond_1

    iget-wide p3, p0, Lyb/c;->b:D

    cmpg-double p1, p3, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyb/b;->c:Lpb/p;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p5, Lm2/j;->m:Ljava/lang/Object;

    check-cast p1, Lja/o;

    iget-object p2, p0, Lpb/p;->l:Lpb/a;

    iget-object p0, p0, Lpb/p;->m:Lpb/a;

    invoke-virtual {p1, p2, p0}, Lja/o;->b(Lpb/a;Lpb/a;)V

    :cond_1
    :goto_0
    return-void
.end method
