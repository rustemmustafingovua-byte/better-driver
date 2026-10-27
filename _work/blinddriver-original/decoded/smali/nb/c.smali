.class public final Lnb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnb/d;

.field public final b:Lpb/h;

.field public final c:Lpb/a;

.field public final d:Lpb/a;

.field public final e:Lpb/a;

.field public final f:Lpb/a;


# direct methods
.method public constructor <init>(Lpb/h;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnb/d;

    invoke-direct {v0}, Lnb/d;-><init>()V

    iput-object v0, p0, Lnb/c;->a:Lnb/d;

    iput-object p1, p0, Lnb/c;->b:Lpb/h;

    new-instance v0, Lpb/a;

    iget-wide v1, p1, Lpb/h;->l:D

    iget-wide v3, p1, Lpb/h;->n:D

    invoke-direct {v0, v1, v2, v3, v4}, Lpb/a;-><init>(DD)V

    iput-object v0, p0, Lnb/c;->c:Lpb/a;

    new-instance v0, Lpb/a;

    iget-wide v5, p1, Lpb/h;->m:D

    iget-wide v7, p1, Lpb/h;->o:D

    invoke-direct {v0, v5, v6, v7, v8}, Lpb/a;-><init>(DD)V

    iput-object v0, p0, Lnb/c;->d:Lpb/a;

    new-instance p1, Lpb/a;

    invoke-direct {p1, v1, v2, v7, v8}, Lpb/a;-><init>(DD)V

    iput-object p1, p0, Lnb/c;->e:Lpb/a;

    new-instance p1, Lpb/a;

    invoke-direct {p1, v5, v6, v3, v4}, Lpb/a;-><init>(DD)V

    iput-object p1, p0, Lnb/c;->f:Lpb/a;

    return-void
.end method


# virtual methods
.method public final a(Lpb/a;Lpb/a;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v1, Lpb/a;->l:D

    iget-wide v5, v2, Lpb/a;->l:D

    iget-wide v7, v1, Lpb/a;->m:D

    iget-wide v9, v2, Lpb/a;->m:D

    cmpg-double v11, v3, v5

    if-gez v11, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v5

    move-wide v5, v3

    move-wide/from16 v3, v16

    :goto_0
    cmpg-double v11, v7, v9

    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v9

    move-wide v9, v7

    move-wide/from16 v7, v16

    :goto_1
    iget-object v11, v0, Lnb/c;->b:Lpb/h;

    invoke-virtual {v11}, Lpb/h;->i()Z

    move-result v12

    if-nez v12, :cond_3

    cmpg-double v12, v5, v3

    if-gez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    const/4 v15, 0x1

    iget-wide v13, v11, Lpb/h;->m:D

    cmpl-double v3, v3, v13

    if-gtz v3, :cond_5

    iget-wide v3, v11, Lpb/h;->l:D

    cmpg-double v3, v5, v3

    if-ltz v3, :cond_5

    iget-wide v3, v11, Lpb/h;->o:D

    cmpl-double v3, v7, v3

    if-gtz v3, :cond_5

    iget-wide v3, v11, Lpb/h;->n:D

    cmpg-double v3, v9, v3

    if-ltz v3, :cond_5

    move v3, v15

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v12

    :goto_4
    if-nez v3, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v11, v1}, Lpb/h;->d(Lpb/a;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v11, v2}, Lpb/h;->d(Lpb/a;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual/range {p1 .. p2}, Lpb/a;->a(Lpb/a;)I

    move-result v3

    if-lez v3, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_5
    iget-wide v3, v1, Lpb/a;->m:D

    iget-wide v5, v2, Lpb/a;->m:D

    cmpl-double v3, v3, v5

    iget-object v4, v0, Lnb/c;->a:Lnb/d;

    if-lez v3, :cond_a

    iget-object v3, v0, Lnb/c;->e:Lpb/a;

    iget-object v0, v0, Lnb/c;->f:Lpb/a;

    invoke-virtual {v4, v2, v1, v3, v0}, Lnb/d;->a(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)V

    goto :goto_6

    :cond_a
    iget-object v3, v0, Lnb/c;->c:Lpb/a;

    iget-object v0, v0, Lnb/c;->d:Lpb/a;

    invoke-virtual {v4, v2, v1, v3, v0}, Lnb/d;->a(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)V

    :goto_6
    invoke-virtual {v4}, Lnb/d;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_7
    return v15

    :cond_b
    :goto_8
    return v12
.end method
