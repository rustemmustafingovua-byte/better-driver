.class public final Lb0/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk0/l;

.field public b:Lk0/l;

.field public c:I

.field public d:Ljava/lang/Long;

.field public e:Z


# virtual methods
.method public final a(Lu2/x;)V
    .locals 5

    iget-object v0, p1, Lu2/x;->a:Lp2/g;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb0/h3;->e:Z

    iget-object v1, p0, Lb0/h3;->a:Lk0/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lk0/l;->n:Ljava/lang/Object;

    check-cast v1, Lu2/x;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lu2/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_5

    :cond_1
    iget-object v1, v0, Lp2/g;->m:Ljava/lang/String;

    iget-object v3, p0, Lb0/h3;->a:Lk0/l;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lk0/l;->n:Ljava/lang/Object;

    check-cast v3, Lu2/x;

    iget-object v3, v3, Lu2/x;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lb0/h3;->a:Lk0/l;

    if-eqz p0, :cond_8

    iput-object p1, p0, Lk0/l;->n:Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v1, p0, Lb0/h3;->a:Lk0/l;

    new-instance v3, Lk0/l;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, p1}, Lk0/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lb0/h3;->a:Lk0/l;

    iput-object v2, p0, Lb0/h3;->b:Lk0/l;

    iget p1, p0, Lb0/h3;->c:I

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lb0/h3;->c:I

    const p1, 0x186a0

    if-le v0, p1, :cond_8

    iget-object p0, p0, Lb0/h3;->a:Lk0/l;

    if-eqz p0, :cond_4

    iget-object p1, p0, Lk0/l;->m:Ljava/lang/Object;

    check-cast p1, Lk0/l;

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    :goto_3
    if-eqz p0, :cond_6

    iget-object p1, p0, Lk0/l;->m:Ljava/lang/Object;

    check-cast p1, Lk0/l;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lk0/l;->m:Ljava/lang/Object;

    check-cast p1, Lk0/l;

    goto :goto_4

    :cond_6
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_7

    iget-object p0, p0, Lk0/l;->m:Ljava/lang/Object;

    check-cast p0, Lk0/l;

    goto :goto_3

    :cond_7
    if-eqz p0, :cond_8

    iput-object v2, p0, Lk0/l;->m:Ljava/lang/Object;

    :cond_8
    :goto_5
    return-void
.end method
