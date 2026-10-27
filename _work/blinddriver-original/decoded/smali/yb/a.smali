.class public final Lyb/a;
.super Lyb/c;
.source "SourceFile"


# instance fields
.field public c:Lyb/c;

.field public d:Lyb/c;


# virtual methods
.method public final a(DDLm2/j;)V
    .locals 7

    iget-wide v0, p0, Lyb/c;->a:D

    cmpl-double v0, v0, p3

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lyb/c;->b:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lyb/a;->c:Lyb/c;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lyb/c;->a(DDLm2/j;)V

    :cond_1
    iget-object p0, p0, Lyb/a;->d:Lyb/c;

    if-eqz p0, :cond_2

    invoke-virtual/range {p0 .. p5}, Lyb/c;->a(DDLm2/j;)V

    :cond_2
    :goto_0
    return-void
.end method
