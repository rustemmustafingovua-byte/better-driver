.class public final Lwb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lpb/a;

.field public b:I

.field public c:I

.field public d:Lpb/h;

.field public e:Lcc/f;

.field public f:I


# virtual methods
.method public final a(IILwb/a;IILwa/h;)V
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sub-int v0, p5, p4

    if-ne v0, v1, :cond_0

    invoke-virtual {p6, p0, p1, p3, p4}, Lwa/h;->r(Lwb/a;ILwb/a;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lwb/a;->a:[Lpb/a;

    aget-object v1, v0, p1

    aget-object v0, v0, p2

    iget-object v2, p3, Lwb/a;->a:[Lpb/a;

    aget-object v3, v2, p4

    aget-object v2, v2, p5

    invoke-static {v1, v0, v3, v2}, Lpb/h;->f(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    add-int v0, p1, p2

    div-int/lit8 v3, v0, 0x2

    add-int v0, p4, p5

    div-int/lit8 v5, v0, 0x2

    if-ge p1, v3, :cond_4

    if-ge p4, v5, :cond_2

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    move-object v7, p6

    move v6, v5

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lwb/a;->a(IILwb/a;IILwa/h;)V

    move v5, v6

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_2
    move v2, p1

    goto :goto_0

    :goto_1
    if-ge v5, p5, :cond_3

    move-object v1, p0

    move v3, p1

    move-object v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lwb/a;->a(IILwb/a;IILwa/h;)V

    goto :goto_2

    :cond_3
    move v6, p5

    goto :goto_2

    :cond_4
    move v6, p5

    move p1, v3

    :goto_2
    if-ge p1, p2, :cond_6

    if-ge p4, v5, :cond_5

    move p5, v5

    invoke-virtual/range {p0 .. p6}, Lwb/a;->a(IILwb/a;IILwa/h;)V

    :cond_5
    if-ge v5, v6, :cond_6

    move p4, v5

    move p5, v6

    invoke-virtual/range {p0 .. p6}, Lwb/a;->a(IILwb/a;IILwa/h;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final b()Lpb/h;
    .locals 10

    iget-object v0, p0, Lwb/a;->d:Lpb/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lwb/a;->a:[Lpb/a;

    iget v1, p0, Lwb/a;->b:I

    aget-object v1, v0, v1

    iget v2, p0, Lwb/a;->c:I

    aget-object v0, v0, v2

    new-instance v2, Lpb/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-wide v3, v1, Lpb/a;->l:D

    iget-wide v5, v0, Lpb/a;->l:D

    iget-wide v7, v1, Lpb/a;->m:D

    iget-wide v0, v0, Lpb/a;->m:D

    cmpg-double v9, v3, v5

    if-gez v9, :cond_0

    iput-wide v3, v2, Lpb/h;->l:D

    iput-wide v5, v2, Lpb/h;->m:D

    goto :goto_0

    :cond_0
    iput-wide v5, v2, Lpb/h;->l:D

    iput-wide v3, v2, Lpb/h;->m:D

    :goto_0
    cmpg-double v3, v7, v0

    if-gez v3, :cond_1

    iput-wide v7, v2, Lpb/h;->n:D

    iput-wide v0, v2, Lpb/h;->o:D

    goto :goto_1

    :cond_1
    iput-wide v0, v2, Lpb/h;->n:D

    iput-wide v7, v2, Lpb/h;->o:D

    :goto_1
    iput-object v2, p0, Lwb/a;->d:Lpb/h;

    :cond_2
    iget-object p0, p0, Lwb/a;->d:Lpb/h;

    return-object p0
.end method
